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
            System.IO.File.WriteAllText("output.xml", output);
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

        #region All IL-code tests

        [Measure(1000)]
        public void Empty()
        {
            var (method, ilg) = newMethod();
            runMethod(method, ilg);
        }

        #region Loads
        #region Load (INT, FLOAT): Codes: 0x20 - 0x22
        [Measure(1000)] // ox20
        public void Ldc_I4(int value)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        #region LoadINT32 0 - 8
        [Measure(1000)] // 0x16
        public void Ldc_I4_0()
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4_0);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x17
        public void Ldc_I4_1()
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4_1);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }
        
        [Measure(1000)] // 0x18
        public void Ldc_I4_2()
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4_2);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x19
        public void Ldc_I4_3()
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4_3);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x1A
        public void Ldc_I4_4()
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4_4);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x1B
        public void Ldc_I4_5()
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4_5);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x1C
        public void Ldc_I4_6()
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4_6);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x1D
        public void Ldc_I4_7()
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4_7);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x1E
        public void Ldc_I4_8()
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4_8);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }
        #endregion

        [Measure(1000)] // 0x1f
        public void Ldc_I4_S(int value)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4_S, value);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x21
        public void Ldc_I8(long value)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I8, value);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }
        
        [Measure(1000)] // 0x22
        public void Ldc_R4(float value)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_R4, value);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x23
        public void Ldc_R8(double value)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_R8, value);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }
        #endregion

        [Measure(1000)] // 0x14
        public void Ldnull()
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldnull);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x20 - many times
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

        [Measure(1000)]
        public void Ldstr(string value)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldstr, value);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }
        #endregion
        
        #region Operations (Add, Mul, Sub)
        [Measure(1000)] // 0x58
        public void Add(int value1, int value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Add);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x59
        public void Sub(int value1, int value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Sub);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x5A
        public void Mul(int value1, int value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Mul);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }
        

        [Measure(1000)] // 0x65
        public void Neg(int value)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Neg);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x66
        public void Not(int value)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Not);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x60
        public void Or(int value1, int value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Or);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x5D
        public void Rem(int value1, int value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Rem);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        #endregion

        #region Branches

        [Measure(1000)]
        public void BranchDefineLabelEmpty()
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();
            ilg.MarkLabel(end);
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x38
        public void Br()
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Br, end);

            ilg.MarkLabel(end);
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x39
        public void BrfalseTrue()
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4, 0);
            ilg.Emit(OpCodes.Brfalse, end);

            ilg.MarkLabel(end);
            runMethod(method, ilg);
        }
        [Measure(1000)] // 0x39
        public void BrfalseFalse()
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4, 1);
            ilg.Emit(OpCodes.Brfalse, end);

            ilg.MarkLabel(end);
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x3A
        public void BrtrueFalse()
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4, 0);
            ilg.Emit(OpCodes.Brtrue, end);

            ilg.MarkLabel(end);
            runMethod(method, ilg);
        }
        [Measure(1000)] // 0x3A
        public void BrtrueTrue()
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4, 1);
            ilg.Emit(OpCodes.Brtrue, end);

            ilg.MarkLabel(end);
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x3B
        public void BeqTrue(int value)
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();
            
            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Beq, end);
            
            ilg.MarkLabel(end);
            
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x3B
        public void BeqFalse(int value1, int value2)
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();
            
            // Ved godt at det ikke er med garenti at de ikke er ens.
            // Men tænker ikke at vi når ind i en situration hvor de faktisk er ens
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Beq, end);
            ilg.MarkLabel(end);
            
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x3C
        public void Bge(int value1, int value2) // Greater than or equal to
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();
            
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Bge, end);
            
            ilg.MarkLabel(end);
            
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x3D
        public void Bgt(int value1, int value2) // Greater than
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();
            
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Bgt, end);
            
            ilg.MarkLabel(end);
            
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x3E
        public void Bgt(int value1, int value2) // Less than or equal
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();
            
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Bgt, end);
            
            ilg.MarkLabel(end);
            
            runMethod(method, ilg);
        }

        [Measure(1000)] // 0x3E
        public void Blt(int value1, int value2) // Less than
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();
            
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Blt, end);
            
            ilg.MarkLabel(end);
            
            runMethod(method, ilg);
        }

        #endregion

        #endregion
    }
}
