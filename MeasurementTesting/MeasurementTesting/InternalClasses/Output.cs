using System;
using System.Collections.Generic;
using System.Reflection;
using System.Text;

namespace MeasurementTesting.InternalClasses
{
    internal class Output
    {
        public List<TestMethod> methodsCalled { get; set; }
        private string typeName { get; set; }
        
        public Output(string TypeName)
        {
            methodsCalled = new List<TestMethod>();
            typeName = TypeName;
        }

        public void MethodCalled(MethodInfo methodInfo, List<Measurement> measurements, Exception exception = null)
        {
            methodsCalled.Add(new TestMethod(methodInfo, measurements, exception));
        }

        public override string ToString()
        {
            StringBuilder builder = new StringBuilder();
            builder.Append("<class>");
            builder.Append($"<name>{typeName}</name>");

            foreach (var method in methodsCalled)
            {
                builder.Append(method.ToString());
            }
            
            builder.Append("</class>");
            return builder.ToString();
        }
    }
}
