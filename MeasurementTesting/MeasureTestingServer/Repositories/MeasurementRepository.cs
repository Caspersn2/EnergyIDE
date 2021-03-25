using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Threading;
using MeasurementTesting;
using MeasurementTesting.Attributes;
using MeasureTestingServer.Controllers;
using System.IO;

namespace Measurement.Repositories
{
    public class MeasurementRepository
    {
        public Thread MeasureThread;
        private string Path { get; set; }
        private string FinalOutput { get; set; }
        private static List<ClassMethods> Methods { get; set; }

        public MeasureProgress GetMeasurements() => Manager.Progress;

        public string Start(int[] methodIds)
        {
            //Spawns a new thread to run the testing
            if (Methods == null || !(Methods.Count() > 0))
                return "Not Started.. Cound not find any methods";

            MeasureThread = new Thread(x =>
            {
                // Loop for each dll file of the chosen methods.
                var chosenClasses = Methods.Where(m => m.Methods.Any(method => methodIds.Contains(method.Id)));

                var classes = new Dictionary<Type, List<int>>();
                chosenClasses.ToList().ForEach(x => classes.Add(x.CurrentClass, x.Methods.Where(method => methodIds.Contains(method.Id)).Select(m => m.Id).ToList()));

                FinalOutput = Manager.Test(classes);
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

        public dynamic GetMethods(string[] files, string type)
        {
            var result = new List<ClassMethods>();
            Methods = new List<ClassMethods>();
            files = getDistinctFiles(files);

            foreach (var file in files)
            {
                try
                {
                    using (Stream stream = File.OpenRead(file))
                    {
                        byte[] rawAssembly = new byte[stream.Length];
                        stream.Read(rawAssembly, 0, (int)stream.Length);
                        var ass = Assembly.Load(rawAssembly);
                        var classes = ass.GetTypes();

                        foreach (var currentClass in classes)
                        {
                            if (type == "static")
                                result.AddRange(getAllMethods(currentClass, file));
                            else if (type == "dynamic" && currentClass.GetCustomAttributes().Any(a => a is MeasureClassAttribute))
                                result.AddRange(getMethodsWithAttribute(currentClass, file));
                        }
                    }
                }
                catch (Exception e)
                {
                    System.Console.WriteLine(e);
                    Console.WriteLine("Error occured in file: " + file);
                }
            }
            return result.Select(x => new { ClassName = x.CurrentClass.Name, AssemblyPath = x.AssemblyPath, Methods = x.Methods }).Distinct();
        }

        private string[] getDistinctFiles(string[] files)
        {
            List<string> alreadySeen = new List<string>();
            List<string> distinctFilse = new List<string>();
            foreach (string file in files)
            {
                string temp = file.Split('/')[^1];
                if(alreadySeen.Contains(temp))
                    continue;
                alreadySeen.Add(temp);
                distinctFilse.Add(file);
            }
            return distinctFilse.ToArray();
        }

        private List<ClassMethods> getAllMethods(Type currentClass, string file)
        {
            var result = new List<ClassMethods>();
            var allMethods = currentClass.GetMethods();
            if (allMethods.Any())
            {
                var methodViewModels = allMethods.Select(m => new MethodViewModel() { Id = m.GetHashCode(), Name = m.Name }).ToArray();
                result.Add(new ClassMethods
                {
                    CurrentClass = currentClass,
                    AssemblyPath = file,
                    Methods = methodViewModels,
                });
            }
            return result;
        }

        private List<ClassMethods> getMethodsWithAttribute(Type currentClass, string file)
        {
            var result = new List<ClassMethods>();
            var methods = currentClass.GetMethods().Where(m => m.GetCustomAttributes().Any(a => a is MeasureAttribute));
            if (methods.Any())
            {
                var methodViewModels = methods.Select(m => new MethodViewModel() { Id = m.GetHashCode(), Name = m.Name }).ToArray();
                ClassMethods cm = new ClassMethods
                {
                    CurrentClass = currentClass,
                    AssemblyPath = file,
                    Methods = methodViewModels,
                };
                result.Add(cm);
                Methods.Add(cm);
            }
            return result;
        }
    }
}
