using System;
using System.Collections.Generic;
using System.IO;
using MeasurementTesting.Attributes;
using MeasurementTesting;
using System.Linq;
using System.Diagnostics;
using System.Reflection;
using System.Reflection.Emit;

namespace Modeling
{
    class Program
    {
        static void Main(string[] args)
        {
            var output = Manager.Test(typeof(measureClass));
            Console.WriteLine(output);
        }
    }

    [MeasureClass(false, MeasurementType.Timer)]
    class measureClass 
    {
        private (DynamicMethod, ILGenerator) newMethod()
        {
            DynamicMethod method = new DynamicMethod("MyMethod", typeof(void), new Type[] { });
            var ilg = method.GetILGenerator();
            return (method, ilg);
        }

        private void runMethod(DynamicMethod method, ILGenerator ilg)
        {
            ilg.Emit(OpCodes.Ret);
            method.Invoke(null, Type.EmptyTypes);
        }

        [Measure(10000)]
        public void Empty()
        {
            var (method, ilg) = newMethod();
            runMethod(method, ilg);
        }

        [Measure(10000)]
        public void LoadInt32(int value)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }
        
        [Measure(10000)]
        public void LoadInt32MANYTIMES(int value)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Pop);
            ilg.Emit(OpCodes.Pop);
            ilg.Emit(OpCodes.Pop);
            ilg.Emit(OpCodes.Pop);
            ilg.Emit(OpCodes.Pop);
            ilg.Emit(OpCodes.Pop);
            ilg.Emit(OpCodes.Pop);
            ilg.Emit(OpCodes.Pop);
            ilg.Emit(OpCodes.Pop);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000)]
        public void LoadString(string value)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldstr, value);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }
        
        [Measure(10000)]
        public void Add(int value1, int value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Add);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        // For running java style
        /* [Measure(1000)]
        public void MeasureMethod(string path) 
        {
            psi.Arguments = "dotnet run -p " + path;
            Process.Start(psi);
        } */
    }
}
