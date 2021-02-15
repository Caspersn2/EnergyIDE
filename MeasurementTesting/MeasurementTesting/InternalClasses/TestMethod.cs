using System;
using System.Collections.Generic;
using System.Reflection;
using System.Text;

namespace MeasurementTesting.InternalClasses
{
    internal class TestMethod
    {
        public MethodInfo MethodInformation { get; private set; }
        public Exception Exception { get; set; }
        public Measurement Measurement { get; set; }

        public TestMethod(MethodInfo methodInformation, Measurement measurement, Exception exception)
        {
            MethodInformation = methodInformation;
            Exception = exception;
            Measurement = measurement;
        }

        // TODO:: Add better toString. Maybe in JSON, XML or HTML?
        public override string ToString()
        {
            var result = MethodInformation.DeclaringType + "." + MethodInformation.Name + ": ";
            if (Exception == null)
            {
                result += "Passed, " + Measurement.ToString();
            }
            else
            {
                result += "Faild, " + Exception.Message;
            }
            return result;
        }
    }
}
