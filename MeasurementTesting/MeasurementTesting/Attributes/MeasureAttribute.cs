using MeasurementTesting.InternalClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;

namespace MeasurementTesting.Attributes
{
    [AttributeUsage(AttributeTargets.Method, AllowMultiple = false)]
    public class MeasureAttribute : Attribute
    {
        public Measurement measurement;
        
        public MeasureAttribute(MeasurementType type)
        {
            switch (type)
            {
                case MeasurementType.Time:
                    measurement = new TimeMeasurement();
                    break;
                default:
                    measurement = new TimeMeasurement();
                    break;
            }
        }
    }

    [AttributeUsage(AttributeTargets.Class, AllowMultiple = false)]
    public class MeasureClassAttribute : Attribute
    {
        public MeasureClassAttribute(){}

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

    public enum MeasurementType
    {
        Time,
        Energy,
        Temperature
    }
}
