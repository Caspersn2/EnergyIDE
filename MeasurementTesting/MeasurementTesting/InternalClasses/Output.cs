using System;
using System.Collections.Generic;
using System.Reflection;
using System.Text;

namespace MeasurementTesting.InternalClasses
{
    internal class Output
    {
        public List<TestMethod> methodsCalled;
        
        public Output()
        {
            methodsCalled = new List<TestMethod>();
        }

        public void MethodCalled(MethodInfo methodInfo, Measurement measurement, Exception exception = null)
        {
            methodsCalled.Add(new TestMethod(methodInfo, measurement, exception));
        }

        public override string ToString()
        {
            StringBuilder builder = new StringBuilder();
            foreach (var method in methodsCalled)
            {
                builder.Append(method.ToString());
            }
            return builder.ToString();
        }
    }
}
