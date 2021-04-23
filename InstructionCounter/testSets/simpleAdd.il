// IL code: simpleAdd
.class private auto ansi '<Module>'
{
} // end of class <Module>

.class private auto ansi beforefieldinit simpleAdd.Program
	extends [System.Runtime]System.Object
{
	// Methods
	.method private hidebysig static 
		void Main (
			string[] args
		) cil managed 
	{
		// Method begins at RVA 0x2050
		// Code size 18 (0x12)
		.maxstack 2
		.entrypoint
		.locals init (
			[0] int32
		)

		IL_0000: nop
		IL_0001: ldc.i4.s 10
		IL_0003: ldc.i4.5
		IL_0004: call int32 simpleAdd.Program::'add'(int32, int32)
		IL_0009: stloc.0
		IL_000a: ldloc.0
		IL_000b: call void [System.Console]System.Console::WriteLine(int32)
		IL_0010: nop
		IL_0011: ret
	} // end of method Program::Main

	.method public hidebysig static 
		int32 'add' (
			int32 a,
			int32 b
		) cil managed 
	{
		// Method begins at RVA 0x2070
		// Code size 23 (0x17)
		.maxstack 2
		.locals init (
			[0] bool,
			[1] int32
		)

		IL_0000: nop
		IL_0001: ldarg.0
		IL_0002: ldarg.1
		IL_0003: cgt
		IL_0005: stloc.0
		IL_0006: ldloc.0
		IL_0007: brfalse.s IL_000f

		IL_0009: ldarg.0
		IL_000a: ldarg.1
		IL_000b: add
		IL_000c: stloc.1
		IL_000d: br.s IL_0015

		IL_000f: ldarg.0
		IL_0010: ldarg.1
		IL_0011: sub
		IL_0012: stloc.1
		IL_0013: br.s IL_0015

		IL_0015: ldloc.1
		IL_0016: ret
	} // end of method Program::'add'

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x2093
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: nop
		IL_0007: ret
	} // end of method Program::.ctor

} // end of class simpleAdd.Program

