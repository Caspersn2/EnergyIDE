using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using MeasurementTesting.InternalClasses;
using MeasurementTesting.Attributes;
using benchmark;

namespace MeasurementTesting
{
    //In the tutorial he uses a singleton pattern

    /// <summary>
    /// A manager class for the measurement library
    /// </summary>
    public class Manager
    {
        public static string Test (Type type)
        {
            var output = new Output();
            TestRunner(type, output);
            return output.ToString();
        }

        private static void TestRunner(Type type, Output output)
        {
            //checking for measureClass attribute
            var tempAtt = type.GetCustomAttributes(false).Where(att => att is MeasureClassAttribute);
            if (tempAtt.Count() != 1){ return; }
            var classAtt = (MeasureClassAttribute) tempAtt.First();
            var setup = classAtt.GetSetupMethod(type);
            var cleanUp = classAtt.GetCleanupMethod(type);
            
            // Getting the methods and checking for measure attributes 
            var methods = type.GetMethods();
            foreach(var method in methods)
            {
                Object[] attributes = method.GetCustomAttributes(false);
                foreach (var tempAttribute in attributes)
                {
                    // Checks for measure attribute 
                    if (!(tempAttribute is MeasureAttribute)) continue;
                    
                    // Cast to measure attribute and create class
                    var attribute = (MeasureAttribute)tempAttribute;
                    var measureClass = type.Assembly.CreateInstance(type.FullName);
                    try
                    {
                        // Running setup
                        if (setup != null)
                            setup.Invoke(measureClass, Type.EmptyTypes);

                        PerformBenchmark(measureClass, method, classAtt, attribute);
                        
                        // Cleanup
                        if (cleanUp != null)
                            cleanUp.Invoke(measureClass, Type.EmptyTypes);
                        
                        // Save results to output class
                        output.MethodCalled(method, attribute.Measurements);
                    }
                    catch(Exception e)
                    {
                        output.MethodCalled(method, attribute.Measurements, e.InnerException ?? e);
                    }
                }

            }
        }

        private static void PerformBenchmark(Object measureClass, MethodInfo method, MeasureClassAttribute classAtt, MeasureAttribute attribute)
        {
            // Checking for dependency (JIT)
            if (classAtt.Dependent)
            {
                Console.WriteLine("Dependant");
                var bm = new Benchmark(attribute.SampleIterations, classAtt.Types, false);
                bm.SingleRunComplete += measure => ProcessMeasure(measure, attribute);
                // Running sample iterations
                runBenchmark(method, measureClass, bm, 1);
                var numRuns = (int) Math.Ceiling(ComputeSampleSize(attribute.Measurements));
                if (!IsEnough(numRuns, attribute.Measurements, attribute.SampleIterations))
                {
                    Console.Write($"Performing more samples.. {numRuns}");
                    attribute.PlannedIterations = numRuns + attribute.SampleIterations;
                    var newBm = new Benchmark(numRuns, classAtt.Types, false);
                    newBm.SingleRunComplete += measure => ProcessMeasure(measure, attribute);                    
                    runBenchmark(method, measureClass, newBm, 1);
                }
            }
            else
            {
                // Creating the benchmark class
                var bm = new Benchmark(1, classAtt.Types, false);
                bm.SingleRunComplete += measure => ProcessMeasure(measure, attribute);

                // Running sample iterations
                runBenchmark(method, measureClass, bm, attribute.SampleIterations);

                //Checking if it is enough runs
                var numRuns = (int) Math.Ceiling(ComputeSampleSize(attribute.Measurements));
                if (!IsEnough(numRuns, attribute.Measurements, attribute.SampleIterations))
                {
                    Console.Write($"Performing more samples.. {numRuns - attribute.SampleIterations}");
                    attribute.PlannedIterations = numRuns;
                    runBenchmark(method, measureClass, bm, (numRuns - attribute.SampleIterations));
                }
            }
        }

        private static void runBenchmark(MethodInfo method, object measureClass, Benchmark bm, int iterations)
        {
            for (int i = 0; i < iterations; i++)
            {
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

        private static void ProcessMeasure(Measure measure, MeasureAttribute attribute)
        {
            attribute.AddMeasure(measure);
            
            // writes the measure to console
            Console.WriteLine($"New measure: {attribute.IterationsDone}:{attribute.PlannedIterations}");
            foreach(var m in measure.apis)
            {
                Console.WriteLine($"Measure: {m.apiName}, {m.apiValue}");
            }
        }
    }
}
