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
        public string[] Dependencies = null;
        
        
        public TestMethod(MethodInfo methodInformation, List<Measurement> measurements, Exception exception)
        {
            MethodInformation = methodInformation;
            Measurements = measurements;
            Exception = exception;
        }

        public TestMethod(MethodInfo methodInformation, List<Measurement> measurements, string[] dependencies)
        {
            MethodInformation = methodInformation;
            Measurements = measurements;
            Dependencies = dependencies;
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
                    result.Append(measurement.ToString());
                if (Dependencies != null)
                    result.Append(ComputeRealCost());
            }
            else
            {
                result.Append("<result>Failed</result>");
                result.Append($"<error-message>Error Occurred</error-message>");
            }
            
            result.Append("</method>");
            return result.ToString();
        }

        public string ComputeRealCost()
        {
            var result = new StringBuilder();
            result.Append("<dependencies>");
            foreach (string dependency in Dependencies)
                result.Append($"<instruction>{dependency}</instruction>");
            result.Append("</dependencies>");

            return result.ToString();
        }
    }
}
