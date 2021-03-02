
.assembly extern System.Runtime
{
  .publickeytoken = ( B0 3F 5F 7F 11 D5 0A 3A ) // .._.....
  .ver 5:0:0:0
}

.assembly extern System.Console
{
  .publickeytoken = ( B0 3F 5F 7F 11 D5 0A 3A ) // .._.....
  .ver 5:0:0:0
}

.assembly 'ConsoleApplication1'
{
  .custom instance void class [System.Runtime]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) // ........
  .custom instance void class [System.Runtime]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78 63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 ) // ....T..WrapNonExceptionThrows.
  .custom instance void class [System.Runtime]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 18 2E 4E 45 54 43 6F 72 65 41 70 70 2C 56 65 72 73 69 6F 6E 3D 76 35 2E 30 01 00 54 0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C 61 79 4E 61 6D 65 00 ) // ....NETCoreApp.Version.v5.0..T..FrameworkDisplayName.
  .custom instance void class [System.Runtime]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 13 43 6F 6E 73 6F 6C 65 41 70 70 6C 69 63 61 74 69 6F 6E 31 00 00 ) // ...ConsoleApplication1..
  .custom instance void class [System.Runtime]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 05 44 65 62 75 67 00 00 ) // ...Debug..
  .custom instance void class [System.Runtime]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 ) // ...1.0.0.0..
  .custom instance void class [System.Runtime]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = ( 01 00 05 31 2E 30 2E 30 00 00 ) // ...1.0.0..
  .custom instance void class [System.Runtime]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 13 43 6F 6E 73 6F 6C 65 41 70 70 6C 69 63 61 74 69 6F 6E 31 00 00 ) // ...ConsoleApplication1..
  .custom instance void class [System.Runtime]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 13 43 6F 6E 73 6F 6C 65 41 70 70 6C 69 63 61 74 69 6F 6E 31 00 00 ) // ...ConsoleApplication1..
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}

.module 'ConsoleApplication1.dll'
// MVID: {68701d58-5421-4910-b94a-c6626029f5f5}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003  // WindowsCui
.corflags 0x00000001  // ILOnly

.class private auto ansi beforefieldinit ConsoleApplication1.Program extends [System.Runtime]System.Object
{
  .method private hidebysig static default void Main(string[] args) cil managed
  {
    // Method begins at Relative Virtual Address (RVA) 0x2050
    .entrypoint
    // Code size 209 (0xD1)
    .maxstack 4
    .locals init(bool[] V_0, int32 V_1, bool V_2, int32 V_3, int32 V_4, bool V_5, bool V_6, bool V_7, int32 V_8, bool V_9, bool V_10)
    IL_0000: nop
    IL_0001: ldc.i4.s 100
    IL_0003: newarr class System.Boolean
    IL_0008: stloc.0
    IL_0009: ldc.i4.0
    IL_000a: stloc.1
    IL_000b: br.s     IL_0015
    IL_000d: ldloc.0
    IL_000e: ldloc.1
    IL_000f: ldc.i4.0
    IL_0010: stelem.i1
    IL_0011: ldloc.1
    IL_0012: ldc.i4.1
    IL_0013: add
    IL_0014: stloc.1
    IL_0015: ldloc.1
    IL_0016: ldc.i4.s 100
    IL_0018: clt
    IL_001a: stloc.2
    IL_001b: ldloc.2
    IL_001c: brtrue.s     IL_000d
    IL_001e: ldc.i4.0
    IL_001f: stloc.3
    IL_0020: br.s     IL_005f
    IL_0022: nop
    IL_0023: ldc.i4.0
    IL_0024: stloc.s class V_4
    IL_0026: br.s     IL_004e
    IL_0028: nop
    IL_0029: ldloc.s class V_4
    IL_002b: ldc.i4.1
    IL_002c: add
    IL_002d: ldloc.3
    IL_002e: ldc.i4.1
    IL_002f: add
    IL_0030: rem
    IL_0031: ldc.i4.0
    IL_0032: ceq
    IL_0034: stloc.s class V_5
    IL_0036: ldloc.s class V_5
    IL_0038: brfalse.s     IL_0047
    IL_003a: nop
    IL_003b: ldloc.0
    IL_003c: ldloc.s class V_4
    IL_003e: ldloc.0
    IL_003f: ldloc.s class V_4
    IL_0041: ldelem.u1
    IL_0042: ldc.i4.0
    IL_0043: ceq
    IL_0045: stelem.i1
    IL_0046: nop
    IL_0047: nop
    IL_0048: ldloc.s class V_4
    IL_004a: ldc.i4.1
    IL_004b: add
    IL_004c: stloc.s class V_4
    IL_004e: ldloc.s class V_4
    IL_0050: ldc.i4.s 100
    IL_0052: clt
    IL_0054: stloc.s class V_6
    IL_0056: ldloc.s class V_6
    IL_0058: brtrue.s     IL_0028
    IL_005a: nop
    IL_005b: ldloc.3
    IL_005c: ldc.i4.1
    IL_005d: add
    IL_005e: stloc.3
    IL_005f: ldloc.3
    IL_0060: ldc.i4.s 100
    IL_0062: clt
    IL_0064: stloc.s class V_7
    IL_0066: ldloc.s class V_7
    IL_0068: brtrue.s     IL_0022
    IL_006a: ldstr "Passes Completed!!!  Here are the results: 
"
    IL_006f: call void class [System.Console]System.Console::WriteLine(string)
    IL_0074: nop
    IL_0075: ldc.i4.0
    IL_0076: stloc.s class V_8
    IL_0078: br.s     IL_00c4
    IL_007a: nop
    IL_007b: ldloc.0
    IL_007c: ldloc.s class V_8
    IL_007e: ldelem.u1
    IL_007f: stloc.s class V_9
    IL_0081: ldloc.s class V_9
    IL_0083: brfalse.s     IL_00a2
    IL_0085: nop
    IL_0086: ldstr "Door #{0}: Open"
    IL_008b: ldloc.s class V_8
    IL_008d: ldc.i4.1
    IL_008e: add
    IL_008f: box class System.Int32
    IL_0094: call string class string::Format(string, [System.Runtime]System.Object)
    IL_0099: call void class [System.Console]System.Console::WriteLine(string)
    IL_009e: nop
    IL_009f: nop
    IL_00a0: br.s     IL_00bd
    IL_00a2: nop
    IL_00a3: ldstr "Door #{0}: Closed"
    IL_00a8: ldloc.s class V_8
    IL_00aa: ldc.i4.1
    IL_00ab: add
    IL_00ac: box class System.Int32
    IL_00b1: call string class string::Format(string, [System.Runtime]System.Object)
    IL_00b6: call void class [System.Console]System.Console::WriteLine(string)
    IL_00bb: nop
    IL_00bc: nop
    IL_00bd: nop
    IL_00be: ldloc.s class V_8
    IL_00c0: ldc.i4.1
    IL_00c1: add
    IL_00c2: stloc.s class V_8
    IL_00c4: ldloc.s class V_8
    IL_00c6: ldc.i4.s 100
    IL_00c8: clt
    IL_00ca: stloc.s class V_10
    IL_00cc: ldloc.s class V_10
    IL_00ce: brtrue.s     IL_007a
    IL_00d0: ret
  } // End of method System.Void ConsoleApplication1.Program::Main(System.String[])
  .method public hidebysig specialname rtspecialname instance default void .ctor() cil managed
  {
    // Method begins at Relative Virtual Address (RVA) 0x212D
    // Code size 8 (0x8)
    .maxstack 8
    IL_0000: ldarg.0
    IL_0001: call instance void class [System.Runtime]System.Object::.ctor()
    IL_0006: nop
    IL_0007: ret
  } // End of method System.Void ConsoleApplication1.Program::.ctor()
} // End of class ConsoleApplication1.Program
