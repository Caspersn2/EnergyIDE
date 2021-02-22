using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;

namespace MeasurementTesting.InternalClasses
{
    internal class TestMethod
    {
        public MethodInfo MethodInformation { get; private set; }
        public Exception Exception { get; set; }
        public List<Measurement> Measurements;
        
        
        public TestMethod(MethodInfo methodInformation, List<Measurement> measurements, Exception exception)
        {
            MethodInformation = methodInformation;
            Measurements = measurements;
            Exception = exception;
        }

        // TODO:: Add better toString. Maybe in JSON, XML or HTML?
        public override string ToString()
        {
            var result = new StringBuilder(MethodInformation.DeclaringType + "." + MethodInformation.Name + ": ");
            if (Exception == null)
            {
                result.Append("Passed\n");
                foreach (var measurement in Measurements)
                {
                    result.Append(measurement);
                }
            }
            else
            {
                result.Append("Failed\n");
                result.Append(Exception.Message);
            }
            return result.ToString();
        }
    }
}
