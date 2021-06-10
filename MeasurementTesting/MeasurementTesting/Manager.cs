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

            var methods = type.GetMethods(BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Static | BindingFlags.Instance).Where(m => m.GetCustomAttributes().Any(a => a is MeasureAttribute));
            
            Progress.PlannedMethods = methods.Select(m => new MethodProgress()
            {
                Id = m.GetHashCode(),
                ClassName = m.GetType().Name,
                RunsDone = 0,
                Stage = "Waiting",
                MethodName = m.Name
            }).ToList();

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

            var methods = types.SelectMany(type => 
                    type.GetMethods(BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Static | BindingFlags.Instance)
                    .Where(m => m.GetCustomAttributes().Any(a => a is MeasureAttribute)));
            
            Progress.PlannedMethods = methods.Select(m => new MethodProgress()
            {
                Id = m.GetHashCode(),
                ClassName = m.GetType().Name,
                RunsDone = 0,
                Stage = "Waiting",
                MethodName = m.Name
            }).ToList();
            
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
                    type.GetMethods(BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Static | BindingFlags.Instance)
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
            
            // Gets the setup and cleanup methods
            var setup = classAtt.GetSetupMethod(type);
            var cleanUp = classAtt.GetCleanupMethod(type);

            // Getting all methods in the class and checking for measure attributes 
            var methods = type.GetMethods(BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Static | BindingFlags.Instance);
            if (methodHashCodes != null)
            {
                methods = methods.Where(m => methodHashCodes.Contains(m.GetHashCode())).ToArray();
            }

            // Iterates all methods. Only considers those that have the "measure" attribute
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
                        if(attribute.Dependencies != null)
                            output.MethodCalled(method, attribute.Measurements, attribute.Dependencies);
                        else
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
            Console.WriteLine("Starting to perform benchmark: " + method.Name);
            // Checking for dependency (JIT)
            var itterationsPrRun = classAtt.Dependent ?  attribute.SampleIterations : 1;
            var itterationsTotal = classAtt.Dependent ? 1 : attribute.SampleIterations;
            var methodName = method.Name;
            
            bm = new Benchmark(itterationsPrRun, classAtt.Types, true, methodName);
            bm.stop_running = stop_running;
            bm.SingleRunComplete += measure => ProcessMeasure(measure, attribute, methodProgress);
            // Running sample iterations
            runBenchmark(method, measureClass, bm, itterationsTotal);
            var numRuns = (int) Math.Ceiling(ComputeSampleSize(attribute.Measurements, classAtt.errorPercent));
            
            Console.WriteLine(numRuns);
            if (!IsEnough(numRuns, attribute.Measurements, attribute.SampleIterations, classAtt.errorPercent))
            {
                Console.WriteLine("not enough");
                methodProgress.Stage = "Extra: " + (classAtt.Dependent ? "dependent" : "not dependent");
                attribute.PlannedIterations = classAtt.Dependent ? numRuns + attribute.SampleIterations : numRuns;
                if (classAtt.Dependent) 
                {
                    Console.WriteLine("dependent - not enough");
                    bm = new Benchmark(numRuns, classAtt.Types, true, methodName);
                    bm.stop_running = stop_running;
                    bm.SingleRunComplete += measure => ProcessMeasure(measure, attribute, methodProgress);                    
                }
                var exstraPrRuns = classAtt.Dependent ? 1 : (numRuns - attribute.SampleIterations);
                runBenchmark(method, measureClass, bm, exstraPrRuns);
            }
            methodProgress.Stage = "Done: " + attribute.ToString();
        }

        public struct PosInt
        {
            public int i;
        }

        private static void runBenchmark(MethodInfo method, object measureClass, Benchmark bm, int iterations)
        {
            var overflowExceptions = 0;
            for (int i = 0; i < iterations; i++)
            {
                if (stop_running) 
                {
                    if (bm != null) {
                        bm.stop_running = true;
                    }
                    break;
                }
            

                // Check for input
                var allTypes = new Type[] {typeof(bool), typeof(byte), typeof(sbyte), typeof(char), typeof(decimal), typeof(double), typeof(float), typeof(int), typeof(uint), typeof(nint), typeof(nuint), typeof(long), typeof(ulong), typeof(short), typeof(ushort)};
                object[] randomInputs = method.GetParameters().Select(parameter => {
                    var rnd = new Random();
                    var typeSwitch = new Dictionary<Type, Object> {
                        { typeof(int), rnd.Next(int.MinValue, int.MaxValue) },
                        { typeof(uint), ((uint)rnd.Next(int.MinValue, int.MaxValue) + (uint)int.MaxValue) },
                        { typeof(short), (short)rnd.Next(short.MinValue, short.MaxValue) },
                        { typeof(ushort), ((ushort)rnd.Next(ushort.MinValue, ushort.MaxValue) + (ushort)ushort.MaxValue) },
                        { typeof(sbyte), (sbyte)rnd.Next(-128, 127) },
                        { typeof(byte), (byte)rnd.Next(0, 255) },
                        { typeof(long), (long)rnd.Next(int.MinValue, int.MaxValue) },
                        { typeof(float), (float)rnd.NextDouble() },
                        { typeof(double), rnd.NextDouble() },
                        { typeof(string[]), new string[]{ "one", "two", "three" } },
                        { typeof(string), new string(Enumerable.Repeat("ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789", rnd.Next(1, 1000) )
                                                                    .Select(s => s[rnd.Next(s.Length)]).ToArray())},
                        { typeof(bool), rnd.Next(0, 1) },
                        { typeof(Type), allTypes[rnd.Next(0,allTypes.Length-1)]},
                        { typeof(PosInt), new PosInt() {i = rnd.Next(1, Int16.MaxValue)}}
                    };
                    
                    if (parameter.Name.Contains("bool")) {
                        if (parameter.ParameterType == typeof(byte)){
                            return (byte)rnd.Next(0, 1);
                        }
                        else if (parameter.ParameterType == typeof(sbyte)){
                            return (sbyte)rnd.Next(0, 1);
                        }
                        else if (parameter.ParameterType == typeof(uint)) {
                            return (uint)rnd.Next(0, 1);
                        }
                        return rnd.Next(0, 1);
                    }
                    
                    var type = parameter.ParameterType;
                    if (typeSwitch.ContainsKey(type))
                    {
                        return typeSwitch[type];
                    }
                    return Type.EmptyTypes;
                }).ToArray();
                
                object[] input = randomInputs == null ? Type.EmptyTypes : randomInputs;
                
                try {
                    bm.Run(() =>
                    {
                        method.Invoke(measureClass, input);
                        return true;
                    });
                    Console.SetOut(bm.stdout);
                } catch(OverflowException e) {
                    // If there is an overflow exception, then run it again.
                    Console.SetOut(bm.stdout);
                    if (overflowExceptions < 1000000) {
                        i--;
                        overflowExceptions++;
                        Console.Write(".");
                    }
                    else {
                        // If an overflow exception has occurred 1 million times, then just skip this method
                        throw new Exception("Overflow one million times", e);
                    }
                } catch(Exception e) {
                    Console.SetOut(bm.stdout);
                    var isOverflow = false;
                    var excep = e;
                    while (excep != null) {
                        if (excep.GetType() == typeof(OverflowException)){
                            isOverflow = true;
                            break;
                        }
                        excep = excep.InnerException;
                    }

                    if (isOverflow) {
                        // If there is an overflow exception, then run it again.
                        if (overflowExceptions < 10000) {
                            i--;
                            overflowExceptions++;
                            Console.Write(".");
                        }
                        else {
                            // If an overflow exception has occurred too much, then just skip this method
                            throw new Exception("Too many overflows", e);
                        }
                    }
                    else {
                        Console.WriteLine($"Other error ocurred {e.GetType()}");
                        throw new Exception($"An error ocurred running method {method.Name}", e);
                    }
                }
            }

            if (overflowExceptions > 0) {
                Console.WriteLine($"Overflows: {overflowExceptions}. Method name: {method.Name}");
            }
        }

        private static double ComputeSampleSize(List<Measurement> measurements, float errorPercent)
        {
            var numRuns = new double[measurements.Count];
            var zScore = 1.96; // For 95% confidence
            int i = 0;
            foreach (var mes in measurements)
            {
                mes.ComputeResults();
                var top = zScore * mes.Deviation;
                var err = mes.Mean * errorPercent;
                numRuns[i++] = (top / err) * (top / err);
            }
            return numRuns.Max();
        }

        private static bool IsEnough(double numRuns, List<Measurement> measurements, int iterations, float errorPerdent)
        {
            return iterations >= numRuns || measurements.All(m => m.ErrorPercent <= errorPerdent);
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
