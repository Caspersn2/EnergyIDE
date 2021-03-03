// IL code: project
.class private auto ansi '<Module>'
{
} // end of class <Module>

.class private auto ansi beforefieldinit ConsoleApplication1.Program
	extends [System.Runtime]System.Object
{
	// Methods
	.method private hidebysig static 
		void Main (
			string[] args
		) cil managed 
	{
		// Method begins at RVA 0x2050
		// Code size 209 (0xd1)
		.maxstack 4
		.entrypoint
		.locals init (
			[0] bool[],
			[1] int32,
			[2] bool,
			[3] int32,
			[4] int32,
			[5] bool,
			[6] bool,
			[7] bool,
			[8] int32,
			[9] bool,
			[10] bool
		)

		IL_0000: nop
		IL_0001: ldc.i4.s 100
		IL_0003: newarr [System.Runtime]System.Boolean
		IL_0008: stloc.0
		IL_0009: ldc.i4.0
		IL_000a: stloc.1
		IL_000b: br.s IL_0015
		// loop start (head: IL_0015)
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
			IL_001c: brtrue.s IL_000d
		// end loop

		IL_001e: ldc.i4.0
		IL_001f: stloc.3
		IL_0020: br.s IL_005f
		// loop start (head: IL_005f)
			IL_0022: nop
			IL_0023: ldc.i4.0
			IL_0024: stloc.s 4
			IL_0026: br.s IL_004e
			// loop start (head: IL_004e)
				IL_0028: nop
				IL_0029: ldloc.s 4
				IL_002b: ldc.i4.1
				IL_002c: add
				IL_002d: ldloc.3
				IL_002e: ldc.i4.1
				IL_002f: add
				IL_0030: rem
				IL_0031: ldc.i4.0
				IL_0032: ceq
				IL_0034: stloc.s 5
				IL_0036: ldloc.s 5
				IL_0038: brfalse.s IL_0047

				IL_003a: nop
				IL_003b: ldloc.0
				IL_003c: ldloc.s 4
				IL_003e: ldloc.0
				IL_003f: ldloc.s 4
				IL_0041: ldelem.u1
				IL_0042: ldc.i4.0
				IL_0043: ceq
				IL_0045: stelem.i1
				IL_0046: nop

				IL_0047: nop
				IL_0048: ldloc.s 4
				IL_004a: ldc.i4.1
				IL_004b: add
				IL_004c: stloc.s 4

				IL_004e: ldloc.s 4
				IL_0050: ldc.i4.s 100
				IL_0052: clt
				IL_0054: stloc.s 6
				IL_0056: ldloc.s 6
				IL_0058: brtrue.s IL_0028
			// end loop

			IL_005a: nop
			IL_005b: ldloc.3
			IL_005c: ldc.i4.1
			IL_005d: add
			IL_005e: stloc.3

			IL_005f: ldloc.3
			IL_0060: ldc.i4.s 100
			IL_0062: clt
			IL_0064: stloc.s 7
			IL_0066: ldloc.s 7
			IL_0068: brtrue.s IL_0022
		// end loop

		IL_006a: ldstr "Passes Completed!!!  Here are the results: \r\n"
		IL_006f: call void [System.Console]System.Console::WriteLine(string)
		IL_0074: nop
		IL_0075: ldc.i4.0
		IL_0076: stloc.s 8
		IL_0078: br.s IL_00c4
		// loop start (head: IL_00c4)
			IL_007a: nop
			IL_007b: ldloc.0
			IL_007c: ldloc.s 8
			IL_007e: ldelem.u1
			IL_007f: stloc.s 9
			IL_0081: ldloc.s 9
			IL_0083: brfalse.s IL_00a2

			IL_0085: nop
			IL_0086: ldstr "Door #{0}: Open"
			IL_008b: ldloc.s 8
			IL_008d: ldc.i4.1
			IL_008e: add
			IL_008f: box [System.Runtime]System.Int32
			IL_0094: call string [System.Runtime]System.String::Format(string, object)
			IL_0099: call void [System.Console]System.Console::WriteLine(string)
			IL_009e: nop
			IL_009f: nop
			IL_00a0: br.s IL_00bd

			IL_00a2: nop
			IL_00a3: ldstr "Door #{0}: Closed"
			IL_00a8: ldloc.s 8
			IL_00aa: ldc.i4.1
			IL_00ab: add
			IL_00ac: box [System.Runtime]System.Int32
			IL_00b1: call string [System.Runtime]System.String::Format(string, object)
			IL_00b6: call void [System.Console]System.Console::WriteLine(string)
			IL_00bb: nop
			IL_00bc: nop

			IL_00bd: nop
			IL_00be: ldloc.s 8
			IL_00c0: ldc.i4.1
			IL_00c1: add
			IL_00c2: stloc.s 8

			IL_00c4: ldloc.s 8
			IL_00c6: ldc.i4.s 100
			IL_00c8: clt
			IL_00ca: stloc.s 10
			IL_00cc: ldloc.s 10
			IL_00ce: brtrue.s IL_007a
		// end loop

		IL_00d0: ret
	} // end of method Program::Main

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x212d
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: nop
		IL_0007: ret
	} // end of method Program::.ctor

} // end of class ConsoleApplication1.Program

