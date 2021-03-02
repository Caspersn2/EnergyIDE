using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using MeasurementTesting.InternalClasses;
using MeasurementTesting.Attributes;
using benchmark;
using System.Text;

namespace MeasurementTesting
{
    public class MeasureProgress
    {
        public List<MethodProgress> PlannedMethods { get; set; }
        
        public List<string> ClassesPlanned { get; set; }
        public bool ExceptionThrown { get; set; }
        public string ExceptionString { get; set; }
        public bool Done { get; set; }
        public string Output { get; set; }
    }

    public class MethodProgress
    {
        public int Id { get; set; } // The hashCode for the method
        public string Stage { get; set; }
        public int RunsDone { get; set; }
        public int PlannedRuns { get; set; }
        public string MethodName { get; set; }
        public string ClassName { get; set; }
    }
    
    /// <summary>
    /// A manager class for the measurement library
    /// </summary>
    public class Manager
    {
        private static bool stop_running { get; set; }
        public static MeasureProgress Progress;
        private static Benchmark bm;
        
        
        public static string Test(Type type)
        {
            stop_running = false;
            Progress = new MeasureProgress();
            Progress.Done = false;
            Progress.ClassesPlanned = new List<string>{ type.Name };

            var output = new Output(type.Name);
            TestRunner(type, output);

            Progress.Done = true;
            Progress.Output = output.ToString();
            return output.ToString();
        }

        public static string Test(IEnumerable<Type> types, IEnumerable<int> methodHashCodes)
        {
            Progress = new MeasureProgress();
            Progress.Done = false;
            stop_running = false;
            Progress.ClassesPlanned = types.Select(t => t.Name).ToList();
            
            var outputs = new List<Output>();
            foreach(var type in types)
            {
                var output = new Output(type.Name);
                TestRunner(type, output, methodHashCodes);
                outputs.Add(output);
            }

            Progress.Done = true;
            Progress.Output = String.Join('\n', outputs.Select(o => o.ToString()));
            return String.Join('\n', outputs.Select(o => o.ToString()));
        }

        public static string Test(Dictionary<Type, List<int>> types)
        {
            Progress = new MeasureProgress();
            Progress.Done = false;
            stop_running = false;
            Progress.ClassesPlanned = types.Keys.Select(t => t.Name).ToList();
            
            var methods = types.Keys.SelectMany(type => 
                    type.GetMethods()
                    .Where(m => m.GetCustomAttributes().Any(a => a is MeasureAttribute) && types.Values.Any(v => v.Any(value => value.Equals(m.GetHashCode())))));
            
            Progress.PlannedMethods = methods.Select(m => new MethodProgress()
            {
                Id = m.GetHashCode(),
                ClassName = m.GetType().Name,
                RunsDone = 0,
                Stage = "Waiting",
                MethodName = m.Name
            }).ToList();
            
            var outputs = new List<Output>();
            foreach(var type in types.Keys)
            {
                var output = new Output(type.Name);
                TestRunner(type, output, types[type]);
                outputs.Add(output);
            }

            Progress.Done = true;
            var outputString = string.Join("\n", outputs);
            Progress.Output = outputString;
            return outputString;
        }

        private static void TestRunner(Type type, Output output, IEnumerable<int> methodHashCodes = null)
        {
            //checking for measureClass attribute
            var tempAtt = type.GetCustomAttributes(false).Where(att => att is MeasureClassAttribute);
            if (tempAtt.Count() != 1){ return; }

            var classAtt = (MeasureClassAttribute) tempAtt.First();
            
            var setup = classAtt.GetSetupMethod(type);
            var cleanUp = classAtt.GetCleanupMethod(type);
            // Getting the methods and checking for measure attributes 
            
            var methods = type.GetMethods();
            if (methodHashCodes != null)
            {
                methods = methods.Where(m => methodHashCodes.Contains(m.GetHashCode())).ToArray();
            }

            foreach(var method in methods)
            {
                var methodProgress = Progress.PlannedMethods.FirstOrDefault(m => m.Id.Equals(method.GetHashCode()));
                if (methodProgress == default(MethodProgress))
                {
                    Console.WriteLine($"The method {method.Name} could not be found");
                    continue;
                }

                Object[] attributes = method.GetCustomAttributes(false);
                foreach (var tempAttribute in attributes)
                {
                    // Checks for measure attribute 
                    if (!(tempAttribute is MeasureAttribute) || stop_running) continue;
                    
                    // Cast to measure attribute and create class
                    var attribute = (MeasureAttribute)tempAttribute;
                    
                    methodProgress.PlannedRuns = attribute.SampleIterations;
                    methodProgress.Stage = "Sample";
                    
                    var measureClass = type.Assembly.CreateInstance(type.FullName);
                    try
                    {
                        // Running setup
                        if (setup != null)
                            setup.Invoke(measureClass, Type.EmptyTypes);
                        
                        PerformBenchmark(measureClass, method, classAtt, attribute, methodProgress);
        
                        // Cleanup
                        if (cleanUp != null)
                            cleanUp.Invoke(measureClass, Type.EmptyTypes);
                        
                        // Save results to output class
                        output.MethodCalled(method, attribute.Measurements);
                    }
                    catch(Exception e)
                    {
                        Progress.ExceptionThrown = true;
                        Progress.ExceptionString = e.ToString();
                        output.MethodCalled(method, attribute.Measurements, e.InnerException ?? e);
                    }
                }

            }
        }

        public static void Stop() 
        {
            stop_running = true;
            if (bm != null)
            {
                bm.stop_running = true;
            }
        }

        private static void PerformBenchmark(Object measureClass, MethodInfo method, MeasureClassAttribute classAtt, MeasureAttribute attribute, MethodProgress methodProgress)
        {
            // Checking for dependency (JIT)
            if (classAtt.Dependent)
            {
                bm = new Benchmark(attribute.SampleIterations, classAtt.Types);
                bm.stop_running = stop_running;
                bm.SingleRunComplete += measure => ProcessMeasure(measure, attribute, methodProgress);
                
                // Running sample iterations
                runBenchmark(method, measureClass, bm, 1);
                var numRuns = (int) Math.Ceiling(ComputeSampleSize(attribute.Measurements));
                if (!IsEnough(numRuns, attribute.Measurements, attribute.SampleIterations))
                {
                    methodProgress.Stage = "Extra: Dependent";
                    attribute.PlannedIterations = numRuns + attribute.SampleIterations;
                    bm = new Benchmark(numRuns, classAtt.Types);
                    bm.stop_running = stop_running;
                    bm.SingleRunComplete += measure => ProcessMeasure(measure, attribute, methodProgress);                    
                    runBenchmark(method, measureClass, bm, 1);
                }
                methodProgress.Stage = "Done: " + attribute.ToString();
            }
            else
            {
                // Creating the benchmark class
                bm = new Benchmark(1, classAtt.Types);
                bm.stop_running = stop_running;
                bm.SingleRunComplete += measure => ProcessMeasure(measure, attribute, methodProgress);
                
                // Running sample iterations
                runBenchmark(method, measureClass, bm, attribute.SampleIterations);
        
                //Checking if it is enough runs
                var numRuns = (int) Math.Ceiling(ComputeSampleSize(attribute.Measurements));
                if (!IsEnough(numRuns, attribute.Measurements, attribute.SampleIterations))
                {
                    methodProgress.Stage = "Extra: Not dependent";
                    attribute.PlannedIterations = numRuns;
                    runBenchmark(method, measureClass, bm, (numRuns - attribute.SampleIterations));
                }
                methodProgress.Stage = "Done: " + attribute.ToString();
            }
        }

        private static void runBenchmark(MethodInfo method, object measureClass, Benchmark bm, int iterations)
        {
            for (int i = 0; i < iterations; i++)
            {
                if (stop_running) 
                {
                    if (bm != null) {
                        bm.stop_running = true;
                    }
                    break;
                }

                bm.Run(() =>
                {
                    method.Invoke(measureClass, Type.EmptyTypes);
                    return true;
                });
            }
        }

        private static double ComputeSampleSize(List<Measurement> measurements)
        {
            var numRuns = new double[measurements.Count];
            var zScore = 1.96; // For 95% confidence
            int i = 0;
            foreach (var mes in measurements)
            {
                mes.ComputeResults();
                var top = zScore * mes.Deviation;
                var err = mes.Mean * 0.005;
                numRuns[i++] = (top / err) * (top / err);
            }
            return numRuns.Max();
        }

        private static bool IsEnough(double numRuns, List<Measurement> measurements, int iterations)
        {
            return iterations >= numRuns || measurements.All(m => m.ErrorPercent <= 0.005);
        }

        private static void ProcessMeasure(Measure measure, MeasureAttribute attribute, MethodProgress methodProgress)
        {
            attribute.AddMeasure(measure);
            methodProgress.RunsDone = attribute.IterationsDone;
            methodProgress.PlannedRuns = attribute.PlannedIterations;

            // writes the measure to console
            /* Console.WriteLine($"New measure: {attribute.IterationsDone}:{attribute.PlannedIterations}");
            foreach(var m in measure.apis)
            {
                Console.WriteLine($"Measure: {m.apiName}, {m.apiValue}");
            } */
        }
    }
}
