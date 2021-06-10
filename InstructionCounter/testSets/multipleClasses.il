// IL code: classExample
.class private auto ansi '<Module>'
{
} // end of class <Module>

.class private auto ansi beforefieldinit classExample.Car
	extends [System.Runtime]System.Object
{
	// Fields
	.field private string name
	.field private float64 currentSpeed
	.field private int32 maxSpeed
	.field private float64 acceleration

	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			string n,
			int32 max
		) cil managed 
	{
		// Method begins at RVA 0x2050
		// Code size 53 (0x35)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.r8 0.0
		IL_000a: stfld float64 classExample.Car::currentSpeed
		IL_000f: ldarg.0
		IL_0010: ldc.r8 0.05
		IL_0019: stfld float64 classExample.Car::acceleration
		IL_001e: ldarg.0
		IL_001f: call instance void [System.Runtime]System.Object::.ctor()
		IL_0024: nop
		IL_0025: nop
		IL_0026: ldarg.0
		IL_0027: ldarg.1
		IL_0028: stfld string classExample.Car::name
		IL_002d: ldarg.0
		IL_002e: ldarg.2
		IL_002f: stfld int32 classExample.Car::maxSpeed
		IL_0034: ret
	} // end of method Car::.ctor

	.method public hidebysig 
		instance float64 newSpeed () cil managed 
	{
		// Method begins at RVA 0x2088
		// Code size 108 (0x6c)
		.maxstack 4
		.locals init (
			[0] float64,
			[1] bool,
			[2] bool,
			[3] float64
		)

		IL_0000: nop
		IL_0001: ldarg.0
		IL_0002: ldfld float64 classExample.Car::currentSpeed
		IL_0007: ldarg.0
		IL_0008: ldfld float64 classExample.Car::acceleration
		IL_000d: mul
		IL_000e: stloc.0
		IL_000f: ldarg.0
		IL_0010: ldfld float64 classExample.Car::currentSpeed
		IL_0015: ldc.r8 100
		IL_001e: clt
		IL_0020: stloc.1
		IL_0021: ldloc.1
		IL_0022: brfalse.s IL_003e

		IL_0024: ldarg.0
		IL_0025: ldarg.0
		IL_0026: ldfld float64 classExample.Car::currentSpeed
		IL_002b: ldc.r8 1
		IL_0034: ldloc.0
		IL_0035: add
		IL_0036: add
		IL_0037: stfld float64 classExample.Car::currentSpeed
		IL_003c: br.s IL_0061

		IL_003e: ldarg.0
		IL_003f: ldfld float64 classExample.Car::currentSpeed
		IL_0044: ldloc.0
		IL_0045: add
		IL_0046: ldarg.0
		IL_0047: ldfld int32 classExample.Car::maxSpeed
		IL_004c: conv.r8
		IL_004d: clt
		IL_004f: stloc.2
		IL_0050: ldloc.2
		IL_0051: brfalse.s IL_0061

		IL_0053: ldarg.0
		IL_0054: ldarg.0
		IL_0055: ldfld float64 classExample.Car::currentSpeed
		IL_005a: ldloc.0
		IL_005b: add
		IL_005c: stfld float64 classExample.Car::currentSpeed

		IL_0061: ldarg.0
		IL_0062: ldfld float64 classExample.Car::currentSpeed
		IL_0067: stloc.3
		IL_0068: br.s IL_006a

		IL_006a: ldloc.3
		IL_006b: ret
	} // end of method Car::newSpeed

} // end of class classExample.Car

.class private auto ansi beforefieldinit classExample.Program
	extends [System.Runtime]System.Object
{
	// Methods
	.method private hidebysig static 
		void Main (
			string[] args
		) cil managed 
	{
		// Method begins at RVA 0x2100
		// Code size 32 (0x20)
		.maxstack 2
		.entrypoint
		.locals init (
			[0] class classExample.Car,
			[1] float64
		)

		IL_0000: nop
		IL_0001: ldstr "Audi A8"
		IL_0006: ldc.i4 220
		IL_000b: newobj instance void classExample.Car::.ctor(string, int32)
		IL_0010: stloc.0
		IL_0011: ldloc.0
		IL_0012: callvirt instance float64 classExample.Car::newSpeed()
		IL_0017: stloc.1
		IL_0018: ldloc.1
		IL_0019: call void [System.Console]System.Console::WriteLine(float64)
		IL_001e: nop
		IL_001f: ret
	} // end of method Program::Main

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x212c
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: nop
		IL_0007: ret
	} // end of method Program::.ctor

} // end of class classExample.Program

