// IL code: simpleGenericsMethodExample
.class private auto ansi '<Module>'
{
} // end of class <Module>

.class public auto ansi beforefieldinit simpleGenericsMethodExample.Printer
	extends [System.Runtime]System.Object
{
	// Methods
	.method public hidebysig 
		instance void print<T> (
			!!T input
		) cil managed 
	{
		// Method begins at RVA 0x2050
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: nop
		IL_0001: ldarg.1
		IL_0002: box !!T
		IL_0007: call void [System.Console]System.Console::WriteLine(object)
		IL_000c: nop
		IL_000d: ret
	} // end of method Printer::print

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x205f
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: nop
		IL_0007: ret
	} // end of method Printer::.ctor

} // end of class simpleGenericsMethodExample.Printer

.class private auto ansi beforefieldinit simpleGenericsMethodExample.Program
	extends [System.Runtime]System.Object
{
	// Methods
	.method private hidebysig static 
		void Main (
			string[] args
		) cil managed 
	{
		// Method begins at RVA 0x2068
		// Code size 45 (0x2d)
		.maxstack 2
		.entrypoint
		.locals init (
			[0] class simpleGenericsMethodExample.Printer
		)

		IL_0000: nop
		IL_0001: newobj instance void simpleGenericsMethodExample.Printer::.ctor()
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldc.i4.s 100
		IL_000a: callvirt instance void simpleGenericsMethodExample.Printer::print<int32>(!!0)
		IL_000f: nop
		IL_0010: ldloc.0
		IL_0011: ldstr "Hello"
		IL_0016: callvirt instance void simpleGenericsMethodExample.Printer::print<string>(!!0)
		IL_001b: nop
		IL_001c: ldloc.0
		IL_001d: ldc.r8 5.55
		IL_0026: callvirt instance void simpleGenericsMethodExample.Printer::print<float64>(!!0)
		IL_002b: nop
		IL_002c: ret
	} // end of method Program::Main

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x20a1
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: nop
		IL_0007: ret
	} // end of method Program::.ctor

} // end of class simpleGenericsMethodExample.Program

