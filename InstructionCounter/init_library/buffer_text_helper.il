.class private auto ansi abstract sealed beforefieldinit System.Buffers.Text.FormattingHelpers
	extends System.Object
{
	// Methods
	.method public hidebysig static 
		int32 CountDigits (
			uint64 'value'
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0xcf6c8
		// Code size 140 (0x8c)
		.maxstack 2
		.locals (
			[0] int32,
			[1] uint32
		)

		IL_0000: ldc.i4.1
		IL_0001: stloc.0
		IL_0002: ldarg.0
		IL_0003: ldc.i4 10000000
		IL_0008: conv.i8
		IL_0009: blt.un.s IL_003b

		IL_000b: ldarg.0
		IL_000c: ldc.i8 100000000000000
		IL_0015: blt.un.s IL_002b

		IL_0017: ldarg.0
		IL_0018: ldc.i8 100000000000000
		IL_0021: div.un
		IL_0022: conv.u4
		IL_0023: stloc.1
		IL_0024: ldloc.0
		IL_0025: ldc.i4.s 14
		IL_0027: add
		IL_0028: stloc.0
		IL_0029: br.s IL_003e

		IL_002b: ldarg.0
		IL_002c: ldc.i4 10000000
		IL_0031: conv.i8
		IL_0032: div.un
		IL_0033: conv.u4
		IL_0034: stloc.1
		IL_0035: ldloc.0
		IL_0036: ldc.i4.7
		IL_0037: add
		IL_0038: stloc.0
		IL_0039: br.s IL_003e

		IL_003b: ldarg.0
		IL_003c: conv.u4
		IL_003d: stloc.1

		IL_003e: ldloc.1
		IL_003f: ldc.i4.s 10
		IL_0041: blt.un.s IL_008a

		IL_0043: ldloc.1
		IL_0044: ldc.i4.s 100
		IL_0046: bge.un.s IL_004e

		IL_0048: ldloc.0
		IL_0049: ldc.i4.1
		IL_004a: add
		IL_004b: stloc.0
		IL_004c: br.s IL_008a

		IL_004e: ldloc.1
		IL_004f: ldc.i4 1000
		IL_0054: bge.un.s IL_005c

		IL_0056: ldloc.0
		IL_0057: ldc.i4.2
		IL_0058: add
		IL_0059: stloc.0
		IL_005a: br.s IL_008a

		IL_005c: ldloc.1
		IL_005d: ldc.i4 10000
		IL_0062: bge.un.s IL_006a

		IL_0064: ldloc.0
		IL_0065: ldc.i4.3
		IL_0066: add
		IL_0067: stloc.0
		IL_0068: br.s IL_008a

		IL_006a: ldloc.1
		IL_006b: ldc.i4 100000
		IL_0070: bge.un.s IL_0078

		IL_0072: ldloc.0
		IL_0073: ldc.i4.4
		IL_0074: add
		IL_0075: stloc.0
		IL_0076: br.s IL_008a

		IL_0078: ldloc.1
		IL_0079: ldc.i4 1000000
		IL_007e: bge.un.s IL_0086

		IL_0080: ldloc.0
		IL_0081: ldc.i4.5
		IL_0082: add
		IL_0083: stloc.0
		IL_0084: br.s IL_008a

		IL_0086: ldloc.0
		IL_0087: ldc.i4.6
		IL_0088: add
		IL_0089: stloc.0

		IL_008a: ldloc.0
		IL_008b: ret
	} // end of method FormattingHelpers::CountDigits

	.method public hidebysig static 
		int32 CountDigits (
			uint32 'value'
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0xcf760
		// Code size 73 (0x49)
		.maxstack 2
		.locals (
			[0] int32
		)

		IL_0000: ldc.i4.1
		IL_0001: stloc.0
		IL_0002: ldarg.0
		IL_0003: ldc.i4 100000
		IL_0008: blt.un.s IL_0017

		IL_000a: ldarg.0
		IL_000b: ldc.i4 100000
		IL_0010: div.un
		IL_0011: starg.s 'value'
		IL_0013: ldloc.0
		IL_0014: ldc.i4.5
		IL_0015: add
		IL_0016: stloc.0

		IL_0017: ldarg.0
		IL_0018: ldc.i4.s 10
		IL_001a: blt.un.s IL_0047

		IL_001c: ldarg.0
		IL_001d: ldc.i4.s 100
		IL_001f: bge.un.s IL_0027

		IL_0021: ldloc.0
		IL_0022: ldc.i4.1
		IL_0023: add
		IL_0024: stloc.0
		IL_0025: br.s IL_0047

		IL_0027: ldarg.0
		IL_0028: ldc.i4 1000
		IL_002d: bge.un.s IL_0035

		IL_002f: ldloc.0
		IL_0030: ldc.i4.2
		IL_0031: add
		IL_0032: stloc.0
		IL_0033: br.s IL_0047

		IL_0035: ldarg.0
		IL_0036: ldc.i4 10000
		IL_003b: bge.un.s IL_0043

		IL_003d: ldloc.0
		IL_003e: ldc.i4.3
		IL_003f: add
		IL_0040: stloc.0
		IL_0041: br.s IL_0047

		IL_0043: ldloc.0
		IL_0044: ldc.i4.4
		IL_0045: add
		IL_0046: stloc.0

		IL_0047: ldloc.0
		IL_0048: ret
	} // end of method FormattingHelpers::CountDigits

	.method public hidebysig static 
		int32 CountHexDigits (
			uint64 'value'
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0xcf7b5
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call int32 System.Numerics.BitOperations::Log2(uint64)
		IL_0006: ldc.i4.2
		IL_0007: shr
		IL_0008: ldc.i4.1
		IL_0009: add
		IL_000a: ret
	} // end of method FormattingHelpers::CountHexDigits

	.method public hidebysig static 
		int32 CountDecimalTrailingZeros (
			uint32 'value',
			[out] uint32& valueWithoutTrailingZeros
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0xcf7c4
		// Code size 31 (0x1f)
		.maxstack 3
		.locals (
			[0] int32,
			[1] uint32
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldarg.0
		IL_0003: brfalse.s IL_001a
		// loop start (head: IL_0005)
			IL_0005: ldarg.0
			IL_0006: ldc.i4.s 10
			IL_0008: div.un
			IL_0009: stloc.1
			IL_000a: ldarg.0
			IL_000b: ldloc.1
			IL_000c: ldc.i4.s 10
			IL_000e: mul
			IL_000f: bne.un.s IL_001a

			IL_0011: ldloc.1
			IL_0012: starg.s 'value'
			IL_0014: ldloc.0
			IL_0015: ldc.i4.1
			IL_0016: add
			IL_0017: stloc.0
			IL_0018: br.s IL_0005
		// end loop

		IL_001a: ldarg.1
		IL_001b: ldarg.0
		IL_001c: stind.i4
		IL_001d: ldloc.0
		IL_001e: ret
	} // end of method FormattingHelpers::CountDecimalTrailingZeros

	.method public hidebysig static 
		char GetSymbolOrDefault (
			[in] valuetype System.Buffers.StandardFormat& format,
			char defaultSymbol
		) cil managed aggressiveinlining 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0xcf7f0
		// Code size 22 (0x16)
		.maxstack 1
		.locals (
			[0] char
		)

		IL_0000: ldarg.0
		IL_0001: call instance char System.Buffers.StandardFormat::get_Symbol()
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: brtrue.s IL_0014

		IL_000a: ldarg.0
		IL_000b: call instance uint8 System.Buffers.StandardFormat::get_Precision()
		IL_0010: brtrue.s IL_0014

		IL_0012: ldarg.1
		IL_0013: stloc.0

		IL_0014: ldloc.0
		IL_0015: ret
	} // end of method FormattingHelpers::GetSymbolOrDefault

	.method public hidebysig static 
		void FillWithAsciiZeros (
			valuetype System.Span`1<uint8> buffer
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0xcf814
		// Code size 30 (0x1e)
		.maxstack 2
		.locals (
			[0] int32
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: br.s IL_0013
		// loop start (head: IL_0013)
			IL_0004: ldarga.s buffer
			IL_0006: ldloc.0
			IL_0007: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
			IL_000c: ldc.i4.s 48
			IL_000e: stind.i1
			IL_000f: ldloc.0
			IL_0010: ldc.i4.1
			IL_0011: add
			IL_0012: stloc.0

			IL_0013: ldloc.0
			IL_0014: ldarga.s buffer
			IL_0016: call instance int32 valuetype System.Span`1<uint8>::get_Length()
			IL_001b: blt.s IL_0004
		// end loop

		IL_001d: ret
	} // end of method FormattingHelpers::FillWithAsciiZeros

	.method public hidebysig static 
		void WriteDigits (
			uint64 'value',
			valuetype System.Span`1<uint8> buffer
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0xcf840
		// Code size 66 (0x42)
		.maxstack 4
		.locals (
			[0] int32,
			[1] uint64
		)

		IL_0000: ldarga.s buffer
		IL_0002: call instance int32 valuetype System.Span`1<uint8>::get_Length()
		IL_0007: ldc.i4.1
		IL_0008: sub
		IL_0009: stloc.0
		IL_000a: br.s IL_002e
		// loop start (head: IL_002e)
			IL_000c: ldc.i4.s 48
			IL_000e: conv.i8
			IL_000f: ldarg.0
			IL_0010: add
			IL_0011: stloc.1
			IL_0012: ldarg.0
			IL_0013: ldc.i4.s 10
			IL_0015: conv.i8
			IL_0016: div.un
			IL_0017: starg.s 'value'
			IL_0019: ldarga.s buffer
			IL_001b: ldloc.0
			IL_001c: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
			IL_0021: ldloc.1
			IL_0022: ldarg.0
			IL_0023: ldc.i4.s 10
			IL_0025: conv.i8
			IL_0026: mul
			IL_0027: sub
			IL_0028: conv.u1
			IL_0029: stind.i1
			IL_002a: ldloc.0
			IL_002b: ldc.i4.1
			IL_002c: sub
			IL_002d: stloc.0

			IL_002e: ldloc.0
			IL_002f: ldc.i4.1
			IL_0030: bge.s IL_000c
		// end loop

		IL_0032: ldarga.s buffer
		IL_0034: ldc.i4.0
		IL_0035: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
		IL_003a: ldc.i4.s 48
		IL_003c: conv.i8
		IL_003d: ldarg.0
		IL_003e: add
		IL_003f: conv.u1
		IL_0040: stind.i1
		IL_0041: ret
	} // end of method FormattingHelpers::WriteDigits

	.method public hidebysig static 
		void WriteDigitsWithGroupSeparator (
			uint64 'value',
			valuetype System.Span`1<uint8> buffer
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0xcf890
		// Code size 95 (0x5f)
		.maxstack 4
		.locals (
			[0] int32,
			[1] int32,
			[2] uint64
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldarga.s buffer
		IL_0004: call instance int32 valuetype System.Span`1<uint8>::get_Length()
		IL_0009: ldc.i4.1
		IL_000a: sub
		IL_000b: stloc.1
		IL_000c: br.s IL_004b
		// loop start (head: IL_004b)
			IL_000e: ldc.i4.s 48
			IL_0010: conv.i8
			IL_0011: ldarg.0
			IL_0012: add
			IL_0013: stloc.2
			IL_0014: ldarg.0
			IL_0015: ldc.i4.s 10
			IL_0017: conv.i8
			IL_0018: div.un
			IL_0019: starg.s 'value'
			IL_001b: ldarga.s buffer
			IL_001d: ldloc.1
			IL_001e: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
			IL_0023: ldloc.2
			IL_0024: ldarg.0
			IL_0025: ldc.i4.s 10
			IL_0027: conv.i8
			IL_0028: mul
			IL_0029: sub
			IL_002a: conv.u1
			IL_002b: stind.i1
			IL_002c: ldloc.0
			IL_002d: ldc.i4.2
			IL_002e: bne.un.s IL_0043

			IL_0030: ldarga.s buffer
			IL_0032: ldloc.1
			IL_0033: ldc.i4.1
			IL_0034: sub
			IL_0035: dup
			IL_0036: stloc.1
			IL_0037: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
			IL_003c: ldc.i4.s 44
			IL_003e: stind.i1
			IL_003f: ldc.i4.0
			IL_0040: stloc.0
			IL_0041: br.s IL_0047

			IL_0043: ldloc.0
			IL_0044: ldc.i4.1
			IL_0045: add
			IL_0046: stloc.0

			IL_0047: ldloc.1
			IL_0048: ldc.i4.1
			IL_0049: sub
			IL_004a: stloc.1

			IL_004b: ldloc.1
			IL_004c: ldc.i4.1
			IL_004d: bge.s IL_000e
		// end loop

		IL_004f: ldarga.s buffer
		IL_0051: ldc.i4.0
		IL_0052: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
		IL_0057: ldc.i4.s 48
		IL_0059: conv.i8
		IL_005a: ldarg.0
		IL_005b: add
		IL_005c: conv.u1
		IL_005d: stind.i1
		IL_005e: ret
	} // end of method FormattingHelpers::WriteDigitsWithGroupSeparator

	.method public hidebysig static 
		void WriteDigits (
			uint32 'value',
			valuetype System.Span`1<uint8> buffer
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0xcf8fc
		// Code size 62 (0x3e)
		.maxstack 4
		.locals (
			[0] int32,
			[1] uint32
		)

		IL_0000: ldarga.s buffer
		IL_0002: call instance int32 valuetype System.Span`1<uint8>::get_Length()
		IL_0007: ldc.i4.1
		IL_0008: sub
		IL_0009: stloc.0
		IL_000a: br.s IL_002b
		// loop start (head: IL_002b)
			IL_000c: ldc.i4.s 48
			IL_000e: ldarg.0
			IL_000f: add
			IL_0010: stloc.1
			IL_0011: ldarg.0
			IL_0012: ldc.i4.s 10
			IL_0014: div.un
			IL_0015: starg.s 'value'
			IL_0017: ldarga.s buffer
			IL_0019: ldloc.0
			IL_001a: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
			IL_001f: ldloc.1
			IL_0020: ldarg.0
			IL_0021: ldc.i4.s 10
			IL_0023: mul
			IL_0024: sub
			IL_0025: conv.u1
			IL_0026: stind.i1
			IL_0027: ldloc.0
			IL_0028: ldc.i4.1
			IL_0029: sub
			IL_002a: stloc.0

			IL_002b: ldloc.0
			IL_002c: ldc.i4.1
			IL_002d: bge.s IL_000c
		// end loop

		IL_002f: ldarga.s buffer
		IL_0031: ldc.i4.0
		IL_0032: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
		IL_0037: ldc.i4.s 48
		IL_0039: ldarg.0
		IL_003a: add
		IL_003b: conv.u1
		IL_003c: stind.i1
		IL_003d: ret
	} // end of method FormattingHelpers::WriteDigits

	.method public hidebysig static 
		void WriteFourDecimalDigits (
			uint32 'value',
			valuetype System.Span`1<uint8> buffer,
			[opt] int32 startingIndex
		) cil managed aggressiveinlining 
	{
		.param [3] = int32(0)
		// Method begins at RVA 0xcf948
		// Code size 102 (0x66)
		.maxstack 4
		.locals (
			[0] uint32
		)

		IL_0000: ldc.i4.s 48
		IL_0002: ldarg.0
		IL_0003: add
		IL_0004: stloc.0
		IL_0005: ldarg.0
		IL_0006: ldc.i4.s 10
		IL_0008: div.un
		IL_0009: starg.s 'value'
		IL_000b: ldarga.s buffer
		IL_000d: ldarg.2
		IL_000e: ldc.i4.3
		IL_000f: add
		IL_0010: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
		IL_0015: ldloc.0
		IL_0016: ldarg.0
		IL_0017: ldc.i4.s 10
		IL_0019: mul
		IL_001a: sub
		IL_001b: conv.u1
		IL_001c: stind.i1
		IL_001d: ldc.i4.s 48
		IL_001f: ldarg.0
		IL_0020: add
		IL_0021: stloc.0
		IL_0022: ldarg.0
		IL_0023: ldc.i4.s 10
		IL_0025: div.un
		IL_0026: starg.s 'value'
		IL_0028: ldarga.s buffer
		IL_002a: ldarg.2
		IL_002b: ldc.i4.2
		IL_002c: add
		IL_002d: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
		IL_0032: ldloc.0
		IL_0033: ldarg.0
		IL_0034: ldc.i4.s 10
		IL_0036: mul
		IL_0037: sub
		IL_0038: conv.u1
		IL_0039: stind.i1
		IL_003a: ldc.i4.s 48
		IL_003c: ldarg.0
		IL_003d: add
		IL_003e: stloc.0
		IL_003f: ldarg.0
		IL_0040: ldc.i4.s 10
		IL_0042: div.un
		IL_0043: starg.s 'value'
		IL_0045: ldarga.s buffer
		IL_0047: ldarg.2
		IL_0048: ldc.i4.1
		IL_0049: add
		IL_004a: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
		IL_004f: ldloc.0
		IL_0050: ldarg.0
		IL_0051: ldc.i4.s 10
		IL_0053: mul
		IL_0054: sub
		IL_0055: conv.u1
		IL_0056: stind.i1
		IL_0057: ldarga.s buffer
		IL_0059: ldarg.2
		IL_005a: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
		IL_005f: ldc.i4.s 48
		IL_0061: ldarg.0
		IL_0062: add
		IL_0063: conv.u1
		IL_0064: stind.i1
		IL_0065: ret
	} // end of method FormattingHelpers::WriteFourDecimalDigits

	.method public hidebysig static 
		void WriteTwoDecimalDigits (
			uint32 'value',
			valuetype System.Span`1<uint8> buffer,
			[opt] int32 startingIndex
		) cil managed aggressiveinlining 
	{
		.param [3] = int32(0)
		// Method begins at RVA 0xcf9bc
		// Code size 44 (0x2c)
		.maxstack 4
		.locals (
			[0] uint32
		)

		IL_0000: ldc.i4.s 48
		IL_0002: ldarg.0
		IL_0003: add
		IL_0004: stloc.0
		IL_0005: ldarg.0
		IL_0006: ldc.i4.s 10
		IL_0008: div.un
		IL_0009: starg.s 'value'
		IL_000b: ldarga.s buffer
		IL_000d: ldarg.2
		IL_000e: ldc.i4.1
		IL_000f: add
		IL_0010: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
		IL_0015: ldloc.0
		IL_0016: ldarg.0
		IL_0017: ldc.i4.s 10
		IL_0019: mul
		IL_001a: sub
		IL_001b: conv.u1
		IL_001c: stind.i1
		IL_001d: ldarga.s buffer
		IL_001f: ldarg.2
		IL_0020: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
		IL_0025: ldc.i4.s 48
		IL_0027: ldarg.0
		IL_0028: add
		IL_0029: conv.u1
		IL_002a: stind.i1
		IL_002b: ret
	} // end of method FormattingHelpers::WriteTwoDecimalDigits

	.method public hidebysig static 
		uint64 DivMod (
			uint64 numerator,
			uint64 denominator,
			[out] uint64& modulo
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x4bf54
		// Code size 13 (0xd)
		.maxstack 4
		.locals (
			[0] uint64
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: div.un
		IL_0003: stloc.0
		IL_0004: ldarg.2
		IL_0005: ldarg.0
		IL_0006: ldloc.0
		IL_0007: ldarg.1
		IL_0008: mul
		IL_0009: sub
		IL_000a: stind.i8
		IL_000b: ldloc.0
		IL_000c: ret
	} // end of method FormattingHelpers::DivMod

	.method public hidebysig static 
		uint32 DivMod (
			uint32 numerator,
			uint32 denominator,
			[out] uint32& modulo
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x4bf38
		// Code size 13 (0xd)
		.maxstack 4
		.locals (
			[0] uint32
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: div.un
		IL_0003: stloc.0
		IL_0004: ldarg.2
		IL_0005: ldarg.0
		IL_0006: ldloc.0
		IL_0007: ldarg.1
		IL_0008: mul
		IL_0009: sub
		IL_000a: stind.i4
		IL_000b: ldloc.0
		IL_000c: ret
	} // end of method FormattingHelpers::DivMod

	.method public hidebysig static 
		bool TryFormatThrowFormatException (
			[out] int32& bytesWritten
		) cil managed 
	{
		// Method begins at RVA 0xcf9f4
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: stind.i4
		IL_0003: call void System.ThrowHelper::ThrowFormatException_BadFormatSpecifier()
		IL_0008: ldc.i4.0
		IL_0009: ret
	} // end of method FormattingHelpers::TryFormatThrowFormatException

} // end of class System.Buffers.Text.FormattingHelpers