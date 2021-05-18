// IL code: project
.class private auto ansi '<Module>'
{
} // end of class <Module>

.class public auto ansi beforefieldinit TwelveDaysOfChristmas
	extends [System.Runtime]System.Object
{
	// Methods
	.method public hidebysig static 
		void Main () cil managed 
	{
		// Method begins at RVA 0x2050
		// Code size 289 (0x121)
		.maxstack 4
		.entrypoint
		.locals init (
			[0] string[],
			[1] string[],
			[2] int32,
			[3] int32
		)

		IL_0000: ldc.i4.s 12
		IL_0002: newarr [System.Runtime]System.String
		IL_0007: dup
		IL_0008: ldc.i4.0
		IL_0009: ldstr "first"
		IL_000e: stelem.ref
		IL_000f: dup
		IL_0010: ldc.i4.1
		IL_0011: ldstr "second"
		IL_0016: stelem.ref
		IL_0017: dup
		IL_0018: ldc.i4.2
		IL_0019: ldstr "third"
		IL_001e: stelem.ref
		IL_001f: dup
		IL_0020: ldc.i4.3
		IL_0021: ldstr "fourth"
		IL_0026: stelem.ref
		IL_0027: dup
		IL_0028: ldc.i4.4
		IL_0029: ldstr "fifth"
		IL_002e: stelem.ref
		IL_002f: dup
		IL_0030: ldc.i4.5
		IL_0031: ldstr "sixth"
		IL_0036: stelem.ref
		IL_0037: dup
		IL_0038: ldc.i4.6
		IL_0039: ldstr "seventh"
		IL_003e: stelem.ref
		IL_003f: dup
		IL_0040: ldc.i4.7
		IL_0041: ldstr "eighth"
		IL_0046: stelem.ref
		IL_0047: dup
		IL_0048: ldc.i4.8
		IL_0049: ldstr "ninth"
		IL_004e: stelem.ref
		IL_004f: dup
		IL_0050: ldc.i4.s 9
		IL_0052: ldstr "tenth"
		IL_0057: stelem.ref
		IL_0058: dup
		IL_0059: ldc.i4.s 10
		IL_005b: ldstr "eleventh"
		IL_0060: stelem.ref
		IL_0061: dup
		IL_0062: ldc.i4.s 11
		IL_0064: ldstr "twelfth"
		IL_0069: stelem.ref
		IL_006a: stloc.0
		IL_006b: ldc.i4.s 12
		IL_006d: newarr [System.Runtime]System.String
		IL_0072: dup
		IL_0073: ldc.i4.0
		IL_0074: ldstr "A partridge in a pear tree"
		IL_0079: stelem.ref
		IL_007a: dup
		IL_007b: ldc.i4.1
		IL_007c: ldstr "Two turtle doves"
		IL_0081: stelem.ref
		IL_0082: dup
		IL_0083: ldc.i4.2
		IL_0084: ldstr "Three french hens"
		IL_0089: stelem.ref
		IL_008a: dup
		IL_008b: ldc.i4.3
		IL_008c: ldstr "Four calling birds"
		IL_0091: stelem.ref
		IL_0092: dup
		IL_0093: ldc.i4.4
		IL_0094: ldstr "Five golden rings"
		IL_0099: stelem.ref
		IL_009a: dup
		IL_009b: ldc.i4.5
		IL_009c: ldstr "Six geese a-laying"
		IL_00a1: stelem.ref
		IL_00a2: dup
		IL_00a3: ldc.i4.6
		IL_00a4: ldstr "Seven swans a-swimming"
		IL_00a9: stelem.ref
		IL_00aa: dup
		IL_00ab: ldc.i4.7
		IL_00ac: ldstr "Eight maids a-milking"
		IL_00b1: stelem.ref
		IL_00b2: dup
		IL_00b3: ldc.i4.8
		IL_00b4: ldstr "Nine ladies dancing"
		IL_00b9: stelem.ref
		IL_00ba: dup
		IL_00bb: ldc.i4.s 9
		IL_00bd: ldstr "Ten lords a-leaping"
		IL_00c2: stelem.ref
		IL_00c3: dup
		IL_00c4: ldc.i4.s 10
		IL_00c6: ldstr "Eleven pipers piping"
		IL_00cb: stelem.ref
		IL_00cc: dup
		IL_00cd: ldc.i4.s 11
		IL_00cf: ldstr "Twelve drummers drumming"
		IL_00d4: stelem.ref
		IL_00d5: stloc.1
		IL_00d6: ldc.i4.0
		IL_00d7: stloc.2
		IL_00d8: br.s IL_011b
		// loop start (head: IL_011b)
			IL_00da: ldstr "On the "
			IL_00df: ldloc.0
			IL_00e0: ldloc.2
			IL_00e1: ldelem.ref
			IL_00e2: ldstr " day of Christmas, my true love gave to me"
			IL_00e7: call string [System.Runtime]System.String::Concat(string, string, string)
			IL_00ec: call void [System.Console]System.Console::WriteLine(string)
			IL_00f1: ldloc.2
			IL_00f2: ldc.i4.1
			IL_00f3: add
			IL_00f4: stloc.3
			IL_00f5: br.s IL_00ff
			// loop start (head: IL_00ff)
				IL_00f7: ldloc.1
				IL_00f8: ldloc.3
				IL_00f9: ldelem.ref
				IL_00fa: call void [System.Console]System.Console::WriteLine(string)

				IL_00ff: ldloc.3
				IL_0100: dup
				IL_0101: ldc.i4.1
				IL_0102: sub
				IL_0103: stloc.3
				IL_0104: ldc.i4.0
				IL_0105: bgt.s IL_00f7
			// end loop

			IL_0107: call void [System.Console]System.Console::WriteLine()
			IL_010c: ldloc.2
			IL_010d: brtrue.s IL_0117

			IL_010f: ldloc.1
			IL_0110: ldc.i4.0
			IL_0111: ldstr "And a partridge in a pear tree"
			IL_0116: stelem.ref

			IL_0117: ldloc.2
			IL_0118: ldc.i4.1
			IL_0119: add
			IL_011a: stloc.2

			IL_011b: ldloc.2
			IL_011c: ldc.i4.s 12
			IL_011e: blt.s IL_00da
		// end loop

		IL_0120: ret
	} // end of method TwelveDaysOfChristmas::Main

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x217d
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: ret
	} // end of method TwelveDaysOfChristmas::.ctor

} // end of class TwelveDaysOfChristmas

