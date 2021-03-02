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
            var result = new StringBuilder();
            result.Append("<method>");
            result.Append($"<declaring-type>{MethodInformation.DeclaringType}</declaring-type>");
            result.Append($"<name>{MethodInformation.Name}</name>");
            
            if (Exception == null)
            {
                result.Append("<result>Passed</result>");
                foreach (var measurement in Measurements)
                {
                    result.Append(measurement.ToString());
                }
            }
            else
            {
                result.Append("<result>Failed</result>");
                result.Append($"<error-message>{Exception.Message}</error-message>");
            }
            
            result.Append("</method>");
            return result.ToString();
        }
    }
}
