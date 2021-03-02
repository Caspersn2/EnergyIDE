using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Threading;
using MeasurementTesting;
using MeasurementTesting.Attributes;
using MeasurementTesting.InternalClasses;
using MeasureTestingServer.Controllers;
using System.Runtime.Loader;
using System.IO;
using System.Text.Json;

namespace Measurement.Repositories
{
    public class MeasurementRepository 
    {
        public Thread MeasureThread;
        private string Path { get; set; }
        private string FinalOutput { get; set; }
        private static List<TypeMethods> Methods { get; set; }
        
        public MeasureProgress GetMeasurements() => Manager.Progress;

        public string Start(int[] MethodIds)
        {
            //Spawns a new thread to run the testing
            if (Methods == null || !(Methods.Count() > 0))
                return "Not Started.. Cound not find any methods";

            MeasureThread = new Thread(x => {
                // Loop for each dll file of the chosen methods.
                var chosenClasses = Methods.Where(m => m.methods.Any(method => MethodIds.Contains(method.Id)));
                
                var types = new Dictionary<Type, List<int>>();
                chosenClasses.ToList().ForEach(x => types.Add(x.type, x.methods.Where(method => MethodIds.Contains(method.Id)).Select(m => m.Id).ToList()));
                
                FinalOutput = Manager.Test(types);
                Console.WriteLine("I am done");
            });
            MeasureThread.Name = "BenchmarkThread";
            MeasureThread.Start();
            
            return "Started";
        }

        public bool Stop()
        {
            Console.WriteLine("Stopping");
            Manager.Stop();
            return true;
        }

        public GetMethodsViewModel[] GetMethods(string[] files)
        {
            var result = new List<GetMethodsViewModel>();
            Methods = new List<TypeMethods>();
            
            foreach(var file in files)
            {
                try {
                    using (Stream stream = File.OpenRead(file))
                    {
                        byte[] rawAssembly = new byte[stream.Length];
                        stream.Read(rawAssembly, 0, (int)stream.Length);
                        var ass = Assembly.Load(rawAssembly);
                        
                        var types = ass.GetTypes();
                        foreach(var type in types)
                        {
                            if (type.GetCustomAttributes().Any(a => a is MeasureClassAttribute)) 
                            {
                                var methods = type.GetMethods().Where(m => m.GetCustomAttributes().Any(a => a is MeasureAttribute));
                                if (methods.Any())
                                {
                                    var method = methods.Select(m => new MethodViewModel() { Id = m.GetHashCode(), Name = m.Name, DllFile = file }).ToArray();
                                    result.Add(new GetMethodsViewModel {
                                        key = type.Name,
                                        value = method,
                                    });
                                    
                                    Methods.Add(new TypeMethods() 
                                    {
                                        type = type,
                                        DllFile = file,
                                        methods = method.ToList()
                                    });
                                }
                            }
                        }
                    }
                } catch (Exception e)
                {
                    Console.WriteLine("Error occured in file: " + file);
                }
            }

            return result.ToArray();
        }
    }
}
