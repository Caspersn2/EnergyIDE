using System;
using System.Collections.Generic;
using System.IO;
using MeasurementTesting.Attributes;
using MeasurementTesting;
using System.Linq;
using System.Diagnostics;
using System.Reflection;
using System.Reflection.Emit;
using System.Xml;

namespace Modeling
{
    class Program
    {
        static void Main(string[] args)
        {
            //var output = Manager.Test(typeof(measureClass));
            var output = Manager.Test(typeof(testing));

            System.IO.File.WriteAllText("output.xml", output);
            //UpdateXMLWithSubtractedCost("output.xml");
            UpdateNew("output.xml");
        }

        static void UpdateNew(string path)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load(path);

            // get a list of  all method nodes
            XmlNodeList allMethods = doc.SelectNodes("/class/method");
            XmlNodeList remainingMethods = allMethods;

            Dictionary<string, double> allMeans = new Dictionary<string, double>();

            var current = 0;
            var change = false;
            var running = true;
            while (running)
            {
                XmlNode methodNode = remainingMethods.Item(current);

                if (current >= remainingMethods.Count)
                {
                    if (change)
                    {
                        current = 0;
                        change = false;
                        continue;
                    }
                    else
                    {
                        running = false;
                        break;
                    }
                }

                if (allMeans.ContainsKey(methodNode.SelectSingleNode("name").InnerText)
                    || methodNode.SelectSingleNode("result").InnerText.Equals("Failed"))
                {
                    current++;
                    continue;
                }

                // Check for dependencies
                XmlNodeList instructionNodes = methodNode.SelectNodes("dependencies/instruction");
                Dictionary<string, int> dependencies = new Dictionary<string, int>();

                // check if the method actually has dependencies
                if (instructionNodes.Count > 0)
                {
                    foreach (XmlNode instruction in instructionNodes)
                    {
                        string name = instruction.InnerText;
                        if (dependencies.ContainsKey(name))
                            dependencies[name]++;
                        else dependencies.Add(name, 1);
                    }
                }

                // Checks if all dependencies is in allMeans
                var hasAll = dependencies.All(dep => allMeans.ContainsKey(dep.Key));
                if (hasAll)
                {
                    double newMean = double.Parse(methodNode.SelectSingleNode("measurement/mean").InnerText);
                    foreach (var dependency in dependencies)
                        newMean -= allMeans[dependency.Key] * dependency.Value;

                    XmlNode newMeanNode = doc.CreateElement("mean-subtracted");
                    newMeanNode.InnerText = newMean.ToString();
                    methodNode.SelectSingleNode("measurement").AppendChild(newMeanNode);

                    // Update all means with this mean
                    allMeans.Add(methodNode.SelectSingleNode("name").InnerText, newMean);

                    // There has been a change since last run
                    change = true;
                }
                current++;
            }

            // save the XmlDocument back to disk
            doc.Save(path);
        }
    }

    [MeasureClass(false, 0.05F, MeasurementType.Timer)]
    class testing
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

        [Measure(1000)]
        public void Empty()
        {
            var (method, ilg) = newMethod();
            runMethod(method, ilg);
        }
    }

    public class Fields
    {
        public static int sfield;
        public int field { get; set; }
    }

    [MeasureClass(false, 0.005F, MeasurementType.Timer)]
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

        #region Empties
        [Measure(10000)]
        public void Empty()
        {
            var (method, ilg) = newMethod();
            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty" })]
        public void EmptyDeclareLocal()
        {
            var (method, ilg) = newMethod();

            var test = ilg.DeclareLocal(typeof(int));

            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty" })]
        public void EmptyGetField()
        {
            var (method, ilg) = newMethod();

            FieldInfo fi = typeof(Fields).GetField("sfield");
            runMethod(method, ilg);
        }

        #endregion
        #region Loads
        #region Load (INT, FLOAT): Codes: 0x20 - 0x22
        [Measure(10000, new[] { "Empty" })] // ox20
        public void Ldc_I4(int value)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        #region LoadINT32 0 - 8
        [Measure(10000, new[] { "Empty" })] // 0x16
        public void Ldc_I4_0()
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4_0);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty" })] // 0x17
        public void Ldc_I4_1()
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4_1);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty" })] // 0x18
        public void Ldc_I4_2()
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4_2);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty" })] // 0x19
        public void Ldc_I4_3()
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4_3);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty" })] // 0x1A
        public void Ldc_I4_4()
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4_4);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty" })] // 0x1B
        public void Ldc_I4_5()
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4_5);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty" })] // 0x1C
        public void Ldc_I4_6()
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4_6);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty" })] // 0x1D
        public void Ldc_I4_7()
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4_7);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty" })] // 0x1E
        public void Ldc_I4_8()
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4_8);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }
        #endregion

        [Measure(10000, new[] { "Empty" })] // 0x1f
        public void Ldc_I4_S(sbyte value)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4_S, value);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty" })] // 0x21
        public void Ldc_I8(long value)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I8, value);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty" })] // 0x22
        public void Ldc_R4(float value)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_R4, value);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty" })] // 0x23
        public void Ldc_R8(double value)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_R8, value);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }
        #endregion
        #region Load Arguments
        [Measure(10000, new[] { "Empty" })]
        public void Ldarg(int boolValue, int value1)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldarg, boolValue);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty" })]
        public void Ldarg_0(int value0)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldarg_0);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty" })]
        public void Ldarg_1(int value0, int value1)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldarg_1);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty" })]
        public void Ldarg_2(int value0, int value1, int value2)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldarg_2);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty" })]
        public void Ldarg_3(int value0, int value1, int value2, int value3)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldarg_3);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty" })]
        public void Ldarg_S(byte value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldarg_S, value);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);

        }
        #endregion
        #region Load Locals
        [Measure(1000, new[] { "Empty", "Ldc_I4_0", "EmptyDeclareLocal", "Stloc_0" })]
        public void Ldloc_0()
        {
            var (method, ilg) = newMethod();

            var test = ilg.DeclareLocal(typeof(int));

            ilg.Emit(OpCodes.Ldc_I4_0);
            ilg.Emit(OpCodes.Stloc_0);
            ilg.Emit(OpCodes.Ldloc_0);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty", "Ldc_I4_0", "EmptyDeclareLocal", "EmptyDeclareLocal", "Stloc_1" })]
        public void Ldloc_1()
        {
            var (method, ilg) = newMethod();

            var test = ilg.DeclareLocal(typeof(int));
            var test2 = ilg.DeclareLocal(typeof(int));

            ilg.Emit(OpCodes.Ldc_I4_0);
            ilg.Emit(OpCodes.Stloc_1);
            ilg.Emit(OpCodes.Ldloc_1);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty", "Ldc_I4_0", "EmptyDeclareLocal", "EmptyDeclareLocal", "EmptyDeclareLocal", "Stloc_2" })]
        public void Ldloc_2()
        {
            var (method, ilg) = newMethod();

            var test = ilg.DeclareLocal(typeof(int));
            var test2 = ilg.DeclareLocal(typeof(int));
            var test3 = ilg.DeclareLocal(typeof(int));

            ilg.Emit(OpCodes.Ldc_I4_0);
            ilg.Emit(OpCodes.Stloc_2);
            ilg.Emit(OpCodes.Ldloc_2);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty", "Ldc_I4_0", "EmptyDeclareLocal", "EmptyDeclareLocal", "EmptyDeclareLocal", "EmptyDeclareLocal", "Stloc_3" })]
        public void Ldloc_3()
        {
            var (method, ilg) = newMethod();

            var test = ilg.DeclareLocal(typeof(int));
            var test2 = ilg.DeclareLocal(typeof(int));
            var test3 = ilg.DeclareLocal(typeof(int));
            var test4 = ilg.DeclareLocal(typeof(int));

            ilg.Emit(OpCodes.Ldc_I4_0);
            ilg.Emit(OpCodes.Stloc_3);
            ilg.Emit(OpCodes.Ldloc_3);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty", "Ldc_I4_S", "EmptyDeclareLocal", "Stloc_S" })]
        public void Ldloc_S()
        {
            var (method, ilg) = newMethod();

            var test = ilg.DeclareLocal(typeof(int));

            ilg.Emit(OpCodes.Ldc_I4_S, 0);
            ilg.Emit(OpCodes.Stloc_S, 0);
            ilg.Emit(OpCodes.Ldloc_S);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }
        #endregion
        #region Load Null, Str, 
        [Measure(10000, new[] { "Empty" })] // 0x14
        public void Ldnull()
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldnull);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty" })]
        public void Ldstr(string value)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldstr, value);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }
        #endregion
        #endregion
        #region Operations (Add, Mul, Sub, Shl, Shr)
        [Measure(10000, new[] { "Empty", "Ldc_I4", "Ldc_I4" })] // 0x58
        public void Add(int value1, int value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Add);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4", "Ldc_I4" })] // 0xD6
        public void Add_ovf(int value1, int value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Add_Ovf);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4", "Ldc_I4" })] // 0xD7
        public void Add_Ovf_Un(uint value1, uint value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Add_Ovf_Un);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4", "Ldc_I4" })] // 0x59
        public void Sub(int value1, int value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Sub);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4", "Ldc_I4" })] // 0xDA
        public void Sub_Ovf(int value1, int value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Sub_Ovf);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4", "Ldc_I4" })] // 0xDB
        public void Sub_Ovf_Un(uint value1, uint value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Sub_Ovf_Un);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4", "Ldc_I4" })] // 0x5A
        public void Mul(int value1, int value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Mul);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        /* [Measure(10000, new []{ "Empty", "Ldc_I4", "Ldc_I4" })] // 0xD8
        public void Mul_Ovf(int value1, int value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Mul_Ovf);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new []{ "Empty", "Ldc_I4", "Ldc_I4" })] // 0xD9
        public void Mul_Ovf_Un(int value1, int value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Mul_Ovf_Un);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        } */

        [Measure(10000, new[] { "Empty", "Ldc_I4", "Ldc_I4" })] // 0x5A
        public void Div(int value1, int value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Div);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4", "Ldc_I4" })] // 0x5A
        public void Div_Un(uint value1, uint value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Div_Un);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4" })] // 0x5A
        public void Dup(int value)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Dup);
            ilg.Emit(OpCodes.Pop);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }


        [Measure(10000, new[] { "Empty", "Ldc_I4" })] // 0x65
        public void Neg(int value)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Neg);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4" })] // 0x66
        public void Not(int value)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Not);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4", "Ldc_I4" })] // 0x60
        public void Or(int value1, int value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Or);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4", "Ldc_I4" })] // 0x60
        public void Xor(int value1, int value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Xor);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4", "Ldc_I4" })] // 0x5D
        public void Rem(int value1, int value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Rem);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4", "Ldc_I4" })] // 0x5D
        public void Rem_Un(uint value1, uint value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Rem_Un);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4", "Ldc_I4" })] // 0x5D
        public void Shl(int value1, int value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Shl);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4", "Ldc_I4" })] // 0x5D
        public void Shr(int value1, int value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Shr);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4", "Ldc_I4" })] // 0x5D
        public void Shr_Un(uint value1, uint value2)
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Shr_Un);
            ilg.Emit(OpCodes.Pop);
            runMethod(method, ilg);
        }

        #endregion
        #region Branches

        [Measure(10000, new[] { "Empty" })]
        public void BranchDefineLabelEmpty()
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();
            ilg.MarkLabel(end);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty" })] // 0x38
        public void Br()
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Br, end);

            ilg.MarkLabel(end);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty" })] // 0x2B
        public void Br_S()
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Br_S, end);

            ilg.MarkLabel(end);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4" })] // 0x39
        public void Brfalse(int boolValue)
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4, boolValue);
            ilg.Emit(OpCodes.Brfalse, end);

            ilg.MarkLabel(end);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4_S" })] // 0x2C
        public void Brfalse_S(byte boolValue)
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4_S, boolValue);
            ilg.Emit(OpCodes.Brfalse_S, end);

            ilg.MarkLabel(end);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4" })] // 0x3A
        public void Brtrue(int boolValue) // if 'bool' is in the parameter name, then it is either 1 or 0
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4, boolValue);
            ilg.Emit(OpCodes.Brtrue, end);

            ilg.MarkLabel(end);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4_S" })] // 0x2D
        public void Brtrue_S(byte boolValue)
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4_S, boolValue);
            ilg.Emit(OpCodes.Brtrue_S, end);

            ilg.MarkLabel(end);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4", "Ldc_I4" })] // 0x3B
        public void Beq(int boolValue1, int boolValue2)
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4, boolValue1);
            ilg.Emit(OpCodes.Ldc_I4, boolValue2);
            ilg.Emit(OpCodes.Beq, end);

            ilg.MarkLabel(end);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4_S", "Ldc_I4_S" })] // 0x2E
        public void Beq_S(sbyte boolValue1, sbyte boolValue2)
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4_S, boolValue1);
            ilg.Emit(OpCodes.Ldc_I4_S, boolValue2);
            ilg.Emit(OpCodes.Beq_S, end);

            ilg.MarkLabel(end);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4", "Ldc_I4" })] // 0x3C
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

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4_S", "Ldc_I4_S" })] // 0x3C
        public void Bge_S(sbyte value1, sbyte value2) // Greater than or equal to
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4_S, value1);
            ilg.Emit(OpCodes.Ldc_I4_S, value2);
            ilg.Emit(OpCodes.Bge_S, end);

            ilg.MarkLabel(end);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4", "Ldc_I4" })] // 0x41
        public void Bge_Un(uint value1, uint value2) // Greater than or equal to
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Bge_Un, end);

            ilg.MarkLabel(end);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4_S", "Ldc_I4_S" })] // 0x34
        public void Bge_Un_S(byte value1, byte value2) // Greater than or equal to
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4_S, value1);
            ilg.Emit(OpCodes.Ldc_I4_S, value2);
            ilg.Emit(OpCodes.Bge_Un_S, end);

            ilg.MarkLabel(end);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4", "Ldc_I4" })] // 0x3D
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

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4_S", "Ldc_I4_S" })] // 0x30
        public void Bgt_S(sbyte value1, sbyte value2) // Greater than
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4_S, value1);
            ilg.Emit(OpCodes.Ldc_I4_S, value2);
            ilg.Emit(OpCodes.Bgt_S, end);

            ilg.MarkLabel(end);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4", "Ldc_I4" })] // 0x42
        public void Bgt_Un(uint value1, uint value2) // Greater than
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Bgt_Un, end);

            ilg.MarkLabel(end);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4", "Ldc_I4" })] // 0x35
        public void Bgt_Un_S(byte value1, byte value2) // Greater than
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4_S, value1);
            ilg.Emit(OpCodes.Ldc_I4_S, value2);
            ilg.Emit(OpCodes.Bgt_Un_S, end);

            ilg.MarkLabel(end);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4", "Ldc_I4" })] // 0x3E
        public void Ble(int value1, int value2) // Less than or equal
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Ble, end);
            ilg.MarkLabel(end);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4_S", "Ldc_I4_S" })] // 0x31
        public void Ble_S(sbyte value1, sbyte value2) // Less than or equal
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4_S, value1);
            ilg.Emit(OpCodes.Ldc_I4_S, value2);
            ilg.Emit(OpCodes.Ble_S, end);
            ilg.MarkLabel(end);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4", "Ldc_I4" })] // 0x43
        public void Ble_Un(uint value1, uint value2) // Less than or equal
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Ble_Un, end);
            ilg.MarkLabel(end);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4_S", "Ldc_I4_S" })] // 0x36
        public void Ble_Un_S(byte value1, byte value2) // Less than or equal
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4_S, value1);
            ilg.Emit(OpCodes.Ldc_I4_S, value2);
            ilg.Emit(OpCodes.Ble_Un_S, end);
            ilg.MarkLabel(end);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4", "Ldc_I4" })] // 0x3F
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

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4_S", "Ldc_I4_S" })] // 0x32
        public void Blt_S(byte value1, byte value2) // Less than
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4_S, value1);
            ilg.Emit(OpCodes.Ldc_I4_S, value2);
            ilg.Emit(OpCodes.Blt_S, end);

            ilg.MarkLabel(end);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4", "Ldc_I4" })] // 0x44
        public void Blt_Un(uint value1, uint value2) // Less than
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Blt_Un, end);

            ilg.MarkLabel(end);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4_S", "Ldc_I4_S" })] // 0x37
        public void Blt_Un_S(byte value1, byte value2) // Less than
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4_S, value1);
            ilg.Emit(OpCodes.Ldc_I4_S, value2);
            ilg.Emit(OpCodes.Blt_Un_S, end);

            ilg.MarkLabel(end);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4", "Ldc_I4" })] // 0x40
        public void Bne_Un(int value1, int value2)
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4, value1);
            ilg.Emit(OpCodes.Ldc_I4, value2);
            ilg.Emit(OpCodes.Bne_Un, end);

            ilg.MarkLabel(end);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "BranchDefineLabelEmpty", "Ldc_I4_S", "Ldc_I4_S" })] // 0x33
        public void Bne_Un_S(sbyte value1, sbyte value2)
        {
            var (method, ilg) = newMethod();
            var end = ilg.DefineLabel();

            ilg.Emit(OpCodes.Ldc_I4_S, value1);
            ilg.Emit(OpCodes.Ldc_I4_S, value2);
            ilg.Emit(OpCodes.Bne_Un_S, end);

            ilg.MarkLabel(end);

            runMethod(method, ilg);
        }

        #endregion
        #region Compare
        public void Ceq(int boolValue1, int boolValue2)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4, boolValue1);
            ilg.Emit(OpCodes.Ldc_I4, boolValue2);
            ilg.Emit(OpCodes.Ceq);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4", "Ldc_I4" })]
        public void Cgt(int boolValue1, int boolValue2)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4, boolValue1);
            ilg.Emit(OpCodes.Ldc_I4, boolValue2);
            ilg.Emit(OpCodes.Cgt);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4", "Ldc_I4" })]
        public void Cgt_Un(uint boolValue1, uint boolValue2)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4, boolValue1);
            ilg.Emit(OpCodes.Ldc_I4, boolValue2);
            ilg.Emit(OpCodes.Cgt_Un);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_R4" })]
        public void Ckfinite(float value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_R4, value);
            ilg.Emit(OpCodes.Ckfinite);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4", "Ldc_I4" })]
        public void Clt(int boolValue1, int boolValue2)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4, boolValue1);
            ilg.Emit(OpCodes.Ldc_I4, boolValue2);
            ilg.Emit(OpCodes.Clt);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4", "Ldc_I4" })]
        public void Clt_Un(uint boolValue1, uint boolValue2)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4, boolValue1);
            ilg.Emit(OpCodes.Ldc_I4, boolValue2);
            ilg.Emit(OpCodes.Clt_Un);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }
        #endregion
        #region Conv

        [Measure(10000, new[] { "Empty", "Ldc_I4_S" })]
        public void Conv_I(byte value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4_S, value);
            ilg.Emit(OpCodes.Conv_I);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4_S" })]
        public void Conv_I1(byte value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4_S, value);
            ilg.Emit(OpCodes.Conv_I1);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4_S" })]
        public void Conv_I2(byte value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4_S, value);
            ilg.Emit(OpCodes.Conv_I2);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4_S" })]
        public void Conv_I4(byte value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4_S, value);
            ilg.Emit(OpCodes.Conv_I4);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4_S" })]
        public void Conv_I8(byte value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4_S, value);
            ilg.Emit(OpCodes.Conv_I8);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4_S" })]
        public void Conv_Ovf_I(byte value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4_S, value);
            ilg.Emit(OpCodes.Conv_Ovf_I);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4_S" })]
        public void Conv_Ovf_I1(byte value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4_S, value);
            ilg.Emit(OpCodes.Conv_Ovf_I1);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4_S" })]
        public void Conv_Ovf_I2(byte value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4_S, value);
            ilg.Emit(OpCodes.Conv_Ovf_I2);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4_S" })]
        public void Conv_Ovf_I4(byte value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4_S, value);
            ilg.Emit(OpCodes.Conv_Ovf_I4);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4_S" })]
        public void Conv_Ovf_I8(byte value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4_S, value);
            ilg.Emit(OpCodes.Conv_Ovf_I8);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }


        [Measure(10000, new[] { "Empty", "Ldc_I4_S" })]
        public void Conv_Ovf_I_Un(byte value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4_S, value);
            ilg.Emit(OpCodes.Conv_Ovf_I_Un);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4_S" })]
        public void Conv_Ovf_I1_Un(byte value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4_S, value);
            ilg.Emit(OpCodes.Conv_Ovf_I1_Un);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4_S" })]
        public void Conv_Ovf_I2_Un(byte value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4_S, value);
            ilg.Emit(OpCodes.Conv_Ovf_I2_Un);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4_S" })]
        public void Conv_Ovf_I4_Un(byte value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4_S, value);
            ilg.Emit(OpCodes.Conv_Ovf_I4_Un);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4_S" })]
        public void Conv_Ovf_I8_Un(byte value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4_S, value);
            ilg.Emit(OpCodes.Conv_Ovf_I8_Un);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4" })]
        public void Conv_R_Un(uint value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Conv_R_Un);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4_S" })]
        public void Conv_R4(byte value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4_S, value);
            ilg.Emit(OpCodes.Conv_R4);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4_S" })]
        public void Conv_R8(byte value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4_S, value);
            ilg.Emit(OpCodes.Conv_R8);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4" })]
        public void Conv_U(uint value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Conv_U);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4" })]
        public void Conv_U1(uint value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Conv_U1);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4" })]
        public void Conv_U2(uint value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Conv_U2);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4" })]
        public void Conv_U4(uint value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I4, value);
            ilg.Emit(OpCodes.Conv_U4);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty", "Ldc_I4" })]
        public void Conv_U8(uint value)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Ldc_I8, value);
            ilg.Emit(OpCodes.Conv_U1);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }

        #endregion
        #region Stores
        #region Store Locals
        [Measure(10000, new[] { "Empty", "Ldc_I4_0" })]
        public void Stloc()
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Ldc_I4_0);
            ilg.Emit(OpCodes.Stloc, 0);
            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty", "Ldc_I4_0", "EmptyDeclareLocal" })]
        public void Stloc_0()
        {
            var (method, ilg) = newMethod();

            var test = ilg.DeclareLocal(typeof(int));

            ilg.Emit(OpCodes.Ldc_I4_0);
            ilg.Emit(OpCodes.Stloc_0);

            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty", "Ldc_I4_0", "EmptyDeclareLocal", "EmptyDeclareLocal" })]
        public void Stloc_1()
        {
            var (method, ilg) = newMethod();

            var test = ilg.DeclareLocal(typeof(int));
            var test2 = ilg.DeclareLocal(typeof(int));

            ilg.Emit(OpCodes.Ldc_I4_0);
            ilg.Emit(OpCodes.Stloc_1);

            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty", "Ldc_I4_0", "EmptyDeclareLocal", "EmptyDeclareLocal", "EmptyDeclareLocal" })]
        public void Stloc_2()
        {
            var (method, ilg) = newMethod();

            var test = ilg.DeclareLocal(typeof(int));
            var test2 = ilg.DeclareLocal(typeof(int));
            var test3 = ilg.DeclareLocal(typeof(int));

            ilg.Emit(OpCodes.Ldc_I4_0);
            ilg.Emit(OpCodes.Stloc_2);

            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty", "Ldc_I4_0", "EmptyDeclareLocal", "EmptyDeclareLocal", "EmptyDeclareLocal", "EmptyDeclareLocal" })]
        public void Stloc_3()
        {
            var (method, ilg) = newMethod();

            var test = ilg.DeclareLocal(typeof(int));
            var test2 = ilg.DeclareLocal(typeof(int));
            var test3 = ilg.DeclareLocal(typeof(int));
            var test4 = ilg.DeclareLocal(typeof(int));

            ilg.Emit(OpCodes.Ldc_I4_0);
            ilg.Emit(OpCodes.Stloc_3);

            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty", "Ldc_I4_S", "EmptyDeclareLocal" })]
        public void Stloc_S()
        {
            var (method, ilg) = newMethod();

            var test = ilg.DeclareLocal(typeof(int));

            ilg.Emit(OpCodes.Ldc_I4_S, 0);
            ilg.Emit(OpCodes.Stloc_S, 0);

            runMethod(method, ilg);
        }
        #endregion
        #region Store value into adress or array
        [Measure(1000, new[] { "Empty", "Ldc_I4_0", "EmptyDeclareLocal", "Stloc_S", "Ldloca", "Ldc_I4_1", })]
        public void Stind_I()
        {
            var (method, ilg) = newMethod();
            //Push Address
            ilg.DeclareLocal(typeof(int));
            ilg.Emit(OpCodes.Ldc_I4_0);
            ilg.Emit(OpCodes.Stloc_0);
            ilg.Emit(OpCodes.Ldloca, 0);

            //Push Value
            ilg.Emit(OpCodes.Ldc_I4_1);

            //Store value at adress
            ilg.Emit(OpCodes.Stind_I);

            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty", "Ldc_I4_0", "EmptyDeclareLocal", "Stloc_S", "Ldloca", "Ldc_I4_1", })]
        public void Stind_I1()
        {
            var (method, ilg) = newMethod();
            //Push Address
            ilg.DeclareLocal(typeof(int));
            ilg.Emit(OpCodes.Ldc_I4_0);
            ilg.Emit(OpCodes.Stloc_0);
            ilg.Emit(OpCodes.Ldloca, 0);

            //Push Value
            ilg.Emit(OpCodes.Ldc_I4_1);

            //Store value at adress
            ilg.Emit(OpCodes.Stind_I1);

            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty", "Ldc_I4_0", "EmptyDeclareLocal", "Stloc_S", "Ldloca", "Ldc_I4_1", })]
        public void Stind_I2()
        {
            var (method, ilg) = newMethod();
            //Push Address
            ilg.DeclareLocal(typeof(int));
            ilg.Emit(OpCodes.Ldc_I4_0);
            ilg.Emit(OpCodes.Stloc_0);
            ilg.Emit(OpCodes.Ldloca, 0);

            //Push Value
            ilg.Emit(OpCodes.Ldc_I4_1);

            //Store value at adress
            ilg.Emit(OpCodes.Stind_I2);

            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty", "Ldc_I4_0", "EmptyDeclareLocal", "Stloc_S", "Ldloca", "Ldc_I4_1", })]
        public void Stind_I4()
        {
            var (method, ilg) = newMethod();
            //Push Address
            ilg.DeclareLocal(typeof(int));
            ilg.Emit(OpCodes.Ldc_I4_0);
            ilg.Emit(OpCodes.Stloc_0);
            ilg.Emit(OpCodes.Ldloca, 0);

            //Push Value
            ilg.Emit(OpCodes.Ldc_I4_1);

            //Store value at adress
            ilg.Emit(OpCodes.Stind_I4);

            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty", "Ldc_I4_0", "EmptyDeclareLocal", "Stloc_S", "Ldloca", "Ldc_I4_1", })]
        public void Stind_I8()
        {
            var (method, ilg) = newMethod();
            //Push Address
            ilg.DeclareLocal(typeof(int));
            ilg.Emit(OpCodes.Ldc_I4_0);
            ilg.Emit(OpCodes.Stloc_0);
            ilg.Emit(OpCodes.Ldloca, 0);

            //Push Value
            ilg.Emit(OpCodes.Ldc_I4_1);

            //Store value at adress
            ilg.Emit(OpCodes.Stind_I8);

            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty", "Ldc_R4", "EmptyDeclareLocal", "Stloc_S", "Ldloca", "Ldc_I4_1", })]
        public void Stind_R4()
        {
            var (method, ilg) = newMethod();
            //Push Address
            ilg.DeclareLocal(typeof(int));
            ilg.Emit(OpCodes.Ldc_R4, 0.0);
            ilg.Emit(OpCodes.Stloc_0);
            ilg.Emit(OpCodes.Ldloca, 0);

            //Push Value
            ilg.Emit(OpCodes.Ldc_I4_1);

            //Store value at adress
            ilg.Emit(OpCodes.Stind_R4);

            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty", "Ldc_R8", "EmptyDeclareLocal", "Stloc_S", "Ldloca", "Ldc_I4_1", })]
        public void Stind_R8()
        {
            var (method, ilg) = newMethod();
            //Push Address
            ilg.DeclareLocal(typeof(int));
            ilg.Emit(OpCodes.Ldc_R8, 0.0);
            ilg.Emit(OpCodes.Stloc_0);
            ilg.Emit(OpCodes.Ldloca, 0);

            //Push Value
            ilg.Emit(OpCodes.Ldc_I4_1);

            //Store value at adress
            ilg.Emit(OpCodes.Stind_R8);


            runMethod(method, ilg);
        }

        #endregion
        #region Store element in array
        [Measure(1000, new[] { "Empty", "Ldc_I4", "Newarr", "Ldc_I4_0", "Ldc_I4_1" })]
        public void Stelem()
        {
            var (method, ilg) = newMethod();

            //An object reference to an array, array, is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_I4, 2); // Length
            ilg.Emit(OpCodes.Newarr, typeof(int));

            //An index value, index, to an element in array is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_I4_0);

            //A value of the type specified in the instruction is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_I4_1);

            //The value, the index, and the array reference are popped from the stack; the value is put into the array element at the given index.
            ilg.Emit(OpCodes.Stelem, typeof(int));

            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty", "Ldc_I4", "Newarr", "Ldc_I4_0", "Ldc_I4_1" })]
        public void Stelem_I()
        {
            var (method, ilg) = newMethod();

            //An object reference to an array, array, is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_I4, 2); // Length
            ilg.Emit(OpCodes.Newarr, typeof(int));

            //An index value, index, to an element in array is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_I4_0);

            //A value of the type specified in the instruction is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_I4_1);

            //The value, the index, and the array reference are popped from the stack; the value is put into the array element at the given index.
            ilg.Emit(OpCodes.Stelem_I);

            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty", "Ldc_I4", "Newarr", "Ldc_I4_0", "Ldc_I4_1" })]
        public void Stelem_I1()
        {
            var (method, ilg) = newMethod();

            //An object reference to an array, array, is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_I4, 2); // Length
            ilg.Emit(OpCodes.Newarr, typeof(int));

            //An index value, index, to an element in array is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_I4_0);

            //A value of the type specified in the instruction is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_I4_1);

            //The value, the index, and the array reference are popped from the stack; the value is put into the array element at the given index.
            ilg.Emit(OpCodes.Stelem_I1);

            runMethod(method, ilg);
        }
        [Measure(1000, new[] { "Empty", "Ldc_I4", "Newarr", "Ldc_I4_0", "Ldc_I4_1" })]
        public void Stelem_I2()
        {
            var (method, ilg) = newMethod();

            //An object reference to an array, array, is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_I4, 2); // Length
            ilg.Emit(OpCodes.Newarr, typeof(int));

            //An index value, index, to an element in array is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_I4_0);

            //A value of the type specified in the instruction is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_I4_1);

            //The value, the index, and the array reference are popped from the stack; the value is put into the array element at the given index.
            ilg.Emit(OpCodes.Stelem_I2);

            runMethod(method, ilg);
        }
        [Measure(1000, new[] { "Empty", "Ldc_I4", "Newarr", "Ldc_I4_0", "Ldc_I4_1" })]
        public void Stelem_I4()
        {
            var (method, ilg) = newMethod();

            //An object reference to an array, array, is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_I4, 2); // Length
            ilg.Emit(OpCodes.Newarr, typeof(int));

            //An index value, index, to an element in array is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_I4_0);

            //A value of the type specified in the instruction is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_I4_1);

            //The value, the index, and the array reference are popped from the stack; the value is put into the array element at the given index.
            ilg.Emit(OpCodes.Stelem_I4);

            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty", "Ldc_I4", "Newarr", "Ldc_I4_0", "Ldc_I4_1" })]
        public void Stelem_I8()
        {
            var (method, ilg) = newMethod();

            //An object reference to an array, array, is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_I4, 2); // Length
            ilg.Emit(OpCodes.Newarr, typeof(int));

            //An index value, index, to an element in array is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_I4_0);

            //A value of the type specified in the instruction is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_I4_1);

            //The value, the index, and the array reference are popped from the stack; the value is put into the array element at the given index.
            ilg.Emit(OpCodes.Stelem_I8);

            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty", "Ldc_I4", "Newarr", "Ldc_I4_0", "Ldc_R4" })]
        public void Stelem_R4()
        {
            var (method, ilg) = newMethod();

            //An object reference to an array, array, is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_I4, 2); // Length
            ilg.Emit(OpCodes.Newarr, typeof(int));

            //An index value, index, to an element in array is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_I4_0);

            //A value of the type specified in the instruction is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_R4, 0.0);

            //The value, the index, and the array reference are popped from the stack; the value is put into the array element at the given index.
            ilg.Emit(OpCodes.Stelem_R4);

            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty", "Ldc_I4", "Newarr", "Ldc_I4_0", "Ldc_R8" })]
        public void Stelem_R8()
        {
            var (method, ilg) = newMethod();

            //An object reference to an array, array, is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_I4, 2); // Length
            ilg.Emit(OpCodes.Newarr, typeof(float));

            //An index value, index, to an element in array is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_I4_0);

            //A value of the type specified in the instruction is pushed onto the stack.
            ilg.Emit(OpCodes.Ldc_R8, 0.0);

            //The value, the index, and the array reference are popped from the stack; the value is put into the array element at the given index.
            ilg.Emit(OpCodes.Stelem_R8);

            runMethod(method, ilg);
        }


        #endregion
        #region Store others: field, static field, arg

        [Measure(1000, new[] { "Empty", "EmptyGetField", "Ldc_I4_0" })]
        public void Stsfld()
        {
            var (method, ilg) = newMethod();
            //Get static field and push value
            FieldInfo fi = typeof(Fields).GetField("sfield");
            ilg.Emit(OpCodes.Ldc_I4_0);

            //Store value in static field
            ilg.Emit(OpCodes.Stsfld, fi);

            runMethod(method, ilg);
        }

        [Measure(1000, new[] { "Empty", "Ldc_I4_0" })]
        public void Starg()
        {
            var (method, ilg) = newMethod();
            //The value currently on top of the stack is popped and placed in argument slot num.
            ilg.Emit(OpCodes.Ldc_I4_0);
            ilg.Emit(OpCodes.Starg, 0);

            runMethod(method, ilg);
        }
        #endregion

        #endregion
        #region Misc
        [Measure(10000, new[] { "Empty" })]
        public void Nop()
        {
            var (method, ilg) = newMethod();
            ilg.Emit(OpCodes.Nop);
            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty" })] // 0x38
        public void Break()
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Break);

            runMethod(method, ilg);
        }

        [Measure(10000, new[] { "Empty" })] // 0x38
        public void Sizeof(Type type)
        {
            var (method, ilg) = newMethod();

            ilg.Emit(OpCodes.Sizeof, type);
            ilg.Emit(OpCodes.Pop);

            runMethod(method, ilg);
        }
        #endregion
        #endregion
    }
}
