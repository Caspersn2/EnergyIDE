// IL code: delegate_interface_v1
.class private auto ansi '<Module>'
{
} // end of class <Module>

.class interface private auto ansi abstract delegate_interface_v1.IExecutable
{
	// Methods
	.method public hidebysig newslot abstract virtual 
		instance int32 Execute () cil managed 
	{
	} // end of method IExecutable::Execute

} // end of class delegate_interface_v1.IExecutable

.class private auto ansi beforefieldinit delegate_interface_v1.IntReturner
	extends [System.Runtime]System.Object
	implements delegate_interface_v1.IExecutable
{
	// Methods
	.method public final hidebysig newslot virtual 
		instance int32 Execute () cil managed 
	{
		// Method begins at RVA 0x2050
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldc.i4.s 42
		IL_0002: ret
	} // end of method IntReturner::Execute

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x2054
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: nop
		IL_0007: ret
	} // end of method IntReturner::.ctor

} // end of class delegate_interface_v1.IntReturner

.class private auto ansi beforefieldinit delegate_interface_v1.BoolReturner
	extends [System.Runtime]System.Object
	implements delegate_interface_v1.IExecutable
{
	// Methods
	.method public final hidebysig newslot virtual 
		instance int32 Execute () cil managed 
	{
		// Method begins at RVA 0x205d
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldc.i4.0
		IL_0001: ret
	} // end of method BoolReturner::Execute

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x2060
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: nop
		IL_0007: ret
	} // end of method BoolReturner::.ctor

} // end of class delegate_interface_v1.BoolReturner

.class private auto ansi beforefieldinit delegate_interface_v1.Program
	extends [System.Runtime]System.Object
{
	// Methods
	.method private hidebysig static 
		void Print (
			class delegate_interface_v1.IExecutable exe
		) cil managed 
	{
		// Method begins at RVA 0x2069
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: nop
		IL_0001: ldarg.0
		IL_0002: callvirt instance int32 delegate_interface_v1.IExecutable::Execute()
		IL_0007: call void [System.Console]System.Console::WriteLine(int32)
		IL_000c: nop
		IL_000d: ret
	} // end of method Program::Print

	.method private hidebysig static 
		void Main (
			string[] args
		) cil managed 
	{
		// Method begins at RVA 0x2078
		// Code size 28 (0x1c)
		.maxstack 1
		.entrypoint
		.locals init (
			[0] class delegate_interface_v1.IExecutable,
			[1] class delegate_interface_v1.IExecutable
		)

		IL_0000: nop
		IL_0001: newobj instance void delegate_interface_v1.IntReturner::.ctor()
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: call void delegate_interface_v1.Program::Print(class delegate_interface_v1.IExecutable)
		IL_000d: nop
		IL_000e: newobj instance void delegate_interface_v1.BoolReturner::.ctor()
		IL_0013: stloc.1
		IL_0014: ldloc.1
		IL_0015: call void delegate_interface_v1.Program::Print(class delegate_interface_v1.IExecutable)
		IL_001a: nop
		IL_001b: ret
	} // end of method Program::Main

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x20a0
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: nop
		IL_0007: ret
	} // end of method Program::.ctor

} // end of class delegate_interface_v1.Program

