.class public auto ansi beforefieldinit System.Random
	extends System.Object
{
	// Fields
	.field private int32 _inext
	.field private int32 _inextp
	.field private initonly int32[] _seedArray
	.field private static class System.Random t_threadRandom
	.custom instance void System.ThreadStaticAttribute::.ctor() = (
		01 00 00 00
	)
	.field private static initonly class System.Random s_globalRandom

	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x7ca9f
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call int32 System.Random::GenerateSeed()
		IL_0006: call instance void System.Random::.ctor(int32)
		IL_000b: ret
	} // end of method Random::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 Seed
		) cil managed 
	{
		// Method begins at RVA 0x7caac
		// Code size 253 (0xfd)
		.maxstack 5
		.locals (
			[0] int32,
			[1] int32,
			[2] int32,
			[3] int32,
			[4] int32,
			[5] int32,
			[6] int32,
			[7] int32
		)

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 56
		IL_0003: newarr System.Int32
		IL_0008: stfld int32[] System.Random::_seedArray
		IL_000d: ldarg.0
		IL_000e: call instance void System.Object::.ctor()
		IL_0013: ldc.i4.0
		IL_0014: stloc.0
		IL_0015: ldarg.1
		IL_0016: ldc.i4 -2147483648
		IL_001b: beq.s IL_0025

		IL_001d: ldarg.1
		IL_001e: call int32 System.Math::Abs(int32)
		IL_0023: br.s IL_002a

		IL_0025: ldc.i4 2147483647

		IL_002a: stloc.3
		IL_002b: ldc.i4 161803398
		IL_0030: ldloc.3
		IL_0031: sub
		IL_0032: stloc.1
		IL_0033: ldarg.0
		IL_0034: ldfld int32[] System.Random::_seedArray
		IL_0039: ldc.i4.s 55
		IL_003b: ldloc.1
		IL_003c: stelem.i4
		IL_003d: ldc.i4.1
		IL_003e: stloc.2
		IL_003f: ldc.i4.1
		IL_0040: stloc.s 4
		IL_0042: br.s IL_007b
		// loop start (head: IL_007b)
			IL_0044: ldloc.0
			IL_0045: ldc.i4.s 21
			IL_0047: add
			IL_0048: dup
			IL_0049: stloc.0
			IL_004a: ldc.i4.s 55
			IL_004c: blt.s IL_0053

			IL_004e: ldloc.0
			IL_004f: ldc.i4.s 55
			IL_0051: sub
			IL_0052: stloc.0

			IL_0053: ldarg.0
			IL_0054: ldfld int32[] System.Random::_seedArray
			IL_0059: ldloc.0
			IL_005a: ldloc.2
			IL_005b: stelem.i4
			IL_005c: ldloc.1
			IL_005d: ldloc.2
			IL_005e: sub
			IL_005f: stloc.2
			IL_0060: ldloc.2
			IL_0061: ldc.i4.0
			IL_0062: bge.s IL_006c

			IL_0064: ldloc.2
			IL_0065: ldc.i4 2147483647
			IL_006a: add
			IL_006b: stloc.2

			IL_006c: ldarg.0
			IL_006d: ldfld int32[] System.Random::_seedArray
			IL_0072: ldloc.0
			IL_0073: ldelem.i4
			IL_0074: stloc.1
			IL_0075: ldloc.s 4
			IL_0077: ldc.i4.1
			IL_0078: add
			IL_0079: stloc.s 4

			IL_007b: ldloc.s 4
			IL_007d: ldc.i4.s 55
			IL_007f: blt.s IL_0044
		// end loop

		IL_0081: ldc.i4.1
		IL_0082: stloc.s 5
		IL_0084: br.s IL_00ef
		// loop start (head: IL_00ef)
			IL_0086: ldc.i4.1
			IL_0087: stloc.s 6
			IL_0089: br.s IL_00e3
			// loop start (head: IL_00e3)
				IL_008b: ldloc.s 6
				IL_008d: ldc.i4.s 30
				IL_008f: add
				IL_0090: stloc.s 7
				IL_0092: ldloc.s 7
				IL_0094: ldc.i4.s 55
				IL_0096: blt.s IL_009f

				IL_0098: ldloc.s 7
				IL_009a: ldc.i4.s 55
				IL_009c: sub
				IL_009d: stloc.s 7

				IL_009f: ldarg.0
				IL_00a0: ldfld int32[] System.Random::_seedArray
				IL_00a5: ldloc.s 6
				IL_00a7: ldelema System.Int32
				IL_00ac: dup
				IL_00ad: ldind.i4
				IL_00ae: ldarg.0
				IL_00af: ldfld int32[] System.Random::_seedArray
				IL_00b4: ldc.i4.1
				IL_00b5: ldloc.s 7
				IL_00b7: add
				IL_00b8: ldelem.i4
				IL_00b9: sub
				IL_00ba: stind.i4
				IL_00bb: ldarg.0
				IL_00bc: ldfld int32[] System.Random::_seedArray
				IL_00c1: ldloc.s 6
				IL_00c3: ldelem.i4
				IL_00c4: ldc.i4.0
				IL_00c5: bge.s IL_00dd

				IL_00c7: ldarg.0
				IL_00c8: ldfld int32[] System.Random::_seedArray
				IL_00cd: ldloc.s 6
				IL_00cf: ldelema System.Int32
				IL_00d4: dup
				IL_00d5: ldind.i4
				IL_00d6: ldc.i4 2147483647
				IL_00db: add
				IL_00dc: stind.i4

				IL_00dd: ldloc.s 6
				IL_00df: ldc.i4.1
				IL_00e0: add
				IL_00e1: stloc.s 6

				IL_00e3: ldloc.s 6
				IL_00e5: ldc.i4.s 56
				IL_00e7: blt.s IL_008b
			// end loop

			IL_00e9: ldloc.s 5
			IL_00eb: ldc.i4.1
			IL_00ec: add
			IL_00ed: stloc.s 5

			IL_00ef: ldloc.s 5
			IL_00f1: ldc.i4.5
			IL_00f2: blt.s IL_0086
		// end loop

		IL_00f4: ldarg.0
		IL_00f5: ldc.i4.s 21
		IL_00f7: stfld int32 System.Random::_inextp
		IL_00fc: ret
	} // end of method Random::.ctor

	.method family hidebysig newslot virtual 
		instance float64 Sample () cil managed 
	{
		// Method begins at RVA 0x7cbb5
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.Random::InternalSample()
		IL_0006: conv.r8
		IL_0007: ldc.r8 4.656612875245797E-10
		IL_0010: mul
		IL_0011: ret
	} // end of method Random::Sample

	.method private hidebysig 
		instance int32 InternalSample () cil managed 
	{
		// Method begins at RVA 0x7cbc8
		// Code size 103 (0x67)
		.maxstack 3
		.locals (
			[0] int32,
			[1] int32,
			[2] int32
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int32 System.Random::_inext
		IL_0006: stloc.1
		IL_0007: ldarg.0
		IL_0008: ldfld int32 System.Random::_inextp
		IL_000d: stloc.2
		IL_000e: ldloc.1
		IL_000f: ldc.i4.1
		IL_0010: add
		IL_0011: dup
		IL_0012: stloc.1
		IL_0013: ldc.i4.s 56
		IL_0015: blt.s IL_0019

		IL_0017: ldc.i4.1
		IL_0018: stloc.1

		IL_0019: ldloc.2
		IL_001a: ldc.i4.1
		IL_001b: add
		IL_001c: dup
		IL_001d: stloc.2
		IL_001e: ldc.i4.s 56
		IL_0020: blt.s IL_0024

		IL_0022: ldc.i4.1
		IL_0023: stloc.2

		IL_0024: ldarg.0
		IL_0025: ldfld int32[] System.Random::_seedArray
		IL_002a: ldloc.1
		IL_002b: ldelem.i4
		IL_002c: ldarg.0
		IL_002d: ldfld int32[] System.Random::_seedArray
		IL_0032: ldloc.2
		IL_0033: ldelem.i4
		IL_0034: sub
		IL_0035: stloc.0
		IL_0036: ldloc.0
		IL_0037: ldc.i4 2147483647
		IL_003c: bne.un.s IL_0042

		IL_003e: ldloc.0
		IL_003f: ldc.i4.1
		IL_0040: sub
		IL_0041: stloc.0

		IL_0042: ldloc.0
		IL_0043: ldc.i4.0
		IL_0044: bge.s IL_004e

		IL_0046: ldloc.0
		IL_0047: ldc.i4 2147483647
		IL_004c: add
		IL_004d: stloc.0

		IL_004e: ldarg.0
		IL_004f: ldfld int32[] System.Random::_seedArray
		IL_0054: ldloc.1
		IL_0055: ldloc.0
		IL_0056: stelem.i4
		IL_0057: ldarg.0
		IL_0058: ldloc.1
		IL_0059: stfld int32 System.Random::_inext
		IL_005e: ldarg.0
		IL_005f: ldloc.2
		IL_0060: stfld int32 System.Random::_inextp
		IL_0065: ldloc.0
		IL_0066: ret
	} // end of method Random::InternalSample

	.method private hidebysig static 
		int32 GenerateSeed () cil managed 
	{
		// Method begins at RVA 0x7cc3c
		// Code size 68 (0x44)
		.maxstack 2
		.locals (
			[0] class System.Random,
			[1] int32,
			[2] class System.Random,
			[3] bool
		)

		IL_0000: ldsfld class System.Random System.Random::t_threadRandom
		IL_0005: stloc.0
		IL_0006: ldloc.0
		IL_0007: brtrue.s IL_003d

		IL_0009: ldsfld class System.Random System.Random::s_globalRandom
		IL_000e: stloc.2
		IL_000f: ldc.i4.0
		IL_0010: stloc.3
		.try
		{
			IL_0011: ldloc.2
			IL_0012: ldloca.s 3
			IL_0014: call void System.Threading.Monitor::Enter(object, bool&)
			IL_0019: ldsfld class System.Random System.Random::s_globalRandom
			IL_001e: callvirt instance int32 System.Random::Next()
			IL_0023: stloc.1
			IL_0024: leave.s IL_0030
		} // end .try
		finally
		{
			IL_0026: ldloc.3
			IL_0027: brfalse.s IL_002f

			IL_0029: ldloc.2
			IL_002a: call void System.Threading.Monitor::Exit(object)

			IL_002f: endfinally
		} // end handler

		IL_0030: ldloc.1
		IL_0031: newobj instance void System.Random::.ctor(int32)
		IL_0036: stloc.0
		IL_0037: ldloc.0
		IL_0038: stsfld class System.Random System.Random::t_threadRandom

		IL_003d: ldloc.0
		IL_003e: callvirt instance int32 System.Random::Next()
		IL_0043: ret
	} // end of method Random::GenerateSeed

	.method private hidebysig static 
		int32 GenerateGlobalSeed () cil managed 
	{
		// Method begins at RVA 0x7cc9c
		// Code size 11 (0xb)
		.maxstack 2
		.locals (
			[0] int32
		)

		IL_0000: ldloca.s 0
		IL_0002: conv.u
		IL_0003: ldc.i4.4
		IL_0004: call void Interop::GetRandomBytes(uint8*, int32)
		IL_0009: ldloc.0
		IL_000a: ret
	} // end of method Random::GenerateGlobalSeed

	.method public hidebysig newslot virtual 
		instance int32 Next () cil managed 
	{
		// Method begins at RVA 0x7ccb3
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.Random::InternalSample()
		IL_0006: ret
	} // end of method Random::Next

	.method private hidebysig 
		instance float64 GetSampleForLargeRange () cil managed 
	{
		// Method begins at RVA 0x7ccbc
		// Code size 57 (0x39)
		.maxstack 2
		.locals (
			[0] int32,
			[1] bool,
			[2] float64
		)

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.Random::InternalSample()
		IL_0006: stloc.0
		IL_0007: ldarg.0
		IL_0008: call instance int32 System.Random::InternalSample()
		IL_000d: ldc.i4.2
		IL_000e: rem
		IL_000f: brfalse.s IL_0014

		IL_0011: ldc.i4.0
		IL_0012: br.s IL_0015

		IL_0014: ldc.i4.1

		IL_0015: stloc.1
		IL_0016: ldloc.1
		IL_0017: brfalse.s IL_001c

		IL_0019: ldloc.0
		IL_001a: neg
		IL_001b: stloc.0

		IL_001c: ldloc.0
		IL_001d: conv.r8
		IL_001e: stloc.2
		IL_001f: ldloc.2
		IL_0020: ldc.r8 2147483646
		IL_0029: add
		IL_002a: stloc.2
		IL_002b: ldloc.2
		IL_002c: ldc.r8 4294967293
		IL_0035: div
		IL_0036: stloc.2
		IL_0037: ldloc.2
		IL_0038: ret
	} // end of method Random::GetSampleForLargeRange

	.method public hidebysig newslot virtual 
		instance int32 Next (
			int32 minValue,
			int32 maxValue
		) cil managed 
	{
		// Method begins at RVA 0x7cd04
		// Code size 78 (0x4e)
		.maxstack 4
		.locals (
			[0] int64
		)

		IL_0000: ldarg.1
		IL_0001: ldarg.2
		IL_0002: ble.s IL_0023

		IL_0004: ldstr "minValue"
		IL_0009: call string System.SR::get_Argument_MinMaxValue()
		IL_000e: ldstr "minValue"
		IL_0013: ldstr "maxValue"
		IL_0018: call string System.SR::Format(string, object, object)
		IL_001d: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0022: throw

		IL_0023: ldarg.2
		IL_0024: conv.i8
		IL_0025: ldarg.1
		IL_0026: conv.i8
		IL_0027: sub
		IL_0028: stloc.0
		IL_0029: ldloc.0
		IL_002a: ldc.i4 2147483647
		IL_002f: conv.i8
		IL_0030: bgt.s IL_003f

		IL_0032: ldarg.0
		IL_0033: callvirt instance float64 System.Random::Sample()
		IL_0038: ldloc.0
		IL_0039: conv.r8
		IL_003a: mul
		IL_003b: conv.i4
		IL_003c: ldarg.1
		IL_003d: add
		IL_003e: ret

		IL_003f: ldarg.0
		IL_0040: call instance float64 System.Random::GetSampleForLargeRange()
		IL_0045: ldloc.0
		IL_0046: conv.r8
		IL_0047: mul
		IL_0048: conv.i8
		IL_0049: ldarg.1
		IL_004a: conv.i8
		IL_004b: add
		IL_004c: conv.i4
		IL_004d: ret
	} // end of method Random::Next

	.method public hidebysig newslot virtual 
		instance int32 Next (
			int32 maxValue
		) cil managed 
	{
		// Method begins at RVA 0x7cd5e
		// Code size 41 (0x29)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_001e

		IL_0004: ldstr "maxValue"
		IL_0009: call string System.SR::get_ArgumentOutOfRange_MustBePositive()
		IL_000e: ldstr "maxValue"
		IL_0013: call string System.SR::Format(string, object)
		IL_0018: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_001d: throw

		IL_001e: ldarg.0
		IL_001f: callvirt instance float64 System.Random::Sample()
		IL_0024: ldarg.1
		IL_0025: conv.r8
		IL_0026: mul
		IL_0027: conv.i4
		IL_0028: ret
	} // end of method Random::Next

	.method public hidebysig newslot virtual 
		instance float64 NextDouble () cil managed 
	{
		// Method begins at RVA 0x7cd88
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance float64 System.Random::Sample()
		IL_0006: ret
	} // end of method Random::NextDouble

	.method public hidebysig newslot virtual 
		instance void NextBytes (
			uint8[] buffer
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x7cd90
		// Code size 39 (0x27)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "buffer"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldc.i4.0
		IL_000f: stloc.0
		IL_0010: br.s IL_0020
		// loop start (head: IL_0020)
			IL_0012: ldarg.1
			IL_0013: ldloc.0
			IL_0014: ldarg.0
			IL_0015: call instance int32 System.Random::InternalSample()
			IL_001a: conv.u1
			IL_001b: stelem.i1
			IL_001c: ldloc.0
			IL_001d: ldc.i4.1
			IL_001e: add
			IL_001f: stloc.0

			IL_0020: ldloc.0
			IL_0021: ldarg.1
			IL_0022: ldlen
			IL_0023: conv.i4
			IL_0024: blt.s IL_0012
		// end loop

		IL_0026: ret
	} // end of method Random::NextBytes

	.method public hidebysig newslot virtual 
		instance void NextBytes (
			valuetype System.Span`1<uint8> buffer
		) cil managed 
	{
		// Method begins at RVA 0x7cdc4
		// Code size 35 (0x23)
		.maxstack 2
		.locals (
			[0] int32
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: br.s IL_0018
		// loop start (head: IL_0018)
			IL_0004: ldarga.s buffer
			IL_0006: ldloc.0
			IL_0007: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
			IL_000c: ldarg.0
			IL_000d: callvirt instance int32 System.Random::Next()
			IL_0012: conv.u1
			IL_0013: stind.i1
			IL_0014: ldloc.0
			IL_0015: ldc.i4.1
			IL_0016: add
			IL_0017: stloc.0

			IL_0018: ldloc.0
			IL_0019: ldarga.s buffer
			IL_001b: call instance int32 valuetype System.Span`1<uint8>::get_Length()
			IL_0020: blt.s IL_0004
		// end loop

		IL_0022: ret
	} // end of method Random::NextBytes

	.method private hidebysig specialname rtspecialname static 
		void .cctor () cil managed 
	{
		// Method begins at RVA 0x7cdf3
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: call int32 System.Random::GenerateGlobalSeed()
		IL_0005: newobj instance void System.Random::.ctor(int32)
		IL_000a: stsfld class System.Random System.Random::s_globalRandom
		IL_000f: ret
	} // end of method Random::.cctor

} // end of class System.Random