// IL code: simpleGenericsClassExample
.class private auto ansi '<Module>'
{
} // end of class <Module>

.class private auto ansi beforefieldinit simpleGenericsClassExample.Container`1<T>
	extends [System.Runtime]System.Object
{
	// Fields
	.field private !T 'value'

	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			!T input
		) cil managed 
	{
		// Method begins at RVA 0x2050
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: nop
		IL_0007: nop
		IL_0008: ldarg.0
		IL_0009: ldarg.1
		IL_000a: stfld !0 class simpleGenericsClassExample.Container`1<!T>::'value'
		IL_000f: ret
	} // end of method Container`1::.ctor

	.method public hidebysig 
		instance !T Peek () cil managed 
	{
		// Method begins at RVA 0x2064
		// Code size 12 (0xc)
		.maxstack 1
		.locals init (
			[0] !T
		)

		IL_0000: nop
		IL_0001: ldarg.0
		IL_0002: ldfld !0 class simpleGenericsClassExample.Container`1<!T>::'value'
		IL_0007: stloc.0
		IL_0008: br.s IL_000a

		IL_000a: ldloc.0
		IL_000b: ret
	} // end of method Container`1::Peek

} // end of class simpleGenericsClassExample.Container`1

.class private auto ansi beforefieldinit simpleGenericsClassExample.Pair`2<T1, T2>
	extends [System.Runtime]System.Object
{
	// Fields
	.field private !T1 value1
	.field private !T2 value2

	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			!T1 a,
			!T2 b
		) cil managed 
	{
		// Method begins at RVA 0x207c
		// Code size 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: nop
		IL_0007: nop
		IL_0008: ldarg.0
		IL_0009: ldarg.1
		IL_000a: stfld !0 class simpleGenericsClassExample.Pair`2<!T1, !T2>::value1
		IL_000f: ldarg.0
		IL_0010: ldarg.2
		IL_0011: stfld !1 class simpleGenericsClassExample.Pair`2<!T1, !T2>::value2
		IL_0016: ret
	} // end of method Pair`2::.ctor

	.method public hidebysig 
		instance string Print () cil managed 
	{
		// Method begins at RVA 0x2094
		// Code size 33 (0x21)
		.maxstack 8

		IL_0000: ldstr "First value: '{0}', Second value: '{1}'"
		IL_0005: ldarg.0
		IL_0006: ldfld !0 class simpleGenericsClassExample.Pair`2<!T1, !T2>::value1
		IL_000b: box !T1
		IL_0010: ldarg.0
		IL_0011: ldfld !1 class simpleGenericsClassExample.Pair`2<!T1, !T2>::value2
		IL_0016: box !T2
		IL_001b: call string [System.Runtime]System.String::Format(string, object, object)
		IL_0020: ret
	} // end of method Pair`2::Print

} // end of class simpleGenericsClassExample.Pair`2

.class private auto ansi beforefieldinit simpleGenericsClassExample.Program
	extends [System.Runtime]System.Object
{
	// Methods
	.method private hidebysig static 
		void Main (
			string[] args
		) cil managed 
	{
		// Method begins at RVA 0x20b8
		// Code size 64 (0x40)
		.maxstack 2
		.entrypoint
		.locals init (
			[0] class simpleGenericsClassExample.Container`1<int32>,
			[1] int32,
			[2] class simpleGenericsClassExample.Pair`2<string, int32>
		)

		IL_0000: nop
		IL_0001: ldc.i4.s 100
		IL_0003: newobj instance void class simpleGenericsClassExample.Container`1<int32>::.ctor(!0)
		IL_0008: stloc.0
		IL_0009: ldloc.0
		IL_000a: callvirt instance !0 class simpleGenericsClassExample.Container`1<int32>::Peek()
		IL_000f: stloc.1
		IL_0010: ldstr "The value from the box is: '{0}'"
		IL_0015: ldloc.1
		IL_0016: box [System.Runtime]System.Int32
		IL_001b: call string [System.Runtime]System.String::Format(string, object)
		IL_0020: call void [System.Console]System.Console::WriteLine(string)
		IL_0025: nop
		IL_0026: ldstr "James"
		IL_002b: ldc.i4.s 16
		IL_002d: newobj instance void class simpleGenericsClassExample.Pair`2<string, int32>::.ctor(!0, !1)
		IL_0032: stloc.2
		IL_0033: ldloc.2
		IL_0034: callvirt instance string class simpleGenericsClassExample.Pair`2<string, int32>::Print()
		IL_0039: call void [System.Console]System.Console::WriteLine(string)
		IL_003e: nop
		IL_003f: ret
	} // end of method Program::Main

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x2104
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: nop
		IL_0007: ret
	} // end of method Program::.ctor

} // end of class simpleGenericsClassExample.Program

