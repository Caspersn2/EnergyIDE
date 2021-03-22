// IL code: conditional_test
.class private auto ansi '<Module>'
{
} // end of class <Module>

.class private auto ansi beforefieldinit conditional_test.Program
	extends [System.Runtime]System.Object
{
	// Methods
	.method private hidebysig static 
		void Main (
			string[] args
		) cil managed 
	{
		// Method begins at RVA 0x2050
		// Code size 81 (0x51)
		.maxstack 2
		.entrypoint
		.locals init (
			[0] char,
			[1] char,
			[2] bool,
			[3] bool,
			[4] bool,
			[5] bool,
			[6] bool,
			[7] bool,
			[8] bool
		)

		IL_0000: nop
		IL_0001: ldc.i4.s 65
		IL_0003: stloc.0
		IL_0004: ldc.i4.s 48
		IL_0006: stloc.1
		IL_0007: ldc.i4.0
		IL_0008: stloc.2
		IL_0009: ldloc.0
		IL_000a: call bool conditional_test.Program::is_letter(char)
		IL_000f: stloc.3
		IL_0010: ldloc.1
		IL_0011: call bool conditional_test.Program::is_digit(char)
		IL_0016: stloc.s 4
		IL_0018: ldloc.1
		IL_0019: call bool conditional_test.Program::is_letter(char)
		IL_001e: stloc.s 5
		IL_0020: ldloc.0
		IL_0021: call bool conditional_test.Program::is_digit(char)
		IL_0026: stloc.s 6
		IL_0028: ldloc.3
		IL_0029: ldloc.s 4
		IL_002b: and
		IL_002c: stloc.s 7
		IL_002e: ldloc.s 7
		IL_0030: brfalse.s IL_0036

		IL_0032: ldc.i4.1
		IL_0033: stloc.2
		IL_0034: br.s IL_0038

		IL_0036: ldc.i4.0
		IL_0037: stloc.2

		IL_0038: ldloc.s 5
		IL_003a: ldloc.s 6
		IL_003c: and
		IL_003d: stloc.s 8
		IL_003f: ldloc.s 8
		IL_0041: brfalse.s IL_0047

		IL_0043: ldc.i4.1
		IL_0044: stloc.2
		IL_0045: br.s IL_0049

		IL_0047: ldc.i4.0
		IL_0048: stloc.2

		IL_0049: ldloc.2
		IL_004a: call void [System.Console]System.Console::WriteLine(bool)
		IL_004f: nop
		IL_0050: ret
	} // end of method Program::Main

	.method public hidebysig static 
		bool is_digit (
			char ch
		) cil managed 
	{
		// Method begins at RVA 0x20b0
		// Code size 66 (0x42)
		.maxstack 2
		.locals init (
			[0] char,
			[1] char,
			[2] bool
		)

		IL_0000: nop
		IL_0001: ldarg.0
		IL_0002: stloc.1
		IL_0003: ldloc.1
		IL_0004: stloc.0
		IL_0005: ldloc.0
		IL_0006: ldc.i4.s 48
		IL_0008: sub
		IL_0009: switch (IL_0038, IL_0038, IL_0038, IL_0038, IL_0038, IL_0038, IL_0038, IL_0038, IL_0038, IL_0038)

		IL_0036: br.s IL_003c

		IL_0038: ldc.i4.1
		IL_0039: stloc.2
		IL_003a: br.s IL_0040

		IL_003c: ldc.i4.0
		IL_003d: stloc.2
		IL_003e: br.s IL_0040

		IL_0040: ldloc.2
		IL_0041: ret
	} // end of method Program::is_digit

	.method public hidebysig static 
		bool is_letter (
			char ch
		) cil managed 
	{
		// Method begins at RVA 0x2100
		// Code size 136 (0x88)
		.maxstack 2
		.locals init (
			[0] bool,
			[1] bool,
			[2] bool,
			[3] bool,
			[4] bool,
			[5] bool,
			[6] bool,
			[7] bool,
			[8] bool,
			[9] bool
		)

		IL_0000: nop
		IL_0001: ldarg.0
		IL_0002: ldc.i4.s 97
		IL_0004: ceq
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: brfalse.s IL_000e

		IL_000a: ldc.i4.1
		IL_000b: stloc.1
		IL_000c: br.s IL_0086

		IL_000e: ldarg.0
		IL_000f: ldc.i4.s 98
		IL_0011: ceq
		IL_0013: stloc.2
		IL_0014: ldloc.2
		IL_0015: brfalse.s IL_001b

		IL_0017: ldc.i4.1
		IL_0018: stloc.1
		IL_0019: br.s IL_0086

		IL_001b: ldarg.0
		IL_001c: ldc.i4.s 99
		IL_001e: ceq
		IL_0020: stloc.3
		IL_0021: ldloc.3
		IL_0022: brfalse.s IL_0028

		IL_0024: ldc.i4.1
		IL_0025: stloc.1
		IL_0026: br.s IL_0086

		IL_0028: ldarg.0
		IL_0029: ldc.i4.s 100
		IL_002b: ceq
		IL_002d: stloc.s 4
		IL_002f: ldloc.s 4
		IL_0031: brfalse.s IL_0037

		IL_0033: ldc.i4.1
		IL_0034: stloc.1
		IL_0035: br.s IL_0086

		IL_0037: ldarg.0
		IL_0038: ldc.i4.s 101
		IL_003a: ceq
		IL_003c: stloc.s 5
		IL_003e: ldloc.s 5
		IL_0040: brfalse.s IL_0046

		IL_0042: ldc.i4.1
		IL_0043: stloc.1
		IL_0044: br.s IL_0086

		IL_0046: ldarg.0
		IL_0047: ldc.i4.s 102
		IL_0049: ceq
		IL_004b: stloc.s 6
		IL_004d: ldloc.s 6
		IL_004f: brfalse.s IL_0055

		IL_0051: ldc.i4.1
		IL_0052: stloc.1
		IL_0053: br.s IL_0086

		IL_0055: ldarg.0
		IL_0056: ldc.i4.s 65
		IL_0058: ceq
		IL_005a: stloc.s 7
		IL_005c: ldloc.s 7
		IL_005e: brfalse.s IL_0064

		IL_0060: ldc.i4.1
		IL_0061: stloc.1
		IL_0062: br.s IL_0086

		IL_0064: ldarg.0
		IL_0065: ldc.i4.s 66
		IL_0067: ceq
		IL_0069: stloc.s 8
		IL_006b: ldloc.s 8
		IL_006d: brfalse.s IL_0073

		IL_006f: ldc.i4.1
		IL_0070: stloc.1
		IL_0071: br.s IL_0086

		IL_0073: ldarg.0
		IL_0074: ldc.i4.s 67
		IL_0076: ceq
		IL_0078: stloc.s 9
		IL_007a: ldloc.s 9
		IL_007c: brfalse.s IL_0082

		IL_007e: ldc.i4.1
		IL_007f: stloc.1
		IL_0080: br.s IL_0086

		IL_0082: ldc.i4.0
		IL_0083: stloc.1
		IL_0084: br.s IL_0086

		IL_0086: ldloc.1
		IL_0087: ret
	} // end of method Program::is_letter

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x2194
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: nop
		IL_0007: ret
	} // end of method Program::.ctor

} // end of class conditional_test.Program

