
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

.assembly 'classExample'
{
  .custom instance void class [System.Runtime]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) // ........
  .custom instance void class [System.Runtime]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78 63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 ) // ....T..WrapNonExceptionThrows.
  .custom instance void class [System.Runtime]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 18 2E 4E 45 54 43 6F 72 65 41 70 70 2C 56 65 72 73 69 6F 6E 3D 76 35 2E 30 01 00 54 0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C 61 79 4E 61 6D 65 00 ) // ....NETCoreApp.Version.v5.0..T..FrameworkDisplayName.
  .custom instance void class [System.Runtime]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 0C 63 6C 61 73 73 45 78 61 6D 70 6C 65 00 00 ) // ...classExample..
  .custom instance void class [System.Runtime]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 05 44 65 62 75 67 00 00 ) // ...Debug..
  .custom instance void class [System.Runtime]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 ) // ...1.0.0.0..
  .custom instance void class [System.Runtime]System.Reflection.AssemblyInformationalVersionAttribute::.ctor(string) = ( 01 00 05 31 2E 30 2E 30 00 00 ) // ...1.0.0..
  .custom instance void class [System.Runtime]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 0C 63 6C 61 73 73 45 78 61 6D 70 6C 65 00 00 ) // ...classExample..
  .custom instance void class [System.Runtime]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0C 63 6C 61 73 73 45 78 61 6D 70 6C 65 00 00 ) // ...classExample..
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}

.module 'classExample.dll'
// MVID: {5093bb5b-450d-4045-a894-317927ec0329}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003  // WindowsCui
.corflags 0x00000001  // ILOnly

.class private auto ansi beforefieldinit
 classExample.Car extends [System.Runtime]System.Object
{
  .field private string name
  .field private double currentSpeed
  .field private int32 maxSpeed
  .field private double acceleration
  .method public hidebysig specialname rtspecialname instance default void .ctor(string n, int32 max) cil managed
  {
    // Method begins at Relative Virtual Address (RVA) 0x2050
    // Code size 53 (0x35)
    .maxstack 8
    IL_0000: ldarg.0
    IL_0001: ldc.r8 0
    IL_000a: stfld double classExample.Car::currentSpeed
    IL_000f: ldarg.0
    IL_0010: ldc.r8 0,05
    IL_0019: stfld double classExample.Car::acceleration
    IL_001e: ldarg.0
    IL_001f: call instance void class [System.Runtime]System.Object::.ctor()
    IL_0024: nop
    IL_0025: nop
    IL_0026: ldarg.0
    IL_0027: ldarg.1
    IL_0028: stfld string classExample.Car::name
    IL_002d: ldarg.0
    IL_002e: ldarg.2
    IL_002f: stfld int32 classExample.Car::maxSpeed
    IL_0034: ret
  } // End of method System.Void classExample.Car::.ctor(System.String,System.Int32)
  .method public hidebysig instance default double newSpeed() cil managed
  {
    // Method begins at Relative Virtual Address (RVA) 0x2088
    // Code size 108 (0x6C)
    .maxstack 4
    .locals init(double V_0, bool V_1, bool V_2, double V_3)
    IL_0000: nop
    IL_0001: ldarg.0
    IL_0002: ldfld double classExample.Car::currentSpeed
    IL_0007: ldarg.0
    IL_0008: ldfld double classExample.Car::acceleration
    IL_000d: mul
    IL_000e: stloc.0
    IL_000f: ldarg.0
    IL_0010: ldfld double classExample.Car::currentSpeed
    IL_0015: ldc.r8 100
    IL_001e: clt
    IL_0020: stloc.1
    IL_0021: ldloc.1
    IL_0022: brfalse.s     IL_003e
    IL_0024: ldarg.0
    IL_0025: ldarg.0
    IL_0026: ldfld double classExample.Car::currentSpeed
    IL_002b: ldc.r8 1
    IL_0034: ldloc.0
    IL_0035: add
    IL_0036: add
    IL_0037: stfld double classExample.Car::currentSpeed
    IL_003c: br.s     IL_0061
    IL_003e: ldarg.0
    IL_003f: ldfld double classExample.Car::currentSpeed
    IL_0044: ldloc.0
    IL_0045: add
    IL_0046: ldarg.0
    IL_0047: ldfld int32 classExample.Car::maxSpeed
    IL_004c: conv.r8
    IL_004d: clt
    IL_004f: stloc.2
    IL_0050: ldloc.2
    IL_0051: brfalse.s     IL_0061
    IL_0053: ldarg.0
    IL_0054: ldarg.0
    IL_0055: ldfld double classExample.Car::currentSpeed
    IL_005a: ldloc.0
    IL_005b: add
    IL_005c: stfld double classExample.Car::currentSpeed
    IL_0061: ldarg.0
    IL_0062: ldfld double classExample.Car::currentSpeed
    IL_0067: stloc.3
    IL_0068: br.s     IL_006a
    IL_006a: ldloc.3
    IL_006b: ret
  } // End of method System.Double classExample.Car::newSpeed()
} // End of class classExample.Car

.class private auto ansi beforefieldinit
 classExample.Program extends [System.Runtime]System.Object
{
  .method private hidebysig static default void Main(string[] args) cil managed
  {
    // Method begins at Relative Virtual Address (RVA) 0x2100
    .entrypoint
    // Code size 32 (0x20)
    .maxstack 2
    .locals init(class classExample.Car V_0, double V_1)
    IL_0000: nop
    IL_0001: ldstr "Audi A8"
    IL_0006: ldc.i4 220
    IL_000b: newobj instance void class classExample.Car::.ctor(string, int32)
    IL_0010: stloc.0
    IL_0011: ldloc.0
    IL_0012: callvirt instance double class classExample.Car::newSpeed()
    IL_0017: stloc.1
    IL_0018: ldloc.1
    IL_0019: call void class [System.Console]System.Console::WriteLine(double)
    IL_001e: nop
    IL_001f: ret
  } // End of method System.Void classExample.Program::Main(System.String[])
  .method public hidebysig specialname rtspecialname instance default void .ctor() cil managed
  {
    // Method begins at Relative Virtual Address (RVA) 0x212C
    // Code size 8 (0x8)
    .maxstack 8
    IL_0000: ldarg.0
    IL_0001: call instance void class [System.Runtime]System.Object::.ctor()
    IL_0006: nop
    IL_0007: ret
  } // End of method System.Void classExample.Program::.ctor()
} // End of class classExample.Program
