using System;
using System.Linq;
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
                    if (tempAttribute is MeasureAttribute)
                    {
                        var attribute = (MeasureAttribute)tempAttribute;
                        var measureClass = type.Assembly.CreateInstance(type.FullName);
                        try
                        {
                            attribute.measurement.Start();
                            var bm = new Benchmark(10, false);
                            bm.SingleRunComplete += ProcessMeasure;  
                            if (setup != null)
                                setup.Invoke(measureClass, Type.EmptyTypes);
                            
                            bm.Run(() =>
                            {
                                method.Invoke(measureClass, Type.EmptyTypes);
                                return true;
                            }, res => {});
                            if (cleanUp != null)
                                cleanUp.Invoke(measureClass, Type.EmptyTypes);
                            
                            attribute.measurement.Stop();
                            attribute.measurement.Save();
                            output.MethodCalled(method, attribute.measurement);
                        }
                        catch(Exception e)
                        {
                            output.MethodCalled(method, attribute.measurement, e.InnerException ?? e);
                        }
                    }
                }

            }
        }

        private static void ProcessMeasure(Measure measure)
        {
            Console.WriteLine("New measure");
            foreach(var m in measure.apis)
            {
                Console.WriteLine($"Measure: {m.apiName}, {m.apiValue}");
            }
        }
    }
}
