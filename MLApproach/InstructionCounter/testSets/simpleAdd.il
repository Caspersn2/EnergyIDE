
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

.assembly 'simpleAdd'
{
  .custom instance void class [System.Runtime]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) // ........
  .custom instance void class [System.Runtime]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78 63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 ) // ....T..WrapNonExceptionThrows.
  .custom instance void class [System.Runtime]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 18 2E 4E 45 54 43 6F 72 65 41 70 70 2C 56 65 72 73 69 6F 6E 3D 76 35 2E 30 01 00 54 0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C 61 79 4E 61 6D 65 00 ) // ....NETCoreApp.Version.v5.0..T..FrameworkDisplayName.
  .custom instance void class [System.Runtime]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 09 73 69 6D 70 6C 65 41 64 64 00 00 ) // ...simpleAdd..
  .custom instance void class [System.Runtime]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 05 44 65 62 75 67 00 00 ) // ...Debug..
  .custom instance void class [System.Runtime]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 ) // ...1.0.0.0..
  .custom instance void class [System.Runtime]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = ( 01 00 05 31 2E 30 2E 30 00 00 ) // ...1.0.0..
  .custom instance void class [System.Runtime]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 09 73 69 6D 70 6C 65 41 64 64 00 00 ) // ...simpleAdd..
  .custom instance void class [System.Runtime]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 09 73 69 6D 70 6C 65 41 64 64 00 00 ) // ...simpleAdd..
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}

.module 'simpleAdd.dll'
// MVID: {0f8543f3-1446-48e6-8d01-f72dc4b6d5cd}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003  // WindowsCui
.corflags 0x00000001  // ILOnly

.class private auto ansi beforefieldinit simpleAdd.Program extends [System.Runtime]System.Object
{
  .method private hidebysig static default void Main(string[] args) cil managed
  {
    // Method begins at Relative Virtual Address (RVA) 0x2050
    .entrypoint
    // Code size 18 (0x12)
    .maxstack 2
    .locals init(int32 V_0)
    IL_0000: nop
    IL_0001: ldc.i4.s 10
    IL_0003: ldc.i4.5
    IL_0004: call int32 class simpleAdd.Program::add(int32, int32)
    IL_0009: stloc.0
    IL_000a: ldloc.0
    IL_000b: call void class [System.Console]System.Console::WriteLine(int32)
    IL_0010: nop
    IL_0011: ret
  } // End of method System.Void simpleAdd.Program::Main(System.String[])
  .method public hidebysig static default int32 add(int32 a, int32 b) cil managed
  {
    // Method begins at Relative Virtual Address (RVA) 0x2070
    // Code size 23 (0x17)
    .maxstack 2
    .locals init(bool V_0, int32 V_1)
    IL_0000: nop
    IL_0001: ldarg.0
    IL_0002: ldarg.1
    IL_0003: cgt
    IL_0005: stloc.0
    IL_0006: ldloc.0
    IL_0007: brfalse.s     IL_000f
    IL_0009: ldarg.0
    IL_000a: ldarg.1
    IL_000b: add
    IL_000c: stloc.1
    IL_000d: br.s     IL_0015
    IL_000f: ldarg.0
    IL_0010: ldarg.1
    IL_0011: sub
    IL_0012: stloc.1
    IL_0013: br.s     IL_0015
    IL_0015: ldloc.1
    IL_0016: ret
  } // End of method System.Int32 simpleAdd.Program::add(System.Int32,System.Int32)
  .method public hidebysig specialname rtspecialname instance default void .ctor() cil managed
  {
    // Method begins at Relative Virtual Address (RVA) 0x2093
    // Code size 8 (0x8)
    .maxstack 8
    IL_0000: ldarg.0
    IL_0001: call instance void class [System.Runtime]System.Object::.ctor()
    IL_0006: nop
    IL_0007: ret
  } // End of method System.Void simpleAdd.Program::.ctor()
} // End of class simpleAdd.Program
