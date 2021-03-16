using MeasurementTesting.InternalClasses;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;

namespace MeasurementTesting.Attributes
{
    [AttributeUsage(AttributeTargets.Method, AllowMultiple = false)]
    public class MeasureAttribute : Attribute
    {
        public List<Measurement> Measurements;
        public int SampleIterations;
        public int PlannedIterations;
        public int IterationsDone;
        public string[] InputList;
        
        public MeasureAttribute(int sampleIterations = 100)
        {
            SampleIterations = sampleIterations;
            PlannedIterations = sampleIterations;
            Measurements = new List<Measurement>();
            //this.InputList = Directory.GetDirectories(@"C:\Users\Caspe\Documents\GitHub\EnergyIDE\energyModeling\Benchmarks");
        }

        public void AddMeasure(Measure measure)
        {
            this.IterationsDone++;
            foreach (var api in measure.apis)
            {
                if (Measurements.Any(m => m.Name.Equals(api.apiName)))
                {
                    Measurements.First(m => m.Name.Equals(api.apiName)).AddMeasurement(api.apiValue);
                }
                else
                {
                    var temp = new Measurement(api.apiName);
                    temp.AddMeasurement(api.apiValue);
                    Measurements.Add(temp);
                }
            }
        }

        public override string ToString()
        {
            var builder = new StringBuilder();
            builder.Append("Measurements: ");
            foreach(var measurement in Measurements)
            {
                builder.Append(measurement.ToString());
            }
            return builder.ToString();
        }
    }

    [AttributeUsage(AttributeTargets.Class, AllowMultiple = false)]
    public class MeasureClassAttribute : Attribute
    {
        public List<MeasureTypes> Types;
        public bool Dependent;
        public MeasureClassAttribute(bool dependent = false, params MeasurementType[] types)
        {
            // If any types are specified then use them. Otherwise, use all types.
            Types = types != null && types.Length > 0 ? new List<MeasureTypes>() : new List<MeasureTypes>(){ MeasureTypes.Timer, MeasureTypes.Temp, MeasureTypes.Package, MeasureTypes.DRAM };
            foreach(var type in types){
                switch(type){
                    case MeasurementType.DRAM:
                        Types.Add(MeasureTypes.DRAM);
                        break;
                    case MeasurementType.Package:
                        Types.Add(MeasureTypes.Package);
                        break;
                    case MeasurementType.Temp:
                        Types.Add(MeasureTypes.Temp);
                        break;
                    case MeasurementType.Timer:
                        Types.Add(MeasureTypes.Timer);
                        break;
                }
            }
            
            Dependent = dependent;
        }
        
        public MethodInfo GetSetupMethod(Type type)
        {
            var setup = type.GetMethods().Where(method =>
                method.GetCustomAttributes(false).Any(att => att is MeasureSetupAttribute));
            
            if (setup.Count() > 1)
            {
                throw new Exception("There has to be a single setup method in this class");
            }

            return setup.Any() ? setup.First() : null;
        }
        
        public MethodInfo GetCleanupMethod(Type type)
        {
            var cleanup = type.GetMethods().Where(method =>
                method.GetCustomAttributes(false).Any(att => att is MeasureCleanupAttribute));
            
            if (cleanup.Count() > 1)
            {
                throw new Exception("There has to be zero or one cleanup method");
            }

            return cleanup.Any() ? cleanup.First() : null;
        }
    }

    public class MeasureSetupAttribute : Attribute
    {
        public MeasureSetupAttribute()
        {
            
        }
    }

    public class MeasureCleanupAttribute : Attribute
    {
        public MeasureCleanupAttribute()
        {
            
        }
    }

    public enum MeasurementType {
        Timer,
        Package,
        DRAM,
        Temp
    }
}
