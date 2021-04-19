.class private auto ansi abstract sealed beforefieldinit System.Number
	extends System.Object
{
	// Nested Types
	.class nested assembly sequential ansi sealed beforefieldinit BigInteger
		extends System.ValueType
	{
		.custom instance void System.Runtime.CompilerServices.IsByRefLikeAttribute::.ctor() = (
			01 00 00 00
		)
		.custom instance void System.ObsoleteAttribute::.ctor(string, bool) = (
			01 00 52 54 79 70 65 73 20 77 69 74 68 20 65 6d
			62 65 64 64 65 64 20 72 65 66 65 72 65 6e 63 65
			73 20 61 72 65 20 6e 6f 74 20 73 75 70 70 6f 72
			74 65 64 20 69 6e 20 74 68 69 73 20 76 65 72 73
			69 6f 6e 20 6f 66 20 79 6f 75 72 20 63 6f 6d 70
			69 6c 65 72 2e 01 00 00
		)
		.pack 1
		.size 0

		// Nested Types
		.class nested public sequential ansi sealed beforefieldinit '<_blocks>e__FixedBuffer'
			extends System.ValueType
		{
			.custom instance void System.Runtime.CompilerServices.UnsafeValueTypeAttribute::.ctor() = (
				01 00 00 00
			)
			.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
				01 00 00 00
			)
			.pack 0
			.size 460

			// Fields
			.field public uint32 FixedElementField

		} // end of class <_blocks>e__FixedBuffer


		// Fields
		.field private static initonly uint32[] s_Pow10UInt32Table
		.field private static initonly int32[] s_Pow10BigNumTableIndices
		.field private static initonly uint32[] s_Pow10BigNumTable
		.field private int32 _length
		.field private valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' _blocks
		.custom instance void System.Runtime.CompilerServices.FixedBufferAttribute::.ctor(class System.Type, int32) = (
			01 00 0d 53 79 73 74 65 6d 2e 55 49 6e 74 33 32
			73 00 00 00 00 00
		)

		// Methods
		.method public hidebysig static 
			void Add (
				valuetype System.Number/BigInteger& lhs,
				valuetype System.Number/BigInteger& rhs,
				[out] valuetype System.Number/BigInteger& result
			) cil managed 
		{
			// Method begins at RVA 0x79ad8
			// Code size 275 (0x113)
			.maxstack 4
			.locals (
				[0] valuetype System.Number/BigInteger&,
				[1] valuetype System.Number/BigInteger&,
				[2] int32,
				[3] int32,
				[4] uint64,
				[5] int32,
				[6] int32,
				[7] int32,
				[8] uint64,
				[9] uint64
			)

			IL_0000: ldarg.0
			IL_0001: ldfld int32 System.Number/BigInteger::_length
			IL_0006: ldarg.1
			IL_0007: ldfld int32 System.Number/BigInteger::_length
			IL_000c: blt.s IL_0011

			IL_000e: ldarg.0
			IL_000f: br.s IL_0012

			IL_0011: ldarg.1

			IL_0012: stloc.0
			IL_0013: ldarg.0
			IL_0014: ldfld int32 System.Number/BigInteger::_length
			IL_0019: ldarg.1
			IL_001a: ldfld int32 System.Number/BigInteger::_length
			IL_001f: blt.s IL_0024

			IL_0021: ldarg.1
			IL_0022: br.s IL_0025

			IL_0024: ldarg.0

			IL_0025: stloc.1
			IL_0026: ldloc.0
			IL_0027: ldfld int32 System.Number/BigInteger::_length
			IL_002c: stloc.2
			IL_002d: ldloc.1
			IL_002e: ldfld int32 System.Number/BigInteger::_length
			IL_0033: stloc.3
			IL_0034: ldarg.2
			IL_0035: ldloc.2
			IL_0036: stfld int32 System.Number/BigInteger::_length
			IL_003b: ldc.i4.0
			IL_003c: conv.i8
			IL_003d: stloc.s 4
			IL_003f: ldc.i4.0
			IL_0040: stloc.s 5
			IL_0042: ldc.i4.0
			IL_0043: stloc.s 6
			IL_0045: ldc.i4.0
			IL_0046: stloc.s 7
			IL_0048: br.s IL_00a4
			// loop start (head: IL_00a4)
				IL_004a: ldloc.s 4
				IL_004c: ldloc.0
				IL_004d: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_0052: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_0057: ldloc.s 5
				IL_0059: conv.i
				IL_005a: ldc.i4.4
				IL_005b: mul
				IL_005c: add
				IL_005d: ldind.u4
				IL_005e: conv.u8
				IL_005f: add
				IL_0060: ldloc.1
				IL_0061: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_0066: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_006b: ldloc.s 6
				IL_006d: conv.i
				IL_006e: ldc.i4.4
				IL_006f: mul
				IL_0070: add
				IL_0071: ldind.u4
				IL_0072: conv.u8
				IL_0073: add
				IL_0074: stloc.s 8
				IL_0076: ldloc.s 8
				IL_0078: ldc.i4.s 32
				IL_007a: shr.un
				IL_007b: stloc.s 4
				IL_007d: ldarg.2
				IL_007e: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_0083: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_0088: ldloc.s 7
				IL_008a: conv.i
				IL_008b: ldc.i4.4
				IL_008c: mul
				IL_008d: add
				IL_008e: ldloc.s 8
				IL_0090: conv.u4
				IL_0091: stind.i4
				IL_0092: ldloc.s 5
				IL_0094: ldc.i4.1
				IL_0095: add
				IL_0096: stloc.s 5
				IL_0098: ldloc.s 6
				IL_009a: ldc.i4.1
				IL_009b: add
				IL_009c: stloc.s 6
				IL_009e: ldloc.s 7
				IL_00a0: ldc.i4.1
				IL_00a1: add
				IL_00a2: stloc.s 7

				IL_00a4: ldloc.s 6
				IL_00a6: ldloc.3
				IL_00a7: blt.s IL_004a
			// end loop

			IL_00a9: br.s IL_00eb
			// loop start (head: IL_00eb)
				IL_00ab: ldloc.s 4
				IL_00ad: ldloc.0
				IL_00ae: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_00b3: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_00b8: ldloc.s 5
				IL_00ba: conv.i
				IL_00bb: ldc.i4.4
				IL_00bc: mul
				IL_00bd: add
				IL_00be: ldind.u4
				IL_00bf: conv.u8
				IL_00c0: add
				IL_00c1: stloc.s 9
				IL_00c3: ldloc.s 9
				IL_00c5: ldc.i4.s 32
				IL_00c7: shr.un
				IL_00c8: stloc.s 4
				IL_00ca: ldarg.2
				IL_00cb: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_00d0: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_00d5: ldloc.s 7
				IL_00d7: conv.i
				IL_00d8: ldc.i4.4
				IL_00d9: mul
				IL_00da: add
				IL_00db: ldloc.s 9
				IL_00dd: conv.u4
				IL_00de: stind.i4
				IL_00df: ldloc.s 5
				IL_00e1: ldc.i4.1
				IL_00e2: add
				IL_00e3: stloc.s 5
				IL_00e5: ldloc.s 7
				IL_00e7: ldc.i4.1
				IL_00e8: add
				IL_00e9: stloc.s 7

				IL_00eb: ldloc.s 5
				IL_00ed: ldloc.2
				IL_00ee: blt.s IL_00ab
			// end loop

			IL_00f0: ldloc.s 4
			IL_00f2: brfalse.s IL_0112

			IL_00f4: ldarg.2
			IL_00f5: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_00fa: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_00ff: ldloc.s 7
			IL_0101: conv.i
			IL_0102: ldc.i4.4
			IL_0103: mul
			IL_0104: add
			IL_0105: ldc.i4.1
			IL_0106: stind.i4
			IL_0107: ldarg.2
			IL_0108: ldflda int32 System.Number/BigInteger::_length
			IL_010d: dup
			IL_010e: ldind.i4
			IL_010f: ldc.i4.1
			IL_0110: add
			IL_0111: stind.i4

			IL_0112: ret
		} // end of method BigInteger::Add

		.method public hidebysig static 
			int32 Compare (
				valuetype System.Number/BigInteger& lhs,
				valuetype System.Number/BigInteger& rhs
			) cil managed 
		{
			// Method begins at RVA 0x79bf8
			// Code size 97 (0x61)
			.maxstack 4
			.locals (
				[0] int32,
				[1] int32,
				[2] int32,
				[3] int32,
				[4] int64
			)

			IL_0000: ldarg.0
			IL_0001: ldfld int32 System.Number/BigInteger::_length
			IL_0006: stloc.0
			IL_0007: ldarg.1
			IL_0008: ldfld int32 System.Number/BigInteger::_length
			IL_000d: stloc.1
			IL_000e: ldloc.0
			IL_000f: ldloc.1
			IL_0010: sub
			IL_0011: stloc.2
			IL_0012: ldloc.2
			IL_0013: brfalse.s IL_0017

			IL_0015: ldloc.2
			IL_0016: ret

			IL_0017: ldloc.0
			IL_0018: brtrue.s IL_001c

			IL_001a: ldc.i4.0
			IL_001b: ret

			IL_001c: ldloc.0
			IL_001d: ldc.i4.1
			IL_001e: sub
			IL_001f: stloc.3
			IL_0020: br.s IL_005b
			// loop start (head: IL_005b)
				IL_0022: ldarg.0
				IL_0023: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_0028: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_002d: ldloc.3
				IL_002e: conv.i
				IL_002f: ldc.i4.4
				IL_0030: mul
				IL_0031: add
				IL_0032: ldind.u4
				IL_0033: conv.u8
				IL_0034: ldarg.1
				IL_0035: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_003a: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_003f: ldloc.3
				IL_0040: conv.i
				IL_0041: ldc.i4.4
				IL_0042: mul
				IL_0043: add
				IL_0044: ldind.u4
				IL_0045: conv.u8
				IL_0046: sub
				IL_0047: stloc.s 4
				IL_0049: ldloc.s 4
				IL_004b: brfalse.s IL_0057

				IL_004d: ldloc.s 4
				IL_004f: ldc.i4.0
				IL_0050: conv.i8
				IL_0051: bgt.s IL_0055

				IL_0053: ldc.i4.m1
				IL_0054: ret

				IL_0055: ldc.i4.1
				IL_0056: ret

				IL_0057: ldloc.3
				IL_0058: ldc.i4.1
				IL_0059: sub
				IL_005a: stloc.3

				IL_005b: ldloc.3
				IL_005c: ldc.i4.0
				IL_005d: bge.s IL_0022
			// end loop

			IL_005f: ldc.i4.0
			IL_0060: ret
		} // end of method BigInteger::Compare

		.method public hidebysig static 
			uint32 CountSignificantBits (
				uint32 'value'
			) cil managed 
		{
			// Method begins at RVA 0x79c65
			// Code size 10 (0xa)
			.maxstack 8

			IL_0000: ldc.i4.s 32
			IL_0002: ldarg.0
			IL_0003: call int32 System.Numerics.BitOperations::LeadingZeroCount(uint32)
			IL_0008: sub
			IL_0009: ret
		} // end of method BigInteger::CountSignificantBits

		.method public hidebysig static 
			uint32 CountSignificantBits (
				uint64 'value'
			) cil managed 
		{
			// Method begins at RVA 0x79c70
			// Code size 10 (0xa)
			.maxstack 8

			IL_0000: ldc.i4.s 64
			IL_0002: ldarg.0
			IL_0003: call int32 System.Numerics.BitOperations::LeadingZeroCount(uint64)
			IL_0008: sub
			IL_0009: ret
		} // end of method BigInteger::CountSignificantBits

		.method public hidebysig static 
			uint32 CountSignificantBits (
				valuetype System.Number/BigInteger& 'value'
			) cil managed 
		{
			// Method begins at RVA 0x79c7c
			// Code size 49 (0x31)
			.maxstack 4
			.locals (
				[0] uint32
			)

			IL_0000: ldarg.0
			IL_0001: call instance bool System.Number/BigInteger::IsZero()
			IL_0006: brfalse.s IL_000a

			IL_0008: ldc.i4.0
			IL_0009: ret

			IL_000a: ldarg.0
			IL_000b: ldfld int32 System.Number/BigInteger::_length
			IL_0010: ldc.i4.1
			IL_0011: sub
			IL_0012: stloc.0
			IL_0013: ldloc.0
			IL_0014: ldc.i4.s 32
			IL_0016: mul
			IL_0017: ldarg.0
			IL_0018: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_001d: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_0022: ldloc.0
			IL_0023: conv.u8
			IL_0024: ldc.i4.4
			IL_0025: conv.i8
			IL_0026: mul
			IL_0027: conv.i
			IL_0028: add
			IL_0029: ldind.u4
			IL_002a: call uint32 System.Number/BigInteger::CountSignificantBits(uint32)
			IL_002f: add
			IL_0030: ret
		} // end of method BigInteger::CountSignificantBits

		.method public hidebysig static 
			void DivRem (
				valuetype System.Number/BigInteger& lhs,
				valuetype System.Number/BigInteger& rhs,
				[out] valuetype System.Number/BigInteger& quo,
				[out] valuetype System.Number/BigInteger& 'rem'
			) cil managed 
		{
			// Method begins at RVA 0x79cbc
			// Code size 791 (0x317)
			.maxstack 5
			.locals (
				[0] int32,
				[1] int32,
				[2] uint32,
				[3] uint32,
				[4] int32,
				[5] uint64,
				[6] uint64,
				[7] int32,
				[8] uint64,
				[9] uint64,
				[10] int32,
				[11] int32,
				[12] uint32,
				[13] uint32,
				[14] int32,
				[15] int32,
				[16] int32,
				[17] int32,
				[18] uint32,
				[19] uint64,
				[20] uint32,
				[21] uint64,
				[22] uint32,
				[23] int32
			)

			IL_0000: ldarg.0
			IL_0001: call instance bool System.Number/BigInteger::IsZero()
			IL_0006: brfalse.s IL_0015

			IL_0008: ldarg.2
			IL_0009: call void System.Number/BigInteger::SetZero(valuetype System.Number/BigInteger&)
			IL_000e: ldarg.3
			IL_000f: call void System.Number/BigInteger::SetZero(valuetype System.Number/BigInteger&)
			IL_0014: ret

			IL_0015: ldarg.0
			IL_0016: ldfld int32 System.Number/BigInteger::_length
			IL_001b: stloc.0
			IL_001c: ldarg.1
			IL_001d: ldfld int32 System.Number/BigInteger::_length
			IL_0022: stloc.1
			IL_0023: ldloc.0
			IL_0024: ldc.i4.1
			IL_0025: bne.un.s IL_005a

			IL_0027: ldloc.1
			IL_0028: ldc.i4.1
			IL_0029: bne.un.s IL_005a

			IL_002b: ldarg.0
			IL_002c: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_0031: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_0036: ldind.u4
			IL_0037: ldarg.1
			IL_0038: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_003d: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_0042: ldind.u4
			IL_0043: ldloca.s 3
			IL_0045: call uint32 System.Math::DivRem(uint32, uint32, uint32&)
			IL_004a: stloc.2
			IL_004b: ldarg.2
			IL_004c: ldloc.2
			IL_004d: call void System.Number/BigInteger::SetUInt32(valuetype System.Number/BigInteger&, uint32)
			IL_0052: ldarg.3
			IL_0053: ldloc.3
			IL_0054: call void System.Number/BigInteger::SetUInt32(valuetype System.Number/BigInteger&, uint32)
			IL_0059: ret

			IL_005a: ldloc.1
			IL_005b: ldc.i4.1
			IL_005c: bne.un IL_00ed

			IL_0061: ldloc.0
			IL_0062: stloc.s 4
			IL_0064: ldarg.1
			IL_0065: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_006a: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_006f: ldind.u4
			IL_0070: conv.u8
			IL_0071: stloc.s 5
			IL_0073: ldc.i4.0
			IL_0074: conv.i8
			IL_0075: stloc.s 6
			IL_0077: ldloc.s 4
			IL_0079: ldc.i4.1
			IL_007a: sub
			IL_007b: stloc.s 7
			IL_007d: br.s IL_00d6
			// loop start (head: IL_00d6)
				IL_007f: ldloc.s 6
				IL_0081: ldc.i4.s 32
				IL_0083: shl
				IL_0084: ldarg.0
				IL_0085: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_008a: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_008f: ldloc.s 7
				IL_0091: conv.i
				IL_0092: ldc.i4.4
				IL_0093: mul
				IL_0094: add
				IL_0095: ldind.u4
				IL_0096: conv.u8
				IL_0097: or
				IL_0098: stloc.s 8
				IL_009a: ldloc.s 8
				IL_009c: ldloc.s 5
				IL_009e: ldloca.s 6
				IL_00a0: call uint64 System.Math::DivRem(uint64, uint64, uint64&)
				IL_00a5: stloc.s 9
				IL_00a7: ldloc.s 9
				IL_00a9: brtrue.s IL_00bb

				IL_00ab: ldloc.s 7
				IL_00ad: ldloc.s 4
				IL_00af: ldc.i4.1
				IL_00b0: sub
				IL_00b1: bne.un.s IL_00bb

				IL_00b3: ldloc.s 4
				IL_00b5: ldc.i4.1
				IL_00b6: sub
				IL_00b7: stloc.s 4
				IL_00b9: br.s IL_00d0

				IL_00bb: ldarg.2
				IL_00bc: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_00c1: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_00c6: ldloc.s 7
				IL_00c8: conv.i
				IL_00c9: ldc.i4.4
				IL_00ca: mul
				IL_00cb: add
				IL_00cc: ldloc.s 9
				IL_00ce: conv.u4
				IL_00cf: stind.i4

				IL_00d0: ldloc.s 7
				IL_00d2: ldc.i4.1
				IL_00d3: sub
				IL_00d4: stloc.s 7

				IL_00d6: ldloc.s 7
				IL_00d8: ldc.i4.0
				IL_00d9: bge.s IL_007f
			// end loop

			IL_00db: ldarg.2
			IL_00dc: ldloc.s 4
			IL_00de: stfld int32 System.Number/BigInteger::_length
			IL_00e3: ldarg.3
			IL_00e4: ldloc.s 6
			IL_00e6: conv.u4
			IL_00e7: call void System.Number/BigInteger::SetUInt32(valuetype System.Number/BigInteger&, uint32)
			IL_00ec: ret

			IL_00ed: ldloc.1
			IL_00ee: ldloc.0
			IL_00ef: ble.s IL_00ff

			IL_00f1: ldarg.2
			IL_00f2: call void System.Number/BigInteger::SetZero(valuetype System.Number/BigInteger&)
			IL_00f7: ldarg.3
			IL_00f8: ldarg.0
			IL_00f9: call void System.Number/BigInteger::SetValue(valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&)
			IL_00fe: ret

			IL_00ff: ldloc.0
			IL_0100: ldloc.1
			IL_0101: sub
			IL_0102: ldc.i4.1
			IL_0103: add
			IL_0104: stloc.s 10
			IL_0106: ldarg.3
			IL_0107: ldarg.0
			IL_0108: call void System.Number/BigInteger::SetValue(valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&)
			IL_010d: ldloc.0
			IL_010e: stloc.s 11
			IL_0110: ldarg.1
			IL_0111: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_0116: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_011b: ldloc.1
			IL_011c: ldc.i4.1
			IL_011d: sub
			IL_011e: conv.i
			IL_011f: ldc.i4.4
			IL_0120: mul
			IL_0121: add
			IL_0122: ldind.u4
			IL_0123: stloc.s 12
			IL_0125: ldarg.1
			IL_0126: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_012b: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_0130: ldloc.1
			IL_0131: ldc.i4.2
			IL_0132: sub
			IL_0133: conv.i
			IL_0134: ldc.i4.4
			IL_0135: mul
			IL_0136: add
			IL_0137: ldind.u4
			IL_0138: stloc.s 13
			IL_013a: ldloc.s 12
			IL_013c: call int32 System.Numerics.BitOperations::LeadingZeroCount(uint32)
			IL_0141: stloc.s 14
			IL_0143: ldc.i4.s 32
			IL_0145: ldloc.s 14
			IL_0147: sub
			IL_0148: stloc.s 15
			IL_014a: ldloc.s 14
			IL_014c: ldc.i4.0
			IL_014d: ble.s IL_018e

			IL_014f: ldloc.s 12
			IL_0151: ldloc.s 14
			IL_0153: ldc.i4.s 31
			IL_0155: and
			IL_0156: shl
			IL_0157: ldloc.s 13
			IL_0159: ldloc.s 15
			IL_015b: ldc.i4.s 31
			IL_015d: and
			IL_015e: shr.un
			IL_015f: or
			IL_0160: stloc.s 12
			IL_0162: ldloc.s 13
			IL_0164: ldloc.s 14
			IL_0166: ldc.i4.s 31
			IL_0168: and
			IL_0169: shl
			IL_016a: stloc.s 13
			IL_016c: ldloc.1
			IL_016d: ldc.i4.2
			IL_016e: ble.s IL_018e

			IL_0170: ldloc.s 13
			IL_0172: ldarg.1
			IL_0173: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_0178: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_017d: ldloc.1
			IL_017e: ldc.i4.3
			IL_017f: sub
			IL_0180: conv.i
			IL_0181: ldc.i4.4
			IL_0182: mul
			IL_0183: add
			IL_0184: ldind.u4
			IL_0185: ldloc.s 15
			IL_0187: ldc.i4.s 31
			IL_0189: and
			IL_018a: shr.un
			IL_018b: or
			IL_018c: stloc.s 13

			IL_018e: ldloc.0
			IL_018f: stloc.s 16
			IL_0191: br IL_02d1
			// loop start (head: IL_02d1)
				IL_0196: ldloc.s 16
				IL_0198: ldloc.1
				IL_0199: sub
				IL_019a: stloc.s 17
				IL_019c: ldloc.s 16
				IL_019e: ldloc.0
				IL_019f: blt.s IL_01a4

				IL_01a1: ldc.i4.0
				IL_01a2: br.s IL_01b6

				IL_01a4: ldarg.3
				IL_01a5: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_01aa: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_01af: ldloc.s 16
				IL_01b1: conv.i
				IL_01b2: ldc.i4.4
				IL_01b3: mul
				IL_01b4: add
				IL_01b5: ldind.u4

				IL_01b6: stloc.s 18
				IL_01b8: ldloc.s 18
				IL_01ba: conv.u8
				IL_01bb: ldc.i4.s 32
				IL_01bd: shl
				IL_01be: ldarg.3
				IL_01bf: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_01c4: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_01c9: ldloc.s 16
				IL_01cb: ldc.i4.1
				IL_01cc: sub
				IL_01cd: conv.i
				IL_01ce: ldc.i4.4
				IL_01cf: mul
				IL_01d0: add
				IL_01d1: ldind.u4
				IL_01d2: conv.u8
				IL_01d3: or
				IL_01d4: stloc.s 19
				IL_01d6: ldloc.s 16
				IL_01d8: ldc.i4.1
				IL_01d9: bgt.s IL_01de

				IL_01db: ldc.i4.0
				IL_01dc: br.s IL_01f2

				IL_01de: ldarg.3
				IL_01df: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_01e4: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_01e9: ldloc.s 16
				IL_01eb: ldc.i4.2
				IL_01ec: sub
				IL_01ed: conv.i
				IL_01ee: ldc.i4.4
				IL_01ef: mul
				IL_01f0: add
				IL_01f1: ldind.u4

				IL_01f2: stloc.s 20
				IL_01f4: ldloc.s 14
				IL_01f6: ldc.i4.0
				IL_01f7: ble.s IL_023b

				IL_01f9: ldloc.s 19
				IL_01fb: ldloc.s 14
				IL_01fd: ldc.i4.s 63
				IL_01ff: and
				IL_0200: shl
				IL_0201: ldloc.s 20
				IL_0203: ldloc.s 15
				IL_0205: ldc.i4.s 31
				IL_0207: and
				IL_0208: shr.un
				IL_0209: conv.u8
				IL_020a: or
				IL_020b: stloc.s 19
				IL_020d: ldloc.s 20
				IL_020f: ldloc.s 14
				IL_0211: ldc.i4.s 31
				IL_0213: and
				IL_0214: shl
				IL_0215: stloc.s 20
				IL_0217: ldloc.s 16
				IL_0219: ldc.i4.2
				IL_021a: ble.s IL_023b

				IL_021c: ldloc.s 20
				IL_021e: ldarg.3
				IL_021f: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_0224: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_0229: ldloc.s 16
				IL_022b: ldc.i4.3
				IL_022c: sub
				IL_022d: conv.i
				IL_022e: ldc.i4.4
				IL_022f: mul
				IL_0230: add
				IL_0231: ldind.u4
				IL_0232: ldloc.s 15
				IL_0234: ldc.i4.s 31
				IL_0236: and
				IL_0237: shr.un
				IL_0238: or
				IL_0239: stloc.s 20

				IL_023b: ldloc.s 19
				IL_023d: ldloc.s 12
				IL_023f: conv.u8
				IL_0240: div.un
				IL_0241: stloc.s 21
				IL_0243: ldloc.s 21
				IL_0245: ldc.i4.m1
				IL_0246: conv.u8
				IL_0247: ble.un.s IL_0256

				IL_0249: ldc.i4.m1
				IL_024a: conv.u8
				IL_024b: stloc.s 21
				IL_024d: br.s IL_0256
				// loop start (head: IL_0256)
					IL_024f: ldloc.s 21
					IL_0251: ldc.i4.1
					IL_0252: conv.i8
					IL_0253: sub
					IL_0254: stloc.s 21

					IL_0256: ldloc.s 21
					IL_0258: ldloc.s 19
					IL_025a: ldloc.s 20
					IL_025c: ldloc.s 12
					IL_025e: ldloc.s 13
					IL_0260: call bool System.Number/BigInteger::DivideGuessTooBig(uint64, uint64, uint32, uint32, uint32)
					IL_0265: brtrue.s IL_024f
				// end loop

				IL_0267: ldloc.s 21
				IL_0269: ldc.i4.0
				IL_026a: conv.i8
				IL_026b: ble.un.s IL_0292

				IL_026d: ldarg.3
				IL_026e: ldloc.s 17
				IL_0270: ldarg.1
				IL_0271: ldloc.s 21
				IL_0273: call uint32 System.Number/BigInteger::SubtractDivisor(valuetype System.Number/BigInteger&, int32, valuetype System.Number/BigInteger&, uint64)
				IL_0278: stloc.s 22
				IL_027a: ldloc.s 22
				IL_027c: ldloc.s 18
				IL_027e: beq.s IL_0292

				IL_0280: ldarg.3
				IL_0281: ldloc.s 17
				IL_0283: ldarg.1
				IL_0284: call uint32 System.Number/BigInteger::AddDivisor(valuetype System.Number/BigInteger&, int32, valuetype System.Number/BigInteger&)
				IL_0289: stloc.s 22
				IL_028b: ldloc.s 21
				IL_028d: ldc.i4.1
				IL_028e: conv.i8
				IL_028f: sub
				IL_0290: stloc.s 21

				IL_0292: ldloc.s 10
				IL_0294: brfalse.s IL_02bf

				IL_0296: ldloc.s 21
				IL_0298: brtrue.s IL_02aa

				IL_029a: ldloc.s 17
				IL_029c: ldloc.s 10
				IL_029e: ldc.i4.1
				IL_029f: sub
				IL_02a0: bne.un.s IL_02aa

				IL_02a2: ldloc.s 10
				IL_02a4: ldc.i4.1
				IL_02a5: sub
				IL_02a6: stloc.s 10
				IL_02a8: br.s IL_02bf

				IL_02aa: ldarg.2
				IL_02ab: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_02b0: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_02b5: ldloc.s 17
				IL_02b7: conv.i
				IL_02b8: ldc.i4.4
				IL_02b9: mul
				IL_02ba: add
				IL_02bb: ldloc.s 21
				IL_02bd: conv.u4
				IL_02be: stind.i4

				IL_02bf: ldloc.s 16
				IL_02c1: ldloc.s 11
				IL_02c3: bge.s IL_02cb

				IL_02c5: ldloc.s 11
				IL_02c7: ldc.i4.1
				IL_02c8: sub
				IL_02c9: stloc.s 11

				IL_02cb: ldloc.s 16
				IL_02cd: ldc.i4.1
				IL_02ce: sub
				IL_02cf: stloc.s 16

				IL_02d1: ldloc.s 16
				IL_02d3: ldloc.1
				IL_02d4: bge IL_0196
			// end loop

			IL_02d9: ldarg.2
			IL_02da: ldloc.s 10
			IL_02dc: stfld int32 System.Number/BigInteger::_length
			IL_02e1: ldloc.s 11
			IL_02e3: ldc.i4.1
			IL_02e4: sub
			IL_02e5: stloc.s 23
			IL_02e7: br.s IL_0309
			// loop start (head: IL_0309)
				IL_02e9: ldarg.3
				IL_02ea: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_02ef: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_02f4: ldloc.s 23
				IL_02f6: conv.i
				IL_02f7: ldc.i4.4
				IL_02f8: mul
				IL_02f9: add
				IL_02fa: ldind.u4
				IL_02fb: brtrue.s IL_0303

				IL_02fd: ldloc.s 11
				IL_02ff: ldc.i4.1
				IL_0300: sub
				IL_0301: stloc.s 11

				IL_0303: ldloc.s 23
				IL_0305: ldc.i4.1
				IL_0306: sub
				IL_0307: stloc.s 23

				IL_0309: ldloc.s 23
				IL_030b: ldc.i4.0
				IL_030c: bge.s IL_02e9
			// end loop

			IL_030e: ldarg.3
			IL_030f: ldloc.s 11
			IL_0311: stfld int32 System.Number/BigInteger::_length
			IL_0316: ret
		} // end of method BigInteger::DivRem

		.method public hidebysig static 
			uint32 HeuristicDivide (
				valuetype System.Number/BigInteger& dividend,
				valuetype System.Number/BigInteger& divisor
			) cil managed 
		{
			// Method begins at RVA 0x79fe0
			// Code size 363 (0x16b)
			.maxstack 4
			.locals (
				[0] int32,
				[1] int32,
				[2] uint32,
				[3] int32,
				[4] uint64,
				[5] uint64,
				[6] uint64,
				[7] uint64,
				[8] int32,
				[9] uint64,
				[10] uint64
			)

			IL_0000: ldarg.1
			IL_0001: ldfld int32 System.Number/BigInteger::_length
			IL_0006: stloc.0
			IL_0007: ldarg.0
			IL_0008: ldfld int32 System.Number/BigInteger::_length
			IL_000d: ldloc.0
			IL_000e: bge.s IL_0012

			IL_0010: ldc.i4.0
			IL_0011: ret

			IL_0012: ldloc.0
			IL_0013: ldc.i4.1
			IL_0014: sub
			IL_0015: stloc.1
			IL_0016: ldarg.0
			IL_0017: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_001c: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_0021: ldloc.1
			IL_0022: conv.i
			IL_0023: ldc.i4.4
			IL_0024: mul
			IL_0025: add
			IL_0026: ldind.u4
			IL_0027: ldarg.1
			IL_0028: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_002d: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_0032: ldloc.1
			IL_0033: conv.i
			IL_0034: ldc.i4.4
			IL_0035: mul
			IL_0036: add
			IL_0037: ldind.u4
			IL_0038: ldc.i4.1
			IL_0039: add
			IL_003a: div.un
			IL_003b: stloc.2
			IL_003c: ldloc.2
			IL_003d: brfalse IL_00d5

			IL_0042: ldc.i4.0
			IL_0043: stloc.3
			IL_0044: ldc.i4.0
			IL_0045: conv.i8
			IL_0046: stloc.s 4
			IL_0048: ldc.i4.0
			IL_0049: conv.i8
			IL_004a: stloc.s 5
			// loop start (head: IL_004c)
				IL_004c: ldarg.1
				IL_004d: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_0052: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_0057: ldloc.3
				IL_0058: conv.i
				IL_0059: ldc.i4.4
				IL_005a: mul
				IL_005b: add
				IL_005c: ldind.u4
				IL_005d: conv.u8
				IL_005e: ldloc.2
				IL_005f: conv.u8
				IL_0060: mul
				IL_0061: ldloc.s 5
				IL_0063: add
				IL_0064: stloc.s 6
				IL_0066: ldloc.s 6
				IL_0068: ldc.i4.s 32
				IL_006a: shr.un
				IL_006b: stloc.s 5
				IL_006d: ldarg.0
				IL_006e: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_0073: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_0078: ldloc.3
				IL_0079: conv.i
				IL_007a: ldc.i4.4
				IL_007b: mul
				IL_007c: add
				IL_007d: ldind.u4
				IL_007e: conv.u8
				IL_007f: ldloc.s 6
				IL_0081: conv.u4
				IL_0082: conv.u8
				IL_0083: sub
				IL_0084: ldloc.s 4
				IL_0086: sub
				IL_0087: stloc.s 7
				IL_0089: ldloc.s 7
				IL_008b: ldc.i4.s 32
				IL_008d: shr.un
				IL_008e: ldc.i4.1
				IL_008f: conv.i8
				IL_0090: and
				IL_0091: stloc.s 4
				IL_0093: ldarg.0
				IL_0094: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_0099: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_009e: ldloc.3
				IL_009f: conv.i
				IL_00a0: ldc.i4.4
				IL_00a1: mul
				IL_00a2: add
				IL_00a3: ldloc.s 7
				IL_00a5: conv.u4
				IL_00a6: stind.i4
				IL_00a7: ldloc.3
				IL_00a8: ldc.i4.1
				IL_00a9: add
				IL_00aa: stloc.3
				IL_00ab: ldloc.3
				IL_00ac: ldloc.0
				IL_00ad: blt.s IL_004c
			// end loop
			IL_00af: br.s IL_00b5
			// loop start (head: IL_00b5)
				IL_00b1: ldloc.0
				IL_00b2: ldc.i4.1
				IL_00b3: sub
				IL_00b4: stloc.0

				IL_00b5: ldloc.0
				IL_00b6: ldc.i4.0
				IL_00b7: ble.s IL_00ce

				IL_00b9: ldarg.0
				IL_00ba: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_00bf: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_00c4: ldloc.0
				IL_00c5: ldc.i4.1
				IL_00c6: sub
				IL_00c7: conv.i
				IL_00c8: ldc.i4.4
				IL_00c9: mul
				IL_00ca: add
				IL_00cb: ldind.u4
				IL_00cc: brfalse.s IL_00b1
			// end loop

			IL_00ce: ldarg.0
			IL_00cf: ldloc.0
			IL_00d0: stfld int32 System.Number/BigInteger::_length

			IL_00d5: ldarg.0
			IL_00d6: ldarg.1
			IL_00d7: call int32 System.Number/BigInteger::Compare(valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&)
			IL_00dc: ldc.i4.0
			IL_00dd: blt IL_0169

			IL_00e2: ldloc.2
			IL_00e3: ldc.i4.1
			IL_00e4: add
			IL_00e5: stloc.2
			IL_00e6: ldc.i4.0
			IL_00e7: stloc.s 8
			IL_00e9: ldc.i4.0
			IL_00ea: conv.i8
			IL_00eb: stloc.s 9
			// loop start (head: IL_00ed)
				IL_00ed: ldarg.0
				IL_00ee: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_00f3: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_00f8: ldloc.s 8
				IL_00fa: conv.i
				IL_00fb: ldc.i4.4
				IL_00fc: mul
				IL_00fd: add
				IL_00fe: ldind.u4
				IL_00ff: conv.u8
				IL_0100: ldarg.1
				IL_0101: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_0106: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_010b: ldloc.s 8
				IL_010d: conv.i
				IL_010e: ldc.i4.4
				IL_010f: mul
				IL_0110: add
				IL_0111: ldind.u4
				IL_0112: conv.u8
				IL_0113: sub
				IL_0114: ldloc.s 9
				IL_0116: sub
				IL_0117: stloc.s 10
				IL_0119: ldloc.s 10
				IL_011b: ldc.i4.s 32
				IL_011d: shr.un
				IL_011e: ldc.i4.1
				IL_011f: conv.i8
				IL_0120: and
				IL_0121: stloc.s 9
				IL_0123: ldarg.0
				IL_0124: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_0129: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_012e: ldloc.s 8
				IL_0130: conv.i
				IL_0131: ldc.i4.4
				IL_0132: mul
				IL_0133: add
				IL_0134: ldloc.s 10
				IL_0136: conv.u4
				IL_0137: stind.i4
				IL_0138: ldloc.s 8
				IL_013a: ldc.i4.1
				IL_013b: add
				IL_013c: stloc.s 8
				IL_013e: ldloc.s 8
				IL_0140: ldloc.0
				IL_0141: blt.s IL_00ed
			// end loop
			IL_0143: br.s IL_0149
			// loop start (head: IL_0149)
				IL_0145: ldloc.0
				IL_0146: ldc.i4.1
				IL_0147: sub
				IL_0148: stloc.0

				IL_0149: ldloc.0
				IL_014a: ldc.i4.0
				IL_014b: ble.s IL_0162

				IL_014d: ldarg.0
				IL_014e: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_0153: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_0158: ldloc.0
				IL_0159: ldc.i4.1
				IL_015a: sub
				IL_015b: conv.i
				IL_015c: ldc.i4.4
				IL_015d: mul
				IL_015e: add
				IL_015f: ldind.u4
				IL_0160: brfalse.s IL_0145
			// end loop

			IL_0162: ldarg.0
			IL_0163: ldloc.0
			IL_0164: stfld int32 System.Number/BigInteger::_length

			IL_0169: ldloc.2
			IL_016a: ret
		} // end of method BigInteger::HeuristicDivide

		.method public hidebysig static 
			void Multiply (
				valuetype System.Number/BigInteger& lhs,
				uint32 'value',
				[out] valuetype System.Number/BigInteger& result
			) cil managed 
		{
			// Method begins at RVA 0x7a158
			// Code size 158 (0x9e)
			.maxstack 3
			.locals (
				[0] int32,
				[1] int32,
				[2] uint32,
				[3] uint64
			)

			IL_0000: ldarg.0
			IL_0001: ldfld int32 System.Number/BigInteger::_length
			IL_0006: ldc.i4.1
			IL_0007: bgt.s IL_001a

			IL_0009: ldarg.2
			IL_000a: ldarg.0
			IL_000b: call instance uint32 System.Number/BigInteger::ToUInt32()
			IL_0010: conv.u8
			IL_0011: ldarg.1
			IL_0012: conv.u8
			IL_0013: mul
			IL_0014: call void System.Number/BigInteger::SetUInt64(valuetype System.Number/BigInteger&, uint64)
			IL_0019: ret

			IL_001a: ldarg.1
			IL_001b: ldc.i4.1
			IL_001c: bgt.un.s IL_0030

			IL_001e: ldarg.1
			IL_001f: brtrue.s IL_0028

			IL_0021: ldarg.2
			IL_0022: call void System.Number/BigInteger::SetZero(valuetype System.Number/BigInteger&)
			IL_0027: ret

			IL_0028: ldarg.2
			IL_0029: ldarg.0
			IL_002a: call void System.Number/BigInteger::SetValue(valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&)
			IL_002f: ret

			IL_0030: ldarg.0
			IL_0031: ldfld int32 System.Number/BigInteger::_length
			IL_0036: stloc.0
			IL_0037: ldc.i4.0
			IL_0038: stloc.1
			IL_0039: ldc.i4.0
			IL_003a: stloc.2
			IL_003b: br.s IL_0073
			// loop start (head: IL_0073)
				IL_003d: ldarg.0
				IL_003e: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_0043: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_0048: ldloc.1
				IL_0049: conv.i
				IL_004a: ldc.i4.4
				IL_004b: mul
				IL_004c: add
				IL_004d: ldind.u4
				IL_004e: conv.u8
				IL_004f: ldarg.1
				IL_0050: conv.u8
				IL_0051: mul
				IL_0052: ldloc.2
				IL_0053: conv.u8
				IL_0054: add
				IL_0055: stloc.3
				IL_0056: ldarg.2
				IL_0057: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_005c: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_0061: ldloc.1
				IL_0062: conv.i
				IL_0063: ldc.i4.4
				IL_0064: mul
				IL_0065: add
				IL_0066: ldloc.3
				IL_0067: conv.u4
				IL_0068: stind.i4
				IL_0069: ldloc.3
				IL_006a: ldc.i4.s 32
				IL_006c: shr.un
				IL_006d: conv.u4
				IL_006e: stloc.2
				IL_006f: ldloc.1
				IL_0070: ldc.i4.1
				IL_0071: add
				IL_0072: stloc.1

				IL_0073: ldloc.1
				IL_0074: ldloc.0
				IL_0075: blt.s IL_003d
			// end loop

			IL_0077: ldloc.2
			IL_0078: brfalse.s IL_0096

			IL_007a: ldarg.2
			IL_007b: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_0080: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_0085: ldloc.1
			IL_0086: conv.i
			IL_0087: ldc.i4.4
			IL_0088: mul
			IL_0089: add
			IL_008a: ldloc.2
			IL_008b: stind.i4
			IL_008c: ldarg.2
			IL_008d: ldloc.0
			IL_008e: ldc.i4.1
			IL_008f: add
			IL_0090: stfld int32 System.Number/BigInteger::_length
			IL_0095: ret

			IL_0096: ldarg.2
			IL_0097: ldloc.0
			IL_0098: stfld int32 System.Number/BigInteger::_length
			IL_009d: ret
		} // end of method BigInteger::Multiply

		.method public hidebysig static 
			void Multiply (
				valuetype System.Number/BigInteger& lhs,
				valuetype System.Number/BigInteger& rhs,
				[out] valuetype System.Number/BigInteger& result
			) cil managed 
		{
			// Method begins at RVA 0x7a204
			// Code size 349 (0x15d)
			.maxstack 5
			.locals (
				[0] valuetype System.Number/BigInteger&,
				[1] int32,
				[2] valuetype System.Number/BigInteger&,
				[3] int32,
				[4] int32,
				[5] int32,
				[6] int32,
				[7] int32,
				[8] int32,
				[9] uint64,
				[10] uint64
			)

			IL_0000: ldarg.0
			IL_0001: ldfld int32 System.Number/BigInteger::_length
			IL_0006: ldc.i4.1
			IL_0007: bgt.s IL_0017

			IL_0009: ldarg.1
			IL_000a: ldarg.0
			IL_000b: call instance uint32 System.Number/BigInteger::ToUInt32()
			IL_0010: ldarg.2
			IL_0011: call void System.Number/BigInteger::Multiply(valuetype System.Number/BigInteger&, uint32, valuetype System.Number/BigInteger&)
			IL_0016: ret

			IL_0017: ldarg.1
			IL_0018: ldfld int32 System.Number/BigInteger::_length
			IL_001d: ldc.i4.1
			IL_001e: bgt.s IL_002e

			IL_0020: ldarg.0
			IL_0021: ldarg.1
			IL_0022: call instance uint32 System.Number/BigInteger::ToUInt32()
			IL_0027: ldarg.2
			IL_0028: call void System.Number/BigInteger::Multiply(valuetype System.Number/BigInteger&, uint32, valuetype System.Number/BigInteger&)
			IL_002d: ret

			IL_002e: ldarg.0
			IL_002f: stloc.0
			IL_0030: ldarg.0
			IL_0031: ldfld int32 System.Number/BigInteger::_length
			IL_0036: stloc.1
			IL_0037: ldarg.1
			IL_0038: stloc.2
			IL_0039: ldarg.1
			IL_003a: ldfld int32 System.Number/BigInteger::_length
			IL_003f: stloc.3
			IL_0040: ldloc.1
			IL_0041: ldloc.3
			IL_0042: bge.s IL_0056

			IL_0044: ldarg.1
			IL_0045: stloc.0
			IL_0046: ldarg.1
			IL_0047: ldfld int32 System.Number/BigInteger::_length
			IL_004c: stloc.1
			IL_004d: ldarg.0
			IL_004e: stloc.2
			IL_004f: ldarg.0
			IL_0050: ldfld int32 System.Number/BigInteger::_length
			IL_0055: stloc.3

			IL_0056: ldloc.3
			IL_0057: ldloc.1
			IL_0058: add
			IL_0059: stloc.s 4
			IL_005b: ldarg.2
			IL_005c: ldloc.s 4
			IL_005e: stfld int32 System.Number/BigInteger::_length
			IL_0063: ldarg.2
			IL_0064: call instance uint32* System.Number/BigInteger::GetBlocksPointer()
			IL_0069: ldloc.s 4
			IL_006b: ldc.i4.4
			IL_006c: mul
			IL_006d: conv.u
			IL_006e: call void System.Buffer::ZeroMemory(uint8*, native uint)
			IL_0073: ldc.i4.0
			IL_0074: stloc.s 5
			IL_0076: ldc.i4.0
			IL_0077: stloc.s 6
			IL_0079: br IL_012e
			// loop start (head: IL_012e)
				IL_007e: ldloc.2
				IL_007f: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_0084: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_0089: ldloc.s 5
				IL_008b: conv.i
				IL_008c: ldc.i4.4
				IL_008d: mul
				IL_008e: add
				IL_008f: ldind.u4
				IL_0090: brfalse IL_0122

				IL_0095: ldc.i4.0
				IL_0096: stloc.s 7
				IL_0098: ldloc.s 6
				IL_009a: stloc.s 8
				IL_009c: ldc.i4.0
				IL_009d: conv.i8
				IL_009e: stloc.s 9
				// loop start (head: IL_00a0)
					IL_00a0: ldarg.2
					IL_00a1: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
					IL_00a6: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
					IL_00ab: ldloc.s 8
					IL_00ad: conv.i
					IL_00ae: ldc.i4.4
					IL_00af: mul
					IL_00b0: add
					IL_00b1: ldind.u4
					IL_00b2: conv.u8
					IL_00b3: ldloc.2
					IL_00b4: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
					IL_00b9: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
					IL_00be: ldloc.s 5
					IL_00c0: conv.i
					IL_00c1: ldc.i4.4
					IL_00c2: mul
					IL_00c3: add
					IL_00c4: ldind.u4
					IL_00c5: conv.u8
					IL_00c6: ldloc.0
					IL_00c7: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
					IL_00cc: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
					IL_00d1: ldloc.s 7
					IL_00d3: conv.i
					IL_00d4: ldc.i4.4
					IL_00d5: mul
					IL_00d6: add
					IL_00d7: ldind.u4
					IL_00d8: conv.u8
					IL_00d9: mul
					IL_00da: add
					IL_00db: ldloc.s 9
					IL_00dd: add
					IL_00de: stloc.s 10
					IL_00e0: ldloc.s 10
					IL_00e2: ldc.i4.s 32
					IL_00e4: shr.un
					IL_00e5: stloc.s 9
					IL_00e7: ldarg.2
					IL_00e8: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
					IL_00ed: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
					IL_00f2: ldloc.s 8
					IL_00f4: conv.i
					IL_00f5: ldc.i4.4
					IL_00f6: mul
					IL_00f7: add
					IL_00f8: ldloc.s 10
					IL_00fa: conv.u4
					IL_00fb: stind.i4
					IL_00fc: ldloc.s 8
					IL_00fe: ldc.i4.1
					IL_00ff: add
					IL_0100: stloc.s 8
					IL_0102: ldloc.s 7
					IL_0104: ldc.i4.1
					IL_0105: add
					IL_0106: stloc.s 7
					IL_0108: ldloc.s 7
					IL_010a: ldloc.1
					IL_010b: blt.s IL_00a0
				// end loop
				IL_010d: ldarg.2
				IL_010e: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_0113: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_0118: ldloc.s 8
				IL_011a: conv.i
				IL_011b: ldc.i4.4
				IL_011c: mul
				IL_011d: add
				IL_011e: ldloc.s 9
				IL_0120: conv.u4
				IL_0121: stind.i4

				IL_0122: ldloc.s 5
				IL_0124: ldc.i4.1
				IL_0125: add
				IL_0126: stloc.s 5
				IL_0128: ldloc.s 6
				IL_012a: ldc.i4.1
				IL_012b: add
				IL_012c: stloc.s 6

				IL_012e: ldloc.s 5
				IL_0130: ldloc.3
				IL_0131: blt IL_007e
			// end loop

			IL_0136: ldloc.s 4
			IL_0138: ldc.i4.0
			IL_0139: ble.s IL_015c

			IL_013b: ldarg.2
			IL_013c: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_0141: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_0146: ldloc.s 4
			IL_0148: ldc.i4.1
			IL_0149: sub
			IL_014a: conv.i
			IL_014b: ldc.i4.4
			IL_014c: mul
			IL_014d: add
			IL_014e: ldind.u4
			IL_014f: brtrue.s IL_015c

			IL_0151: ldarg.2
			IL_0152: ldflda int32 System.Number/BigInteger::_length
			IL_0157: dup
			IL_0158: ldind.i4
			IL_0159: ldc.i4.1
			IL_015a: sub
			IL_015b: stind.i4

			IL_015c: ret
		} // end of method BigInteger::Multiply

		.method public hidebysig static 
			void Pow2 (
				uint32 exponent,
				[out] valuetype System.Number/BigInteger& result
			) cil managed 
		{
			// Method begins at RVA 0x7a370
			// Code size 63 (0x3f)
			.maxstack 4
			.locals (
				[0] uint32,
				[1] uint32
			)

			IL_0000: ldarg.0
			IL_0001: ldloca.s 1
			IL_0003: call uint32 System.Number/BigInteger::DivRem32(uint32, uint32&)
			IL_0008: stloc.0
			IL_0009: ldarg.1
			IL_000a: ldloc.0
			IL_000b: ldc.i4.1
			IL_000c: add
			IL_000d: stfld int32 System.Number/BigInteger::_length
			IL_0012: ldloc.0
			IL_0013: ldc.i4.0
			IL_0014: ble.un.s IL_0025

			IL_0016: ldarg.1
			IL_0017: call instance uint32* System.Number/BigInteger::GetBlocksPointer()
			IL_001c: ldloc.0
			IL_001d: ldc.i4.4
			IL_001e: mul
			IL_001f: conv.u
			IL_0020: call void System.Buffer::ZeroMemory(uint8*, native uint)

			IL_0025: ldarg.1
			IL_0026: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_002b: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_0030: ldloc.0
			IL_0031: conv.u8
			IL_0032: ldc.i4.4
			IL_0033: conv.i8
			IL_0034: mul
			IL_0035: conv.i
			IL_0036: add
			IL_0037: ldc.i4.1
			IL_0038: ldloc.1
			IL_0039: ldc.i4.s 31
			IL_003b: and
			IL_003c: shl
			IL_003d: stind.i4
			IL_003e: ret
		} // end of method BigInteger::Pow2

		.method public hidebysig static 
			void Pow10 (
				uint32 exponent,
				[out] valuetype System.Number/BigInteger& result
			) cil managed 
		{
			// Method begins at RVA 0x7a3bc
			// Code size 116 (0x74)
			.maxstack 4
			.locals (
				[0] valuetype System.Number/BigInteger,
				[1] valuetype System.Number/BigInteger&,
				[2] valuetype System.Number/BigInteger,
				[3] valuetype System.Number/BigInteger&,
				[4] uint32,
				[5] valuetype System.Number/BigInteger&,
				[6] uint32*,
				[7] uint32& pinned,
				[8] valuetype System.Number/BigInteger&
			)

			IL_0000: ldloca.s 0
			IL_0002: ldsfld uint32[] System.Number/BigInteger::s_Pow10UInt32Table
			IL_0007: ldarg.0
			IL_0008: ldc.i4.7
			IL_0009: and
			IL_000a: ldelem.u4
			IL_000b: call void System.Number/BigInteger::SetUInt32(valuetype System.Number/BigInteger&, uint32)
			IL_0010: ldloca.s 0
			IL_0012: stloc.1
			IL_0013: ldloca.s 2
			IL_0015: call void System.Number/BigInteger::SetZero(valuetype System.Number/BigInteger&)
			IL_001a: ldloca.s 2
			IL_001c: stloc.3
			IL_001d: ldarg.0
			IL_001e: ldc.i4.3
			IL_001f: shr.un
			IL_0020: starg.s exponent
			IL_0022: ldc.i4.0
			IL_0023: stloc.s 4
			IL_0025: br.s IL_0069
			// loop start (head: IL_0069)
				IL_0027: ldarg.0
				IL_0028: ldc.i4.1
				IL_0029: and
				IL_002a: brfalse.s IL_005e

				IL_002c: ldsfld uint32[] System.Number/BigInteger::s_Pow10BigNumTable
				IL_0031: ldsfld int32[] System.Number/BigInteger::s_Pow10BigNumTableIndices
				IL_0036: ldloc.s 4
				IL_0038: ldelem.i4
				IL_0039: ldelema System.UInt32
				IL_003e: stloc.s 7
				IL_0040: ldloc.s 7
				IL_0042: conv.u
				IL_0043: stloc.s 6
				IL_0045: ldloc.s 6
				IL_0047: stloc.s 8
				IL_0049: ldloc.1
				IL_004a: ldloc.s 8
				IL_004c: ldloc.3
				IL_004d: call void System.Number/BigInteger::Multiply(valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&)
				IL_0052: ldc.i4.0
				IL_0053: conv.u
				IL_0054: stloc.s 7
				IL_0056: ldloc.3
				IL_0057: stloc.s 5
				IL_0059: ldloc.1
				IL_005a: stloc.3
				IL_005b: ldloc.s 5
				IL_005d: stloc.1

				IL_005e: ldloc.s 4
				IL_0060: ldc.i4.1
				IL_0061: add
				IL_0062: stloc.s 4
				IL_0064: ldarg.0
				IL_0065: ldc.i4.1
				IL_0066: shr.un
				IL_0067: starg.s exponent

				IL_0069: ldarg.0
				IL_006a: brtrue.s IL_0027
			// end loop

			IL_006c: ldarg.1
			IL_006d: ldloc.1
			IL_006e: call void System.Number/BigInteger::SetValue(valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&)
			IL_0073: ret
		} // end of method BigInteger::Pow10

		.method private hidebysig static 
			uint32 AddDivisor (
				valuetype System.Number/BigInteger& lhs,
				int32 lhsStartIndex,
				valuetype System.Number/BigInteger& rhs
			) cil managed 
		{
			// Method begins at RVA 0x7a43c
			// Code size 91 (0x5b)
			.maxstack 4
			.locals (
				[0] int32,
				[1] int32,
				[2] uint64,
				[3] int32,
				[4] uint32&,
				[5] uint64
			)

			IL_0000: ldarg.0
			IL_0001: ldfld int32 System.Number/BigInteger::_length
			IL_0006: stloc.0
			IL_0007: ldarg.2
			IL_0008: ldfld int32 System.Number/BigInteger::_length
			IL_000d: stloc.1
			IL_000e: ldc.i4.0
			IL_000f: conv.i8
			IL_0010: stloc.2
			IL_0011: ldc.i4.0
			IL_0012: stloc.3
			IL_0013: br.s IL_0054
			// loop start (head: IL_0054)
				IL_0015: ldarg.0
				IL_0016: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_001b: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_0020: ldarg.1
				IL_0021: ldloc.3
				IL_0022: add
				IL_0023: conv.i
				IL_0024: ldc.i4.4
				IL_0025: mul
				IL_0026: add
				IL_0027: stloc.s 4
				IL_0029: ldloc.s 4
				IL_002b: ldind.u4
				IL_002c: conv.u8
				IL_002d: ldloc.2
				IL_002e: add
				IL_002f: ldarg.2
				IL_0030: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_0035: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_003a: ldloc.3
				IL_003b: conv.i
				IL_003c: ldc.i4.4
				IL_003d: mul
				IL_003e: add
				IL_003f: ldind.u4
				IL_0040: conv.u8
				IL_0041: add
				IL_0042: stloc.s 5
				IL_0044: ldloc.s 4
				IL_0046: ldloc.s 5
				IL_0048: conv.u4
				IL_0049: stind.i4
				IL_004a: ldloc.s 5
				IL_004c: ldc.i4.s 32
				IL_004e: shr.un
				IL_004f: stloc.2
				IL_0050: ldloc.3
				IL_0051: ldc.i4.1
				IL_0052: add
				IL_0053: stloc.3

				IL_0054: ldloc.3
				IL_0055: ldloc.1
				IL_0056: blt.s IL_0015
			// end loop

			IL_0058: ldloc.2
			IL_0059: conv.u4
			IL_005a: ret
		} // end of method BigInteger::AddDivisor

		.method private hidebysig static 
			bool DivideGuessTooBig (
				uint64 q,
				uint64 valHi,
				uint32 valLo,
				uint32 divHi,
				uint32 divLo
			) cil managed 
		{
			// Method begins at RVA 0x7a4a4
			// Code size 51 (0x33)
			.maxstack 3
			.locals (
				[0] uint64,
				[1] uint64
			)

			IL_0000: ldarg.3
			IL_0001: conv.u8
			IL_0002: ldarg.0
			IL_0003: mul
			IL_0004: stloc.0
			IL_0005: ldarg.s divLo
			IL_0007: conv.u8
			IL_0008: ldarg.0
			IL_0009: mul
			IL_000a: stloc.1
			IL_000b: ldloc.0
			IL_000c: ldloc.1
			IL_000d: ldc.i4.s 32
			IL_000f: shr.un
			IL_0010: add
			IL_0011: stloc.0
			IL_0012: ldloc.1
			IL_0013: ldc.i4.m1
			IL_0014: conv.u8
			IL_0015: and
			IL_0016: stloc.1
			IL_0017: ldloc.0
			IL_0018: ldarg.1
			IL_0019: bge.un.s IL_001d

			IL_001b: ldc.i4.0
			IL_001c: ret

			IL_001d: ldloc.0
			IL_001e: ldarg.1
			IL_001f: ble.un.s IL_0023

			IL_0021: ldc.i4.1
			IL_0022: ret

			IL_0023: ldloc.1
			IL_0024: ldarg.2
			IL_0025: conv.u8
			IL_0026: bge.un.s IL_002a

			IL_0028: ldc.i4.0
			IL_0029: ret

			IL_002a: ldloc.1
			IL_002b: ldarg.2
			IL_002c: conv.u8
			IL_002d: ble.un.s IL_0031

			IL_002f: ldc.i4.1
			IL_0030: ret

			IL_0031: ldc.i4.0
			IL_0032: ret
		} // end of method BigInteger::DivideGuessTooBig

		.method private hidebysig static 
			uint32 SubtractDivisor (
				valuetype System.Number/BigInteger& lhs,
				int32 lhsStartIndex,
				valuetype System.Number/BigInteger& rhs,
				uint64 q
			) cil managed 
		{
			// Method begins at RVA 0x7a4e4
			// Code size 107 (0x6b)
			.maxstack 4
			.locals (
				[0] int32,
				[1] int32,
				[2] uint64,
				[3] int32,
				[4] uint32,
				[5] uint32&
			)

			IL_0000: ldarg.0
			IL_0001: ldfld int32 System.Number/BigInteger::_length
			IL_0006: ldarg.1
			IL_0007: sub
			IL_0008: stloc.0
			IL_0009: ldarg.2
			IL_000a: ldfld int32 System.Number/BigInteger::_length
			IL_000f: stloc.1
			IL_0010: ldc.i4.0
			IL_0011: conv.i8
			IL_0012: stloc.2
			IL_0013: ldc.i4.0
			IL_0014: stloc.3
			IL_0015: br.s IL_0064
			// loop start (head: IL_0064)
				IL_0017: ldloc.2
				IL_0018: ldarg.2
				IL_0019: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_001e: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_0023: ldloc.3
				IL_0024: conv.i
				IL_0025: ldc.i4.4
				IL_0026: mul
				IL_0027: add
				IL_0028: ldind.u4
				IL_0029: conv.u8
				IL_002a: ldarg.3
				IL_002b: mul
				IL_002c: add
				IL_002d: stloc.2
				IL_002e: ldloc.2
				IL_002f: conv.u4
				IL_0030: stloc.s 4
				IL_0032: ldloc.2
				IL_0033: ldc.i4.s 32
				IL_0035: shr.un
				IL_0036: stloc.2
				IL_0037: ldarg.0
				IL_0038: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_003d: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_0042: ldarg.1
				IL_0043: ldloc.3
				IL_0044: add
				IL_0045: conv.i
				IL_0046: ldc.i4.4
				IL_0047: mul
				IL_0048: add
				IL_0049: stloc.s 5
				IL_004b: ldloc.s 5
				IL_004d: ldind.u4
				IL_004e: ldloc.s 4
				IL_0050: bge.un.s IL_0057

				IL_0052: ldloc.2
				IL_0053: ldc.i4.1
				IL_0054: conv.i8
				IL_0055: add
				IL_0056: stloc.2

				IL_0057: ldloc.s 5
				IL_0059: ldloc.s 5
				IL_005b: ldind.u4
				IL_005c: ldloc.s 4
				IL_005e: sub
				IL_005f: stind.i4
				IL_0060: ldloc.3
				IL_0061: ldc.i4.1
				IL_0062: add
				IL_0063: stloc.3

				IL_0064: ldloc.3
				IL_0065: ldloc.1
				IL_0066: blt.s IL_0017
			// end loop

			IL_0068: ldloc.2
			IL_0069: conv.u4
			IL_006a: ret
		} // end of method BigInteger::SubtractDivisor

		.method public hidebysig 
			instance void Add (
				uint32 'value'
			) cil managed 
		{
			// Method begins at RVA 0x7a55c
			// Code size 132 (0x84)
			.maxstack 3
			.locals (
				[0] int32,
				[1] int32
			)

			IL_0000: ldarg.0
			IL_0001: ldfld int32 System.Number/BigInteger::_length
			IL_0006: stloc.0
			IL_0007: ldloc.0
			IL_0008: brtrue.s IL_0012

			IL_000a: ldarg.0
			IL_000b: ldarg.1
			IL_000c: call void System.Number/BigInteger::SetUInt32(valuetype System.Number/BigInteger&, uint32)
			IL_0011: ret

			IL_0012: ldarg.0
			IL_0013: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_0018: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_001d: dup
			IL_001e: ldind.u4
			IL_001f: ldarg.1
			IL_0020: add
			IL_0021: stind.i4
			IL_0022: ldarg.0
			IL_0023: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_0028: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_002d: ldind.u4
			IL_002e: ldarg.1
			IL_002f: blt.un.s IL_0032

			IL_0031: ret

			IL_0032: ldc.i4.1
			IL_0033: stloc.1
			IL_0034: br.s IL_0064
			// loop start (head: IL_0064)
				IL_0036: ldarg.0
				IL_0037: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_003c: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_0041: ldloc.1
				IL_0042: conv.i
				IL_0043: ldc.i4.4
				IL_0044: mul
				IL_0045: add
				IL_0046: dup
				IL_0047: ldind.u4
				IL_0048: ldc.i4.1
				IL_0049: add
				IL_004a: stind.i4
				IL_004b: ldarg.0
				IL_004c: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_0051: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_0056: ldloc.1
				IL_0057: conv.i
				IL_0058: ldc.i4.4
				IL_0059: mul
				IL_005a: add
				IL_005b: ldind.u4
				IL_005c: ldc.i4.0
				IL_005d: ble.un.s IL_0060

				IL_005f: ret

				IL_0060: ldloc.1
				IL_0061: ldc.i4.1
				IL_0062: add
				IL_0063: stloc.1

				IL_0064: ldloc.1
				IL_0065: ldloc.0
				IL_0066: blt.s IL_0036
			// end loop

			IL_0068: ldarg.0
			IL_0069: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_006e: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_0073: ldloc.0
			IL_0074: conv.i
			IL_0075: ldc.i4.4
			IL_0076: mul
			IL_0077: add
			IL_0078: ldc.i4.1
			IL_0079: stind.i4
			IL_007a: ldarg.0
			IL_007b: ldloc.0
			IL_007c: ldc.i4.1
			IL_007d: add
			IL_007e: stfld int32 System.Number/BigInteger::_length
			IL_0083: ret
		} // end of method BigInteger::Add

		.method public hidebysig 
			instance uint32 GetBlock (
				uint32 index
			) cil managed 
		{
			// Method begins at RVA 0x7a5ec
			// Code size 20 (0x14)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_0006: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_000b: ldarg.1
			IL_000c: conv.u8
			IL_000d: ldc.i4.4
			IL_000e: conv.i8
			IL_000f: mul
			IL_0010: conv.i
			IL_0011: add
			IL_0012: ldind.u4
			IL_0013: ret
		} // end of method BigInteger::GetBlock

		.method public hidebysig 
			instance int32 GetLength () cil managed 
		{
			// Method begins at RVA 0x7a601
			// Code size 7 (0x7)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld int32 System.Number/BigInteger::_length
			IL_0006: ret
		} // end of method BigInteger::GetLength

		.method public hidebysig 
			instance bool IsZero () cil managed 
		{
			// Method begins at RVA 0x7a609
			// Code size 10 (0xa)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld int32 System.Number/BigInteger::_length
			IL_0006: ldc.i4.0
			IL_0007: ceq
			IL_0009: ret
		} // end of method BigInteger::IsZero

		.method public hidebysig 
			instance void Multiply (
				uint32 'value'
			) cil managed 
		{
			// Method begins at RVA 0x7a614
			// Code size 9 (0x9)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldarg.1
			IL_0002: ldarg.0
			IL_0003: call void System.Number/BigInteger::Multiply(valuetype System.Number/BigInteger&, uint32, valuetype System.Number/BigInteger&)
			IL_0008: ret
		} // end of method BigInteger::Multiply

		.method public hidebysig 
			instance void Multiply (
				valuetype System.Number/BigInteger& 'value'
			) cil managed 
		{
			// Method begins at RVA 0x7a620
			// Code size 41 (0x29)
			.maxstack 3
			.locals (
				[0] valuetype System.Number/BigInteger
			)

			IL_0000: ldarg.1
			IL_0001: ldfld int32 System.Number/BigInteger::_length
			IL_0006: ldc.i4.1
			IL_0007: bgt.s IL_0017

			IL_0009: ldarg.0
			IL_000a: ldarg.1
			IL_000b: call instance uint32 System.Number/BigInteger::ToUInt32()
			IL_0010: ldarg.0
			IL_0011: call void System.Number/BigInteger::Multiply(valuetype System.Number/BigInteger&, uint32, valuetype System.Number/BigInteger&)
			IL_0016: ret

			IL_0017: ldloca.s 0
			IL_0019: ldarg.0
			IL_001a: call void System.Number/BigInteger::SetValue(valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&)
			IL_001f: ldloca.s 0
			IL_0021: ldarg.1
			IL_0022: ldarg.0
			IL_0023: call void System.Number/BigInteger::Multiply(valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&)
			IL_0028: ret
		} // end of method BigInteger::Multiply

		.method public hidebysig 
			instance void Multiply10 () cil managed 
		{
			// Method begins at RVA 0x7a658
			// Code size 122 (0x7a)
			.maxstack 3
			.locals (
				[0] int32,
				[1] int32,
				[2] uint64,
				[3] uint64,
				[4] uint64
			)

			IL_0000: ldarg.0
			IL_0001: call instance bool System.Number/BigInteger::IsZero()
			IL_0006: brfalse.s IL_0009

			IL_0008: ret

			IL_0009: ldc.i4.0
			IL_000a: stloc.0
			IL_000b: ldarg.0
			IL_000c: ldfld int32 System.Number/BigInteger::_length
			IL_0011: stloc.1
			IL_0012: ldc.i4.0
			IL_0013: conv.i8
			IL_0014: stloc.2
			// loop start (head: IL_0015)
				IL_0015: ldarg.0
				IL_0016: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_001b: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_0020: ldloc.0
				IL_0021: conv.i
				IL_0022: ldc.i4.4
				IL_0023: mul
				IL_0024: add
				IL_0025: ldind.u4
				IL_0026: conv.u8
				IL_0027: stloc.3
				IL_0028: ldloc.3
				IL_0029: ldc.i4.3
				IL_002a: shl
				IL_002b: ldloc.3
				IL_002c: ldc.i4.1
				IL_002d: shl
				IL_002e: add
				IL_002f: ldloc.2
				IL_0030: add
				IL_0031: stloc.s 4
				IL_0033: ldloc.s 4
				IL_0035: ldc.i4.s 32
				IL_0037: shr.un
				IL_0038: stloc.2
				IL_0039: ldarg.0
				IL_003a: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_003f: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_0044: ldloc.0
				IL_0045: conv.i
				IL_0046: ldc.i4.4
				IL_0047: mul
				IL_0048: add
				IL_0049: ldloc.s 4
				IL_004b: conv.u4
				IL_004c: stind.i4
				IL_004d: ldloc.0
				IL_004e: ldc.i4.1
				IL_004f: add
				IL_0050: stloc.0
				IL_0051: ldloc.0
				IL_0052: ldloc.1
				IL_0053: blt.s IL_0015
			// end loop
			IL_0055: ldloc.2
			IL_0056: brfalse.s IL_0079

			IL_0058: ldarg.0
			IL_0059: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_005e: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_0063: ldloc.0
			IL_0064: conv.i
			IL_0065: ldc.i4.4
			IL_0066: mul
			IL_0067: add
			IL_0068: ldloc.2
			IL_0069: conv.u4
			IL_006a: stind.i4
			IL_006b: ldarg.0
			IL_006c: ldarg.0
			IL_006d: ldfld int32 System.Number/BigInteger::_length
			IL_0072: ldc.i4.1
			IL_0073: add
			IL_0074: stfld int32 System.Number/BigInteger::_length

			IL_0079: ret
		} // end of method BigInteger::Multiply10

		.method public hidebysig 
			instance void MultiplyPow10 (
				uint32 exponent
			) cil managed 
		{
			// Method begins at RVA 0x7a6e0
			// Code size 44 (0x2c)
			.maxstack 3
			.locals (
				[0] valuetype System.Number/BigInteger
			)

			IL_0000: ldarg.1
			IL_0001: ldc.i4.s 9
			IL_0003: bgt.un.s IL_0013

			IL_0005: ldarg.0
			IL_0006: ldsfld uint32[] System.Number/BigInteger::s_Pow10UInt32Table
			IL_000b: ldarg.1
			IL_000c: ldelem.u4
			IL_000d: call instance void System.Number/BigInteger::Multiply(uint32)
			IL_0012: ret

			IL_0013: ldarg.0
			IL_0014: call instance bool System.Number/BigInteger::IsZero()
			IL_0019: brtrue.s IL_002b

			IL_001b: ldarg.1
			IL_001c: ldloca.s 0
			IL_001e: call void System.Number/BigInteger::Pow10(uint32, valuetype System.Number/BigInteger&)
			IL_0023: ldarg.0
			IL_0024: ldloca.s 0
			IL_0026: call instance void System.Number/BigInteger::Multiply(valuetype System.Number/BigInteger&)

			IL_002b: ret
		} // end of method BigInteger::MultiplyPow10

		.method public hidebysig static 
			void SetUInt32 (
				[out] valuetype System.Number/BigInteger& result,
				uint32 'value'
			) cil managed 
		{
			// Method begins at RVA 0x7a718
			// Code size 31 (0x1f)
			.maxstack 8

			IL_0000: ldarg.1
			IL_0001: brtrue.s IL_000a

			IL_0003: ldarg.0
			IL_0004: call void System.Number/BigInteger::SetZero(valuetype System.Number/BigInteger&)
			IL_0009: ret

			IL_000a: ldarg.0
			IL_000b: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_0010: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_0015: ldarg.1
			IL_0016: stind.i4
			IL_0017: ldarg.0
			IL_0018: ldc.i4.1
			IL_0019: stfld int32 System.Number/BigInteger::_length
			IL_001e: ret
		} // end of method BigInteger::SetUInt32

		.method public hidebysig static 
			void SetUInt64 (
				[out] valuetype System.Number/BigInteger& result,
				uint64 'value'
			) cil managed 
		{
			// Method begins at RVA 0x7a738
			// Code size 55 (0x37)
			.maxstack 8

			IL_0000: ldarg.1
			IL_0001: ldc.i4.m1
			IL_0002: conv.u8
			IL_0003: bgt.un.s IL_000e

			IL_0005: ldarg.0
			IL_0006: ldarg.1
			IL_0007: conv.u4
			IL_0008: call void System.Number/BigInteger::SetUInt32(valuetype System.Number/BigInteger&, uint32)
			IL_000d: ret

			IL_000e: ldarg.0
			IL_000f: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_0014: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_0019: ldarg.1
			IL_001a: conv.u4
			IL_001b: stind.i4
			IL_001c: ldarg.0
			IL_001d: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_0022: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_0027: ldc.i4.4
			IL_0028: add
			IL_0029: ldarg.1
			IL_002a: ldc.i4.s 32
			IL_002c: shr.un
			IL_002d: conv.u4
			IL_002e: stind.i4
			IL_002f: ldarg.0
			IL_0030: ldc.i4.2
			IL_0031: stfld int32 System.Number/BigInteger::_length
			IL_0036: ret
		} // end of method BigInteger::SetUInt64

		.method public hidebysig static 
			void SetValue (
				[out] valuetype System.Number/BigInteger& result,
				valuetype System.Number/BigInteger& 'value'
			) cil managed 
		{
			// Method begins at RVA 0x7a770
			// Code size 35 (0x23)
			.maxstack 4
			.locals (
				[0] int32
			)

			IL_0000: ldarg.1
			IL_0001: ldfld int32 System.Number/BigInteger::_length
			IL_0006: stloc.0
			IL_0007: ldarg.0
			IL_0008: ldloc.0
			IL_0009: stfld int32 System.Number/BigInteger::_length
			IL_000e: ldarg.0
			IL_000f: call instance uint32* System.Number/BigInteger::GetBlocksPointer()
			IL_0014: ldarg.1
			IL_0015: call instance uint32* System.Number/BigInteger::GetBlocksPointer()
			IL_001a: ldloc.0
			IL_001b: ldc.i4.4
			IL_001c: mul
			IL_001d: call void System.Buffer::Memcpy(uint8*, uint8*, int32)
			IL_0022: ret
		} // end of method BigInteger::SetValue

		.method public hidebysig static 
			void SetZero (
				[out] valuetype System.Number/BigInteger& result
			) cil managed 
		{
			// Method begins at RVA 0x7a79f
			// Code size 8 (0x8)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldc.i4.0
			IL_0002: stfld int32 System.Number/BigInteger::_length
			IL_0007: ret
		} // end of method BigInteger::SetZero

		.method public hidebysig 
			instance void ShiftLeft (
				uint32 shift
			) cil managed 
		{
			// Method begins at RVA 0x7a7a8
			// Code size 353 (0x161)
			.maxstack 4
			.locals (
				[0] int32,
				[1] uint32,
				[2] uint32,
				[3] int32,
				[4] int32,
				[5] uint32,
				[6] uint32,
				[7] uint32,
				[8] uint32
			)

			IL_0000: ldarg.0
			IL_0001: ldfld int32 System.Number/BigInteger::_length
			IL_0006: stloc.0
			IL_0007: ldloc.0
			IL_0008: brfalse.s IL_000d

			IL_000a: ldarg.1
			IL_000b: brtrue.s IL_000e

			IL_000d: ret

			IL_000e: ldarg.1
			IL_000f: ldloca.s 2
			IL_0011: call uint32 System.Number/BigInteger::DivRem32(uint32, uint32&)
			IL_0016: stloc.1
			IL_0017: ldloc.0
			IL_0018: ldc.i4.1
			IL_0019: sub
			IL_001a: stloc.3
			IL_001b: ldloc.3
			IL_001c: ldloc.1
			IL_001d: add
			IL_001e: stloc.s 4
			IL_0020: ldloc.2
			IL_0021: brtrue.s IL_0074

			IL_0023: br.s IL_0052
			// loop start (head: IL_0052)
				IL_0025: ldarg.0
				IL_0026: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_002b: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_0030: ldloc.s 4
				IL_0032: conv.i
				IL_0033: ldc.i4.4
				IL_0034: mul
				IL_0035: add
				IL_0036: ldarg.0
				IL_0037: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_003c: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_0041: ldloc.3
				IL_0042: conv.i
				IL_0043: ldc.i4.4
				IL_0044: mul
				IL_0045: add
				IL_0046: ldind.u4
				IL_0047: stind.i4
				IL_0048: ldloc.3
				IL_0049: ldc.i4.1
				IL_004a: sub
				IL_004b: stloc.3
				IL_004c: ldloc.s 4
				IL_004e: ldc.i4.1
				IL_004f: sub
				IL_0050: stloc.s 4

				IL_0052: ldloc.3
				IL_0053: ldc.i4.0
				IL_0054: bge.s IL_0025
			// end loop

			IL_0056: ldarg.0
			IL_0057: ldarg.0
			IL_0058: ldfld int32 System.Number/BigInteger::_length
			IL_005d: ldloc.1
			IL_005e: add
			IL_005f: stfld int32 System.Number/BigInteger::_length
			IL_0064: ldarg.0
			IL_0065: call instance uint32* System.Number/BigInteger::GetBlocksPointer()
			IL_006a: ldloc.1
			IL_006b: ldc.i4.4
			IL_006c: mul
			IL_006d: conv.u
			IL_006e: call void System.Buffer::ZeroMemory(uint8*, native uint)
			IL_0073: ret

			IL_0074: ldloc.s 4
			IL_0076: ldc.i4.1
			IL_0077: add
			IL_0078: stloc.s 4
			IL_007a: ldarg.0
			IL_007b: ldloc.s 4
			IL_007d: ldc.i4.1
			IL_007e: add
			IL_007f: stfld int32 System.Number/BigInteger::_length
			IL_0084: ldc.i4.s 32
			IL_0086: ldloc.2
			IL_0087: sub
			IL_0088: stloc.s 5
			IL_008a: ldc.i4.0
			IL_008b: stloc.s 6
			IL_008d: ldarg.0
			IL_008e: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_0093: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_0098: ldloc.3
			IL_0099: conv.i
			IL_009a: ldc.i4.4
			IL_009b: mul
			IL_009c: add
			IL_009d: ldind.u4
			IL_009e: stloc.s 7
			IL_00a0: ldloc.s 7
			IL_00a2: ldloc.s 5
			IL_00a4: ldc.i4.s 31
			IL_00a6: and
			IL_00a7: shr.un
			IL_00a8: stloc.s 8
			IL_00aa: br.s IL_00f3
			// loop start (head: IL_00f3)
				IL_00ac: ldarg.0
				IL_00ad: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_00b2: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_00b7: ldloc.s 4
				IL_00b9: conv.i
				IL_00ba: ldc.i4.4
				IL_00bb: mul
				IL_00bc: add
				IL_00bd: ldloc.s 6
				IL_00bf: ldloc.s 8
				IL_00c1: or
				IL_00c2: stind.i4
				IL_00c3: ldloc.s 7
				IL_00c5: ldloc.2
				IL_00c6: ldc.i4.s 31
				IL_00c8: and
				IL_00c9: shl
				IL_00ca: stloc.s 6
				IL_00cc: ldloc.3
				IL_00cd: ldc.i4.1
				IL_00ce: sub
				IL_00cf: stloc.3
				IL_00d0: ldloc.s 4
				IL_00d2: ldc.i4.1
				IL_00d3: sub
				IL_00d4: stloc.s 4
				IL_00d6: ldarg.0
				IL_00d7: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
				IL_00dc: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
				IL_00e1: ldloc.3
				IL_00e2: conv.i
				IL_00e3: ldc.i4.4
				IL_00e4: mul
				IL_00e5: add
				IL_00e6: ldind.u4
				IL_00e7: stloc.s 7
				IL_00e9: ldloc.s 7
				IL_00eb: ldloc.s 5
				IL_00ed: ldc.i4.s 31
				IL_00ef: and
				IL_00f0: shr.un
				IL_00f1: stloc.s 8

				IL_00f3: ldloc.3
				IL_00f4: ldc.i4.0
				IL_00f5: bgt.s IL_00ac
			// end loop

			IL_00f7: ldarg.0
			IL_00f8: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_00fd: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_0102: ldloc.s 4
			IL_0104: conv.i
			IL_0105: ldc.i4.4
			IL_0106: mul
			IL_0107: add
			IL_0108: ldloc.s 6
			IL_010a: ldloc.s 8
			IL_010c: or
			IL_010d: stind.i4
			IL_010e: ldarg.0
			IL_010f: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_0114: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_0119: ldloc.s 4
			IL_011b: ldc.i4.1
			IL_011c: sub
			IL_011d: conv.i
			IL_011e: ldc.i4.4
			IL_011f: mul
			IL_0120: add
			IL_0121: ldloc.s 7
			IL_0123: ldloc.2
			IL_0124: ldc.i4.s 31
			IL_0126: and
			IL_0127: shl
			IL_0128: stind.i4
			IL_0129: ldarg.0
			IL_012a: call instance uint32* System.Number/BigInteger::GetBlocksPointer()
			IL_012f: ldloc.1
			IL_0130: ldc.i4.4
			IL_0131: mul
			IL_0132: conv.u
			IL_0133: call void System.Buffer::ZeroMemory(uint8*, native uint)
			IL_0138: ldarg.0
			IL_0139: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_013e: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_0143: ldarg.0
			IL_0144: ldfld int32 System.Number/BigInteger::_length
			IL_0149: ldc.i4.1
			IL_014a: sub
			IL_014b: conv.i
			IL_014c: ldc.i4.4
			IL_014d: mul
			IL_014e: add
			IL_014f: ldind.u4
			IL_0150: brtrue.s IL_0160

			IL_0152: ldarg.0
			IL_0153: ldarg.0
			IL_0154: ldfld int32 System.Number/BigInteger::_length
			IL_0159: ldc.i4.1
			IL_015a: sub
			IL_015b: stfld int32 System.Number/BigInteger::_length

			IL_0160: ret
		} // end of method BigInteger::ShiftLeft

		.method public hidebysig 
			instance uint32 ToUInt32 () cil managed 
		{
			// Method begins at RVA 0x7a915
			// Code size 24 (0x18)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld int32 System.Number/BigInteger::_length
			IL_0006: ldc.i4.0
			IL_0007: ble.s IL_0016

			IL_0009: ldarg.0
			IL_000a: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_000f: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_0014: ldind.u4
			IL_0015: ret

			IL_0016: ldc.i4.0
			IL_0017: ret
		} // end of method BigInteger::ToUInt32

		.method public hidebysig 
			instance uint64 ToUInt64 () cil managed 
		{
			// Method begins at RVA 0x7a930
			// Code size 68 (0x44)
			.maxstack 2

			IL_0000: ldarg.0
			IL_0001: ldfld int32 System.Number/BigInteger::_length
			IL_0006: ldc.i4.1
			IL_0007: ble.s IL_002a

			IL_0009: ldarg.0
			IL_000a: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_000f: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_0014: ldc.i4.4
			IL_0015: add
			IL_0016: ldind.u4
			IL_0017: conv.u8
			IL_0018: ldc.i4.s 32
			IL_001a: shl
			IL_001b: ldarg.0
			IL_001c: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_0021: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_0026: ldind.u4
			IL_0027: conv.u8
			IL_0028: add
			IL_0029: ret

			IL_002a: ldarg.0
			IL_002b: ldfld int32 System.Number/BigInteger::_length
			IL_0030: ldc.i4.0
			IL_0031: ble.s IL_0041

			IL_0033: ldarg.0
			IL_0034: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_0039: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_003e: ldind.u4
			IL_003f: conv.u8
			IL_0040: ret

			IL_0041: ldc.i4.0
			IL_0042: conv.i8
			IL_0043: ret
		} // end of method BigInteger::ToUInt64

		.method private hidebysig 
			instance uint32* GetBlocksPointer () cil managed 
		{
			// Method begins at RVA 0x7a980
			// Code size 17 (0x11)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldflda valuetype System.Number/BigInteger/'<_blocks>e__FixedBuffer' System.Number/BigInteger::_blocks
			IL_0006: ldflda uint32 System.Number/BigInteger/'<_blocks>e__FixedBuffer'::FixedElementField
			IL_000b: call void* Internal.Runtime.CompilerServices.Unsafe::AsPointer<uint32>(!!0&)
			IL_0010: ret
		} // end of method BigInteger::GetBlocksPointer

		.method private hidebysig static 
			uint32 DivRem32 (
				uint32 'value',
				[out] uint32& remainder
			) cil managed 
		{
			// Method begins at RVA 0x7a992
			// Code size 10 (0xa)
			.maxstack 8

			IL_0000: ldarg.1
			IL_0001: ldarg.0
			IL_0002: ldc.i4.s 31
			IL_0004: and
			IL_0005: stind.i4
			IL_0006: ldarg.0
			IL_0007: ldc.i4.5
			IL_0008: shr.un
			IL_0009: ret
		} // end of method BigInteger::DivRem32

		.method private hidebysig specialname rtspecialname static 
			void .cctor () cil managed 
		{
			// Method begins at RVA 0x7a9a0
			// Code size 72 (0x48)
			.maxstack 3

			IL_0000: ldc.i4.s 10
			IL_0002: newarr System.UInt32
			IL_0007: dup
			IL_0008: ldtoken field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=40' '<PrivateImplementationDetails>'::A516EECB41051151F0183A8B0B6F6693C43F7D9E1815F85CAAAB18E00A5269A2
			IL_000d: call void System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class System.Array, valuetype System.RuntimeFieldHandle)
			IL_0012: stsfld uint32[] System.Number/BigInteger::s_Pow10UInt32Table
			IL_0017: ldc.i4.8
			IL_0018: newarr System.Int32
			IL_001d: dup
			IL_001e: ldtoken field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=32' '<PrivateImplementationDetails>'::'872CF31969B30D16D8B7FD68ABCEBFD7F8F3336BA347CD8712D80E58CB1EB667'
			IL_0023: call void System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class System.Array, valuetype System.RuntimeFieldHandle)
			IL_0028: stsfld int32[] System.Number/BigInteger::s_Pow10BigNumTableIndices
			IL_002d: ldc.i4 233
			IL_0032: newarr System.UInt32
			IL_0037: dup
			IL_0038: ldtoken field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=932' '<PrivateImplementationDetails>'::B20F66C1E87747FEB8C0CC42BB95D0598777BC0237D75E567AE09EDFADDB0A60
			IL_003d: call void System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class System.Array, valuetype System.RuntimeFieldHandle)
			IL_0042: stsfld uint32[] System.Number/BigInteger::s_Pow10BigNumTable
			IL_0047: ret
		} // end of method BigInteger::.cctor

	} // end of class BigInteger

	.class nested assembly sequential ansi sealed beforefieldinit DiyFp
		extends System.ValueType
	{
		.custom instance void System.ObsoleteAttribute::.ctor(string, bool) = (
			01 00 52 54 79 70 65 73 20 77 69 74 68 20 65 6d
			62 65 64 64 65 64 20 72 65 66 65 72 65 6e 63 65
			73 20 61 72 65 20 6e 6f 74 20 73 75 70 70 6f 72
			74 65 64 20 69 6e 20 74 68 69 73 20 76 65 72 73
			69 6f 6e 20 6f 66 20 79 6f 75 72 20 63 6f 6d 70
			69 6c 65 72 2e 01 00 00
		)
		.custom instance void System.Runtime.CompilerServices.IsByRefLikeAttribute::.ctor() = (
			01 00 00 00
		)
		.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
			01 00 00 00
		)
		// Fields
		.field public initonly uint64 f
		.field public initonly int32 e

		// Methods
		.method public hidebysig static 
			valuetype System.Number/DiyFp CreateAndGetBoundaries (
				float64 'value',
				[out] valuetype System.Number/DiyFp& mMinus,
				[out] valuetype System.Number/DiyFp& mPlus
			) cil managed 
		{
			// Method begins at RVA 0x7a9f4
			// Code size 21 (0x15)
			.maxstack 4
			.locals (
				[0] valuetype System.Number/DiyFp
			)

			IL_0000: ldloca.s 0
			IL_0002: ldarg.0
			IL_0003: call instance void System.Number/DiyFp::.ctor(float64)
			IL_0008: ldloca.s 0
			IL_000a: ldc.i4.s 52
			IL_000c: ldarg.1
			IL_000d: ldarg.2
			IL_000e: call instance void System.Number/DiyFp::GetBoundaries(int32, valuetype System.Number/DiyFp&, valuetype System.Number/DiyFp&)
			IL_0013: ldloc.0
			IL_0014: ret
		} // end of method DiyFp::CreateAndGetBoundaries

		.method public hidebysig static 
			valuetype System.Number/DiyFp CreateAndGetBoundaries (
				float32 'value',
				[out] valuetype System.Number/DiyFp& mMinus,
				[out] valuetype System.Number/DiyFp& mPlus
			) cil managed 
		{
			// Method begins at RVA 0x7aa18
			// Code size 21 (0x15)
			.maxstack 4
			.locals (
				[0] valuetype System.Number/DiyFp
			)

			IL_0000: ldloca.s 0
			IL_0002: ldarg.0
			IL_0003: call instance void System.Number/DiyFp::.ctor(float32)
			IL_0008: ldloca.s 0
			IL_000a: ldc.i4.s 23
			IL_000c: ldarg.1
			IL_000d: ldarg.2
			IL_000e: call instance void System.Number/DiyFp::GetBoundaries(int32, valuetype System.Number/DiyFp&, valuetype System.Number/DiyFp&)
			IL_0013: ldloc.0
			IL_0014: ret
		} // end of method DiyFp::CreateAndGetBoundaries

		.method public hidebysig static 
			valuetype System.Number/DiyFp CreateAndGetBoundaries (
				valuetype System.Half 'value',
				[out] valuetype System.Number/DiyFp& mMinus,
				[out] valuetype System.Number/DiyFp& mPlus
			) cil managed 
		{
			// Method begins at RVA 0x7aa3c
			// Code size 21 (0x15)
			.maxstack 4
			.locals (
				[0] valuetype System.Number/DiyFp
			)

			IL_0000: ldloca.s 0
			IL_0002: ldarg.0
			IL_0003: call instance void System.Number/DiyFp::.ctor(valuetype System.Half)
			IL_0008: ldloca.s 0
			IL_000a: ldc.i4.s 10
			IL_000c: ldarg.1
			IL_000d: ldarg.2
			IL_000e: call instance void System.Number/DiyFp::GetBoundaries(int32, valuetype System.Number/DiyFp&, valuetype System.Number/DiyFp&)
			IL_0013: ldloc.0
			IL_0014: ret
		} // end of method DiyFp::CreateAndGetBoundaries

		.method public hidebysig specialname rtspecialname 
			instance void .ctor (
				float64 'value'
			) cil managed 
		{
			// Method begins at RVA 0x7aa5d
			// Code size 19 (0x13)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldarg.1
			IL_0002: ldarg.0
			IL_0003: ldflda int32 System.Number/DiyFp::e
			IL_0008: call uint64 System.Number::ExtractFractionAndBiasedExponent(float64, int32&)
			IL_000d: stfld uint64 System.Number/DiyFp::f
			IL_0012: ret
		} // end of method DiyFp::.ctor

		.method public hidebysig specialname rtspecialname 
			instance void .ctor (
				float32 'value'
			) cil managed 
		{
			// Method begins at RVA 0x7aa71
			// Code size 20 (0x14)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldarg.1
			IL_0002: ldarg.0
			IL_0003: ldflda int32 System.Number/DiyFp::e
			IL_0008: call uint32 System.Number::ExtractFractionAndBiasedExponent(float32, int32&)
			IL_000d: conv.u8
			IL_000e: stfld uint64 System.Number/DiyFp::f
			IL_0013: ret
		} // end of method DiyFp::.ctor

		.method public hidebysig specialname rtspecialname 
			instance void .ctor (
				valuetype System.Half 'value'
			) cil managed 
		{
			// Method begins at RVA 0x7aa86
			// Code size 20 (0x14)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldarg.1
			IL_0002: ldarg.0
			IL_0003: ldflda int32 System.Number/DiyFp::e
			IL_0008: call uint16 System.Number::ExtractFractionAndBiasedExponent(valuetype System.Half, int32&)
			IL_000d: conv.u8
			IL_000e: stfld uint64 System.Number/DiyFp::f
			IL_0013: ret
		} // end of method DiyFp::.ctor

		.method public hidebysig specialname rtspecialname 
			instance void .ctor (
				uint64 f,
				int32 e
			) cil managed 
		{
			// Method begins at RVA 0x7aa9b
			// Code size 15 (0xf)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldarg.1
			IL_0002: stfld uint64 System.Number/DiyFp::f
			IL_0007: ldarg.0
			IL_0008: ldarg.2
			IL_0009: stfld int32 System.Number/DiyFp::e
			IL_000e: ret
		} // end of method DiyFp::.ctor

		.method public hidebysig 
			instance valuetype System.Number/DiyFp Multiply (
				[in] valuetype System.Number/DiyFp& other
			) cil managed 
		{
			.param [1]
				.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
					01 00 00 00
				)
			// Method begins at RVA 0x7aaac
			// Code size 136 (0x88)
			.maxstack 3
			.locals (
				[0] uint32,
				[1] uint32,
				[2] uint32,
				[3] uint32,
				[4] uint64,
				[5] uint64,
				[6] uint64,
				[7] uint64,
				[8] uint64
			)

			IL_0000: ldarg.0
			IL_0001: ldfld uint64 System.Number/DiyFp::f
			IL_0006: ldc.i4.s 32
			IL_0008: shr.un
			IL_0009: conv.u4
			IL_000a: stloc.0
			IL_000b: ldarg.0
			IL_000c: ldfld uint64 System.Number/DiyFp::f
			IL_0011: conv.u4
			IL_0012: stloc.1
			IL_0013: ldarg.1
			IL_0014: ldfld uint64 System.Number/DiyFp::f
			IL_0019: ldc.i4.s 32
			IL_001b: shr.un
			IL_001c: conv.u4
			IL_001d: stloc.2
			IL_001e: ldarg.1
			IL_001f: ldfld uint64 System.Number/DiyFp::f
			IL_0024: conv.u4
			IL_0025: stloc.3
			IL_0026: ldloc.0
			IL_0027: conv.u8
			IL_0028: ldloc.2
			IL_0029: conv.u8
			IL_002a: mul
			IL_002b: stloc.s 4
			IL_002d: ldloc.1
			IL_002e: conv.u8
			IL_002f: ldloc.2
			IL_0030: conv.u8
			IL_0031: mul
			IL_0032: stloc.s 5
			IL_0034: ldloc.0
			IL_0035: conv.u8
			IL_0036: ldloc.3
			IL_0037: conv.u8
			IL_0038: mul
			IL_0039: stloc.s 6
			IL_003b: ldloc.1
			IL_003c: conv.u8
			IL_003d: ldloc.3
			IL_003e: conv.u8
			IL_003f: mul
			IL_0040: stloc.s 7
			IL_0042: ldloc.s 7
			IL_0044: ldc.i4.s 32
			IL_0046: shr.un
			IL_0047: ldloc.s 6
			IL_0049: conv.u4
			IL_004a: conv.u8
			IL_004b: add
			IL_004c: ldloc.s 5
			IL_004e: conv.u4
			IL_004f: conv.u8
			IL_0050: add
			IL_0051: stloc.s 8
			IL_0053: ldloc.s 8
			IL_0055: ldc.i4 -2147483648
			IL_005a: conv.u8
			IL_005b: add
			IL_005c: stloc.s 8
			IL_005e: ldloc.s 4
			IL_0060: ldloc.s 6
			IL_0062: ldc.i4.s 32
			IL_0064: shr.un
			IL_0065: add
			IL_0066: ldloc.s 5
			IL_0068: ldc.i4.s 32
			IL_006a: shr.un
			IL_006b: add
			IL_006c: ldloc.s 8
			IL_006e: ldc.i4.s 32
			IL_0070: shr.un
			IL_0071: add
			IL_0072: ldarg.0
			IL_0073: ldfld int32 System.Number/DiyFp::e
			IL_0078: ldarg.1
			IL_0079: ldfld int32 System.Number/DiyFp::e
			IL_007e: add
			IL_007f: ldc.i4.s 64
			IL_0081: add
			IL_0082: newobj instance void System.Number/DiyFp::.ctor(uint64, int32)
			IL_0087: ret
		} // end of method DiyFp::Multiply

		.method public hidebysig 
			instance valuetype System.Number/DiyFp Normalize () cil managed 
		{
			// Method begins at RVA 0x7ab40
			// Code size 37 (0x25)
			.maxstack 3
			.locals (
				[0] int32
			)

			IL_0000: ldarg.0
			IL_0001: ldfld uint64 System.Number/DiyFp::f
			IL_0006: call int32 System.Numerics.BitOperations::LeadingZeroCount(uint64)
			IL_000b: stloc.0
			IL_000c: ldarg.0
			IL_000d: ldfld uint64 System.Number/DiyFp::f
			IL_0012: ldloc.0
			IL_0013: ldc.i4.s 63
			IL_0015: and
			IL_0016: shl
			IL_0017: ldarg.0
			IL_0018: ldfld int32 System.Number/DiyFp::e
			IL_001d: ldloc.0
			IL_001e: sub
			IL_001f: newobj instance void System.Number/DiyFp::.ctor(uint64, int32)
			IL_0024: ret
		} // end of method DiyFp::Normalize

		.method public hidebysig 
			instance valuetype System.Number/DiyFp Subtract (
				[in] valuetype System.Number/DiyFp& other
			) cil managed 
		{
			.param [1]
				.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
					01 00 00 00
				)
			// Method begins at RVA 0x7ab71
			// Code size 25 (0x19)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld uint64 System.Number/DiyFp::f
			IL_0006: ldarg.1
			IL_0007: ldfld uint64 System.Number/DiyFp::f
			IL_000c: sub
			IL_000d: ldarg.0
			IL_000e: ldfld int32 System.Number/DiyFp::e
			IL_0013: newobj instance void System.Number/DiyFp::.ctor(uint64, int32)
			IL_0018: ret
		} // end of method DiyFp::Subtract

		.method private hidebysig 
			instance void GetBoundaries (
				int32 implicitBitIndex,
				[out] valuetype System.Number/DiyFp& mMinus,
				[out] valuetype System.Number/DiyFp& mPlus
			) cil managed 
		{
			// Method begins at RVA 0x7ab8c
			// Code size 156 (0x9c)
			.maxstack 4
			.locals (
				[0] valuetype System.Number/DiyFp
			)

			IL_0000: ldarg.3
			IL_0001: ldarg.0
			IL_0002: ldfld uint64 System.Number/DiyFp::f
			IL_0007: ldc.i4.1
			IL_0008: shl
			IL_0009: ldc.i4.1
			IL_000a: conv.i8
			IL_000b: add
			IL_000c: ldarg.0
			IL_000d: ldfld int32 System.Number/DiyFp::e
			IL_0012: ldc.i4.1
			IL_0013: sub
			IL_0014: newobj instance void System.Number/DiyFp::.ctor(uint64, int32)
			IL_0019: stloc.0
			IL_001a: ldloca.s 0
			IL_001c: call instance valuetype System.Number/DiyFp System.Number/DiyFp::Normalize()
			IL_0021: stobj System.Number/DiyFp
			IL_0026: ldarg.0
			IL_0027: ldfld uint64 System.Number/DiyFp::f
			IL_002c: ldc.i4.1
			IL_002d: conv.i8
			IL_002e: ldarg.1
			IL_002f: ldc.i4.s 63
			IL_0031: and
			IL_0032: shl
			IL_0033: bne.un.s IL_0055

			IL_0035: ldarg.2
			IL_0036: ldarg.0
			IL_0037: ldfld uint64 System.Number/DiyFp::f
			IL_003c: ldc.i4.2
			IL_003d: shl
			IL_003e: ldc.i4.1
			IL_003f: conv.i8
			IL_0040: sub
			IL_0041: ldarg.0
			IL_0042: ldfld int32 System.Number/DiyFp::e
			IL_0047: ldc.i4.2
			IL_0048: sub
			IL_0049: newobj instance void System.Number/DiyFp::.ctor(uint64, int32)
			IL_004e: stobj System.Number/DiyFp
			IL_0053: br.s IL_0073

			IL_0055: ldarg.2
			IL_0056: ldarg.0
			IL_0057: ldfld uint64 System.Number/DiyFp::f
			IL_005c: ldc.i4.1
			IL_005d: shl
			IL_005e: ldc.i4.1
			IL_005f: conv.i8
			IL_0060: sub
			IL_0061: ldarg.0
			IL_0062: ldfld int32 System.Number/DiyFp::e
			IL_0067: ldc.i4.1
			IL_0068: sub
			IL_0069: newobj instance void System.Number/DiyFp::.ctor(uint64, int32)
			IL_006e: stobj System.Number/DiyFp

			IL_0073: ldarg.2
			IL_0074: ldarg.2
			IL_0075: ldfld uint64 System.Number/DiyFp::f
			IL_007a: ldarg.2
			IL_007b: ldfld int32 System.Number/DiyFp::e
			IL_0080: ldarg.3
			IL_0081: ldfld int32 System.Number/DiyFp::e
			IL_0086: sub
			IL_0087: ldc.i4.s 63
			IL_0089: and
			IL_008a: shl
			IL_008b: ldarg.3
			IL_008c: ldfld int32 System.Number/DiyFp::e
			IL_0091: newobj instance void System.Number/DiyFp::.ctor(uint64, int32)
			IL_0096: stobj System.Number/DiyFp
			IL_009b: ret
		} // end of method DiyFp::GetBoundaries

	} // end of class DiyFp

	.class nested assembly auto ansi abstract sealed beforefieldinit Grisu3
		extends System.Object
	{
		// Fields
		.field private static initonly int16[] s_CachedPowersBinaryExponent
		.field private static initonly int16[] s_CachedPowersDecimalExponent
		.field private static initonly uint64[] s_CachedPowersSignificand
		.field private static initonly uint32[] s_SmallPowersOfTen

		// Methods
		.method public hidebysig static 
			bool TryRunDouble (
				float64 'value',
				int32 requestedDigits,
				valuetype System.Number/NumberBuffer& number
			) cil managed 
		{
			// Method begins at RVA 0x7ac34
			// Code size 134 (0x86)
			.maxstack 6
			.locals (
				[0] float64,
				[1] int32,
				[2] int32,
				[3] bool,
				[4] valuetype System.Number/DiyFp,
				[5] valuetype System.Number/DiyFp,
				[6] valuetype System.Number/DiyFp,
				[7] valuetype System.Number/DiyFp,
				[8] valuetype System.Number/DiyFp
			)

			IL_0000: ldarg.0
			IL_0001: call bool System.Double::IsNegative(float64)
			IL_0006: brtrue.s IL_000b

			IL_0008: ldarg.0
			IL_0009: br.s IL_000d

			IL_000b: ldarg.0
			IL_000c: neg

			IL_000d: stloc.0
			IL_000e: ldarg.1
			IL_000f: ldc.i4.m1
			IL_0010: bne.un.s IL_003f

			IL_0012: ldloc.0
			IL_0013: ldloca.s 5
			IL_0015: ldloca.s 6
			IL_0017: call valuetype System.Number/DiyFp System.Number/DiyFp::CreateAndGetBoundaries(float64, valuetype System.Number/DiyFp&, valuetype System.Number/DiyFp&)
			IL_001c: stloc.s 7
			IL_001e: ldloca.s 7
			IL_0020: call instance valuetype System.Number/DiyFp System.Number/DiyFp::Normalize()
			IL_0025: stloc.s 4
			IL_0027: ldloca.s 5
			IL_0029: ldloca.s 4
			IL_002b: ldloca.s 6
			IL_002d: ldarg.2
			IL_002e: ldfld valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
			IL_0033: ldloca.s 1
			IL_0035: ldloca.s 2
			IL_0037: call bool System.Number/Grisu3::TryRunShortest(valuetype System.Number/DiyFp&, valuetype System.Number/DiyFp&, valuetype System.Number/DiyFp&, valuetype System.Span`1<uint8>, int32&, int32&)
			IL_003c: stloc.3
			IL_003d: br.s IL_0063

			IL_003f: ldloc.0
			IL_0040: newobj instance void System.Number/DiyFp::.ctor(float64)
			IL_0045: stloc.s 7
			IL_0047: ldloca.s 7
			IL_0049: call instance valuetype System.Number/DiyFp System.Number/DiyFp::Normalize()
			IL_004e: stloc.s 8
			IL_0050: ldloca.s 8
			IL_0052: ldarg.1
			IL_0053: ldarg.2
			IL_0054: ldfld valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
			IL_0059: ldloca.s 1
			IL_005b: ldloca.s 2
			IL_005d: call bool System.Number/Grisu3::TryRunCounted(valuetype System.Number/DiyFp&, int32, valuetype System.Span`1<uint8>, int32&, int32&)
			IL_0062: stloc.3

			IL_0063: ldloc.3
			IL_0064: brfalse.s IL_0084

			IL_0066: ldarg.2
			IL_0067: ldloc.1
			IL_0068: ldloc.2
			IL_0069: add
			IL_006a: stfld int32 System.Number/NumberBuffer::Scale
			IL_006f: ldarg.2
			IL_0070: ldflda valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
			IL_0075: ldloc.1
			IL_0076: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
			IL_007b: ldc.i4.0
			IL_007c: stind.i1
			IL_007d: ldarg.2
			IL_007e: ldloc.1
			IL_007f: stfld int32 System.Number/NumberBuffer::DigitsCount

			IL_0084: ldloc.3
			IL_0085: ret
		} // end of method Grisu3::TryRunDouble

		.method public hidebysig static 
			bool TryRunHalf (
				valuetype System.Half 'value',
				int32 requestedDigits,
				valuetype System.Number/NumberBuffer& number
			) cil managed 
		{
			// Method begins at RVA 0x7acc8
			// Code size 138 (0x8a)
			.maxstack 6
			.locals (
				[0] valuetype System.Half,
				[1] int32,
				[2] int32,
				[3] bool,
				[4] valuetype System.Number/DiyFp,
				[5] valuetype System.Number/DiyFp,
				[6] valuetype System.Number/DiyFp,
				[7] valuetype System.Number/DiyFp,
				[8] valuetype System.Number/DiyFp
			)

			IL_0000: ldarg.0
			IL_0001: call bool System.Half::IsNegative(valuetype System.Half)
			IL_0006: brtrue.s IL_000b

			IL_0008: ldarg.0
			IL_0009: br.s IL_0011

			IL_000b: ldarg.0
			IL_000c: call valuetype System.Half System.Half::Negate(valuetype System.Half)

			IL_0011: stloc.0
			IL_0012: ldarg.1
			IL_0013: ldc.i4.m1
			IL_0014: bne.un.s IL_0043

			IL_0016: ldloc.0
			IL_0017: ldloca.s 5
			IL_0019: ldloca.s 6
			IL_001b: call valuetype System.Number/DiyFp System.Number/DiyFp::CreateAndGetBoundaries(valuetype System.Half, valuetype System.Number/DiyFp&, valuetype System.Number/DiyFp&)
			IL_0020: stloc.s 7
			IL_0022: ldloca.s 7
			IL_0024: call instance valuetype System.Number/DiyFp System.Number/DiyFp::Normalize()
			IL_0029: stloc.s 4
			IL_002b: ldloca.s 5
			IL_002d: ldloca.s 4
			IL_002f: ldloca.s 6
			IL_0031: ldarg.2
			IL_0032: ldfld valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
			IL_0037: ldloca.s 1
			IL_0039: ldloca.s 2
			IL_003b: call bool System.Number/Grisu3::TryRunShortest(valuetype System.Number/DiyFp&, valuetype System.Number/DiyFp&, valuetype System.Number/DiyFp&, valuetype System.Span`1<uint8>, int32&, int32&)
			IL_0040: stloc.3
			IL_0041: br.s IL_0067

			IL_0043: ldloc.0
			IL_0044: newobj instance void System.Number/DiyFp::.ctor(valuetype System.Half)
			IL_0049: stloc.s 7
			IL_004b: ldloca.s 7
			IL_004d: call instance valuetype System.Number/DiyFp System.Number/DiyFp::Normalize()
			IL_0052: stloc.s 8
			IL_0054: ldloca.s 8
			IL_0056: ldarg.1
			IL_0057: ldarg.2
			IL_0058: ldfld valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
			IL_005d: ldloca.s 1
			IL_005f: ldloca.s 2
			IL_0061: call bool System.Number/Grisu3::TryRunCounted(valuetype System.Number/DiyFp&, int32, valuetype System.Span`1<uint8>, int32&, int32&)
			IL_0066: stloc.3

			IL_0067: ldloc.3
			IL_0068: brfalse.s IL_0088

			IL_006a: ldarg.2
			IL_006b: ldloc.1
			IL_006c: ldloc.2
			IL_006d: add
			IL_006e: stfld int32 System.Number/NumberBuffer::Scale
			IL_0073: ldarg.2
			IL_0074: ldflda valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
			IL_0079: ldloc.1
			IL_007a: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
			IL_007f: ldc.i4.0
			IL_0080: stind.i1
			IL_0081: ldarg.2
			IL_0082: ldloc.1
			IL_0083: stfld int32 System.Number/NumberBuffer::DigitsCount

			IL_0088: ldloc.3
			IL_0089: ret
		} // end of method Grisu3::TryRunHalf

		.method public hidebysig static 
			bool TryRunSingle (
				float32 'value',
				int32 requestedDigits,
				valuetype System.Number/NumberBuffer& number
			) cil managed 
		{
			// Method begins at RVA 0x7ad60
			// Code size 134 (0x86)
			.maxstack 6
			.locals (
				[0] float32,
				[1] int32,
				[2] int32,
				[3] bool,
				[4] valuetype System.Number/DiyFp,
				[5] valuetype System.Number/DiyFp,
				[6] valuetype System.Number/DiyFp,
				[7] valuetype System.Number/DiyFp,
				[8] valuetype System.Number/DiyFp
			)

			IL_0000: ldarg.0
			IL_0001: call bool System.Single::IsNegative(float32)
			IL_0006: brtrue.s IL_000b

			IL_0008: ldarg.0
			IL_0009: br.s IL_000d

			IL_000b: ldarg.0
			IL_000c: neg

			IL_000d: stloc.0
			IL_000e: ldarg.1
			IL_000f: ldc.i4.m1
			IL_0010: bne.un.s IL_003f

			IL_0012: ldloc.0
			IL_0013: ldloca.s 5
			IL_0015: ldloca.s 6
			IL_0017: call valuetype System.Number/DiyFp System.Number/DiyFp::CreateAndGetBoundaries(float32, valuetype System.Number/DiyFp&, valuetype System.Number/DiyFp&)
			IL_001c: stloc.s 7
			IL_001e: ldloca.s 7
			IL_0020: call instance valuetype System.Number/DiyFp System.Number/DiyFp::Normalize()
			IL_0025: stloc.s 4
			IL_0027: ldloca.s 5
			IL_0029: ldloca.s 4
			IL_002b: ldloca.s 6
			IL_002d: ldarg.2
			IL_002e: ldfld valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
			IL_0033: ldloca.s 1
			IL_0035: ldloca.s 2
			IL_0037: call bool System.Number/Grisu3::TryRunShortest(valuetype System.Number/DiyFp&, valuetype System.Number/DiyFp&, valuetype System.Number/DiyFp&, valuetype System.Span`1<uint8>, int32&, int32&)
			IL_003c: stloc.3
			IL_003d: br.s IL_0063

			IL_003f: ldloc.0
			IL_0040: newobj instance void System.Number/DiyFp::.ctor(float32)
			IL_0045: stloc.s 7
			IL_0047: ldloca.s 7
			IL_0049: call instance valuetype System.Number/DiyFp System.Number/DiyFp::Normalize()
			IL_004e: stloc.s 8
			IL_0050: ldloca.s 8
			IL_0052: ldarg.1
			IL_0053: ldarg.2
			IL_0054: ldfld valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
			IL_0059: ldloca.s 1
			IL_005b: ldloca.s 2
			IL_005d: call bool System.Number/Grisu3::TryRunCounted(valuetype System.Number/DiyFp&, int32, valuetype System.Span`1<uint8>, int32&, int32&)
			IL_0062: stloc.3

			IL_0063: ldloc.3
			IL_0064: brfalse.s IL_0084

			IL_0066: ldarg.2
			IL_0067: ldloc.1
			IL_0068: ldloc.2
			IL_0069: add
			IL_006a: stfld int32 System.Number/NumberBuffer::Scale
			IL_006f: ldarg.2
			IL_0070: ldflda valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
			IL_0075: ldloc.1
			IL_0076: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
			IL_007b: ldc.i4.0
			IL_007c: stind.i1
			IL_007d: ldarg.2
			IL_007e: ldloc.1
			IL_007f: stfld int32 System.Number/NumberBuffer::DigitsCount

			IL_0084: ldloc.3
			IL_0085: ret
		} // end of method Grisu3::TryRunSingle

		.method private hidebysig static 
			bool TryRunCounted (
				[in] valuetype System.Number/DiyFp& w,
				int32 requestedDigits,
				valuetype System.Span`1<uint8> buffer,
				[out] int32& length,
				[out] int32& decimalExponent
			) cil managed 
		{
			.param [1]
				.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
					01 00 00 00
				)
			// Method begins at RVA 0x7adf4
			// Code size 71 (0x47)
			.maxstack 5
			.locals (
				[0] int32,
				[1] int32,
				[2] valuetype System.Number/DiyFp,
				[3] int32,
				[4] valuetype System.Number/DiyFp,
				[5] bool,
				[6] int32
			)

			IL_0000: ldc.i4.s -60
			IL_0002: ldarg.0
			IL_0003: ldfld int32 System.Number/DiyFp::e
			IL_0008: ldc.i4.s 64
			IL_000a: add
			IL_000b: sub
			IL_000c: stloc.0
			IL_000d: ldc.i4.s -32
			IL_000f: ldarg.0
			IL_0010: ldfld int32 System.Number/DiyFp::e
			IL_0015: ldc.i4.s 64
			IL_0017: add
			IL_0018: sub
			IL_0019: stloc.1
			IL_001a: ldloc.0
			IL_001b: ldloc.1
			IL_001c: ldloca.s 3
			IL_001e: call valuetype System.Number/DiyFp System.Number/Grisu3::GetCachedPowerForBinaryExponentRange(int32, int32, int32&)
			IL_0023: stloc.2
			IL_0024: ldarg.0
			IL_0025: ldloca.s 2
			IL_0027: call instance valuetype System.Number/DiyFp System.Number/DiyFp::Multiply(valuetype System.Number/DiyFp&)
			IL_002c: stloc.s 4
			IL_002e: ldloca.s 4
			IL_0030: ldarg.1
			IL_0031: ldarg.2
			IL_0032: ldarg.3
			IL_0033: ldloca.s 6
			IL_0035: call bool System.Number/Grisu3::TryDigitGenCounted(valuetype System.Number/DiyFp&, int32, valuetype System.Span`1<uint8>, int32&, int32&)
			IL_003a: stloc.s 5
			IL_003c: ldarg.s decimalExponent
			IL_003e: ldloc.3
			IL_003f: neg
			IL_0040: ldloc.s 6
			IL_0042: add
			IL_0043: stind.i4
			IL_0044: ldloc.s 5
			IL_0046: ret
		} // end of method Grisu3::TryRunCounted

		.method private hidebysig static 
			bool TryRunShortest (
				[in] valuetype System.Number/DiyFp& boundaryMinus,
				[in] valuetype System.Number/DiyFp& w,
				[in] valuetype System.Number/DiyFp& boundaryPlus,
				valuetype System.Span`1<uint8> buffer,
				[out] int32& length,
				[out] int32& decimalExponent
			) cil managed 
		{
			.param [1]
				.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
					01 00 00 00
				)
			.param [2]
				.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
					01 00 00 00
				)
			.param [3]
				.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
					01 00 00 00
				)
			// Method begins at RVA 0x7ae48
			// Code size 95 (0x5f)
			.maxstack 6
			.locals (
				[0] int32,
				[1] int32,
				[2] valuetype System.Number/DiyFp,
				[3] int32,
				[4] valuetype System.Number/DiyFp,
				[5] valuetype System.Number/DiyFp,
				[6] valuetype System.Number/DiyFp,
				[7] bool,
				[8] int32
			)

			IL_0000: ldc.i4.s -60
			IL_0002: ldarg.1
			IL_0003: ldfld int32 System.Number/DiyFp::e
			IL_0008: ldc.i4.s 64
			IL_000a: add
			IL_000b: sub
			IL_000c: stloc.0
			IL_000d: ldc.i4.s -32
			IL_000f: ldarg.1
			IL_0010: ldfld int32 System.Number/DiyFp::e
			IL_0015: ldc.i4.s 64
			IL_0017: add
			IL_0018: sub
			IL_0019: stloc.1
			IL_001a: ldloc.0
			IL_001b: ldloc.1
			IL_001c: ldloca.s 3
			IL_001e: call valuetype System.Number/DiyFp System.Number/Grisu3::GetCachedPowerForBinaryExponentRange(int32, int32, int32&)
			IL_0023: stloc.2
			IL_0024: ldarg.1
			IL_0025: ldloca.s 2
			IL_0027: call instance valuetype System.Number/DiyFp System.Number/DiyFp::Multiply(valuetype System.Number/DiyFp&)
			IL_002c: stloc.s 4
			IL_002e: ldarg.0
			IL_002f: ldloca.s 2
			IL_0031: call instance valuetype System.Number/DiyFp System.Number/DiyFp::Multiply(valuetype System.Number/DiyFp&)
			IL_0036: stloc.s 5
			IL_0038: ldarg.2
			IL_0039: ldloca.s 2
			IL_003b: call instance valuetype System.Number/DiyFp System.Number/DiyFp::Multiply(valuetype System.Number/DiyFp&)
			IL_0040: stloc.s 6
			IL_0042: ldloca.s 5
			IL_0044: ldloca.s 4
			IL_0046: ldloca.s 6
			IL_0048: ldarg.3
			IL_0049: ldarg.s length
			IL_004b: ldloca.s 8
			IL_004d: call bool System.Number/Grisu3::TryDigitGenShortest(valuetype System.Number/DiyFp&, valuetype System.Number/DiyFp&, valuetype System.Number/DiyFp&, valuetype System.Span`1<uint8>, int32&, int32&)
			IL_0052: stloc.s 7
			IL_0054: ldarg.s decimalExponent
			IL_0056: ldloc.3
			IL_0057: neg
			IL_0058: ldloc.s 8
			IL_005a: add
			IL_005b: stind.i4
			IL_005c: ldloc.s 7
			IL_005e: ret
		} // end of method Grisu3::TryRunShortest

		.method private hidebysig static 
			uint32 BiggestPowerTen (
				uint32 number,
				int32 numberBits,
				[out] int32& exponentPlusOne
			) cil managed 
		{
			// Method begins at RVA 0x7aeb4
			// Code size 44 (0x2c)
			.maxstack 3
			.locals (
				[0] int32,
				[1] uint32
			)

			IL_0000: ldarg.1
			IL_0001: ldc.i4.1
			IL_0002: add
			IL_0003: ldc.i4 1233
			IL_0008: mul
			IL_0009: ldc.i4.s 12
			IL_000b: shr
			IL_000c: stloc.0
			IL_000d: ldsfld uint32[] System.Number/Grisu3::s_SmallPowersOfTen
			IL_0012: ldloc.0
			IL_0013: ldelem.u4
			IL_0014: stloc.1
			IL_0015: ldarg.0
			IL_0016: ldloc.1
			IL_0017: bge.un.s IL_0025

			IL_0019: ldloc.0
			IL_001a: ldc.i4.1
			IL_001b: sub
			IL_001c: stloc.0
			IL_001d: ldsfld uint32[] System.Number/Grisu3::s_SmallPowersOfTen
			IL_0022: ldloc.0
			IL_0023: ldelem.u4
			IL_0024: stloc.1

			IL_0025: ldarg.2
			IL_0026: ldloc.0
			IL_0027: ldc.i4.1
			IL_0028: add
			IL_0029: stind.i4
			IL_002a: ldloc.1
			IL_002b: ret
		} // end of method Grisu3::BiggestPowerTen

		.method private hidebysig static 
			bool TryDigitGenCounted (
				[in] valuetype System.Number/DiyFp& w,
				int32 requestedDigits,
				valuetype System.Span`1<uint8> buffer,
				[out] int32& length,
				[out] int32& kappa
			) cil managed 
		{
			.param [1]
				.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
					01 00 00 00
				)
			// Method begins at RVA 0x7aeec
			// Code size 353 (0x161)
			.maxstack 6
			.locals (
				[0] uint64,
				[1] valuetype System.Number/DiyFp,
				[2] uint32,
				[3] uint64,
				[4] uint32,
				[5] uint32,
				[6] uint64,
				[7] uint32
			)

			IL_0000: ldc.i4.1
			IL_0001: conv.i8
			IL_0002: stloc.0
			IL_0003: ldloca.s 1
			IL_0005: ldc.i4.1
			IL_0006: conv.i8
			IL_0007: ldarg.0
			IL_0008: ldfld int32 System.Number/DiyFp::e
			IL_000d: neg
			IL_000e: ldc.i4.s 63
			IL_0010: and
			IL_0011: shl
			IL_0012: ldarg.0
			IL_0013: ldfld int32 System.Number/DiyFp::e
			IL_0018: call instance void System.Number/DiyFp::.ctor(uint64, int32)
			IL_001d: ldarg.0
			IL_001e: ldfld uint64 System.Number/DiyFp::f
			IL_0023: ldloc.1
			IL_0024: ldfld int32 System.Number/DiyFp::e
			IL_0029: neg
			IL_002a: ldc.i4.s 63
			IL_002c: and
			IL_002d: shr.un
			IL_002e: conv.u4
			IL_002f: stloc.2
			IL_0030: ldarg.0
			IL_0031: ldfld uint64 System.Number/DiyFp::f
			IL_0036: ldloc.1
			IL_0037: ldfld uint64 System.Number/DiyFp::f
			IL_003c: ldc.i4.1
			IL_003d: conv.i8
			IL_003e: sub
			IL_003f: and
			IL_0040: stloc.3
			IL_0041: ldloc.3
			IL_0042: brtrue.s IL_005e

			IL_0044: ldarg.1
			IL_0045: ldc.i4.s 11
			IL_0047: bge.s IL_0055

			IL_0049: ldloc.2
			IL_004a: ldsfld uint32[] System.Number/Grisu3::s_SmallPowersOfTen
			IL_004f: ldarg.1
			IL_0050: ldc.i4.1
			IL_0051: sub
			IL_0052: ldelem.u4
			IL_0053: bge.un.s IL_005e

			IL_0055: ldarg.3
			IL_0056: ldc.i4.0
			IL_0057: stind.i4
			IL_0058: ldarg.s kappa
			IL_005a: ldc.i4.0
			IL_005b: stind.i4
			IL_005c: ldc.i4.0
			IL_005d: ret

			IL_005e: ldloc.2
			IL_005f: ldc.i4.s 64
			IL_0061: ldloc.1
			IL_0062: ldfld int32 System.Number/DiyFp::e
			IL_0067: neg
			IL_0068: sub
			IL_0069: ldarg.s kappa
			IL_006b: call uint32 System.Number/Grisu3::BiggestPowerTen(uint32, int32, int32&)
			IL_0070: stloc.s 4
			IL_0072: ldarg.3
			IL_0073: ldc.i4.0
			IL_0074: stind.i4
			IL_0075: br.s IL_00b0
			// loop start (head: IL_00b0)
				IL_0077: ldloc.2
				IL_0078: ldloc.s 4
				IL_007a: ldloca.s 2
				IL_007c: call uint32 System.Math::DivRem(uint32, uint32, uint32&)
				IL_0081: stloc.s 5
				IL_0083: ldarga.s buffer
				IL_0085: ldarg.3
				IL_0086: ldind.i4
				IL_0087: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
				IL_008c: ldc.i4.s 48
				IL_008e: ldloc.s 5
				IL_0090: add
				IL_0091: conv.u1
				IL_0092: stind.i1
				IL_0093: ldarg.3
				IL_0094: ldarg.3
				IL_0095: ldind.i4
				IL_0096: ldc.i4.1
				IL_0097: add
				IL_0098: stind.i4
				IL_0099: ldarg.1
				IL_009a: ldc.i4.1
				IL_009b: sub
				IL_009c: starg.s requestedDigits
				IL_009e: ldarg.s kappa
				IL_00a0: ldarg.s kappa
				IL_00a2: ldind.i4
				IL_00a3: ldc.i4.1
				IL_00a4: sub
				IL_00a5: stind.i4
				IL_00a6: ldarg.1
				IL_00a7: brfalse.s IL_00b6

				IL_00a9: ldloc.s 4
				IL_00ab: ldc.i4.s 10
				IL_00ad: div.un
				IL_00ae: stloc.s 4

				IL_00b0: ldarg.s kappa
				IL_00b2: ldind.i4
				IL_00b3: ldc.i4.0
				IL_00b4: bgt.s IL_0077
			// end loop

			IL_00b6: ldarg.1
			IL_00b7: brtrue.s IL_0130

			IL_00b9: ldloc.2
			IL_00ba: conv.u8
			IL_00bb: ldloc.1
			IL_00bc: ldfld int32 System.Number/DiyFp::e
			IL_00c1: neg
			IL_00c2: ldc.i4.s 63
			IL_00c4: and
			IL_00c5: shl
			IL_00c6: ldloc.3
			IL_00c7: add
			IL_00c8: stloc.s 6
			IL_00ca: ldarg.2
			IL_00cb: ldarg.3
			IL_00cc: ldind.i4
			IL_00cd: ldloc.s 6
			IL_00cf: ldloc.s 4
			IL_00d1: conv.u8
			IL_00d2: ldloc.1
			IL_00d3: ldfld int32 System.Number/DiyFp::e
			IL_00d8: neg
			IL_00d9: ldc.i4.s 63
			IL_00db: and
			IL_00dc: shl
			IL_00dd: ldloc.0
			IL_00de: ldarg.s kappa
			IL_00e0: call bool System.Number/Grisu3::TryRoundWeedCounted(valuetype System.Span`1<uint8>, int32, uint64, uint64, uint64, int32&)
			IL_00e5: ret
			// loop start (head: IL_0130)
				IL_00e6: ldloc.3
				IL_00e7: ldc.i4.s 10
				IL_00e9: conv.i8
				IL_00ea: mul
				IL_00eb: stloc.3
				IL_00ec: ldloc.0
				IL_00ed: ldc.i4.s 10
				IL_00ef: conv.i8
				IL_00f0: mul
				IL_00f1: stloc.0
				IL_00f2: ldloc.3
				IL_00f3: ldloc.1
				IL_00f4: ldfld int32 System.Number/DiyFp::e
				IL_00f9: neg
				IL_00fa: ldc.i4.s 63
				IL_00fc: and
				IL_00fd: shr.un
				IL_00fe: conv.u4
				IL_00ff: stloc.s 7
				IL_0101: ldarga.s buffer
				IL_0103: ldarg.3
				IL_0104: ldind.i4
				IL_0105: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
				IL_010a: ldc.i4.s 48
				IL_010c: ldloc.s 7
				IL_010e: add
				IL_010f: conv.u1
				IL_0110: stind.i1
				IL_0111: ldarg.3
				IL_0112: ldarg.3
				IL_0113: ldind.i4
				IL_0114: ldc.i4.1
				IL_0115: add
				IL_0116: stind.i4
				IL_0117: ldarg.1
				IL_0118: ldc.i4.1
				IL_0119: sub
				IL_011a: starg.s requestedDigits
				IL_011c: ldarg.s kappa
				IL_011e: ldarg.s kappa
				IL_0120: ldind.i4
				IL_0121: ldc.i4.1
				IL_0122: sub
				IL_0123: stind.i4
				IL_0124: ldloc.3
				IL_0125: ldloc.1
				IL_0126: ldfld uint64 System.Number/DiyFp::f
				IL_012b: ldc.i4.1
				IL_012c: conv.i8
				IL_012d: sub
				IL_012e: and
				IL_012f: stloc.3

				IL_0130: ldarg.1
				IL_0131: ldc.i4.0
				IL_0132: ble.s IL_0138

				IL_0134: ldloc.3
				IL_0135: ldloc.0
				IL_0136: bgt.un.s IL_00e6
			// end loop

			IL_0138: ldarg.1
			IL_0139: brfalse.s IL_014e

			IL_013b: ldarga.s buffer
			IL_013d: ldc.i4.0
			IL_013e: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
			IL_0143: ldc.i4.0
			IL_0144: stind.i1
			IL_0145: ldarg.3
			IL_0146: ldc.i4.0
			IL_0147: stind.i4
			IL_0148: ldarg.s kappa
			IL_014a: ldc.i4.0
			IL_014b: stind.i4
			IL_014c: ldc.i4.0
			IL_014d: ret

			IL_014e: ldarg.2
			IL_014f: ldarg.3
			IL_0150: ldind.i4
			IL_0151: ldloc.3
			IL_0152: ldloc.1
			IL_0153: ldfld uint64 System.Number/DiyFp::f
			IL_0158: ldloc.0
			IL_0159: ldarg.s kappa
			IL_015b: call bool System.Number/Grisu3::TryRoundWeedCounted(valuetype System.Span`1<uint8>, int32, uint64, uint64, uint64, int32&)
			IL_0160: ret
		} // end of method Grisu3::TryDigitGenCounted

		.method private hidebysig static 
			bool TryDigitGenShortest (
				[in] valuetype System.Number/DiyFp& low,
				[in] valuetype System.Number/DiyFp& w,
				[in] valuetype System.Number/DiyFp& high,
				valuetype System.Span`1<uint8> buffer,
				[out] int32& length,
				[out] int32& kappa
			) cil managed 
		{
			.param [1]
				.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
					01 00 00 00
				)
			.param [2]
				.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
					01 00 00 00
				)
			.param [3]
				.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
					01 00 00 00
				)
			// Method begins at RVA 0x7b05c
			// Code size 444 (0x1bc)
			.maxstack 8
			.locals (
				[0] uint64,
				[1] valuetype System.Number/DiyFp,
				[2] valuetype System.Number/DiyFp,
				[3] valuetype System.Number/DiyFp,
				[4] valuetype System.Number/DiyFp,
				[5] uint32,
				[6] uint64,
				[7] uint32,
				[8] uint32,
				[9] uint64,
				[10] uint32
			)

			IL_0000: ldc.i4.1
			IL_0001: conv.i8
			IL_0002: stloc.0
			IL_0003: ldloca.s 1
			IL_0005: ldarg.0
			IL_0006: ldfld uint64 System.Number/DiyFp::f
			IL_000b: ldloc.0
			IL_000c: sub
			IL_000d: ldarg.0
			IL_000e: ldfld int32 System.Number/DiyFp::e
			IL_0013: call instance void System.Number/DiyFp::.ctor(uint64, int32)
			IL_0018: ldloca.s 2
			IL_001a: ldarg.2
			IL_001b: ldfld uint64 System.Number/DiyFp::f
			IL_0020: ldloc.0
			IL_0021: add
			IL_0022: ldarg.2
			IL_0023: ldfld int32 System.Number/DiyFp::e
			IL_0028: call instance void System.Number/DiyFp::.ctor(uint64, int32)
			IL_002d: ldloca.s 2
			IL_002f: ldloca.s 1
			IL_0031: call instance valuetype System.Number/DiyFp System.Number/DiyFp::Subtract(valuetype System.Number/DiyFp&)
			IL_0036: stloc.3
			IL_0037: ldloca.s 4
			IL_0039: ldc.i4.1
			IL_003a: conv.i8
			IL_003b: ldarg.1
			IL_003c: ldfld int32 System.Number/DiyFp::e
			IL_0041: neg
			IL_0042: ldc.i4.s 63
			IL_0044: and
			IL_0045: shl
			IL_0046: ldarg.1
			IL_0047: ldfld int32 System.Number/DiyFp::e
			IL_004c: call instance void System.Number/DiyFp::.ctor(uint64, int32)
			IL_0051: ldloc.2
			IL_0052: ldfld uint64 System.Number/DiyFp::f
			IL_0057: ldloc.s 4
			IL_0059: ldfld int32 System.Number/DiyFp::e
			IL_005e: neg
			IL_005f: ldc.i4.s 63
			IL_0061: and
			IL_0062: shr.un
			IL_0063: conv.u4
			IL_0064: stloc.s 5
			IL_0066: ldloc.2
			IL_0067: ldfld uint64 System.Number/DiyFp::f
			IL_006c: ldloc.s 4
			IL_006e: ldfld uint64 System.Number/DiyFp::f
			IL_0073: ldc.i4.1
			IL_0074: conv.i8
			IL_0075: sub
			IL_0076: and
			IL_0077: stloc.s 6
			IL_0079: ldloc.s 5
			IL_007b: ldc.i4.s 64
			IL_007d: ldloc.s 4
			IL_007f: ldfld int32 System.Number/DiyFp::e
			IL_0084: neg
			IL_0085: sub
			IL_0086: ldarg.s kappa
			IL_0088: call uint32 System.Number/Grisu3::BiggestPowerTen(uint32, int32, int32&)
			IL_008d: stloc.s 7
			IL_008f: ldarg.s length
			IL_0091: ldc.i4.0
			IL_0092: stind.i4
			IL_0093: br IL_011a
			// loop start (head: IL_011a)
				IL_0098: ldloc.s 5
				IL_009a: ldloc.s 7
				IL_009c: ldloca.s 5
				IL_009e: call uint32 System.Math::DivRem(uint32, uint32, uint32&)
				IL_00a3: stloc.s 8
				IL_00a5: ldarga.s buffer
				IL_00a7: ldarg.s length
				IL_00a9: ldind.i4
				IL_00aa: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
				IL_00af: ldc.i4.s 48
				IL_00b1: ldloc.s 8
				IL_00b3: add
				IL_00b4: conv.u1
				IL_00b5: stind.i1
				IL_00b6: ldarg.s length
				IL_00b8: ldarg.s length
				IL_00ba: ldind.i4
				IL_00bb: ldc.i4.1
				IL_00bc: add
				IL_00bd: stind.i4
				IL_00be: ldarg.s kappa
				IL_00c0: ldarg.s kappa
				IL_00c2: ldind.i4
				IL_00c3: ldc.i4.1
				IL_00c4: sub
				IL_00c5: stind.i4
				IL_00c6: ldloc.s 5
				IL_00c8: conv.u8
				IL_00c9: ldloc.s 4
				IL_00cb: ldfld int32 System.Number/DiyFp::e
				IL_00d0: neg
				IL_00d1: ldc.i4.s 63
				IL_00d3: and
				IL_00d4: shl
				IL_00d5: ldloc.s 6
				IL_00d7: add
				IL_00d8: stloc.s 9
				IL_00da: ldloc.s 9
				IL_00dc: ldloc.3
				IL_00dd: ldfld uint64 System.Number/DiyFp::f
				IL_00e2: bge.un.s IL_0113

				IL_00e4: ldarg.3
				IL_00e5: ldarg.s length
				IL_00e7: ldind.i4
				IL_00e8: ldloca.s 2
				IL_00ea: ldarg.1
				IL_00eb: call instance valuetype System.Number/DiyFp System.Number/DiyFp::Subtract(valuetype System.Number/DiyFp&)
				IL_00f0: ldfld uint64 System.Number/DiyFp::f
				IL_00f5: ldloc.3
				IL_00f6: ldfld uint64 System.Number/DiyFp::f
				IL_00fb: ldloc.s 9
				IL_00fd: ldloc.s 7
				IL_00ff: conv.u8
				IL_0100: ldloc.s 4
				IL_0102: ldfld int32 System.Number/DiyFp::e
				IL_0107: neg
				IL_0108: ldc.i4.s 63
				IL_010a: and
				IL_010b: shl
				IL_010c: ldloc.0
				IL_010d: call bool System.Number/Grisu3::TryRoundWeedShortest(valuetype System.Span`1<uint8>, int32, uint64, uint64, uint64, uint64, uint64)
				IL_0112: ret

				IL_0113: ldloc.s 7
				IL_0115: ldc.i4.s 10
				IL_0117: div.un
				IL_0118: stloc.s 7

				IL_011a: ldarg.s kappa
				IL_011c: ldind.i4
				IL_011d: ldc.i4.0
				IL_011e: bgt IL_0098
			// end loop
			// loop start (head: IL_0123)
				IL_0123: ldloc.s 6
				IL_0125: ldc.i4.s 10
				IL_0127: conv.i8
				IL_0128: mul
				IL_0129: stloc.s 6
				IL_012b: ldloc.0
				IL_012c: ldc.i4.s 10
				IL_012e: conv.i8
				IL_012f: mul
				IL_0130: stloc.0
				IL_0131: ldloca.s 3
				IL_0133: ldloc.3
				IL_0134: ldfld uint64 System.Number/DiyFp::f
				IL_0139: ldc.i4.s 10
				IL_013b: conv.i8
				IL_013c: mul
				IL_013d: ldloc.3
				IL_013e: ldfld int32 System.Number/DiyFp::e
				IL_0143: call instance void System.Number/DiyFp::.ctor(uint64, int32)
				IL_0148: ldloc.s 6
				IL_014a: ldloc.s 4
				IL_014c: ldfld int32 System.Number/DiyFp::e
				IL_0151: neg
				IL_0152: ldc.i4.s 63
				IL_0154: and
				IL_0155: shr.un
				IL_0156: conv.u4
				IL_0157: stloc.s 10
				IL_0159: ldarga.s buffer
				IL_015b: ldarg.s length
				IL_015d: ldind.i4
				IL_015e: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
				IL_0163: ldc.i4.s 48
				IL_0165: ldloc.s 10
				IL_0167: add
				IL_0168: conv.u1
				IL_0169: stind.i1
				IL_016a: ldarg.s length
				IL_016c: ldarg.s length
				IL_016e: ldind.i4
				IL_016f: ldc.i4.1
				IL_0170: add
				IL_0171: stind.i4
				IL_0172: ldarg.s kappa
				IL_0174: ldarg.s kappa
				IL_0176: ldind.i4
				IL_0177: ldc.i4.1
				IL_0178: sub
				IL_0179: stind.i4
				IL_017a: ldloc.s 6
				IL_017c: ldloc.s 4
				IL_017e: ldfld uint64 System.Number/DiyFp::f
				IL_0183: ldc.i4.1
				IL_0184: conv.i8
				IL_0185: sub
				IL_0186: and
				IL_0187: stloc.s 6
				IL_0189: ldloc.s 6
				IL_018b: ldloc.3
				IL_018c: ldfld uint64 System.Number/DiyFp::f
				IL_0191: bge.un.s IL_0123
			// end loop

			IL_0193: ldarg.3
			IL_0194: ldarg.s length
			IL_0196: ldind.i4
			IL_0197: ldloca.s 2
			IL_0199: ldarg.1
			IL_019a: call instance valuetype System.Number/DiyFp System.Number/DiyFp::Subtract(valuetype System.Number/DiyFp&)
			IL_019f: ldfld uint64 System.Number/DiyFp::f
			IL_01a4: ldloc.0
			IL_01a5: mul
			IL_01a6: ldloc.3
			IL_01a7: ldfld uint64 System.Number/DiyFp::f
			IL_01ac: ldloc.s 6
			IL_01ae: ldloc.s 4
			IL_01b0: ldfld uint64 System.Number/DiyFp::f
			IL_01b5: ldloc.0
			IL_01b6: call bool System.Number/Grisu3::TryRoundWeedShortest(valuetype System.Span`1<uint8>, int32, uint64, uint64, uint64, uint64, uint64)
			IL_01bb: ret
		} // end of method Grisu3::TryDigitGenShortest

		.method private hidebysig static 
			valuetype System.Number/DiyFp GetCachedPowerForBinaryExponentRange (
				int32 minExponent,
				int32 maxExponent,
				[out] int32& decimalExponent
			) cil managed 
		{
			// Method begins at RVA 0x7b224
			// Code size 67 (0x43)
			.maxstack 3
			.locals (
				[0] float64,
				[1] int32
			)

			IL_0000: ldarg.0
			IL_0001: ldc.i4.s 64
			IL_0003: add
			IL_0004: ldc.i4.1
			IL_0005: sub
			IL_0006: conv.r8
			IL_0007: ldc.r8 0.3010299956639812
			IL_0010: mul
			IL_0011: call float64 System.Math::Ceiling(float64)
			IL_0016: stloc.0
			IL_0017: ldc.i4 348
			IL_001c: ldloc.0
			IL_001d: conv.i4
			IL_001e: add
			IL_001f: ldc.i4.1
			IL_0020: sub
			IL_0021: ldc.i4.8
			IL_0022: div
			IL_0023: ldc.i4.1
			IL_0024: add
			IL_0025: stloc.1
			IL_0026: ldarg.2
			IL_0027: ldsfld int16[] System.Number/Grisu3::s_CachedPowersDecimalExponent
			IL_002c: ldloc.1
			IL_002d: ldelem.i2
			IL_002e: stind.i4
			IL_002f: ldsfld uint64[] System.Number/Grisu3::s_CachedPowersSignificand
			IL_0034: ldloc.1
			IL_0035: ldelem.i8
			IL_0036: ldsfld int16[] System.Number/Grisu3::s_CachedPowersBinaryExponent
			IL_003b: ldloc.1
			IL_003c: ldelem.i2
			IL_003d: newobj instance void System.Number/DiyFp::.ctor(uint64, int32)
			IL_0042: ret
		} // end of method Grisu3::GetCachedPowerForBinaryExponentRange

		.method private hidebysig static 
			bool TryRoundWeedCounted (
				valuetype System.Span`1<uint8> buffer,
				int32 length,
				uint64 rest,
				uint64 tenKappa,
				uint64 unit,
				int32& kappa
			) cil managed 
		{
			// Method begins at RVA 0x7b274
			// Code size 166 (0xa6)
			.maxstack 3
			.locals (
				[0] int32
			)

			IL_0000: ldarg.s unit
			IL_0002: ldarg.3
			IL_0003: bge.un.s IL_000d

			IL_0005: ldarg.3
			IL_0006: ldarg.s unit
			IL_0008: sub
			IL_0009: ldarg.s unit
			IL_000b: bgt.un.s IL_000f

			IL_000d: ldc.i4.0
			IL_000e: ret

			IL_000f: ldarg.3
			IL_0010: ldarg.2
			IL_0011: sub
			IL_0012: ldarg.2
			IL_0013: ble.un.s IL_0024

			IL_0015: ldarg.3
			IL_0016: ldc.i4.2
			IL_0017: conv.i8
			IL_0018: ldarg.2
			IL_0019: mul
			IL_001a: sub
			IL_001b: ldc.i4.2
			IL_001c: conv.i8
			IL_001d: ldarg.s unit
			IL_001f: mul
			IL_0020: blt.un.s IL_0024

			IL_0022: ldc.i4.1
			IL_0023: ret

			IL_0024: ldarg.2
			IL_0025: ldarg.s unit
			IL_0027: ble.un.s IL_00a4

			IL_0029: ldarg.3
			IL_002a: ldarg.2
			IL_002b: ldarg.s unit
			IL_002d: sub
			IL_002e: ble.un.s IL_003c

			IL_0030: ldarg.3
			IL_0031: ldarg.2
			IL_0032: ldarg.s unit
			IL_0034: sub
			IL_0035: sub
			IL_0036: ldarg.2
			IL_0037: ldarg.s unit
			IL_0039: sub
			IL_003a: bgt.un.s IL_00a4

			IL_003c: ldarga.s buffer
			IL_003e: ldarg.1
			IL_003f: ldc.i4.1
			IL_0040: sub
			IL_0041: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
			IL_0046: dup
			IL_0047: ldind.u1
			IL_0048: ldc.i4.1
			IL_0049: add
			IL_004a: conv.u1
			IL_004b: stind.i1
			IL_004c: ldarg.1
			IL_004d: ldc.i4.1
			IL_004e: sub
			IL_004f: stloc.0
			IL_0050: br.s IL_007e
			// loop start (head: IL_007e)
				IL_0052: ldarga.s buffer
				IL_0054: ldloc.0
				IL_0055: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
				IL_005a: ldind.u1
				IL_005b: ldc.i4.s 58
				IL_005d: bne.un.s IL_0082

				IL_005f: ldarga.s buffer
				IL_0061: ldloc.0
				IL_0062: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
				IL_0067: ldc.i4.s 48
				IL_0069: stind.i1
				IL_006a: ldarga.s buffer
				IL_006c: ldloc.0
				IL_006d: ldc.i4.1
				IL_006e: sub
				IL_006f: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
				IL_0074: dup
				IL_0075: ldind.u1
				IL_0076: ldc.i4.1
				IL_0077: add
				IL_0078: conv.u1
				IL_0079: stind.i1
				IL_007a: ldloc.0
				IL_007b: ldc.i4.1
				IL_007c: sub
				IL_007d: stloc.0

				IL_007e: ldloc.0
				IL_007f: ldc.i4.0
				IL_0080: bgt.s IL_0052
			// end loop

			IL_0082: ldarga.s buffer
			IL_0084: ldc.i4.0
			IL_0085: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
			IL_008a: ldind.u1
			IL_008b: ldc.i4.s 58
			IL_008d: bne.un.s IL_00a2

			IL_008f: ldarga.s buffer
			IL_0091: ldc.i4.0
			IL_0092: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
			IL_0097: ldc.i4.s 49
			IL_0099: stind.i1
			IL_009a: ldarg.s kappa
			IL_009c: ldarg.s kappa
			IL_009e: ldind.i4
			IL_009f: ldc.i4.1
			IL_00a0: add
			IL_00a1: stind.i4

			IL_00a2: ldc.i4.1
			IL_00a3: ret

			IL_00a4: ldc.i4.0
			IL_00a5: ret
		} // end of method Grisu3::TryRoundWeedCounted

		.method private hidebysig static 
			bool TryRoundWeedShortest (
				valuetype System.Span`1<uint8> buffer,
				int32 length,
				uint64 distanceTooHighW,
				uint64 unsafeInterval,
				uint64 rest,
				uint64 tenKappa,
				uint64 unit
			) cil managed 
		{
			// Method begins at RVA 0x7b328
			// Code size 131 (0x83)
			.maxstack 4
			.locals (
				[0] uint64,
				[1] uint64
			)

			IL_0000: ldarg.2
			IL_0001: ldarg.s unit
			IL_0003: sub
			IL_0004: stloc.0
			IL_0005: ldarg.2
			IL_0006: ldarg.s unit
			IL_0008: add
			IL_0009: stloc.1
			IL_000a: br.s IL_0023
			// loop start (head: IL_0023)
				IL_000c: ldarga.s buffer
				IL_000e: ldarg.1
				IL_000f: ldc.i4.1
				IL_0010: sub
				IL_0011: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
				IL_0016: dup
				IL_0017: ldind.u1
				IL_0018: ldc.i4.1
				IL_0019: sub
				IL_001a: conv.u1
				IL_001b: stind.i1
				IL_001c: ldarg.s rest
				IL_001e: ldarg.s tenKappa
				IL_0020: add
				IL_0021: starg.s rest

				IL_0023: ldarg.s rest
				IL_0025: ldloc.0
				IL_0026: bge.un.s IL_0045

				IL_0028: ldarg.3
				IL_0029: ldarg.s rest
				IL_002b: sub
				IL_002c: ldarg.s tenKappa
				IL_002e: blt.un.s IL_0045

				IL_0030: ldarg.s rest
				IL_0032: ldarg.s tenKappa
				IL_0034: add
				IL_0035: ldloc.0
				IL_0036: blt.un.s IL_000c

				IL_0038: ldloc.0
				IL_0039: ldarg.s rest
				IL_003b: sub
				IL_003c: ldarg.s rest
				IL_003e: ldarg.s tenKappa
				IL_0040: add
				IL_0041: ldloc.0
				IL_0042: sub
				IL_0043: bge.un.s IL_000c
			// end loop

			IL_0045: ldarg.s rest
			IL_0047: ldloc.1
			IL_0048: bge.un.s IL_0069

			IL_004a: ldarg.3
			IL_004b: ldarg.s rest
			IL_004d: sub
			IL_004e: ldarg.s tenKappa
			IL_0050: blt.un.s IL_0069

			IL_0052: ldarg.s rest
			IL_0054: ldarg.s tenKappa
			IL_0056: add
			IL_0057: ldloc.1
			IL_0058: blt.un.s IL_0067

			IL_005a: ldloc.1
			IL_005b: ldarg.s rest
			IL_005d: sub
			IL_005e: ldarg.s rest
			IL_0060: ldarg.s tenKappa
			IL_0062: add
			IL_0063: ldloc.1
			IL_0064: sub
			IL_0065: ble.un.s IL_0069

			IL_0067: ldc.i4.0
			IL_0068: ret

			IL_0069: ldc.i4.2
			IL_006a: conv.i8
			IL_006b: ldarg.s unit
			IL_006d: mul
			IL_006e: ldarg.s rest
			IL_0070: bgt.un.s IL_0081

			IL_0072: ldarg.s rest
			IL_0074: ldarg.3
			IL_0075: ldc.i4.4
			IL_0076: conv.i8
			IL_0077: ldarg.s unit
			IL_0079: mul
			IL_007a: sub
			IL_007b: cgt.un
			IL_007d: ldc.i4.0
			IL_007e: ceq
			IL_0080: ret

			IL_0081: ldc.i4.0
			IL_0082: ret
		} // end of method Grisu3::TryRoundWeedShortest

		.method private hidebysig specialname rtspecialname static 
			void .cctor () cil managed 
		{
			// Method begins at RVA 0x7b3b8
			// Code size 93 (0x5d)
			.maxstack 3

			IL_0000: ldc.i4.s 87
			IL_0002: newarr System.Int16
			IL_0007: dup
			IL_0008: ldtoken field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=174' '<PrivateImplementationDetails>'::'538F052AB907338D0E8980BC5D8AD76919B39F0248ACDFAFAAA0CC76E39948F7'
			IL_000d: call void System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class System.Array, valuetype System.RuntimeFieldHandle)
			IL_0012: stsfld int16[] System.Number/Grisu3::s_CachedPowersBinaryExponent
			IL_0017: ldc.i4.s 87
			IL_0019: newarr System.Int16
			IL_001e: dup
			IL_001f: ldtoken field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=174' '<PrivateImplementationDetails>'::B2DCA9FD613841289369C721661A31B454A090D2146EFE106203F7821567907D
			IL_0024: call void System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class System.Array, valuetype System.RuntimeFieldHandle)
			IL_0029: stsfld int16[] System.Number/Grisu3::s_CachedPowersDecimalExponent
			IL_002e: ldc.i4.s 87
			IL_0030: newarr System.UInt64
			IL_0035: dup
			IL_0036: ldtoken field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=696' '<PrivateImplementationDetails>'::'02BF302F66F50150BCF5E322DA879E92E417084D14FBE4F5345DDCB68F863E51'
			IL_003b: call void System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class System.Array, valuetype System.RuntimeFieldHandle)
			IL_0040: stsfld uint64[] System.Number/Grisu3::s_CachedPowersSignificand
			IL_0045: ldc.i4.s 10
			IL_0047: newarr System.UInt32
			IL_004c: dup
			IL_004d: ldtoken field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=40' '<PrivateImplementationDetails>'::A516EECB41051151F0183A8B0B6F6693C43F7D9E1815F85CAAAB18E00A5269A2
			IL_0052: call void System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class System.Array, valuetype System.RuntimeFieldHandle)
			IL_0057: stsfld uint32[] System.Number/Grisu3::s_SmallPowersOfTen
			IL_005c: ret
		} // end of method Grisu3::.cctor

	} // end of class Grisu3

	.class nested assembly sequential ansi sealed beforefieldinit NumberBuffer
		extends System.ValueType
	{
		.custom instance void System.Runtime.CompilerServices.IsByRefLikeAttribute::.ctor() = (
			01 00 00 00
		)
		.custom instance void System.ObsoleteAttribute::.ctor(string, bool) = (
			01 00 52 54 79 70 65 73 20 77 69 74 68 20 65 6d
			62 65 64 64 65 64 20 72 65 66 65 72 65 6e 63 65
			73 20 61 72 65 20 6e 6f 74 20 73 75 70 70 6f 72
			74 65 64 20 69 6e 20 74 68 69 73 20 76 65 72 73
			69 6f 6e 20 6f 66 20 79 6f 75 72 20 63 6f 6d 70
			69 6c 65 72 2e 01 00 00
		)
		// Fields
		.field public int32 DigitsCount
		.field public int32 Scale
		.field public bool IsNegative
		.field public bool HasNonZeroTail
		.field public valuetype System.Number/NumberBufferKind Kind
		.field public valuetype System.Span`1<uint8> Digits

		// Methods
		.method public hidebysig specialname rtspecialname 
			instance void .ctor (
				valuetype System.Number/NumberBufferKind kind,
				uint8* digits,
				int32 digitsLength
			) cil managed 
		{
			// Method begins at RVA 0x7b421
			// Code size 63 (0x3f)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldc.i4.0
			IL_0002: stfld int32 System.Number/NumberBuffer::DigitsCount
			IL_0007: ldarg.0
			IL_0008: ldc.i4.0
			IL_0009: stfld int32 System.Number/NumberBuffer::Scale
			IL_000e: ldarg.0
			IL_000f: ldc.i4.0
			IL_0010: stfld bool System.Number/NumberBuffer::IsNegative
			IL_0015: ldarg.0
			IL_0016: ldc.i4.0
			IL_0017: stfld bool System.Number/NumberBuffer::HasNonZeroTail
			IL_001c: ldarg.0
			IL_001d: ldarg.1
			IL_001e: stfld valuetype System.Number/NumberBufferKind System.Number/NumberBuffer::Kind
			IL_0023: ldarg.0
			IL_0024: ldarg.2
			IL_0025: ldarg.3
			IL_0026: newobj instance void valuetype System.Span`1<uint8>::.ctor(void*, int32)
			IL_002b: stfld valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
			IL_0030: ldarg.0
			IL_0031: ldflda valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
			IL_0036: ldc.i4.0
			IL_0037: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
			IL_003c: ldc.i4.0
			IL_003d: stind.i1
			IL_003e: ret
		} // end of method NumberBuffer::.ctor

		.method public hidebysig 
			instance uint8* GetDigitsPointer () cil managed 
		{
			// Method begins at RVA 0x7b461
			// Code size 18 (0x12)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldflda valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
			IL_0006: ldc.i4.0
			IL_0007: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
			IL_000c: call void* Internal.Runtime.CompilerServices.Unsafe::AsPointer<uint8>(!!0&)
			IL_0011: ret
		} // end of method NumberBuffer::GetDigitsPointer

		.method public hidebysig virtual 
			instance string ToString () cil managed 
		{
			// Method begins at RVA 0x7b474
			// Code size 216 (0xd8)
			.maxstack 2
			.locals (
				[0] class System.Text.StringBuilder,
				[1] int32,
				[2] uint8
			)

			IL_0000: newobj instance void System.Text.StringBuilder::.ctor()
			IL_0005: stloc.0
			IL_0006: ldloc.0
			IL_0007: ldc.i4.s 91
			IL_0009: callvirt instance class System.Text.StringBuilder System.Text.StringBuilder::Append(char)
			IL_000e: pop
			IL_000f: ldloc.0
			IL_0010: ldc.i4.s 34
			IL_0012: callvirt instance class System.Text.StringBuilder System.Text.StringBuilder::Append(char)
			IL_0017: pop
			IL_0018: ldc.i4.0
			IL_0019: stloc.1
			IL_001a: br.s IL_0039
			// loop start (head: IL_0039)
				IL_001c: ldarg.0
				IL_001d: ldflda valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
				IL_0022: ldloc.1
				IL_0023: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
				IL_0028: ldind.u1
				IL_0029: stloc.2
				IL_002a: ldloc.2
				IL_002b: brfalse.s IL_0047

				IL_002d: ldloc.0
				IL_002e: ldloc.2
				IL_002f: callvirt instance class System.Text.StringBuilder System.Text.StringBuilder::Append(char)
				IL_0034: pop
				IL_0035: ldloc.1
				IL_0036: ldc.i4.1
				IL_0037: add
				IL_0038: stloc.1

				IL_0039: ldloc.1
				IL_003a: ldarg.0
				IL_003b: ldflda valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
				IL_0040: call instance int32 valuetype System.Span`1<uint8>::get_Length()
				IL_0045: blt.s IL_001c
			// end loop

			IL_0047: ldloc.0
			IL_0048: ldc.i4.s 34
			IL_004a: callvirt instance class System.Text.StringBuilder System.Text.StringBuilder::Append(char)
			IL_004f: pop
			IL_0050: ldloc.0
			IL_0051: ldstr ", Length = "
			IL_0056: callvirt instance class System.Text.StringBuilder System.Text.StringBuilder::Append(string)
			IL_005b: ldarg.0
			IL_005c: ldfld int32 System.Number/NumberBuffer::DigitsCount
			IL_0061: callvirt instance class System.Text.StringBuilder System.Text.StringBuilder::Append(int32)
			IL_0066: pop
			IL_0067: ldloc.0
			IL_0068: ldstr ", Scale = "
			IL_006d: callvirt instance class System.Text.StringBuilder System.Text.StringBuilder::Append(string)
			IL_0072: ldarg.0
			IL_0073: ldfld int32 System.Number/NumberBuffer::Scale
			IL_0078: callvirt instance class System.Text.StringBuilder System.Text.StringBuilder::Append(int32)
			IL_007d: pop
			IL_007e: ldloc.0
			IL_007f: ldstr ", IsNegative = "
			IL_0084: callvirt instance class System.Text.StringBuilder System.Text.StringBuilder::Append(string)
			IL_0089: ldarg.0
			IL_008a: ldfld bool System.Number/NumberBuffer::IsNegative
			IL_008f: callvirt instance class System.Text.StringBuilder System.Text.StringBuilder::Append(bool)
			IL_0094: pop
			IL_0095: ldloc.0
			IL_0096: ldstr ", HasNonZeroTail = "
			IL_009b: callvirt instance class System.Text.StringBuilder System.Text.StringBuilder::Append(string)
			IL_00a0: ldarg.0
			IL_00a1: ldfld bool System.Number/NumberBuffer::HasNonZeroTail
			IL_00a6: callvirt instance class System.Text.StringBuilder System.Text.StringBuilder::Append(bool)
			IL_00ab: pop
			IL_00ac: ldloc.0
			IL_00ad: ldstr ", Kind = "
			IL_00b2: callvirt instance class System.Text.StringBuilder System.Text.StringBuilder::Append(string)
			IL_00b7: ldarg.0
			IL_00b8: ldfld valuetype System.Number/NumberBufferKind System.Number/NumberBuffer::Kind
			IL_00bd: box System.Number/NumberBufferKind
			IL_00c2: callvirt instance class System.Text.StringBuilder System.Text.StringBuilder::Append(object)
			IL_00c7: pop
			IL_00c8: ldloc.0
			IL_00c9: ldc.i4.s 93
			IL_00cb: callvirt instance class System.Text.StringBuilder System.Text.StringBuilder::Append(char)
			IL_00d0: pop
			IL_00d1: ldloc.0
			IL_00d2: callvirt instance string System.Object::ToString()
			IL_00d7: ret
		} // end of method NumberBuffer::ToString

	} // end of class NumberBuffer

	.class nested assembly auto ansi sealed NumberBufferKind
		extends System.Enum
	{
		// Fields
		.field public specialname rtspecialname uint8 value__
		.field public static literal valuetype System.Number/NumberBufferKind Unknown = uint8(0)
		.field public static literal valuetype System.Number/NumberBufferKind Integer = uint8(1)
		.field public static literal valuetype System.Number/NumberBufferKind Decimal = uint8(2)
		.field public static literal valuetype System.Number/NumberBufferKind FloatingPoint = uint8(3)

	} // end of class NumberBufferKind

	.class nested public sequential ansi sealed beforefieldinit FloatingPointInfo
		extends System.ValueType
	{
		.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
			01 00 00 00
		)
		// Fields
		.field public static initonly valuetype System.Number/FloatingPointInfo Double
		.field public static initonly valuetype System.Number/FloatingPointInfo Single
		.field public static initonly valuetype System.Number/FloatingPointInfo Half
		.field private initonly uint64 '<ZeroBits>k__BackingField'
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		.field private initonly uint64 '<InfinityBits>k__BackingField'
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		.field private initonly uint64 '<NormalMantissaMask>k__BackingField'
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		.field private initonly uint64 '<DenormalMantissaMask>k__BackingField'
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		.field private initonly int32 '<MinBinaryExponent>k__BackingField'
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		.field private initonly int32 '<MaxBinaryExponent>k__BackingField'
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		.field private initonly int32 '<ExponentBias>k__BackingField'
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		.field private initonly int32 '<OverflowDecimalExponent>k__BackingField'
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		.field private initonly uint16 '<NormalMantissaBits>k__BackingField'
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		.field private initonly uint16 '<DenormalMantissaBits>k__BackingField'
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		.field private initonly uint16 '<ExponentBits>k__BackingField'
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)

		// Methods
		.method public hidebysig specialname 
			instance uint64 get_ZeroBits () cil managed 
		{
			.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
				01 00 00 00
			)
			// Method begins at RVA 0x7b558
			// Code size 7 (0x7)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld uint64 System.Number/FloatingPointInfo::'<ZeroBits>k__BackingField'
			IL_0006: ret
		} // end of method FloatingPointInfo::get_ZeroBits

		.method public hidebysig specialname 
			instance uint64 get_InfinityBits () cil managed 
		{
			.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
				01 00 00 00
			)
			// Method begins at RVA 0x7b560
			// Code size 7 (0x7)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld uint64 System.Number/FloatingPointInfo::'<InfinityBits>k__BackingField'
			IL_0006: ret
		} // end of method FloatingPointInfo::get_InfinityBits

		.method public hidebysig specialname 
			instance uint64 get_NormalMantissaMask () cil managed 
		{
			.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
				01 00 00 00
			)
			// Method begins at RVA 0x7b568
			// Code size 7 (0x7)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld uint64 System.Number/FloatingPointInfo::'<NormalMantissaMask>k__BackingField'
			IL_0006: ret
		} // end of method FloatingPointInfo::get_NormalMantissaMask

		.method public hidebysig specialname 
			instance uint64 get_DenormalMantissaMask () cil managed 
		{
			.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
				01 00 00 00
			)
			// Method begins at RVA 0x7b570
			// Code size 7 (0x7)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld uint64 System.Number/FloatingPointInfo::'<DenormalMantissaMask>k__BackingField'
			IL_0006: ret
		} // end of method FloatingPointInfo::get_DenormalMantissaMask

		.method public hidebysig specialname 
			instance int32 get_MinBinaryExponent () cil managed 
		{
			.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
				01 00 00 00
			)
			// Method begins at RVA 0x7b578
			// Code size 7 (0x7)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld int32 System.Number/FloatingPointInfo::'<MinBinaryExponent>k__BackingField'
			IL_0006: ret
		} // end of method FloatingPointInfo::get_MinBinaryExponent

		.method public hidebysig specialname 
			instance int32 get_MaxBinaryExponent () cil managed 
		{
			.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
				01 00 00 00
			)
			// Method begins at RVA 0x7b580
			// Code size 7 (0x7)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld int32 System.Number/FloatingPointInfo::'<MaxBinaryExponent>k__BackingField'
			IL_0006: ret
		} // end of method FloatingPointInfo::get_MaxBinaryExponent

		.method public hidebysig specialname 
			instance int32 get_ExponentBias () cil managed 
		{
			.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
				01 00 00 00
			)
			// Method begins at RVA 0x7b588
			// Code size 7 (0x7)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld int32 System.Number/FloatingPointInfo::'<ExponentBias>k__BackingField'
			IL_0006: ret
		} // end of method FloatingPointInfo::get_ExponentBias

		.method public hidebysig specialname 
			instance int32 get_OverflowDecimalExponent () cil managed 
		{
			.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
				01 00 00 00
			)
			// Method begins at RVA 0x7b590
			// Code size 7 (0x7)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld int32 System.Number/FloatingPointInfo::'<OverflowDecimalExponent>k__BackingField'
			IL_0006: ret
		} // end of method FloatingPointInfo::get_OverflowDecimalExponent

		.method public hidebysig specialname 
			instance uint16 get_NormalMantissaBits () cil managed 
		{
			.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
				01 00 00 00
			)
			// Method begins at RVA 0x7b598
			// Code size 7 (0x7)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld uint16 System.Number/FloatingPointInfo::'<NormalMantissaBits>k__BackingField'
			IL_0006: ret
		} // end of method FloatingPointInfo::get_NormalMantissaBits

		.method public hidebysig specialname 
			instance uint16 get_DenormalMantissaBits () cil managed 
		{
			.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
				01 00 00 00
			)
			// Method begins at RVA 0x7b5a0
			// Code size 7 (0x7)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld uint16 System.Number/FloatingPointInfo::'<DenormalMantissaBits>k__BackingField'
			IL_0006: ret
		} // end of method FloatingPointInfo::get_DenormalMantissaBits

		.method public hidebysig specialname rtspecialname 
			instance void .ctor (
				uint16 denormalMantissaBits,
				uint16 exponentBits,
				int32 maxBinaryExponent,
				int32 exponentBias,
				uint64 infinityBits
			) cil managed 
		{
			// Method begins at RVA 0x7b5a8
			// Code size 120 (0x78)
			.maxstack 4

			IL_0000: ldarg.0
			IL_0001: ldarg.2
			IL_0002: stfld uint16 System.Number/FloatingPointInfo::'<ExponentBits>k__BackingField'
			IL_0007: ldarg.0
			IL_0008: ldarg.1
			IL_0009: stfld uint16 System.Number/FloatingPointInfo::'<DenormalMantissaBits>k__BackingField'
			IL_000e: ldarg.0
			IL_000f: ldarg.1
			IL_0010: ldc.i4.1
			IL_0011: add
			IL_0012: conv.u2
			IL_0013: stfld uint16 System.Number/FloatingPointInfo::'<NormalMantissaBits>k__BackingField'
			IL_0018: ldarg.0
			IL_0019: ldarg.3
			IL_001a: ldc.i4.2
			IL_001b: ldarg.0
			IL_001c: call instance uint16 System.Number/FloatingPointInfo::get_NormalMantissaBits()
			IL_0021: mul
			IL_0022: add
			IL_0023: ldc.i4.3
			IL_0024: div
			IL_0025: stfld int32 System.Number/FloatingPointInfo::'<OverflowDecimalExponent>k__BackingField'
			IL_002a: ldarg.0
			IL_002b: ldarg.s exponentBias
			IL_002d: stfld int32 System.Number/FloatingPointInfo::'<ExponentBias>k__BackingField'
			IL_0032: ldarg.0
			IL_0033: ldarg.3
			IL_0034: stfld int32 System.Number/FloatingPointInfo::'<MaxBinaryExponent>k__BackingField'
			IL_0039: ldarg.0
			IL_003a: ldc.i4.1
			IL_003b: ldarg.3
			IL_003c: sub
			IL_003d: stfld int32 System.Number/FloatingPointInfo::'<MinBinaryExponent>k__BackingField'
			IL_0042: ldarg.0
			IL_0043: ldc.i4.1
			IL_0044: conv.i8
			IL_0045: ldarg.1
			IL_0046: ldc.i4.s 63
			IL_0048: and
			IL_0049: shl
			IL_004a: ldc.i4.1
			IL_004b: conv.i8
			IL_004c: sub
			IL_004d: stfld uint64 System.Number/FloatingPointInfo::'<DenormalMantissaMask>k__BackingField'
			IL_0052: ldarg.0
			IL_0053: ldc.i4.1
			IL_0054: conv.i8
			IL_0055: ldarg.0
			IL_0056: call instance uint16 System.Number/FloatingPointInfo::get_NormalMantissaBits()
			IL_005b: ldc.i4.s 63
			IL_005d: and
			IL_005e: shl
			IL_005f: ldc.i4.1
			IL_0060: conv.i8
			IL_0061: sub
			IL_0062: stfld uint64 System.Number/FloatingPointInfo::'<NormalMantissaMask>k__BackingField'
			IL_0067: ldarg.0
			IL_0068: ldarg.s infinityBits
			IL_006a: stfld uint64 System.Number/FloatingPointInfo::'<InfinityBits>k__BackingField'
			IL_006f: ldarg.0
			IL_0070: ldc.i4.0
			IL_0071: conv.i8
			IL_0072: stfld uint64 System.Number/FloatingPointInfo::'<ZeroBits>k__BackingField'
			IL_0077: ret
		} // end of method FloatingPointInfo::.ctor

		.method private hidebysig specialname rtspecialname static 
			void .cctor () cil managed 
		{
			// Method begins at RVA 0x7b62c
			// Code size 80 (0x50)
			.maxstack 5

			IL_0000: ldc.i4.s 52
			IL_0002: ldc.i4.s 11
			IL_0004: ldc.i4 1023
			IL_0009: ldc.i4 1023
			IL_000e: ldc.i8 9218868437227405312
			IL_0017: newobj instance void System.Number/FloatingPointInfo::.ctor(uint16, uint16, int32, int32, uint64)
			IL_001c: stsfld valuetype System.Number/FloatingPointInfo System.Number/FloatingPointInfo::Double
			IL_0021: ldc.i4.s 23
			IL_0023: ldc.i4.8
			IL_0024: ldc.i4.s 127
			IL_0026: ldc.i4.s 127
			IL_0028: ldc.i4 2139095040
			IL_002d: conv.i8
			IL_002e: newobj instance void System.Number/FloatingPointInfo::.ctor(uint16, uint16, int32, int32, uint64)
			IL_0033: stsfld valuetype System.Number/FloatingPointInfo System.Number/FloatingPointInfo::Single
			IL_0038: ldc.i4.s 10
			IL_003a: ldc.i4.5
			IL_003b: ldc.i4.s 15
			IL_003d: ldc.i4.s 15
			IL_003f: ldc.i4 31744
			IL_0044: conv.i8
			IL_0045: newobj instance void System.Number/FloatingPointInfo::.ctor(uint16, uint16, int32, int32, uint64)
			IL_004a: stsfld valuetype System.Number/FloatingPointInfo System.Number/FloatingPointInfo::Half
			IL_004f: ret
		} // end of method FloatingPointInfo::.cctor

		// Properties
		.property instance uint64 ZeroBits()
		{
			.get instance uint64 System.Number/FloatingPointInfo::get_ZeroBits()
		}
		.property instance uint64 InfinityBits()
		{
			.get instance uint64 System.Number/FloatingPointInfo::get_InfinityBits()
		}
		.property instance uint64 NormalMantissaMask()
		{
			.get instance uint64 System.Number/FloatingPointInfo::get_NormalMantissaMask()
		}
		.property instance uint64 DenormalMantissaMask()
		{
			.get instance uint64 System.Number/FloatingPointInfo::get_DenormalMantissaMask()
		}
		.property instance int32 MinBinaryExponent()
		{
			.get instance int32 System.Number/FloatingPointInfo::get_MinBinaryExponent()
		}
		.property instance int32 MaxBinaryExponent()
		{
			.get instance int32 System.Number/FloatingPointInfo::get_MaxBinaryExponent()
		}
		.property instance int32 ExponentBias()
		{
			.get instance int32 System.Number/FloatingPointInfo::get_ExponentBias()
		}
		.property instance int32 OverflowDecimalExponent()
		{
			.get instance int32 System.Number/FloatingPointInfo::get_OverflowDecimalExponent()
		}
		.property instance uint16 NormalMantissaBits()
		{
			.get instance uint16 System.Number/FloatingPointInfo::get_NormalMantissaBits()
		}
		.property instance uint16 DenormalMantissaBits()
		{
			.get instance uint16 System.Number/FloatingPointInfo::get_DenormalMantissaBits()
		}

	} // end of class FloatingPointInfo

	.class nested assembly auto ansi sealed ParsingStatus
		extends System.Enum
	{
		// Fields
		.field public specialname rtspecialname int32 value__
		.field public static literal valuetype System.Number/ParsingStatus OK = int32(0)
		.field public static literal valuetype System.Number/ParsingStatus Failed = int32(1)
		.field public static literal valuetype System.Number/ParsingStatus Overflow = int32(2)

	} // end of class ParsingStatus


	// Fields
	.field private static initonly string[] s_singleDigitStringCache
	.field private static initonly string[] s_posCurrencyFormats
	.field private static initonly string[] s_negCurrencyFormats
	.field private static initonly string[] s_posPercentFormats
	.field private static initonly string[] s_negPercentFormats
	.field private static initonly string[] s_negNumberFormats
	.field private static initonly float32[] s_Pow10SingleTable
	.field private static initonly float64[] s_Pow10DoubleTable

	// Methods
	.method public hidebysig static 
		void Dragon4Double (
			float64 'value',
			int32 cutoffNumber,
			bool isSignificantDigits,
			valuetype System.Number/NumberBuffer& number
		) cil managed 
	{
		// Method begins at RVA 0x741b0
		// Code size 114 (0x72)
		.maxstack 8
		.locals (
			[0] float64,
			[1] uint64,
			[2] int32,
			[3] uint32,
			[4] bool,
			[5] int32,
			[6] int32
		)

		IL_0000: ldarg.0
		IL_0001: call bool System.Double::IsNegative(float64)
		IL_0006: brtrue.s IL_000b

		IL_0008: ldarg.0
		IL_0009: br.s IL_000d

		IL_000b: ldarg.0
		IL_000c: neg

		IL_000d: stloc.0
		IL_000e: ldarg.0
		IL_000f: ldloca.s 2
		IL_0011: call uint64 System.Number::ExtractFractionAndBiasedExponent(float64, int32&)
		IL_0016: stloc.1
		IL_0017: ldc.i4.0
		IL_0018: stloc.s 4
		IL_001a: ldloc.1
		IL_001b: ldc.i4.s 52
		IL_001d: shr.un
		IL_001e: brfalse.s IL_0033

		IL_0020: ldc.i4.s 52
		IL_0022: stloc.3
		IL_0023: ldloc.1
		IL_0024: ldc.i8 4503599627370496
		IL_002d: ceq
		IL_002f: stloc.s 4
		IL_0031: br.s IL_003a

		IL_0033: ldloc.1
		IL_0034: call int32 System.Numerics.BitOperations::Log2(uint64)
		IL_0039: stloc.3

		IL_003a: ldloc.1
		IL_003b: ldloc.2
		IL_003c: ldloc.3
		IL_003d: ldloc.s 4
		IL_003f: ldarg.1
		IL_0040: ldarg.2
		IL_0041: ldarg.3
		IL_0042: ldfld valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
		IL_0047: ldloca.s 6
		IL_0049: call uint32 System.Number::Dragon4(uint64, int32, uint32, bool, int32, bool, valuetype System.Span`1<uint8>, int32&)
		IL_004e: stloc.s 5
		IL_0050: ldarg.3
		IL_0051: ldloc.s 6
		IL_0053: ldc.i4.1
		IL_0054: add
		IL_0055: stfld int32 System.Number/NumberBuffer::Scale
		IL_005a: ldarg.3
		IL_005b: ldflda valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
		IL_0060: ldloc.s 5
		IL_0062: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
		IL_0067: ldc.i4.0
		IL_0068: stind.i1
		IL_0069: ldarg.3
		IL_006a: ldloc.s 5
		IL_006c: stfld int32 System.Number/NumberBuffer::DigitsCount
		IL_0071: ret
	} // end of method Number::Dragon4Double

	.method public hidebysig static 
		void Dragon4Half (
			valuetype System.Half 'value',
			int32 cutoffNumber,
			bool isSignificantDigits,
			valuetype System.Number/NumberBuffer& number
		) cil managed 
	{
		// Method begins at RVA 0x74230
		// Code size 115 (0x73)
		.maxstack 8
		.locals (
			[0] valuetype System.Half,
			[1] uint16,
			[2] int32,
			[3] uint32,
			[4] bool,
			[5] int32,
			[6] int32
		)

		IL_0000: ldarg.0
		IL_0001: call bool System.Half::IsNegative(valuetype System.Half)
		IL_0006: brtrue.s IL_000b

		IL_0008: ldarg.0
		IL_0009: br.s IL_0011

		IL_000b: ldarg.0
		IL_000c: call valuetype System.Half System.Half::Negate(valuetype System.Half)

		IL_0011: stloc.0
		IL_0012: ldarg.0
		IL_0013: ldloca.s 2
		IL_0015: call uint16 System.Number::ExtractFractionAndBiasedExponent(valuetype System.Half, int32&)
		IL_001a: stloc.1
		IL_001b: ldc.i4.0
		IL_001c: stloc.s 4
		IL_001e: ldloc.1
		IL_001f: ldc.i4.s 10
		IL_0021: shr
		IL_0022: brfalse.s IL_0033

		IL_0024: ldc.i4.s 10
		IL_0026: stloc.3
		IL_0027: ldloc.1
		IL_0028: ldc.i4 1024
		IL_002d: ceq
		IL_002f: stloc.s 4
		IL_0031: br.s IL_003a

		IL_0033: ldloc.1
		IL_0034: call int32 System.Numerics.BitOperations::Log2(uint32)
		IL_0039: stloc.3

		IL_003a: ldloc.1
		IL_003b: conv.u8
		IL_003c: ldloc.2
		IL_003d: ldloc.3
		IL_003e: ldloc.s 4
		IL_0040: ldarg.1
		IL_0041: ldarg.2
		IL_0042: ldarg.3
		IL_0043: ldfld valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
		IL_0048: ldloca.s 6
		IL_004a: call uint32 System.Number::Dragon4(uint64, int32, uint32, bool, int32, bool, valuetype System.Span`1<uint8>, int32&)
		IL_004f: stloc.s 5
		IL_0051: ldarg.3
		IL_0052: ldloc.s 6
		IL_0054: ldc.i4.1
		IL_0055: add
		IL_0056: stfld int32 System.Number/NumberBuffer::Scale
		IL_005b: ldarg.3
		IL_005c: ldflda valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
		IL_0061: ldloc.s 5
		IL_0063: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
		IL_0068: ldc.i4.0
		IL_0069: stind.i1
		IL_006a: ldarg.3
		IL_006b: ldloc.s 5
		IL_006d: stfld int32 System.Number/NumberBuffer::DigitsCount
		IL_0072: ret
	} // end of method Number::Dragon4Half

	.method public hidebysig static 
		void Dragon4Single (
			float32 'value',
			int32 cutoffNumber,
			bool isSignificantDigits,
			valuetype System.Number/NumberBuffer& number
		) cil managed 
	{
		// Method begins at RVA 0x742b0
		// Code size 111 (0x6f)
		.maxstack 8
		.locals (
			[0] float32,
			[1] uint32,
			[2] int32,
			[3] uint32,
			[4] bool,
			[5] int32,
			[6] int32
		)

		IL_0000: ldarg.0
		IL_0001: call bool System.Single::IsNegative(float32)
		IL_0006: brtrue.s IL_000b

		IL_0008: ldarg.0
		IL_0009: br.s IL_000d

		IL_000b: ldarg.0
		IL_000c: neg

		IL_000d: stloc.0
		IL_000e: ldarg.0
		IL_000f: ldloca.s 2
		IL_0011: call uint32 System.Number::ExtractFractionAndBiasedExponent(float32, int32&)
		IL_0016: stloc.1
		IL_0017: ldc.i4.0
		IL_0018: stloc.s 4
		IL_001a: ldloc.1
		IL_001b: ldc.i4.s 23
		IL_001d: shr.un
		IL_001e: brfalse.s IL_002f

		IL_0020: ldc.i4.s 23
		IL_0022: stloc.3
		IL_0023: ldloc.1
		IL_0024: ldc.i4 8388608
		IL_0029: ceq
		IL_002b: stloc.s 4
		IL_002d: br.s IL_0036

		IL_002f: ldloc.1
		IL_0030: call int32 System.Numerics.BitOperations::Log2(uint32)
		IL_0035: stloc.3

		IL_0036: ldloc.1
		IL_0037: conv.u8
		IL_0038: ldloc.2
		IL_0039: ldloc.3
		IL_003a: ldloc.s 4
		IL_003c: ldarg.1
		IL_003d: ldarg.2
		IL_003e: ldarg.3
		IL_003f: ldfld valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
		IL_0044: ldloca.s 6
		IL_0046: call uint32 System.Number::Dragon4(uint64, int32, uint32, bool, int32, bool, valuetype System.Span`1<uint8>, int32&)
		IL_004b: stloc.s 5
		IL_004d: ldarg.3
		IL_004e: ldloc.s 6
		IL_0050: ldc.i4.1
		IL_0051: add
		IL_0052: stfld int32 System.Number/NumberBuffer::Scale
		IL_0057: ldarg.3
		IL_0058: ldflda valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
		IL_005d: ldloc.s 5
		IL_005f: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
		IL_0064: ldc.i4.0
		IL_0065: stind.i1
		IL_0066: ldarg.3
		IL_0067: ldloc.s 5
		IL_0069: stfld int32 System.Number/NumberBuffer::DigitsCount
		IL_006e: ret
	} // end of method Number::Dragon4Single

	.method private hidebysig static 
		uint32 Dragon4 (
			uint64 mantissa,
			int32 exponent,
			uint32 mantissaHighBitIdx,
			bool hasUnequalMargins,
			int32 cutoffNumber,
			bool isSignificantDigits,
			valuetype System.Span`1<uint8> buffer,
			[out] int32& decimalExponent
		) cil managed 
	{
		// Method begins at RVA 0x7432c
		// Code size 1029 (0x405)
		.maxstack 3
		.locals (
			[0] int32,
			[1] valuetype System.Number/BigInteger,
			[2] valuetype System.Number/BigInteger,
			[3] valuetype System.Number/BigInteger,
			[4] valuetype System.Number/BigInteger*,
			[5] valuetype System.Number/BigInteger,
			[6] int32,
			[7] bool,
			[8] bool,
			[9] int32,
			[10] uint32,
			[11] bool,
			[12] bool,
			[13] uint32,
			[14] bool,
			[15] uint32,
			[16] valuetype System.Number/BigInteger,
			[17] valuetype System.Number/BigInteger,
			[18] int32,
			[19] int32,
			[20] uint32,
			[21] uint32,
			[22] valuetype System.Number/BigInteger,
			[23] int32,
			[24] int32,
			[25] int32
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldarg.3
		IL_0003: brfalse.s IL_0065

		IL_0005: ldarg.1
		IL_0006: ldc.i4.0
		IL_0007: ble.s IL_0038

		IL_0009: ldloca.s 2
		IL_000b: ldc.i4.4
		IL_000c: conv.i8
		IL_000d: ldarg.0
		IL_000e: mul
		IL_000f: call void System.Number/BigInteger::SetUInt64(valuetype System.Number/BigInteger&, uint64)
		IL_0014: ldloca.s 2
		IL_0016: ldarg.1
		IL_0017: call instance void System.Number/BigInteger::ShiftLeft(uint32)
		IL_001c: ldloca.s 1
		IL_001e: ldc.i4.4
		IL_001f: call void System.Number/BigInteger::SetUInt32(valuetype System.Number/BigInteger&, uint32)
		IL_0024: ldarg.1
		IL_0025: ldloca.s 3
		IL_0027: call void System.Number/BigInteger::Pow2(uint32, valuetype System.Number/BigInteger&)
		IL_002c: ldarg.1
		IL_002d: ldc.i4.1
		IL_002e: add
		IL_002f: ldloca.s 5
		IL_0031: call void System.Number/BigInteger::Pow2(uint32, valuetype System.Number/BigInteger&)
		IL_0036: br.s IL_005e

		IL_0038: ldloca.s 2
		IL_003a: ldc.i4.4
		IL_003b: conv.i8
		IL_003c: ldarg.0
		IL_003d: mul
		IL_003e: call void System.Number/BigInteger::SetUInt64(valuetype System.Number/BigInteger&, uint64)
		IL_0043: ldarg.1
		IL_0044: neg
		IL_0045: ldc.i4.2
		IL_0046: add
		IL_0047: ldloca.s 1
		IL_0049: call void System.Number/BigInteger::Pow2(uint32, valuetype System.Number/BigInteger&)
		IL_004e: ldloca.s 3
		IL_0050: ldc.i4.1
		IL_0051: call void System.Number/BigInteger::SetUInt32(valuetype System.Number/BigInteger&, uint32)
		IL_0056: ldloca.s 5
		IL_0058: ldc.i4.2
		IL_0059: call void System.Number/BigInteger::SetUInt32(valuetype System.Number/BigInteger&, uint32)

		IL_005e: ldloca.s 5
		IL_0060: conv.u
		IL_0061: stloc.s 4
		IL_0063: br.s IL_00b1

		IL_0065: ldarg.1
		IL_0066: ldc.i4.0
		IL_0067: ble.s IL_008e

		IL_0069: ldloca.s 2
		IL_006b: ldc.i4.2
		IL_006c: conv.i8
		IL_006d: ldarg.0
		IL_006e: mul
		IL_006f: call void System.Number/BigInteger::SetUInt64(valuetype System.Number/BigInteger&, uint64)
		IL_0074: ldloca.s 2
		IL_0076: ldarg.1
		IL_0077: call instance void System.Number/BigInteger::ShiftLeft(uint32)
		IL_007c: ldloca.s 1
		IL_007e: ldc.i4.2
		IL_007f: call void System.Number/BigInteger::SetUInt32(valuetype System.Number/BigInteger&, uint32)
		IL_0084: ldarg.1
		IL_0085: ldloca.s 3
		IL_0087: call void System.Number/BigInteger::Pow2(uint32, valuetype System.Number/BigInteger&)
		IL_008c: br.s IL_00ac

		IL_008e: ldloca.s 2
		IL_0090: ldc.i4.2
		IL_0091: conv.i8
		IL_0092: ldarg.0
		IL_0093: mul
		IL_0094: call void System.Number/BigInteger::SetUInt64(valuetype System.Number/BigInteger&, uint64)
		IL_0099: ldarg.1
		IL_009a: neg
		IL_009b: ldc.i4.1
		IL_009c: add
		IL_009d: ldloca.s 1
		IL_009f: call void System.Number/BigInteger::Pow2(uint32, valuetype System.Number/BigInteger&)
		IL_00a4: ldloca.s 3
		IL_00a6: ldc.i4.1
		IL_00a7: call void System.Number/BigInteger::SetUInt32(valuetype System.Number/BigInteger&, uint32)

		IL_00ac: ldloca.s 3
		IL_00ae: conv.u
		IL_00af: stloc.s 4

		IL_00b1: ldarg.2
		IL_00b2: ldarg.1
		IL_00b3: add
		IL_00b4: conv.r8
		IL_00b5: ldc.r8 0.3010299956639812
		IL_00be: mul
		IL_00bf: ldc.r8 0.69
		IL_00c8: sub
		IL_00c9: call float64 System.Math::Ceiling(float64)
		IL_00ce: conv.i4
		IL_00cf: stloc.s 6
		IL_00d1: ldloc.s 6
		IL_00d3: ldc.i4.0
		IL_00d4: ble.s IL_00e1

		IL_00d6: ldloca.s 1
		IL_00d8: ldloc.s 6
		IL_00da: call instance void System.Number/BigInteger::MultiplyPow10(uint32)
		IL_00df: br.s IL_0113

		IL_00e1: ldloc.s 6
		IL_00e3: ldc.i4.0
		IL_00e4: bge.s IL_0113

		IL_00e6: ldloc.s 6
		IL_00e8: neg
		IL_00e9: ldloca.s 16
		IL_00eb: call void System.Number/BigInteger::Pow10(uint32, valuetype System.Number/BigInteger&)
		IL_00f0: ldloca.s 2
		IL_00f2: ldloca.s 16
		IL_00f4: call instance void System.Number/BigInteger::Multiply(valuetype System.Number/BigInteger&)
		IL_00f9: ldloca.s 3
		IL_00fb: ldloca.s 16
		IL_00fd: call instance void System.Number/BigInteger::Multiply(valuetype System.Number/BigInteger&)
		IL_0102: ldloc.s 4
		IL_0104: ldloca.s 3
		IL_0106: conv.u
		IL_0107: beq.s IL_0113

		IL_0109: ldloca.s 3
		IL_010b: ldc.i4.2
		IL_010c: ldloc.s 4
		IL_010e: call void System.Number/BigInteger::Multiply(valuetype System.Number/BigInteger&, uint32, valuetype System.Number/BigInteger&)

		IL_0113: ldarg.0
		IL_0114: ldc.i4.2
		IL_0115: conv.i8
		IL_0116: rem.un
		IL_0117: ldc.i4.0
		IL_0118: conv.i8
		IL_0119: ceq
		IL_011b: stloc.s 7
		IL_011d: ldc.i4.0
		IL_011e: stloc.s 8
		IL_0120: ldarg.s cutoffNumber
		IL_0122: ldc.i4.m1
		IL_0123: bne.un.s IL_0152

		IL_0125: ldloca.s 2
		IL_0127: ldloc.s 4
		IL_0129: ldloca.s 17
		IL_012b: call void System.Number/BigInteger::Add(valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&)
		IL_0130: ldloca.s 17
		IL_0132: ldloca.s 1
		IL_0134: call int32 System.Number/BigInteger::Compare(valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&)
		IL_0139: stloc.s 18
		IL_013b: ldloc.s 7
		IL_013d: brtrue.s IL_0146

		IL_013f: ldloc.s 18
		IL_0141: ldc.i4.0
		IL_0142: cgt
		IL_0144: br.s IL_014e

		IL_0146: ldloc.s 18
		IL_0148: ldc.i4.0
		IL_0149: clt
		IL_014b: ldc.i4.0
		IL_014c: ceq

		IL_014e: stloc.s 8
		IL_0150: br.s IL_0163

		IL_0152: ldloca.s 2
		IL_0154: ldloca.s 1
		IL_0156: call int32 System.Number/BigInteger::Compare(valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&)
		IL_015b: ldc.i4.0
		IL_015c: clt
		IL_015e: ldc.i4.0
		IL_015f: ceq
		IL_0161: stloc.s 8

		IL_0163: ldloc.s 8
		IL_0165: brfalse.s IL_016f

		IL_0167: ldloc.s 6
		IL_0169: ldc.i4.1
		IL_016a: add
		IL_016b: stloc.s 6
		IL_016d: br.s IL_018e

		IL_016f: ldloca.s 2
		IL_0171: call instance void System.Number/BigInteger::Multiply10()
		IL_0176: ldloca.s 3
		IL_0178: call instance void System.Number/BigInteger::Multiply10()
		IL_017d: ldloc.s 4
		IL_017f: ldloca.s 3
		IL_0181: conv.u
		IL_0182: beq.s IL_018e

		IL_0184: ldloca.s 3
		IL_0186: ldc.i4.2
		IL_0187: ldloc.s 4
		IL_0189: call void System.Number/BigInteger::Multiply(valuetype System.Number/BigInteger&, uint32, valuetype System.Number/BigInteger&)

		IL_018e: ldloc.s 6
		IL_0190: ldarga.s buffer
		IL_0192: call instance int32 valuetype System.Span`1<uint8>::get_Length()
		IL_0197: sub
		IL_0198: stloc.s 9
		IL_019a: ldarg.s cutoffNumber
		IL_019c: ldc.i4.m1
		IL_019d: beq.s IL_01be

		IL_019f: ldc.i4.0
		IL_01a0: stloc.s 19
		IL_01a2: ldarg.s isSignificantDigits
		IL_01a4: brfalse.s IL_01af

		IL_01a6: ldloc.s 6
		IL_01a8: ldarg.s cutoffNumber
		IL_01aa: sub
		IL_01ab: stloc.s 19
		IL_01ad: br.s IL_01b4

		IL_01af: ldarg.s cutoffNumber
		IL_01b1: neg
		IL_01b2: stloc.s 19

		IL_01b4: ldloc.s 19
		IL_01b6: ldloc.s 9
		IL_01b8: ble.s IL_01be

		IL_01ba: ldloc.s 19
		IL_01bc: stloc.s 9

		IL_01be: ldarg.s decimalExponent
		IL_01c0: ldloc.s 6
		IL_01c2: ldc.i4.1
		IL_01c3: sub
		IL_01c4: dup
		IL_01c5: stloc.s 6
		IL_01c7: stind.i4
		IL_01c8: ldloca.s 1
		IL_01ca: ldloca.s 1
		IL_01cc: call instance int32 System.Number/BigInteger::GetLength()
		IL_01d1: ldc.i4.1
		IL_01d2: sub
		IL_01d3: call instance uint32 System.Number/BigInteger::GetBlock(uint32)
		IL_01d8: stloc.s 10
		IL_01da: ldloc.s 10
		IL_01dc: ldc.i4.8
		IL_01dd: blt.un.s IL_01e8

		IL_01df: ldloc.s 10
		IL_01e1: ldc.i4 429496729
		IL_01e6: ble.un.s IL_0227

		IL_01e8: ldloc.s 10
		IL_01ea: call int32 System.Numerics.BitOperations::Log2(uint32)
		IL_01ef: stloc.s 20
		IL_01f1: ldc.i4.s 59
		IL_01f3: ldloc.s 20
		IL_01f5: sub
		IL_01f6: ldc.i4.s 32
		IL_01f8: rem.un
		IL_01f9: stloc.s 21
		IL_01fb: ldloca.s 1
		IL_01fd: ldloc.s 21
		IL_01ff: call instance void System.Number/BigInteger::ShiftLeft(uint32)
		IL_0204: ldloca.s 2
		IL_0206: ldloc.s 21
		IL_0208: call instance void System.Number/BigInteger::ShiftLeft(uint32)
		IL_020d: ldloca.s 3
		IL_020f: ldloc.s 21
		IL_0211: call instance void System.Number/BigInteger::ShiftLeft(uint32)
		IL_0216: ldloc.s 4
		IL_0218: ldloca.s 3
		IL_021a: conv.u
		IL_021b: beq.s IL_0227

		IL_021d: ldloca.s 3
		IL_021f: ldc.i4.2
		IL_0220: ldloc.s 4
		IL_0222: call void System.Number/BigInteger::Multiply(valuetype System.Number/BigInteger&, uint32, valuetype System.Number/BigInteger&)

		IL_0227: ldarg.s cutoffNumber
		IL_0229: ldc.i4.m1
		IL_022a: bne.un IL_02d3
		// loop start (head: IL_022f)
			IL_022f: ldloca.s 2
			IL_0231: ldloca.s 1
			IL_0233: call uint32 System.Number/BigInteger::HeuristicDivide(valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&)
			IL_0238: stloc.s 13
			IL_023a: ldloca.s 2
			IL_023c: ldloc.s 4
			IL_023e: ldloca.s 22
			IL_0240: call void System.Number/BigInteger::Add(valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&)
			IL_0245: ldloca.s 2
			IL_0247: ldloca.s 3
			IL_0249: call int32 System.Number/BigInteger::Compare(valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&)
			IL_024e: stloc.s 23
			IL_0250: ldloca.s 22
			IL_0252: ldloca.s 1
			IL_0254: call int32 System.Number/BigInteger::Compare(valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&)
			IL_0259: stloc.s 24
			IL_025b: ldloc.s 7
			IL_025d: brfalse.s IL_0275

			IL_025f: ldloc.s 23
			IL_0261: ldc.i4.0
			IL_0262: cgt
			IL_0264: ldc.i4.0
			IL_0265: ceq
			IL_0267: stloc.s 11
			IL_0269: ldloc.s 24
			IL_026b: ldc.i4.0
			IL_026c: clt
			IL_026e: ldc.i4.0
			IL_026f: ceq
			IL_0271: stloc.s 12
			IL_0273: br.s IL_0283

			IL_0275: ldloc.s 23
			IL_0277: ldc.i4.0
			IL_0278: clt
			IL_027a: stloc.s 11
			IL_027c: ldloc.s 24
			IL_027e: ldc.i4.0
			IL_027f: cgt
			IL_0281: stloc.s 12

			IL_0283: ldloc.s 11
			IL_0285: ldloc.s 12
			IL_0287: or
			IL_0288: brtrue IL_0359

			IL_028d: ldloc.s 6
			IL_028f: ldloc.s 9
			IL_0291: beq IL_0359

			IL_0296: ldarga.s buffer
			IL_0298: ldloc.0
			IL_0299: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
			IL_029e: ldc.i4.s 48
			IL_02a0: ldloc.s 13
			IL_02a2: add
			IL_02a3: conv.u1
			IL_02a4: stind.i1
			IL_02a5: ldloc.0
			IL_02a6: ldc.i4.1
			IL_02a7: add
			IL_02a8: stloc.0
			IL_02a9: ldloca.s 2
			IL_02ab: call instance void System.Number/BigInteger::Multiply10()
			IL_02b0: ldloca.s 3
			IL_02b2: call instance void System.Number/BigInteger::Multiply10()
			IL_02b7: ldloc.s 4
			IL_02b9: ldloca.s 3
			IL_02bb: conv.u
			IL_02bc: beq.s IL_02c8

			IL_02be: ldloca.s 3
			IL_02c0: ldc.i4.2
			IL_02c1: ldloc.s 4
			IL_02c3: call void System.Number/BigInteger::Multiply(valuetype System.Number/BigInteger&, uint32, valuetype System.Number/BigInteger&)

			IL_02c8: ldloc.s 6
			IL_02ca: ldc.i4.1
			IL_02cb: sub
			IL_02cc: stloc.s 6
			IL_02ce: br IL_022f
		// end loop

		IL_02d3: ldloc.s 6
		IL_02d5: ldloc.s 9
		IL_02d7: blt.s IL_031b

		IL_02d9: ldc.i4.0
		IL_02da: stloc.s 11
		IL_02dc: ldc.i4.0
		IL_02dd: stloc.s 12
		// loop start (head: IL_02df)
			IL_02df: ldloca.s 2
			IL_02e1: ldloca.s 1
			IL_02e3: call uint32 System.Number/BigInteger::HeuristicDivide(valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&)
			IL_02e8: stloc.s 13
			IL_02ea: ldloca.s 2
			IL_02ec: call instance bool System.Number/BigInteger::IsZero()
			IL_02f1: brtrue.s IL_0359

			IL_02f3: ldloc.s 6
			IL_02f5: ldloc.s 9
			IL_02f7: ble.s IL_0359

			IL_02f9: ldarga.s buffer
			IL_02fb: ldloc.0
			IL_02fc: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
			IL_0301: ldc.i4.s 48
			IL_0303: ldloc.s 13
			IL_0305: add
			IL_0306: conv.u1
			IL_0307: stind.i1
			IL_0308: ldloc.0
			IL_0309: ldc.i4.1
			IL_030a: add
			IL_030b: stloc.0
			IL_030c: ldloca.s 2
			IL_030e: call instance void System.Number/BigInteger::Multiply10()
			IL_0313: ldloc.s 6
			IL_0315: ldc.i4.1
			IL_0316: sub
			IL_0317: stloc.s 6
			IL_0319: br.s IL_02df
		// end loop

		IL_031b: ldloca.s 2
		IL_031d: ldloca.s 1
		IL_031f: call uint32 System.Number/BigInteger::HeuristicDivide(valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&)
		IL_0324: stloc.s 13
		IL_0326: ldloc.s 13
		IL_0328: ldc.i4.5
		IL_0329: bgt.un.s IL_0339

		IL_032b: ldloc.s 13
		IL_032d: ldc.i4.5
		IL_032e: bne.un.s IL_0344

		IL_0330: ldloca.s 2
		IL_0332: call instance bool System.Number/BigInteger::IsZero()
		IL_0337: brtrue.s IL_0344

		IL_0339: ldarg.s decimalExponent
		IL_033b: ldarg.s decimalExponent
		IL_033d: ldind.i4
		IL_033e: ldc.i4.1
		IL_033f: add
		IL_0340: stind.i4
		IL_0341: ldc.i4.1
		IL_0342: stloc.s 13

		IL_0344: ldarga.s buffer
		IL_0346: ldloc.0
		IL_0347: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
		IL_034c: ldc.i4.s 48
		IL_034e: ldloc.s 13
		IL_0350: add
		IL_0351: conv.u1
		IL_0352: stind.i1
		IL_0353: ldloc.0
		IL_0354: ldc.i4.1
		IL_0355: add
		IL_0356: stloc.0
		IL_0357: ldloc.0
		IL_0358: ret

		IL_0359: ldloc.s 11
		IL_035b: stloc.s 14
		IL_035d: ldloc.s 11
		IL_035f: ldloc.s 12
		IL_0361: bne.un.s IL_038a

		IL_0363: ldloca.s 2
		IL_0365: ldc.i4.1
		IL_0366: call instance void System.Number/BigInteger::ShiftLeft(uint32)
		IL_036b: ldloca.s 2
		IL_036d: ldloca.s 1
		IL_036f: call int32 System.Number/BigInteger::Compare(valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&)
		IL_0374: stloc.s 25
		IL_0376: ldloc.s 25
		IL_0378: ldc.i4.0
		IL_0379: clt
		IL_037b: stloc.s 14
		IL_037d: ldloc.s 25
		IL_037f: brtrue.s IL_038a

		IL_0381: ldloc.s 13
		IL_0383: ldc.i4.1
		IL_0384: and
		IL_0385: ldc.i4.0
		IL_0386: ceq
		IL_0388: stloc.s 14

		IL_038a: ldloc.s 14
		IL_038c: brfalse.s IL_03a3

		IL_038e: ldarga.s buffer
		IL_0390: ldloc.0
		IL_0391: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
		IL_0396: ldc.i4.s 48
		IL_0398: ldloc.s 13
		IL_039a: add
		IL_039b: conv.u1
		IL_039c: stind.i1
		IL_039d: ldloc.0
		IL_039e: ldc.i4.1
		IL_039f: add
		IL_03a0: stloc.0
		IL_03a1: br.s IL_03ff

		IL_03a3: ldloc.s 13
		IL_03a5: ldc.i4.s 9
		IL_03a7: bne.un.s IL_03ea
		// loop start (head: IL_03a9)
			IL_03a9: ldloc.0
			IL_03aa: brtrue.s IL_03c5

			IL_03ac: ldarga.s buffer
			IL_03ae: ldloc.0
			IL_03af: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
			IL_03b4: ldc.i4.s 49
			IL_03b6: stind.i1
			IL_03b7: ldloc.0
			IL_03b8: ldc.i4.1
			IL_03b9: add
			IL_03ba: stloc.0
			IL_03bb: ldarg.s decimalExponent
			IL_03bd: ldarg.s decimalExponent
			IL_03bf: ldind.i4
			IL_03c0: ldc.i4.1
			IL_03c1: add
			IL_03c2: stind.i4
			IL_03c3: br.s IL_03ff

			IL_03c5: ldloc.0
			IL_03c6: ldc.i4.1
			IL_03c7: sub
			IL_03c8: stloc.0
			IL_03c9: ldarga.s buffer
			IL_03cb: ldloc.0
			IL_03cc: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
			IL_03d1: ldind.u1
			IL_03d2: ldc.i4.s 57
			IL_03d4: beq.s IL_03a9
		// end loop

		IL_03d6: ldarga.s buffer
		IL_03d8: ldloc.0
		IL_03d9: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
		IL_03de: dup
		IL_03df: ldind.u1
		IL_03e0: ldc.i4.1
		IL_03e1: add
		IL_03e2: conv.u1
		IL_03e3: stind.i1
		IL_03e4: ldloc.0
		IL_03e5: ldc.i4.1
		IL_03e6: add
		IL_03e7: stloc.0
		IL_03e8: br.s IL_03ff

		IL_03ea: ldarga.s buffer
		IL_03ec: ldloc.0
		IL_03ed: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
		IL_03f2: ldc.i4.s 48
		IL_03f4: ldloc.s 13
		IL_03f6: add
		IL_03f7: ldc.i4.1
		IL_03f8: add
		IL_03f9: conv.u1
		IL_03fa: stind.i1
		IL_03fb: ldloc.0
		IL_03fc: ldc.i4.1
		IL_03fd: add
		IL_03fe: stloc.0

		IL_03ff: ldloc.0
		IL_0400: stloc.s 15
		IL_0402: ldloc.s 15
		IL_0404: ret
	} // end of method Number::Dragon4

	.method public hidebysig static 
		string FormatDecimal (
			valuetype System.Decimal 'value',
			valuetype System.ReadOnlySpan`1<char> format,
			class System.Globalization.NumberFormatInfo info
		) cil managed 
	{
		// Method begins at RVA 0x74740
		// Code size 100 (0x64)
		.maxstack 5
		.locals (
			[0] char,
			[1] int32,
			[2] uint8*,
			[3] valuetype System.Number/NumberBuffer,
			[4] char*,
			[5] valuetype System.Text.ValueStringBuilder
		)

		IL_0000: ldarg.1
		IL_0001: ldloca.s 1
		IL_0003: call char System.Number::ParseFormatSpecifier(valuetype System.ReadOnlySpan`1<char>, int32&)
		IL_0008: stloc.0
		IL_0009: ldc.i4.s 31
		IL_000b: conv.u
		IL_000c: localloc
		IL_000e: stloc.2
		IL_000f: ldloca.s 3
		IL_0011: ldc.i4.2
		IL_0012: ldloc.2
		IL_0013: ldc.i4.s 31
		IL_0015: call instance void System.Number/NumberBuffer::.ctor(valuetype System.Number/NumberBufferKind, uint8*, int32)
		IL_001a: ldarga.s 'value'
		IL_001c: ldloca.s 3
		IL_001e: call void System.Number::DecimalToNumber(valuetype System.Decimal&, valuetype System.Number/NumberBuffer&)
		IL_0023: ldc.i4.s 64
		IL_0025: conv.u
		IL_0026: localloc
		IL_0028: stloc.s 4
		IL_002a: ldloca.s 5
		IL_002c: ldloc.s 4
		IL_002e: ldc.i4.s 32
		IL_0030: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_0035: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
		IL_003a: ldloc.0
		IL_003b: brfalse.s IL_004b

		IL_003d: ldloca.s 5
		IL_003f: ldloca.s 3
		IL_0041: ldloc.0
		IL_0042: ldloc.1
		IL_0043: ldarg.2
		IL_0044: call void System.Number::NumberToString(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, char, int32, class System.Globalization.NumberFormatInfo)
		IL_0049: br.s IL_0056

		IL_004b: ldloca.s 5
		IL_004d: ldloca.s 3
		IL_004f: ldarg.1
		IL_0050: ldarg.2
		IL_0051: call void System.Number::NumberToStringFormat(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)

		IL_0056: ldloca.s 5
		IL_0058: constrained. System.Text.ValueStringBuilder
		IL_005e: callvirt instance string System.Object::ToString()
		IL_0063: ret
	} // end of method Number::FormatDecimal

	.method public hidebysig static 
		bool TryFormatDecimal (
			valuetype System.Decimal 'value',
			valuetype System.ReadOnlySpan`1<char> format,
			class System.Globalization.NumberFormatInfo info,
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten
		) cil managed 
	{
		// Method begins at RVA 0x747b0
		// Code size 97 (0x61)
		.maxstack 5
		.locals (
			[0] char,
			[1] int32,
			[2] uint8*,
			[3] valuetype System.Number/NumberBuffer,
			[4] char*,
			[5] valuetype System.Text.ValueStringBuilder
		)

		IL_0000: ldarg.1
		IL_0001: ldloca.s 1
		IL_0003: call char System.Number::ParseFormatSpecifier(valuetype System.ReadOnlySpan`1<char>, int32&)
		IL_0008: stloc.0
		IL_0009: ldc.i4.s 31
		IL_000b: conv.u
		IL_000c: localloc
		IL_000e: stloc.2
		IL_000f: ldloca.s 3
		IL_0011: ldc.i4.2
		IL_0012: ldloc.2
		IL_0013: ldc.i4.s 31
		IL_0015: call instance void System.Number/NumberBuffer::.ctor(valuetype System.Number/NumberBufferKind, uint8*, int32)
		IL_001a: ldarga.s 'value'
		IL_001c: ldloca.s 3
		IL_001e: call void System.Number::DecimalToNumber(valuetype System.Decimal&, valuetype System.Number/NumberBuffer&)
		IL_0023: ldc.i4.s 64
		IL_0025: conv.u
		IL_0026: localloc
		IL_0028: stloc.s 4
		IL_002a: ldloca.s 5
		IL_002c: ldloc.s 4
		IL_002e: ldc.i4.s 32
		IL_0030: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_0035: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
		IL_003a: ldloc.0
		IL_003b: brfalse.s IL_004b

		IL_003d: ldloca.s 5
		IL_003f: ldloca.s 3
		IL_0041: ldloc.0
		IL_0042: ldloc.1
		IL_0043: ldarg.2
		IL_0044: call void System.Number::NumberToString(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, char, int32, class System.Globalization.NumberFormatInfo)
		IL_0049: br.s IL_0056

		IL_004b: ldloca.s 5
		IL_004d: ldloca.s 3
		IL_004f: ldarg.1
		IL_0050: ldarg.2
		IL_0051: call void System.Number::NumberToStringFormat(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)

		IL_0056: ldloca.s 5
		IL_0058: ldarg.3
		IL_0059: ldarg.s charsWritten
		IL_005b: call instance bool System.Text.ValueStringBuilder::TryCopyTo(valuetype System.Span`1<char>, int32&)
		IL_0060: ret
	} // end of method Number::TryFormatDecimal

	.method assembly hidebysig static 
		void DecimalToNumber (
			valuetype System.Decimal& d,
			valuetype System.Number/NumberBuffer& number
		) cil managed 
	{
		// Method begins at RVA 0x74820
		// Code size 143 (0x8f)
		.maxstack 4
		.locals (
			[0] uint8*,
			[1] uint8*,
			[2] int32,
			[3] uint8*
		)

		IL_0000: ldarg.1
		IL_0001: call instance uint8* System.Number/NumberBuffer::GetDigitsPointer()
		IL_0006: stloc.0
		IL_0007: ldarg.1
		IL_0008: ldc.i4.s 29
		IL_000a: stfld int32 System.Number/NumberBuffer::DigitsCount
		IL_000f: ldarg.1
		IL_0010: ldarg.0
		IL_0011: call instance bool System.Decimal::get_IsNegative()
		IL_0016: stfld bool System.Number/NumberBuffer::IsNegative
		IL_001b: ldloc.0
		IL_001c: ldc.i4.s 29
		IL_001e: add
		IL_001f: stloc.1
		IL_0020: br.s IL_0031
		// loop start (head: IL_0031)
			IL_0022: ldloc.1
			IL_0023: ldarg.0
			IL_0024: call uint32 System.Decimal::DecDivMod1E9(valuetype System.Decimal&)
			IL_0029: ldc.i4.s 9
			IL_002b: call uint8* System.Number::UInt32ToDecChars(uint8*, uint32, int32)
			IL_0030: stloc.1

			IL_0031: ldarg.0
			IL_0032: call instance uint32 System.Decimal::get_Mid()
			IL_0037: ldarg.0
			IL_0038: call instance uint32 System.Decimal::get_High()
			IL_003d: or
			IL_003e: brtrue.s IL_0022
		// end loop

		IL_0040: ldloc.1
		IL_0041: ldarg.0
		IL_0042: call instance uint32 System.Decimal::get_Low()
		IL_0047: ldc.i4.0
		IL_0048: call uint8* System.Number::UInt32ToDecChars(uint8*, uint32, int32)
		IL_004d: stloc.1
		IL_004e: ldloc.0
		IL_004f: ldc.i4.s 29
		IL_0051: add
		IL_0052: ldloc.1
		IL_0053: sub
		IL_0054: ldc.i4.1
		IL_0055: div
		IL_0056: conv.i8
		IL_0057: conv.i4
		IL_0058: stloc.2
		IL_0059: ldarg.1
		IL_005a: ldloc.2
		IL_005b: stfld int32 System.Number/NumberBuffer::DigitsCount
		IL_0060: ldarg.1
		IL_0061: ldloc.2
		IL_0062: ldarg.0
		IL_0063: call instance int32 System.Decimal::get_Scale()
		IL_0068: sub
		IL_0069: stfld int32 System.Number/NumberBuffer::Scale
		IL_006e: ldarg.1
		IL_006f: call instance uint8* System.Number/NumberBuffer::GetDigitsPointer()
		IL_0074: stloc.3
		IL_0075: br.s IL_0083
		// loop start (head: IL_0083)
			IL_0077: ldloc.3
			IL_0078: dup
			IL_0079: ldc.i4.1
			IL_007a: add
			IL_007b: stloc.3
			IL_007c: ldloc.1
			IL_007d: dup
			IL_007e: ldc.i4.1
			IL_007f: add
			IL_0080: stloc.1
			IL_0081: ldind.u1
			IL_0082: stind.i1

			IL_0083: ldloc.2
			IL_0084: ldc.i4.1
			IL_0085: sub
			IL_0086: dup
			IL_0087: stloc.2
			IL_0088: ldc.i4.0
			IL_0089: bge.s IL_0077
		// end loop

		IL_008b: ldloc.3
		IL_008c: ldc.i4.0
		IL_008d: stind.i1
		IL_008e: ret
	} // end of method Number::DecimalToNumber

	.method public hidebysig static 
		string FormatDouble (
			float64 'value',
			string format,
			class System.Globalization.NumberFormatInfo info
		) cil managed 
	{
		// Method begins at RVA 0x748bc
		// Code size 54 (0x36)
		.maxstack 4
		.locals (
			[0] valuetype System.Text.ValueStringBuilder,
			[1] valuetype System.Span`1<char>
		)

		IL_0000: ldc.i4.s 64
		IL_0002: conv.u
		IL_0003: localloc
		IL_0005: ldc.i4.s 32
		IL_0007: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_000c: stloc.1
		IL_000d: ldloca.s 0
		IL_000f: ldloc.1
		IL_0010: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
		IL_0015: ldloca.s 0
		IL_0017: ldarg.0
		IL_0018: ldarg.1
		IL_0019: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_001e: ldarg.2
		IL_001f: call string System.Number::FormatDouble(valuetype System.Text.ValueStringBuilder&, float64, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)
		IL_0024: dup
		IL_0025: brtrue.s IL_0035

		IL_0027: pop
		IL_0028: ldloca.s 0
		IL_002a: constrained. System.Text.ValueStringBuilder
		IL_0030: callvirt instance string System.Object::ToString()

		IL_0035: ret
	} // end of method Number::FormatDouble

	.method public hidebysig static 
		bool TryFormatDouble (
			float64 'value',
			valuetype System.ReadOnlySpan`1<char> format,
			class System.Globalization.NumberFormatInfo info,
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten
		) cil managed 
	{
		// Method begins at RVA 0x74900
		// Code size 56 (0x38)
		.maxstack 4
		.locals (
			[0] valuetype System.Text.ValueStringBuilder,
			[1] string,
			[2] valuetype System.Span`1<char>
		)

		IL_0000: ldc.i4.s 64
		IL_0002: conv.u
		IL_0003: localloc
		IL_0005: ldc.i4.s 32
		IL_0007: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_000c: stloc.2
		IL_000d: ldloca.s 0
		IL_000f: ldloc.2
		IL_0010: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
		IL_0015: ldloca.s 0
		IL_0017: ldarg.0
		IL_0018: ldarg.1
		IL_0019: ldarg.2
		IL_001a: call string System.Number::FormatDouble(valuetype System.Text.ValueStringBuilder&, float64, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)
		IL_001f: stloc.1
		IL_0020: ldloc.1
		IL_0021: brtrue.s IL_002e

		IL_0023: ldloca.s 0
		IL_0025: ldarg.3
		IL_0026: ldarg.s charsWritten
		IL_0028: call instance bool System.Text.ValueStringBuilder::TryCopyTo(valuetype System.Span`1<char>, int32&)
		IL_002d: ret

		IL_002e: ldloc.1
		IL_002f: ldarg.3
		IL_0030: ldarg.s charsWritten
		IL_0032: call bool System.Number::TryCopyTo(string, valuetype System.Span`1<char>, int32&)
		IL_0037: ret
	} // end of method Number::TryFormatDouble

	.method private hidebysig static 
		int32 GetFloatingPointMaxDigitsAndPrecision (
			char fmt,
			int32& precision,
			class System.Globalization.NumberFormatInfo info,
			[out] bool& isSignificantDigits
		) cil managed 
	{
		// Method begins at RVA 0x74944
		// Code size 252 (0xfc)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldarg.3
		IL_0004: ldc.i4.1
		IL_0005: stind.i1
		IL_0006: ldarg.1
		IL_0007: ldind.i4
		IL_0008: ret

		IL_0009: ldarg.1
		IL_000a: ldind.i4
		IL_000b: stloc.0
		IL_000c: ldarg.0
		IL_000d: ldc.i4.s 82
		IL_000f: bgt.un.s IL_0050

		IL_0011: ldarg.0
		IL_0012: ldc.i4.s 67
		IL_0014: sub
		IL_0015: switch (IL_008c, IL_00ef, IL_009e, IL_00b1, IL_00c3)

		IL_002e: ldarg.0
		IL_002f: ldc.i4.s 78
		IL_0031: sub
		IL_0032: switch (IL_00b1, IL_00ef, IL_00cf, IL_00ef, IL_00e7)

		IL_004b: br IL_00ef

		IL_0050: ldarg.0
		IL_0051: ldc.i4.s 99
		IL_0053: sub
		IL_0054: switch (IL_008c, IL_00ef, IL_009e, IL_00b1, IL_00c3)

		IL_006d: ldarg.0
		IL_006e: ldc.i4.s 110
		IL_0070: sub
		IL_0071: switch (IL_00b1, IL_00ef, IL_00cf, IL_00ef, IL_00e7)

		IL_008a: br.s IL_00ef

		IL_008c: ldarg.1
		IL_008d: ldind.i4
		IL_008e: ldc.i4.m1
		IL_008f: bne.un.s IL_0099

		IL_0091: ldarg.1
		IL_0092: ldarg.2
		IL_0093: callvirt instance int32 System.Globalization.NumberFormatInfo::get_CurrencyDecimalDigits()
		IL_0098: stind.i4

		IL_0099: ldarg.3
		IL_009a: ldc.i4.0
		IL_009b: stind.i1
		IL_009c: br.s IL_00fa

		IL_009e: ldarg.1
		IL_009f: ldind.i4
		IL_00a0: ldc.i4.m1
		IL_00a1: bne.un.s IL_00a6

		IL_00a3: ldarg.1
		IL_00a4: ldc.i4.6
		IL_00a5: stind.i4

		IL_00a6: ldarg.1
		IL_00a7: ldarg.1
		IL_00a8: ldind.i4
		IL_00a9: ldc.i4.1
		IL_00aa: add
		IL_00ab: stind.i4
		IL_00ac: ldarg.3
		IL_00ad: ldc.i4.1
		IL_00ae: stind.i1
		IL_00af: br.s IL_00fa

		IL_00b1: ldarg.1
		IL_00b2: ldind.i4
		IL_00b3: ldc.i4.m1
		IL_00b4: bne.un.s IL_00be

		IL_00b6: ldarg.1
		IL_00b7: ldarg.2
		IL_00b8: callvirt instance int32 System.Globalization.NumberFormatInfo::get_NumberDecimalDigits()
		IL_00bd: stind.i4

		IL_00be: ldarg.3
		IL_00bf: ldc.i4.0
		IL_00c0: stind.i1
		IL_00c1: br.s IL_00fa

		IL_00c3: ldarg.1
		IL_00c4: ldind.i4
		IL_00c5: brtrue.s IL_00ca

		IL_00c7: ldarg.1
		IL_00c8: ldc.i4.m1
		IL_00c9: stind.i4

		IL_00ca: ldarg.3
		IL_00cb: ldc.i4.1
		IL_00cc: stind.i1
		IL_00cd: br.s IL_00fa

		IL_00cf: ldarg.1
		IL_00d0: ldind.i4
		IL_00d1: ldc.i4.m1
		IL_00d2: bne.un.s IL_00dc

		IL_00d4: ldarg.1
		IL_00d5: ldarg.2
		IL_00d6: callvirt instance int32 System.Globalization.NumberFormatInfo::get_PercentDecimalDigits()
		IL_00db: stind.i4

		IL_00dc: ldarg.1
		IL_00dd: ldarg.1
		IL_00de: ldind.i4
		IL_00df: ldc.i4.2
		IL_00e0: add
		IL_00e1: stind.i4
		IL_00e2: ldarg.3
		IL_00e3: ldc.i4.0
		IL_00e4: stind.i1
		IL_00e5: br.s IL_00fa

		IL_00e7: ldarg.1
		IL_00e8: ldc.i4.m1
		IL_00e9: stind.i4
		IL_00ea: ldarg.3
		IL_00eb: ldc.i4.1
		IL_00ec: stind.i1
		IL_00ed: br.s IL_00fa

		IL_00ef: call string System.SR::get_Argument_BadFormatSpecifier()
		IL_00f4: newobj instance void System.FormatException::.ctor(string)
		IL_00f9: throw

		IL_00fa: ldloc.0
		IL_00fb: ret
	} // end of method Number::GetFloatingPointMaxDigitsAndPrecision

	.method private hidebysig static 
		string FormatDouble (
			valuetype System.Text.ValueStringBuilder& sb,
			float64 'value',
			valuetype System.ReadOnlySpan`1<char> format,
			class System.Globalization.NumberFormatInfo info
		) cil managed 
	{
		// Method begins at RVA 0x74a4c
		// Code size 195 (0xc3)
		.maxstack 5
		.locals (
			[0] char,
			[1] int32,
			[2] uint8*,
			[3] valuetype System.Number/NumberBuffer,
			[4] int32,
			[5] bool
		)

		IL_0000: ldarg.1
		IL_0001: call bool System.Double::IsFinite(float64)
		IL_0006: brtrue.s IL_002d

		IL_0008: ldarg.1
		IL_0009: call bool System.Double::IsNaN(float64)
		IL_000e: brfalse.s IL_0017

		IL_0010: ldarg.3
		IL_0011: callvirt instance string System.Globalization.NumberFormatInfo::get_NaNSymbol()
		IL_0016: ret

		IL_0017: ldarg.1
		IL_0018: call bool System.Double::IsNegative(float64)
		IL_001d: brtrue.s IL_0026

		IL_001f: ldarg.3
		IL_0020: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveInfinitySymbol()
		IL_0025: ret

		IL_0026: ldarg.3
		IL_0027: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeInfinitySymbol()
		IL_002c: ret

		IL_002d: ldarg.2
		IL_002e: ldloca.s 1
		IL_0030: call char System.Number::ParseFormatSpecifier(valuetype System.ReadOnlySpan`1<char>, int32&)
		IL_0035: stloc.0
		IL_0036: ldc.i4 769
		IL_003b: conv.u
		IL_003c: localloc
		IL_003e: stloc.2
		IL_003f: ldloc.0
		IL_0040: brtrue.s IL_0045

		IL_0042: ldc.i4.s 15
		IL_0044: stloc.1

		IL_0045: ldloca.s 3
		IL_0047: ldc.i4.3
		IL_0048: ldloc.2
		IL_0049: ldc.i4 769
		IL_004e: call instance void System.Number/NumberBuffer::.ctor(valuetype System.Number/NumberBufferKind, uint8*, int32)
		IL_0053: ldloca.s 3
		IL_0055: ldarg.1
		IL_0056: call bool System.Double::IsNegative(float64)
		IL_005b: stfld bool System.Number/NumberBuffer::IsNegative
		IL_0060: ldloc.0
		IL_0061: ldloca.s 1
		IL_0063: ldarg.3
		IL_0064: ldloca.s 5
		IL_0066: call int32 System.Number::GetFloatingPointMaxDigitsAndPrecision(char, int32&, class System.Globalization.NumberFormatInfo, bool&)
		IL_006b: stloc.s 4
		IL_006d: ldarg.1
		IL_006e: ldc.r8 0.0
		IL_0077: beq.s IL_0093

		IL_0079: ldloc.s 5
		IL_007b: brfalse.s IL_0088

		IL_007d: ldarg.1
		IL_007e: ldloc.1
		IL_007f: ldloca.s 3
		IL_0081: call bool System.Number/Grisu3::TryRunDouble(float64, int32, valuetype System.Number/NumberBuffer&)
		IL_0086: brtrue.s IL_0093

		IL_0088: ldarg.1
		IL_0089: ldloc.1
		IL_008a: ldloc.s 5
		IL_008c: ldloca.s 3
		IL_008e: call void System.Number::Dragon4Double(float64, int32, bool, valuetype System.Number/NumberBuffer&)

		IL_0093: ldloc.0
		IL_0094: brfalse.s IL_00b7

		IL_0096: ldloc.1
		IL_0097: ldc.i4.m1
		IL_0098: bne.un.s IL_00a9

		IL_009a: ldloc.3
		IL_009b: ldfld int32 System.Number/NumberBuffer::DigitsCount
		IL_00a0: ldc.i4.s 17
		IL_00a2: call int32 System.Math::Max(int32, int32)
		IL_00a7: stloc.s 4

		IL_00a9: ldarg.0
		IL_00aa: ldloca.s 3
		IL_00ac: ldloc.0
		IL_00ad: ldloc.s 4
		IL_00af: ldarg.3
		IL_00b0: call void System.Number::NumberToString(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, char, int32, class System.Globalization.NumberFormatInfo)
		IL_00b5: br.s IL_00c1

		IL_00b7: ldarg.0
		IL_00b8: ldloca.s 3
		IL_00ba: ldarg.2
		IL_00bb: ldarg.3
		IL_00bc: call void System.Number::NumberToStringFormat(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)

		IL_00c1: ldnull
		IL_00c2: ret
	} // end of method Number::FormatDouble

	.method public hidebysig static 
		string FormatSingle (
			float32 'value',
			string format,
			class System.Globalization.NumberFormatInfo info
		) cil managed 
	{
		// Method begins at RVA 0x74b1c
		// Code size 54 (0x36)
		.maxstack 4
		.locals (
			[0] valuetype System.Text.ValueStringBuilder,
			[1] valuetype System.Span`1<char>
		)

		IL_0000: ldc.i4.s 64
		IL_0002: conv.u
		IL_0003: localloc
		IL_0005: ldc.i4.s 32
		IL_0007: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_000c: stloc.1
		IL_000d: ldloca.s 0
		IL_000f: ldloc.1
		IL_0010: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
		IL_0015: ldloca.s 0
		IL_0017: ldarg.0
		IL_0018: ldarg.1
		IL_0019: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_001e: ldarg.2
		IL_001f: call string System.Number::FormatSingle(valuetype System.Text.ValueStringBuilder&, float32, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)
		IL_0024: dup
		IL_0025: brtrue.s IL_0035

		IL_0027: pop
		IL_0028: ldloca.s 0
		IL_002a: constrained. System.Text.ValueStringBuilder
		IL_0030: callvirt instance string System.Object::ToString()

		IL_0035: ret
	} // end of method Number::FormatSingle

	.method public hidebysig static 
		bool TryFormatSingle (
			float32 'value',
			valuetype System.ReadOnlySpan`1<char> format,
			class System.Globalization.NumberFormatInfo info,
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten
		) cil managed 
	{
		// Method begins at RVA 0x74b60
		// Code size 56 (0x38)
		.maxstack 4
		.locals (
			[0] valuetype System.Text.ValueStringBuilder,
			[1] string,
			[2] valuetype System.Span`1<char>
		)

		IL_0000: ldc.i4.s 64
		IL_0002: conv.u
		IL_0003: localloc
		IL_0005: ldc.i4.s 32
		IL_0007: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_000c: stloc.2
		IL_000d: ldloca.s 0
		IL_000f: ldloc.2
		IL_0010: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
		IL_0015: ldloca.s 0
		IL_0017: ldarg.0
		IL_0018: ldarg.1
		IL_0019: ldarg.2
		IL_001a: call string System.Number::FormatSingle(valuetype System.Text.ValueStringBuilder&, float32, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)
		IL_001f: stloc.1
		IL_0020: ldloc.1
		IL_0021: brtrue.s IL_002e

		IL_0023: ldloca.s 0
		IL_0025: ldarg.3
		IL_0026: ldarg.s charsWritten
		IL_0028: call instance bool System.Text.ValueStringBuilder::TryCopyTo(valuetype System.Span`1<char>, int32&)
		IL_002d: ret

		IL_002e: ldloc.1
		IL_002f: ldarg.3
		IL_0030: ldarg.s charsWritten
		IL_0032: call bool System.Number::TryCopyTo(string, valuetype System.Span`1<char>, int32&)
		IL_0037: ret
	} // end of method Number::TryFormatSingle

	.method private hidebysig static 
		string FormatSingle (
			valuetype System.Text.ValueStringBuilder& sb,
			float32 'value',
			valuetype System.ReadOnlySpan`1<char> format,
			class System.Globalization.NumberFormatInfo info
		) cil managed 
	{
		// Method begins at RVA 0x74ba4
		// Code size 184 (0xb8)
		.maxstack 5
		.locals (
			[0] char,
			[1] int32,
			[2] uint8*,
			[3] valuetype System.Number/NumberBuffer,
			[4] int32,
			[5] bool
		)

		IL_0000: ldarg.1
		IL_0001: call bool System.Single::IsFinite(float32)
		IL_0006: brtrue.s IL_002d

		IL_0008: ldarg.1
		IL_0009: call bool System.Single::IsNaN(float32)
		IL_000e: brfalse.s IL_0017

		IL_0010: ldarg.3
		IL_0011: callvirt instance string System.Globalization.NumberFormatInfo::get_NaNSymbol()
		IL_0016: ret

		IL_0017: ldarg.1
		IL_0018: call bool System.Single::IsNegative(float32)
		IL_001d: brtrue.s IL_0026

		IL_001f: ldarg.3
		IL_0020: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveInfinitySymbol()
		IL_0025: ret

		IL_0026: ldarg.3
		IL_0027: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeInfinitySymbol()
		IL_002c: ret

		IL_002d: ldarg.2
		IL_002e: ldloca.s 1
		IL_0030: call char System.Number::ParseFormatSpecifier(valuetype System.ReadOnlySpan`1<char>, int32&)
		IL_0035: stloc.0
		IL_0036: ldc.i4.s 114
		IL_0038: conv.u
		IL_0039: localloc
		IL_003b: stloc.2
		IL_003c: ldloc.0
		IL_003d: brtrue.s IL_0041

		IL_003f: ldc.i4.7
		IL_0040: stloc.1

		IL_0041: ldloca.s 3
		IL_0043: ldc.i4.3
		IL_0044: ldloc.2
		IL_0045: ldc.i4.s 114
		IL_0047: call instance void System.Number/NumberBuffer::.ctor(valuetype System.Number/NumberBufferKind, uint8*, int32)
		IL_004c: ldloca.s 3
		IL_004e: ldarg.1
		IL_004f: call bool System.Single::IsNegative(float32)
		IL_0054: stfld bool System.Number/NumberBuffer::IsNegative
		IL_0059: ldloc.0
		IL_005a: ldloca.s 1
		IL_005c: ldarg.3
		IL_005d: ldloca.s 5
		IL_005f: call int32 System.Number::GetFloatingPointMaxDigitsAndPrecision(char, int32&, class System.Globalization.NumberFormatInfo, bool&)
		IL_0064: stloc.s 4
		IL_0066: ldarg.1
		IL_0067: ldc.r4 0.0
		IL_006c: beq.s IL_0088

		IL_006e: ldloc.s 5
		IL_0070: brfalse.s IL_007d

		IL_0072: ldarg.1
		IL_0073: ldloc.1
		IL_0074: ldloca.s 3
		IL_0076: call bool System.Number/Grisu3::TryRunSingle(float32, int32, valuetype System.Number/NumberBuffer&)
		IL_007b: brtrue.s IL_0088

		IL_007d: ldarg.1
		IL_007e: ldloc.1
		IL_007f: ldloc.s 5
		IL_0081: ldloca.s 3
		IL_0083: call void System.Number::Dragon4Single(float32, int32, bool, valuetype System.Number/NumberBuffer&)

		IL_0088: ldloc.0
		IL_0089: brfalse.s IL_00ac

		IL_008b: ldloc.1
		IL_008c: ldc.i4.m1
		IL_008d: bne.un.s IL_009e

		IL_008f: ldloc.3
		IL_0090: ldfld int32 System.Number/NumberBuffer::DigitsCount
		IL_0095: ldc.i4.s 9
		IL_0097: call int32 System.Math::Max(int32, int32)
		IL_009c: stloc.s 4

		IL_009e: ldarg.0
		IL_009f: ldloca.s 3
		IL_00a1: ldloc.0
		IL_00a2: ldloc.s 4
		IL_00a4: ldarg.3
		IL_00a5: call void System.Number::NumberToString(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, char, int32, class System.Globalization.NumberFormatInfo)
		IL_00aa: br.s IL_00b6

		IL_00ac: ldarg.0
		IL_00ad: ldloca.s 3
		IL_00af: ldarg.2
		IL_00b0: ldarg.3
		IL_00b1: call void System.Number::NumberToStringFormat(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)

		IL_00b6: ldnull
		IL_00b7: ret
	} // end of method Number::FormatSingle

	.method public hidebysig static 
		string FormatHalf (
			valuetype System.Half 'value',
			string format,
			class System.Globalization.NumberFormatInfo info
		) cil managed 
	{
		// Method begins at RVA 0x74c68
		// Code size 54 (0x36)
		.maxstack 4
		.locals (
			[0] valuetype System.Text.ValueStringBuilder,
			[1] valuetype System.Span`1<char>
		)

		IL_0000: ldc.i4.s 64
		IL_0002: conv.u
		IL_0003: localloc
		IL_0005: ldc.i4.s 32
		IL_0007: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_000c: stloc.1
		IL_000d: ldloca.s 0
		IL_000f: ldloc.1
		IL_0010: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
		IL_0015: ldloca.s 0
		IL_0017: ldarg.0
		IL_0018: ldarg.1
		IL_0019: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_001e: ldarg.2
		IL_001f: call string System.Number::FormatHalf(valuetype System.Text.ValueStringBuilder&, valuetype System.Half, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)
		IL_0024: dup
		IL_0025: brtrue.s IL_0035

		IL_0027: pop
		IL_0028: ldloca.s 0
		IL_002a: constrained. System.Text.ValueStringBuilder
		IL_0030: callvirt instance string System.Object::ToString()

		IL_0035: ret
	} // end of method Number::FormatHalf

	.method private hidebysig static 
		string FormatHalf (
			valuetype System.Text.ValueStringBuilder& sb,
			valuetype System.Half 'value',
			valuetype System.ReadOnlySpan`1<char> format,
			class System.Globalization.NumberFormatInfo info
		) cil managed 
	{
		// Method begins at RVA 0x74cac
		// Code size 193 (0xc1)
		.maxstack 5
		.locals (
			[0] char,
			[1] int32,
			[2] uint8*,
			[3] valuetype System.Number/NumberBuffer,
			[4] int32,
			[5] bool,
			[6] valuetype System.Half
		)

		IL_0000: ldarg.1
		IL_0001: call bool System.Half::IsFinite(valuetype System.Half)
		IL_0006: brtrue.s IL_002d

		IL_0008: ldarg.1
		IL_0009: call bool System.Half::IsNaN(valuetype System.Half)
		IL_000e: brfalse.s IL_0017

		IL_0010: ldarg.3
		IL_0011: callvirt instance string System.Globalization.NumberFormatInfo::get_NaNSymbol()
		IL_0016: ret

		IL_0017: ldarg.1
		IL_0018: call bool System.Half::IsNegative(valuetype System.Half)
		IL_001d: brtrue.s IL_0026

		IL_001f: ldarg.3
		IL_0020: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveInfinitySymbol()
		IL_0025: ret

		IL_0026: ldarg.3
		IL_0027: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeInfinitySymbol()
		IL_002c: ret

		IL_002d: ldarg.2
		IL_002e: ldloca.s 1
		IL_0030: call char System.Number::ParseFormatSpecifier(valuetype System.ReadOnlySpan`1<char>, int32&)
		IL_0035: stloc.0
		IL_0036: ldc.i4.s 21
		IL_0038: conv.u
		IL_0039: localloc
		IL_003b: stloc.2
		IL_003c: ldloc.0
		IL_003d: brtrue.s IL_0041

		IL_003f: ldc.i4.5
		IL_0040: stloc.1

		IL_0041: ldloca.s 3
		IL_0043: ldc.i4.3
		IL_0044: ldloc.2
		IL_0045: ldc.i4.s 21
		IL_0047: call instance void System.Number/NumberBuffer::.ctor(valuetype System.Number/NumberBufferKind, uint8*, int32)
		IL_004c: ldloca.s 3
		IL_004e: ldarg.1
		IL_004f: call bool System.Half::IsNegative(valuetype System.Half)
		IL_0054: stfld bool System.Number/NumberBuffer::IsNegative
		IL_0059: ldloc.0
		IL_005a: ldloca.s 1
		IL_005c: ldarg.3
		IL_005d: ldloca.s 5
		IL_005f: call int32 System.Number::GetFloatingPointMaxDigitsAndPrecision(char, int32&, class System.Globalization.NumberFormatInfo, bool&)
		IL_0064: stloc.s 4
		IL_0066: ldarg.1
		IL_0067: ldloca.s 6
		IL_0069: initobj System.Half
		IL_006f: ldloc.s 6
		IL_0071: call bool System.Half::op_Inequality(valuetype System.Half, valuetype System.Half)
		IL_0076: brfalse.s IL_0092

		IL_0078: ldloc.s 5
		IL_007a: brfalse.s IL_0087

		IL_007c: ldarg.1
		IL_007d: ldloc.1
		IL_007e: ldloca.s 3
		IL_0080: call bool System.Number/Grisu3::TryRunHalf(valuetype System.Half, int32, valuetype System.Number/NumberBuffer&)
		IL_0085: brtrue.s IL_0092

		IL_0087: ldarg.1
		IL_0088: ldloc.1
		IL_0089: ldloc.s 5
		IL_008b: ldloca.s 3
		IL_008d: call void System.Number::Dragon4Half(valuetype System.Half, int32, bool, valuetype System.Number/NumberBuffer&)

		IL_0092: ldloc.0
		IL_0093: brfalse.s IL_00b5

		IL_0095: ldloc.1
		IL_0096: ldc.i4.m1
		IL_0097: bne.un.s IL_00a7

		IL_0099: ldloc.3
		IL_009a: ldfld int32 System.Number/NumberBuffer::DigitsCount
		IL_009f: ldc.i4.5
		IL_00a0: call int32 System.Math::Max(int32, int32)
		IL_00a5: stloc.s 4

		IL_00a7: ldarg.0
		IL_00a8: ldloca.s 3
		IL_00aa: ldloc.0
		IL_00ab: ldloc.s 4
		IL_00ad: ldarg.3
		IL_00ae: call void System.Number::NumberToString(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, char, int32, class System.Globalization.NumberFormatInfo)
		IL_00b3: br.s IL_00bf

		IL_00b5: ldarg.0
		IL_00b6: ldloca.s 3
		IL_00b8: ldarg.2
		IL_00b9: ldarg.3
		IL_00ba: call void System.Number::NumberToStringFormat(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)

		IL_00bf: ldnull
		IL_00c0: ret
	} // end of method Number::FormatHalf

	.method public hidebysig static 
		bool TryFormatHalf (
			valuetype System.Half 'value',
			valuetype System.ReadOnlySpan`1<char> format,
			class System.Globalization.NumberFormatInfo info,
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten
		) cil managed 
	{
		// Method begins at RVA 0x74d7c
		// Code size 56 (0x38)
		.maxstack 4
		.locals (
			[0] valuetype System.Text.ValueStringBuilder,
			[1] string,
			[2] valuetype System.Span`1<char>
		)

		IL_0000: ldc.i4.s 64
		IL_0002: conv.u
		IL_0003: localloc
		IL_0005: ldc.i4.s 32
		IL_0007: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_000c: stloc.2
		IL_000d: ldloca.s 0
		IL_000f: ldloc.2
		IL_0010: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
		IL_0015: ldloca.s 0
		IL_0017: ldarg.0
		IL_0018: ldarg.1
		IL_0019: ldarg.2
		IL_001a: call string System.Number::FormatHalf(valuetype System.Text.ValueStringBuilder&, valuetype System.Half, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)
		IL_001f: stloc.1
		IL_0020: ldloc.1
		IL_0021: brtrue.s IL_002e

		IL_0023: ldloca.s 0
		IL_0025: ldarg.3
		IL_0026: ldarg.s charsWritten
		IL_0028: call instance bool System.Text.ValueStringBuilder::TryCopyTo(valuetype System.Span`1<char>, int32&)
		IL_002d: ret

		IL_002e: ldloc.1
		IL_002f: ldarg.3
		IL_0030: ldarg.s charsWritten
		IL_0032: call bool System.Number::TryCopyTo(string, valuetype System.Span`1<char>, int32&)
		IL_0037: ret
	} // end of method Number::TryFormatHalf

	.method private hidebysig static 
		bool TryCopyTo (
			string source,
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten
		) cil managed 
	{
		// Method begins at RVA 0x74dc0
		// Code size 32 (0x20)
		.maxstack 2
		.locals (
			[0] valuetype System.ReadOnlySpan`1<char>
		)

		IL_0000: ldarg.0
		IL_0001: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string)
		IL_0006: stloc.0
		IL_0007: ldloca.s 0
		IL_0009: ldarg.1
		IL_000a: call instance bool valuetype System.ReadOnlySpan`1<char>::TryCopyTo(valuetype System.Span`1<!0>)
		IL_000f: brfalse.s IL_001b

		IL_0011: ldarg.2
		IL_0012: ldarg.0
		IL_0013: callvirt instance int32 System.String::get_Length()
		IL_0018: stind.i4
		IL_0019: ldc.i4.1
		IL_001a: ret

		IL_001b: ldarg.2
		IL_001c: ldc.i4.0
		IL_001d: stind.i4
		IL_001e: ldc.i4.0
		IL_001f: ret
	} // end of method Number::TryCopyTo

	.method private hidebysig static 
		char GetHexBase (
			char fmt
		) cil managed 
	{
		// Method begins at RVA 0x74dec
		// Code size 6 (0x6)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 33
		IL_0003: sub
		IL_0004: conv.u2
		IL_0005: ret
	} // end of method Number::GetHexBase

	.method public hidebysig static 
		string FormatInt32 (
			int32 'value',
			int32 hexMask,
			string format,
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x74df3
		// Code size 48 (0x30)
		.maxstack 8

		IL_0000: ldarg.2
		IL_0001: call bool System.String::IsNullOrEmpty(string)
		IL_0006: brfalse.s IL_0026

		IL_0008: ldarg.0
		IL_0009: ldc.i4.0
		IL_000a: bge.s IL_001f

		IL_000c: ldarg.0
		IL_000d: ldc.i4.m1
		IL_000e: ldarg.3
		IL_000f: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0014: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_0019: call string System.Number::NegativeInt32ToDecStr(int32, int32, string)
		IL_001e: ret

		IL_001f: ldarg.0
		IL_0020: call string System.Number::UInt32ToDecStr(uint32)
		IL_0025: ret

		IL_0026: ldarg.0
		IL_0027: ldarg.1
		IL_0028: ldarg.2
		IL_0029: ldarg.3
		IL_002a: call string System.Number::'<FormatInt32>g__FormatInt32Slow|38_0'(int32, int32, string, class System.IFormatProvider)
		IL_002f: ret
	} // end of method Number::FormatInt32

	.method public hidebysig static 
		bool TryFormatInt32 (
			int32 'value',
			int32 hexMask,
			valuetype System.ReadOnlySpan`1<char> format,
			class System.IFormatProvider provider,
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten
		) cil managed 
	{
		// Method begins at RVA 0x74e24
		// Code size 62 (0x3e)
		.maxstack 8

		IL_0000: ldarga.s format
		IL_0002: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0007: brtrue.s IL_0030

		IL_0009: ldarg.0
		IL_000a: ldc.i4.0
		IL_000b: bge.s IL_0024

		IL_000d: ldarg.0
		IL_000e: ldc.i4.m1
		IL_000f: ldarg.3
		IL_0010: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0015: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_001a: ldarg.s destination
		IL_001c: ldarg.s charsWritten
		IL_001e: call bool System.Number::TryNegativeInt32ToDecStr(int32, int32, string, valuetype System.Span`1<char>, int32&)
		IL_0023: ret

		IL_0024: ldarg.0
		IL_0025: ldc.i4.m1
		IL_0026: ldarg.s destination
		IL_0028: ldarg.s charsWritten
		IL_002a: call bool System.Number::TryUInt32ToDecStr(uint32, int32, valuetype System.Span`1<char>, int32&)
		IL_002f: ret

		IL_0030: ldarg.0
		IL_0031: ldarg.1
		IL_0032: ldarg.2
		IL_0033: ldarg.3
		IL_0034: ldarg.s destination
		IL_0036: ldarg.s charsWritten
		IL_0038: call bool System.Number::'<TryFormatInt32>g__TryFormatInt32Slow|39_0'(int32, int32, valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider, valuetype System.Span`1<char>, int32&)
		IL_003d: ret
	} // end of method Number::TryFormatInt32

	.method public hidebysig static 
		string FormatUInt32 (
			uint32 'value',
			string format,
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x74e63
		// Code size 24 (0x18)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call bool System.String::IsNullOrEmpty(string)
		IL_0006: brfalse.s IL_000f

		IL_0008: ldarg.0
		IL_0009: call string System.Number::UInt32ToDecStr(uint32)
		IL_000e: ret

		IL_000f: ldarg.0
		IL_0010: ldarg.1
		IL_0011: ldarg.2
		IL_0012: call string System.Number::'<FormatUInt32>g__FormatUInt32Slow|40_0'(uint32, string, class System.IFormatProvider)
		IL_0017: ret
	} // end of method Number::FormatUInt32

	.method public hidebysig static 
		bool TryFormatUInt32 (
			uint32 'value',
			valuetype System.ReadOnlySpan`1<char> format,
			class System.IFormatProvider provider,
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten
		) cil managed 
	{
		// Method begins at RVA 0x74e7c
		// Code size 32 (0x20)
		.maxstack 8

		IL_0000: ldarga.s format
		IL_0002: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0007: brtrue.s IL_0014

		IL_0009: ldarg.0
		IL_000a: ldc.i4.m1
		IL_000b: ldarg.3
		IL_000c: ldarg.s charsWritten
		IL_000e: call bool System.Number::TryUInt32ToDecStr(uint32, int32, valuetype System.Span`1<char>, int32&)
		IL_0013: ret

		IL_0014: ldarg.0
		IL_0015: ldarg.1
		IL_0016: ldarg.2
		IL_0017: ldarg.3
		IL_0018: ldarg.s charsWritten
		IL_001a: call bool System.Number::'<TryFormatUInt32>g__TryFormatUInt32Slow|41_0'(uint32, valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider, valuetype System.Span`1<char>, int32&)
		IL_001f: ret
	} // end of method Number::TryFormatUInt32

	.method public hidebysig static 
		string FormatInt64 (
			int64 'value',
			string format,
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x74e9d
		// Code size 49 (0x31)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call bool System.String::IsNullOrEmpty(string)
		IL_0006: brfalse.s IL_0028

		IL_0008: ldarg.0
		IL_0009: ldc.i4.0
		IL_000a: conv.i8
		IL_000b: bge.s IL_0020

		IL_000d: ldarg.0
		IL_000e: ldc.i4.m1
		IL_000f: ldarg.2
		IL_0010: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0015: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_001a: call string System.Number::NegativeInt64ToDecStr(int64, int32, string)
		IL_001f: ret

		IL_0020: ldarg.0
		IL_0021: ldc.i4.m1
		IL_0022: call string System.Number::UInt64ToDecStr(uint64, int32)
		IL_0027: ret

		IL_0028: ldarg.0
		IL_0029: ldarg.1
		IL_002a: ldarg.2
		IL_002b: call string System.Number::'<FormatInt64>g__FormatInt64Slow|42_0'(int64, string, class System.IFormatProvider)
		IL_0030: ret
	} // end of method Number::FormatInt64

	.method public hidebysig static 
		bool TryFormatInt64 (
			int64 'value',
			valuetype System.ReadOnlySpan`1<char> format,
			class System.IFormatProvider provider,
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten
		) cil managed 
	{
		// Method begins at RVA 0x74ecf
		// Code size 59 (0x3b)
		.maxstack 8

		IL_0000: ldarga.s format
		IL_0002: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0007: brtrue.s IL_002f

		IL_0009: ldarg.0
		IL_000a: ldc.i4.0
		IL_000b: conv.i8
		IL_000c: bge.s IL_0024

		IL_000e: ldarg.0
		IL_000f: ldc.i4.m1
		IL_0010: ldarg.2
		IL_0011: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0016: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_001b: ldarg.3
		IL_001c: ldarg.s charsWritten
		IL_001e: call bool System.Number::TryNegativeInt64ToDecStr(int64, int32, string, valuetype System.Span`1<char>, int32&)
		IL_0023: ret

		IL_0024: ldarg.0
		IL_0025: ldc.i4.m1
		IL_0026: ldarg.3
		IL_0027: ldarg.s charsWritten
		IL_0029: call bool System.Number::TryUInt64ToDecStr(uint64, int32, valuetype System.Span`1<char>, int32&)
		IL_002e: ret

		IL_002f: ldarg.0
		IL_0030: ldarg.1
		IL_0031: ldarg.2
		IL_0032: ldarg.3
		IL_0033: ldarg.s charsWritten
		IL_0035: call bool System.Number::'<TryFormatInt64>g__TryFormatInt64Slow|43_0'(int64, valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider, valuetype System.Span`1<char>, int32&)
		IL_003a: ret
	} // end of method Number::TryFormatInt64

	.method public hidebysig static 
		string FormatUInt64 (
			uint64 'value',
			string format,
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x74f0b
		// Code size 25 (0x19)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call bool System.String::IsNullOrEmpty(string)
		IL_0006: brfalse.s IL_0010

		IL_0008: ldarg.0
		IL_0009: ldc.i4.m1
		IL_000a: call string System.Number::UInt64ToDecStr(uint64, int32)
		IL_000f: ret

		IL_0010: ldarg.0
		IL_0011: ldarg.1
		IL_0012: ldarg.2
		IL_0013: call string System.Number::'<FormatUInt64>g__FormatUInt64Slow|44_0'(uint64, string, class System.IFormatProvider)
		IL_0018: ret
	} // end of method Number::FormatUInt64

	.method public hidebysig static 
		bool TryFormatUInt64 (
			uint64 'value',
			valuetype System.ReadOnlySpan`1<char> format,
			class System.IFormatProvider provider,
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten
		) cil managed 
	{
		// Method begins at RVA 0x74f25
		// Code size 32 (0x20)
		.maxstack 8

		IL_0000: ldarga.s format
		IL_0002: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0007: brtrue.s IL_0014

		IL_0009: ldarg.0
		IL_000a: ldc.i4.m1
		IL_000b: ldarg.3
		IL_000c: ldarg.s charsWritten
		IL_000e: call bool System.Number::TryUInt64ToDecStr(uint64, int32, valuetype System.Span`1<char>, int32&)
		IL_0013: ret

		IL_0014: ldarg.0
		IL_0015: ldarg.1
		IL_0016: ldarg.2
		IL_0017: ldarg.3
		IL_0018: ldarg.s charsWritten
		IL_001a: call bool System.Number::'<TryFormatUInt64>g__TryFormatUInt64Slow|45_0'(uint64, valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider, valuetype System.Span`1<char>, int32&)
		IL_001f: ret
	} // end of method Number::TryFormatUInt64

	.method private hidebysig static 
		void Int32ToNumber (
			int32 'value',
			valuetype System.Number/NumberBuffer& number
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x74f48
		// Code size 109 (0x6d)
		.maxstack 4
		.locals (
			[0] uint8*,
			[1] uint8*,
			[2] int32,
			[3] uint8*
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.s 10
		IL_0003: stfld int32 System.Number/NumberBuffer::DigitsCount
		IL_0008: ldarg.0
		IL_0009: ldc.i4.0
		IL_000a: blt.s IL_0015

		IL_000c: ldarg.1
		IL_000d: ldc.i4.0
		IL_000e: stfld bool System.Number/NumberBuffer::IsNegative
		IL_0013: br.s IL_0020

		IL_0015: ldarg.1
		IL_0016: ldc.i4.1
		IL_0017: stfld bool System.Number/NumberBuffer::IsNegative
		IL_001c: ldarg.0
		IL_001d: neg
		IL_001e: starg.s 'value'

		IL_0020: ldarg.1
		IL_0021: call instance uint8* System.Number/NumberBuffer::GetDigitsPointer()
		IL_0026: stloc.0
		IL_0027: ldloc.0
		IL_0028: ldc.i4.s 10
		IL_002a: add
		IL_002b: ldarg.0
		IL_002c: ldc.i4.0
		IL_002d: call uint8* System.Number::UInt32ToDecChars(uint8*, uint32, int32)
		IL_0032: stloc.1
		IL_0033: ldloc.0
		IL_0034: ldc.i4.s 10
		IL_0036: add
		IL_0037: ldloc.1
		IL_0038: sub
		IL_0039: ldc.i4.1
		IL_003a: div
		IL_003b: conv.i8
		IL_003c: conv.i4
		IL_003d: stloc.2
		IL_003e: ldarg.1
		IL_003f: ldloc.2
		IL_0040: stfld int32 System.Number/NumberBuffer::DigitsCount
		IL_0045: ldarg.1
		IL_0046: ldloc.2
		IL_0047: stfld int32 System.Number/NumberBuffer::Scale
		IL_004c: ldarg.1
		IL_004d: call instance uint8* System.Number/NumberBuffer::GetDigitsPointer()
		IL_0052: stloc.3
		IL_0053: br.s IL_0061
		// loop start (head: IL_0061)
			IL_0055: ldloc.3
			IL_0056: dup
			IL_0057: ldc.i4.1
			IL_0058: add
			IL_0059: stloc.3
			IL_005a: ldloc.1
			IL_005b: dup
			IL_005c: ldc.i4.1
			IL_005d: add
			IL_005e: stloc.1
			IL_005f: ldind.u1
			IL_0060: stind.i1

			IL_0061: ldloc.2
			IL_0062: ldc.i4.1
			IL_0063: sub
			IL_0064: dup
			IL_0065: stloc.2
			IL_0066: ldc.i4.0
			IL_0067: bge.s IL_0055
		// end loop

		IL_0069: ldloc.3
		IL_006a: ldc.i4.0
		IL_006b: stind.i1
		IL_006c: ret
	} // end of method Number::Int32ToNumber

	.method public hidebysig static 
		string Int32ToDecStr (
			int32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x74fc1
		// Code size 29 (0x1d)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0016

		IL_0004: ldarg.0
		IL_0005: ldc.i4.m1
		IL_0006: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::get_CurrentInfo()
		IL_000b: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_0010: call string System.Number::NegativeInt32ToDecStr(int32, int32, string)
		IL_0015: ret

		IL_0016: ldarg.0
		IL_0017: call string System.Number::UInt32ToDecStr(uint32)
		IL_001c: ret
	} // end of method Number::Int32ToDecStr

	.method private hidebysig static 
		string NegativeInt32ToDecStr (
			int32 'value',
			int32 digits,
			string sNegative
		) cil managed 
	{
		// Method begins at RVA 0x74fe0
		// Code size 112 (0x70)
		.maxstack 3
		.locals (
			[0] int32,
			[1] string,
			[2] char*,
			[3] char& pinned,
			[4] char*,
			[5] int32
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.1
		IL_0002: bge.s IL_0007

		IL_0004: ldc.i4.1
		IL_0005: starg.s digits

		IL_0007: ldarg.1
		IL_0008: ldarg.0
		IL_0009: neg
		IL_000a: call int32 System.Buffers.Text.FormattingHelpers::CountDigits(uint32)
		IL_000f: call int32 System.Math::Max(int32, int32)
		IL_0014: ldarg.2
		IL_0015: callvirt instance int32 System.String::get_Length()
		IL_001a: add
		IL_001b: stloc.0
		IL_001c: ldloc.0
		IL_001d: call string System.String::FastAllocateString(int32)
		IL_0022: stloc.1
		IL_0023: ldloc.1
		IL_0024: brtrue.s IL_002a

		IL_0026: ldc.i4.0
		IL_0027: conv.u
		IL_0028: br.s IL_0033

		IL_002a: ldloc.1
		IL_002b: call instance char& modreq(System.Runtime.InteropServices.InAttribute) System.String::GetPinnableReference()
		IL_0030: stloc.3
		IL_0031: ldloc.3
		IL_0032: conv.u

		IL_0033: stloc.2
		IL_0034: ldloc.2
		IL_0035: ldloc.0
		IL_0036: conv.i
		IL_0037: ldc.i4.2
		IL_0038: mul
		IL_0039: add
		IL_003a: ldarg.0
		IL_003b: neg
		IL_003c: ldarg.1
		IL_003d: call char* System.Number::UInt32ToDecChars(char*, uint32, int32)
		IL_0042: stloc.s 4
		IL_0044: ldarg.2
		IL_0045: callvirt instance int32 System.String::get_Length()
		IL_004a: ldc.i4.1
		IL_004b: sub
		IL_004c: stloc.s 5
		IL_004e: br.s IL_0066
		// loop start (head: IL_0066)
			IL_0050: ldloc.s 4
			IL_0052: ldc.i4.2
			IL_0053: sub
			IL_0054: dup
			IL_0055: stloc.s 4
			IL_0057: ldarg.2
			IL_0058: ldloc.s 5
			IL_005a: callvirt instance char System.String::get_Chars(int32)
			IL_005f: stind.i2
			IL_0060: ldloc.s 5
			IL_0062: ldc.i4.1
			IL_0063: sub
			IL_0064: stloc.s 5

			IL_0066: ldloc.s 5
			IL_0068: ldc.i4.0
			IL_0069: bge.s IL_0050
		// end loop

		IL_006b: ldc.i4.0
		IL_006c: conv.u
		IL_006d: stloc.3
		IL_006e: ldloc.1
		IL_006f: ret
	} // end of method Number::NegativeInt32ToDecStr

	.method private hidebysig static 
		bool TryNegativeInt32ToDecStr (
			int32 'value',
			int32 digits,
			string sNegative,
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten
		) cil managed 
	{
		// Method begins at RVA 0x7505c
		// Code size 115 (0x73)
		.maxstack 3
		.locals (
			[0] int32,
			[1] char*,
			[2] char& pinned,
			[3] char*,
			[4] int32
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.1
		IL_0002: bge.s IL_0007

		IL_0004: ldc.i4.1
		IL_0005: starg.s digits

		IL_0007: ldarg.1
		IL_0008: ldarg.0
		IL_0009: neg
		IL_000a: call int32 System.Buffers.Text.FormattingHelpers::CountDigits(uint32)
		IL_000f: call int32 System.Math::Max(int32, int32)
		IL_0014: ldarg.2
		IL_0015: callvirt instance int32 System.String::get_Length()
		IL_001a: add
		IL_001b: stloc.0
		IL_001c: ldloc.0
		IL_001d: ldarga.s destination
		IL_001f: call instance int32 valuetype System.Span`1<char>::get_Length()
		IL_0024: ble.s IL_002c

		IL_0026: ldarg.s charsWritten
		IL_0028: ldc.i4.0
		IL_0029: stind.i4
		IL_002a: ldc.i4.0
		IL_002b: ret

		IL_002c: ldarg.s charsWritten
		IL_002e: ldloc.0
		IL_002f: stind.i4
		IL_0030: ldarg.3
		IL_0031: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<char>(valuetype System.Span`1<!!0>)
		IL_0036: stloc.2
		IL_0037: ldloc.2
		IL_0038: conv.u
		IL_0039: stloc.1
		IL_003a: ldloc.1
		IL_003b: ldloc.0
		IL_003c: conv.i
		IL_003d: ldc.i4.2
		IL_003e: mul
		IL_003f: add
		IL_0040: ldarg.0
		IL_0041: neg
		IL_0042: ldarg.1
		IL_0043: call char* System.Number::UInt32ToDecChars(char*, uint32, int32)
		IL_0048: stloc.3
		IL_0049: ldarg.2
		IL_004a: callvirt instance int32 System.String::get_Length()
		IL_004f: ldc.i4.1
		IL_0050: sub
		IL_0051: stloc.s 4
		IL_0053: br.s IL_0069
		// loop start (head: IL_0069)
			IL_0055: ldloc.3
			IL_0056: ldc.i4.2
			IL_0057: sub
			IL_0058: dup
			IL_0059: stloc.3
			IL_005a: ldarg.2
			IL_005b: ldloc.s 4
			IL_005d: callvirt instance char System.String::get_Chars(int32)
			IL_0062: stind.i2
			IL_0063: ldloc.s 4
			IL_0065: ldc.i4.1
			IL_0066: sub
			IL_0067: stloc.s 4

			IL_0069: ldloc.s 4
			IL_006b: ldc.i4.0
			IL_006c: bge.s IL_0055
		// end loop

		IL_006e: ldc.i4.0
		IL_006f: conv.u
		IL_0070: stloc.2
		IL_0071: ldc.i4.1
		IL_0072: ret
	} // end of method Number::TryNegativeInt32ToDecStr

	.method private hidebysig static 
		string Int32ToHexStr (
			int32 'value',
			char hexBase,
			int32 digits
		) cil managed 
	{
		// Method begins at RVA 0x750dc
		// Code size 66 (0x42)
		.maxstack 4
		.locals (
			[0] int32,
			[1] string,
			[2] char*,
			[3] char& pinned,
			[4] char*
		)

		IL_0000: ldarg.2
		IL_0001: ldc.i4.1
		IL_0002: bge.s IL_0007

		IL_0004: ldc.i4.1
		IL_0005: starg.s digits

		IL_0007: ldarg.2
		IL_0008: ldarg.0
		IL_0009: conv.u8
		IL_000a: call int32 System.Buffers.Text.FormattingHelpers::CountHexDigits(uint64)
		IL_000f: call int32 System.Math::Max(int32, int32)
		IL_0014: stloc.0
		IL_0015: ldloc.0
		IL_0016: call string System.String::FastAllocateString(int32)
		IL_001b: stloc.1
		IL_001c: ldloc.1
		IL_001d: brtrue.s IL_0023

		IL_001f: ldc.i4.0
		IL_0020: conv.u
		IL_0021: br.s IL_002c

		IL_0023: ldloc.1
		IL_0024: call instance char& modreq(System.Runtime.InteropServices.InAttribute) System.String::GetPinnableReference()
		IL_0029: stloc.3
		IL_002a: ldloc.3
		IL_002b: conv.u

		IL_002c: stloc.2
		IL_002d: ldloc.2
		IL_002e: ldloc.0
		IL_002f: conv.i
		IL_0030: ldc.i4.2
		IL_0031: mul
		IL_0032: add
		IL_0033: ldarg.0
		IL_0034: ldarg.1
		IL_0035: ldarg.2
		IL_0036: call char* System.Number::Int32ToHexChars(char*, uint32, int32, int32)
		IL_003b: stloc.s 4
		IL_003d: ldc.i4.0
		IL_003e: conv.u
		IL_003f: stloc.3
		IL_0040: ldloc.1
		IL_0041: ret
	} // end of method Number::Int32ToHexStr

	.method private hidebysig static 
		bool TryInt32ToHexStr (
			int32 'value',
			char hexBase,
			int32 digits,
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten
		) cil managed 
	{
		// Method begins at RVA 0x7512c
		// Code size 71 (0x47)
		.maxstack 4
		.locals (
			[0] int32,
			[1] char*,
			[2] char& pinned,
			[3] char*
		)

		IL_0000: ldarg.2
		IL_0001: ldc.i4.1
		IL_0002: bge.s IL_0007

		IL_0004: ldc.i4.1
		IL_0005: starg.s digits

		IL_0007: ldarg.2
		IL_0008: ldarg.0
		IL_0009: conv.u8
		IL_000a: call int32 System.Buffers.Text.FormattingHelpers::CountHexDigits(uint64)
		IL_000f: call int32 System.Math::Max(int32, int32)
		IL_0014: stloc.0
		IL_0015: ldloc.0
		IL_0016: ldarga.s destination
		IL_0018: call instance int32 valuetype System.Span`1<char>::get_Length()
		IL_001d: ble.s IL_0025

		IL_001f: ldarg.s charsWritten
		IL_0021: ldc.i4.0
		IL_0022: stind.i4
		IL_0023: ldc.i4.0
		IL_0024: ret

		IL_0025: ldarg.s charsWritten
		IL_0027: ldloc.0
		IL_0028: stind.i4
		IL_0029: ldarg.3
		IL_002a: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<char>(valuetype System.Span`1<!!0>)
		IL_002f: stloc.2
		IL_0030: ldloc.2
		IL_0031: conv.u
		IL_0032: stloc.1
		IL_0033: ldloc.1
		IL_0034: ldloc.0
		IL_0035: conv.i
		IL_0036: ldc.i4.2
		IL_0037: mul
		IL_0038: add
		IL_0039: ldarg.0
		IL_003a: ldarg.1
		IL_003b: ldarg.2
		IL_003c: call char* System.Number::Int32ToHexChars(char*, uint32, int32, int32)
		IL_0041: stloc.3
		IL_0042: ldc.i4.0
		IL_0043: conv.u
		IL_0044: stloc.2
		IL_0045: ldc.i4.1
		IL_0046: ret
	} // end of method Number::TryInt32ToHexStr

	.method private hidebysig static 
		char* Int32ToHexChars (
			char* buffer,
			uint32 'value',
			int32 hexBase,
			int32 digits
		) cil managed 
	{
		// Method begins at RVA 0x75180
		// Code size 47 (0x2f)
		.maxstack 4
		.locals (
			[0] uint8
		)

		IL_0000: br.s IL_0021
		// loop start (head: IL_0021)
			IL_0002: ldarg.1
			IL_0003: ldc.i4.s 15
			IL_0005: and
			IL_0006: conv.u1
			IL_0007: stloc.0
			IL_0008: ldarg.0
			IL_0009: ldc.i4.2
			IL_000a: sub
			IL_000b: dup
			IL_000c: starg.s buffer
			IL_000e: ldloc.0
			IL_000f: ldloc.0
			IL_0010: ldc.i4.s 10
			IL_0012: blt.s IL_0017

			IL_0014: ldarg.2
			IL_0015: br.s IL_0019

			IL_0017: ldc.i4.s 48

			IL_0019: add
			IL_001a: conv.u2
			IL_001b: stind.i2
			IL_001c: ldarg.1
			IL_001d: ldc.i4.4
			IL_001e: shr.un
			IL_001f: starg.s 'value'

			IL_0021: ldarg.3
			IL_0022: ldc.i4.1
			IL_0023: sub
			IL_0024: dup
			IL_0025: starg.s digits
			IL_0027: ldc.i4.0
			IL_0028: bge.s IL_0002

			IL_002a: ldarg.1
			IL_002b: brtrue.s IL_0002
		// end loop

		IL_002d: ldarg.0
		IL_002e: ret
	} // end of method Number::Int32ToHexChars

	.method private hidebysig static 
		void UInt32ToNumber (
			uint32 'value',
			valuetype System.Number/NumberBuffer& number
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x751bc
		// Code size 92 (0x5c)
		.maxstack 4
		.locals (
			[0] uint8*,
			[1] uint8*,
			[2] int32,
			[3] uint8*
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.s 10
		IL_0003: stfld int32 System.Number/NumberBuffer::DigitsCount
		IL_0008: ldarg.1
		IL_0009: ldc.i4.0
		IL_000a: stfld bool System.Number/NumberBuffer::IsNegative
		IL_000f: ldarg.1
		IL_0010: call instance uint8* System.Number/NumberBuffer::GetDigitsPointer()
		IL_0015: stloc.0
		IL_0016: ldloc.0
		IL_0017: ldc.i4.s 10
		IL_0019: add
		IL_001a: ldarg.0
		IL_001b: ldc.i4.0
		IL_001c: call uint8* System.Number::UInt32ToDecChars(uint8*, uint32, int32)
		IL_0021: stloc.1
		IL_0022: ldloc.0
		IL_0023: ldc.i4.s 10
		IL_0025: add
		IL_0026: ldloc.1
		IL_0027: sub
		IL_0028: ldc.i4.1
		IL_0029: div
		IL_002a: conv.i8
		IL_002b: conv.i4
		IL_002c: stloc.2
		IL_002d: ldarg.1
		IL_002e: ldloc.2
		IL_002f: stfld int32 System.Number/NumberBuffer::DigitsCount
		IL_0034: ldarg.1
		IL_0035: ldloc.2
		IL_0036: stfld int32 System.Number/NumberBuffer::Scale
		IL_003b: ldarg.1
		IL_003c: call instance uint8* System.Number/NumberBuffer::GetDigitsPointer()
		IL_0041: stloc.3
		IL_0042: br.s IL_0050
		// loop start (head: IL_0050)
			IL_0044: ldloc.3
			IL_0045: dup
			IL_0046: ldc.i4.1
			IL_0047: add
			IL_0048: stloc.3
			IL_0049: ldloc.1
			IL_004a: dup
			IL_004b: ldc.i4.1
			IL_004c: add
			IL_004d: stloc.1
			IL_004e: ldind.u1
			IL_004f: stind.i1

			IL_0050: ldloc.2
			IL_0051: ldc.i4.1
			IL_0052: sub
			IL_0053: dup
			IL_0054: stloc.2
			IL_0055: ldc.i4.0
			IL_0056: bge.s IL_0044
		// end loop

		IL_0058: ldloc.3
		IL_0059: ldc.i4.0
		IL_005a: stind.i1
		IL_005b: ret
	} // end of method Number::UInt32ToNumber

	.method assembly hidebysig static 
		uint8* UInt32ToDecChars (
			uint8* bufferEnd,
			uint32 'value',
			int32 digits
		) cil managed 
	{
		// Method begins at RVA 0x75224
		// Code size 40 (0x28)
		.maxstack 3
		.locals (
			[0] uint32
		)

		IL_0000: br.s IL_001a
		// loop start (head: IL_001a)
			IL_0002: ldarg.1
			IL_0003: ldc.i4.s 10
			IL_0005: ldloca.s 0
			IL_0007: call uint32 System.Math::DivRem(uint32, uint32, uint32&)
			IL_000c: starg.s 'value'
			IL_000e: ldarg.0
			IL_000f: ldc.i4.1
			IL_0010: sub
			IL_0011: dup
			IL_0012: starg.s bufferEnd
			IL_0014: ldloc.0
			IL_0015: ldc.i4.s 48
			IL_0017: add
			IL_0018: conv.u1
			IL_0019: stind.i1

			IL_001a: ldarg.2
			IL_001b: ldc.i4.1
			IL_001c: sub
			IL_001d: dup
			IL_001e: starg.s digits
			IL_0020: ldc.i4.0
			IL_0021: bge.s IL_0002

			IL_0023: ldarg.1
			IL_0024: brtrue.s IL_0002
		// end loop

		IL_0026: ldarg.0
		IL_0027: ret
	} // end of method Number::UInt32ToDecChars

	.method assembly hidebysig static 
		char* UInt32ToDecChars (
			char* bufferEnd,
			uint32 'value',
			int32 digits
		) cil managed 
	{
		// Method begins at RVA 0x75258
		// Code size 40 (0x28)
		.maxstack 3
		.locals (
			[0] uint32
		)

		IL_0000: br.s IL_001a
		// loop start (head: IL_001a)
			IL_0002: ldarg.1
			IL_0003: ldc.i4.s 10
			IL_0005: ldloca.s 0
			IL_0007: call uint32 System.Math::DivRem(uint32, uint32, uint32&)
			IL_000c: starg.s 'value'
			IL_000e: ldarg.0
			IL_000f: ldc.i4.2
			IL_0010: sub
			IL_0011: dup
			IL_0012: starg.s bufferEnd
			IL_0014: ldloc.0
			IL_0015: ldc.i4.s 48
			IL_0017: add
			IL_0018: conv.u2
			IL_0019: stind.i2

			IL_001a: ldarg.2
			IL_001b: ldc.i4.1
			IL_001c: sub
			IL_001d: dup
			IL_001e: starg.s digits
			IL_0020: ldc.i4.0
			IL_0021: bge.s IL_0002

			IL_0023: ldarg.1
			IL_0024: brtrue.s IL_0002
		// end loop

		IL_0026: ldarg.0
		IL_0027: ret
	} // end of method Number::UInt32ToDecChars

	.method assembly hidebysig static 
		string UInt32ToDecStr (
			uint32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x7528c
		// Code size 85 (0x55)
		.maxstack 3
		.locals (
			[0] int32,
			[1] string,
			[2] char*,
			[3] char& pinned,
			[4] char*,
			[5] uint32
		)

		IL_0000: ldarg.0
		IL_0001: call int32 System.Buffers.Text.FormattingHelpers::CountDigits(uint32)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldc.i4.1
		IL_0009: bne.un.s IL_0013

		IL_000b: ldsfld string[] System.Number::s_singleDigitStringCache
		IL_0010: ldarg.0
		IL_0011: ldelem.ref
		IL_0012: ret

		IL_0013: ldloc.0
		IL_0014: call string System.String::FastAllocateString(int32)
		IL_0019: stloc.1
		IL_001a: ldloc.1
		IL_001b: brtrue.s IL_0021

		IL_001d: ldc.i4.0
		IL_001e: conv.u
		IL_001f: br.s IL_002a

		IL_0021: ldloc.1
		IL_0022: call instance char& modreq(System.Runtime.InteropServices.InAttribute) System.String::GetPinnableReference()
		IL_0027: stloc.3
		IL_0028: ldloc.3
		IL_0029: conv.u

		IL_002a: stloc.2
		IL_002b: ldloc.2
		IL_002c: ldloc.0
		IL_002d: conv.i
		IL_002e: ldc.i4.2
		IL_002f: mul
		IL_0030: add
		IL_0031: stloc.s 4
		// loop start (head: IL_0033)
			IL_0033: ldarg.0
			IL_0034: ldc.i4.s 10
			IL_0036: ldloca.s 5
			IL_0038: call uint32 System.Math::DivRem(uint32, uint32, uint32&)
			IL_003d: starg.s 'value'
			IL_003f: ldloc.s 4
			IL_0041: ldc.i4.2
			IL_0042: sub
			IL_0043: dup
			IL_0044: stloc.s 4
			IL_0046: ldloc.s 5
			IL_0048: ldc.i4.s 48
			IL_004a: add
			IL_004b: conv.u2
			IL_004c: stind.i2
			IL_004d: ldarg.0
			IL_004e: brtrue.s IL_0033
		// end loop
		IL_0050: ldc.i4.0
		IL_0051: conv.u
		IL_0052: stloc.3
		IL_0053: ldloc.1
		IL_0054: ret
	} // end of method Number::UInt32ToDecStr

	.method private hidebysig static 
		string UInt32ToDecStr (
			uint32 'value',
			int32 digits
		) cil managed 
	{
		// Method begins at RVA 0x752f0
		// Code size 72 (0x48)
		.maxstack 3
		.locals (
			[0] int32,
			[1] string,
			[2] char*,
			[3] char& pinned,
			[4] char*
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.1
		IL_0002: bgt.s IL_000b

		IL_0004: ldarg.0
		IL_0005: call string System.Number::UInt32ToDecStr(uint32)
		IL_000a: ret

		IL_000b: ldarg.1
		IL_000c: ldarg.0
		IL_000d: call int32 System.Buffers.Text.FormattingHelpers::CountDigits(uint32)
		IL_0012: call int32 System.Math::Max(int32, int32)
		IL_0017: stloc.0
		IL_0018: ldloc.0
		IL_0019: call string System.String::FastAllocateString(int32)
		IL_001e: stloc.1
		IL_001f: ldloc.1
		IL_0020: brtrue.s IL_0026

		IL_0022: ldc.i4.0
		IL_0023: conv.u
		IL_0024: br.s IL_002f

		IL_0026: ldloc.1
		IL_0027: call instance char& modreq(System.Runtime.InteropServices.InAttribute) System.String::GetPinnableReference()
		IL_002c: stloc.3
		IL_002d: ldloc.3
		IL_002e: conv.u

		IL_002f: stloc.2
		IL_0030: ldloc.2
		IL_0031: ldloc.0
		IL_0032: conv.i
		IL_0033: ldc.i4.2
		IL_0034: mul
		IL_0035: add
		IL_0036: stloc.s 4
		IL_0038: ldloc.s 4
		IL_003a: ldarg.0
		IL_003b: ldarg.1
		IL_003c: call char* System.Number::UInt32ToDecChars(char*, uint32, int32)
		IL_0041: stloc.s 4
		IL_0043: ldc.i4.0
		IL_0044: conv.u
		IL_0045: stloc.3
		IL_0046: ldloc.1
		IL_0047: ret
	} // end of method Number::UInt32ToDecStr

	.method private hidebysig static 
		bool TryUInt32ToDecStr (
			uint32 'value',
			int32 digits,
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten
		) cil managed 
	{
		// Method begins at RVA 0x75344
		// Code size 95 (0x5f)
		.maxstack 3
		.locals (
			[0] int32,
			[1] char*,
			[2] char& pinned,
			[3] char*,
			[4] uint32
		)

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: call int32 System.Buffers.Text.FormattingHelpers::CountDigits(uint32)
		IL_0007: call int32 System.Math::Max(int32, int32)
		IL_000c: stloc.0
		IL_000d: ldloc.0
		IL_000e: ldarga.s destination
		IL_0010: call instance int32 valuetype System.Span`1<char>::get_Length()
		IL_0015: ble.s IL_001c

		IL_0017: ldarg.3
		IL_0018: ldc.i4.0
		IL_0019: stind.i4
		IL_001a: ldc.i4.0
		IL_001b: ret

		IL_001c: ldarg.3
		IL_001d: ldloc.0
		IL_001e: stind.i4
		IL_001f: ldarg.2
		IL_0020: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<char>(valuetype System.Span`1<!!0>)
		IL_0025: stloc.2
		IL_0026: ldloc.2
		IL_0027: conv.u
		IL_0028: stloc.1
		IL_0029: ldloc.1
		IL_002a: ldloc.0
		IL_002b: conv.i
		IL_002c: ldc.i4.2
		IL_002d: mul
		IL_002e: add
		IL_002f: stloc.3
		IL_0030: ldarg.1
		IL_0031: ldc.i4.1
		IL_0032: bgt.s IL_0051
		// loop start (head: IL_0034)
			IL_0034: ldarg.0
			IL_0035: ldc.i4.s 10
			IL_0037: ldloca.s 4
			IL_0039: call uint32 System.Math::DivRem(uint32, uint32, uint32&)
			IL_003e: starg.s 'value'
			IL_0040: ldloc.3
			IL_0041: ldc.i4.2
			IL_0042: sub
			IL_0043: dup
			IL_0044: stloc.3
			IL_0045: ldloc.s 4
			IL_0047: ldc.i4.s 48
			IL_0049: add
			IL_004a: conv.u2
			IL_004b: stind.i2
			IL_004c: ldarg.0
			IL_004d: brtrue.s IL_0034
		// end loop

		IL_004f: br.s IL_005a

		IL_0051: ldloc.3
		IL_0052: ldarg.0
		IL_0053: ldarg.1
		IL_0054: call char* System.Number::UInt32ToDecChars(char*, uint32, int32)
		IL_0059: stloc.3

		IL_005a: ldc.i4.0
		IL_005b: conv.u
		IL_005c: stloc.2
		IL_005d: ldc.i4.1
		IL_005e: ret
	} // end of method Number::TryUInt32ToDecStr

	.method private hidebysig static 
		void Int64ToNumber (
			int64 input,
			valuetype System.Number/NumberBuffer& number
		) cil managed 
	{
		// Method begins at RVA 0x753b0
		// Code size 146 (0x92)
		.maxstack 4
		.locals (
			[0] uint64,
			[1] uint8*,
			[2] uint8*,
			[3] int32,
			[4] uint8*
		)

		IL_0000: ldarg.0
		IL_0001: stloc.0
		IL_0002: ldarg.1
		IL_0003: ldarg.0
		IL_0004: ldc.i4.0
		IL_0005: conv.i8
		IL_0006: clt
		IL_0008: stfld bool System.Number/NumberBuffer::IsNegative
		IL_000d: ldarg.1
		IL_000e: ldc.i4.s 19
		IL_0010: stfld int32 System.Number/NumberBuffer::DigitsCount
		IL_0015: ldarg.1
		IL_0016: ldfld bool System.Number/NumberBuffer::IsNegative
		IL_001b: brfalse.s IL_0020

		IL_001d: ldarg.0
		IL_001e: neg
		IL_001f: stloc.0

		IL_0020: ldarg.1
		IL_0021: call instance uint8* System.Number/NumberBuffer::GetDigitsPointer()
		IL_0026: stloc.1
		IL_0027: ldloc.1
		IL_0028: ldc.i4.s 19
		IL_002a: add
		IL_002b: stloc.2
		IL_002c: br.s IL_003e
		// loop start (head: IL_003e)
			IL_002e: ldloc.2
			IL_002f: ldloca.s 0
			IL_0031: call uint32 System.Number::Int64DivMod1E9(uint64&)
			IL_0036: ldc.i4.s 9
			IL_0038: call uint8* System.Number::UInt32ToDecChars(uint8*, uint32, int32)
			IL_003d: stloc.2

			IL_003e: ldloc.0
			IL_003f: call uint32 System.Number::High32(uint64)
			IL_0044: brtrue.s IL_002e
		// end loop

		IL_0046: ldloc.2
		IL_0047: ldloc.0
		IL_0048: call uint32 System.Number::Low32(uint64)
		IL_004d: ldc.i4.0
		IL_004e: call uint8* System.Number::UInt32ToDecChars(uint8*, uint32, int32)
		IL_0053: stloc.2
		IL_0054: ldloc.1
		IL_0055: ldc.i4.s 19
		IL_0057: add
		IL_0058: ldloc.2
		IL_0059: sub
		IL_005a: ldc.i4.1
		IL_005b: div
		IL_005c: conv.i8
		IL_005d: conv.i4
		IL_005e: stloc.3
		IL_005f: ldarg.1
		IL_0060: ldloc.3
		IL_0061: stfld int32 System.Number/NumberBuffer::DigitsCount
		IL_0066: ldarg.1
		IL_0067: ldloc.3
		IL_0068: stfld int32 System.Number/NumberBuffer::Scale
		IL_006d: ldarg.1
		IL_006e: call instance uint8* System.Number/NumberBuffer::GetDigitsPointer()
		IL_0073: stloc.s 4
		IL_0075: br.s IL_0085
		// loop start (head: IL_0085)
			IL_0077: ldloc.s 4
			IL_0079: dup
			IL_007a: ldc.i4.1
			IL_007b: add
			IL_007c: stloc.s 4
			IL_007e: ldloc.2
			IL_007f: dup
			IL_0080: ldc.i4.1
			IL_0081: add
			IL_0082: stloc.2
			IL_0083: ldind.u1
			IL_0084: stind.i1

			IL_0085: ldloc.3
			IL_0086: ldc.i4.1
			IL_0087: sub
			IL_0088: dup
			IL_0089: stloc.3
			IL_008a: ldc.i4.0
			IL_008b: bge.s IL_0077
		// end loop

		IL_008d: ldloc.s 4
		IL_008f: ldc.i4.0
		IL_0090: stind.i1
		IL_0091: ret
	} // end of method Number::Int64ToNumber

	.method public hidebysig static 
		string Int64ToDecStr (
			int64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x7544e
		// Code size 31 (0x1f)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: conv.i8
		IL_0003: bge.s IL_0017

		IL_0005: ldarg.0
		IL_0006: ldc.i4.m1
		IL_0007: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::get_CurrentInfo()
		IL_000c: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_0011: call string System.Number::NegativeInt64ToDecStr(int64, int32, string)
		IL_0016: ret

		IL_0017: ldarg.0
		IL_0018: ldc.i4.m1
		IL_0019: call string System.Number::UInt64ToDecStr(uint64, int32)
		IL_001e: ret
	} // end of method Number::Int64ToDecStr

	.method private hidebysig static 
		string NegativeInt64ToDecStr (
			int64 input,
			int32 digits,
			string sNegative
		) cil managed 
	{
		// Method begins at RVA 0x75470
		// Code size 159 (0x9f)
		.maxstack 3
		.locals (
			[0] uint64,
			[1] int32,
			[2] string,
			[3] char*,
			[4] char& pinned,
			[5] char*,
			[6] int32
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.1
		IL_0002: bge.s IL_0007

		IL_0004: ldc.i4.1
		IL_0005: starg.s digits

		IL_0007: ldarg.0
		IL_0008: neg
		IL_0009: stloc.0
		IL_000a: ldarg.1
		IL_000b: ldloc.0
		IL_000c: call int32 System.Buffers.Text.FormattingHelpers::CountDigits(uint64)
		IL_0011: call int32 System.Math::Max(int32, int32)
		IL_0016: ldarg.2
		IL_0017: callvirt instance int32 System.String::get_Length()
		IL_001c: add
		IL_001d: stloc.1
		IL_001e: ldloc.1
		IL_001f: call string System.String::FastAllocateString(int32)
		IL_0024: stloc.2
		IL_0025: ldloc.2
		IL_0026: brtrue.s IL_002c

		IL_0028: ldc.i4.0
		IL_0029: conv.u
		IL_002a: br.s IL_0037

		IL_002c: ldloc.2
		IL_002d: call instance char& modreq(System.Runtime.InteropServices.InAttribute) System.String::GetPinnableReference()
		IL_0032: stloc.s 4
		IL_0034: ldloc.s 4
		IL_0036: conv.u

		IL_0037: stloc.3
		IL_0038: ldloc.3
		IL_0039: ldloc.1
		IL_003a: conv.i
		IL_003b: ldc.i4.2
		IL_003c: mul
		IL_003d: add
		IL_003e: stloc.s 5
		IL_0040: br.s IL_005a
		// loop start (head: IL_005a)
			IL_0042: ldloc.s 5
			IL_0044: ldloca.s 0
			IL_0046: call uint32 System.Number::Int64DivMod1E9(uint64&)
			IL_004b: ldc.i4.s 9
			IL_004d: call char* System.Number::UInt32ToDecChars(char*, uint32, int32)
			IL_0052: stloc.s 5
			IL_0054: ldarg.1
			IL_0055: ldc.i4.s 9
			IL_0057: sub
			IL_0058: starg.s digits

			IL_005a: ldloc.0
			IL_005b: call uint32 System.Number::High32(uint64)
			IL_0060: brtrue.s IL_0042
		// end loop

		IL_0062: ldloc.s 5
		IL_0064: ldloc.0
		IL_0065: call uint32 System.Number::Low32(uint64)
		IL_006a: ldarg.1
		IL_006b: call char* System.Number::UInt32ToDecChars(char*, uint32, int32)
		IL_0070: stloc.s 5
		IL_0072: ldarg.2
		IL_0073: callvirt instance int32 System.String::get_Length()
		IL_0078: ldc.i4.1
		IL_0079: sub
		IL_007a: stloc.s 6
		IL_007c: br.s IL_0094
		// loop start (head: IL_0094)
			IL_007e: ldloc.s 5
			IL_0080: ldc.i4.2
			IL_0081: sub
			IL_0082: dup
			IL_0083: stloc.s 5
			IL_0085: ldarg.2
			IL_0086: ldloc.s 6
			IL_0088: callvirt instance char System.String::get_Chars(int32)
			IL_008d: stind.i2
			IL_008e: ldloc.s 6
			IL_0090: ldc.i4.1
			IL_0091: sub
			IL_0092: stloc.s 6

			IL_0094: ldloc.s 6
			IL_0096: ldc.i4.0
			IL_0097: bge.s IL_007e
		// end loop

		IL_0099: ldc.i4.0
		IL_009a: conv.u
		IL_009b: stloc.s 4
		IL_009d: ldloc.2
		IL_009e: ret
	} // end of method Number::NegativeInt64ToDecStr

	.method private hidebysig static 
		bool TryNegativeInt64ToDecStr (
			int64 input,
			int32 digits,
			string sNegative,
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten
		) cil managed 
	{
		// Method begins at RVA 0x7551c
		// Code size 163 (0xa3)
		.maxstack 3
		.locals (
			[0] uint64,
			[1] int32,
			[2] char*,
			[3] char& pinned,
			[4] char*,
			[5] int32
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.1
		IL_0002: bge.s IL_0007

		IL_0004: ldc.i4.1
		IL_0005: starg.s digits

		IL_0007: ldarg.0
		IL_0008: neg
		IL_0009: stloc.0
		IL_000a: ldarg.1
		IL_000b: ldarg.0
		IL_000c: neg
		IL_000d: call int32 System.Buffers.Text.FormattingHelpers::CountDigits(uint64)
		IL_0012: call int32 System.Math::Max(int32, int32)
		IL_0017: ldarg.2
		IL_0018: callvirt instance int32 System.String::get_Length()
		IL_001d: add
		IL_001e: stloc.1
		IL_001f: ldloc.1
		IL_0020: ldarga.s destination
		IL_0022: call instance int32 valuetype System.Span`1<char>::get_Length()
		IL_0027: ble.s IL_002f

		IL_0029: ldarg.s charsWritten
		IL_002b: ldc.i4.0
		IL_002c: stind.i4
		IL_002d: ldc.i4.0
		IL_002e: ret

		IL_002f: ldarg.s charsWritten
		IL_0031: ldloc.1
		IL_0032: stind.i4
		IL_0033: ldarg.3
		IL_0034: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<char>(valuetype System.Span`1<!!0>)
		IL_0039: stloc.3
		IL_003a: ldloc.3
		IL_003b: conv.u
		IL_003c: stloc.2
		IL_003d: ldloc.2
		IL_003e: ldloc.1
		IL_003f: conv.i
		IL_0040: ldc.i4.2
		IL_0041: mul
		IL_0042: add
		IL_0043: stloc.s 4
		IL_0045: br.s IL_005f
		// loop start (head: IL_005f)
			IL_0047: ldloc.s 4
			IL_0049: ldloca.s 0
			IL_004b: call uint32 System.Number::Int64DivMod1E9(uint64&)
			IL_0050: ldc.i4.s 9
			IL_0052: call char* System.Number::UInt32ToDecChars(char*, uint32, int32)
			IL_0057: stloc.s 4
			IL_0059: ldarg.1
			IL_005a: ldc.i4.s 9
			IL_005c: sub
			IL_005d: starg.s digits

			IL_005f: ldloc.0
			IL_0060: call uint32 System.Number::High32(uint64)
			IL_0065: brtrue.s IL_0047
		// end loop

		IL_0067: ldloc.s 4
		IL_0069: ldloc.0
		IL_006a: call uint32 System.Number::Low32(uint64)
		IL_006f: ldarg.1
		IL_0070: call char* System.Number::UInt32ToDecChars(char*, uint32, int32)
		IL_0075: stloc.s 4
		IL_0077: ldarg.2
		IL_0078: callvirt instance int32 System.String::get_Length()
		IL_007d: ldc.i4.1
		IL_007e: sub
		IL_007f: stloc.s 5
		IL_0081: br.s IL_0099
		// loop start (head: IL_0099)
			IL_0083: ldloc.s 4
			IL_0085: ldc.i4.2
			IL_0086: sub
			IL_0087: dup
			IL_0088: stloc.s 4
			IL_008a: ldarg.2
			IL_008b: ldloc.s 5
			IL_008d: callvirt instance char System.String::get_Chars(int32)
			IL_0092: stind.i2
			IL_0093: ldloc.s 5
			IL_0095: ldc.i4.1
			IL_0096: sub
			IL_0097: stloc.s 5

			IL_0099: ldloc.s 5
			IL_009b: ldc.i4.0
			IL_009c: bge.s IL_0083
		// end loop

		IL_009e: ldc.i4.0
		IL_009f: conv.u
		IL_00a0: stloc.3
		IL_00a1: ldc.i4.1
		IL_00a2: ret
	} // end of method Number::TryNegativeInt64ToDecStr

	.method private hidebysig static 
		string Int64ToHexStr (
			int64 'value',
			char hexBase,
			int32 digits
		) cil managed 
	{
		// Method begins at RVA 0x755cc
		// Code size 119 (0x77)
		.maxstack 5
		.locals (
			[0] int32,
			[1] string,
			[2] char*,
			[3] char& pinned,
			[4] char*
		)

		IL_0000: ldarg.2
		IL_0001: ldarg.0
		IL_0002: call int32 System.Buffers.Text.FormattingHelpers::CountHexDigits(uint64)
		IL_0007: call int32 System.Math::Max(int32, int32)
		IL_000c: stloc.0
		IL_000d: ldloc.0
		IL_000e: call string System.String::FastAllocateString(int32)
		IL_0013: stloc.1
		IL_0014: ldloc.1
		IL_0015: brtrue.s IL_001b

		IL_0017: ldc.i4.0
		IL_0018: conv.u
		IL_0019: br.s IL_0024

		IL_001b: ldloc.1
		IL_001c: call instance char& modreq(System.Runtime.InteropServices.InAttribute) System.String::GetPinnableReference()
		IL_0021: stloc.3
		IL_0022: ldloc.3
		IL_0023: conv.u

		IL_0024: stloc.2
		IL_0025: ldloc.2
		IL_0026: ldloc.0
		IL_0027: conv.i
		IL_0028: ldc.i4.2
		IL_0029: mul
		IL_002a: add
		IL_002b: stloc.s 4
		IL_002d: ldarg.0
		IL_002e: call uint32 System.Number::High32(uint64)
		IL_0033: brfalse.s IL_005b

		IL_0035: ldloc.s 4
		IL_0037: ldarg.0
		IL_0038: call uint32 System.Number::Low32(uint64)
		IL_003d: ldarg.1
		IL_003e: ldc.i4.8
		IL_003f: call char* System.Number::Int32ToHexChars(char*, uint32, int32, int32)
		IL_0044: stloc.s 4
		IL_0046: ldloc.s 4
		IL_0048: ldarg.0
		IL_0049: call uint32 System.Number::High32(uint64)
		IL_004e: ldarg.1
		IL_004f: ldarg.2
		IL_0050: ldc.i4.8
		IL_0051: sub
		IL_0052: call char* System.Number::Int32ToHexChars(char*, uint32, int32, int32)
		IL_0057: stloc.s 4
		IL_0059: br.s IL_0072

		IL_005b: ldloc.s 4
		IL_005d: ldarg.0
		IL_005e: call uint32 System.Number::Low32(uint64)
		IL_0063: ldarg.1
		IL_0064: ldarg.2
		IL_0065: ldc.i4.1
		IL_0066: call int32 System.Math::Max(int32, int32)
		IL_006b: call char* System.Number::Int32ToHexChars(char*, uint32, int32, int32)
		IL_0070: stloc.s 4

		IL_0072: ldc.i4.0
		IL_0073: conv.u
		IL_0074: stloc.3
		IL_0075: ldloc.1
		IL_0076: ret
	} // end of method Number::Int64ToHexStr

	.method private hidebysig static 
		bool TryInt64ToHexStr (
			int64 'value',
			char hexBase,
			int32 digits,
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten
		) cil managed 
	{
		// Method begins at RVA 0x75650
		// Code size 118 (0x76)
		.maxstack 5
		.locals (
			[0] int32,
			[1] char*,
			[2] char& pinned,
			[3] char*
		)

		IL_0000: ldarg.2
		IL_0001: ldarg.0
		IL_0002: call int32 System.Buffers.Text.FormattingHelpers::CountHexDigits(uint64)
		IL_0007: call int32 System.Math::Max(int32, int32)
		IL_000c: stloc.0
		IL_000d: ldloc.0
		IL_000e: ldarga.s destination
		IL_0010: call instance int32 valuetype System.Span`1<char>::get_Length()
		IL_0015: ble.s IL_001d

		IL_0017: ldarg.s charsWritten
		IL_0019: ldc.i4.0
		IL_001a: stind.i4
		IL_001b: ldc.i4.0
		IL_001c: ret

		IL_001d: ldarg.s charsWritten
		IL_001f: ldloc.0
		IL_0020: stind.i4
		IL_0021: ldarg.3
		IL_0022: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<char>(valuetype System.Span`1<!!0>)
		IL_0027: stloc.2
		IL_0028: ldloc.2
		IL_0029: conv.u
		IL_002a: stloc.1
		IL_002b: ldloc.1
		IL_002c: ldloc.0
		IL_002d: conv.i
		IL_002e: ldc.i4.2
		IL_002f: mul
		IL_0030: add
		IL_0031: stloc.3
		IL_0032: ldarg.0
		IL_0033: call uint32 System.Number::High32(uint64)
		IL_0038: brfalse.s IL_005c

		IL_003a: ldloc.3
		IL_003b: ldarg.0
		IL_003c: call uint32 System.Number::Low32(uint64)
		IL_0041: ldarg.1
		IL_0042: ldc.i4.8
		IL_0043: call char* System.Number::Int32ToHexChars(char*, uint32, int32, int32)
		IL_0048: stloc.3
		IL_0049: ldloc.3
		IL_004a: ldarg.0
		IL_004b: call uint32 System.Number::High32(uint64)
		IL_0050: ldarg.1
		IL_0051: ldarg.2
		IL_0052: ldc.i4.8
		IL_0053: sub
		IL_0054: call char* System.Number::Int32ToHexChars(char*, uint32, int32, int32)
		IL_0059: stloc.3
		IL_005a: br.s IL_0071

		IL_005c: ldloc.3
		IL_005d: ldarg.0
		IL_005e: call uint32 System.Number::Low32(uint64)
		IL_0063: ldarg.1
		IL_0064: ldarg.2
		IL_0065: ldc.i4.1
		IL_0066: call int32 System.Math::Max(int32, int32)
		IL_006b: call char* System.Number::Int32ToHexChars(char*, uint32, int32, int32)
		IL_0070: stloc.3

		IL_0071: ldc.i4.0
		IL_0072: conv.u
		IL_0073: stloc.2
		IL_0074: ldc.i4.1
		IL_0075: ret
	} // end of method Number::TryInt64ToHexStr

	.method private hidebysig static 
		void UInt64ToNumber (
			uint64 'value',
			valuetype System.Number/NumberBuffer& number
		) cil managed 
	{
		// Method begins at RVA 0x756d4
		// Code size 125 (0x7d)
		.maxstack 4
		.locals (
			[0] uint8*,
			[1] uint8*,
			[2] int32,
			[3] uint8*
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.s 20
		IL_0003: stfld int32 System.Number/NumberBuffer::DigitsCount
		IL_0008: ldarg.1
		IL_0009: ldc.i4.0
		IL_000a: stfld bool System.Number/NumberBuffer::IsNegative
		IL_000f: ldarg.1
		IL_0010: call instance uint8* System.Number/NumberBuffer::GetDigitsPointer()
		IL_0015: stloc.0
		IL_0016: ldloc.0
		IL_0017: ldc.i4.s 20
		IL_0019: add
		IL_001a: stloc.1
		IL_001b: br.s IL_002d
		// loop start (head: IL_002d)
			IL_001d: ldloc.1
			IL_001e: ldarga.s 'value'
			IL_0020: call uint32 System.Number::Int64DivMod1E9(uint64&)
			IL_0025: ldc.i4.s 9
			IL_0027: call uint8* System.Number::UInt32ToDecChars(uint8*, uint32, int32)
			IL_002c: stloc.1

			IL_002d: ldarg.0
			IL_002e: call uint32 System.Number::High32(uint64)
			IL_0033: brtrue.s IL_001d
		// end loop

		IL_0035: ldloc.1
		IL_0036: ldarg.0
		IL_0037: call uint32 System.Number::Low32(uint64)
		IL_003c: ldc.i4.0
		IL_003d: call uint8* System.Number::UInt32ToDecChars(uint8*, uint32, int32)
		IL_0042: stloc.1
		IL_0043: ldloc.0
		IL_0044: ldc.i4.s 20
		IL_0046: add
		IL_0047: ldloc.1
		IL_0048: sub
		IL_0049: ldc.i4.1
		IL_004a: div
		IL_004b: conv.i8
		IL_004c: conv.i4
		IL_004d: stloc.2
		IL_004e: ldarg.1
		IL_004f: ldloc.2
		IL_0050: stfld int32 System.Number/NumberBuffer::DigitsCount
		IL_0055: ldarg.1
		IL_0056: ldloc.2
		IL_0057: stfld int32 System.Number/NumberBuffer::Scale
		IL_005c: ldarg.1
		IL_005d: call instance uint8* System.Number/NumberBuffer::GetDigitsPointer()
		IL_0062: stloc.3
		IL_0063: br.s IL_0071
		// loop start (head: IL_0071)
			IL_0065: ldloc.3
			IL_0066: dup
			IL_0067: ldc.i4.1
			IL_0068: add
			IL_0069: stloc.3
			IL_006a: ldloc.1
			IL_006b: dup
			IL_006c: ldc.i4.1
			IL_006d: add
			IL_006e: stloc.1
			IL_006f: ldind.u1
			IL_0070: stind.i1

			IL_0071: ldloc.2
			IL_0072: ldc.i4.1
			IL_0073: sub
			IL_0074: dup
			IL_0075: stloc.2
			IL_0076: ldc.i4.0
			IL_0077: bge.s IL_0065
		// end loop

		IL_0079: ldloc.3
		IL_007a: ldc.i4.0
		IL_007b: stind.i1
		IL_007c: ret
	} // end of method Number::UInt64ToNumber

	.method assembly hidebysig static 
		string UInt64ToDecStr (
			uint64 'value',
			int32 digits
		) cil managed 
	{
		// Method begins at RVA 0x75760
		// Code size 120 (0x78)
		.maxstack 3
		.locals (
			[0] int32,
			[1] string,
			[2] char*,
			[3] char& pinned,
			[4] char*
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.1
		IL_0002: bge.s IL_0007

		IL_0004: ldc.i4.1
		IL_0005: starg.s digits

		IL_0007: ldarg.1
		IL_0008: ldarg.0
		IL_0009: call int32 System.Buffers.Text.FormattingHelpers::CountDigits(uint64)
		IL_000e: call int32 System.Math::Max(int32, int32)
		IL_0013: stloc.0
		IL_0014: ldloc.0
		IL_0015: ldc.i4.1
		IL_0016: bne.un.s IL_0021

		IL_0018: ldsfld string[] System.Number::s_singleDigitStringCache
		IL_001d: ldarg.0
		IL_001e: conv.ovf.i.un
		IL_001f: ldelem.ref
		IL_0020: ret

		IL_0021: ldloc.0
		IL_0022: call string System.String::FastAllocateString(int32)
		IL_0027: stloc.1
		IL_0028: ldloc.1
		IL_0029: brtrue.s IL_002f

		IL_002b: ldc.i4.0
		IL_002c: conv.u
		IL_002d: br.s IL_0038

		IL_002f: ldloc.1
		IL_0030: call instance char& modreq(System.Runtime.InteropServices.InAttribute) System.String::GetPinnableReference()
		IL_0035: stloc.3
		IL_0036: ldloc.3
		IL_0037: conv.u

		IL_0038: stloc.2
		IL_0039: ldloc.2
		IL_003a: ldloc.0
		IL_003b: conv.i
		IL_003c: ldc.i4.2
		IL_003d: mul
		IL_003e: add
		IL_003f: stloc.s 4
		IL_0041: br.s IL_005b
		// loop start (head: IL_005b)
			IL_0043: ldloc.s 4
			IL_0045: ldarga.s 'value'
			IL_0047: call uint32 System.Number::Int64DivMod1E9(uint64&)
			IL_004c: ldc.i4.s 9
			IL_004e: call char* System.Number::UInt32ToDecChars(char*, uint32, int32)
			IL_0053: stloc.s 4
			IL_0055: ldarg.1
			IL_0056: ldc.i4.s 9
			IL_0058: sub
			IL_0059: starg.s digits

			IL_005b: ldarg.0
			IL_005c: call uint32 System.Number::High32(uint64)
			IL_0061: brtrue.s IL_0043
		// end loop

		IL_0063: ldloc.s 4
		IL_0065: ldarg.0
		IL_0066: call uint32 System.Number::Low32(uint64)
		IL_006b: ldarg.1
		IL_006c: call char* System.Number::UInt32ToDecChars(char*, uint32, int32)
		IL_0071: stloc.s 4
		IL_0073: ldc.i4.0
		IL_0074: conv.u
		IL_0075: stloc.3
		IL_0076: ldloc.1
		IL_0077: ret
	} // end of method Number::UInt64ToDecStr

	.method private hidebysig static 
		bool TryUInt64ToDecStr (
			uint64 'value',
			int32 digits,
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten
		) cil managed 
	{
		// Method begins at RVA 0x757e4
		// Code size 106 (0x6a)
		.maxstack 3
		.locals (
			[0] int32,
			[1] char*,
			[2] char& pinned,
			[3] char*
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.1
		IL_0002: bge.s IL_0007

		IL_0004: ldc.i4.1
		IL_0005: starg.s digits

		IL_0007: ldarg.1
		IL_0008: ldarg.0
		IL_0009: call int32 System.Buffers.Text.FormattingHelpers::CountDigits(uint64)
		IL_000e: call int32 System.Math::Max(int32, int32)
		IL_0013: stloc.0
		IL_0014: ldloc.0
		IL_0015: ldarga.s destination
		IL_0017: call instance int32 valuetype System.Span`1<char>::get_Length()
		IL_001c: ble.s IL_0023

		IL_001e: ldarg.3
		IL_001f: ldc.i4.0
		IL_0020: stind.i4
		IL_0021: ldc.i4.0
		IL_0022: ret

		IL_0023: ldarg.3
		IL_0024: ldloc.0
		IL_0025: stind.i4
		IL_0026: ldarg.2
		IL_0027: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<char>(valuetype System.Span`1<!!0>)
		IL_002c: stloc.2
		IL_002d: ldloc.2
		IL_002e: conv.u
		IL_002f: stloc.1
		IL_0030: ldloc.1
		IL_0031: ldloc.0
		IL_0032: conv.i
		IL_0033: ldc.i4.2
		IL_0034: mul
		IL_0035: add
		IL_0036: stloc.3
		IL_0037: br.s IL_004f
		// loop start (head: IL_004f)
			IL_0039: ldloc.3
			IL_003a: ldarga.s 'value'
			IL_003c: call uint32 System.Number::Int64DivMod1E9(uint64&)
			IL_0041: ldc.i4.s 9
			IL_0043: call char* System.Number::UInt32ToDecChars(char*, uint32, int32)
			IL_0048: stloc.3
			IL_0049: ldarg.1
			IL_004a: ldc.i4.s 9
			IL_004c: sub
			IL_004d: starg.s digits

			IL_004f: ldarg.0
			IL_0050: call uint32 System.Number::High32(uint64)
			IL_0055: brtrue.s IL_0039
		// end loop

		IL_0057: ldloc.3
		IL_0058: ldarg.0
		IL_0059: call uint32 System.Number::Low32(uint64)
		IL_005e: ldarg.1
		IL_005f: call char* System.Number::UInt32ToDecChars(char*, uint32, int32)
		IL_0064: stloc.3
		IL_0065: ldc.i4.0
		IL_0066: conv.u
		IL_0067: stloc.2
		IL_0068: ldc.i4.1
		IL_0069: ret
	} // end of method Number::TryUInt64ToDecStr

	.method assembly hidebysig static 
		char ParseFormatSpecifier (
			valuetype System.ReadOnlySpan`1<char> format,
			[out] int32& digits
		) cil managed 
	{
		// Method begins at RVA 0x7585c
		// Code size 259 (0x103)
		.maxstack 5
		.locals (
			[0] char,
			[1] int32,
			[2] int32,
			[3] int32,
			[4] int32,
			[5] int32
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldarga.s format
		IL_0004: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0009: ldc.i4.0
		IL_000a: ble IL_00ef

		IL_000f: ldarga.s format
		IL_0011: ldc.i4.0
		IL_0012: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_0017: ldind.u2
		IL_0018: stloc.0
		IL_0019: ldloc.0
		IL_001a: ldc.i4.s 65
		IL_001c: sub
		IL_001d: ldc.i4.s 25
		IL_001f: ble.un.s IL_002c

		IL_0021: ldloc.0
		IL_0022: ldc.i4.s 97
		IL_0024: sub
		IL_0025: ldc.i4.s 25
		IL_0027: bgt.un IL_00ef

		IL_002c: ldarga.s format
		IL_002e: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0033: ldc.i4.1
		IL_0034: bne.un.s IL_003b

		IL_0036: ldarg.1
		IL_0037: ldc.i4.m1
		IL_0038: stind.i4
		IL_0039: ldloc.0
		IL_003a: ret

		IL_003b: ldarga.s format
		IL_003d: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0042: ldc.i4.2
		IL_0043: bne.un.s IL_005c

		IL_0045: ldarga.s format
		IL_0047: ldc.i4.1
		IL_0048: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_004d: ldind.u2
		IL_004e: ldc.i4.s 48
		IL_0050: sub
		IL_0051: stloc.3
		IL_0052: ldloc.3
		IL_0053: ldc.i4.s 10
		IL_0055: bge.un.s IL_009a

		IL_0057: ldarg.1
		IL_0058: ldloc.3
		IL_0059: stind.i4
		IL_005a: ldloc.0
		IL_005b: ret

		IL_005c: ldarga.s format
		IL_005e: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0063: ldc.i4.3
		IL_0064: bne.un.s IL_009a

		IL_0066: ldarga.s format
		IL_0068: ldc.i4.1
		IL_0069: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_006e: ldind.u2
		IL_006f: ldc.i4.s 48
		IL_0071: sub
		IL_0072: stloc.s 4
		IL_0074: ldarga.s format
		IL_0076: ldc.i4.2
		IL_0077: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_007c: ldind.u2
		IL_007d: ldc.i4.s 48
		IL_007f: sub
		IL_0080: stloc.s 5
		IL_0082: ldloc.s 4
		IL_0084: ldc.i4.s 10
		IL_0086: bge.un.s IL_009a

		IL_0088: ldloc.s 5
		IL_008a: ldc.i4.s 10
		IL_008c: bge.un.s IL_009a

		IL_008e: ldarg.1
		IL_008f: ldloc.s 4
		IL_0091: ldc.i4.s 10
		IL_0093: mul
		IL_0094: ldloc.s 5
		IL_0096: add
		IL_0097: stind.i4
		IL_0098: ldloc.0
		IL_0099: ret

		IL_009a: ldc.i4.0
		IL_009b: stloc.1
		IL_009c: ldc.i4.1
		IL_009d: stloc.2
		IL_009e: br.s IL_00b6
		// loop start (head: IL_00b6)
			IL_00a0: ldloc.1
			IL_00a1: ldc.i4.s 10
			IL_00a3: mul
			IL_00a4: ldarga.s format
			IL_00a6: ldloc.2
			IL_00a7: dup
			IL_00a8: ldc.i4.1
			IL_00a9: add
			IL_00aa: stloc.2
			IL_00ab: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_00b0: ldind.u2
			IL_00b1: add
			IL_00b2: ldc.i4.s 48
			IL_00b4: sub
			IL_00b5: stloc.1

			IL_00b6: ldloc.2
			IL_00b7: ldarga.s format
			IL_00b9: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_00be: bge.s IL_00d5

			IL_00c0: ldarga.s format
			IL_00c2: ldloc.2
			IL_00c3: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_00c8: ldind.u2
			IL_00c9: ldc.i4.s 48
			IL_00cb: sub
			IL_00cc: ldc.i4.s 10
			IL_00ce: bge.un.s IL_00d5

			IL_00d0: ldloc.1
			IL_00d1: ldc.i4.s 10
			IL_00d3: blt.s IL_00a0
		// end loop

		IL_00d5: ldloc.2
		IL_00d6: ldarga.s format
		IL_00d8: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_00dd: beq.s IL_00ea

		IL_00df: ldarga.s format
		IL_00e1: ldloc.2
		IL_00e2: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_00e7: ldind.u2
		IL_00e8: brtrue.s IL_00ef

		IL_00ea: ldarg.1
		IL_00eb: ldloc.1
		IL_00ec: stind.i4
		IL_00ed: ldloc.0
		IL_00ee: ret

		IL_00ef: ldarg.1
		IL_00f0: ldc.i4.m1
		IL_00f1: stind.i4
		IL_00f2: ldarga.s format
		IL_00f4: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_00f9: brfalse.s IL_0100

		IL_00fb: ldloc.0
		IL_00fc: brfalse.s IL_0100

		IL_00fe: ldc.i4.0
		IL_00ff: ret

		IL_0100: ldc.i4.s 71
		IL_0102: ret
	} // end of method Number::ParseFormatSpecifier

	.method assembly hidebysig static 
		void NumberToString (
			valuetype System.Text.ValueStringBuilder& sb,
			valuetype System.Number/NumberBuffer& number,
			char format,
			int32 nMaxDigits,
			class System.Globalization.NumberFormatInfo info
		) cil managed 
	{
		// Method begins at RVA 0x7596c
		// Code size 512 (0x200)
		.maxstack 6
		.locals (
			[0] bool,
			[1] bool
		)

		IL_0000: ldarg.1
		IL_0001: ldfld valuetype System.Number/NumberBufferKind System.Number/NumberBuffer::Kind
		IL_0006: ldc.i4.3
		IL_0007: ceq
		IL_0009: stloc.0
		IL_000a: ldarg.2
		IL_000b: ldc.i4.s 82
		IL_000d: bgt.un.s IL_004e

		IL_000f: ldarg.2
		IL_0010: ldc.i4.s 67
		IL_0012: sub
		IL_0013: switch (IL_008d, IL_01f5, IL_011e, IL_00b4, IL_0153)

		IL_002c: ldarg.2
		IL_002d: ldc.i4.s 78
		IL_002f: sub
		IL_0030: switch (IL_00f7, IL_01f5, IL_01ae, IL_01f5, IL_01e0)

		IL_0049: br IL_01f5

		IL_004e: ldarg.2
		IL_004f: ldc.i4.s 99
		IL_0051: sub
		IL_0052: switch (IL_008d, IL_01f5, IL_011e, IL_00b4, IL_0153)

		IL_006b: ldarg.2
		IL_006c: ldc.i4.s 110
		IL_006e: sub
		IL_006f: switch (IL_00f7, IL_01f5, IL_01ae, IL_01f5, IL_01e0)

		IL_0088: br IL_01f5

		IL_008d: ldarg.3
		IL_008e: ldc.i4.0
		IL_008f: bge.s IL_009a

		IL_0091: ldarg.s info
		IL_0093: callvirt instance int32 System.Globalization.NumberFormatInfo::get_CurrencyDecimalDigits()
		IL_0098: starg.s nMaxDigits

		IL_009a: ldarg.1
		IL_009b: ldarg.1
		IL_009c: ldfld int32 System.Number/NumberBuffer::Scale
		IL_00a1: ldarg.3
		IL_00a2: add
		IL_00a3: ldloc.0
		IL_00a4: call void System.Number::RoundNumber(valuetype System.Number/NumberBuffer&, int32, bool)
		IL_00a9: ldarg.0
		IL_00aa: ldarg.1
		IL_00ab: ldarg.3
		IL_00ac: ldarg.s info
		IL_00ae: call void System.Number::FormatCurrency(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, int32, class System.Globalization.NumberFormatInfo)
		IL_00b3: ret

		IL_00b4: ldarg.3
		IL_00b5: ldc.i4.0
		IL_00b6: bge.s IL_00c1

		IL_00b8: ldarg.s info
		IL_00ba: callvirt instance int32 System.Globalization.NumberFormatInfo::get_NumberDecimalDigits()
		IL_00bf: starg.s nMaxDigits

		IL_00c1: ldarg.1
		IL_00c2: ldarg.1
		IL_00c3: ldfld int32 System.Number/NumberBuffer::Scale
		IL_00c8: ldarg.3
		IL_00c9: add
		IL_00ca: ldloc.0
		IL_00cb: call void System.Number::RoundNumber(valuetype System.Number/NumberBuffer&, int32, bool)
		IL_00d0: ldarg.1
		IL_00d1: ldfld bool System.Number/NumberBuffer::IsNegative
		IL_00d6: brfalse.s IL_00e5

		IL_00d8: ldarg.0
		IL_00d9: ldarg.s info
		IL_00db: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_00e0: call instance void System.Text.ValueStringBuilder::Append(string)

		IL_00e5: ldarg.0
		IL_00e6: ldarg.1
		IL_00e7: ldarg.3
		IL_00e8: ldnull
		IL_00e9: ldarg.s info
		IL_00eb: callvirt instance string System.Globalization.NumberFormatInfo::get_NumberDecimalSeparator()
		IL_00f0: ldnull
		IL_00f1: call void System.Number::FormatFixed(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, int32, int32[], string, string)
		IL_00f6: ret

		IL_00f7: ldarg.3
		IL_00f8: ldc.i4.0
		IL_00f9: bge.s IL_0104

		IL_00fb: ldarg.s info
		IL_00fd: callvirt instance int32 System.Globalization.NumberFormatInfo::get_NumberDecimalDigits()
		IL_0102: starg.s nMaxDigits

		IL_0104: ldarg.1
		IL_0105: ldarg.1
		IL_0106: ldfld int32 System.Number/NumberBuffer::Scale
		IL_010b: ldarg.3
		IL_010c: add
		IL_010d: ldloc.0
		IL_010e: call void System.Number::RoundNumber(valuetype System.Number/NumberBuffer&, int32, bool)
		IL_0113: ldarg.0
		IL_0114: ldarg.1
		IL_0115: ldarg.3
		IL_0116: ldarg.s info
		IL_0118: call void System.Number::FormatNumber(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, int32, class System.Globalization.NumberFormatInfo)
		IL_011d: ret

		IL_011e: ldarg.3
		IL_011f: ldc.i4.0
		IL_0120: bge.s IL_0125

		IL_0122: ldc.i4.6
		IL_0123: starg.s nMaxDigits

		IL_0125: ldarg.3
		IL_0126: ldc.i4.1
		IL_0127: add
		IL_0128: starg.s nMaxDigits
		IL_012a: ldarg.1
		IL_012b: ldarg.3
		IL_012c: ldloc.0
		IL_012d: call void System.Number::RoundNumber(valuetype System.Number/NumberBuffer&, int32, bool)
		IL_0132: ldarg.1
		IL_0133: ldfld bool System.Number/NumberBuffer::IsNegative
		IL_0138: brfalse.s IL_0147

		IL_013a: ldarg.0
		IL_013b: ldarg.s info
		IL_013d: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_0142: call instance void System.Text.ValueStringBuilder::Append(string)

		IL_0147: ldarg.0
		IL_0148: ldarg.1
		IL_0149: ldarg.3
		IL_014a: ldarg.s info
		IL_014c: ldarg.2
		IL_014d: call void System.Number::FormatScientific(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, int32, class System.Globalization.NumberFormatInfo, char)
		IL_0152: ret

		IL_0153: ldc.i4.0
		IL_0154: stloc.1
		IL_0155: ldarg.3
		IL_0156: ldc.i4.1
		IL_0157: bge.s IL_0181

		IL_0159: ldarg.1
		IL_015a: ldfld valuetype System.Number/NumberBufferKind System.Number/NumberBuffer::Kind
		IL_015f: ldc.i4.2
		IL_0160: bne.un.s IL_0179

		IL_0162: ldarg.3
		IL_0163: ldc.i4.m1
		IL_0164: bne.un.s IL_0179

		IL_0166: ldc.i4.1
		IL_0167: stloc.1
		IL_0168: ldarg.1
		IL_0169: ldflda valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
		IL_016e: ldc.i4.0
		IL_016f: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
		IL_0174: ldind.u1
		IL_0175: brtrue.s IL_0189

		IL_0177: br.s IL_019e

		IL_0179: ldarg.1
		IL_017a: ldfld int32 System.Number/NumberBuffer::DigitsCount
		IL_017f: starg.s nMaxDigits

		IL_0181: ldarg.1
		IL_0182: ldarg.3
		IL_0183: ldloc.0
		IL_0184: call void System.Number::RoundNumber(valuetype System.Number/NumberBuffer&, int32, bool)

		IL_0189: ldarg.1
		IL_018a: ldfld bool System.Number/NumberBuffer::IsNegative
		IL_018f: brfalse.s IL_019e

		IL_0191: ldarg.0
		IL_0192: ldarg.s info
		IL_0194: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_0199: call instance void System.Text.ValueStringBuilder::Append(string)

		IL_019e: ldarg.0
		IL_019f: ldarg.1
		IL_01a0: ldarg.3
		IL_01a1: ldarg.s info
		IL_01a3: ldarg.2
		IL_01a4: ldc.i4.2
		IL_01a5: sub
		IL_01a6: conv.u2
		IL_01a7: ldloc.1
		IL_01a8: call void System.Number::FormatGeneral(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, int32, class System.Globalization.NumberFormatInfo, char, bool)
		IL_01ad: ret

		IL_01ae: ldarg.3
		IL_01af: ldc.i4.0
		IL_01b0: bge.s IL_01bb

		IL_01b2: ldarg.s info
		IL_01b4: callvirt instance int32 System.Globalization.NumberFormatInfo::get_PercentDecimalDigits()
		IL_01b9: starg.s nMaxDigits

		IL_01bb: ldarg.1
		IL_01bc: ldflda int32 System.Number/NumberBuffer::Scale
		IL_01c1: dup
		IL_01c2: ldind.i4
		IL_01c3: ldc.i4.2
		IL_01c4: add
		IL_01c5: stind.i4
		IL_01c6: ldarg.1
		IL_01c7: ldarg.1
		IL_01c8: ldfld int32 System.Number/NumberBuffer::Scale
		IL_01cd: ldarg.3
		IL_01ce: add
		IL_01cf: ldloc.0
		IL_01d0: call void System.Number::RoundNumber(valuetype System.Number/NumberBuffer&, int32, bool)
		IL_01d5: ldarg.0
		IL_01d6: ldarg.1
		IL_01d7: ldarg.3
		IL_01d8: ldarg.s info
		IL_01da: call void System.Number::FormatPercent(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, int32, class System.Globalization.NumberFormatInfo)
		IL_01df: ret

		IL_01e0: ldarg.1
		IL_01e1: ldfld valuetype System.Number/NumberBufferKind System.Number/NumberBuffer::Kind
		IL_01e6: ldc.i4.3
		IL_01e7: bne.un.s IL_01f5

		IL_01e9: ldarg.2
		IL_01ea: ldc.i4.s 11
		IL_01ec: sub
		IL_01ed: conv.u2
		IL_01ee: starg.s format
		IL_01f0: br IL_0153

		IL_01f5: call string System.SR::get_Argument_BadFormatSpecifier()
		IL_01fa: newobj instance void System.FormatException::.ctor(string)
		IL_01ff: throw
	} // end of method Number::NumberToString

	.method assembly hidebysig static 
		void NumberToStringFormat (
			valuetype System.Text.ValueStringBuilder& sb,
			valuetype System.Number/NumberBuffer& number,
			valuetype System.ReadOnlySpan`1<char> format,
			class System.Globalization.NumberFormatInfo info
		) cil managed 
	{
		// Method begins at RVA 0x75b78
		// Code size 2042 (0x7fa)
		.maxstack 6
		.locals (
			[0] int32,
			[1] int32,
			[2] int32,
			[3] int32,
			[4] int32,
			[5] bool,
			[6] int32,
			[7] int32,
			[8] bool,
			[9] int32,
			[10] int32,
			[11] int32,
			[12] int32,
			[13] uint8*,
			[14] char,
			[15] valuetype System.Span`1<int32>,
			[16] int32,
			[17] bool,
			[18] char*,
			[19] char& pinned,
			[20] int32,
			[21] valuetype System.Span`1<int32>,
			[22] int32[],
			[23] int32,
			[24] int32,
			[25] int32,
			[26] int32,
			[27] int32,
			[28] int32,
			[29] int32[],
			[30] char*,
			[31] char& pinned,
			[32] uint8*,
			[33] bool,
			[34] int32,
			[35] int32
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.s 7
		IL_0003: ldarg.1
		IL_0004: call instance uint8* System.Number/NumberBuffer::GetDigitsPointer()
		IL_0009: stloc.s 13
		IL_000b: ldarg.2
		IL_000c: ldloc.s 13
		IL_000e: ldind.u1
		IL_000f: brfalse.s IL_001f

		IL_0011: ldarg.1
		IL_0012: ldfld bool System.Number/NumberBuffer::IsNegative
		IL_0017: brtrue.s IL_001c

		IL_0019: ldc.i4.0
		IL_001a: br.s IL_0020

		IL_001c: ldc.i4.1
		IL_001d: br.s IL_0020

		IL_001f: ldc.i4.2

		IL_0020: call int32 System.Number::FindSection(valuetype System.ReadOnlySpan`1<char>, int32)
		IL_0025: stloc.s 11
		// loop start (head: IL_0027)
			IL_0027: ldc.i4.0
			IL_0028: stloc.0
			IL_0029: ldc.i4.m1
			IL_002a: stloc.1
			IL_002b: ldc.i4 2147483647
			IL_0030: stloc.2
			IL_0031: ldc.i4.0
			IL_0032: stloc.3
			IL_0033: ldc.i4.0
			IL_0034: stloc.s 5
			IL_0036: ldc.i4.m1
			IL_0037: stloc.s 6
			IL_0039: ldc.i4.0
			IL_003a: stloc.s 8
			IL_003c: ldc.i4.0
			IL_003d: stloc.s 9
			IL_003f: ldloc.s 11
			IL_0041: stloc.s 12
			IL_0043: ldarg.2
			IL_0044: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<char>(valuetype System.ReadOnlySpan`1<!!0>)
			IL_0049: stloc.s 19
			IL_004b: ldloc.s 19
			IL_004d: conv.u
			IL_004e: stloc.s 18
			IL_0050: br IL_01fe
			// loop start (head: IL_01fe)
				IL_0055: ldloc.s 14
				IL_0057: ldc.i4.s 69
				IL_0059: bgt.un.s IL_00a9

				IL_005b: ldloc.s 14
				IL_005d: ldc.i4.s 34
				IL_005f: sub
				IL_0060: switch (IL_013c, IL_00c9, IL_01fe, IL_0126, IL_01fe, IL_013c)

				IL_007d: ldloc.s 14
				IL_007f: ldc.i4.s 44
				IL_0081: sub
				IL_0082: switch (IL_00f5, IL_01fe, IL_00e7, IL_01fe, IL_00d2)

				IL_009b: ldloc.s 14
				IL_009d: ldc.i4.s 69
				IL_009f: beq IL_0190

				IL_00a4: br IL_01fe

				IL_00a9: ldloc.s 14
				IL_00ab: ldc.i4.s 92
				IL_00ad: beq IL_016f

				IL_00b2: ldloc.s 14
				IL_00b4: ldc.i4.s 101
				IL_00b6: beq IL_0190

				IL_00bb: ldloc.s 14
				IL_00bd: ldc.i4 8240
				IL_00c2: beq.s IL_0131

				IL_00c4: br IL_01fe

				IL_00c9: ldloc.0
				IL_00ca: ldc.i4.1
				IL_00cb: add
				IL_00cc: stloc.0
				IL_00cd: br IL_01fe

				IL_00d2: ldloc.2
				IL_00d3: ldc.i4 2147483647
				IL_00d8: bne.un.s IL_00dc

				IL_00da: ldloc.0
				IL_00db: stloc.2

				IL_00dc: ldloc.0
				IL_00dd: ldc.i4.1
				IL_00de: add
				IL_00df: stloc.0
				IL_00e0: ldloc.0
				IL_00e1: stloc.3
				IL_00e2: br IL_01fe

				IL_00e7: ldloc.1
				IL_00e8: ldc.i4.0
				IL_00e9: bge IL_01fe

				IL_00ee: ldloc.0
				IL_00ef: stloc.1
				IL_00f0: br IL_01fe

				IL_00f5: ldloc.0
				IL_00f6: ldc.i4.0
				IL_00f7: ble IL_01fe

				IL_00fc: ldloc.1
				IL_00fd: ldc.i4.0
				IL_00fe: bge IL_01fe

				IL_0103: ldloc.s 6
				IL_0105: ldc.i4.0
				IL_0106: blt.s IL_011b

				IL_0108: ldloc.s 6
				IL_010a: ldloc.0
				IL_010b: bne.un.s IL_0118

				IL_010d: ldloc.s 7
				IL_010f: ldc.i4.1
				IL_0110: add
				IL_0111: stloc.s 7
				IL_0113: br IL_01fe

				IL_0118: ldc.i4.1
				IL_0119: stloc.s 8

				IL_011b: ldloc.0
				IL_011c: stloc.s 6
				IL_011e: ldc.i4.1
				IL_011f: stloc.s 7
				IL_0121: br IL_01fe

				IL_0126: ldloc.s 9
				IL_0128: ldc.i4.2
				IL_0129: add
				IL_012a: stloc.s 9
				IL_012c: br IL_01fe

				IL_0131: ldloc.s 9
				IL_0133: ldc.i4.3
				IL_0134: add
				IL_0135: stloc.s 9
				IL_0137: br IL_01fe
				// loop start (head: IL_013c)
					IL_013c: ldloc.s 12
					IL_013e: ldarga.s format
					IL_0140: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
					IL_0145: bge IL_01fe

					IL_014a: ldloc.s 18
					IL_014c: ldloc.s 12
					IL_014e: conv.i
					IL_014f: ldc.i4.2
					IL_0150: mul
					IL_0151: add
					IL_0152: ldind.u2
					IL_0153: brfalse IL_01fe

					IL_0158: ldloc.s 18
					IL_015a: ldloc.s 12
					IL_015c: dup
					IL_015d: ldc.i4.1
					IL_015e: add
					IL_015f: stloc.s 12
					IL_0161: conv.i
					IL_0162: ldc.i4.2
					IL_0163: mul
					IL_0164: add
					IL_0165: ldind.u2
					IL_0166: ldloc.s 14
					IL_0168: bne.un.s IL_013c
				// end loop

				IL_016a: br IL_01fe

				IL_016f: ldloc.s 12
				IL_0171: ldarga.s format
				IL_0173: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
				IL_0178: bge IL_01fe

				IL_017d: ldloc.s 18
				IL_017f: ldloc.s 12
				IL_0181: conv.i
				IL_0182: ldc.i4.2
				IL_0183: mul
				IL_0184: add
				IL_0185: ldind.u2
				IL_0186: brfalse.s IL_01fe

				IL_0188: ldloc.s 12
				IL_018a: ldc.i4.1
				IL_018b: add
				IL_018c: stloc.s 12
				IL_018e: br.s IL_01fe

				IL_0190: ldloc.s 12
				IL_0192: ldarga.s format
				IL_0194: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
				IL_0199: bge.s IL_01a8

				IL_019b: ldloc.s 18
				IL_019d: ldloc.s 12
				IL_019f: conv.i
				IL_01a0: ldc.i4.2
				IL_01a1: mul
				IL_01a2: add
				IL_01a3: ldind.u2
				IL_01a4: ldc.i4.s 48
				IL_01a6: beq.s IL_01de

				IL_01a8: ldloc.s 12
				IL_01aa: ldc.i4.1
				IL_01ab: add
				IL_01ac: ldarga.s format
				IL_01ae: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
				IL_01b3: bge.s IL_01fe

				IL_01b5: ldloc.s 18
				IL_01b7: ldloc.s 12
				IL_01b9: conv.i
				IL_01ba: ldc.i4.2
				IL_01bb: mul
				IL_01bc: add
				IL_01bd: ldind.u2
				IL_01be: ldc.i4.s 43
				IL_01c0: beq.s IL_01cf

				IL_01c2: ldloc.s 18
				IL_01c4: ldloc.s 12
				IL_01c6: conv.i
				IL_01c7: ldc.i4.2
				IL_01c8: mul
				IL_01c9: add
				IL_01ca: ldind.u2
				IL_01cb: ldc.i4.s 45
				IL_01cd: bne.un.s IL_01fe

				IL_01cf: ldloc.s 18
				IL_01d1: ldloc.s 12
				IL_01d3: ldc.i4.1
				IL_01d4: add
				IL_01d5: conv.i
				IL_01d6: ldc.i4.2
				IL_01d7: mul
				IL_01d8: add
				IL_01d9: ldind.u2
				IL_01da: ldc.i4.s 48
				IL_01dc: bne.un.s IL_01fe
				// loop start (head: IL_01de)
					IL_01de: ldloc.s 12
					IL_01e0: ldc.i4.1
					IL_01e1: add
					IL_01e2: dup
					IL_01e3: stloc.s 12
					IL_01e5: ldarga.s format
					IL_01e7: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
					IL_01ec: bge.s IL_01fb

					IL_01ee: ldloc.s 18
					IL_01f0: ldloc.s 12
					IL_01f2: conv.i
					IL_01f3: ldc.i4.2
					IL_01f4: mul
					IL_01f5: add
					IL_01f6: ldind.u2
					IL_01f7: ldc.i4.s 48
					IL_01f9: beq.s IL_01de
				// end loop

				IL_01fb: ldc.i4.1
				IL_01fc: stloc.s 5

				IL_01fe: ldloc.s 12
				IL_0200: ldarga.s format
				IL_0202: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
				IL_0207: bge.s IL_0225

				IL_0209: ldloc.s 18
				IL_020b: ldloc.s 12
				IL_020d: dup
				IL_020e: ldc.i4.1
				IL_020f: add
				IL_0210: stloc.s 12
				IL_0212: conv.i
				IL_0213: ldc.i4.2
				IL_0214: mul
				IL_0215: add
				IL_0216: ldind.u2
				IL_0217: dup
				IL_0218: stloc.s 14
				IL_021a: brfalse.s IL_0225

				IL_021c: ldloc.s 14
				IL_021e: ldc.i4.s 59
				IL_0220: bne.un IL_0055
			// end loop

			IL_0225: ldc.i4.0
			IL_0226: conv.u
			IL_0227: stloc.s 19
			IL_0229: ldloc.1
			IL_022a: ldc.i4.0
			IL_022b: bge.s IL_022f

			IL_022d: ldloc.0
			IL_022e: stloc.1

			IL_022f: ldloc.s 6
			IL_0231: ldc.i4.0
			IL_0232: blt.s IL_0247

			IL_0234: ldloc.s 6
			IL_0236: ldloc.1
			IL_0237: bne.un.s IL_0244

			IL_0239: ldloc.s 9
			IL_023b: ldloc.s 7
			IL_023d: ldc.i4.3
			IL_023e: mul
			IL_023f: sub
			IL_0240: stloc.s 9
			IL_0242: br.s IL_0247

			IL_0244: ldc.i4.1
			IL_0245: stloc.s 8

			IL_0247: ldloc.s 13
			IL_0249: ldind.u1
			IL_024a: brfalse.s IL_0291

			IL_024c: ldarg.1
			IL_024d: ldflda int32 System.Number/NumberBuffer::Scale
			IL_0252: dup
			IL_0253: ldind.i4
			IL_0254: ldloc.s 9
			IL_0256: add
			IL_0257: stind.i4
			IL_0258: ldloc.s 5
			IL_025a: brtrue.s IL_0268

			IL_025c: ldarg.1
			IL_025d: ldfld int32 System.Number/NumberBuffer::Scale
			IL_0262: ldloc.0
			IL_0263: add
			IL_0264: ldloc.1
			IL_0265: sub
			IL_0266: br.s IL_0269

			IL_0268: ldloc.0

			IL_0269: stloc.s 20
			IL_026b: ldarg.1
			IL_026c: ldloc.s 20
			IL_026e: ldc.i4.0
			IL_026f: call void System.Number::RoundNumber(valuetype System.Number/NumberBuffer&, int32, bool)
			IL_0274: ldloc.s 13
			IL_0276: ldind.u1
			IL_0277: brtrue.s IL_02a8

			IL_0279: ldarg.2
			IL_027a: ldc.i4.2
			IL_027b: call int32 System.Number::FindSection(valuetype System.ReadOnlySpan`1<char>, int32)
			IL_0280: stloc.s 12
			IL_0282: ldloc.s 12
			IL_0284: ldloc.s 11
			IL_0286: beq.s IL_02a8

			IL_0288: ldloc.s 12
			IL_028a: stloc.s 11
			IL_028c: br IL_0027
		// end loop

		IL_0291: ldarg.1
		IL_0292: ldfld valuetype System.Number/NumberBufferKind System.Number/NumberBuffer::Kind
		IL_0297: ldc.i4.3
		IL_0298: beq.s IL_02a1

		IL_029a: ldarg.1
		IL_029b: ldc.i4.0
		IL_029c: stfld bool System.Number/NumberBuffer::IsNegative

		IL_02a1: ldarg.1
		IL_02a2: ldc.i4.0
		IL_02a3: stfld int32 System.Number/NumberBuffer::Scale

		IL_02a8: ldloc.2
		IL_02a9: ldloc.1
		IL_02aa: blt.s IL_02af

		IL_02ac: ldc.i4.0
		IL_02ad: br.s IL_02b2

		IL_02af: ldloc.1
		IL_02b0: ldloc.2
		IL_02b1: sub

		IL_02b2: stloc.2
		IL_02b3: ldloc.3
		IL_02b4: ldloc.1
		IL_02b5: bgt.s IL_02ba

		IL_02b7: ldc.i4.0
		IL_02b8: br.s IL_02bd

		IL_02ba: ldloc.1
		IL_02bb: ldloc.3
		IL_02bc: sub

		IL_02bd: stloc.3
		IL_02be: ldloc.s 5
		IL_02c0: brfalse.s IL_02ca

		IL_02c2: ldloc.1
		IL_02c3: stloc.s 4
		IL_02c5: ldc.i4.0
		IL_02c6: stloc.s 10
		IL_02c8: br.s IL_02e8

		IL_02ca: ldarg.1
		IL_02cb: ldfld int32 System.Number/NumberBuffer::Scale
		IL_02d0: ldloc.1
		IL_02d1: bgt.s IL_02d6

		IL_02d3: ldloc.1
		IL_02d4: br.s IL_02dc

		IL_02d6: ldarg.1
		IL_02d7: ldfld int32 System.Number/NumberBuffer::Scale

		IL_02dc: stloc.s 4
		IL_02de: ldarg.1
		IL_02df: ldfld int32 System.Number/NumberBuffer::Scale
		IL_02e4: ldloc.1
		IL_02e5: sub
		IL_02e6: stloc.s 10

		IL_02e8: ldloc.s 11
		IL_02ea: stloc.s 12
		IL_02ec: ldc.i4.s 16
		IL_02ee: conv.u
		IL_02ef: localloc
		IL_02f1: ldc.i4.4
		IL_02f2: newobj instance void valuetype System.Span`1<int32>::.ctor(void*, int32)
		IL_02f7: stloc.s 21
		IL_02f9: ldloc.s 21
		IL_02fb: stloc.s 15
		IL_02fd: ldc.i4.m1
		IL_02fe: stloc.s 16
		IL_0300: ldloc.s 8
		IL_0302: brfalse IL_03c2

		IL_0307: ldarg.3
		IL_0308: callvirt instance string System.Globalization.NumberFormatInfo::get_NumberGroupSeparator()
		IL_030d: callvirt instance int32 System.String::get_Length()
		IL_0312: ldc.i4.0
		IL_0313: ble IL_03c2

		IL_0318: ldarg.3
		IL_0319: ldfld int32[] System.Globalization.NumberFormatInfo::_numberGroupSizes
		IL_031e: stloc.s 22
		IL_0320: ldc.i4.0
		IL_0321: stloc.s 23
		IL_0323: ldc.i4.0
		IL_0324: stloc.s 24
		IL_0326: ldloc.s 22
		IL_0328: ldlen
		IL_0329: conv.i4
		IL_032a: stloc.s 25
		IL_032c: ldloc.s 25
		IL_032e: brfalse.s IL_0337

		IL_0330: ldloc.s 22
		IL_0332: ldloc.s 23
		IL_0334: ldelem.i4
		IL_0335: stloc.s 24

		IL_0337: ldloc.s 24
		IL_0339: stloc.s 26
		IL_033b: ldloc.s 4
		IL_033d: ldloc.s 10
		IL_033f: ldc.i4.0
		IL_0340: blt.s IL_0345

		IL_0342: ldc.i4.0
		IL_0343: br.s IL_0347

		IL_0345: ldloc.s 10

		IL_0347: add
		IL_0348: stloc.s 27
		IL_034a: ldloc.2
		IL_034b: ldloc.s 27
		IL_034d: bgt.s IL_0353

		IL_034f: ldloc.s 27
		IL_0351: br.s IL_0354

		IL_0353: ldloc.2

		IL_0354: stloc.s 28
		IL_0356: br.s IL_03bc
		// loop start (head: IL_03bc)
			IL_0358: ldloc.s 26
			IL_035a: brfalse.s IL_03c2

			IL_035c: ldloc.s 16
			IL_035e: ldc.i4.1
			IL_035f: add
			IL_0360: stloc.s 16
			IL_0362: ldloc.s 16
			IL_0364: ldloca.s 15
			IL_0366: call instance int32 valuetype System.Span`1<int32>::get_Length()
			IL_036b: blt.s IL_0394

			IL_036d: ldloca.s 15
			IL_036f: call instance int32 valuetype System.Span`1<int32>::get_Length()
			IL_0374: ldc.i4.2
			IL_0375: mul
			IL_0376: newarr System.Int32
			IL_037b: stloc.s 29
			IL_037d: ldloca.s 15
			IL_037f: ldloc.s 29
			IL_0381: call valuetype System.Span`1<!0> valuetype System.Span`1<int32>::op_Implicit(!0[])
			IL_0386: call instance void valuetype System.Span`1<int32>::CopyTo(valuetype System.Span`1<!0>)
			IL_038b: ldloc.s 29
			IL_038d: call valuetype System.Span`1<!0> valuetype System.Span`1<int32>::op_Implicit(!0[])
			IL_0392: stloc.s 15

			IL_0394: ldloca.s 15
			IL_0396: ldloc.s 16
			IL_0398: call instance !0& valuetype System.Span`1<int32>::get_Item(int32)
			IL_039d: ldloc.s 24
			IL_039f: stind.i4
			IL_03a0: ldloc.s 23
			IL_03a2: ldloc.s 25
			IL_03a4: ldc.i4.1
			IL_03a5: sub
			IL_03a6: bge.s IL_03b5

			IL_03a8: ldloc.s 23
			IL_03aa: ldc.i4.1
			IL_03ab: add
			IL_03ac: stloc.s 23
			IL_03ae: ldloc.s 22
			IL_03b0: ldloc.s 23
			IL_03b2: ldelem.i4
			IL_03b3: stloc.s 26

			IL_03b5: ldloc.s 24
			IL_03b7: ldloc.s 26
			IL_03b9: add
			IL_03ba: stloc.s 24

			IL_03bc: ldloc.s 28
			IL_03be: ldloc.s 24
			IL_03c0: bgt.s IL_0358
		// end loop

		IL_03c2: ldarg.1
		IL_03c3: ldfld bool System.Number/NumberBuffer::IsNegative
		IL_03c8: brfalse.s IL_03e2

		IL_03ca: ldloc.s 11
		IL_03cc: brtrue.s IL_03e2

		IL_03ce: ldarg.1
		IL_03cf: ldfld int32 System.Number/NumberBuffer::Scale
		IL_03d4: brfalse.s IL_03e2

		IL_03d6: ldarg.0
		IL_03d7: ldarg.3
		IL_03d8: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_03dd: call instance void System.Text.ValueStringBuilder::Append(string)

		IL_03e2: ldc.i4.0
		IL_03e3: stloc.s 17
		IL_03e5: ldarg.2
		IL_03e6: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<char>(valuetype System.ReadOnlySpan`1<!!0>)
		IL_03eb: stloc.s 31
		IL_03ed: ldloc.s 31
		IL_03ef: conv.u
		IL_03f0: stloc.s 30
		IL_03f2: ldloc.s 13
		IL_03f4: stloc.s 32
		IL_03f6: br IL_07a4
		// loop start (head: IL_07a4)
			IL_03fb: ldloc.s 10
			IL_03fd: ldc.i4.0
			IL_03fe: ble.s IL_046c

			IL_0400: ldloc.s 14
			IL_0402: ldc.i4.s 35
			IL_0404: beq.s IL_0467

			IL_0406: ldloc.s 14
			IL_0408: ldc.i4.s 46
			IL_040a: beq.s IL_0467

			IL_040c: ldloc.s 14
			IL_040e: ldc.i4.s 48
			IL_0410: beq.s IL_0467

			IL_0412: br.s IL_046c
			// loop start (head: IL_0467)
				IL_0414: ldarg.0
				IL_0415: ldloc.s 32
				IL_0417: ldind.u1
				IL_0418: brtrue.s IL_041e

				IL_041a: ldc.i4.s 48
				IL_041c: br.s IL_0426

				IL_041e: ldloc.s 32
				IL_0420: dup
				IL_0421: ldc.i4.1
				IL_0422: add
				IL_0423: stloc.s 32
				IL_0425: ldind.u1

				IL_0426: call instance void System.Text.ValueStringBuilder::Append(char)
				IL_042b: ldloc.s 8
				IL_042d: brfalse.s IL_045b

				IL_042f: ldloc.s 4
				IL_0431: ldc.i4.1
				IL_0432: ble.s IL_045b

				IL_0434: ldloc.s 16
				IL_0436: ldc.i4.0
				IL_0437: blt.s IL_045b

				IL_0439: ldloc.s 4
				IL_043b: ldloca.s 15
				IL_043d: ldloc.s 16
				IL_043f: call instance !0& valuetype System.Span`1<int32>::get_Item(int32)
				IL_0444: ldind.i4
				IL_0445: ldc.i4.1
				IL_0446: add
				IL_0447: bne.un.s IL_045b

				IL_0449: ldarg.0
				IL_044a: ldarg.3
				IL_044b: callvirt instance string System.Globalization.NumberFormatInfo::get_NumberGroupSeparator()
				IL_0450: call instance void System.Text.ValueStringBuilder::Append(string)
				IL_0455: ldloc.s 16
				IL_0457: ldc.i4.1
				IL_0458: sub
				IL_0459: stloc.s 16

				IL_045b: ldloc.s 4
				IL_045d: ldc.i4.1
				IL_045e: sub
				IL_045f: stloc.s 4
				IL_0461: ldloc.s 10
				IL_0463: ldc.i4.1
				IL_0464: sub
				IL_0465: stloc.s 10

				IL_0467: ldloc.s 10
				IL_0469: ldc.i4.0
				IL_046a: bgt.s IL_0414
			// end loop

			IL_046c: ldloc.s 14
			IL_046e: ldc.i4.s 69
			IL_0470: bgt.un.s IL_04c0

			IL_0472: ldloc.s 14
			IL_0474: ldc.i4.s 34
			IL_0476: sub
			IL_0477: switch (IL_05c8, IL_04e3, IL_079c, IL_05a3, IL_079c, IL_05c8)

			IL_0494: ldloc.s 14
			IL_0496: ldc.i4.s 44
			IL_0498: sub
			IL_0499: switch (IL_07a4, IL_079c, IL_055e, IL_079c, IL_04e3)

			IL_04b2: ldloc.s 14
			IL_04b4: ldc.i4.s 69
			IL_04b6: beq IL_0647

			IL_04bb: br IL_079c

			IL_04c0: ldloc.s 14
			IL_04c2: ldc.i4.s 92
			IL_04c4: beq IL_0612

			IL_04c9: ldloc.s 14
			IL_04cb: ldc.i4.s 101
			IL_04cd: beq IL_0647

			IL_04d2: ldloc.s 14
			IL_04d4: ldc.i4 8240
			IL_04d9: beq IL_0592

			IL_04de: br IL_079c

			IL_04e3: ldloc.s 10
			IL_04e5: ldc.i4.0
			IL_04e6: bge.s IL_04fc

			IL_04e8: ldloc.s 10
			IL_04ea: ldc.i4.1
			IL_04eb: add
			IL_04ec: stloc.s 10
			IL_04ee: ldloc.s 4
			IL_04f0: ldloc.2
			IL_04f1: ble.s IL_04f6

			IL_04f3: ldc.i4.0
			IL_04f4: br.s IL_04f8

			IL_04f6: ldc.i4.s 48

			IL_04f8: stloc.s 14
			IL_04fa: br.s IL_0517

			IL_04fc: ldloc.s 32
			IL_04fe: ldind.u1
			IL_04ff: brtrue.s IL_050d

			IL_0501: ldloc.s 4
			IL_0503: ldloc.3
			IL_0504: bgt.s IL_0509

			IL_0506: ldc.i4.0
			IL_0507: br.s IL_0515

			IL_0509: ldc.i4.s 48
			IL_050b: br.s IL_0515

			IL_050d: ldloc.s 32
			IL_050f: dup
			IL_0510: ldc.i4.1
			IL_0511: add
			IL_0512: stloc.s 32
			IL_0514: ldind.u1

			IL_0515: stloc.s 14

			IL_0517: ldloc.s 14
			IL_0519: brfalse.s IL_0553

			IL_051b: ldarg.0
			IL_051c: ldloc.s 14
			IL_051e: call instance void System.Text.ValueStringBuilder::Append(char)
			IL_0523: ldloc.s 8
			IL_0525: brfalse.s IL_0553

			IL_0527: ldloc.s 4
			IL_0529: ldc.i4.1
			IL_052a: ble.s IL_0553

			IL_052c: ldloc.s 16
			IL_052e: ldc.i4.0
			IL_052f: blt.s IL_0553

			IL_0531: ldloc.s 4
			IL_0533: ldloca.s 15
			IL_0535: ldloc.s 16
			IL_0537: call instance !0& valuetype System.Span`1<int32>::get_Item(int32)
			IL_053c: ldind.i4
			IL_053d: ldc.i4.1
			IL_053e: add
			IL_053f: bne.un.s IL_0553

			IL_0541: ldarg.0
			IL_0542: ldarg.3
			IL_0543: callvirt instance string System.Globalization.NumberFormatInfo::get_NumberGroupSeparator()
			IL_0548: call instance void System.Text.ValueStringBuilder::Append(string)
			IL_054d: ldloc.s 16
			IL_054f: ldc.i4.1
			IL_0550: sub
			IL_0551: stloc.s 16

			IL_0553: ldloc.s 4
			IL_0555: ldc.i4.1
			IL_0556: sub
			IL_0557: stloc.s 4
			IL_0559: br IL_07a4

			IL_055e: ldloc.s 4
			IL_0560: ldc.i4.0
			IL_0561: cgt.un
			IL_0563: ldloc.s 17
			IL_0565: or
			IL_0566: brtrue IL_07a4

			IL_056b: ldloc.3
			IL_056c: ldc.i4.0
			IL_056d: blt.s IL_057e

			IL_056f: ldloc.1
			IL_0570: ldloc.0
			IL_0571: bge IL_07a4

			IL_0576: ldloc.s 32
			IL_0578: ldind.u1
			IL_0579: brfalse IL_07a4

			IL_057e: ldarg.0
			IL_057f: ldarg.3
			IL_0580: callvirt instance string System.Globalization.NumberFormatInfo::get_NumberDecimalSeparator()
			IL_0585: call instance void System.Text.ValueStringBuilder::Append(string)
			IL_058a: ldc.i4.1
			IL_058b: stloc.s 17
			IL_058d: br IL_07a4

			IL_0592: ldarg.0
			IL_0593: ldarg.3
			IL_0594: callvirt instance string System.Globalization.NumberFormatInfo::get_PerMilleSymbol()
			IL_0599: call instance void System.Text.ValueStringBuilder::Append(string)
			IL_059e: br IL_07a4

			IL_05a3: ldarg.0
			IL_05a4: ldarg.3
			IL_05a5: callvirt instance string System.Globalization.NumberFormatInfo::get_PercentSymbol()
			IL_05aa: call instance void System.Text.ValueStringBuilder::Append(string)
			IL_05af: br IL_07a4
			// loop start (head: IL_05c8)
				IL_05b4: ldarg.0
				IL_05b5: ldloc.s 30
				IL_05b7: ldloc.s 12
				IL_05b9: dup
				IL_05ba: ldc.i4.1
				IL_05bb: add
				IL_05bc: stloc.s 12
				IL_05be: conv.i
				IL_05bf: ldc.i4.2
				IL_05c0: mul
				IL_05c1: add
				IL_05c2: ldind.u2
				IL_05c3: call instance void System.Text.ValueStringBuilder::Append(char)

				IL_05c8: ldloc.s 12
				IL_05ca: ldarga.s format
				IL_05cc: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
				IL_05d1: bge.s IL_05eb

				IL_05d3: ldloc.s 30
				IL_05d5: ldloc.s 12
				IL_05d7: conv.i
				IL_05d8: ldc.i4.2
				IL_05d9: mul
				IL_05da: add
				IL_05db: ldind.u2
				IL_05dc: brfalse.s IL_05eb

				IL_05de: ldloc.s 30
				IL_05e0: ldloc.s 12
				IL_05e2: conv.i
				IL_05e3: ldc.i4.2
				IL_05e4: mul
				IL_05e5: add
				IL_05e6: ldind.u2
				IL_05e7: ldloc.s 14
				IL_05e9: bne.un.s IL_05b4
			// end loop

			IL_05eb: ldloc.s 12
			IL_05ed: ldarga.s format
			IL_05ef: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_05f4: bge IL_07a4

			IL_05f9: ldloc.s 30
			IL_05fb: ldloc.s 12
			IL_05fd: conv.i
			IL_05fe: ldc.i4.2
			IL_05ff: mul
			IL_0600: add
			IL_0601: ldind.u2
			IL_0602: brfalse IL_07a4

			IL_0607: ldloc.s 12
			IL_0609: ldc.i4.1
			IL_060a: add
			IL_060b: stloc.s 12
			IL_060d: br IL_07a4

			IL_0612: ldloc.s 12
			IL_0614: ldarga.s format
			IL_0616: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_061b: bge IL_07a4

			IL_0620: ldloc.s 30
			IL_0622: ldloc.s 12
			IL_0624: conv.i
			IL_0625: ldc.i4.2
			IL_0626: mul
			IL_0627: add
			IL_0628: ldind.u2
			IL_0629: brfalse IL_07a4

			IL_062e: ldarg.0
			IL_062f: ldloc.s 30
			IL_0631: ldloc.s 12
			IL_0633: dup
			IL_0634: ldc.i4.1
			IL_0635: add
			IL_0636: stloc.s 12
			IL_0638: conv.i
			IL_0639: ldc.i4.2
			IL_063a: mul
			IL_063b: add
			IL_063c: ldind.u2
			IL_063d: call instance void System.Text.ValueStringBuilder::Append(char)
			IL_0642: br IL_07a4

			IL_0647: ldc.i4.0
			IL_0648: stloc.s 33
			IL_064a: ldc.i4.0
			IL_064b: stloc.s 34
			IL_064d: ldloc.s 5
			IL_064f: brfalse IL_072b

			IL_0654: ldloc.s 12
			IL_0656: ldarga.s format
			IL_0658: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_065d: bge.s IL_0674

			IL_065f: ldloc.s 30
			IL_0661: ldloc.s 12
			IL_0663: conv.i
			IL_0664: ldc.i4.2
			IL_0665: mul
			IL_0666: add
			IL_0667: ldind.u2
			IL_0668: ldc.i4.s 48
			IL_066a: bne.un.s IL_0674

			IL_066c: ldloc.s 34
			IL_066e: ldc.i4.1
			IL_066f: add
			IL_0670: stloc.s 34
			IL_0672: br.s IL_06de

			IL_0674: ldloc.s 12
			IL_0676: ldc.i4.1
			IL_0677: add
			IL_0678: ldarga.s format
			IL_067a: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_067f: bge.s IL_06a2

			IL_0681: ldloc.s 30
			IL_0683: ldloc.s 12
			IL_0685: conv.i
			IL_0686: ldc.i4.2
			IL_0687: mul
			IL_0688: add
			IL_0689: ldind.u2
			IL_068a: ldc.i4.s 43
			IL_068c: bne.un.s IL_06a2

			IL_068e: ldloc.s 30
			IL_0690: ldloc.s 12
			IL_0692: ldc.i4.1
			IL_0693: add
			IL_0694: conv.i
			IL_0695: ldc.i4.2
			IL_0696: mul
			IL_0697: add
			IL_0698: ldind.u2
			IL_0699: ldc.i4.s 48
			IL_069b: bne.un.s IL_06a2

			IL_069d: ldc.i4.1
			IL_069e: stloc.s 33
			IL_06a0: br.s IL_06de

			IL_06a2: ldloc.s 12
			IL_06a4: ldc.i4.1
			IL_06a5: add
			IL_06a6: ldarga.s format
			IL_06a8: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_06ad: bge.s IL_06cb

			IL_06af: ldloc.s 30
			IL_06b1: ldloc.s 12
			IL_06b3: conv.i
			IL_06b4: ldc.i4.2
			IL_06b5: mul
			IL_06b6: add
			IL_06b7: ldind.u2
			IL_06b8: ldc.i4.s 45
			IL_06ba: bne.un.s IL_06cb

			IL_06bc: ldloc.s 30
			IL_06be: ldloc.s 12
			IL_06c0: ldc.i4.1
			IL_06c1: add
			IL_06c2: conv.i
			IL_06c3: ldc.i4.2
			IL_06c4: mul
			IL_06c5: add
			IL_06c6: ldind.u2
			IL_06c7: ldc.i4.s 48
			IL_06c9: beq.s IL_06de

			IL_06cb: ldarg.0
			IL_06cc: ldloc.s 14
			IL_06ce: call instance void System.Text.ValueStringBuilder::Append(char)
			IL_06d3: br IL_07a4
			// loop start (head: IL_06de)
				IL_06d8: ldloc.s 34
				IL_06da: ldc.i4.1
				IL_06db: add
				IL_06dc: stloc.s 34

				IL_06de: ldloc.s 12
				IL_06e0: ldc.i4.1
				IL_06e1: add
				IL_06e2: dup
				IL_06e3: stloc.s 12
				IL_06e5: ldarga.s format
				IL_06e7: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
				IL_06ec: bge.s IL_06fb

				IL_06ee: ldloc.s 30
				IL_06f0: ldloc.s 12
				IL_06f2: conv.i
				IL_06f3: ldc.i4.2
				IL_06f4: mul
				IL_06f5: add
				IL_06f6: ldind.u2
				IL_06f7: ldc.i4.s 48
				IL_06f9: beq.s IL_06d8
			// end loop

			IL_06fb: ldloc.s 34
			IL_06fd: ldc.i4.s 10
			IL_06ff: ble.s IL_0705

			IL_0701: ldc.i4.s 10
			IL_0703: stloc.s 34

			IL_0705: ldloc.s 13
			IL_0707: ldind.u1
			IL_0708: brfalse.s IL_0714

			IL_070a: ldarg.1
			IL_070b: ldfld int32 System.Number/NumberBuffer::Scale
			IL_0710: ldloc.1
			IL_0711: sub
			IL_0712: br.s IL_0715

			IL_0714: ldc.i4.0

			IL_0715: stloc.s 35
			IL_0717: ldarg.0
			IL_0718: ldarg.3
			IL_0719: ldloc.s 35
			IL_071b: ldloc.s 14
			IL_071d: ldloc.s 34
			IL_071f: ldloc.s 33
			IL_0721: call void System.Number::FormatExponent(valuetype System.Text.ValueStringBuilder&, class System.Globalization.NumberFormatInfo, int32, char, int32, bool)
			IL_0726: ldc.i4.0
			IL_0727: stloc.s 5
			IL_0729: br.s IL_07a4

			IL_072b: ldarg.0
			IL_072c: ldloc.s 14
			IL_072e: call instance void System.Text.ValueStringBuilder::Append(char)
			IL_0733: ldloc.s 12
			IL_0735: ldarga.s format
			IL_0737: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_073c: bge.s IL_07a4

			IL_073e: ldloc.s 30
			IL_0740: ldloc.s 12
			IL_0742: conv.i
			IL_0743: ldc.i4.2
			IL_0744: mul
			IL_0745: add
			IL_0746: ldind.u2
			IL_0747: ldc.i4.s 43
			IL_0749: beq.s IL_0758

			IL_074b: ldloc.s 30
			IL_074d: ldloc.s 12
			IL_074f: conv.i
			IL_0750: ldc.i4.2
			IL_0751: mul
			IL_0752: add
			IL_0753: ldind.u2
			IL_0754: ldc.i4.s 45
			IL_0756: bne.un.s IL_0782

			IL_0758: ldarg.0
			IL_0759: ldloc.s 30
			IL_075b: ldloc.s 12
			IL_075d: dup
			IL_075e: ldc.i4.1
			IL_075f: add
			IL_0760: stloc.s 12
			IL_0762: conv.i
			IL_0763: ldc.i4.2
			IL_0764: mul
			IL_0765: add
			IL_0766: ldind.u2
			IL_0767: call instance void System.Text.ValueStringBuilder::Append(char)
			IL_076c: br.s IL_0782
			// loop start (head: IL_0782)
				IL_076e: ldarg.0
				IL_076f: ldloc.s 30
				IL_0771: ldloc.s 12
				IL_0773: dup
				IL_0774: ldc.i4.1
				IL_0775: add
				IL_0776: stloc.s 12
				IL_0778: conv.i
				IL_0779: ldc.i4.2
				IL_077a: mul
				IL_077b: add
				IL_077c: ldind.u2
				IL_077d: call instance void System.Text.ValueStringBuilder::Append(char)

				IL_0782: ldloc.s 12
				IL_0784: ldarga.s format
				IL_0786: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
				IL_078b: bge.s IL_07a4

				IL_078d: ldloc.s 30
				IL_078f: ldloc.s 12
				IL_0791: conv.i
				IL_0792: ldc.i4.2
				IL_0793: mul
				IL_0794: add
				IL_0795: ldind.u2
				IL_0796: ldc.i4.s 48
				IL_0798: beq.s IL_076e
			// end loop

			IL_079a: br.s IL_07a4

			IL_079c: ldarg.0
			IL_079d: ldloc.s 14
			IL_079f: call instance void System.Text.ValueStringBuilder::Append(char)

			IL_07a4: ldloc.s 12
			IL_07a6: ldarga.s format
			IL_07a8: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_07ad: bge.s IL_07cb

			IL_07af: ldloc.s 30
			IL_07b1: ldloc.s 12
			IL_07b3: dup
			IL_07b4: ldc.i4.1
			IL_07b5: add
			IL_07b6: stloc.s 12
			IL_07b8: conv.i
			IL_07b9: ldc.i4.2
			IL_07ba: mul
			IL_07bb: add
			IL_07bc: ldind.u2
			IL_07bd: dup
			IL_07be: stloc.s 14
			IL_07c0: brfalse.s IL_07cb

			IL_07c2: ldloc.s 14
			IL_07c4: ldc.i4.s 59
			IL_07c6: bne.un IL_03fb
		// end loop

		IL_07cb: ldc.i4.0
		IL_07cc: conv.u
		IL_07cd: stloc.s 31
		IL_07cf: ldarg.1
		IL_07d0: ldfld bool System.Number/NumberBuffer::IsNegative
		IL_07d5: brfalse.s IL_07f9

		IL_07d7: ldloc.s 11
		IL_07d9: brtrue.s IL_07f9

		IL_07db: ldarg.1
		IL_07dc: ldfld int32 System.Number/NumberBuffer::Scale
		IL_07e1: brtrue.s IL_07f9

		IL_07e3: ldarg.0
		IL_07e4: call instance int32 System.Text.ValueStringBuilder::get_Length()
		IL_07e9: ldc.i4.0
		IL_07ea: ble.s IL_07f9

		IL_07ec: ldarg.0
		IL_07ed: ldc.i4.0
		IL_07ee: ldarg.3
		IL_07ef: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_07f4: call instance void System.Text.ValueStringBuilder::Insert(int32, string)

		IL_07f9: ret
	} // end of method Number::NumberToStringFormat

	.method private hidebysig static 
		void FormatCurrency (
			valuetype System.Text.ValueStringBuilder& sb,
			valuetype System.Number/NumberBuffer& number,
			int32 nMaxDigits,
			class System.Globalization.NumberFormatInfo info
		) cil managed 
	{
		// Method begins at RVA 0x76380
		// Code size 143 (0x8f)
		.maxstack 6
		.locals (
			[0] string,
			[1] string,
			[2] int32,
			[3] char
		)

		IL_0000: ldarg.1
		IL_0001: ldfld bool System.Number/NumberBuffer::IsNegative
		IL_0006: brtrue.s IL_0016

		IL_0008: ldsfld string[] System.Number::s_posCurrencyFormats
		IL_000d: ldarg.3
		IL_000e: callvirt instance int32 System.Globalization.NumberFormatInfo::get_CurrencyPositivePattern()
		IL_0013: ldelem.ref
		IL_0014: br.s IL_0022

		IL_0016: ldsfld string[] System.Number::s_negCurrencyFormats
		IL_001b: ldarg.3
		IL_001c: callvirt instance int32 System.Globalization.NumberFormatInfo::get_CurrencyNegativePattern()
		IL_0021: ldelem.ref

		IL_0022: stloc.0
		IL_0023: ldloc.0
		IL_0024: stloc.1
		IL_0025: ldc.i4.0
		IL_0026: stloc.2
		IL_0027: br.s IL_0085
		// loop start (head: IL_0085)
			IL_0029: ldloc.1
			IL_002a: ldloc.2
			IL_002b: callvirt instance char System.String::get_Chars(int32)
			IL_0030: stloc.3
			IL_0031: ldloc.3
			IL_0032: ldc.i4.s 35
			IL_0034: beq.s IL_0042

			IL_0036: ldloc.3
			IL_0037: ldc.i4.s 36
			IL_0039: beq.s IL_006c

			IL_003b: ldloc.3
			IL_003c: ldc.i4.s 45
			IL_003e: beq.s IL_005e

			IL_0040: br.s IL_007a

			IL_0042: ldarg.0
			IL_0043: ldarg.1
			IL_0044: ldarg.2
			IL_0045: ldarg.3
			IL_0046: ldfld int32[] System.Globalization.NumberFormatInfo::_currencyGroupSizes
			IL_004b: ldarg.3
			IL_004c: callvirt instance string System.Globalization.NumberFormatInfo::get_CurrencyDecimalSeparator()
			IL_0051: ldarg.3
			IL_0052: callvirt instance string System.Globalization.NumberFormatInfo::get_CurrencyGroupSeparator()
			IL_0057: call void System.Number::FormatFixed(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, int32, int32[], string, string)
			IL_005c: br.s IL_0081

			IL_005e: ldarg.0
			IL_005f: ldarg.3
			IL_0060: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
			IL_0065: call instance void System.Text.ValueStringBuilder::Append(string)
			IL_006a: br.s IL_0081

			IL_006c: ldarg.0
			IL_006d: ldarg.3
			IL_006e: callvirt instance string System.Globalization.NumberFormatInfo::get_CurrencySymbol()
			IL_0073: call instance void System.Text.ValueStringBuilder::Append(string)
			IL_0078: br.s IL_0081

			IL_007a: ldarg.0
			IL_007b: ldloc.3
			IL_007c: call instance void System.Text.ValueStringBuilder::Append(char)

			IL_0081: ldloc.2
			IL_0082: ldc.i4.1
			IL_0083: add
			IL_0084: stloc.2

			IL_0085: ldloc.2
			IL_0086: ldloc.1
			IL_0087: callvirt instance int32 System.String::get_Length()
			IL_008c: blt.s IL_0029
		// end loop

		IL_008e: ret
	} // end of method Number::FormatCurrency

	.method private hidebysig static 
		void FormatFixed (
			valuetype System.Text.ValueStringBuilder& sb,
			valuetype System.Number/NumberBuffer& number,
			int32 nMaxDigits,
			int32[] groupDigits,
			string sDecimal,
			string sGroup
		) cil managed 
	{
		// Method begins at RVA 0x7641c
		// Code size 426 (0x1aa)
		.maxstack 4
		.locals (
			[0] int32,
			[1] uint8*,
			[2] int32,
			[3] int32,
			[4] int32,
			[5] int32,
			[6] int32,
			[7] int32,
			[8] int32,
			[9] char*,
			[10] char& pinned,
			[11] char*,
			[12] int32,
			[13] int32,
			[14] int32
		)

		IL_0000: ldarg.1
		IL_0001: ldfld int32 System.Number/NumberBuffer::Scale
		IL_0006: stloc.0
		IL_0007: ldarg.1
		IL_0008: call instance uint8* System.Number/NumberBuffer::GetDigitsPointer()
		IL_000d: stloc.1
		IL_000e: ldloc.0
		IL_000f: ldc.i4.0
		IL_0010: ble IL_014f

		IL_0015: ldarg.3
		IL_0016: brfalse IL_0131

		IL_001b: ldc.i4.0
		IL_001c: stloc.2
		IL_001d: ldloc.0
		IL_001e: stloc.3
		IL_001f: ldc.i4.0
		IL_0020: stloc.s 4
		IL_0022: ldarg.3
		IL_0023: ldlen
		IL_0024: brfalse.s IL_0074

		IL_0026: ldarg.3
		IL_0027: ldloc.2
		IL_0028: ldelem.i4
		IL_0029: stloc.s 8
		IL_002b: br.s IL_0063
		// loop start (head: IL_0063)
			IL_002d: ldarg.3
			IL_002e: ldloc.2
			IL_002f: ldelem.i4
			IL_0030: stloc.s 4
			IL_0032: ldloc.s 4
			IL_0034: brfalse.s IL_0068

			IL_0036: ldloc.3
			IL_0037: ldarg.s sGroup
			IL_0039: callvirt instance int32 System.String::get_Length()
			IL_003e: add
			IL_003f: stloc.3
			IL_0040: ldloc.2
			IL_0041: ldarg.3
			IL_0042: ldlen
			IL_0043: conv.i4
			IL_0044: ldc.i4.1
			IL_0045: sub
			IL_0046: bge.s IL_004c

			IL_0048: ldloc.2
			IL_0049: ldc.i4.1
			IL_004a: add
			IL_004b: stloc.2

			IL_004c: ldloc.s 8
			IL_004e: ldarg.3
			IL_004f: ldloc.2
			IL_0050: ldelem.i4
			IL_0051: add
			IL_0052: stloc.s 8
			IL_0054: ldloc.s 8
			IL_0056: ldc.i4.0
			IL_0057: blt.s IL_005d

			IL_0059: ldloc.3
			IL_005a: ldc.i4.0
			IL_005b: bge.s IL_0063

			IL_005d: newobj instance void System.ArgumentOutOfRangeException::.ctor()
			IL_0062: throw

			IL_0063: ldloc.0
			IL_0064: ldloc.s 8
			IL_0066: bgt.s IL_002d
		// end loop

		IL_0068: ldloc.s 8
		IL_006a: brfalse.s IL_0071

		IL_006c: ldarg.3
		IL_006d: ldc.i4.0
		IL_006e: ldelem.i4
		IL_006f: br.s IL_0072

		IL_0071: ldc.i4.0

		IL_0072: stloc.s 4

		IL_0074: ldc.i4.0
		IL_0075: stloc.2
		IL_0076: ldc.i4.0
		IL_0077: stloc.s 5
		IL_0079: ldarg.1
		IL_007a: ldfld int32 System.Number/NumberBuffer::DigitsCount
		IL_007f: stloc.s 6
		IL_0081: ldloc.0
		IL_0082: ldloc.s 6
		IL_0084: blt.s IL_008a

		IL_0086: ldloc.s 6
		IL_0088: br.s IL_008b

		IL_008a: ldloc.0

		IL_008b: stloc.s 7
		IL_008d: ldarg.0
		IL_008e: ldloc.3
		IL_008f: call instance valuetype System.Span`1<char> System.Text.ValueStringBuilder::AppendSpan(int32)
		IL_0094: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<char>(valuetype System.Span`1<!!0>)
		IL_0099: stloc.s 10
		IL_009b: ldloc.s 10
		IL_009d: conv.u
		IL_009e: stloc.s 9
		IL_00a0: ldloc.s 9
		IL_00a2: ldloc.3
		IL_00a3: conv.i
		IL_00a4: ldc.i4.2
		IL_00a5: mul
		IL_00a6: add
		IL_00a7: ldc.i4.2
		IL_00a8: sub
		IL_00a9: stloc.s 11
		IL_00ab: ldloc.0
		IL_00ac: ldc.i4.1
		IL_00ad: sub
		IL_00ae: stloc.s 12
		IL_00b0: br.s IL_0121
		// loop start (head: IL_0121)
			IL_00b2: ldloc.s 11
			IL_00b4: dup
			IL_00b5: ldc.i4.2
			IL_00b6: sub
			IL_00b7: stloc.s 11
			IL_00b9: ldloc.s 12
			IL_00bb: ldloc.s 7
			IL_00bd: blt.s IL_00c3

			IL_00bf: ldc.i4.s 48
			IL_00c1: br.s IL_00c8

			IL_00c3: ldloc.1
			IL_00c4: ldloc.s 12
			IL_00c6: add
			IL_00c7: ldind.u1

			IL_00c8: stind.i2
			IL_00c9: ldloc.s 4
			IL_00cb: ldc.i4.0
			IL_00cc: ble.s IL_011b

			IL_00ce: ldloc.s 5
			IL_00d0: ldc.i4.1
			IL_00d1: add
			IL_00d2: stloc.s 5
			IL_00d4: ldloc.s 5
			IL_00d6: ldloc.s 4
			IL_00d8: bne.un.s IL_011b

			IL_00da: ldloc.s 12
			IL_00dc: brfalse.s IL_011b

			IL_00de: ldarg.s sGroup
			IL_00e0: callvirt instance int32 System.String::get_Length()
			IL_00e5: ldc.i4.1
			IL_00e6: sub
			IL_00e7: stloc.s 13
			IL_00e9: br.s IL_0102
			// loop start (head: IL_0102)
				IL_00eb: ldloc.s 11
				IL_00ed: dup
				IL_00ee: ldc.i4.2
				IL_00ef: sub
				IL_00f0: stloc.s 11
				IL_00f2: ldarg.s sGroup
				IL_00f4: ldloc.s 13
				IL_00f6: callvirt instance char System.String::get_Chars(int32)
				IL_00fb: stind.i2
				IL_00fc: ldloc.s 13
				IL_00fe: ldc.i4.1
				IL_00ff: sub
				IL_0100: stloc.s 13

				IL_0102: ldloc.s 13
				IL_0104: ldc.i4.0
				IL_0105: bge.s IL_00eb
			// end loop

			IL_0107: ldloc.2
			IL_0108: ldarg.3
			IL_0109: ldlen
			IL_010a: conv.i4
			IL_010b: ldc.i4.1
			IL_010c: sub
			IL_010d: bge.s IL_0118

			IL_010f: ldloc.2
			IL_0110: ldc.i4.1
			IL_0111: add
			IL_0112: stloc.2
			IL_0113: ldarg.3
			IL_0114: ldloc.2
			IL_0115: ldelem.i4
			IL_0116: stloc.s 4

			IL_0118: ldc.i4.0
			IL_0119: stloc.s 5

			IL_011b: ldloc.s 12
			IL_011d: ldc.i4.1
			IL_011e: sub
			IL_011f: stloc.s 12

			IL_0121: ldloc.s 12
			IL_0123: ldc.i4.0
			IL_0124: bge.s IL_00b2
		// end loop

		IL_0126: ldloc.1
		IL_0127: ldloc.s 7
		IL_0129: add
		IL_012a: stloc.1
		IL_012b: ldc.i4.0
		IL_012c: conv.u
		IL_012d: stloc.s 10
		IL_012f: br.s IL_0157
		// loop start (head: IL_0131)
			IL_0131: ldarg.0
			IL_0132: ldloc.1
			IL_0133: ldind.u1
			IL_0134: brtrue.s IL_013a

			IL_0136: ldc.i4.s 48
			IL_0138: br.s IL_0140

			IL_013a: ldloc.1
			IL_013b: dup
			IL_013c: ldc.i4.1
			IL_013d: add
			IL_013e: stloc.1
			IL_013f: ldind.u1

			IL_0140: call instance void System.Text.ValueStringBuilder::Append(char)
			IL_0145: ldloc.0
			IL_0146: ldc.i4.1
			IL_0147: sub
			IL_0148: dup
			IL_0149: stloc.0
			IL_014a: ldc.i4.0
			IL_014b: bgt.s IL_0131
		// end loop

		IL_014d: br.s IL_0157

		IL_014f: ldarg.0
		IL_0150: ldc.i4.s 48
		IL_0152: call instance void System.Text.ValueStringBuilder::Append(char)

		IL_0157: ldarg.2
		IL_0158: ldc.i4.0
		IL_0159: ble.s IL_01a9

		IL_015b: ldarg.0
		IL_015c: ldarg.s sDecimal
		IL_015e: call instance void System.Text.ValueStringBuilder::Append(string)
		IL_0163: ldloc.0
		IL_0164: ldc.i4.0
		IL_0165: bge.s IL_01a5

		IL_0167: ldarg.2
		IL_0168: ldc.i4.0
		IL_0169: ble.s IL_01a5

		IL_016b: ldloc.0
		IL_016c: neg
		IL_016d: ldarg.2
		IL_016e: call int32 System.Math::Min(int32, int32)
		IL_0173: stloc.s 14
		IL_0175: ldarg.0
		IL_0176: ldc.i4.s 48
		IL_0178: ldloc.s 14
		IL_017a: call instance void System.Text.ValueStringBuilder::Append(char, int32)
		IL_017f: ldloc.0
		IL_0180: ldloc.s 14
		IL_0182: add
		IL_0183: stloc.0
		IL_0184: ldarg.2
		IL_0185: ldloc.s 14
		IL_0187: sub
		IL_0188: starg.s nMaxDigits
		IL_018a: br.s IL_01a5
		// loop start (head: IL_01a5)
			IL_018c: ldarg.0
			IL_018d: ldloc.1
			IL_018e: ldind.u1
			IL_018f: brtrue.s IL_0195

			IL_0191: ldc.i4.s 48
			IL_0193: br.s IL_019b

			IL_0195: ldloc.1
			IL_0196: dup
			IL_0197: ldc.i4.1
			IL_0198: add
			IL_0199: stloc.1
			IL_019a: ldind.u1

			IL_019b: call instance void System.Text.ValueStringBuilder::Append(char)
			IL_01a0: ldarg.2
			IL_01a1: ldc.i4.1
			IL_01a2: sub
			IL_01a3: starg.s nMaxDigits

			IL_01a5: ldarg.2
			IL_01a6: ldc.i4.0
			IL_01a7: bgt.s IL_018c
		// end loop

		IL_01a9: ret
	} // end of method Number::FormatFixed

	.method private hidebysig static 
		void FormatNumber (
			valuetype System.Text.ValueStringBuilder& sb,
			valuetype System.Number/NumberBuffer& number,
			int32 nMaxDigits,
			class System.Globalization.NumberFormatInfo info
		) cil managed 
	{
		// Method begins at RVA 0x765d4
		// Code size 117 (0x75)
		.maxstack 6
		.locals (
			[0] string,
			[1] string,
			[2] int32,
			[3] char
		)

		IL_0000: ldarg.1
		IL_0001: ldfld bool System.Number/NumberBuffer::IsNegative
		IL_0006: brtrue.s IL_000f

		IL_0008: ldstr "#"
		IL_000d: br.s IL_001b

		IL_000f: ldsfld string[] System.Number::s_negNumberFormats
		IL_0014: ldarg.3
		IL_0015: callvirt instance int32 System.Globalization.NumberFormatInfo::get_NumberNegativePattern()
		IL_001a: ldelem.ref

		IL_001b: stloc.0
		IL_001c: ldloc.0
		IL_001d: stloc.1
		IL_001e: ldc.i4.0
		IL_001f: stloc.2
		IL_0020: br.s IL_006b
		// loop start (head: IL_006b)
			IL_0022: ldloc.1
			IL_0023: ldloc.2
			IL_0024: callvirt instance char System.String::get_Chars(int32)
			IL_0029: stloc.3
			IL_002a: ldloc.3
			IL_002b: ldc.i4.s 35
			IL_002d: beq.s IL_0036

			IL_002f: ldloc.3
			IL_0030: ldc.i4.s 45
			IL_0032: beq.s IL_0052

			IL_0034: br.s IL_0060

			IL_0036: ldarg.0
			IL_0037: ldarg.1
			IL_0038: ldarg.2
			IL_0039: ldarg.3
			IL_003a: ldfld int32[] System.Globalization.NumberFormatInfo::_numberGroupSizes
			IL_003f: ldarg.3
			IL_0040: callvirt instance string System.Globalization.NumberFormatInfo::get_NumberDecimalSeparator()
			IL_0045: ldarg.3
			IL_0046: callvirt instance string System.Globalization.NumberFormatInfo::get_NumberGroupSeparator()
			IL_004b: call void System.Number::FormatFixed(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, int32, int32[], string, string)
			IL_0050: br.s IL_0067

			IL_0052: ldarg.0
			IL_0053: ldarg.3
			IL_0054: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
			IL_0059: call instance void System.Text.ValueStringBuilder::Append(string)
			IL_005e: br.s IL_0067

			IL_0060: ldarg.0
			IL_0061: ldloc.3
			IL_0062: call instance void System.Text.ValueStringBuilder::Append(char)

			IL_0067: ldloc.2
			IL_0068: ldc.i4.1
			IL_0069: add
			IL_006a: stloc.2

			IL_006b: ldloc.2
			IL_006c: ldloc.1
			IL_006d: callvirt instance int32 System.String::get_Length()
			IL_0072: blt.s IL_0022
		// end loop

		IL_0074: ret
	} // end of method Number::FormatNumber

	.method private hidebysig static 
		void FormatScientific (
			valuetype System.Text.ValueStringBuilder& sb,
			valuetype System.Number/NumberBuffer& number,
			int32 nMaxDigits,
			class System.Globalization.NumberFormatInfo info,
			char expChar
		) cil managed 
	{
		// Method begins at RVA 0x76658
		// Code size 114 (0x72)
		.maxstack 6
		.locals (
			[0] uint8*,
			[1] int32
		)

		IL_0000: ldarg.1
		IL_0001: call instance uint8* System.Number/NumberBuffer::GetDigitsPointer()
		IL_0006: stloc.0
		IL_0007: ldarg.0
		IL_0008: ldloc.0
		IL_0009: ldind.u1
		IL_000a: brtrue.s IL_0010

		IL_000c: ldc.i4.s 48
		IL_000e: br.s IL_0016

		IL_0010: ldloc.0
		IL_0011: dup
		IL_0012: ldc.i4.1
		IL_0013: add
		IL_0014: stloc.0
		IL_0015: ldind.u1

		IL_0016: call instance void System.Text.ValueStringBuilder::Append(char)
		IL_001b: ldarg.2
		IL_001c: ldc.i4.1
		IL_001d: beq.s IL_0041

		IL_001f: ldarg.0
		IL_0020: ldarg.3
		IL_0021: callvirt instance string System.Globalization.NumberFormatInfo::get_NumberDecimalSeparator()
		IL_0026: call instance void System.Text.ValueStringBuilder::Append(string)
		IL_002b: br.s IL_0041
		// loop start (head: IL_0041)
			IL_002d: ldarg.0
			IL_002e: ldloc.0
			IL_002f: ldind.u1
			IL_0030: brtrue.s IL_0036

			IL_0032: ldc.i4.s 48
			IL_0034: br.s IL_003c

			IL_0036: ldloc.0
			IL_0037: dup
			IL_0038: ldc.i4.1
			IL_0039: add
			IL_003a: stloc.0
			IL_003b: ldind.u1

			IL_003c: call instance void System.Text.ValueStringBuilder::Append(char)

			IL_0041: ldarg.2
			IL_0042: ldc.i4.1
			IL_0043: sub
			IL_0044: dup
			IL_0045: starg.s nMaxDigits
			IL_0047: ldc.i4.0
			IL_0048: bgt.s IL_002d
		// end loop

		IL_004a: ldarg.1
		IL_004b: ldflda valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
		IL_0050: ldc.i4.0
		IL_0051: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
		IL_0056: ldind.u1
		IL_0057: brfalse.s IL_0063

		IL_0059: ldarg.1
		IL_005a: ldfld int32 System.Number/NumberBuffer::Scale
		IL_005f: ldc.i4.1
		IL_0060: sub
		IL_0061: br.s IL_0064

		IL_0063: ldc.i4.0

		IL_0064: stloc.1
		IL_0065: ldarg.0
		IL_0066: ldarg.3
		IL_0067: ldloc.1
		IL_0068: ldarg.s expChar
		IL_006a: ldc.i4.3
		IL_006b: ldc.i4.1
		IL_006c: call void System.Number::FormatExponent(valuetype System.Text.ValueStringBuilder&, class System.Globalization.NumberFormatInfo, int32, char, int32, bool)
		IL_0071: ret
	} // end of method Number::FormatScientific

	.method private hidebysig static 
		void FormatExponent (
			valuetype System.Text.ValueStringBuilder& sb,
			class System.Globalization.NumberFormatInfo info,
			int32 'value',
			char expChar,
			int32 minDigits,
			bool positiveSign
		) cil managed 
	{
		// Method begins at RVA 0x766d8
		// Code size 88 (0x58)
		.maxstack 5
		.locals (
			[0] char*,
			[1] char*
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.3
		IL_0002: call instance void System.Text.ValueStringBuilder::Append(char)
		IL_0007: ldarg.2
		IL_0008: ldc.i4.0
		IL_0009: bge.s IL_001d

		IL_000b: ldarg.0
		IL_000c: ldarg.1
		IL_000d: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_0012: call instance void System.Text.ValueStringBuilder::Append(string)
		IL_0017: ldarg.2
		IL_0018: neg
		IL_0019: starg.s 'value'
		IL_001b: br.s IL_002d

		IL_001d: ldarg.s positiveSign
		IL_001f: brfalse.s IL_002d

		IL_0021: ldarg.0
		IL_0022: ldarg.1
		IL_0023: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveSign()
		IL_0028: call instance void System.Text.ValueStringBuilder::Append(string)

		IL_002d: ldc.i4.s 20
		IL_002f: conv.u
		IL_0030: localloc
		IL_0032: stloc.0
		IL_0033: ldloc.0
		IL_0034: ldc.i4.s 10
		IL_0036: conv.i
		IL_0037: ldc.i4.2
		IL_0038: mul
		IL_0039: add
		IL_003a: ldarg.2
		IL_003b: ldarg.s minDigits
		IL_003d: call char* System.Number::UInt32ToDecChars(char*, uint32, int32)
		IL_0042: stloc.1
		IL_0043: ldarg.0
		IL_0044: ldloc.1
		IL_0045: ldloc.0
		IL_0046: ldc.i4.s 10
		IL_0048: conv.i
		IL_0049: ldc.i4.2
		IL_004a: mul
		IL_004b: add
		IL_004c: ldloc.1
		IL_004d: sub
		IL_004e: ldc.i4.2
		IL_004f: div
		IL_0050: conv.i8
		IL_0051: conv.i4
		IL_0052: call instance void System.Text.ValueStringBuilder::Append(char*, int32)
		IL_0057: ret
	} // end of method Number::FormatExponent

	.method private hidebysig static 
		void FormatGeneral (
			valuetype System.Text.ValueStringBuilder& sb,
			valuetype System.Number/NumberBuffer& number,
			int32 nMaxDigits,
			class System.Globalization.NumberFormatInfo info,
			char expChar,
			bool bSuppressScientific
		) cil managed 
	{
		// Method begins at RVA 0x7673c
		// Code size 154 (0x9a)
		.maxstack 6
		.locals (
			[0] int32,
			[1] bool,
			[2] uint8*
		)

		IL_0000: ldarg.1
		IL_0001: ldfld int32 System.Number/NumberBuffer::Scale
		IL_0006: stloc.0
		IL_0007: ldc.i4.0
		IL_0008: stloc.1
		IL_0009: ldarg.s bSuppressScientific
		IL_000b: brtrue.s IL_001a

		IL_000d: ldloc.0
		IL_000e: ldarg.2
		IL_000f: bgt.s IL_0016

		IL_0011: ldloc.0
		IL_0012: ldc.i4.s -3
		IL_0014: bge.s IL_001a

		IL_0016: ldc.i4.1
		IL_0017: stloc.0
		IL_0018: ldc.i4.1
		IL_0019: stloc.1

		IL_001a: ldarg.1
		IL_001b: call instance uint8* System.Number/NumberBuffer::GetDigitsPointer()
		IL_0020: stloc.2
		IL_0021: ldloc.0
		IL_0022: ldc.i4.0
		IL_0023: ble.s IL_0043
		// loop start (head: IL_0025)
			IL_0025: ldarg.0
			IL_0026: ldloc.2
			IL_0027: ldind.u1
			IL_0028: brtrue.s IL_002e

			IL_002a: ldc.i4.s 48
			IL_002c: br.s IL_0034

			IL_002e: ldloc.2
			IL_002f: dup
			IL_0030: ldc.i4.1
			IL_0031: add
			IL_0032: stloc.2
			IL_0033: ldind.u1

			IL_0034: call instance void System.Text.ValueStringBuilder::Append(char)
			IL_0039: ldloc.0
			IL_003a: ldc.i4.1
			IL_003b: sub
			IL_003c: dup
			IL_003d: stloc.0
			IL_003e: ldc.i4.0
			IL_003f: bgt.s IL_0025
		// end loop

		IL_0041: br.s IL_004b

		IL_0043: ldarg.0
		IL_0044: ldc.i4.s 48
		IL_0046: call instance void System.Text.ValueStringBuilder::Append(char)

		IL_004b: ldloc.2
		IL_004c: ldind.u1
		IL_004d: brtrue.s IL_0053

		IL_004f: ldloc.0
		IL_0050: ldc.i4.0
		IL_0051: bge.s IL_0083

		IL_0053: ldarg.0
		IL_0054: ldarg.3
		IL_0055: callvirt instance string System.Globalization.NumberFormatInfo::get_NumberDecimalSeparator()
		IL_005a: call instance void System.Text.ValueStringBuilder::Append(string)
		IL_005f: br.s IL_006d
		// loop start (head: IL_006d)
			IL_0061: ldarg.0
			IL_0062: ldc.i4.s 48
			IL_0064: call instance void System.Text.ValueStringBuilder::Append(char)
			IL_0069: ldloc.0
			IL_006a: ldc.i4.1
			IL_006b: add
			IL_006c: stloc.0

			IL_006d: ldloc.0
			IL_006e: ldc.i4.0
			IL_006f: blt.s IL_0061
		// end loop

		IL_0071: br.s IL_007f
		// loop start (head: IL_007f)
			IL_0073: ldarg.0
			IL_0074: ldloc.2
			IL_0075: dup
			IL_0076: ldc.i4.1
			IL_0077: add
			IL_0078: stloc.2
			IL_0079: ldind.u1
			IL_007a: call instance void System.Text.ValueStringBuilder::Append(char)

			IL_007f: ldloc.2
			IL_0080: ldind.u1
			IL_0081: brtrue.s IL_0073
		// end loop

		IL_0083: ldloc.1
		IL_0084: brfalse.s IL_0099

		IL_0086: ldarg.0
		IL_0087: ldarg.3
		IL_0088: ldarg.1
		IL_0089: ldfld int32 System.Number/NumberBuffer::Scale
		IL_008e: ldc.i4.1
		IL_008f: sub
		IL_0090: ldarg.s expChar
		IL_0092: ldc.i4.2
		IL_0093: ldc.i4.1
		IL_0094: call void System.Number::FormatExponent(valuetype System.Text.ValueStringBuilder&, class System.Globalization.NumberFormatInfo, int32, char, int32, bool)

		IL_0099: ret
	} // end of method Number::FormatGeneral

	.method private hidebysig static 
		void FormatPercent (
			valuetype System.Text.ValueStringBuilder& sb,
			valuetype System.Number/NumberBuffer& number,
			int32 nMaxDigits,
			class System.Globalization.NumberFormatInfo info
		) cil managed 
	{
		// Method begins at RVA 0x767e4
		// Code size 143 (0x8f)
		.maxstack 6
		.locals (
			[0] string,
			[1] string,
			[2] int32,
			[3] char
		)

		IL_0000: ldarg.1
		IL_0001: ldfld bool System.Number/NumberBuffer::IsNegative
		IL_0006: brtrue.s IL_0016

		IL_0008: ldsfld string[] System.Number::s_posPercentFormats
		IL_000d: ldarg.3
		IL_000e: callvirt instance int32 System.Globalization.NumberFormatInfo::get_PercentPositivePattern()
		IL_0013: ldelem.ref
		IL_0014: br.s IL_0022

		IL_0016: ldsfld string[] System.Number::s_negPercentFormats
		IL_001b: ldarg.3
		IL_001c: callvirt instance int32 System.Globalization.NumberFormatInfo::get_PercentNegativePattern()
		IL_0021: ldelem.ref

		IL_0022: stloc.0
		IL_0023: ldloc.0
		IL_0024: stloc.1
		IL_0025: ldc.i4.0
		IL_0026: stloc.2
		IL_0027: br.s IL_0085
		// loop start (head: IL_0085)
			IL_0029: ldloc.1
			IL_002a: ldloc.2
			IL_002b: callvirt instance char System.String::get_Chars(int32)
			IL_0030: stloc.3
			IL_0031: ldloc.3
			IL_0032: ldc.i4.s 35
			IL_0034: beq.s IL_0042

			IL_0036: ldloc.3
			IL_0037: ldc.i4.s 37
			IL_0039: beq.s IL_006c

			IL_003b: ldloc.3
			IL_003c: ldc.i4.s 45
			IL_003e: beq.s IL_005e

			IL_0040: br.s IL_007a

			IL_0042: ldarg.0
			IL_0043: ldarg.1
			IL_0044: ldarg.2
			IL_0045: ldarg.3
			IL_0046: ldfld int32[] System.Globalization.NumberFormatInfo::_percentGroupSizes
			IL_004b: ldarg.3
			IL_004c: callvirt instance string System.Globalization.NumberFormatInfo::get_PercentDecimalSeparator()
			IL_0051: ldarg.3
			IL_0052: callvirt instance string System.Globalization.NumberFormatInfo::get_PercentGroupSeparator()
			IL_0057: call void System.Number::FormatFixed(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, int32, int32[], string, string)
			IL_005c: br.s IL_0081

			IL_005e: ldarg.0
			IL_005f: ldarg.3
			IL_0060: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
			IL_0065: call instance void System.Text.ValueStringBuilder::Append(string)
			IL_006a: br.s IL_0081

			IL_006c: ldarg.0
			IL_006d: ldarg.3
			IL_006e: callvirt instance string System.Globalization.NumberFormatInfo::get_PercentSymbol()
			IL_0073: call instance void System.Text.ValueStringBuilder::Append(string)
			IL_0078: br.s IL_0081

			IL_007a: ldarg.0
			IL_007b: ldloc.3
			IL_007c: call instance void System.Text.ValueStringBuilder::Append(char)

			IL_0081: ldloc.2
			IL_0082: ldc.i4.1
			IL_0083: add
			IL_0084: stloc.2

			IL_0085: ldloc.2
			IL_0086: ldloc.1
			IL_0087: callvirt instance int32 System.String::get_Length()
			IL_008c: blt.s IL_0029
		// end loop

		IL_008e: ret
	} // end of method Number::FormatPercent

	.method assembly hidebysig static 
		void RoundNumber (
			valuetype System.Number/NumberBuffer& number,
			int32 pos,
			bool isCorrectlyRounded
		) cil managed 
	{
		// Method begins at RVA 0x76880
		// Code size 158 (0x9e)
		.maxstack 4
		.locals (
			[0] uint8*,
			[1] int32
		)

		IL_0000: ldarg.0
		IL_0001: call instance uint8* System.Number/NumberBuffer::GetDigitsPointer()
		IL_0006: stloc.0
		IL_0007: ldc.i4.0
		IL_0008: stloc.1
		IL_0009: br.s IL_000f
		// loop start (head: IL_000f)
			IL_000b: ldloc.1
			IL_000c: ldc.i4.1
			IL_000d: add
			IL_000e: stloc.1

			IL_000f: ldloc.1
			IL_0010: ldarg.1
			IL_0011: bge.s IL_0019

			IL_0013: ldloc.0
			IL_0014: ldloc.1
			IL_0015: add
			IL_0016: ldind.u1
			IL_0017: brtrue.s IL_000b
		// end loop

		IL_0019: ldloc.1
		IL_001a: ldarg.1
		IL_001b: bne.un.s IL_0069

		IL_001d: ldloc.0
		IL_001e: ldloc.1
		IL_001f: ldarg.0
		IL_0020: ldfld valuetype System.Number/NumberBufferKind System.Number/NumberBuffer::Kind
		IL_0025: ldarg.2
		IL_0026: call bool System.Number::'<RoundNumber>g__ShouldRoundUp|78_0'(uint8*, int32, valuetype System.Number/NumberBufferKind, bool)
		IL_002b: brfalse.s IL_0069

		IL_002d: br.s IL_0033
		// loop start (head: IL_0033)
			IL_002f: ldloc.1
			IL_0030: ldc.i4.1
			IL_0031: sub
			IL_0032: stloc.1

			IL_0033: ldloc.1
			IL_0034: ldc.i4.0
			IL_0035: ble.s IL_0041

			IL_0037: ldloc.0
			IL_0038: ldloc.1
			IL_0039: ldc.i4.1
			IL_003a: sub
			IL_003b: add
			IL_003c: ldind.u1
			IL_003d: ldc.i4.s 57
			IL_003f: beq.s IL_002f
		// end loop

		IL_0041: ldloc.1
		IL_0042: ldc.i4.0
		IL_0043: ble.s IL_0052

		IL_0045: ldloc.0
		IL_0046: ldloc.1
		IL_0047: ldc.i4.1
		IL_0048: sub
		IL_0049: add
		IL_004a: dup
		IL_004b: ldind.u1
		IL_004c: ldc.i4.1
		IL_004d: add
		IL_004e: conv.u1
		IL_004f: stind.i1
		IL_0050: br.s IL_0077

		IL_0052: ldarg.0
		IL_0053: ldflda int32 System.Number/NumberBuffer::Scale
		IL_0058: dup
		IL_0059: ldind.i4
		IL_005a: ldc.i4.1
		IL_005b: add
		IL_005c: stind.i4
		IL_005d: ldloc.0
		IL_005e: ldc.i4.s 49
		IL_0060: stind.i1
		IL_0061: ldc.i4.1
		IL_0062: stloc.1
		IL_0063: br.s IL_0077
		// loop start (head: IL_0069)
			IL_0065: ldloc.1
			IL_0066: ldc.i4.1
			IL_0067: sub
			IL_0068: stloc.1

			IL_0069: ldloc.1
			IL_006a: ldc.i4.0
			IL_006b: ble.s IL_0077

			IL_006d: ldloc.0
			IL_006e: ldloc.1
			IL_006f: ldc.i4.1
			IL_0070: sub
			IL_0071: add
			IL_0072: ldind.u1
			IL_0073: ldc.i4.s 48
			IL_0075: beq.s IL_0065
		// end loop

		IL_0077: ldloc.1
		IL_0078: brtrue.s IL_0091

		IL_007a: ldarg.0
		IL_007b: ldfld valuetype System.Number/NumberBufferKind System.Number/NumberBuffer::Kind
		IL_0080: ldc.i4.3
		IL_0081: beq.s IL_008a

		IL_0083: ldarg.0
		IL_0084: ldc.i4.0
		IL_0085: stfld bool System.Number/NumberBuffer::IsNegative

		IL_008a: ldarg.0
		IL_008b: ldc.i4.0
		IL_008c: stfld int32 System.Number/NumberBuffer::Scale

		IL_0091: ldloc.0
		IL_0092: ldloc.1
		IL_0093: add
		IL_0094: ldc.i4.0
		IL_0095: stind.i1
		IL_0096: ldarg.0
		IL_0097: ldloc.1
		IL_0098: stfld int32 System.Number/NumberBuffer::DigitsCount
		IL_009d: ret
	} // end of method Number::RoundNumber

	.method private hidebysig static 
		int32 FindSection (
			valuetype System.ReadOnlySpan`1<char> format,
			int32 section
		) cil managed 
	{
		// Method begins at RVA 0x7692c
		// Code size 190 (0xbe)
		.maxstack 4
		.locals (
			[0] int32,
			[1] char,
			[2] char*,
			[3] char& pinned,
			[4] char
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldarg.0
		IL_0006: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<char>(valuetype System.ReadOnlySpan`1<!!0>)
		IL_000b: stloc.3
		IL_000c: ldloc.3
		IL_000d: conv.u
		IL_000e: stloc.2
		IL_000f: ldc.i4.0
		IL_0010: stloc.0
		// loop start (head: IL_0011)
			IL_0011: ldloc.0
			IL_0012: ldarga.s format
			IL_0014: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0019: blt.s IL_001d

			IL_001b: ldc.i4.0
			IL_001c: ret

			IL_001d: ldloc.2
			IL_001e: ldloc.0
			IL_001f: dup
			IL_0020: ldc.i4.1
			IL_0021: add
			IL_0022: stloc.0
			IL_0023: conv.i
			IL_0024: ldc.i4.2
			IL_0025: mul
			IL_0026: add
			IL_0027: ldind.u2
			IL_0028: dup
			IL_0029: stloc.1
			IL_002a: stloc.s 4
			IL_002c: ldloc.s 4
			IL_002e: ldc.i4.s 34
			IL_0030: bgt.un.s IL_0041

			IL_0032: ldloc.s 4
			IL_0034: brfalse IL_00bc

			IL_0039: ldloc.s 4
			IL_003b: ldc.i4.s 34
			IL_003d: beq.s IL_0055

			IL_003f: br.s IL_0011

			IL_0041: ldloc.s 4
			IL_0043: ldc.i4.s 39
			IL_0045: beq.s IL_0055

			IL_0047: ldloc.s 4
			IL_0049: ldc.i4.s 59
			IL_004b: beq.s IL_0091

			IL_004d: ldloc.s 4
			IL_004f: ldc.i4.s 92
			IL_0051: beq.s IL_0078

			IL_0053: br.s IL_0011
			// loop start (head: IL_0055)
				IL_0055: ldloc.0
				IL_0056: ldarga.s format
				IL_0058: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
				IL_005d: bge.s IL_0011

				IL_005f: ldloc.2
				IL_0060: ldloc.0
				IL_0061: conv.i
				IL_0062: ldc.i4.2
				IL_0063: mul
				IL_0064: add
				IL_0065: ldind.u2
				IL_0066: brfalse.s IL_0011

				IL_0068: ldloc.2
				IL_0069: ldloc.0
				IL_006a: dup
				IL_006b: ldc.i4.1
				IL_006c: add
				IL_006d: stloc.0
				IL_006e: conv.i
				IL_006f: ldc.i4.2
				IL_0070: mul
				IL_0071: add
				IL_0072: ldind.u2
				IL_0073: ldloc.1
				IL_0074: bne.un.s IL_0055
			// end loop

			IL_0076: br.s IL_0011

			IL_0078: ldloc.0
			IL_0079: ldarga.s format
			IL_007b: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0080: bge.s IL_0011

			IL_0082: ldloc.2
			IL_0083: ldloc.0
			IL_0084: conv.i
			IL_0085: ldc.i4.2
			IL_0086: mul
			IL_0087: add
			IL_0088: ldind.u2
			IL_0089: brfalse.s IL_0011

			IL_008b: ldloc.0
			IL_008c: ldc.i4.1
			IL_008d: add
			IL_008e: stloc.0
			IL_008f: br.s IL_0011

			IL_0091: ldarg.1
			IL_0092: ldc.i4.1
			IL_0093: sub
			IL_0094: dup
			IL_0095: starg.s section
			IL_0097: brtrue IL_0011
		// end loop
		IL_009c: ldloc.0
		IL_009d: ldarga.s format
		IL_009f: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_00a4: bge.s IL_00bc

		IL_00a6: ldloc.2
		IL_00a7: ldloc.0
		IL_00a8: conv.i
		IL_00a9: ldc.i4.2
		IL_00aa: mul
		IL_00ab: add
		IL_00ac: ldind.u2
		IL_00ad: brfalse.s IL_00bc

		IL_00af: ldloc.2
		IL_00b0: ldloc.0
		IL_00b1: conv.i
		IL_00b2: ldc.i4.2
		IL_00b3: mul
		IL_00b4: add
		IL_00b5: ldind.u2
		IL_00b6: ldc.i4.s 59
		IL_00b8: beq.s IL_00bc

		IL_00ba: ldloc.0
		IL_00bb: ret

		IL_00bc: ldc.i4.0
		IL_00bd: ret
	} // end of method Number::FindSection

	.method private hidebysig static 
		uint32 Low32 (
			uint64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x769f6
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.u4
		IL_0002: ret
	} // end of method Number::Low32

	.method private hidebysig static 
		uint32 High32 (
			uint64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x769fa
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i8 -4294967296
		IL_000a: and
		IL_000b: ldc.i4.s 32
		IL_000d: shr.un
		IL_000e: conv.u4
		IL_000f: ret
	} // end of method Number::High32

	.method private hidebysig static 
		uint32 Int64DivMod1E9 (
			uint64& 'value'
		) cil managed 
	{
		// Method begins at RVA 0x76a0c
		// Code size 24 (0x18)
		.maxstack 3
		.locals (
			[0] uint32
		)

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: ldc.i4 1000000000
		IL_0007: conv.i8
		IL_0008: rem.un
		IL_0009: conv.u4
		IL_000a: stloc.0
		IL_000b: ldarg.0
		IL_000c: ldarg.0
		IL_000d: ldind.i8
		IL_000e: ldc.i4 1000000000
		IL_0013: conv.i8
		IL_0014: div.un
		IL_0015: stind.i8
		IL_0016: ldloc.0
		IL_0017: ret
	} // end of method Number::Int64DivMod1E9

	.method private hidebysig static 
		uint64 ExtractFractionAndBiasedExponent (
			float64 'value',
			[out] int32& exponent
		) cil managed 
	{
		// Method begins at RVA 0x76a30
		// Code size 69 (0x45)
		.maxstack 3
		.locals (
			[0] uint64,
			[1] uint64
		)

		IL_0000: ldarg.0
		IL_0001: call int64 System.BitConverter::DoubleToInt64Bits(float64)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldc.i8 4503599627370495
		IL_0011: and
		IL_0012: stloc.1
		IL_0013: ldarg.1
		IL_0014: ldloc.0
		IL_0015: ldc.i4.s 52
		IL_0017: shr.un
		IL_0018: conv.i4
		IL_0019: ldc.i4 2047
		IL_001e: and
		IL_001f: stind.i4
		IL_0020: ldarg.1
		IL_0021: ldind.i4
		IL_0022: brfalse.s IL_003c

		IL_0024: ldloc.1
		IL_0025: ldc.i8 4503599627370496
		IL_002e: or
		IL_002f: stloc.1
		IL_0030: ldarg.1
		IL_0031: ldarg.1
		IL_0032: ldind.i4
		IL_0033: ldc.i4 1075
		IL_0038: sub
		IL_0039: stind.i4
		IL_003a: br.s IL_0043

		IL_003c: ldarg.1
		IL_003d: ldc.i4 -1074
		IL_0042: stind.i4

		IL_0043: ldloc.1
		IL_0044: ret
	} // end of method Number::ExtractFractionAndBiasedExponent

	.method private hidebysig static 
		uint16 ExtractFractionAndBiasedExponent (
			valuetype System.Half 'value',
			[out] int32& exponent
		) cil managed 
	{
		// Method begins at RVA 0x76a84
		// Code size 54 (0x36)
		.maxstack 3
		.locals (
			[0] uint16,
			[1] uint16
		)

		IL_0000: ldarg.0
		IL_0001: call int16 System.BitConverter::HalfToInt16Bits(valuetype System.Half)
		IL_0006: conv.u2
		IL_0007: stloc.0
		IL_0008: ldloc.0
		IL_0009: ldc.i4 1023
		IL_000e: and
		IL_000f: conv.u2
		IL_0010: stloc.1
		IL_0011: ldarg.1
		IL_0012: ldloc.0
		IL_0013: ldc.i4.s 10
		IL_0015: shr
		IL_0016: ldc.i4.s 31
		IL_0018: and
		IL_0019: stind.i4
		IL_001a: ldarg.1
		IL_001b: ldind.i4
		IL_001c: brfalse.s IL_0030

		IL_001e: ldloc.1
		IL_001f: ldc.i4 1024
		IL_0024: or
		IL_0025: conv.u2
		IL_0026: stloc.1
		IL_0027: ldarg.1
		IL_0028: ldarg.1
		IL_0029: ldind.i4
		IL_002a: ldc.i4.s 25
		IL_002c: sub
		IL_002d: stind.i4
		IL_002e: br.s IL_0034

		IL_0030: ldarg.1
		IL_0031: ldc.i4.s -24
		IL_0033: stind.i4

		IL_0034: ldloc.1
		IL_0035: ret
	} // end of method Number::ExtractFractionAndBiasedExponent

	.method private hidebysig static 
		uint32 ExtractFractionAndBiasedExponent (
			float32 'value',
			[out] int32& exponent
		) cil managed 
	{
		// Method begins at RVA 0x76ac8
		// Code size 60 (0x3c)
		.maxstack 3
		.locals (
			[0] uint32,
			[1] uint32
		)

		IL_0000: ldarg.0
		IL_0001: call int32 System.BitConverter::SingleToInt32Bits(float32)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldc.i4 8388607
		IL_000d: and
		IL_000e: stloc.1
		IL_000f: ldarg.1
		IL_0010: ldloc.0
		IL_0011: ldc.i4.s 23
		IL_0013: shr.un
		IL_0014: ldc.i4 255
		IL_0019: and
		IL_001a: stind.i4
		IL_001b: ldarg.1
		IL_001c: ldind.i4
		IL_001d: brfalse.s IL_0033

		IL_001f: ldloc.1
		IL_0020: ldc.i4 8388608
		IL_0025: or
		IL_0026: stloc.1
		IL_0027: ldarg.1
		IL_0028: ldarg.1
		IL_0029: ldind.i4
		IL_002a: ldc.i4 150
		IL_002f: sub
		IL_0030: stind.i4
		IL_0031: br.s IL_003a

		IL_0033: ldarg.1
		IL_0034: ldc.i4 -149
		IL_0039: stind.i4

		IL_003a: ldloc.1
		IL_003b: ret
	} // end of method Number::ExtractFractionAndBiasedExponent

	.method private hidebysig static 
		void AccumulateDecimalDigitsIntoBigInteger (
			valuetype System.Number/NumberBuffer& number,
			uint32 firstIndex,
			uint32 lastIndex,
			[out] valuetype System.Number/BigInteger& result
		) cil managed 
	{
		// Method begins at RVA 0x76b10
		// Code size 66 (0x42)
		.maxstack 2
		.locals (
			[0] uint8*,
			[1] uint32,
			[2] uint32,
			[3] uint32
		)

		IL_0000: ldarg.3
		IL_0001: call void System.Number/BigInteger::SetZero(valuetype System.Number/BigInteger&)
		IL_0006: ldarg.0
		IL_0007: call instance uint8* System.Number/NumberBuffer::GetDigitsPointer()
		IL_000c: ldarg.1
		IL_000d: conv.u
		IL_000e: add
		IL_000f: stloc.0
		IL_0010: ldarg.2
		IL_0011: ldarg.1
		IL_0012: sub
		IL_0013: stloc.1
		IL_0014: br.s IL_003e
		// loop start (head: IL_003e)
			IL_0016: ldloc.1
			IL_0017: ldc.i4.s 9
			IL_0019: call uint32 System.Math::Min(uint32, uint32)
			IL_001e: stloc.2
			IL_001f: ldloc.0
			IL_0020: ldloc.2
			IL_0021: call uint32 System.Number::DigitsToUInt32(uint8*, int32)
			IL_0026: stloc.3
			IL_0027: ldarg.3
			IL_0028: ldloc.2
			IL_0029: call instance void System.Number/BigInteger::MultiplyPow10(uint32)
			IL_002e: ldarg.3
			IL_002f: ldloc.3
			IL_0030: call instance void System.Number/BigInteger::Add(uint32)
			IL_0035: ldloc.0
			IL_0036: ldloc.2
			IL_0037: conv.u
			IL_0038: add
			IL_0039: stloc.0
			IL_003a: ldloc.1
			IL_003b: ldloc.2
			IL_003c: sub
			IL_003d: stloc.1

			IL_003e: ldloc.1
			IL_003f: brtrue.s IL_0016
		// end loop

		IL_0041: ret
	} // end of method Number::AccumulateDecimalDigitsIntoBigInteger

	.method private hidebysig static 
		uint64 AssembleFloatingPointBits (
			[in] valuetype System.Number/FloatingPointInfo& info,
			uint64 initialMantissa,
			int32 initialExponent,
			bool hasZeroTail
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x76b60
		// Code size 227 (0xe3)
		.maxstack 3
		.locals (
			[0] uint32,
			[1] int32,
			[2] int32,
			[3] uint64,
			[4] int32,
			[5] uint64,
			[6] int32
		)

		IL_0000: ldarg.1
		IL_0001: call uint32 System.Number/BigInteger::CountSignificantBits(uint64)
		IL_0006: stloc.0
		IL_0007: ldarg.0
		IL_0008: call instance uint16 System.Number/FloatingPointInfo::get_NormalMantissaBits()
		IL_000d: ldloc.0
		IL_000e: sub
		IL_000f: stloc.1
		IL_0010: ldarg.2
		IL_0011: ldloc.1
		IL_0012: sub
		IL_0013: stloc.2
		IL_0014: ldarg.1
		IL_0015: stloc.3
		IL_0016: ldloc.2
		IL_0017: stloc.s 4
		IL_0019: ldloc.2
		IL_001a: ldarg.0
		IL_001b: call instance int32 System.Number/FloatingPointInfo::get_MaxBinaryExponent()
		IL_0020: ble.s IL_0029

		IL_0022: ldarg.0
		IL_0023: call instance uint64 System.Number/FloatingPointInfo::get_InfinityBits()
		IL_0028: ret

		IL_0029: ldloc.2
		IL_002a: ldarg.0
		IL_002b: call instance int32 System.Number/FloatingPointInfo::get_MinBinaryExponent()
		IL_0030: bge.s IL_0082

		IL_0032: ldloc.1
		IL_0033: ldloc.2
		IL_0034: add
		IL_0035: ldarg.0
		IL_0036: call instance int32 System.Number/FloatingPointInfo::get_ExponentBias()
		IL_003b: add
		IL_003c: ldc.i4.1
		IL_003d: sub
		IL_003e: stloc.s 6
		IL_0040: ldarg.0
		IL_0041: call instance int32 System.Number/FloatingPointInfo::get_ExponentBias()
		IL_0046: neg
		IL_0047: stloc.s 4
		IL_0049: ldloc.s 6
		IL_004b: ldc.i4.0
		IL_004c: bge.s IL_0078

		IL_004e: ldloc.3
		IL_004f: ldloc.s 6
		IL_0051: neg
		IL_0052: ldarg.3
		IL_0053: call uint64 System.Number::RightShiftWithRounding(uint64, int32, bool)
		IL_0058: stloc.3
		IL_0059: ldloc.3
		IL_005a: brtrue.s IL_0063

		IL_005c: ldarg.0
		IL_005d: call instance uint64 System.Number/FloatingPointInfo::get_ZeroBits()
		IL_0062: ret

		IL_0063: ldloc.3
		IL_0064: ldarg.0
		IL_0065: call instance uint64 System.Number/FloatingPointInfo::get_DenormalMantissaMask()
		IL_006a: ble.un.s IL_00bf

		IL_006c: ldarg.2
		IL_006d: ldloc.s 6
		IL_006f: ldc.i4.1
		IL_0070: add
		IL_0071: sub
		IL_0072: ldloc.1
		IL_0073: sub
		IL_0074: stloc.s 4
		IL_0076: br.s IL_00bf

		IL_0078: ldloc.3
		IL_0079: ldloc.s 6
		IL_007b: ldc.i4.s 63
		IL_007d: and
		IL_007e: shl
		IL_007f: stloc.3
		IL_0080: br.s IL_00bf

		IL_0082: ldloc.1
		IL_0083: ldc.i4.0
		IL_0084: bge.s IL_00b4

		IL_0086: ldloc.3
		IL_0087: ldloc.1
		IL_0088: neg
		IL_0089: ldarg.3
		IL_008a: call uint64 System.Number::RightShiftWithRounding(uint64, int32, bool)
		IL_008f: stloc.3
		IL_0090: ldloc.3
		IL_0091: ldarg.0
		IL_0092: call instance uint64 System.Number/FloatingPointInfo::get_NormalMantissaMask()
		IL_0097: ble.un.s IL_00bf

		IL_0099: ldloc.3
		IL_009a: ldc.i4.1
		IL_009b: shr.un
		IL_009c: stloc.3
		IL_009d: ldloc.s 4
		IL_009f: ldc.i4.1
		IL_00a0: add
		IL_00a1: stloc.s 4
		IL_00a3: ldloc.s 4
		IL_00a5: ldarg.0
		IL_00a6: call instance int32 System.Number/FloatingPointInfo::get_MaxBinaryExponent()
		IL_00ab: ble.s IL_00bf

		IL_00ad: ldarg.0
		IL_00ae: call instance uint64 System.Number/FloatingPointInfo::get_InfinityBits()
		IL_00b3: ret

		IL_00b4: ldloc.1
		IL_00b5: ldc.i4.0
		IL_00b6: ble.s IL_00bf

		IL_00b8: ldloc.3
		IL_00b9: ldloc.1
		IL_00ba: ldc.i4.s 63
		IL_00bc: and
		IL_00bd: shl
		IL_00be: stloc.3

		IL_00bf: ldloc.3
		IL_00c0: ldarg.0
		IL_00c1: call instance uint64 System.Number/FloatingPointInfo::get_DenormalMantissaMask()
		IL_00c6: and
		IL_00c7: stloc.3
		IL_00c8: ldloc.s 4
		IL_00ca: ldarg.0
		IL_00cb: call instance int32 System.Number/FloatingPointInfo::get_ExponentBias()
		IL_00d0: add
		IL_00d1: conv.i8
		IL_00d2: ldarg.0
		IL_00d3: call instance uint16 System.Number/FloatingPointInfo::get_DenormalMantissaBits()
		IL_00d8: ldc.i4.s 63
		IL_00da: and
		IL_00db: shl
		IL_00dc: stloc.s 5
		IL_00de: ldloc.s 5
		IL_00e0: ldloc.3
		IL_00e1: or
		IL_00e2: ret
	} // end of method Number::AssembleFloatingPointBits

	.method private hidebysig static 
		uint64 ConvertBigIntegerToFloatingPointBits (
			valuetype System.Number/BigInteger& 'value',
			[in] valuetype System.Number/FloatingPointInfo& info,
			uint32 integerBitsOfPrecision,
			bool hasNonZeroFractionalPart
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x76c50
		// Code size 248 (0xf8)
		.maxstack 5
		.locals (
			[0] int32,
			[1] uint32,
			[2] uint32,
			[3] uint32,
			[4] uint32,
			[5] uint64,
			[6] int32,
			[7] bool,
			[8] int32,
			[9] int32,
			[10] int32,
			[11] uint32,
			[12] uint32,
			[13] uint64,
			[14] uint64,
			[15] uint32,
			[16] uint32
		)

		IL_0000: ldarg.1
		IL_0001: call instance uint16 System.Number/FloatingPointInfo::get_DenormalMantissaBits()
		IL_0006: stloc.0
		IL_0007: ldarg.2
		IL_0008: ldc.i4.s 64
		IL_000a: bgt.un.s IL_001e

		IL_000c: ldarg.1
		IL_000d: ldarg.0
		IL_000e: call instance uint64 System.Number/BigInteger::ToUInt64()
		IL_0013: ldloc.0
		IL_0014: ldarg.3
		IL_0015: ldc.i4.0
		IL_0016: ceq
		IL_0018: call uint64 System.Number::AssembleFloatingPointBits(valuetype System.Number/FloatingPointInfo&, uint64, int32, bool)
		IL_001d: ret

		IL_001e: ldarg.2
		IL_001f: ldc.i4.s 32
		IL_0021: ldloca.s 2
		IL_0023: call uint32 System.Math::DivRem(uint32, uint32, uint32&)
		IL_0028: stloc.1
		IL_0029: ldloc.1
		IL_002a: ldc.i4.1
		IL_002b: sub
		IL_002c: stloc.3
		IL_002d: ldloc.3
		IL_002e: ldc.i4.1
		IL_002f: sub
		IL_0030: stloc.s 4
		IL_0032: ldloc.0
		IL_0033: ldloc.s 4
		IL_0035: ldc.i4.s 32
		IL_0037: mul
		IL_0038: add
		IL_0039: stloc.s 6
		IL_003b: ldarg.3
		IL_003c: ldc.i4.0
		IL_003d: ceq
		IL_003f: stloc.s 7
		IL_0041: ldloc.2
		IL_0042: brtrue.s IL_005d

		IL_0044: ldarg.0
		IL_0045: ldloc.3
		IL_0046: call instance uint32 System.Number/BigInteger::GetBlock(uint32)
		IL_004b: conv.u8
		IL_004c: ldc.i4.s 32
		IL_004e: shl
		IL_004f: ldarg.0
		IL_0050: ldloc.s 4
		IL_0052: call instance uint32 System.Number/BigInteger::GetBlock(uint32)
		IL_0057: conv.u8
		IL_0058: add
		IL_0059: stloc.s 5
		IL_005b: br.s IL_00ca

		IL_005d: ldloc.2
		IL_005e: stloc.s 8
		IL_0060: ldc.i4.s 64
		IL_0062: ldloc.s 8
		IL_0064: sub
		IL_0065: stloc.s 9
		IL_0067: ldloc.s 9
		IL_0069: ldc.i4.s 32
		IL_006b: sub
		IL_006c: stloc.s 10
		IL_006e: ldloc.s 6
		IL_0070: ldloc.2
		IL_0071: add
		IL_0072: stloc.s 6
		IL_0074: ldarg.0
		IL_0075: ldloc.s 4
		IL_0077: call instance uint32 System.Number/BigInteger::GetBlock(uint32)
		IL_007c: stloc.s 11
		IL_007e: ldloc.s 11
		IL_0080: ldloc.s 8
		IL_0082: ldc.i4.s 31
		IL_0084: and
		IL_0085: shr.un
		IL_0086: stloc.s 12
		IL_0088: ldarg.0
		IL_0089: ldloc.3
		IL_008a: call instance uint32 System.Number/BigInteger::GetBlock(uint32)
		IL_008f: conv.u8
		IL_0090: ldloc.s 10
		IL_0092: ldc.i4.s 63
		IL_0094: and
		IL_0095: shl
		IL_0096: stloc.s 13
		IL_0098: ldarg.0
		IL_0099: ldloc.1
		IL_009a: call instance uint32 System.Number/BigInteger::GetBlock(uint32)
		IL_009f: conv.u8
		IL_00a0: ldloc.s 9
		IL_00a2: ldc.i4.s 63
		IL_00a4: and
		IL_00a5: shl
		IL_00a6: stloc.s 14
		IL_00a8: ldloc.s 14
		IL_00aa: ldloc.s 13
		IL_00ac: add
		IL_00ad: ldloc.s 12
		IL_00af: conv.u8
		IL_00b0: add
		IL_00b1: stloc.s 5
		IL_00b3: ldc.i4.1
		IL_00b4: ldloc.2
		IL_00b5: ldc.i4.s 31
		IL_00b7: and
		IL_00b8: shl
		IL_00b9: ldc.i4.1
		IL_00ba: sub
		IL_00bb: stloc.s 15
		IL_00bd: ldloc.s 7
		IL_00bf: ldloc.s 11
		IL_00c1: ldloc.s 15
		IL_00c3: and
		IL_00c4: ldc.i4.0
		IL_00c5: ceq
		IL_00c7: and
		IL_00c8: stloc.s 7

		IL_00ca: ldc.i4.0
		IL_00cb: stloc.s 16
		IL_00cd: br.s IL_00e5
		// loop start (head: IL_00e5)
			IL_00cf: ldloc.s 7
			IL_00d1: ldarg.0
			IL_00d2: ldloc.s 16
			IL_00d4: call instance uint32 System.Number/BigInteger::GetBlock(uint32)
			IL_00d9: ldc.i4.0
			IL_00da: ceq
			IL_00dc: and
			IL_00dd: stloc.s 7
			IL_00df: ldloc.s 16
			IL_00e1: ldc.i4.1
			IL_00e2: add
			IL_00e3: stloc.s 16

			IL_00e5: ldloc.s 16
			IL_00e7: ldloc.s 4
			IL_00e9: bne.un.s IL_00cf
		// end loop

		IL_00eb: ldarg.1
		IL_00ec: ldloc.s 5
		IL_00ee: ldloc.s 6
		IL_00f0: ldloc.s 7
		IL_00f2: call uint64 System.Number::AssembleFloatingPointBits(valuetype System.Number/FloatingPointInfo&, uint64, int32, bool)
		IL_00f7: ret
	} // end of method Number::ConvertBigIntegerToFloatingPointBits

	.method private hidebysig static 
		uint32 DigitsToUInt32 (
			uint8* p,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0x76d54
		// Code size 39 (0x27)
		.maxstack 2
		.locals (
			[0] uint8*,
			[1] uint32
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: add
		IL_0003: stloc.0
		IL_0004: ldarg.0
		IL_0005: ldind.u1
		IL_0006: ldc.i4.s 48
		IL_0008: sub
		IL_0009: stloc.1
		IL_000a: ldarg.0
		IL_000b: ldc.i4.1
		IL_000c: add
		IL_000d: starg.s p
		IL_000f: br.s IL_0021
		// loop start (head: IL_0021)
			IL_0011: ldc.i4.s 10
			IL_0013: ldloc.1
			IL_0014: mul
			IL_0015: ldarg.0
			IL_0016: ldind.u1
			IL_0017: add
			IL_0018: ldc.i4.s 48
			IL_001a: sub
			IL_001b: stloc.1
			IL_001c: ldarg.0
			IL_001d: ldc.i4.1
			IL_001e: add
			IL_001f: starg.s p

			IL_0021: ldarg.0
			IL_0022: ldloc.0
			IL_0023: blt.un.s IL_0011
		// end loop

		IL_0025: ldloc.1
		IL_0026: ret
	} // end of method Number::DigitsToUInt32

	.method private hidebysig static 
		uint64 DigitsToUInt64 (
			uint8* p,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0x76d88
		// Code size 43 (0x2b)
		.maxstack 2
		.locals (
			[0] uint8*,
			[1] uint64
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: add
		IL_0003: stloc.0
		IL_0004: ldarg.0
		IL_0005: ldind.u1
		IL_0006: ldc.i4.s 48
		IL_0008: sub
		IL_0009: conv.i8
		IL_000a: stloc.1
		IL_000b: ldarg.0
		IL_000c: ldc.i4.1
		IL_000d: add
		IL_000e: starg.s p
		IL_0010: br.s IL_0025
		// loop start (head: IL_0025)
			IL_0012: ldc.i4.s 10
			IL_0014: conv.i8
			IL_0015: ldloc.1
			IL_0016: mul
			IL_0017: ldarg.0
			IL_0018: ldind.u1
			IL_0019: conv.u8
			IL_001a: add
			IL_001b: ldc.i4.s 48
			IL_001d: conv.i8
			IL_001e: sub
			IL_001f: stloc.1
			IL_0020: ldarg.0
			IL_0021: ldc.i4.1
			IL_0022: add
			IL_0023: starg.s p

			IL_0025: ldarg.0
			IL_0026: ldloc.0
			IL_0027: blt.un.s IL_0012
		// end loop

		IL_0029: ldloc.1
		IL_002a: ret
	} // end of method Number::DigitsToUInt64

	.method private hidebysig static 
		uint64 NumberToFloatingPointBits (
			valuetype System.Number/NumberBuffer& number,
			[in] valuetype System.Number/FloatingPointInfo& info
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x76dc0
		// Code size 271 (0x10f)
		.maxstack 5
		.locals (
			[0] uint32,
			[1] uint32,
			[2] uint32,
			[3] uint32,
			[4] uint32,
			[5] uint8*,
			[6] float32,
			[7] float32,
			[8] float64,
			[9] float64
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int32 System.Number/NumberBuffer::DigitsCount
		IL_0006: stloc.0
		IL_0007: ldc.i4.0
		IL_0008: ldarg.0
		IL_0009: ldfld int32 System.Number/NumberBuffer::Scale
		IL_000e: call int32 System.Math::Max(int32, int32)
		IL_0013: stloc.1
		IL_0014: ldloc.1
		IL_0015: ldloc.0
		IL_0016: call uint32 System.Math::Min(uint32, uint32)
		IL_001b: stloc.2
		IL_001c: ldloc.0
		IL_001d: ldloc.2
		IL_001e: sub
		IL_001f: stloc.3
		IL_0020: ldarg.0
		IL_0021: ldfld int32 System.Number/NumberBuffer::Scale
		IL_0026: conv.i8
		IL_0027: ldloc.2
		IL_0028: conv.u8
		IL_0029: sub
		IL_002a: ldloc.3
		IL_002b: conv.u8
		IL_002c: sub
		IL_002d: call int64 System.Math::Abs(int64)
		IL_0032: conv.u4
		IL_0033: stloc.s 4
		IL_0035: ldarg.0
		IL_0036: call instance uint8* System.Number/NumberBuffer::GetDigitsPointer()
		IL_003b: stloc.s 5
		IL_003d: ldarg.1
		IL_003e: call instance uint16 System.Number/FloatingPointInfo::get_DenormalMantissaBits()
		IL_0043: ldc.i4.s 23
		IL_0045: bgt.s IL_009c

		IL_0047: ldloc.0
		IL_0048: ldc.i4.7
		IL_0049: bgt.un.s IL_009c

		IL_004b: ldloc.s 4
		IL_004d: ldc.i4.s 10
		IL_004f: bgt.un.s IL_009c

		IL_0051: ldloc.s 5
		IL_0053: ldloc.0
		IL_0054: call uint32 System.Number::DigitsToUInt32(uint8*, int32)
		IL_0059: conv.r.un
		IL_005a: conv.r4
		IL_005b: stloc.s 6
		IL_005d: ldsfld float32[] System.Number::s_Pow10SingleTable
		IL_0062: ldloc.s 4
		IL_0064: ldelem.r4
		IL_0065: stloc.s 7
		IL_0067: ldloc.3
		IL_0068: brfalse.s IL_0073

		IL_006a: ldloc.s 6
		IL_006c: ldloc.s 7
		IL_006e: div
		IL_006f: stloc.s 6
		IL_0071: br.s IL_007a

		IL_0073: ldloc.s 6
		IL_0075: ldloc.s 7
		IL_0077: mul
		IL_0078: stloc.s 6

		IL_007a: ldarg.1
		IL_007b: call instance uint16 System.Number/FloatingPointInfo::get_DenormalMantissaBits()
		IL_0080: ldc.i4.s 10
		IL_0082: bne.un.s IL_0093

		IL_0084: ldloc.s 6
		IL_0086: call valuetype System.Half System.Half::op_Explicit(float32)
		IL_008b: call int16 System.BitConverter::HalfToInt16Bits(valuetype System.Half)
		IL_0090: conv.u2
		IL_0091: conv.u8
		IL_0092: ret

		IL_0093: ldloc.s 6
		IL_0095: call int32 System.BitConverter::SingleToInt32Bits(float32)
		IL_009a: conv.u8
		IL_009b: ret

		IL_009c: ldloc.0
		IL_009d: ldc.i4.s 15
		IL_009f: bgt.un.s IL_0104

		IL_00a1: ldloc.s 4
		IL_00a3: ldc.i4.s 22
		IL_00a5: bgt.un.s IL_0104

		IL_00a7: ldloc.s 5
		IL_00a9: ldloc.0
		IL_00aa: call uint64 System.Number::DigitsToUInt64(uint8*, int32)
		IL_00af: conv.r.un
		IL_00b0: conv.r8
		IL_00b1: stloc.s 8
		IL_00b3: ldsfld float64[] System.Number::s_Pow10DoubleTable
		IL_00b8: ldloc.s 4
		IL_00ba: ldelem.r8
		IL_00bb: stloc.s 9
		IL_00bd: ldloc.3
		IL_00be: brfalse.s IL_00c9

		IL_00c0: ldloc.s 8
		IL_00c2: ldloc.s 9
		IL_00c4: div
		IL_00c5: stloc.s 8
		IL_00c7: br.s IL_00d0

		IL_00c9: ldloc.s 8
		IL_00cb: ldloc.s 9
		IL_00cd: mul
		IL_00ce: stloc.s 8

		IL_00d0: ldarg.1
		IL_00d1: call instance uint16 System.Number/FloatingPointInfo::get_DenormalMantissaBits()
		IL_00d6: ldc.i4.s 52
		IL_00d8: bne.un.s IL_00e2

		IL_00da: ldloc.s 8
		IL_00dc: call int64 System.BitConverter::DoubleToInt64Bits(float64)
		IL_00e1: ret

		IL_00e2: ldarg.1
		IL_00e3: call instance uint16 System.Number/FloatingPointInfo::get_DenormalMantissaBits()
		IL_00e8: ldc.i4.s 23
		IL_00ea: bne.un.s IL_00f6

		IL_00ec: ldloc.s 8
		IL_00ee: conv.r4
		IL_00ef: call int32 System.BitConverter::SingleToInt32Bits(float32)
		IL_00f4: conv.u8
		IL_00f5: ret

		IL_00f6: ldloc.s 8
		IL_00f8: call valuetype System.Half System.Half::op_Explicit(float64)
		IL_00fd: call int16 System.BitConverter::HalfToInt16Bits(valuetype System.Half)
		IL_0102: conv.u8
		IL_0103: ret

		IL_0104: ldarg.0
		IL_0105: ldarg.1
		IL_0106: ldloc.1
		IL_0107: ldloc.2
		IL_0108: ldloc.3
		IL_0109: call uint64 System.Number::NumberToFloatingPointBitsSlow(valuetype System.Number/NumberBuffer&, valuetype System.Number/FloatingPointInfo&, uint32, uint32, uint32)
		IL_010e: ret
	} // end of method Number::NumberToFloatingPointBits

	.method private hidebysig static 
		uint64 NumberToFloatingPointBitsSlow (
			valuetype System.Number/NumberBuffer& number,
			[in] valuetype System.Number/FloatingPointInfo& info,
			uint32 positiveExponent,
			uint32 integerDigitsPresent,
			uint32 fractionalDigitsPresent
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x76edc
		// Code size 476 (0x1dc)
		.maxstack 5
		.locals (
			[0] uint32,
			[1] uint32,
			[2] uint32,
			[3] uint32,
			[4] uint32,
			[5] uint32,
			[6] valuetype System.Number/BigInteger,
			[7] uint32,
			[8] uint32,
			[9] valuetype System.Number/BigInteger,
			[10] valuetype System.Number/BigInteger,
			[11] uint32,
			[12] uint32,
			[13] uint32,
			[14] uint32,
			[15] uint32,
			[16] uint32,
			[17] valuetype System.Number/BigInteger,
			[18] valuetype System.Number/BigInteger,
			[19] uint64,
			[20] bool,
			[21] uint32,
			[22] uint64,
			[23] uint64,
			[24] int32,
			[25] int32
		)

		IL_0000: ldarg.1
		IL_0001: call instance uint16 System.Number/FloatingPointInfo::get_NormalMantissaBits()
		IL_0006: ldc.i4.1
		IL_0007: add
		IL_0008: stloc.0
		IL_0009: ldarg.0
		IL_000a: ldfld int32 System.Number/NumberBuffer::DigitsCount
		IL_000f: stloc.1
		IL_0010: ldarg.2
		IL_0011: ldarg.3
		IL_0012: sub
		IL_0013: stloc.2
		IL_0014: ldarg.3
		IL_0015: stloc.3
		IL_0016: ldloc.3
		IL_0017: stloc.s 4
		IL_0019: ldloc.1
		IL_001a: stloc.s 5
		IL_001c: ldarg.0
		IL_001d: ldc.i4.0
		IL_001e: ldloc.3
		IL_001f: ldloca.s 6
		IL_0021: call void System.Number::AccumulateDecimalDigitsIntoBigInteger(valuetype System.Number/NumberBuffer&, uint32, uint32, valuetype System.Number/BigInteger&)
		IL_0026: ldloc.2
		IL_0027: ldc.i4.0
		IL_0028: ble.un.s IL_0044

		IL_002a: ldloc.2
		IL_002b: conv.u8
		IL_002c: ldarg.1
		IL_002d: call instance int32 System.Number/FloatingPointInfo::get_OverflowDecimalExponent()
		IL_0032: conv.i8
		IL_0033: ble.s IL_003c

		IL_0035: ldarg.1
		IL_0036: call instance uint64 System.Number/FloatingPointInfo::get_InfinityBits()
		IL_003b: ret

		IL_003c: ldloca.s 6
		IL_003e: ldloc.2
		IL_003f: call instance void System.Number/BigInteger::MultiplyPow10(uint32)

		IL_0044: ldloca.s 6
		IL_0046: call uint32 System.Number/BigInteger::CountSignificantBits(valuetype System.Number/BigInteger&)
		IL_004b: stloc.s 7
		IL_004d: ldloc.s 7
		IL_004f: ldloc.0
		IL_0050: bge.un.s IL_0056

		IL_0052: ldarg.s fractionalDigitsPresent
		IL_0054: brtrue.s IL_0066

		IL_0056: ldloca.s 6
		IL_0058: ldarg.1
		IL_0059: ldloc.s 7
		IL_005b: ldarg.s fractionalDigitsPresent
		IL_005d: ldc.i4.0
		IL_005e: cgt.un
		IL_0060: call uint64 System.Number::ConvertBigIntegerToFloatingPointBits(valuetype System.Number/BigInteger&, valuetype System.Number/FloatingPointInfo&, uint32, bool)
		IL_0065: ret

		IL_0066: ldarg.s fractionalDigitsPresent
		IL_0068: stloc.s 8
		IL_006a: ldarg.0
		IL_006b: ldfld int32 System.Number/NumberBuffer::Scale
		IL_0070: ldc.i4.0
		IL_0071: bge.s IL_007f

		IL_0073: ldloc.s 8
		IL_0075: ldarg.0
		IL_0076: ldfld int32 System.Number/NumberBuffer::Scale
		IL_007b: neg
		IL_007c: add
		IL_007d: stloc.s 8

		IL_007f: ldloc.s 7
		IL_0081: brtrue.s IL_0099

		IL_0083: ldloc.s 8
		IL_0085: conv.u8
		IL_0086: ldloc.1
		IL_0087: conv.i8
		IL_0088: sub
		IL_0089: ldarg.1
		IL_008a: call instance int32 System.Number/FloatingPointInfo::get_OverflowDecimalExponent()
		IL_008f: conv.i8
		IL_0090: ble.s IL_0099

		IL_0092: ldarg.1
		IL_0093: call instance uint64 System.Number/FloatingPointInfo::get_ZeroBits()
		IL_0098: ret

		IL_0099: ldarg.0
		IL_009a: ldloc.s 4
		IL_009c: ldloc.s 5
		IL_009e: ldloca.s 9
		IL_00a0: call void System.Number::AccumulateDecimalDigitsIntoBigInteger(valuetype System.Number/NumberBuffer&, uint32, uint32, valuetype System.Number/BigInteger&)
		IL_00a5: ldloca.s 9
		IL_00a7: call instance bool System.Number/BigInteger::IsZero()
		IL_00ac: brfalse.s IL_00be

		IL_00ae: ldloca.s 6
		IL_00b0: ldarg.1
		IL_00b1: ldloc.s 7
		IL_00b3: ldarg.s fractionalDigitsPresent
		IL_00b5: ldc.i4.0
		IL_00b6: cgt.un
		IL_00b8: call uint64 System.Number::ConvertBigIntegerToFloatingPointBits(valuetype System.Number/BigInteger&, valuetype System.Number/FloatingPointInfo&, uint32, bool)
		IL_00bd: ret

		IL_00be: ldloc.s 8
		IL_00c0: ldloca.s 10
		IL_00c2: call void System.Number/BigInteger::Pow10(uint32, valuetype System.Number/BigInteger&)
		IL_00c7: ldloca.s 9
		IL_00c9: call uint32 System.Number/BigInteger::CountSignificantBits(valuetype System.Number/BigInteger&)
		IL_00ce: stloc.s 11
		IL_00d0: ldloca.s 10
		IL_00d2: call uint32 System.Number/BigInteger::CountSignificantBits(valuetype System.Number/BigInteger&)
		IL_00d7: stloc.s 12
		IL_00d9: ldc.i4.0
		IL_00da: stloc.s 13
		IL_00dc: ldloc.s 12
		IL_00de: ldloc.s 11
		IL_00e0: ble.un.s IL_00e9

		IL_00e2: ldloc.s 12
		IL_00e4: ldloc.s 11
		IL_00e6: sub
		IL_00e7: stloc.s 13

		IL_00e9: ldloc.s 13
		IL_00eb: ldc.i4.0
		IL_00ec: ble.un.s IL_00f7

		IL_00ee: ldloca.s 9
		IL_00f0: ldloc.s 13
		IL_00f2: call instance void System.Number/BigInteger::ShiftLeft(uint32)

		IL_00f7: ldloc.0
		IL_00f8: ldloc.s 7
		IL_00fa: sub
		IL_00fb: stloc.s 14
		IL_00fd: ldloc.s 14
		IL_00ff: stloc.s 15
		IL_0101: ldloc.s 7
		IL_0103: ldc.i4.0
		IL_0104: ble.un.s IL_0123

		IL_0106: ldloc.s 13
		IL_0108: ldloc.s 15
		IL_010a: ble.un.s IL_011c

		IL_010c: ldloca.s 6
		IL_010e: ldarg.1
		IL_010f: ldloc.s 7
		IL_0111: ldarg.s fractionalDigitsPresent
		IL_0113: ldc.i4.0
		IL_0114: cgt.un
		IL_0116: call uint64 System.Number::ConvertBigIntegerToFloatingPointBits(valuetype System.Number/BigInteger&, valuetype System.Number/FloatingPointInfo&, uint32, bool)
		IL_011b: ret

		IL_011c: ldloc.s 15
		IL_011e: ldloc.s 13
		IL_0120: sub
		IL_0121: stloc.s 15

		IL_0123: ldloc.s 13
		IL_0125: stloc.s 16
		IL_0127: ldloca.s 9
		IL_0129: ldloca.s 10
		IL_012b: call int32 System.Number/BigInteger::Compare(valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&)
		IL_0130: ldc.i4.0
		IL_0131: bge.s IL_0139

		IL_0133: ldloc.s 16
		IL_0135: ldc.i4.1
		IL_0136: add
		IL_0137: stloc.s 16

		IL_0139: ldloca.s 9
		IL_013b: ldloc.s 15
		IL_013d: call instance void System.Number/BigInteger::ShiftLeft(uint32)
		IL_0142: ldloca.s 9
		IL_0144: ldloca.s 10
		IL_0146: ldloca.s 17
		IL_0148: ldloca.s 18
		IL_014a: call void System.Number/BigInteger::DivRem(valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&, valuetype System.Number/BigInteger&)
		IL_014f: ldloca.s 17
		IL_0151: call instance uint64 System.Number/BigInteger::ToUInt64()
		IL_0156: stloc.s 19
		IL_0158: ldarg.0
		IL_0159: ldfld bool System.Number/NumberBuffer::HasNonZeroTail
		IL_015e: brtrue.s IL_0169

		IL_0160: ldloca.s 18
		IL_0162: call instance bool System.Number/BigInteger::IsZero()
		IL_0167: br.s IL_016a

		IL_0169: ldc.i4.0

		IL_016a: stloc.s 20
		IL_016c: ldloc.s 19
		IL_016e: call uint32 System.Number/BigInteger::CountSignificantBits(uint64)
		IL_0173: stloc.s 21
		IL_0175: ldloc.s 21
		IL_0177: ldloc.s 14
		IL_0179: ble.un.s IL_01a7

		IL_017b: ldloc.s 21
		IL_017d: ldloc.s 14
		IL_017f: sub
		IL_0180: stloc.s 25
		IL_0182: ldloc.s 20
		IL_0184: brfalse.s IL_019a

		IL_0186: ldloc.s 19
		IL_0188: ldc.i4.1
		IL_0189: conv.i8
		IL_018a: ldloc.s 25
		IL_018c: ldc.i4.s 63
		IL_018e: and
		IL_018f: shl
		IL_0190: ldc.i4.1
		IL_0191: conv.i8
		IL_0192: sub
		IL_0193: and
		IL_0194: ldc.i4.0
		IL_0195: conv.i8
		IL_0196: ceq
		IL_0198: br.s IL_019b

		IL_019a: ldc.i4.0

		IL_019b: stloc.s 20
		IL_019d: ldloc.s 19
		IL_019f: ldloc.s 25
		IL_01a1: ldc.i4.s 63
		IL_01a3: and
		IL_01a4: shr.un
		IL_01a5: stloc.s 19

		IL_01a7: ldloca.s 6
		IL_01a9: call instance uint64 System.Number/BigInteger::ToUInt64()
		IL_01ae: stloc.s 22
		IL_01b0: ldloc.s 22
		IL_01b2: ldloc.s 14
		IL_01b4: ldc.i4.s 63
		IL_01b6: and
		IL_01b7: shl
		IL_01b8: ldloc.s 19
		IL_01ba: add
		IL_01bb: stloc.s 23
		IL_01bd: ldloc.s 7
		IL_01bf: ldc.i4.0
		IL_01c0: bgt.un.s IL_01c9

		IL_01c2: ldloc.s 16
		IL_01c4: neg
		IL_01c5: ldc.i4.1
		IL_01c6: sub
		IL_01c7: br.s IL_01cd

		IL_01c9: ldloc.s 7
		IL_01cb: ldc.i4.2
		IL_01cc: sub

		IL_01cd: stloc.s 24
		IL_01cf: ldarg.1
		IL_01d0: ldloc.s 23
		IL_01d2: ldloc.s 24
		IL_01d4: ldloc.s 20
		IL_01d6: call uint64 System.Number::AssembleFloatingPointBits(valuetype System.Number/FloatingPointInfo&, uint64, int32, bool)
		IL_01db: ret
	} // end of method Number::NumberToFloatingPointBitsSlow

	.method private hidebysig static 
		uint64 RightShiftWithRounding (
			uint64 'value',
			int32 shift,
			bool hasZeroTail
		) cil managed 
	{
		// Method begins at RVA 0x770c4
		// Code size 97 (0x61)
		.maxstack 4
		.locals (
			[0] uint64,
			[1] uint64,
			[2] uint64,
			[3] bool,
			[4] bool,
			[5] bool
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.s 64
		IL_0003: blt.s IL_0008

		IL_0005: ldc.i4.0
		IL_0006: conv.i8
		IL_0007: ret

		IL_0008: ldc.i4.1
		IL_0009: conv.i8
		IL_000a: ldarg.1
		IL_000b: ldc.i4.1
		IL_000c: sub
		IL_000d: ldc.i4.s 63
		IL_000f: and
		IL_0010: shl
		IL_0011: ldc.i4.1
		IL_0012: conv.i8
		IL_0013: sub
		IL_0014: stloc.0
		IL_0015: ldc.i4.1
		IL_0016: conv.i8
		IL_0017: ldarg.1
		IL_0018: ldc.i4.1
		IL_0019: sub
		IL_001a: ldc.i4.s 63
		IL_001c: and
		IL_001d: shl
		IL_001e: stloc.1
		IL_001f: ldc.i4.1
		IL_0020: conv.i8
		IL_0021: ldarg.1
		IL_0022: ldc.i4.s 63
		IL_0024: and
		IL_0025: shl
		IL_0026: stloc.2
		IL_0027: ldarg.0
		IL_0028: ldloc.2
		IL_0029: and
		IL_002a: ldc.i4.0
		IL_002b: conv.i8
		IL_002c: cgt.un
		IL_002e: stloc.3
		IL_002f: ldarg.0
		IL_0030: ldloc.1
		IL_0031: and
		IL_0032: ldc.i4.0
		IL_0033: conv.i8
		IL_0034: cgt.un
		IL_0036: stloc.s 4
		IL_0038: ldarg.2
		IL_0039: brfalse.s IL_0044

		IL_003b: ldarg.0
		IL_003c: ldloc.0
		IL_003d: and
		IL_003e: ldc.i4.0
		IL_003f: conv.i8
		IL_0040: cgt.un
		IL_0042: br.s IL_0045

		IL_0044: ldc.i4.1

		IL_0045: stloc.s 5
		IL_0047: ldarg.0
		IL_0048: ldarg.1
		IL_0049: ldc.i4.s 63
		IL_004b: and
		IL_004c: shr.un
		IL_004d: ldloc.3
		IL_004e: ldloc.s 4
		IL_0050: ldloc.s 5
		IL_0052: call bool System.Number::ShouldRoundUp(bool, bool, bool)
		IL_0057: brtrue.s IL_005d

		IL_0059: ldc.i4.0
		IL_005a: conv.i8
		IL_005b: br.s IL_005f

		IL_005d: ldc.i4.1
		IL_005e: conv.i8

		IL_005f: add
		IL_0060: ret
	} // end of method Number::RightShiftWithRounding

	.method private hidebysig static 
		bool ShouldRoundUp (
			bool lsbBit,
			bool roundBit,
			bool hasTailBits
		) cil managed 
	{
		// Method begins at RVA 0x77131
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brfalse.s IL_0007

		IL_0003: ldarg.2
		IL_0004: ldarg.0
		IL_0005: or
		IL_0006: ret

		IL_0007: ldc.i4.0
		IL_0008: ret
	} // end of method Number::ShouldRoundUp

	.method private hidebysig static 
		bool TryNumberToInt32 (
			valuetype System.Number/NumberBuffer& number,
			int32& 'value'
		) cil managed 
	{
		// Method begins at RVA 0x7713c
		// Code size 101 (0x65)
		.maxstack 4
		.locals (
			[0] int32,
			[1] uint8*,
			[2] int32
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int32 System.Number/NumberBuffer::Scale
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldc.i4.s 10
		IL_000a: bgt.s IL_0015

		IL_000c: ldloc.0
		IL_000d: ldarg.0
		IL_000e: ldfld int32 System.Number/NumberBuffer::DigitsCount
		IL_0013: bge.s IL_0017

		IL_0015: ldc.i4.0
		IL_0016: ret

		IL_0017: ldarg.0
		IL_0018: call instance uint8* System.Number/NumberBuffer::GetDigitsPointer()
		IL_001d: stloc.1
		IL_001e: ldc.i4.0
		IL_001f: stloc.2
		IL_0020: br.s IL_0041
		// loop start (head: IL_0041)
			IL_0022: ldloc.2
			IL_0023: ldc.i4 214748364
			IL_0028: ble.un.s IL_002c

			IL_002a: ldc.i4.0
			IL_002b: ret

			IL_002c: ldloc.2
			IL_002d: ldc.i4.s 10
			IL_002f: mul
			IL_0030: stloc.2
			IL_0031: ldloc.1
			IL_0032: ldind.u1
			IL_0033: brfalse.s IL_0041

			IL_0035: ldloc.2
			IL_0036: ldloc.1
			IL_0037: dup
			IL_0038: ldc.i4.1
			IL_0039: add
			IL_003a: stloc.1
			IL_003b: ldind.u1
			IL_003c: ldc.i4.s 48
			IL_003e: sub
			IL_003f: add
			IL_0040: stloc.2

			IL_0041: ldloc.0
			IL_0042: ldc.i4.1
			IL_0043: sub
			IL_0044: dup
			IL_0045: stloc.0
			IL_0046: ldc.i4.0
			IL_0047: bge.s IL_0022
		// end loop

		IL_0049: ldarg.0
		IL_004a: ldfld bool System.Number/NumberBuffer::IsNegative
		IL_004f: brfalse.s IL_005a

		IL_0051: ldloc.2
		IL_0052: neg
		IL_0053: stloc.2
		IL_0054: ldloc.2
		IL_0055: ldc.i4.0
		IL_0056: ble.s IL_0060

		IL_0058: ldc.i4.0
		IL_0059: ret

		IL_005a: ldloc.2
		IL_005b: ldc.i4.0
		IL_005c: bge.s IL_0060

		IL_005e: ldc.i4.0
		IL_005f: ret

		IL_0060: ldarg.1
		IL_0061: ldloc.2
		IL_0062: stind.i4
		IL_0063: ldc.i4.1
		IL_0064: ret
	} // end of method Number::TryNumberToInt32

	.method private hidebysig static 
		bool TryNumberToInt64 (
			valuetype System.Number/NumberBuffer& number,
			int64& 'value'
		) cil managed 
	{
		// Method begins at RVA 0x771b0
		// Code size 110 (0x6e)
		.maxstack 4
		.locals (
			[0] int32,
			[1] uint8*,
			[2] int64
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int32 System.Number/NumberBuffer::Scale
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldc.i4.s 19
		IL_000a: bgt.s IL_0015

		IL_000c: ldloc.0
		IL_000d: ldarg.0
		IL_000e: ldfld int32 System.Number/NumberBuffer::DigitsCount
		IL_0013: bge.s IL_0017

		IL_0015: ldc.i4.0
		IL_0016: ret

		IL_0017: ldarg.0
		IL_0018: call instance uint8* System.Number/NumberBuffer::GetDigitsPointer()
		IL_001d: stloc.1
		IL_001e: ldc.i4.0
		IL_001f: conv.i8
		IL_0020: stloc.2
		IL_0021: br.s IL_0048
		// loop start (head: IL_0048)
			IL_0023: ldloc.2
			IL_0024: ldc.i8 922337203685477580
			IL_002d: ble.un.s IL_0031

			IL_002f: ldc.i4.0
			IL_0030: ret

			IL_0031: ldloc.2
			IL_0032: ldc.i4.s 10
			IL_0034: conv.i8
			IL_0035: mul
			IL_0036: stloc.2
			IL_0037: ldloc.1
			IL_0038: ldind.u1
			IL_0039: brfalse.s IL_0048

			IL_003b: ldloc.2
			IL_003c: ldloc.1
			IL_003d: dup
			IL_003e: ldc.i4.1
			IL_003f: add
			IL_0040: stloc.1
			IL_0041: ldind.u1
			IL_0042: ldc.i4.s 48
			IL_0044: sub
			IL_0045: conv.i8
			IL_0046: add
			IL_0047: stloc.2

			IL_0048: ldloc.0
			IL_0049: ldc.i4.1
			IL_004a: sub
			IL_004b: dup
			IL_004c: stloc.0
			IL_004d: ldc.i4.0
			IL_004e: bge.s IL_0023
		// end loop

		IL_0050: ldarg.0
		IL_0051: ldfld bool System.Number/NumberBuffer::IsNegative
		IL_0056: brfalse.s IL_0062

		IL_0058: ldloc.2
		IL_0059: neg
		IL_005a: stloc.2
		IL_005b: ldloc.2
		IL_005c: ldc.i4.0
		IL_005d: conv.i8
		IL_005e: ble.s IL_0069

		IL_0060: ldc.i4.0
		IL_0061: ret

		IL_0062: ldloc.2
		IL_0063: ldc.i4.0
		IL_0064: conv.i8
		IL_0065: bge.s IL_0069

		IL_0067: ldc.i4.0
		IL_0068: ret

		IL_0069: ldarg.1
		IL_006a: ldloc.2
		IL_006b: stind.i8
		IL_006c: ldc.i4.1
		IL_006d: ret
	} // end of method Number::TryNumberToInt64

	.method private hidebysig static 
		bool TryNumberToUInt32 (
			valuetype System.Number/NumberBuffer& number,
			uint32& 'value'
		) cil managed 
	{
		// Method begins at RVA 0x7722c
		// Code size 94 (0x5e)
		.maxstack 4
		.locals (
			[0] int32,
			[1] uint8*,
			[2] uint32,
			[3] uint32
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int32 System.Number/NumberBuffer::Scale
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldc.i4.s 10
		IL_000a: bgt.s IL_001d

		IL_000c: ldloc.0
		IL_000d: ldarg.0
		IL_000e: ldfld int32 System.Number/NumberBuffer::DigitsCount
		IL_0013: blt.s IL_001d

		IL_0015: ldarg.0
		IL_0016: ldfld bool System.Number/NumberBuffer::IsNegative
		IL_001b: brfalse.s IL_001f

		IL_001d: ldc.i4.0
		IL_001e: ret

		IL_001f: ldarg.0
		IL_0020: call instance uint8* System.Number/NumberBuffer::GetDigitsPointer()
		IL_0025: stloc.1
		IL_0026: ldc.i4.0
		IL_0027: stloc.2
		IL_0028: br.s IL_0051
		// loop start (head: IL_0051)
			IL_002a: ldloc.2
			IL_002b: ldc.i4 429496729
			IL_0030: ble.un.s IL_0034

			IL_0032: ldc.i4.0
			IL_0033: ret

			IL_0034: ldloc.2
			IL_0035: ldc.i4.s 10
			IL_0037: mul
			IL_0038: stloc.2
			IL_0039: ldloc.1
			IL_003a: ldind.u1
			IL_003b: brfalse.s IL_0051

			IL_003d: ldloc.2
			IL_003e: ldloc.1
			IL_003f: dup
			IL_0040: ldc.i4.1
			IL_0041: add
			IL_0042: stloc.1
			IL_0043: ldind.u1
			IL_0044: ldc.i4.s 48
			IL_0046: sub
			IL_0047: add
			IL_0048: stloc.3
			IL_0049: ldloc.3
			IL_004a: ldloc.2
			IL_004b: bge.un.s IL_004f

			IL_004d: ldc.i4.0
			IL_004e: ret

			IL_004f: ldloc.3
			IL_0050: stloc.2

			IL_0051: ldloc.0
			IL_0052: ldc.i4.1
			IL_0053: sub
			IL_0054: dup
			IL_0055: stloc.0
			IL_0056: ldc.i4.0
			IL_0057: bge.s IL_002a
		// end loop

		IL_0059: ldarg.1
		IL_005a: ldloc.2
		IL_005b: stind.i4
		IL_005c: ldc.i4.1
		IL_005d: ret
	} // end of method Number::TryNumberToUInt32

	.method private hidebysig static 
		bool TryNumberToUInt64 (
			valuetype System.Number/NumberBuffer& number,
			uint64& 'value'
		) cil managed 
	{
		// Method begins at RVA 0x77298
		// Code size 101 (0x65)
		.maxstack 4
		.locals (
			[0] int32,
			[1] uint8*,
			[2] uint64,
			[3] uint64
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int32 System.Number/NumberBuffer::Scale
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldc.i4.s 20
		IL_000a: bgt.s IL_001d

		IL_000c: ldloc.0
		IL_000d: ldarg.0
		IL_000e: ldfld int32 System.Number/NumberBuffer::DigitsCount
		IL_0013: blt.s IL_001d

		IL_0015: ldarg.0
		IL_0016: ldfld bool System.Number/NumberBuffer::IsNegative
		IL_001b: brfalse.s IL_001f

		IL_001d: ldc.i4.0
		IL_001e: ret

		IL_001f: ldarg.0
		IL_0020: call instance uint8* System.Number/NumberBuffer::GetDigitsPointer()
		IL_0025: stloc.1
		IL_0026: ldc.i4.0
		IL_0027: conv.i8
		IL_0028: stloc.2
		IL_0029: br.s IL_0058
		// loop start (head: IL_0058)
			IL_002b: ldloc.2
			IL_002c: ldc.i8 1844674407370955161
			IL_0035: ble.un.s IL_0039

			IL_0037: ldc.i4.0
			IL_0038: ret

			IL_0039: ldloc.2
			IL_003a: ldc.i4.s 10
			IL_003c: conv.i8
			IL_003d: mul
			IL_003e: stloc.2
			IL_003f: ldloc.1
			IL_0040: ldind.u1
			IL_0041: brfalse.s IL_0058

			IL_0043: ldloc.2
			IL_0044: ldloc.1
			IL_0045: dup
			IL_0046: ldc.i4.1
			IL_0047: add
			IL_0048: stloc.1
			IL_0049: ldind.u1
			IL_004a: ldc.i4.s 48
			IL_004c: sub
			IL_004d: conv.i8
			IL_004e: add
			IL_004f: stloc.3
			IL_0050: ldloc.3
			IL_0051: ldloc.2
			IL_0052: bge.un.s IL_0056

			IL_0054: ldc.i4.0
			IL_0055: ret

			IL_0056: ldloc.3
			IL_0057: stloc.2

			IL_0058: ldloc.0
			IL_0059: ldc.i4.1
			IL_005a: sub
			IL_005b: dup
			IL_005c: stloc.0
			IL_005d: ldc.i4.0
			IL_005e: bge.s IL_002b
		// end loop

		IL_0060: ldarg.1
		IL_0061: ldloc.2
		IL_0062: stind.i8
		IL_0063: ldc.i4.1
		IL_0064: ret
	} // end of method Number::TryNumberToUInt64

	.method assembly hidebysig static 
		int32 ParseInt32 (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info
		) cil managed 
	{
		// Method begins at RVA 0x7730c
		// Code size 24 (0x18)
		.maxstack 4
		.locals (
			[0] valuetype System.Number/ParsingStatus,
			[1] int32
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldloca.s 1
		IL_0005: call valuetype System.Number/ParsingStatus System.Number::TryParseInt32(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, int32&)
		IL_000a: stloc.0
		IL_000b: ldloc.0
		IL_000c: brfalse.s IL_0016

		IL_000e: ldloc.0
		IL_000f: ldc.i4.s 9
		IL_0011: call void System.Number::ThrowOverflowOrFormatException(valuetype System.Number/ParsingStatus, valuetype System.TypeCode)

		IL_0016: ldloc.1
		IL_0017: ret
	} // end of method Number::ParseInt32

	.method assembly hidebysig static 
		int64 ParseInt64 (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info
		) cil managed 
	{
		// Method begins at RVA 0x77330
		// Code size 24 (0x18)
		.maxstack 4
		.locals (
			[0] valuetype System.Number/ParsingStatus,
			[1] int64
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldloca.s 1
		IL_0005: call valuetype System.Number/ParsingStatus System.Number::TryParseInt64(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, int64&)
		IL_000a: stloc.0
		IL_000b: ldloc.0
		IL_000c: brfalse.s IL_0016

		IL_000e: ldloc.0
		IL_000f: ldc.i4.s 11
		IL_0011: call void System.Number::ThrowOverflowOrFormatException(valuetype System.Number/ParsingStatus, valuetype System.TypeCode)

		IL_0016: ldloc.1
		IL_0017: ret
	} // end of method Number::ParseInt64

	.method assembly hidebysig static 
		uint32 ParseUInt32 (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info
		) cil managed 
	{
		// Method begins at RVA 0x77354
		// Code size 24 (0x18)
		.maxstack 4
		.locals (
			[0] valuetype System.Number/ParsingStatus,
			[1] uint32
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldloca.s 1
		IL_0005: call valuetype System.Number/ParsingStatus System.Number::TryParseUInt32(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, uint32&)
		IL_000a: stloc.0
		IL_000b: ldloc.0
		IL_000c: brfalse.s IL_0016

		IL_000e: ldloc.0
		IL_000f: ldc.i4.s 10
		IL_0011: call void System.Number::ThrowOverflowOrFormatException(valuetype System.Number/ParsingStatus, valuetype System.TypeCode)

		IL_0016: ldloc.1
		IL_0017: ret
	} // end of method Number::ParseUInt32

	.method assembly hidebysig static 
		uint64 ParseUInt64 (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info
		) cil managed 
	{
		// Method begins at RVA 0x77378
		// Code size 24 (0x18)
		.maxstack 4
		.locals (
			[0] valuetype System.Number/ParsingStatus,
			[1] uint64
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldloca.s 1
		IL_0005: call valuetype System.Number/ParsingStatus System.Number::TryParseUInt64(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, uint64&)
		IL_000a: stloc.0
		IL_000b: ldloc.0
		IL_000c: brfalse.s IL_0016

		IL_000e: ldloc.0
		IL_000f: ldc.i4.s 12
		IL_0011: call void System.Number::ThrowOverflowOrFormatException(valuetype System.Number/ParsingStatus, valuetype System.TypeCode)

		IL_0016: ldloc.1
		IL_0017: ret
	} // end of method Number::ParseUInt64

	.method private hidebysig static 
		bool TryParseNumber (
			char*& str,
			char* strEnd,
			valuetype System.Globalization.NumberStyles styles,
			valuetype System.Number/NumberBuffer& number,
			class System.Globalization.NumberFormatInfo info
		) cil managed 
	{
		// Method begins at RVA 0x7739c
		// Code size 1172 (0x494)
		.maxstack 4
		.locals (
			[0] string,
			[1] string,
			[2] string,
			[3] bool,
			[4] int32,
			[5] char*,
			[6] char,
			[7] char*,
			[8] int32,
			[9] int32,
			[10] int32,
			[11] bool,
			[12] bool,
			[13] char*,
			[14] int32
		)

		IL_0000: ldnull
		IL_0001: stloc.2
		IL_0002: ldc.i4.0
		IL_0003: stloc.3
		IL_0004: ldarg.2
		IL_0005: ldc.i4 256
		IL_000a: and
		IL_000b: brfalse.s IL_0029

		IL_000d: ldarg.s info
		IL_000f: callvirt instance string System.Globalization.NumberFormatInfo::get_CurrencySymbol()
		IL_0014: stloc.2
		IL_0015: ldarg.s info
		IL_0017: callvirt instance string System.Globalization.NumberFormatInfo::get_CurrencyDecimalSeparator()
		IL_001c: stloc.0
		IL_001d: ldarg.s info
		IL_001f: callvirt instance string System.Globalization.NumberFormatInfo::get_CurrencyGroupSeparator()
		IL_0024: stloc.1
		IL_0025: ldc.i4.1
		IL_0026: stloc.3
		IL_0027: br.s IL_0039

		IL_0029: ldarg.s info
		IL_002b: callvirt instance string System.Globalization.NumberFormatInfo::get_NumberDecimalSeparator()
		IL_0030: stloc.0
		IL_0031: ldarg.s info
		IL_0033: callvirt instance string System.Globalization.NumberFormatInfo::get_NumberGroupSeparator()
		IL_0038: stloc.1

		IL_0039: ldc.i4.0
		IL_003a: stloc.s 4
		IL_003c: ldarg.0
		IL_003d: ldind.i
		IL_003e: stloc.s 5
		IL_0040: ldloc.s 5
		IL_0042: ldarg.1
		IL_0043: blt.un.s IL_0048

		IL_0045: ldc.i4.0
		IL_0046: br.s IL_004b

		IL_0048: ldloc.s 5
		IL_004a: ldind.u2

		IL_004b: stloc.s 6
		// loop start (head: IL_004d)
			IL_004d: ldloc.s 6
			IL_004f: call bool System.Number::IsWhite(int32)
			IL_0054: brfalse.s IL_007b

			IL_0056: ldarg.2
			IL_0057: ldc.i4.1
			IL_0058: and
			IL_0059: brfalse.s IL_007b

			IL_005b: ldloc.s 4
			IL_005d: ldc.i4.1
			IL_005e: and
			IL_005f: brfalse IL_0111

			IL_0064: ldloc.s 4
			IL_0066: ldc.i4.s 32
			IL_0068: and
			IL_0069: brtrue IL_0111

			IL_006e: ldarg.s info
			IL_0070: callvirt instance int32 System.Globalization.NumberFormatInfo::get_NumberNegativePattern()
			IL_0075: ldc.i4.2
			IL_0076: beq IL_0111

			IL_007b: ldarg.2
			IL_007c: ldc.i4.4
			IL_007d: and
			IL_007e: brfalse.s IL_00ce

			IL_0080: ldloc.s 4
			IL_0082: ldc.i4.1
			IL_0083: and
			IL_0084: brtrue.s IL_00ce

			IL_0086: ldloc.s 5
			IL_0088: ldarg.1
			IL_0089: ldarg.s info
			IL_008b: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveSign()
			IL_0090: call char* System.Number::MatchChars(char*, char*, string)
			IL_0095: dup
			IL_0096: stloc.s 7
			IL_0098: ldc.i4.0
			IL_0099: conv.u
			IL_009a: bne.un.s IL_00c0

			IL_009c: ldloc.s 5
			IL_009e: ldarg.1
			IL_009f: ldarg.s info
			IL_00a1: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
			IL_00a6: call char* System.Number::MatchChars(char*, char*, string)
			IL_00ab: dup
			IL_00ac: stloc.s 7
			IL_00ae: ldc.i4.0
			IL_00af: conv.u
			IL_00b0: beq.s IL_00ce

			IL_00b2: ldarg.3
			IL_00b3: ldc.i4.1
			IL_00b4: dup
			IL_00b5: stloc.s 12
			IL_00b7: stfld bool System.Number/NumberBuffer::IsNegative
			IL_00bc: ldloc.s 12
			IL_00be: brfalse.s IL_00ce

			IL_00c0: ldloc.s 4
			IL_00c2: ldc.i4.1
			IL_00c3: or
			IL_00c4: stloc.s 4
			IL_00c6: ldloc.s 7
			IL_00c8: ldc.i4.2
			IL_00c9: sub
			IL_00ca: stloc.s 5
			IL_00cc: br.s IL_0111

			IL_00ce: ldloc.s 6
			IL_00d0: ldc.i4.s 40
			IL_00d2: bne.un.s IL_00ef

			IL_00d4: ldarg.2
			IL_00d5: ldc.i4.s 16
			IL_00d7: and
			IL_00d8: brfalse.s IL_00ef

			IL_00da: ldloc.s 4
			IL_00dc: ldc.i4.1
			IL_00dd: and
			IL_00de: brtrue.s IL_00ef

			IL_00e0: ldloc.s 4
			IL_00e2: ldc.i4.3
			IL_00e3: or
			IL_00e4: stloc.s 4
			IL_00e6: ldarg.3
			IL_00e7: ldc.i4.1
			IL_00e8: stfld bool System.Number/NumberBuffer::IsNegative
			IL_00ed: br.s IL_0111

			IL_00ef: ldloc.2
			IL_00f0: brfalse.s IL_0128

			IL_00f2: ldloc.s 5
			IL_00f4: ldarg.1
			IL_00f5: ldloc.2
			IL_00f6: call char* System.Number::MatchChars(char*, char*, string)
			IL_00fb: dup
			IL_00fc: stloc.s 7
			IL_00fe: ldc.i4.0
			IL_00ff: conv.u
			IL_0100: beq.s IL_0128

			IL_0102: ldloc.s 4
			IL_0104: ldc.i4.s 32
			IL_0106: or
			IL_0107: stloc.s 4
			IL_0109: ldnull
			IL_010a: stloc.2
			IL_010b: ldloc.s 7
			IL_010d: ldc.i4.2
			IL_010e: sub
			IL_010f: stloc.s 5

			IL_0111: ldloc.s 5
			IL_0113: ldc.i4.2
			IL_0114: add
			IL_0115: dup
			IL_0116: stloc.s 5
			IL_0118: ldarg.1
			IL_0119: blt.un.s IL_011e

			IL_011b: ldc.i4.0
			IL_011c: br.s IL_0121

			IL_011e: ldloc.s 5
			IL_0120: ldind.u2

			IL_0121: stloc.s 6
			IL_0123: br IL_004d
		// end loop

		IL_0128: ldc.i4.0
		IL_0129: stloc.s 8
		IL_012b: ldc.i4.0
		IL_012c: stloc.s 9
		IL_012e: ldarg.3
		IL_012f: ldflda valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
		IL_0134: call instance int32 valuetype System.Span`1<uint8>::get_Length()
		IL_0139: ldc.i4.1
		IL_013a: sub
		IL_013b: stloc.s 10
		// loop start (head: IL_013d)
			IL_013d: ldloc.s 6
			IL_013f: call bool System.Number::IsDigit(int32)
			IL_0144: brfalse IL_01d0

			IL_0149: ldloc.s 4
			IL_014b: ldc.i4.4
			IL_014c: or
			IL_014d: stloc.s 4
			IL_014f: ldloc.s 6
			IL_0151: ldc.i4.s 48
			IL_0153: bne.un.s IL_015b

			IL_0155: ldloc.s 4
			IL_0157: ldc.i4.8
			IL_0158: and
			IL_0159: brfalse.s IL_01b6

			IL_015b: ldloc.s 8
			IL_015d: ldloc.s 10
			IL_015f: bge.s IL_018c

			IL_0161: ldarg.3
			IL_0162: ldflda valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
			IL_0167: ldloc.s 8
			IL_0169: dup
			IL_016a: ldc.i4.1
			IL_016b: add
			IL_016c: stloc.s 8
			IL_016e: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
			IL_0173: ldloc.s 6
			IL_0175: conv.u1
			IL_0176: stind.i1
			IL_0177: ldloc.s 6
			IL_0179: ldc.i4.s 48
			IL_017b: bne.un.s IL_0186

			IL_017d: ldarg.3
			IL_017e: ldfld valuetype System.Number/NumberBufferKind System.Number/NumberBuffer::Kind
			IL_0183: ldc.i4.1
			IL_0184: beq.s IL_0199

			IL_0186: ldloc.s 8
			IL_0188: stloc.s 9
			IL_018a: br.s IL_0199

			IL_018c: ldloc.s 6
			IL_018e: ldc.i4.s 48
			IL_0190: beq.s IL_0199

			IL_0192: ldarg.3
			IL_0193: ldc.i4.1
			IL_0194: stfld bool System.Number/NumberBuffer::HasNonZeroTail

			IL_0199: ldloc.s 4
			IL_019b: ldc.i4.s 16
			IL_019d: and
			IL_019e: brtrue.s IL_01ab

			IL_01a0: ldarg.3
			IL_01a1: ldflda int32 System.Number/NumberBuffer::Scale
			IL_01a6: dup
			IL_01a7: ldind.i4
			IL_01a8: ldc.i4.1
			IL_01a9: add
			IL_01aa: stind.i4

			IL_01ab: ldloc.s 4
			IL_01ad: ldc.i4.8
			IL_01ae: or
			IL_01af: stloc.s 4
			IL_01b1: br IL_0265

			IL_01b6: ldloc.s 4
			IL_01b8: ldc.i4.s 16
			IL_01ba: and
			IL_01bb: brfalse IL_0265

			IL_01c0: ldarg.3
			IL_01c1: ldflda int32 System.Number/NumberBuffer::Scale
			IL_01c6: dup
			IL_01c7: ldind.i4
			IL_01c8: ldc.i4.1
			IL_01c9: sub
			IL_01ca: stind.i4
			IL_01cb: br IL_0265

			IL_01d0: ldarg.2
			IL_01d1: ldc.i4.s 32
			IL_01d3: and
			IL_01d4: brfalse.s IL_021c

			IL_01d6: ldloc.s 4
			IL_01d8: ldc.i4.s 16
			IL_01da: and
			IL_01db: brtrue.s IL_021c

			IL_01dd: ldloc.s 5
			IL_01df: ldarg.1
			IL_01e0: ldloc.0
			IL_01e1: call char* System.Number::MatchChars(char*, char*, string)
			IL_01e6: dup
			IL_01e7: stloc.s 7
			IL_01e9: ldc.i4.0
			IL_01ea: conv.u
			IL_01eb: bne.un.s IL_020d

			IL_01ed: ldloc.3
			IL_01ee: brfalse.s IL_021c

			IL_01f0: ldloc.s 4
			IL_01f2: ldc.i4.s 32
			IL_01f4: and
			IL_01f5: brtrue.s IL_021c

			IL_01f7: ldloc.s 5
			IL_01f9: ldarg.1
			IL_01fa: ldarg.s info
			IL_01fc: callvirt instance string System.Globalization.NumberFormatInfo::get_NumberDecimalSeparator()
			IL_0201: call char* System.Number::MatchChars(char*, char*, string)
			IL_0206: dup
			IL_0207: stloc.s 7
			IL_0209: ldc.i4.0
			IL_020a: conv.u
			IL_020b: beq.s IL_021c

			IL_020d: ldloc.s 4
			IL_020f: ldc.i4.s 16
			IL_0211: or
			IL_0212: stloc.s 4
			IL_0214: ldloc.s 7
			IL_0216: ldc.i4.2
			IL_0217: sub
			IL_0218: stloc.s 5
			IL_021a: br.s IL_0265

			IL_021c: ldarg.2
			IL_021d: ldc.i4.s 64
			IL_021f: and
			IL_0220: brfalse.s IL_027c

			IL_0222: ldloc.s 4
			IL_0224: ldc.i4.4
			IL_0225: and
			IL_0226: brfalse.s IL_027c

			IL_0228: ldloc.s 4
			IL_022a: ldc.i4.s 16
			IL_022c: and
			IL_022d: brtrue.s IL_027c

			IL_022f: ldloc.s 5
			IL_0231: ldarg.1
			IL_0232: ldloc.1
			IL_0233: call char* System.Number::MatchChars(char*, char*, string)
			IL_0238: dup
			IL_0239: stloc.s 7
			IL_023b: ldc.i4.0
			IL_023c: conv.u
			IL_023d: bne.un.s IL_025f

			IL_023f: ldloc.3
			IL_0240: brfalse.s IL_027c

			IL_0242: ldloc.s 4
			IL_0244: ldc.i4.s 32
			IL_0246: and
			IL_0247: brtrue.s IL_027c

			IL_0249: ldloc.s 5
			IL_024b: ldarg.1
			IL_024c: ldarg.s info
			IL_024e: callvirt instance string System.Globalization.NumberFormatInfo::get_NumberGroupSeparator()
			IL_0253: call char* System.Number::MatchChars(char*, char*, string)
			IL_0258: dup
			IL_0259: stloc.s 7
			IL_025b: ldc.i4.0
			IL_025c: conv.u
			IL_025d: beq.s IL_027c

			IL_025f: ldloc.s 7
			IL_0261: ldc.i4.2
			IL_0262: sub
			IL_0263: stloc.s 5

			IL_0265: ldloc.s 5
			IL_0267: ldc.i4.2
			IL_0268: add
			IL_0269: dup
			IL_026a: stloc.s 5
			IL_026c: ldarg.1
			IL_026d: blt.un.s IL_0272

			IL_026f: ldc.i4.0
			IL_0270: br.s IL_0275

			IL_0272: ldloc.s 5
			IL_0274: ldind.u2

			IL_0275: stloc.s 6
			IL_0277: br IL_013d
		// end loop

		IL_027c: ldc.i4.0
		IL_027d: stloc.s 11
		IL_027f: ldarg.3
		IL_0280: ldloc.s 9
		IL_0282: stfld int32 System.Number/NumberBuffer::DigitsCount
		IL_0287: ldarg.3
		IL_0288: ldflda valuetype System.Span`1<uint8> System.Number/NumberBuffer::Digits
		IL_028d: ldloc.s 9
		IL_028f: call instance !0& valuetype System.Span`1<uint8>::get_Item(int32)
		IL_0294: ldc.i4.0
		IL_0295: stind.i1
		IL_0296: ldloc.s 4
		IL_0298: ldc.i4.4
		IL_0299: and
		IL_029a: brfalse IL_048e

		IL_029f: ldloc.s 6
		IL_02a1: ldc.i4.s 69
		IL_02a3: beq.s IL_02ae

		IL_02a5: ldloc.s 6
		IL_02a7: ldc.i4.s 101
		IL_02a9: bne.un IL_03aa

		IL_02ae: ldarg.2
		IL_02af: ldc.i4 128
		IL_02b4: and
		IL_02b5: brfalse IL_03aa

		IL_02ba: ldloc.s 5
		IL_02bc: stloc.s 13
		IL_02be: ldloc.s 5
		IL_02c0: ldc.i4.2
		IL_02c1: add
		IL_02c2: dup
		IL_02c3: stloc.s 5
		IL_02c5: ldarg.1
		IL_02c6: blt.un.s IL_02cb

		IL_02c8: ldc.i4.0
		IL_02c9: br.s IL_02ce

		IL_02cb: ldloc.s 5
		IL_02cd: ldind.u2

		IL_02ce: stloc.s 6
		IL_02d0: ldloc.s 5
		IL_02d2: ldarg.1
		IL_02d3: ldarg.s info
		IL_02d5: ldfld string System.Globalization.NumberFormatInfo::_positiveSign
		IL_02da: call char* System.Number::MatchChars(char*, char*, string)
		IL_02df: dup
		IL_02e0: stloc.s 7
		IL_02e2: ldc.i4.0
		IL_02e3: conv.u
		IL_02e4: beq.s IL_02f8

		IL_02e6: ldloc.s 7
		IL_02e8: dup
		IL_02e9: stloc.s 5
		IL_02eb: ldarg.1
		IL_02ec: blt.un.s IL_02f1

		IL_02ee: ldc.i4.0
		IL_02ef: br.s IL_02f4

		IL_02f1: ldloc.s 5
		IL_02f3: ldind.u2

		IL_02f4: stloc.s 6
		IL_02f6: br.s IL_0321

		IL_02f8: ldloc.s 5
		IL_02fa: ldarg.1
		IL_02fb: ldarg.s info
		IL_02fd: ldfld string System.Globalization.NumberFormatInfo::_negativeSign
		IL_0302: call char* System.Number::MatchChars(char*, char*, string)
		IL_0307: dup
		IL_0308: stloc.s 7
		IL_030a: ldc.i4.0
		IL_030b: conv.u
		IL_030c: beq.s IL_0321

		IL_030e: ldloc.s 7
		IL_0310: dup
		IL_0311: stloc.s 5
		IL_0313: ldarg.1
		IL_0314: blt.un.s IL_0319

		IL_0316: ldc.i4.0
		IL_0317: br.s IL_031c

		IL_0319: ldloc.s 5
		IL_031b: ldind.u2

		IL_031c: stloc.s 6
		IL_031e: ldc.i4.1
		IL_031f: stloc.s 11

		IL_0321: ldloc.s 6
		IL_0323: call bool System.Number::IsDigit(int32)
		IL_0328: brfalse.s IL_0399

		IL_032a: ldc.i4.0
		IL_032b: stloc.s 14
		// loop start (head: IL_032d)
			IL_032d: ldloc.s 14
			IL_032f: ldc.i4.s 10
			IL_0331: mul
			IL_0332: ldloc.s 6
			IL_0334: ldc.i4.s 48
			IL_0336: sub
			IL_0337: add
			IL_0338: stloc.s 14
			IL_033a: ldloc.s 5
			IL_033c: ldc.i4.2
			IL_033d: add
			IL_033e: dup
			IL_033f: stloc.s 5
			IL_0341: ldarg.1
			IL_0342: blt.un.s IL_0347

			IL_0344: ldc.i4.0
			IL_0345: br.s IL_034a

			IL_0347: ldloc.s 5
			IL_0349: ldind.u2

			IL_034a: stloc.s 6
			IL_034c: ldloc.s 14
			IL_034e: ldc.i4 1000
			IL_0353: ble.s IL_0379

			IL_0355: ldc.i4 9999
			IL_035a: stloc.s 14
			IL_035c: br.s IL_0370
			// loop start (head: IL_0370)
				IL_035e: ldloc.s 5
				IL_0360: ldc.i4.2
				IL_0361: add
				IL_0362: dup
				IL_0363: stloc.s 5
				IL_0365: ldarg.1
				IL_0366: blt.un.s IL_036b

				IL_0368: ldc.i4.0
				IL_0369: br.s IL_036e

				IL_036b: ldloc.s 5
				IL_036d: ldind.u2

				IL_036e: stloc.s 6

				IL_0370: ldloc.s 6
				IL_0372: call bool System.Number::IsDigit(int32)
				IL_0377: brtrue.s IL_035e
			// end loop

			IL_0379: ldloc.s 6
			IL_037b: call bool System.Number::IsDigit(int32)
			IL_0380: brtrue.s IL_032d
		// end loop
		IL_0382: ldloc.s 11
		IL_0384: brfalse.s IL_038b

		IL_0386: ldloc.s 14
		IL_0388: neg
		IL_0389: stloc.s 14

		IL_038b: ldarg.3
		IL_038c: ldflda int32 System.Number/NumberBuffer::Scale
		IL_0391: dup
		IL_0392: ldind.i4
		IL_0393: ldloc.s 14
		IL_0395: add
		IL_0396: stind.i4
		IL_0397: br.s IL_03aa

		IL_0399: ldloc.s 13
		IL_039b: stloc.s 5
		IL_039d: ldloc.s 5
		IL_039f: ldarg.1
		IL_03a0: blt.un.s IL_03a5

		IL_03a2: ldc.i4.0
		IL_03a3: br.s IL_03a8

		IL_03a5: ldloc.s 5
		IL_03a7: ldind.u2

		IL_03a8: stloc.s 6
		// loop start (head: IL_03aa)
			IL_03aa: ldloc.s 6
			IL_03ac: call bool System.Number::IsWhite(int32)
			IL_03b1: brfalse.s IL_03bb

			IL_03b3: ldarg.2
			IL_03b4: ldc.i4.2
			IL_03b5: and
			IL_03b6: brtrue IL_043e

			IL_03bb: ldarg.2
			IL_03bc: ldc.i4.8
			IL_03bd: and
			IL_03be: brfalse.s IL_040e

			IL_03c0: ldloc.s 4
			IL_03c2: ldc.i4.1
			IL_03c3: and
			IL_03c4: brtrue.s IL_040e

			IL_03c6: ldloc.s 5
			IL_03c8: ldarg.1
			IL_03c9: ldarg.s info
			IL_03cb: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveSign()
			IL_03d0: call char* System.Number::MatchChars(char*, char*, string)
			IL_03d5: dup
			IL_03d6: stloc.s 7
			IL_03d8: ldc.i4.0
			IL_03d9: conv.u
			IL_03da: bne.un.s IL_0400

			IL_03dc: ldloc.s 5
			IL_03de: ldarg.1
			IL_03df: ldarg.s info
			IL_03e1: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
			IL_03e6: call char* System.Number::MatchChars(char*, char*, string)
			IL_03eb: dup
			IL_03ec: stloc.s 7
			IL_03ee: ldc.i4.0
			IL_03ef: conv.u
			IL_03f0: beq.s IL_040e

			IL_03f2: ldarg.3
			IL_03f3: ldc.i4.1
			IL_03f4: dup
			IL_03f5: stloc.s 12
			IL_03f7: stfld bool System.Number/NumberBuffer::IsNegative
			IL_03fc: ldloc.s 12
			IL_03fe: brfalse.s IL_040e

			IL_0400: ldloc.s 4
			IL_0402: ldc.i4.1
			IL_0403: or
			IL_0404: stloc.s 4
			IL_0406: ldloc.s 7
			IL_0408: ldc.i4.2
			IL_0409: sub
			IL_040a: stloc.s 5
			IL_040c: br.s IL_043e

			IL_040e: ldloc.s 6
			IL_0410: ldc.i4.s 41
			IL_0412: bne.un.s IL_0423

			IL_0414: ldloc.s 4
			IL_0416: ldc.i4.2
			IL_0417: and
			IL_0418: brfalse.s IL_0423

			IL_041a: ldloc.s 4
			IL_041c: ldc.i4.s -3
			IL_041e: and
			IL_041f: stloc.s 4
			IL_0421: br.s IL_043e

			IL_0423: ldloc.2
			IL_0424: brfalse.s IL_0455

			IL_0426: ldloc.s 5
			IL_0428: ldarg.1
			IL_0429: ldloc.2
			IL_042a: call char* System.Number::MatchChars(char*, char*, string)
			IL_042f: dup
			IL_0430: stloc.s 7
			IL_0432: ldc.i4.0
			IL_0433: conv.u
			IL_0434: beq.s IL_0455

			IL_0436: ldnull
			IL_0437: stloc.2
			IL_0438: ldloc.s 7
			IL_043a: ldc.i4.2
			IL_043b: sub
			IL_043c: stloc.s 5

			IL_043e: ldloc.s 5
			IL_0440: ldc.i4.2
			IL_0441: add
			IL_0442: dup
			IL_0443: stloc.s 5
			IL_0445: ldarg.1
			IL_0446: blt.un.s IL_044b

			IL_0448: ldc.i4.0
			IL_0449: br.s IL_044e

			IL_044b: ldloc.s 5
			IL_044d: ldind.u2

			IL_044e: stloc.s 6
			IL_0450: br IL_03aa
		// end loop

		IL_0455: ldloc.s 4
		IL_0457: ldc.i4.2
		IL_0458: and
		IL_0459: brtrue.s IL_048e

		IL_045b: ldloc.s 4
		IL_045d: ldc.i4.8
		IL_045e: and
		IL_045f: brtrue.s IL_0488

		IL_0461: ldarg.3
		IL_0462: ldfld valuetype System.Number/NumberBufferKind System.Number/NumberBuffer::Kind
		IL_0467: ldc.i4.2
		IL_0468: beq.s IL_0471

		IL_046a: ldarg.3
		IL_046b: ldc.i4.0
		IL_046c: stfld int32 System.Number/NumberBuffer::Scale

		IL_0471: ldarg.3
		IL_0472: ldfld valuetype System.Number/NumberBufferKind System.Number/NumberBuffer::Kind
		IL_0477: ldc.i4.1
		IL_0478: bne.un.s IL_0488

		IL_047a: ldloc.s 4
		IL_047c: ldc.i4.s 16
		IL_047e: and
		IL_047f: brtrue.s IL_0488

		IL_0481: ldarg.3
		IL_0482: ldc.i4.0
		IL_0483: stfld bool System.Number/NumberBuffer::IsNegative

		IL_0488: ldarg.0
		IL_0489: ldloc.s 5
		IL_048b: stind.i
		IL_048c: ldc.i4.1
		IL_048d: ret

		IL_048e: ldarg.0
		IL_048f: ldloc.s 5
		IL_0491: stind.i
		IL_0492: ldc.i4.0
		IL_0493: ret
	} // end of method Number::TryParseNumber

	.method assembly hidebysig static 
		valuetype System.Number/ParsingStatus TryParseInt32 (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info,
			[out] int32& result
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x7783c
		// Code size 52 (0x34)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldc.i4.s -8
		IL_0003: and
		IL_0004: brtrue.s IL_0010

		IL_0006: ldarg.0
		IL_0007: ldarg.1
		IL_0008: ldarg.2
		IL_0009: ldarg.3
		IL_000a: call valuetype System.Number/ParsingStatus System.Number::TryParseInt32IntegerStyle(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, int32&)
		IL_000f: ret

		IL_0010: ldarg.1
		IL_0011: ldc.i4 512
		IL_0016: and
		IL_0017: brfalse.s IL_002a

		IL_0019: ldarg.3
		IL_001a: ldc.i4.0
		IL_001b: stind.i4
		IL_001c: ldarg.0
		IL_001d: ldarg.1
		IL_001e: ldarg.3
		IL_001f: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<int32, uint32>(!!0&)
		IL_0024: call valuetype System.Number/ParsingStatus System.Number::TryParseUInt32HexNumberStyle(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, uint32&)
		IL_0029: ret

		IL_002a: ldarg.0
		IL_002b: ldarg.1
		IL_002c: ldarg.2
		IL_002d: ldarg.3
		IL_002e: call valuetype System.Number/ParsingStatus System.Number::TryParseInt32Number(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, int32&)
		IL_0033: ret
	} // end of method Number::TryParseInt32

	.method private hidebysig static 
		valuetype System.Number/ParsingStatus TryParseInt32Number (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info,
			[out] int32& result
		) cil managed 
	{
		// Method begins at RVA 0x77874
		// Code size 48 (0x30)
		.maxstack 4
		.locals (
			[0] uint8*,
			[1] valuetype System.Number/NumberBuffer
		)

		IL_0000: ldarg.3
		IL_0001: ldc.i4.0
		IL_0002: stind.i4
		IL_0003: ldc.i4.s 11
		IL_0005: conv.u
		IL_0006: localloc
		IL_0008: stloc.0
		IL_0009: ldloca.s 1
		IL_000b: ldc.i4.1
		IL_000c: ldloc.0
		IL_000d: ldc.i4.s 11
		IL_000f: call instance void System.Number/NumberBuffer::.ctor(valuetype System.Number/NumberBufferKind, uint8*, int32)
		IL_0014: ldarg.0
		IL_0015: ldarg.1
		IL_0016: ldloca.s 1
		IL_0018: ldarg.2
		IL_0019: call bool System.Number::TryStringToNumber(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, valuetype System.Number/NumberBuffer&, class System.Globalization.NumberFormatInfo)
		IL_001e: brtrue.s IL_0022

		IL_0020: ldc.i4.1
		IL_0021: ret

		IL_0022: ldloca.s 1
		IL_0024: ldarg.3
		IL_0025: call bool System.Number::TryNumberToInt32(valuetype System.Number/NumberBuffer&, int32&)
		IL_002a: brtrue.s IL_002e

		IL_002c: ldc.i4.2
		IL_002d: ret

		IL_002e: ldc.i4.0
		IL_002f: ret
	} // end of method Number::TryParseInt32Number

	.method assembly hidebysig static 
		valuetype System.Number/ParsingStatus TryParseInt32IntegerStyle (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info,
			[out] int32& result
		) cil managed 
	{
		// Method begins at RVA 0x778b0
		// Code size 688 (0x2b0)
		.maxstack 5
		.locals (
			[0] int32,
			[1] int32,
			[2] int32,
			[3] bool,
			[4] int32,
			[5] valuetype System.Number/ParsingStatus,
			[6] string,
			[7] string,
			[8] int32
		)

		IL_0000: ldarga.s 'value'
		IL_0002: call instance bool valuetype System.ReadOnlySpan`1<char>::get_IsEmpty()
		IL_0007: brtrue IL_025a

		IL_000c: ldc.i4.0
		IL_000d: stloc.0
		IL_000e: ldarga.s 'value'
		IL_0010: ldc.i4.0
		IL_0011: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_0016: ldind.u2
		IL_0017: stloc.1
		IL_0018: ldarg.1
		IL_0019: ldc.i4.1
		IL_001a: and
		IL_001b: brfalse.s IL_0048

		IL_001d: ldloc.1
		IL_001e: call bool System.Number::IsWhite(int32)
		IL_0023: brfalse.s IL_0048
		// loop start (head: IL_0025)
			IL_0025: ldloc.0
			IL_0026: ldc.i4.1
			IL_0027: add
			IL_0028: stloc.0
			IL_0029: ldloc.0
			IL_002a: ldarga.s 'value'
			IL_002c: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0031: bge.un IL_025a

			IL_0036: ldarga.s 'value'
			IL_0038: ldloc.0
			IL_0039: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_003e: ldind.u2
			IL_003f: stloc.1
			IL_0040: ldloc.1
			IL_0041: call bool System.Number::IsWhite(int32)
			IL_0046: brtrue.s IL_0025
		// end loop

		IL_0048: ldc.i4.1
		IL_0049: stloc.2
		IL_004a: ldarg.1
		IL_004b: ldc.i4.4
		IL_004c: and
		IL_004d: brfalse IL_013b

		IL_0052: ldarg.2
		IL_0053: callvirt instance bool System.Globalization.NumberFormatInfo::get_HasInvariantNumberSigns()
		IL_0058: brfalse.s IL_00a9

		IL_005a: ldloc.1
		IL_005b: ldc.i4.s 45
		IL_005d: bne.un.s IL_0081

		IL_005f: ldc.i4.m1
		IL_0060: stloc.2
		IL_0061: ldloc.0
		IL_0062: ldc.i4.1
		IL_0063: add
		IL_0064: stloc.0
		IL_0065: ldloc.0
		IL_0066: ldarga.s 'value'
		IL_0068: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_006d: bge.un IL_025a

		IL_0072: ldarga.s 'value'
		IL_0074: ldloc.0
		IL_0075: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_007a: ldind.u2
		IL_007b: stloc.1
		IL_007c: br IL_013b

		IL_0081: ldloc.1
		IL_0082: ldc.i4.s 43
		IL_0084: bne.un IL_013b

		IL_0089: ldloc.0
		IL_008a: ldc.i4.1
		IL_008b: add
		IL_008c: stloc.0
		IL_008d: ldloc.0
		IL_008e: ldarga.s 'value'
		IL_0090: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0095: bge.un IL_025a

		IL_009a: ldarga.s 'value'
		IL_009c: ldloc.0
		IL_009d: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_00a2: ldind.u2
		IL_00a3: stloc.1
		IL_00a4: br IL_013b

		IL_00a9: ldarga.s 'value'
		IL_00ab: ldloc.0
		IL_00ac: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::Slice(int32)
		IL_00b1: starg.s 'value'
		IL_00b3: ldc.i4.0
		IL_00b4: stloc.0
		IL_00b5: ldarg.2
		IL_00b6: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveSign()
		IL_00bb: stloc.s 6
		IL_00bd: ldarg.2
		IL_00be: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_00c3: stloc.s 7
		IL_00c5: ldloc.s 6
		IL_00c7: call bool System.String::IsNullOrEmpty(string)
		IL_00cc: brtrue.s IL_0100

		IL_00ce: ldarg.0
		IL_00cf: ldloc.s 6
		IL_00d1: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_00d6: call bool System.MemoryExtensions::StartsWith<char>(valuetype System.ReadOnlySpan`1<!!0>, valuetype System.ReadOnlySpan`1<!!0>)
		IL_00db: brfalse.s IL_0100

		IL_00dd: ldloc.0
		IL_00de: ldloc.s 6
		IL_00e0: callvirt instance int32 System.String::get_Length()
		IL_00e5: add
		IL_00e6: stloc.0
		IL_00e7: ldloc.0
		IL_00e8: ldarga.s 'value'
		IL_00ea: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_00ef: bge.un IL_025a

		IL_00f4: ldarga.s 'value'
		IL_00f6: ldloc.0
		IL_00f7: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_00fc: ldind.u2
		IL_00fd: stloc.1
		IL_00fe: br.s IL_013b

		IL_0100: ldloc.s 7
		IL_0102: call bool System.String::IsNullOrEmpty(string)
		IL_0107: brtrue.s IL_013b

		IL_0109: ldarg.0
		IL_010a: ldloc.s 7
		IL_010c: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0111: call bool System.MemoryExtensions::StartsWith<char>(valuetype System.ReadOnlySpan`1<!!0>, valuetype System.ReadOnlySpan`1<!!0>)
		IL_0116: brfalse.s IL_013b

		IL_0118: ldc.i4.m1
		IL_0119: stloc.2
		IL_011a: ldloc.0
		IL_011b: ldloc.s 7
		IL_011d: callvirt instance int32 System.String::get_Length()
		IL_0122: add
		IL_0123: stloc.0
		IL_0124: ldloc.0
		IL_0125: ldarga.s 'value'
		IL_0127: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_012c: bge.un IL_025a

		IL_0131: ldarga.s 'value'
		IL_0133: ldloc.0
		IL_0134: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_0139: ldind.u2
		IL_013a: stloc.1

		IL_013b: ldc.i4.0
		IL_013c: stloc.3
		IL_013d: ldc.i4.0
		IL_013e: stloc.s 4
		IL_0140: ldloc.1
		IL_0141: call bool System.Number::IsDigit(int32)
		IL_0146: brfalse IL_025a

		IL_014b: ldloc.1
		IL_014c: ldc.i4.s 48
		IL_014e: bne.un.s IL_017b
		// loop start (head: IL_0150)
			IL_0150: ldloc.0
			IL_0151: ldc.i4.1
			IL_0152: add
			IL_0153: stloc.0
			IL_0154: ldloc.0
			IL_0155: ldarga.s 'value'
			IL_0157: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_015c: bge.un IL_024e

			IL_0161: ldarga.s 'value'
			IL_0163: ldloc.0
			IL_0164: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_0169: ldind.u2
			IL_016a: stloc.1
			IL_016b: ldloc.1
			IL_016c: ldc.i4.s 48
			IL_016e: beq.s IL_0150
		// end loop

		IL_0170: ldloc.1
		IL_0171: call bool System.Number::IsDigit(int32)
		IL_0176: brfalse IL_026a

		IL_017b: ldloc.1
		IL_017c: ldc.i4.s 48
		IL_017e: sub
		IL_017f: stloc.s 4
		IL_0181: ldloc.0
		IL_0182: ldc.i4.1
		IL_0183: add
		IL_0184: stloc.0
		IL_0185: ldc.i4.0
		IL_0186: stloc.s 8
		IL_0188: br.s IL_01c2
		// loop start (head: IL_01c2)
			IL_018a: ldloc.0
			IL_018b: ldarga.s 'value'
			IL_018d: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0192: bge.un IL_024e

			IL_0197: ldarga.s 'value'
			IL_0199: ldloc.0
			IL_019a: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_019f: ldind.u2
			IL_01a0: stloc.1
			IL_01a1: ldloc.1
			IL_01a2: call bool System.Number::IsDigit(int32)
			IL_01a7: brfalse IL_026a

			IL_01ac: ldloc.0
			IL_01ad: ldc.i4.1
			IL_01ae: add
			IL_01af: stloc.0
			IL_01b0: ldc.i4.s 10
			IL_01b2: ldloc.s 4
			IL_01b4: mul
			IL_01b5: ldloc.1
			IL_01b6: add
			IL_01b7: ldc.i4.s 48
			IL_01b9: sub
			IL_01ba: stloc.s 4
			IL_01bc: ldloc.s 8
			IL_01be: ldc.i4.1
			IL_01bf: add
			IL_01c0: stloc.s 8

			IL_01c2: ldloc.s 8
			IL_01c4: ldc.i4.8
			IL_01c5: blt.s IL_018a
		// end loop

		IL_01c7: ldloc.0
		IL_01c8: ldarga.s 'value'
		IL_01ca: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_01cf: bge.un.s IL_024e

		IL_01d1: ldarga.s 'value'
		IL_01d3: ldloc.0
		IL_01d4: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_01d9: ldind.u2
		IL_01da: stloc.1
		IL_01db: ldloc.1
		IL_01dc: call bool System.Number::IsDigit(int32)
		IL_01e1: brfalse IL_026a

		IL_01e6: ldloc.0
		IL_01e7: ldc.i4.1
		IL_01e8: add
		IL_01e9: stloc.0
		IL_01ea: ldloc.s 4
		IL_01ec: ldc.i4 214748364
		IL_01f1: cgt
		IL_01f3: stloc.3
		IL_01f4: ldloc.s 4
		IL_01f6: ldc.i4.s 10
		IL_01f8: mul
		IL_01f9: ldloc.1
		IL_01fa: add
		IL_01fb: ldc.i4.s 48
		IL_01fd: sub
		IL_01fe: stloc.s 4
		IL_0200: ldloc.3
		IL_0201: ldloc.s 4
		IL_0203: ldc.i4 2147483647
		IL_0208: ldloc.2
		IL_0209: ldc.i4.s 31
		IL_020b: shr.un
		IL_020c: add
		IL_020d: cgt.un
		IL_020f: or
		IL_0210: stloc.3
		IL_0211: ldloc.0
		IL_0212: ldarga.s 'value'
		IL_0214: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0219: bge.un.s IL_024b

		IL_021b: ldarga.s 'value'
		IL_021d: ldloc.0
		IL_021e: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_0223: ldind.u2
		IL_0224: stloc.1
		IL_0225: br.s IL_0241
		// loop start (head: IL_0241)
			IL_0227: ldc.i4.1
			IL_0228: stloc.3
			IL_0229: ldloc.0
			IL_022a: ldc.i4.1
			IL_022b: add
			IL_022c: stloc.0
			IL_022d: ldloc.0
			IL_022e: ldarga.s 'value'
			IL_0230: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0235: bge.un.s IL_0262

			IL_0237: ldarga.s 'value'
			IL_0239: ldloc.0
			IL_023a: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_023f: ldind.u2
			IL_0240: stloc.1

			IL_0241: ldloc.1
			IL_0242: call bool System.Number::IsDigit(int32)
			IL_0247: brtrue.s IL_0227
		// end loop

		IL_0249: br.s IL_026a

		IL_024b: ldloc.3
		IL_024c: brtrue.s IL_0262

		IL_024e: ldarg.3
		IL_024f: ldloc.s 4
		IL_0251: ldloc.2
		IL_0252: mul
		IL_0253: stind.i4
		IL_0254: ldc.i4.0
		IL_0255: stloc.s 5

		IL_0257: ldloc.s 5
		IL_0259: ret

		IL_025a: ldarg.3
		IL_025b: ldc.i4.0
		IL_025c: stind.i4
		IL_025d: ldc.i4.1
		IL_025e: stloc.s 5
		IL_0260: br.s IL_0257

		IL_0262: ldarg.3
		IL_0263: ldc.i4.0
		IL_0264: stind.i4
		IL_0265: ldc.i4.2
		IL_0266: stloc.s 5
		IL_0268: br.s IL_0257

		IL_026a: ldloc.1
		IL_026b: call bool System.Number::IsWhite(int32)
		IL_0270: brfalse.s IL_02a5

		IL_0272: ldarg.1
		IL_0273: ldc.i4.2
		IL_0274: and
		IL_0275: brfalse.s IL_025a

		IL_0277: ldloc.0
		IL_0278: ldc.i4.1
		IL_0279: add
		IL_027a: stloc.0
		IL_027b: br.s IL_0291
		// loop start (head: IL_0291)
			IL_027d: ldarga.s 'value'
			IL_027f: ldloc.0
			IL_0280: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_0285: ldind.u2
			IL_0286: call bool System.Number::IsWhite(int32)
			IL_028b: brfalse.s IL_029b

			IL_028d: ldloc.0
			IL_028e: ldc.i4.1
			IL_028f: add
			IL_0290: stloc.0

			IL_0291: ldloc.0
			IL_0292: ldarga.s 'value'
			IL_0294: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0299: blt.s IL_027d
		// end loop

		IL_029b: ldloc.0
		IL_029c: ldarga.s 'value'
		IL_029e: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_02a3: bge.un.s IL_024b

		IL_02a5: ldarg.0
		IL_02a6: ldloc.0
		IL_02a7: call bool System.Number::TrailingZeros(valuetype System.ReadOnlySpan`1<char>, int32)
		IL_02ac: brtrue.s IL_024b

		IL_02ae: br.s IL_025a
	} // end of method Number::TryParseInt32IntegerStyle

	.method assembly hidebysig static 
		valuetype System.Number/ParsingStatus TryParseInt64IntegerStyle (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info,
			[out] int64& result
		) cil managed 
	{
		// Method begins at RVA 0x77b6c
		// Code size 712 (0x2c8)
		.maxstack 5
		.locals (
			[0] int32,
			[1] int32,
			[2] int32,
			[3] bool,
			[4] int64,
			[5] valuetype System.Number/ParsingStatus,
			[6] string,
			[7] string,
			[8] int32
		)

		IL_0000: ldarga.s 'value'
		IL_0002: call instance bool valuetype System.ReadOnlySpan`1<char>::get_IsEmpty()
		IL_0007: brtrue IL_0270

		IL_000c: ldc.i4.0
		IL_000d: stloc.0
		IL_000e: ldarga.s 'value'
		IL_0010: ldc.i4.0
		IL_0011: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_0016: ldind.u2
		IL_0017: stloc.1
		IL_0018: ldarg.1
		IL_0019: ldc.i4.1
		IL_001a: and
		IL_001b: brfalse.s IL_0048

		IL_001d: ldloc.1
		IL_001e: call bool System.Number::IsWhite(int32)
		IL_0023: brfalse.s IL_0048
		// loop start (head: IL_0025)
			IL_0025: ldloc.0
			IL_0026: ldc.i4.1
			IL_0027: add
			IL_0028: stloc.0
			IL_0029: ldloc.0
			IL_002a: ldarga.s 'value'
			IL_002c: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0031: bge.un IL_0270

			IL_0036: ldarga.s 'value'
			IL_0038: ldloc.0
			IL_0039: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_003e: ldind.u2
			IL_003f: stloc.1
			IL_0040: ldloc.1
			IL_0041: call bool System.Number::IsWhite(int32)
			IL_0046: brtrue.s IL_0025
		// end loop

		IL_0048: ldc.i4.1
		IL_0049: stloc.2
		IL_004a: ldarg.1
		IL_004b: ldc.i4.4
		IL_004c: and
		IL_004d: brfalse IL_013b

		IL_0052: ldarg.2
		IL_0053: callvirt instance bool System.Globalization.NumberFormatInfo::get_HasInvariantNumberSigns()
		IL_0058: brfalse.s IL_00a9

		IL_005a: ldloc.1
		IL_005b: ldc.i4.s 45
		IL_005d: bne.un.s IL_0081

		IL_005f: ldc.i4.m1
		IL_0060: stloc.2
		IL_0061: ldloc.0
		IL_0062: ldc.i4.1
		IL_0063: add
		IL_0064: stloc.0
		IL_0065: ldloc.0
		IL_0066: ldarga.s 'value'
		IL_0068: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_006d: bge.un IL_0270

		IL_0072: ldarga.s 'value'
		IL_0074: ldloc.0
		IL_0075: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_007a: ldind.u2
		IL_007b: stloc.1
		IL_007c: br IL_013b

		IL_0081: ldloc.1
		IL_0082: ldc.i4.s 43
		IL_0084: bne.un IL_013b

		IL_0089: ldloc.0
		IL_008a: ldc.i4.1
		IL_008b: add
		IL_008c: stloc.0
		IL_008d: ldloc.0
		IL_008e: ldarga.s 'value'
		IL_0090: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0095: bge.un IL_0270

		IL_009a: ldarga.s 'value'
		IL_009c: ldloc.0
		IL_009d: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_00a2: ldind.u2
		IL_00a3: stloc.1
		IL_00a4: br IL_013b

		IL_00a9: ldarga.s 'value'
		IL_00ab: ldloc.0
		IL_00ac: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::Slice(int32)
		IL_00b1: starg.s 'value'
		IL_00b3: ldc.i4.0
		IL_00b4: stloc.0
		IL_00b5: ldarg.2
		IL_00b6: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveSign()
		IL_00bb: stloc.s 6
		IL_00bd: ldarg.2
		IL_00be: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_00c3: stloc.s 7
		IL_00c5: ldloc.s 6
		IL_00c7: call bool System.String::IsNullOrEmpty(string)
		IL_00cc: brtrue.s IL_0100

		IL_00ce: ldarg.0
		IL_00cf: ldloc.s 6
		IL_00d1: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_00d6: call bool System.MemoryExtensions::StartsWith<char>(valuetype System.ReadOnlySpan`1<!!0>, valuetype System.ReadOnlySpan`1<!!0>)
		IL_00db: brfalse.s IL_0100

		IL_00dd: ldloc.0
		IL_00de: ldloc.s 6
		IL_00e0: callvirt instance int32 System.String::get_Length()
		IL_00e5: add
		IL_00e6: stloc.0
		IL_00e7: ldloc.0
		IL_00e8: ldarga.s 'value'
		IL_00ea: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_00ef: bge.un IL_0270

		IL_00f4: ldarga.s 'value'
		IL_00f6: ldloc.0
		IL_00f7: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_00fc: ldind.u2
		IL_00fd: stloc.1
		IL_00fe: br.s IL_013b

		IL_0100: ldloc.s 7
		IL_0102: call bool System.String::IsNullOrEmpty(string)
		IL_0107: brtrue.s IL_013b

		IL_0109: ldarg.0
		IL_010a: ldloc.s 7
		IL_010c: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0111: call bool System.MemoryExtensions::StartsWith<char>(valuetype System.ReadOnlySpan`1<!!0>, valuetype System.ReadOnlySpan`1<!!0>)
		IL_0116: brfalse.s IL_013b

		IL_0118: ldc.i4.m1
		IL_0119: stloc.2
		IL_011a: ldloc.0
		IL_011b: ldloc.s 7
		IL_011d: callvirt instance int32 System.String::get_Length()
		IL_0122: add
		IL_0123: stloc.0
		IL_0124: ldloc.0
		IL_0125: ldarga.s 'value'
		IL_0127: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_012c: bge.un IL_0270

		IL_0131: ldarga.s 'value'
		IL_0133: ldloc.0
		IL_0134: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_0139: ldind.u2
		IL_013a: stloc.1

		IL_013b: ldc.i4.0
		IL_013c: stloc.3
		IL_013d: ldc.i4.0
		IL_013e: conv.i8
		IL_013f: stloc.s 4
		IL_0141: ldloc.1
		IL_0142: call bool System.Number::IsDigit(int32)
		IL_0147: brfalse IL_0270

		IL_014c: ldloc.1
		IL_014d: ldc.i4.s 48
		IL_014f: bne.un.s IL_017c
		// loop start (head: IL_0151)
			IL_0151: ldloc.0
			IL_0152: ldc.i4.1
			IL_0153: add
			IL_0154: stloc.0
			IL_0155: ldloc.0
			IL_0156: ldarga.s 'value'
			IL_0158: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_015d: bge.un IL_0263

			IL_0162: ldarga.s 'value'
			IL_0164: ldloc.0
			IL_0165: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_016a: ldind.u2
			IL_016b: stloc.1
			IL_016c: ldloc.1
			IL_016d: ldc.i4.s 48
			IL_016f: beq.s IL_0151
		// end loop

		IL_0171: ldloc.1
		IL_0172: call bool System.Number::IsDigit(int32)
		IL_0177: brfalse IL_0282

		IL_017c: ldloc.1
		IL_017d: ldc.i4.s 48
		IL_017f: sub
		IL_0180: conv.i8
		IL_0181: stloc.s 4
		IL_0183: ldloc.0
		IL_0184: ldc.i4.1
		IL_0185: add
		IL_0186: stloc.0
		IL_0187: ldc.i4.0
		IL_0188: stloc.s 8
		IL_018a: br.s IL_01c7
		// loop start (head: IL_01c7)
			IL_018c: ldloc.0
			IL_018d: ldarga.s 'value'
			IL_018f: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0194: bge.un IL_0263

			IL_0199: ldarga.s 'value'
			IL_019b: ldloc.0
			IL_019c: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_01a1: ldind.u2
			IL_01a2: stloc.1
			IL_01a3: ldloc.1
			IL_01a4: call bool System.Number::IsDigit(int32)
			IL_01a9: brfalse IL_0282

			IL_01ae: ldloc.0
			IL_01af: ldc.i4.1
			IL_01b0: add
			IL_01b1: stloc.0
			IL_01b2: ldc.i4.s 10
			IL_01b4: conv.i8
			IL_01b5: ldloc.s 4
			IL_01b7: mul
			IL_01b8: ldloc.1
			IL_01b9: conv.i8
			IL_01ba: add
			IL_01bb: ldc.i4.s 48
			IL_01bd: conv.i8
			IL_01be: sub
			IL_01bf: stloc.s 4
			IL_01c1: ldloc.s 8
			IL_01c3: ldc.i4.1
			IL_01c4: add
			IL_01c5: stloc.s 8

			IL_01c7: ldloc.s 8
			IL_01c9: ldc.i4.s 17
			IL_01cb: blt.s IL_018c
		// end loop

		IL_01cd: ldloc.0
		IL_01ce: ldarga.s 'value'
		IL_01d0: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_01d5: bge.un IL_0263

		IL_01da: ldarga.s 'value'
		IL_01dc: ldloc.0
		IL_01dd: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_01e2: ldind.u2
		IL_01e3: stloc.1
		IL_01e4: ldloc.1
		IL_01e5: call bool System.Number::IsDigit(int32)
		IL_01ea: brfalse IL_0282

		IL_01ef: ldloc.0
		IL_01f0: ldc.i4.1
		IL_01f1: add
		IL_01f2: stloc.0
		IL_01f3: ldloc.s 4
		IL_01f5: ldc.i8 922337203685477580
		IL_01fe: cgt
		IL_0200: stloc.3
		IL_0201: ldloc.s 4
		IL_0203: ldc.i4.s 10
		IL_0205: conv.i8
		IL_0206: mul
		IL_0207: ldloc.1
		IL_0208: conv.i8
		IL_0209: add
		IL_020a: ldc.i4.s 48
		IL_020c: conv.i8
		IL_020d: sub
		IL_020e: stloc.s 4
		IL_0210: ldloc.3
		IL_0211: ldloc.s 4
		IL_0213: ldc.i8 9223372036854775807
		IL_021c: ldloc.2
		IL_021d: ldc.i4.s 31
		IL_021f: shr.un
		IL_0220: conv.u8
		IL_0221: add
		IL_0222: cgt.un
		IL_0224: or
		IL_0225: stloc.3
		IL_0226: ldloc.0
		IL_0227: ldarga.s 'value'
		IL_0229: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_022e: bge.un.s IL_0260

		IL_0230: ldarga.s 'value'
		IL_0232: ldloc.0
		IL_0233: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_0238: ldind.u2
		IL_0239: stloc.1
		IL_023a: br.s IL_0256
		// loop start (head: IL_0256)
			IL_023c: ldc.i4.1
			IL_023d: stloc.3
			IL_023e: ldloc.0
			IL_023f: ldc.i4.1
			IL_0240: add
			IL_0241: stloc.0
			IL_0242: ldloc.0
			IL_0243: ldarga.s 'value'
			IL_0245: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_024a: bge.un.s IL_0279

			IL_024c: ldarga.s 'value'
			IL_024e: ldloc.0
			IL_024f: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_0254: ldind.u2
			IL_0255: stloc.1

			IL_0256: ldloc.1
			IL_0257: call bool System.Number::IsDigit(int32)
			IL_025c: brtrue.s IL_023c
		// end loop

		IL_025e: br.s IL_0282

		IL_0260: ldloc.3
		IL_0261: brtrue.s IL_0279

		IL_0263: ldarg.3
		IL_0264: ldloc.s 4
		IL_0266: ldloc.2
		IL_0267: conv.i8
		IL_0268: mul
		IL_0269: stind.i8
		IL_026a: ldc.i4.0
		IL_026b: stloc.s 5

		IL_026d: ldloc.s 5
		IL_026f: ret

		IL_0270: ldarg.3
		IL_0271: ldc.i4.0
		IL_0272: conv.i8
		IL_0273: stind.i8
		IL_0274: ldc.i4.1
		IL_0275: stloc.s 5
		IL_0277: br.s IL_026d

		IL_0279: ldarg.3
		IL_027a: ldc.i4.0
		IL_027b: conv.i8
		IL_027c: stind.i8
		IL_027d: ldc.i4.2
		IL_027e: stloc.s 5
		IL_0280: br.s IL_026d

		IL_0282: ldloc.1
		IL_0283: call bool System.Number::IsWhite(int32)
		IL_0288: brfalse.s IL_02bd

		IL_028a: ldarg.1
		IL_028b: ldc.i4.2
		IL_028c: and
		IL_028d: brfalse.s IL_0270

		IL_028f: ldloc.0
		IL_0290: ldc.i4.1
		IL_0291: add
		IL_0292: stloc.0
		IL_0293: br.s IL_02a9
		// loop start (head: IL_02a9)
			IL_0295: ldarga.s 'value'
			IL_0297: ldloc.0
			IL_0298: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_029d: ldind.u2
			IL_029e: call bool System.Number::IsWhite(int32)
			IL_02a3: brfalse.s IL_02b3

			IL_02a5: ldloc.0
			IL_02a6: ldc.i4.1
			IL_02a7: add
			IL_02a8: stloc.0

			IL_02a9: ldloc.0
			IL_02aa: ldarga.s 'value'
			IL_02ac: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_02b1: blt.s IL_0295
		// end loop

		IL_02b3: ldloc.0
		IL_02b4: ldarga.s 'value'
		IL_02b6: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_02bb: bge.un.s IL_0260

		IL_02bd: ldarg.0
		IL_02be: ldloc.0
		IL_02bf: call bool System.Number::TrailingZeros(valuetype System.ReadOnlySpan`1<char>, int32)
		IL_02c4: brtrue.s IL_0260

		IL_02c6: br.s IL_0270
	} // end of method Number::TryParseInt64IntegerStyle

	.method assembly hidebysig static 
		valuetype System.Number/ParsingStatus TryParseInt64 (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info,
			[out] int64& result
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x77e40
		// Code size 53 (0x35)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldc.i4.s -8
		IL_0003: and
		IL_0004: brtrue.s IL_0010

		IL_0006: ldarg.0
		IL_0007: ldarg.1
		IL_0008: ldarg.2
		IL_0009: ldarg.3
		IL_000a: call valuetype System.Number/ParsingStatus System.Number::TryParseInt64IntegerStyle(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, int64&)
		IL_000f: ret

		IL_0010: ldarg.1
		IL_0011: ldc.i4 512
		IL_0016: and
		IL_0017: brfalse.s IL_002b

		IL_0019: ldarg.3
		IL_001a: ldc.i4.0
		IL_001b: conv.i8
		IL_001c: stind.i8
		IL_001d: ldarg.0
		IL_001e: ldarg.1
		IL_001f: ldarg.3
		IL_0020: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<int64, uint64>(!!0&)
		IL_0025: call valuetype System.Number/ParsingStatus System.Number::TryParseUInt64HexNumberStyle(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, uint64&)
		IL_002a: ret

		IL_002b: ldarg.0
		IL_002c: ldarg.1
		IL_002d: ldarg.2
		IL_002e: ldarg.3
		IL_002f: call valuetype System.Number/ParsingStatus System.Number::TryParseInt64Number(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, int64&)
		IL_0034: ret
	} // end of method Number::TryParseInt64

	.method private hidebysig static 
		valuetype System.Number/ParsingStatus TryParseInt64Number (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info,
			[out] int64& result
		) cil managed 
	{
		// Method begins at RVA 0x77e78
		// Code size 49 (0x31)
		.maxstack 4
		.locals (
			[0] uint8*,
			[1] valuetype System.Number/NumberBuffer
		)

		IL_0000: ldarg.3
		IL_0001: ldc.i4.0
		IL_0002: conv.i8
		IL_0003: stind.i8
		IL_0004: ldc.i4.s 20
		IL_0006: conv.u
		IL_0007: localloc
		IL_0009: stloc.0
		IL_000a: ldloca.s 1
		IL_000c: ldc.i4.1
		IL_000d: ldloc.0
		IL_000e: ldc.i4.s 20
		IL_0010: call instance void System.Number/NumberBuffer::.ctor(valuetype System.Number/NumberBufferKind, uint8*, int32)
		IL_0015: ldarg.0
		IL_0016: ldarg.1
		IL_0017: ldloca.s 1
		IL_0019: ldarg.2
		IL_001a: call bool System.Number::TryStringToNumber(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, valuetype System.Number/NumberBuffer&, class System.Globalization.NumberFormatInfo)
		IL_001f: brtrue.s IL_0023

		IL_0021: ldc.i4.1
		IL_0022: ret

		IL_0023: ldloca.s 1
		IL_0025: ldarg.3
		IL_0026: call bool System.Number::TryNumberToInt64(valuetype System.Number/NumberBuffer&, int64&)
		IL_002b: brtrue.s IL_002f

		IL_002d: ldc.i4.2
		IL_002e: ret

		IL_002f: ldc.i4.0
		IL_0030: ret
	} // end of method Number::TryParseInt64Number

	.method assembly hidebysig static 
		valuetype System.Number/ParsingStatus TryParseUInt32 (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info,
			[out] uint32& result
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x77eb5
		// Code size 44 (0x2c)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldc.i4.s -8
		IL_0003: and
		IL_0004: brtrue.s IL_0010

		IL_0006: ldarg.0
		IL_0007: ldarg.1
		IL_0008: ldarg.2
		IL_0009: ldarg.3
		IL_000a: call valuetype System.Number/ParsingStatus System.Number::TryParseUInt32IntegerStyle(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, uint32&)
		IL_000f: ret

		IL_0010: ldarg.1
		IL_0011: ldc.i4 512
		IL_0016: and
		IL_0017: brfalse.s IL_0022

		IL_0019: ldarg.0
		IL_001a: ldarg.1
		IL_001b: ldarg.3
		IL_001c: call valuetype System.Number/ParsingStatus System.Number::TryParseUInt32HexNumberStyle(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, uint32&)
		IL_0021: ret

		IL_0022: ldarg.0
		IL_0023: ldarg.1
		IL_0024: ldarg.2
		IL_0025: ldarg.3
		IL_0026: call valuetype System.Number/ParsingStatus System.Number::TryParseUInt32Number(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, uint32&)
		IL_002b: ret
	} // end of method Number::TryParseUInt32

	.method private hidebysig static 
		valuetype System.Number/ParsingStatus TryParseUInt32Number (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info,
			[out] uint32& result
		) cil managed 
	{
		// Method begins at RVA 0x77ee4
		// Code size 48 (0x30)
		.maxstack 4
		.locals (
			[0] uint8*,
			[1] valuetype System.Number/NumberBuffer
		)

		IL_0000: ldarg.3
		IL_0001: ldc.i4.0
		IL_0002: stind.i4
		IL_0003: ldc.i4.s 11
		IL_0005: conv.u
		IL_0006: localloc
		IL_0008: stloc.0
		IL_0009: ldloca.s 1
		IL_000b: ldc.i4.1
		IL_000c: ldloc.0
		IL_000d: ldc.i4.s 11
		IL_000f: call instance void System.Number/NumberBuffer::.ctor(valuetype System.Number/NumberBufferKind, uint8*, int32)
		IL_0014: ldarg.0
		IL_0015: ldarg.1
		IL_0016: ldloca.s 1
		IL_0018: ldarg.2
		IL_0019: call bool System.Number::TryStringToNumber(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, valuetype System.Number/NumberBuffer&, class System.Globalization.NumberFormatInfo)
		IL_001e: brtrue.s IL_0022

		IL_0020: ldc.i4.1
		IL_0021: ret

		IL_0022: ldloca.s 1
		IL_0024: ldarg.3
		IL_0025: call bool System.Number::TryNumberToUInt32(valuetype System.Number/NumberBuffer&, uint32&)
		IL_002a: brtrue.s IL_002e

		IL_002c: ldc.i4.2
		IL_002d: ret

		IL_002e: ldc.i4.0
		IL_002f: ret
	} // end of method Number::TryParseUInt32Number

	.method assembly hidebysig static 
		valuetype System.Number/ParsingStatus TryParseUInt32IntegerStyle (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info,
			[out] uint32& result
		) cil managed 
	{
		// Method begins at RVA 0x77f20
		// Code size 682 (0x2aa)
		.maxstack 3
		.locals (
			[0] int32,
			[1] int32,
			[2] bool,
			[3] int32,
			[4] valuetype System.Number/ParsingStatus,
			[5] string,
			[6] string,
			[7] int32
		)

		IL_0000: ldarga.s 'value'
		IL_0002: call instance bool valuetype System.ReadOnlySpan`1<char>::get_IsEmpty()
		IL_0007: brtrue IL_0252

		IL_000c: ldc.i4.0
		IL_000d: stloc.0
		IL_000e: ldarga.s 'value'
		IL_0010: ldc.i4.0
		IL_0011: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_0016: ldind.u2
		IL_0017: stloc.1
		IL_0018: ldarg.1
		IL_0019: ldc.i4.1
		IL_001a: and
		IL_001b: brfalse.s IL_0048

		IL_001d: ldloc.1
		IL_001e: call bool System.Number::IsWhite(int32)
		IL_0023: brfalse.s IL_0048
		// loop start (head: IL_0025)
			IL_0025: ldloc.0
			IL_0026: ldc.i4.1
			IL_0027: add
			IL_0028: stloc.0
			IL_0029: ldloc.0
			IL_002a: ldarga.s 'value'
			IL_002c: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0031: bge.un IL_0252

			IL_0036: ldarga.s 'value'
			IL_0038: ldloc.0
			IL_0039: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_003e: ldind.u2
			IL_003f: stloc.1
			IL_0040: ldloc.1
			IL_0041: call bool System.Number::IsWhite(int32)
			IL_0046: brtrue.s IL_0025
		// end loop

		IL_0048: ldc.i4.0
		IL_0049: stloc.2
		IL_004a: ldarg.1
		IL_004b: ldc.i4.4
		IL_004c: and
		IL_004d: brfalse IL_013b

		IL_0052: ldarg.2
		IL_0053: callvirt instance bool System.Globalization.NumberFormatInfo::get_HasInvariantNumberSigns()
		IL_0058: brfalse.s IL_00a9

		IL_005a: ldloc.1
		IL_005b: ldc.i4.s 43
		IL_005d: bne.un.s IL_007f

		IL_005f: ldloc.0
		IL_0060: ldc.i4.1
		IL_0061: add
		IL_0062: stloc.0
		IL_0063: ldloc.0
		IL_0064: ldarga.s 'value'
		IL_0066: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_006b: bge.un IL_0252

		IL_0070: ldarga.s 'value'
		IL_0072: ldloc.0
		IL_0073: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_0078: ldind.u2
		IL_0079: stloc.1
		IL_007a: br IL_013b

		IL_007f: ldloc.1
		IL_0080: ldc.i4.s 45
		IL_0082: bne.un IL_013b

		IL_0087: ldc.i4.1
		IL_0088: stloc.2
		IL_0089: ldloc.0
		IL_008a: ldc.i4.1
		IL_008b: add
		IL_008c: stloc.0
		IL_008d: ldloc.0
		IL_008e: ldarga.s 'value'
		IL_0090: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0095: bge.un IL_0252

		IL_009a: ldarga.s 'value'
		IL_009c: ldloc.0
		IL_009d: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_00a2: ldind.u2
		IL_00a3: stloc.1
		IL_00a4: br IL_013b

		IL_00a9: ldarga.s 'value'
		IL_00ab: ldloc.0
		IL_00ac: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::Slice(int32)
		IL_00b1: starg.s 'value'
		IL_00b3: ldc.i4.0
		IL_00b4: stloc.0
		IL_00b5: ldarg.2
		IL_00b6: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveSign()
		IL_00bb: stloc.s 5
		IL_00bd: ldarg.2
		IL_00be: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_00c3: stloc.s 6
		IL_00c5: ldloc.s 5
		IL_00c7: call bool System.String::IsNullOrEmpty(string)
		IL_00cc: brtrue.s IL_0100

		IL_00ce: ldarg.0
		IL_00cf: ldloc.s 5
		IL_00d1: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_00d6: call bool System.MemoryExtensions::StartsWith<char>(valuetype System.ReadOnlySpan`1<!!0>, valuetype System.ReadOnlySpan`1<!!0>)
		IL_00db: brfalse.s IL_0100

		IL_00dd: ldloc.0
		IL_00de: ldloc.s 5
		IL_00e0: callvirt instance int32 System.String::get_Length()
		IL_00e5: add
		IL_00e6: stloc.0
		IL_00e7: ldloc.0
		IL_00e8: ldarga.s 'value'
		IL_00ea: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_00ef: bge.un IL_0252

		IL_00f4: ldarga.s 'value'
		IL_00f6: ldloc.0
		IL_00f7: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_00fc: ldind.u2
		IL_00fd: stloc.1
		IL_00fe: br.s IL_013b

		IL_0100: ldloc.s 6
		IL_0102: call bool System.String::IsNullOrEmpty(string)
		IL_0107: brtrue.s IL_013b

		IL_0109: ldarg.0
		IL_010a: ldloc.s 6
		IL_010c: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0111: call bool System.MemoryExtensions::StartsWith<char>(valuetype System.ReadOnlySpan`1<!!0>, valuetype System.ReadOnlySpan`1<!!0>)
		IL_0116: brfalse.s IL_013b

		IL_0118: ldc.i4.1
		IL_0119: stloc.2
		IL_011a: ldloc.0
		IL_011b: ldloc.s 6
		IL_011d: callvirt instance int32 System.String::get_Length()
		IL_0122: add
		IL_0123: stloc.0
		IL_0124: ldloc.0
		IL_0125: ldarga.s 'value'
		IL_0127: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_012c: bge.un IL_0252

		IL_0131: ldarga.s 'value'
		IL_0133: ldloc.0
		IL_0134: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_0139: ldind.u2
		IL_013a: stloc.1

		IL_013b: ldc.i4.0
		IL_013c: stloc.3
		IL_013d: ldloc.1
		IL_013e: call bool System.Number::IsDigit(int32)
		IL_0143: brfalse IL_0252

		IL_0148: ldloc.1
		IL_0149: ldc.i4.s 48
		IL_014b: bne.un.s IL_0178
		// loop start (head: IL_014d)
			IL_014d: ldloc.0
			IL_014e: ldc.i4.1
			IL_014f: add
			IL_0150: stloc.0
			IL_0151: ldloc.0
			IL_0152: ldarga.s 'value'
			IL_0154: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0159: bge.un IL_0249

			IL_015e: ldarga.s 'value'
			IL_0160: ldloc.0
			IL_0161: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_0166: ldind.u2
			IL_0167: stloc.1
			IL_0168: ldloc.1
			IL_0169: ldc.i4.s 48
			IL_016b: beq.s IL_014d
		// end loop

		IL_016d: ldloc.1
		IL_016e: call bool System.Number::IsDigit(int32)
		IL_0173: brfalse IL_0262

		IL_0178: ldloc.1
		IL_0179: ldc.i4.s 48
		IL_017b: sub
		IL_017c: stloc.3
		IL_017d: ldloc.0
		IL_017e: ldc.i4.1
		IL_017f: add
		IL_0180: stloc.0
		IL_0181: ldc.i4.0
		IL_0182: stloc.s 7
		IL_0184: br.s IL_01bc
		// loop start (head: IL_01bc)
			IL_0186: ldloc.0
			IL_0187: ldarga.s 'value'
			IL_0189: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_018e: bge.un IL_0246

			IL_0193: ldarga.s 'value'
			IL_0195: ldloc.0
			IL_0196: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_019b: ldind.u2
			IL_019c: stloc.1
			IL_019d: ldloc.1
			IL_019e: call bool System.Number::IsDigit(int32)
			IL_01a3: brfalse IL_0264

			IL_01a8: ldloc.0
			IL_01a9: ldc.i4.1
			IL_01aa: add
			IL_01ab: stloc.0
			IL_01ac: ldc.i4.s 10
			IL_01ae: ldloc.3
			IL_01af: mul
			IL_01b0: ldloc.1
			IL_01b1: add
			IL_01b2: ldc.i4.s 48
			IL_01b4: sub
			IL_01b5: stloc.3
			IL_01b6: ldloc.s 7
			IL_01b8: ldc.i4.1
			IL_01b9: add
			IL_01ba: stloc.s 7

			IL_01bc: ldloc.s 7
			IL_01be: ldc.i4.8
			IL_01bf: blt.s IL_0186
		// end loop

		IL_01c1: ldloc.0
		IL_01c2: ldarga.s 'value'
		IL_01c4: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_01c9: bge.un.s IL_0246

		IL_01cb: ldarga.s 'value'
		IL_01cd: ldloc.0
		IL_01ce: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_01d3: ldind.u2
		IL_01d4: stloc.1
		IL_01d5: ldloc.1
		IL_01d6: call bool System.Number::IsDigit(int32)
		IL_01db: brfalse IL_0264

		IL_01e0: ldloc.0
		IL_01e1: ldc.i4.1
		IL_01e2: add
		IL_01e3: stloc.0
		IL_01e4: ldloc.2
		IL_01e5: ldloc.3
		IL_01e6: ldc.i4 429496729
		IL_01eb: bgt.un.s IL_01ff

		IL_01ed: ldloc.3
		IL_01ee: ldc.i4 429496729
		IL_01f3: bne.un.s IL_01fc

		IL_01f5: ldloc.1
		IL_01f6: ldc.i4.s 53
		IL_01f8: cgt
		IL_01fa: br.s IL_0200

		IL_01fc: ldc.i4.0
		IL_01fd: br.s IL_0200

		IL_01ff: ldc.i4.1

		IL_0200: or
		IL_0201: stloc.2
		IL_0202: ldloc.3
		IL_0203: ldc.i4.s 10
		IL_0205: mul
		IL_0206: ldloc.1
		IL_0207: add
		IL_0208: ldc.i4.s 48
		IL_020a: sub
		IL_020b: stloc.3
		IL_020c: ldloc.0
		IL_020d: ldarga.s 'value'
		IL_020f: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0214: bge.un.s IL_0246

		IL_0216: ldarga.s 'value'
		IL_0218: ldloc.0
		IL_0219: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_021e: ldind.u2
		IL_021f: stloc.1
		IL_0220: br.s IL_023c
		// loop start (head: IL_023c)
			IL_0222: ldc.i4.1
			IL_0223: stloc.2
			IL_0224: ldloc.0
			IL_0225: ldc.i4.1
			IL_0226: add
			IL_0227: stloc.0
			IL_0228: ldloc.0
			IL_0229: ldarga.s 'value'
			IL_022b: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0230: bge.un.s IL_025a

			IL_0232: ldarga.s 'value'
			IL_0234: ldloc.0
			IL_0235: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_023a: ldind.u2
			IL_023b: stloc.1

			IL_023c: ldloc.1
			IL_023d: call bool System.Number::IsDigit(int32)
			IL_0242: brtrue.s IL_0222
		// end loop

		IL_0244: br.s IL_0264

		IL_0246: ldloc.2
		IL_0247: brtrue.s IL_025a

		IL_0249: ldarg.3
		IL_024a: ldloc.3
		IL_024b: stind.i4
		IL_024c: ldc.i4.0
		IL_024d: stloc.s 4

		IL_024f: ldloc.s 4
		IL_0251: ret

		IL_0252: ldarg.3
		IL_0253: ldc.i4.0
		IL_0254: stind.i4
		IL_0255: ldc.i4.1
		IL_0256: stloc.s 4
		IL_0258: br.s IL_024f

		IL_025a: ldarg.3
		IL_025b: ldc.i4.0
		IL_025c: stind.i4
		IL_025d: ldc.i4.2
		IL_025e: stloc.s 4
		IL_0260: br.s IL_024f

		IL_0262: ldc.i4.0
		IL_0263: stloc.2

		IL_0264: ldloc.1
		IL_0265: call bool System.Number::IsWhite(int32)
		IL_026a: brfalse.s IL_029f

		IL_026c: ldarg.1
		IL_026d: ldc.i4.2
		IL_026e: and
		IL_026f: brfalse.s IL_0252

		IL_0271: ldloc.0
		IL_0272: ldc.i4.1
		IL_0273: add
		IL_0274: stloc.0
		IL_0275: br.s IL_028b
		// loop start (head: IL_028b)
			IL_0277: ldarga.s 'value'
			IL_0279: ldloc.0
			IL_027a: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_027f: ldind.u2
			IL_0280: call bool System.Number::IsWhite(int32)
			IL_0285: brfalse.s IL_0295

			IL_0287: ldloc.0
			IL_0288: ldc.i4.1
			IL_0289: add
			IL_028a: stloc.0

			IL_028b: ldloc.0
			IL_028c: ldarga.s 'value'
			IL_028e: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0293: blt.s IL_0277
		// end loop

		IL_0295: ldloc.0
		IL_0296: ldarga.s 'value'
		IL_0298: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_029d: bge.un.s IL_0246

		IL_029f: ldarg.0
		IL_02a0: ldloc.0
		IL_02a1: call bool System.Number::TrailingZeros(valuetype System.ReadOnlySpan`1<char>, int32)
		IL_02a6: brtrue.s IL_0246

		IL_02a8: br.s IL_0252
	} // end of method Number::TryParseUInt32IntegerStyle

	.method private hidebysig static 
		valuetype System.Number/ParsingStatus TryParseUInt32HexNumberStyle (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			[out] uint32& result
		) cil managed 
	{
		// Method begins at RVA 0x781d8
		// Code size 373 (0x175)
		.maxstack 2
		.locals (
			[0] int32,
			[1] int32,
			[2] bool,
			[3] uint32,
			[4] valuetype System.Number/ParsingStatus,
			[5] int32,
			[6] uint32
		)

		IL_0000: ldarga.s 'value'
		IL_0002: call instance bool valuetype System.ReadOnlySpan`1<char>::get_IsEmpty()
		IL_0007: brtrue IL_011f

		IL_000c: ldc.i4.0
		IL_000d: stloc.0
		IL_000e: ldarga.s 'value'
		IL_0010: ldc.i4.0
		IL_0011: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_0016: ldind.u2
		IL_0017: stloc.1
		IL_0018: ldarg.1
		IL_0019: ldc.i4.1
		IL_001a: and
		IL_001b: brfalse.s IL_0048

		IL_001d: ldloc.1
		IL_001e: call bool System.Number::IsWhite(int32)
		IL_0023: brfalse.s IL_0048
		// loop start (head: IL_0025)
			IL_0025: ldloc.0
			IL_0026: ldc.i4.1
			IL_0027: add
			IL_0028: stloc.0
			IL_0029: ldloc.0
			IL_002a: ldarga.s 'value'
			IL_002c: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0031: bge.un IL_011f

			IL_0036: ldarga.s 'value'
			IL_0038: ldloc.0
			IL_0039: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_003e: ldind.u2
			IL_003f: stloc.1
			IL_0040: ldloc.1
			IL_0041: call bool System.Number::IsWhite(int32)
			IL_0046: brtrue.s IL_0025
		// end loop

		IL_0048: ldc.i4.0
		IL_0049: stloc.2
		IL_004a: ldc.i4.0
		IL_004b: stloc.3
		IL_004c: ldloc.1
		IL_004d: call bool System.HexConverter::IsHexChar(int32)
		IL_0052: brfalse IL_011f

		IL_0057: ldloc.1
		IL_0058: ldc.i4.s 48
		IL_005a: bne.un.s IL_0087
		// loop start (head: IL_005c)
			IL_005c: ldloc.0
			IL_005d: ldc.i4.1
			IL_005e: add
			IL_005f: stloc.0
			IL_0060: ldloc.0
			IL_0061: ldarga.s 'value'
			IL_0063: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0068: bge.un IL_0116

			IL_006d: ldarga.s 'value'
			IL_006f: ldloc.0
			IL_0070: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_0075: ldind.u2
			IL_0076: stloc.1
			IL_0077: ldloc.1
			IL_0078: ldc.i4.s 48
			IL_007a: beq.s IL_005c
		// end loop

		IL_007c: ldloc.1
		IL_007d: call bool System.HexConverter::IsHexChar(int32)
		IL_0082: brfalse IL_012f

		IL_0087: ldloc.1
		IL_0088: call int32 System.HexConverter::FromChar(int32)
		IL_008d: stloc.3
		IL_008e: ldloc.0
		IL_008f: ldc.i4.1
		IL_0090: add
		IL_0091: stloc.0
		IL_0092: ldc.i4.0
		IL_0093: stloc.s 5
		IL_0095: br.s IL_00ce
		// loop start (head: IL_00ce)
			IL_0097: ldloc.0
			IL_0098: ldarga.s 'value'
			IL_009a: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_009f: bge.un.s IL_0116

			IL_00a1: ldarga.s 'value'
			IL_00a3: ldloc.0
			IL_00a4: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_00a9: ldind.u2
			IL_00aa: stloc.1
			IL_00ab: ldloc.1
			IL_00ac: call int32 System.HexConverter::FromChar(int32)
			IL_00b1: stloc.s 6
			IL_00b3: ldloc.s 6
			IL_00b5: ldc.i4 255
			IL_00ba: beq.s IL_012f

			IL_00bc: ldloc.0
			IL_00bd: ldc.i4.1
			IL_00be: add
			IL_00bf: stloc.0
			IL_00c0: ldc.i4.s 16
			IL_00c2: ldloc.3
			IL_00c3: mul
			IL_00c4: ldloc.s 6
			IL_00c6: add
			IL_00c7: stloc.3
			IL_00c8: ldloc.s 5
			IL_00ca: ldc.i4.1
			IL_00cb: add
			IL_00cc: stloc.s 5

			IL_00ce: ldloc.s 5
			IL_00d0: ldc.i4.7
			IL_00d1: blt.s IL_0097
		// end loop

		IL_00d3: ldloc.0
		IL_00d4: ldarga.s 'value'
		IL_00d6: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_00db: bge.un.s IL_0116

		IL_00dd: ldarga.s 'value'
		IL_00df: ldloc.0
		IL_00e0: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_00e5: ldind.u2
		IL_00e6: stloc.1
		IL_00e7: ldloc.1
		IL_00e8: call bool System.HexConverter::IsHexChar(int32)
		IL_00ed: brfalse.s IL_012f
		// loop start (head: IL_00ef)
			IL_00ef: ldloc.0
			IL_00f0: ldc.i4.1
			IL_00f1: add
			IL_00f2: stloc.0
			IL_00f3: ldloc.0
			IL_00f4: ldarga.s 'value'
			IL_00f6: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_00fb: bge.un.s IL_0127

			IL_00fd: ldarga.s 'value'
			IL_00ff: ldloc.0
			IL_0100: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_0105: ldind.u2
			IL_0106: stloc.1
			IL_0107: ldloc.1
			IL_0108: call bool System.HexConverter::IsHexChar(int32)
			IL_010d: brtrue.s IL_00ef
		// end loop

		IL_010f: ldc.i4.1
		IL_0110: stloc.2
		IL_0111: br.s IL_012f

		IL_0113: ldloc.2
		IL_0114: brtrue.s IL_0127

		IL_0116: ldarg.2
		IL_0117: ldloc.3
		IL_0118: stind.i4
		IL_0119: ldc.i4.0
		IL_011a: stloc.s 4

		IL_011c: ldloc.s 4
		IL_011e: ret

		IL_011f: ldarg.2
		IL_0120: ldc.i4.0
		IL_0121: stind.i4
		IL_0122: ldc.i4.1
		IL_0123: stloc.s 4
		IL_0125: br.s IL_011c

		IL_0127: ldarg.2
		IL_0128: ldc.i4.0
		IL_0129: stind.i4
		IL_012a: ldc.i4.2
		IL_012b: stloc.s 4
		IL_012d: br.s IL_011c

		IL_012f: ldloc.1
		IL_0130: call bool System.Number::IsWhite(int32)
		IL_0135: brfalse.s IL_016a

		IL_0137: ldarg.1
		IL_0138: ldc.i4.2
		IL_0139: and
		IL_013a: brfalse.s IL_011f

		IL_013c: ldloc.0
		IL_013d: ldc.i4.1
		IL_013e: add
		IL_013f: stloc.0
		IL_0140: br.s IL_0156
		// loop start (head: IL_0156)
			IL_0142: ldarga.s 'value'
			IL_0144: ldloc.0
			IL_0145: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_014a: ldind.u2
			IL_014b: call bool System.Number::IsWhite(int32)
			IL_0150: brfalse.s IL_0160

			IL_0152: ldloc.0
			IL_0153: ldc.i4.1
			IL_0154: add
			IL_0155: stloc.0

			IL_0156: ldloc.0
			IL_0157: ldarga.s 'value'
			IL_0159: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_015e: blt.s IL_0142
		// end loop

		IL_0160: ldloc.0
		IL_0161: ldarga.s 'value'
		IL_0163: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0168: bge.un.s IL_0113

		IL_016a: ldarg.0
		IL_016b: ldloc.0
		IL_016c: call bool System.Number::TrailingZeros(valuetype System.ReadOnlySpan`1<char>, int32)
		IL_0171: brtrue.s IL_0113

		IL_0173: br.s IL_011f
	} // end of method Number::TryParseUInt32HexNumberStyle

	.method assembly hidebysig static 
		valuetype System.Number/ParsingStatus TryParseUInt64 (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info,
			[out] uint64& result
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x78359
		// Code size 44 (0x2c)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldc.i4.s -8
		IL_0003: and
		IL_0004: brtrue.s IL_0010

		IL_0006: ldarg.0
		IL_0007: ldarg.1
		IL_0008: ldarg.2
		IL_0009: ldarg.3
		IL_000a: call valuetype System.Number/ParsingStatus System.Number::TryParseUInt64IntegerStyle(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, uint64&)
		IL_000f: ret

		IL_0010: ldarg.1
		IL_0011: ldc.i4 512
		IL_0016: and
		IL_0017: brfalse.s IL_0022

		IL_0019: ldarg.0
		IL_001a: ldarg.1
		IL_001b: ldarg.3
		IL_001c: call valuetype System.Number/ParsingStatus System.Number::TryParseUInt64HexNumberStyle(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, uint64&)
		IL_0021: ret

		IL_0022: ldarg.0
		IL_0023: ldarg.1
		IL_0024: ldarg.2
		IL_0025: ldarg.3
		IL_0026: call valuetype System.Number/ParsingStatus System.Number::TryParseUInt64Number(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, uint64&)
		IL_002b: ret
	} // end of method Number::TryParseUInt64

	.method private hidebysig static 
		valuetype System.Number/ParsingStatus TryParseUInt64Number (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info,
			[out] uint64& result
		) cil managed 
	{
		// Method begins at RVA 0x78388
		// Code size 49 (0x31)
		.maxstack 4
		.locals (
			[0] uint8*,
			[1] valuetype System.Number/NumberBuffer
		)

		IL_0000: ldarg.3
		IL_0001: ldc.i4.0
		IL_0002: conv.i8
		IL_0003: stind.i8
		IL_0004: ldc.i4.s 21
		IL_0006: conv.u
		IL_0007: localloc
		IL_0009: stloc.0
		IL_000a: ldloca.s 1
		IL_000c: ldc.i4.1
		IL_000d: ldloc.0
		IL_000e: ldc.i4.s 21
		IL_0010: call instance void System.Number/NumberBuffer::.ctor(valuetype System.Number/NumberBufferKind, uint8*, int32)
		IL_0015: ldarg.0
		IL_0016: ldarg.1
		IL_0017: ldloca.s 1
		IL_0019: ldarg.2
		IL_001a: call bool System.Number::TryStringToNumber(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, valuetype System.Number/NumberBuffer&, class System.Globalization.NumberFormatInfo)
		IL_001f: brtrue.s IL_0023

		IL_0021: ldc.i4.1
		IL_0022: ret

		IL_0023: ldloca.s 1
		IL_0025: ldarg.3
		IL_0026: call bool System.Number::TryNumberToUInt64(valuetype System.Number/NumberBuffer&, uint64&)
		IL_002b: brtrue.s IL_002f

		IL_002d: ldc.i4.2
		IL_002e: ret

		IL_002f: ldc.i4.0
		IL_0030: ret
	} // end of method Number::TryParseUInt64Number

	.method assembly hidebysig static 
		valuetype System.Number/ParsingStatus TryParseUInt64IntegerStyle (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info,
			[out] uint64& result
		) cil managed 
	{
		// Method begins at RVA 0x783c8
		// Code size 704 (0x2c0)
		.maxstack 3
		.locals (
			[0] int32,
			[1] int32,
			[2] bool,
			[3] int64,
			[4] valuetype System.Number/ParsingStatus,
			[5] string,
			[6] string,
			[7] int32
		)

		IL_0000: ldarga.s 'value'
		IL_0002: call instance bool valuetype System.ReadOnlySpan`1<char>::get_IsEmpty()
		IL_0007: brtrue IL_0266

		IL_000c: ldc.i4.0
		IL_000d: stloc.0
		IL_000e: ldarga.s 'value'
		IL_0010: ldc.i4.0
		IL_0011: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_0016: ldind.u2
		IL_0017: stloc.1
		IL_0018: ldarg.1
		IL_0019: ldc.i4.1
		IL_001a: and
		IL_001b: brfalse.s IL_0048

		IL_001d: ldloc.1
		IL_001e: call bool System.Number::IsWhite(int32)
		IL_0023: brfalse.s IL_0048
		// loop start (head: IL_0025)
			IL_0025: ldloc.0
			IL_0026: ldc.i4.1
			IL_0027: add
			IL_0028: stloc.0
			IL_0029: ldloc.0
			IL_002a: ldarga.s 'value'
			IL_002c: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0031: bge.un IL_0266

			IL_0036: ldarga.s 'value'
			IL_0038: ldloc.0
			IL_0039: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_003e: ldind.u2
			IL_003f: stloc.1
			IL_0040: ldloc.1
			IL_0041: call bool System.Number::IsWhite(int32)
			IL_0046: brtrue.s IL_0025
		// end loop

		IL_0048: ldc.i4.0
		IL_0049: stloc.2
		IL_004a: ldarg.1
		IL_004b: ldc.i4.4
		IL_004c: and
		IL_004d: brfalse IL_013b

		IL_0052: ldarg.2
		IL_0053: callvirt instance bool System.Globalization.NumberFormatInfo::get_HasInvariantNumberSigns()
		IL_0058: brfalse.s IL_00a9

		IL_005a: ldloc.1
		IL_005b: ldc.i4.s 43
		IL_005d: bne.un.s IL_007f

		IL_005f: ldloc.0
		IL_0060: ldc.i4.1
		IL_0061: add
		IL_0062: stloc.0
		IL_0063: ldloc.0
		IL_0064: ldarga.s 'value'
		IL_0066: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_006b: bge.un IL_0266

		IL_0070: ldarga.s 'value'
		IL_0072: ldloc.0
		IL_0073: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_0078: ldind.u2
		IL_0079: stloc.1
		IL_007a: br IL_013b

		IL_007f: ldloc.1
		IL_0080: ldc.i4.s 45
		IL_0082: bne.un IL_013b

		IL_0087: ldc.i4.1
		IL_0088: stloc.2
		IL_0089: ldloc.0
		IL_008a: ldc.i4.1
		IL_008b: add
		IL_008c: stloc.0
		IL_008d: ldloc.0
		IL_008e: ldarga.s 'value'
		IL_0090: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0095: bge.un IL_0266

		IL_009a: ldarga.s 'value'
		IL_009c: ldloc.0
		IL_009d: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_00a2: ldind.u2
		IL_00a3: stloc.1
		IL_00a4: br IL_013b

		IL_00a9: ldarga.s 'value'
		IL_00ab: ldloc.0
		IL_00ac: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::Slice(int32)
		IL_00b1: starg.s 'value'
		IL_00b3: ldc.i4.0
		IL_00b4: stloc.0
		IL_00b5: ldarg.2
		IL_00b6: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveSign()
		IL_00bb: stloc.s 5
		IL_00bd: ldarg.2
		IL_00be: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_00c3: stloc.s 6
		IL_00c5: ldloc.s 5
		IL_00c7: call bool System.String::IsNullOrEmpty(string)
		IL_00cc: brtrue.s IL_0100

		IL_00ce: ldarg.0
		IL_00cf: ldloc.s 5
		IL_00d1: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_00d6: call bool System.MemoryExtensions::StartsWith<char>(valuetype System.ReadOnlySpan`1<!!0>, valuetype System.ReadOnlySpan`1<!!0>)
		IL_00db: brfalse.s IL_0100

		IL_00dd: ldloc.0
		IL_00de: ldloc.s 5
		IL_00e0: callvirt instance int32 System.String::get_Length()
		IL_00e5: add
		IL_00e6: stloc.0
		IL_00e7: ldloc.0
		IL_00e8: ldarga.s 'value'
		IL_00ea: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_00ef: bge.un IL_0266

		IL_00f4: ldarga.s 'value'
		IL_00f6: ldloc.0
		IL_00f7: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_00fc: ldind.u2
		IL_00fd: stloc.1
		IL_00fe: br.s IL_013b

		IL_0100: ldloc.s 6
		IL_0102: call bool System.String::IsNullOrEmpty(string)
		IL_0107: brtrue.s IL_013b

		IL_0109: ldarg.0
		IL_010a: ldloc.s 6
		IL_010c: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0111: call bool System.MemoryExtensions::StartsWith<char>(valuetype System.ReadOnlySpan`1<!!0>, valuetype System.ReadOnlySpan`1<!!0>)
		IL_0116: brfalse.s IL_013b

		IL_0118: ldc.i4.1
		IL_0119: stloc.2
		IL_011a: ldloc.0
		IL_011b: ldloc.s 6
		IL_011d: callvirt instance int32 System.String::get_Length()
		IL_0122: add
		IL_0123: stloc.0
		IL_0124: ldloc.0
		IL_0125: ldarga.s 'value'
		IL_0127: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_012c: bge.un IL_0266

		IL_0131: ldarga.s 'value'
		IL_0133: ldloc.0
		IL_0134: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_0139: ldind.u2
		IL_013a: stloc.1

		IL_013b: ldc.i4.0
		IL_013c: conv.i8
		IL_013d: stloc.3
		IL_013e: ldloc.1
		IL_013f: call bool System.Number::IsDigit(int32)
		IL_0144: brfalse IL_0266

		IL_0149: ldloc.1
		IL_014a: ldc.i4.s 48
		IL_014c: bne.un.s IL_0179
		// loop start (head: IL_014e)
			IL_014e: ldloc.0
			IL_014f: ldc.i4.1
			IL_0150: add
			IL_0151: stloc.0
			IL_0152: ldloc.0
			IL_0153: ldarga.s 'value'
			IL_0155: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_015a: bge.un IL_025d

			IL_015f: ldarga.s 'value'
			IL_0161: ldloc.0
			IL_0162: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_0167: ldind.u2
			IL_0168: stloc.1
			IL_0169: ldloc.1
			IL_016a: ldc.i4.s 48
			IL_016c: beq.s IL_014e
		// end loop

		IL_016e: ldloc.1
		IL_016f: call bool System.Number::IsDigit(int32)
		IL_0174: brfalse IL_0278

		IL_0179: ldloc.1
		IL_017a: ldc.i4.s 48
		IL_017c: sub
		IL_017d: conv.i8
		IL_017e: stloc.3
		IL_017f: ldloc.0
		IL_0180: ldc.i4.1
		IL_0181: add
		IL_0182: stloc.0
		IL_0183: ldc.i4.0
		IL_0184: stloc.s 7
		IL_0186: br.s IL_01c1
		// loop start (head: IL_01c1)
			IL_0188: ldloc.0
			IL_0189: ldarga.s 'value'
			IL_018b: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0190: bge.un IL_025a

			IL_0195: ldarga.s 'value'
			IL_0197: ldloc.0
			IL_0198: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_019d: ldind.u2
			IL_019e: stloc.1
			IL_019f: ldloc.1
			IL_01a0: call bool System.Number::IsDigit(int32)
			IL_01a5: brfalse IL_027a

			IL_01aa: ldloc.0
			IL_01ab: ldc.i4.1
			IL_01ac: add
			IL_01ad: stloc.0
			IL_01ae: ldc.i4.s 10
			IL_01b0: conv.i8
			IL_01b1: ldloc.3
			IL_01b2: mul
			IL_01b3: ldloc.1
			IL_01b4: conv.i8
			IL_01b5: add
			IL_01b6: ldc.i4.s 48
			IL_01b8: conv.i8
			IL_01b9: sub
			IL_01ba: stloc.3
			IL_01bb: ldloc.s 7
			IL_01bd: ldc.i4.1
			IL_01be: add
			IL_01bf: stloc.s 7

			IL_01c1: ldloc.s 7
			IL_01c3: ldc.i4.s 18
			IL_01c5: blt.s IL_0188
		// end loop

		IL_01c7: ldloc.0
		IL_01c8: ldarga.s 'value'
		IL_01ca: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_01cf: bge.un IL_025a

		IL_01d4: ldarga.s 'value'
		IL_01d6: ldloc.0
		IL_01d7: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_01dc: ldind.u2
		IL_01dd: stloc.1
		IL_01de: ldloc.1
		IL_01df: call bool System.Number::IsDigit(int32)
		IL_01e4: brfalse IL_027a

		IL_01e9: ldloc.0
		IL_01ea: ldc.i4.1
		IL_01eb: add
		IL_01ec: stloc.0
		IL_01ed: ldloc.2
		IL_01ee: ldloc.3
		IL_01ef: ldc.i8 1844674407370955161
		IL_01f8: bgt.un.s IL_0210

		IL_01fa: ldloc.3
		IL_01fb: ldc.i8 1844674407370955161
		IL_0204: bne.un.s IL_020d

		IL_0206: ldloc.1
		IL_0207: ldc.i4.s 53
		IL_0209: cgt
		IL_020b: br.s IL_0211

		IL_020d: ldc.i4.0
		IL_020e: br.s IL_0211

		IL_0210: ldc.i4.1

		IL_0211: or
		IL_0212: stloc.2
		IL_0213: ldloc.3
		IL_0214: ldc.i4.s 10
		IL_0216: conv.i8
		IL_0217: mul
		IL_0218: ldloc.1
		IL_0219: conv.i8
		IL_021a: add
		IL_021b: ldc.i4.s 48
		IL_021d: conv.i8
		IL_021e: sub
		IL_021f: stloc.3
		IL_0220: ldloc.0
		IL_0221: ldarga.s 'value'
		IL_0223: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0228: bge.un.s IL_025a

		IL_022a: ldarga.s 'value'
		IL_022c: ldloc.0
		IL_022d: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_0232: ldind.u2
		IL_0233: stloc.1
		IL_0234: br.s IL_0250
		// loop start (head: IL_0250)
			IL_0236: ldc.i4.1
			IL_0237: stloc.2
			IL_0238: ldloc.0
			IL_0239: ldc.i4.1
			IL_023a: add
			IL_023b: stloc.0
			IL_023c: ldloc.0
			IL_023d: ldarga.s 'value'
			IL_023f: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0244: bge.un.s IL_026f

			IL_0246: ldarga.s 'value'
			IL_0248: ldloc.0
			IL_0249: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_024e: ldind.u2
			IL_024f: stloc.1

			IL_0250: ldloc.1
			IL_0251: call bool System.Number::IsDigit(int32)
			IL_0256: brtrue.s IL_0236
		// end loop

		IL_0258: br.s IL_027a

		IL_025a: ldloc.2
		IL_025b: brtrue.s IL_026f

		IL_025d: ldarg.3
		IL_025e: ldloc.3
		IL_025f: stind.i8
		IL_0260: ldc.i4.0
		IL_0261: stloc.s 4

		IL_0263: ldloc.s 4
		IL_0265: ret

		IL_0266: ldarg.3
		IL_0267: ldc.i4.0
		IL_0268: conv.i8
		IL_0269: stind.i8
		IL_026a: ldc.i4.1
		IL_026b: stloc.s 4
		IL_026d: br.s IL_0263

		IL_026f: ldarg.3
		IL_0270: ldc.i4.0
		IL_0271: conv.i8
		IL_0272: stind.i8
		IL_0273: ldc.i4.2
		IL_0274: stloc.s 4
		IL_0276: br.s IL_0263

		IL_0278: ldc.i4.0
		IL_0279: stloc.2

		IL_027a: ldloc.1
		IL_027b: call bool System.Number::IsWhite(int32)
		IL_0280: brfalse.s IL_02b5

		IL_0282: ldarg.1
		IL_0283: ldc.i4.2
		IL_0284: and
		IL_0285: brfalse.s IL_0266

		IL_0287: ldloc.0
		IL_0288: ldc.i4.1
		IL_0289: add
		IL_028a: stloc.0
		IL_028b: br.s IL_02a1
		// loop start (head: IL_02a1)
			IL_028d: ldarga.s 'value'
			IL_028f: ldloc.0
			IL_0290: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_0295: ldind.u2
			IL_0296: call bool System.Number::IsWhite(int32)
			IL_029b: brfalse.s IL_02ab

			IL_029d: ldloc.0
			IL_029e: ldc.i4.1
			IL_029f: add
			IL_02a0: stloc.0

			IL_02a1: ldloc.0
			IL_02a2: ldarga.s 'value'
			IL_02a4: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_02a9: blt.s IL_028d
		// end loop

		IL_02ab: ldloc.0
		IL_02ac: ldarga.s 'value'
		IL_02ae: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_02b3: bge.un.s IL_025a

		IL_02b5: ldarg.0
		IL_02b6: ldloc.0
		IL_02b7: call bool System.Number::TrailingZeros(valuetype System.ReadOnlySpan`1<char>, int32)
		IL_02bc: brtrue.s IL_025a

		IL_02be: br.s IL_0266
	} // end of method Number::TryParseUInt64IntegerStyle

	.method private hidebysig static 
		valuetype System.Number/ParsingStatus TryParseUInt64HexNumberStyle (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			[out] uint64& result
		) cil managed 
	{
		// Method begins at RVA 0x78694
		// Code size 380 (0x17c)
		.maxstack 2
		.locals (
			[0] int32,
			[1] int32,
			[2] bool,
			[3] uint64,
			[4] valuetype System.Number/ParsingStatus,
			[5] int32,
			[6] uint32
		)

		IL_0000: ldarga.s 'value'
		IL_0002: call instance bool valuetype System.ReadOnlySpan`1<char>::get_IsEmpty()
		IL_0007: brtrue IL_0124

		IL_000c: ldc.i4.0
		IL_000d: stloc.0
		IL_000e: ldarga.s 'value'
		IL_0010: ldc.i4.0
		IL_0011: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_0016: ldind.u2
		IL_0017: stloc.1
		IL_0018: ldarg.1
		IL_0019: ldc.i4.1
		IL_001a: and
		IL_001b: brfalse.s IL_0048

		IL_001d: ldloc.1
		IL_001e: call bool System.Number::IsWhite(int32)
		IL_0023: brfalse.s IL_0048
		// loop start (head: IL_0025)
			IL_0025: ldloc.0
			IL_0026: ldc.i4.1
			IL_0027: add
			IL_0028: stloc.0
			IL_0029: ldloc.0
			IL_002a: ldarga.s 'value'
			IL_002c: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0031: bge.un IL_0124

			IL_0036: ldarga.s 'value'
			IL_0038: ldloc.0
			IL_0039: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_003e: ldind.u2
			IL_003f: stloc.1
			IL_0040: ldloc.1
			IL_0041: call bool System.Number::IsWhite(int32)
			IL_0046: brtrue.s IL_0025
		// end loop

		IL_0048: ldc.i4.0
		IL_0049: stloc.2
		IL_004a: ldc.i4.0
		IL_004b: conv.i8
		IL_004c: stloc.3
		IL_004d: ldloc.1
		IL_004e: call bool System.HexConverter::IsHexChar(int32)
		IL_0053: brfalse IL_0124

		IL_0058: ldloc.1
		IL_0059: ldc.i4.s 48
		IL_005b: bne.un.s IL_0088
		// loop start (head: IL_005d)
			IL_005d: ldloc.0
			IL_005e: ldc.i4.1
			IL_005f: add
			IL_0060: stloc.0
			IL_0061: ldloc.0
			IL_0062: ldarga.s 'value'
			IL_0064: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0069: bge.un IL_011b

			IL_006e: ldarga.s 'value'
			IL_0070: ldloc.0
			IL_0071: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_0076: ldind.u2
			IL_0077: stloc.1
			IL_0078: ldloc.1
			IL_0079: ldc.i4.s 48
			IL_007b: beq.s IL_005d
		// end loop

		IL_007d: ldloc.1
		IL_007e: call bool System.HexConverter::IsHexChar(int32)
		IL_0083: brfalse IL_0136

		IL_0088: ldloc.1
		IL_0089: call int32 System.HexConverter::FromChar(int32)
		IL_008e: conv.u8
		IL_008f: stloc.3
		IL_0090: ldloc.0
		IL_0091: ldc.i4.1
		IL_0092: add
		IL_0093: stloc.0
		IL_0094: ldc.i4.0
		IL_0095: stloc.s 5
		IL_0097: br.s IL_00d2
		// loop start (head: IL_00d2)
			IL_0099: ldloc.0
			IL_009a: ldarga.s 'value'
			IL_009c: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_00a1: bge.un.s IL_011b

			IL_00a3: ldarga.s 'value'
			IL_00a5: ldloc.0
			IL_00a6: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_00ab: ldind.u2
			IL_00ac: stloc.1
			IL_00ad: ldloc.1
			IL_00ae: call int32 System.HexConverter::FromChar(int32)
			IL_00b3: stloc.s 6
			IL_00b5: ldloc.s 6
			IL_00b7: ldc.i4 255
			IL_00bc: beq.s IL_0136

			IL_00be: ldloc.0
			IL_00bf: ldc.i4.1
			IL_00c0: add
			IL_00c1: stloc.0
			IL_00c2: ldc.i4.s 16
			IL_00c4: conv.i8
			IL_00c5: ldloc.3
			IL_00c6: mul
			IL_00c7: ldloc.s 6
			IL_00c9: conv.u8
			IL_00ca: add
			IL_00cb: stloc.3
			IL_00cc: ldloc.s 5
			IL_00ce: ldc.i4.1
			IL_00cf: add
			IL_00d0: stloc.s 5

			IL_00d2: ldloc.s 5
			IL_00d4: ldc.i4.s 15
			IL_00d6: blt.s IL_0099
		// end loop

		IL_00d8: ldloc.0
		IL_00d9: ldarga.s 'value'
		IL_00db: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_00e0: bge.un.s IL_011b

		IL_00e2: ldarga.s 'value'
		IL_00e4: ldloc.0
		IL_00e5: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_00ea: ldind.u2
		IL_00eb: stloc.1
		IL_00ec: ldloc.1
		IL_00ed: call bool System.HexConverter::IsHexChar(int32)
		IL_00f2: brfalse.s IL_0136
		// loop start (head: IL_00f4)
			IL_00f4: ldloc.0
			IL_00f5: ldc.i4.1
			IL_00f6: add
			IL_00f7: stloc.0
			IL_00f8: ldloc.0
			IL_00f9: ldarga.s 'value'
			IL_00fb: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0100: bge.un.s IL_012d

			IL_0102: ldarga.s 'value'
			IL_0104: ldloc.0
			IL_0105: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_010a: ldind.u2
			IL_010b: stloc.1
			IL_010c: ldloc.1
			IL_010d: call bool System.HexConverter::IsHexChar(int32)
			IL_0112: brtrue.s IL_00f4
		// end loop

		IL_0114: ldc.i4.1
		IL_0115: stloc.2
		IL_0116: br.s IL_0136

		IL_0118: ldloc.2
		IL_0119: brtrue.s IL_012d

		IL_011b: ldarg.2
		IL_011c: ldloc.3
		IL_011d: stind.i8
		IL_011e: ldc.i4.0
		IL_011f: stloc.s 4

		IL_0121: ldloc.s 4
		IL_0123: ret

		IL_0124: ldarg.2
		IL_0125: ldc.i4.0
		IL_0126: conv.i8
		IL_0127: stind.i8
		IL_0128: ldc.i4.1
		IL_0129: stloc.s 4
		IL_012b: br.s IL_0121

		IL_012d: ldarg.2
		IL_012e: ldc.i4.0
		IL_012f: conv.i8
		IL_0130: stind.i8
		IL_0131: ldc.i4.2
		IL_0132: stloc.s 4
		IL_0134: br.s IL_0121

		IL_0136: ldloc.1
		IL_0137: call bool System.Number::IsWhite(int32)
		IL_013c: brfalse.s IL_0171

		IL_013e: ldarg.1
		IL_013f: ldc.i4.2
		IL_0140: and
		IL_0141: brfalse.s IL_0124

		IL_0143: ldloc.0
		IL_0144: ldc.i4.1
		IL_0145: add
		IL_0146: stloc.0
		IL_0147: br.s IL_015d
		// loop start (head: IL_015d)
			IL_0149: ldarga.s 'value'
			IL_014b: ldloc.0
			IL_014c: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_0151: ldind.u2
			IL_0152: call bool System.Number::IsWhite(int32)
			IL_0157: brfalse.s IL_0167

			IL_0159: ldloc.0
			IL_015a: ldc.i4.1
			IL_015b: add
			IL_015c: stloc.0

			IL_015d: ldloc.0
			IL_015e: ldarga.s 'value'
			IL_0160: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0165: blt.s IL_0149
		// end loop

		IL_0167: ldloc.0
		IL_0168: ldarga.s 'value'
		IL_016a: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_016f: bge.un.s IL_0118

		IL_0171: ldarg.0
		IL_0172: ldloc.0
		IL_0173: call bool System.Number::TrailingZeros(valuetype System.ReadOnlySpan`1<char>, int32)
		IL_0178: brtrue.s IL_0118

		IL_017a: br.s IL_0124
	} // end of method Number::TryParseUInt64HexNumberStyle

	.method assembly hidebysig static 
		valuetype System.Decimal ParseDecimal (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info
		) cil managed 
	{
		// Method begins at RVA 0x7881c
		// Code size 24 (0x18)
		.maxstack 4
		.locals (
			[0] valuetype System.Number/ParsingStatus,
			[1] valuetype System.Decimal
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldloca.s 1
		IL_0005: call valuetype System.Number/ParsingStatus System.Number::TryParseDecimal(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, valuetype System.Decimal&)
		IL_000a: stloc.0
		IL_000b: ldloc.0
		IL_000c: brfalse.s IL_0016

		IL_000e: ldloc.0
		IL_000f: ldc.i4.s 15
		IL_0011: call void System.Number::ThrowOverflowOrFormatException(valuetype System.Number/ParsingStatus, valuetype System.TypeCode)

		IL_0016: ldloc.1
		IL_0017: ret
	} // end of method Number::ParseDecimal

	.method assembly hidebysig static 
		bool TryNumberToDecimal (
			valuetype System.Number/NumberBuffer& number,
			valuetype System.Decimal& 'value'
		) cil managed 
	{
		// Method begins at RVA 0x78840
		// Code size 482 (0x1e2)
		.maxstack 8
		.locals (
			[0] uint8*,
			[1] int32,
			[2] bool,
			[3] uint32,
			[4] uint64,
			[5] uint32,
			[6] uint64,
			[7] uint64,
			[8] bool
		)

		IL_0000: ldarg.0
		IL_0001: call instance uint8* System.Number/NumberBuffer::GetDigitsPointer()
		IL_0006: stloc.0
		IL_0007: ldarg.0
		IL_0008: ldfld int32 System.Number/NumberBuffer::Scale
		IL_000d: stloc.1
		IL_000e: ldarg.0
		IL_000f: ldfld bool System.Number/NumberBuffer::IsNegative
		IL_0014: stloc.2
		IL_0015: ldloc.0
		IL_0016: ldind.u1
		IL_0017: stloc.3
		IL_0018: ldloc.3
		IL_0019: brtrue.s IL_0037

		IL_001b: ldarg.1
		IL_001c: ldc.i4.0
		IL_001d: ldc.i4.0
		IL_001e: ldc.i4.0
		IL_001f: ldloc.2
		IL_0020: ldloc.1
		IL_0021: neg
		IL_0022: ldc.i4.0
		IL_0023: ldc.i4.s 28
		IL_0025: call int32 System.Math::Clamp(int32, int32, int32)
		IL_002a: conv.u1
		IL_002b: newobj instance void System.Decimal::.ctor(int32, int32, int32, bool, uint8)
		IL_0030: stobj System.Decimal
		IL_0035: ldc.i4.1
		IL_0036: ret

		IL_0037: ldloc.1
		IL_0038: ldc.i4.s 29
		IL_003a: ble.s IL_003e

		IL_003c: ldc.i4.0
		IL_003d: ret

		IL_003e: ldc.i4.0
		IL_003f: conv.i8
		IL_0040: stloc.s 4
		IL_0042: br.s IL_0092
		// loop start (head: IL_0092)
			IL_0044: ldloc.1
			IL_0045: ldc.i4.1
			IL_0046: sub
			IL_0047: stloc.1
			IL_0048: ldloc.s 4
			IL_004a: ldc.i4.s 10
			IL_004c: conv.i8
			IL_004d: mul
			IL_004e: stloc.s 4
			IL_0050: ldloc.s 4
			IL_0052: ldloc.3
			IL_0053: ldc.i4.s 48
			IL_0055: sub
			IL_0056: conv.u8
			IL_0057: add
			IL_0058: stloc.s 4
			IL_005a: ldloc.0
			IL_005b: ldc.i4.1
			IL_005c: add
			IL_005d: dup
			IL_005e: stloc.0
			IL_005f: ldind.u1
			IL_0060: stloc.3
			IL_0061: ldloc.s 4
			IL_0063: ldc.i8 1844674407370955161
			IL_006c: bge.un.s IL_0097

			IL_006e: ldloc.3
			IL_006f: brtrue.s IL_0092

			IL_0071: br.s IL_008c
			// loop start (head: IL_008c)
				IL_0073: ldloc.1
				IL_0074: ldc.i4.1
				IL_0075: sub
				IL_0076: stloc.1
				IL_0077: ldloc.s 4
				IL_0079: ldc.i4.s 10
				IL_007b: conv.i8
				IL_007c: mul
				IL_007d: stloc.s 4
				IL_007f: ldloc.s 4
				IL_0081: ldc.i8 1844674407370955161
				IL_008a: bge.un.s IL_0097

				IL_008c: ldloc.1
				IL_008d: ldc.i4.0
				IL_008e: bgt.s IL_0073
			// end loop

			IL_0090: br.s IL_0097

			IL_0092: ldloc.1
			IL_0093: ldc.i4.s -28
			IL_0095: bgt.s IL_0044
		// end loop

		IL_0097: ldc.i4.0
		IL_0098: stloc.s 5
		IL_009a: br.s IL_00f9
		// loop start (head: IL_00f9)
			IL_009c: ldloc.s 4
			IL_009e: conv.u4
			IL_009f: conv.u8
			IL_00a0: ldc.i4.s 10
			IL_00a2: conv.i8
			IL_00a3: mul
			IL_00a4: stloc.s 6
			IL_00a6: ldloc.s 4
			IL_00a8: ldc.i4.s 32
			IL_00aa: shr.un
			IL_00ab: conv.u4
			IL_00ac: conv.u8
			IL_00ad: ldc.i4.s 10
			IL_00af: conv.i8
			IL_00b0: mul
			IL_00b1: ldloc.s 6
			IL_00b3: ldc.i4.s 32
			IL_00b5: shr.un
			IL_00b6: add
			IL_00b7: stloc.s 7
			IL_00b9: ldloc.s 6
			IL_00bb: conv.u4
			IL_00bc: conv.u8
			IL_00bd: ldloc.s 7
			IL_00bf: ldc.i4.s 32
			IL_00c1: shl
			IL_00c2: add
			IL_00c3: stloc.s 4
			IL_00c5: ldloc.s 7
			IL_00c7: ldc.i4.s 32
			IL_00c9: shr.un
			IL_00ca: conv.u4
			IL_00cb: ldloc.s 5
			IL_00cd: ldc.i4.s 10
			IL_00cf: mul
			IL_00d0: add
			IL_00d1: stloc.s 5
			IL_00d3: ldloc.3
			IL_00d4: brfalse.s IL_00f5

			IL_00d6: ldloc.3
			IL_00d7: ldc.i4.s 48
			IL_00d9: sub
			IL_00da: stloc.3
			IL_00db: ldloc.s 4
			IL_00dd: ldloc.3
			IL_00de: conv.u8
			IL_00df: add
			IL_00e0: stloc.s 4
			IL_00e2: ldloc.s 4
			IL_00e4: ldloc.3
			IL_00e5: conv.u8
			IL_00e6: bge.un.s IL_00ee

			IL_00e8: ldloc.s 5
			IL_00ea: ldc.i4.1
			IL_00eb: add
			IL_00ec: stloc.s 5

			IL_00ee: ldloc.0
			IL_00ef: ldc.i4.1
			IL_00f0: add
			IL_00f1: dup
			IL_00f2: stloc.0
			IL_00f3: ldind.u1
			IL_00f4: stloc.3

			IL_00f5: ldloc.1
			IL_00f6: ldc.i4.1
			IL_00f7: sub
			IL_00f8: stloc.1

			IL_00f9: ldloc.1
			IL_00fa: ldc.i4.0
			IL_00fb: bgt.s IL_0105

			IL_00fd: ldloc.3
			IL_00fe: brfalse.s IL_013c

			IL_0100: ldloc.1
			IL_0101: ldc.i4.s -28
			IL_0103: ble.s IL_013c

			IL_0105: ldloc.s 5
			IL_0107: ldc.i4 429496729
			IL_010c: blt.un.s IL_009c

			IL_010e: ldloc.s 5
			IL_0110: ldc.i4 429496729
			IL_0115: bne.un.s IL_013c

			IL_0117: ldloc.s 4
			IL_0119: ldc.i8 -7378697629483820647
			IL_0122: blt.un IL_009c

			IL_0127: ldloc.s 4
			IL_0129: ldc.i8 -7378697629483820647
			IL_0132: bne.un.s IL_013c

			IL_0134: ldloc.3
			IL_0135: ldc.i4.s 53
			IL_0137: ble.un IL_009c
		// end loop

		IL_013c: ldloc.3
		IL_013d: ldc.i4.s 53
		IL_013f: blt.un.s IL_01a8

		IL_0141: ldloc.3
		IL_0142: ldc.i4.s 53
		IL_0144: bne.un.s IL_017f

		IL_0146: ldloc.s 4
		IL_0148: ldc.i4.1
		IL_0149: conv.i8
		IL_014a: and
		IL_014b: brtrue.s IL_017f

		IL_014d: ldloc.0
		IL_014e: ldc.i4.1
		IL_014f: add
		IL_0150: dup
		IL_0151: stloc.0
		IL_0152: ldind.u1
		IL_0153: stloc.3
		IL_0154: ldarg.0
		IL_0155: ldfld bool System.Number/NumberBuffer::HasNonZeroTail
		IL_015a: ldc.i4.0
		IL_015b: ceq
		IL_015d: stloc.s 8
		IL_015f: br.s IL_0172
		// loop start (head: IL_0172)
			IL_0161: ldloc.s 8
			IL_0163: ldloc.3
			IL_0164: ldc.i4.s 48
			IL_0166: ceq
			IL_0168: and
			IL_0169: stloc.s 8
			IL_016b: ldloc.0
			IL_016c: ldc.i4.1
			IL_016d: add
			IL_016e: dup
			IL_016f: stloc.0
			IL_0170: ldind.u1
			IL_0171: stloc.3

			IL_0172: ldloc.3
			IL_0173: ldc.i4.0
			IL_0174: cgt.un
			IL_0176: ldloc.s 8
			IL_0178: and
			IL_0179: brtrue.s IL_0161
		// end loop

		IL_017b: ldloc.s 8
		IL_017d: brtrue.s IL_01a8

		IL_017f: ldloc.s 4
		IL_0181: ldc.i4.1
		IL_0182: conv.i8
		IL_0183: add
		IL_0184: dup
		IL_0185: stloc.s 4
		IL_0187: brtrue.s IL_01a8

		IL_0189: ldloc.s 5
		IL_018b: ldc.i4.1
		IL_018c: add
		IL_018d: dup
		IL_018e: stloc.s 5
		IL_0190: brtrue.s IL_01a8

		IL_0192: ldc.i8 -7378697629483820646
		IL_019b: stloc.s 4
		IL_019d: ldc.i4 429496729
		IL_01a2: stloc.s 5
		IL_01a4: ldloc.1
		IL_01a5: ldc.i4.1
		IL_01a6: add
		IL_01a7: stloc.1

		IL_01a8: ldloc.1
		IL_01a9: ldc.i4.0
		IL_01aa: ble.s IL_01ae

		IL_01ac: ldc.i4.0
		IL_01ad: ret

		IL_01ae: ldloc.1
		IL_01af: ldc.i4.s -29
		IL_01b1: bgt.s IL_01c6

		IL_01b3: ldarg.1
		IL_01b4: ldc.i4.0
		IL_01b5: ldc.i4.0
		IL_01b6: ldc.i4.0
		IL_01b7: ldloc.2
		IL_01b8: ldc.i4.s 28
		IL_01ba: newobj instance void System.Decimal::.ctor(int32, int32, int32, bool, uint8)
		IL_01bf: stobj System.Decimal
		IL_01c4: br.s IL_01e0

		IL_01c6: ldarg.1
		IL_01c7: ldloc.s 4
		IL_01c9: conv.i4
		IL_01ca: ldloc.s 4
		IL_01cc: ldc.i4.s 32
		IL_01ce: shr.un
		IL_01cf: conv.i4
		IL_01d0: ldloc.s 5
		IL_01d2: ldloc.2
		IL_01d3: ldloc.1
		IL_01d4: neg
		IL_01d5: conv.u1
		IL_01d6: newobj instance void System.Decimal::.ctor(int32, int32, int32, bool, uint8)
		IL_01db: stobj System.Decimal

		IL_01e0: ldc.i4.1
		IL_01e1: ret
	} // end of method Number::TryNumberToDecimal

	.method assembly hidebysig static 
		float64 ParseDouble (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info
		) cil managed 
	{
		// Method begins at RVA 0x78a30
		// Code size 21 (0x15)
		.maxstack 4
		.locals (
			[0] float64
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldloca.s 0
		IL_0005: call bool System.Number::TryParseDouble(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, float64&)
		IL_000a: brtrue.s IL_0013

		IL_000c: ldc.i4.1
		IL_000d: ldc.i4.0
		IL_000e: call void System.Number::ThrowOverflowOrFormatException(valuetype System.Number/ParsingStatus, valuetype System.TypeCode)

		IL_0013: ldloc.0
		IL_0014: ret
	} // end of method Number::ParseDouble

	.method assembly hidebysig static 
		float32 ParseSingle (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info
		) cil managed 
	{
		// Method begins at RVA 0x78a54
		// Code size 21 (0x15)
		.maxstack 4
		.locals (
			[0] float32
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldloca.s 0
		IL_0005: call bool System.Number::TryParseSingle(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, float32&)
		IL_000a: brtrue.s IL_0013

		IL_000c: ldc.i4.1
		IL_000d: ldc.i4.0
		IL_000e: call void System.Number::ThrowOverflowOrFormatException(valuetype System.Number/ParsingStatus, valuetype System.TypeCode)

		IL_0013: ldloc.0
		IL_0014: ret
	} // end of method Number::ParseSingle

	.method assembly hidebysig static 
		valuetype System.Half ParseHalf (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info
		) cil managed 
	{
		// Method begins at RVA 0x78a78
		// Code size 21 (0x15)
		.maxstack 4
		.locals (
			[0] valuetype System.Half
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldloca.s 0
		IL_0005: call bool System.Number::TryParseHalf(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, valuetype System.Half&)
		IL_000a: brtrue.s IL_0013

		IL_000c: ldc.i4.1
		IL_000d: ldc.i4.0
		IL_000e: call void System.Number::ThrowOverflowOrFormatException(valuetype System.Number/ParsingStatus, valuetype System.TypeCode)

		IL_0013: ldloc.0
		IL_0014: ret
	} // end of method Number::ParseHalf

	.method assembly hidebysig static 
		valuetype System.Number/ParsingStatus TryParseDecimal (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info,
			[out] valuetype System.Decimal& result
		) cil managed 
	{
		// Method begins at RVA 0x78a9c
		// Code size 52 (0x34)
		.maxstack 4
		.locals (
			[0] uint8*,
			[1] valuetype System.Number/NumberBuffer
		)

		IL_0000: ldc.i4.s 31
		IL_0002: conv.u
		IL_0003: localloc
		IL_0005: stloc.0
		IL_0006: ldloca.s 1
		IL_0008: ldc.i4.2
		IL_0009: ldloc.0
		IL_000a: ldc.i4.s 31
		IL_000c: call instance void System.Number/NumberBuffer::.ctor(valuetype System.Number/NumberBufferKind, uint8*, int32)
		IL_0011: ldarg.3
		IL_0012: initobj System.Decimal
		IL_0018: ldarg.0
		IL_0019: ldarg.1
		IL_001a: ldloca.s 1
		IL_001c: ldarg.2
		IL_001d: call bool System.Number::TryStringToNumber(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, valuetype System.Number/NumberBuffer&, class System.Globalization.NumberFormatInfo)
		IL_0022: brtrue.s IL_0026

		IL_0024: ldc.i4.1
		IL_0025: ret

		IL_0026: ldloca.s 1
		IL_0028: ldarg.3
		IL_0029: call bool System.Number::TryNumberToDecimal(valuetype System.Number/NumberBuffer&, valuetype System.Decimal&)
		IL_002e: brtrue.s IL_0032

		IL_0030: ldc.i4.2
		IL_0031: ret

		IL_0032: ldc.i4.0
		IL_0033: ret
	} // end of method Number::TryParseDecimal

	.method assembly hidebysig static 
		bool TryParseDouble (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info,
			[out] float64& result
		) cil managed 
	{
		// Method begins at RVA 0x78adc
		// Code size 362 (0x16a)
		.maxstack 4
		.locals (
			[0] uint8*,
			[1] valuetype System.Number/NumberBuffer,
			[2] valuetype System.ReadOnlySpan`1<char>
		)

		IL_0000: ldc.i4 769
		IL_0005: conv.u
		IL_0006: localloc
		IL_0008: stloc.0
		IL_0009: ldloca.s 1
		IL_000b: ldc.i4.3
		IL_000c: ldloc.0
		IL_000d: ldc.i4 769
		IL_0012: call instance void System.Number/NumberBuffer::.ctor(valuetype System.Number/NumberBufferKind, uint8*, int32)
		IL_0017: ldarg.0
		IL_0018: ldarg.1
		IL_0019: ldloca.s 1
		IL_001b: ldarg.2
		IL_001c: call bool System.Number::TryStringToNumber(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, valuetype System.Number/NumberBuffer&, class System.Globalization.NumberFormatInfo)
		IL_0021: brtrue IL_015f

		IL_0026: ldarg.0
		IL_0027: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::Trim(valuetype System.ReadOnlySpan`1<char>)
		IL_002c: stloc.2
		IL_002d: ldloc.2
		IL_002e: ldarg.2
		IL_002f: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveInfinitySymbol()
		IL_0034: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0039: call bool System.MemoryExtensions::EqualsOrdinalIgnoreCase(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>)
		IL_003e: brfalse.s IL_0050

		IL_0040: ldarg.3
		IL_0041: ldc.r8 (00 00 00 00 00 00 F0 7F)
		IL_004a: stind.r8
		IL_004b: br IL_0168

		IL_0050: ldloc.2
		IL_0051: ldarg.2
		IL_0052: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeInfinitySymbol()
		IL_0057: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_005c: call bool System.MemoryExtensions::EqualsOrdinalIgnoreCase(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>)
		IL_0061: brfalse.s IL_0073

		IL_0063: ldarg.3
		IL_0064: ldc.r8 (00 00 00 00 00 00 F0 FF)
		IL_006d: stind.r8
		IL_006e: br IL_0168

		IL_0073: ldloc.2
		IL_0074: ldarg.2
		IL_0075: callvirt instance string System.Globalization.NumberFormatInfo::get_NaNSymbol()
		IL_007a: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_007f: call bool System.MemoryExtensions::EqualsOrdinalIgnoreCase(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>)
		IL_0084: brfalse.s IL_0096

		IL_0086: ldarg.3
		IL_0087: ldc.r8 (00 00 00 00 00 00 F8 FF)
		IL_0090: stind.r8
		IL_0091: br IL_0168

		IL_0096: ldloc.2
		IL_0097: ldarg.2
		IL_0098: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveSign()
		IL_009d: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_00a2: ldc.i4.5
		IL_00a3: call bool System.MemoryExtensions::StartsWith(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, valuetype System.StringComparison)
		IL_00a8: brfalse.s IL_010d

		IL_00aa: ldloca.s 2
		IL_00ac: ldarg.2
		IL_00ad: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveSign()
		IL_00b2: callvirt instance int32 System.String::get_Length()
		IL_00b7: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::Slice(int32)
		IL_00bc: stloc.2
		IL_00bd: ldloc.2
		IL_00be: ldarg.2
		IL_00bf: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveInfinitySymbol()
		IL_00c4: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_00c9: call bool System.MemoryExtensions::EqualsOrdinalIgnoreCase(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>)
		IL_00ce: brfalse.s IL_00e0

		IL_00d0: ldarg.3
		IL_00d1: ldc.r8 (00 00 00 00 00 00 F0 7F)
		IL_00da: stind.r8
		IL_00db: br IL_0168

		IL_00e0: ldloc.2
		IL_00e1: ldarg.2
		IL_00e2: callvirt instance string System.Globalization.NumberFormatInfo::get_NaNSymbol()
		IL_00e7: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_00ec: call bool System.MemoryExtensions::EqualsOrdinalIgnoreCase(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>)
		IL_00f1: brfalse.s IL_0100

		IL_00f3: ldarg.3
		IL_00f4: ldc.r8 (00 00 00 00 00 00 F8 FF)
		IL_00fd: stind.r8
		IL_00fe: br.s IL_0168

		IL_0100: ldarg.3
		IL_0101: ldc.r8 0.0
		IL_010a: stind.r8
		IL_010b: ldc.i4.0
		IL_010c: ret

		IL_010d: ldloc.2
		IL_010e: ldarg.2
		IL_010f: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_0114: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0119: ldc.i4.5
		IL_011a: call bool System.MemoryExtensions::StartsWith(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, valuetype System.StringComparison)
		IL_011f: brfalse.s IL_0152

		IL_0121: ldloca.s 2
		IL_0123: ldarg.2
		IL_0124: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_0129: callvirt instance int32 System.String::get_Length()
		IL_012e: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::Slice(int32)
		IL_0133: ldarg.2
		IL_0134: callvirt instance string System.Globalization.NumberFormatInfo::get_NaNSymbol()
		IL_0139: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_013e: call bool System.MemoryExtensions::EqualsOrdinalIgnoreCase(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>)
		IL_0143: brfalse.s IL_0152

		IL_0145: ldarg.3
		IL_0146: ldc.r8 (00 00 00 00 00 00 F8 FF)
		IL_014f: stind.r8
		IL_0150: br.s IL_0168

		IL_0152: ldarg.3
		IL_0153: ldc.r8 0.0
		IL_015c: stind.r8
		IL_015d: ldc.i4.0
		IL_015e: ret

		IL_015f: ldarg.3
		IL_0160: ldloca.s 1
		IL_0162: call float64 System.Number::NumberToDouble(valuetype System.Number/NumberBuffer&)
		IL_0167: stind.r8

		IL_0168: ldc.i4.1
		IL_0169: ret
	} // end of method Number::TryParseDouble

	.method assembly hidebysig static 
		bool TryParseHalf (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info,
			[out] valuetype System.Half& result
		) cil managed 
	{
		// Method begins at RVA 0x78c54
		// Code size 436 (0x1b4)
		.maxstack 4
		.locals (
			[0] uint8*,
			[1] valuetype System.Number/NumberBuffer,
			[2] valuetype System.ReadOnlySpan`1<char>
		)

		IL_0000: ldc.i4.s 21
		IL_0002: conv.u
		IL_0003: localloc
		IL_0005: stloc.0
		IL_0006: ldloca.s 1
		IL_0008: ldc.i4.3
		IL_0009: ldloc.0
		IL_000a: ldc.i4.s 21
		IL_000c: call instance void System.Number/NumberBuffer::.ctor(valuetype System.Number/NumberBufferKind, uint8*, int32)
		IL_0011: ldarg.0
		IL_0012: ldarg.1
		IL_0013: ldloca.s 1
		IL_0015: ldarg.2
		IL_0016: call bool System.Number::TryStringToNumber(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, valuetype System.Number/NumberBuffer&, class System.Globalization.NumberFormatInfo)
		IL_001b: brtrue IL_01a5

		IL_0020: ldarg.0
		IL_0021: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::Trim(valuetype System.ReadOnlySpan`1<char>)
		IL_0026: stloc.2
		IL_0027: ldloc.2
		IL_0028: ldarg.2
		IL_0029: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveInfinitySymbol()
		IL_002e: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0033: call bool System.MemoryExtensions::EqualsOrdinalIgnoreCase(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>)
		IL_0038: brfalse.s IL_004a

		IL_003a: ldarg.3
		IL_003b: call valuetype System.Half System.Half::get_PositiveInfinity()
		IL_0040: stobj System.Half
		IL_0045: br IL_01b2

		IL_004a: ldloc.2
		IL_004b: ldarg.2
		IL_004c: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeInfinitySymbol()
		IL_0051: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0056: call bool System.MemoryExtensions::EqualsOrdinalIgnoreCase(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>)
		IL_005b: brfalse.s IL_006d

		IL_005d: ldarg.3
		IL_005e: call valuetype System.Half System.Half::get_NegativeInfinity()
		IL_0063: stobj System.Half
		IL_0068: br IL_01b2

		IL_006d: ldloc.2
		IL_006e: ldarg.2
		IL_006f: callvirt instance string System.Globalization.NumberFormatInfo::get_NaNSymbol()
		IL_0074: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0079: call bool System.MemoryExtensions::EqualsOrdinalIgnoreCase(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>)
		IL_007e: brfalse.s IL_0090

		IL_0080: ldarg.3
		IL_0081: call valuetype System.Half System.Half::get_NaN()
		IL_0086: stobj System.Half
		IL_008b: br IL_01b2

		IL_0090: ldloc.2
		IL_0091: ldarg.2
		IL_0092: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveSign()
		IL_0097: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_009c: ldc.i4.5
		IL_009d: call bool System.MemoryExtensions::StartsWith(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, valuetype System.StringComparison)
		IL_00a2: brfalse IL_013a

		IL_00a7: ldloca.s 2
		IL_00a9: ldarg.2
		IL_00aa: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveSign()
		IL_00af: callvirt instance int32 System.String::get_Length()
		IL_00b4: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::Slice(int32)
		IL_00b9: stloc.2
		IL_00ba: ldarg.2
		IL_00bb: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveInfinitySymbol()
		IL_00c0: ldarg.2
		IL_00c1: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveSign()
		IL_00c6: ldc.i4.5
		IL_00c7: callvirt instance bool System.String::StartsWith(string, valuetype System.StringComparison)
		IL_00cc: brtrue.s IL_00f1

		IL_00ce: ldloc.2
		IL_00cf: ldarg.2
		IL_00d0: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveInfinitySymbol()
		IL_00d5: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_00da: call bool System.MemoryExtensions::EqualsOrdinalIgnoreCase(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>)
		IL_00df: brfalse.s IL_00f1

		IL_00e1: ldarg.3
		IL_00e2: call valuetype System.Half System.Half::get_PositiveInfinity()
		IL_00e7: stobj System.Half
		IL_00ec: br IL_01b2

		IL_00f1: ldarg.2
		IL_00f2: callvirt instance string System.Globalization.NumberFormatInfo::get_NaNSymbol()
		IL_00f7: ldarg.2
		IL_00f8: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveSign()
		IL_00fd: ldc.i4.5
		IL_00fe: callvirt instance bool System.String::StartsWith(string, valuetype System.StringComparison)
		IL_0103: brtrue.s IL_0128

		IL_0105: ldloc.2
		IL_0106: ldarg.2
		IL_0107: callvirt instance string System.Globalization.NumberFormatInfo::get_NaNSymbol()
		IL_010c: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0111: call bool System.MemoryExtensions::EqualsOrdinalIgnoreCase(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>)
		IL_0116: brfalse.s IL_0128

		IL_0118: ldarg.3
		IL_0119: call valuetype System.Half System.Half::get_NaN()
		IL_011e: stobj System.Half
		IL_0123: br IL_01b2

		IL_0128: ldarg.3
		IL_0129: ldc.r4 0.0
		IL_012e: call valuetype System.Half System.Half::op_Explicit(float32)
		IL_0133: stobj System.Half
		IL_0138: ldc.i4.0
		IL_0139: ret

		IL_013a: ldloc.2
		IL_013b: ldarg.2
		IL_013c: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_0141: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0146: ldc.i4.5
		IL_0147: call bool System.MemoryExtensions::StartsWith(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, valuetype System.StringComparison)
		IL_014c: brfalse.s IL_0193

		IL_014e: ldarg.2
		IL_014f: callvirt instance string System.Globalization.NumberFormatInfo::get_NaNSymbol()
		IL_0154: ldarg.2
		IL_0155: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_015a: ldc.i4.5
		IL_015b: callvirt instance bool System.String::StartsWith(string, valuetype System.StringComparison)
		IL_0160: brtrue.s IL_0193

		IL_0162: ldloca.s 2
		IL_0164: ldarg.2
		IL_0165: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_016a: callvirt instance int32 System.String::get_Length()
		IL_016f: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::Slice(int32)
		IL_0174: ldarg.2
		IL_0175: callvirt instance string System.Globalization.NumberFormatInfo::get_NaNSymbol()
		IL_017a: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_017f: call bool System.MemoryExtensions::EqualsOrdinalIgnoreCase(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>)
		IL_0184: brfalse.s IL_0193

		IL_0186: ldarg.3
		IL_0187: call valuetype System.Half System.Half::get_NaN()
		IL_018c: stobj System.Half
		IL_0191: br.s IL_01b2

		IL_0193: ldarg.3
		IL_0194: ldc.r4 0.0
		IL_0199: call valuetype System.Half System.Half::op_Explicit(float32)
		IL_019e: stobj System.Half
		IL_01a3: ldc.i4.0
		IL_01a4: ret

		IL_01a5: ldarg.3
		IL_01a6: ldloca.s 1
		IL_01a8: call valuetype System.Half System.Number::NumberToHalf(valuetype System.Number/NumberBuffer&)
		IL_01ad: stobj System.Half

		IL_01b2: ldc.i4.1
		IL_01b3: ret
	} // end of method Number::TryParseHalf

	.method assembly hidebysig static 
		bool TryParseSingle (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			class System.Globalization.NumberFormatInfo info,
			[out] float32& result
		) cil managed 
	{
		// Method begins at RVA 0x78e14
		// Code size 384 (0x180)
		.maxstack 4
		.locals (
			[0] uint8*,
			[1] valuetype System.Number/NumberBuffer,
			[2] valuetype System.ReadOnlySpan`1<char>
		)

		IL_0000: ldc.i4.s 114
		IL_0002: conv.u
		IL_0003: localloc
		IL_0005: stloc.0
		IL_0006: ldloca.s 1
		IL_0008: ldc.i4.3
		IL_0009: ldloc.0
		IL_000a: ldc.i4.s 114
		IL_000c: call instance void System.Number/NumberBuffer::.ctor(valuetype System.Number/NumberBufferKind, uint8*, int32)
		IL_0011: ldarg.0
		IL_0012: ldarg.1
		IL_0013: ldloca.s 1
		IL_0015: ldarg.2
		IL_0016: call bool System.Number::TryStringToNumber(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, valuetype System.Number/NumberBuffer&, class System.Globalization.NumberFormatInfo)
		IL_001b: brtrue IL_0175

		IL_0020: ldarg.0
		IL_0021: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::Trim(valuetype System.ReadOnlySpan`1<char>)
		IL_0026: stloc.2
		IL_0027: ldloc.2
		IL_0028: ldarg.2
		IL_0029: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveInfinitySymbol()
		IL_002e: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0033: call bool System.MemoryExtensions::EqualsOrdinalIgnoreCase(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>)
		IL_0038: brfalse.s IL_0046

		IL_003a: ldarg.3
		IL_003b: ldc.r4 (00 00 80 7F)
		IL_0040: stind.r4
		IL_0041: br IL_017e

		IL_0046: ldloc.2
		IL_0047: ldarg.2
		IL_0048: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeInfinitySymbol()
		IL_004d: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0052: call bool System.MemoryExtensions::EqualsOrdinalIgnoreCase(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>)
		IL_0057: brfalse.s IL_0065

		IL_0059: ldarg.3
		IL_005a: ldc.r4 (00 00 80 FF)
		IL_005f: stind.r4
		IL_0060: br IL_017e

		IL_0065: ldloc.2
		IL_0066: ldarg.2
		IL_0067: callvirt instance string System.Globalization.NumberFormatInfo::get_NaNSymbol()
		IL_006c: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0071: call bool System.MemoryExtensions::EqualsOrdinalIgnoreCase(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>)
		IL_0076: brfalse.s IL_0084

		IL_0078: ldarg.3
		IL_0079: ldc.r4 (00 00 C0 FF)
		IL_007e: stind.r4
		IL_007f: br IL_017e

		IL_0084: ldloc.2
		IL_0085: ldarg.2
		IL_0086: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveSign()
		IL_008b: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0090: ldc.i4.5
		IL_0091: call bool System.MemoryExtensions::StartsWith(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, valuetype System.StringComparison)
		IL_0096: brfalse.s IL_0117

		IL_0098: ldloca.s 2
		IL_009a: ldarg.2
		IL_009b: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveSign()
		IL_00a0: callvirt instance int32 System.String::get_Length()
		IL_00a5: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::Slice(int32)
		IL_00aa: stloc.2
		IL_00ab: ldarg.2
		IL_00ac: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveInfinitySymbol()
		IL_00b1: ldarg.2
		IL_00b2: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveSign()
		IL_00b7: ldc.i4.5
		IL_00b8: callvirt instance bool System.String::StartsWith(string, valuetype System.StringComparison)
		IL_00bd: brtrue.s IL_00de

		IL_00bf: ldloc.2
		IL_00c0: ldarg.2
		IL_00c1: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveInfinitySymbol()
		IL_00c6: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_00cb: call bool System.MemoryExtensions::EqualsOrdinalIgnoreCase(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>)
		IL_00d0: brfalse.s IL_00de

		IL_00d2: ldarg.3
		IL_00d3: ldc.r4 (00 00 80 7F)
		IL_00d8: stind.r4
		IL_00d9: br IL_017e

		IL_00de: ldarg.2
		IL_00df: callvirt instance string System.Globalization.NumberFormatInfo::get_NaNSymbol()
		IL_00e4: ldarg.2
		IL_00e5: callvirt instance string System.Globalization.NumberFormatInfo::get_PositiveSign()
		IL_00ea: ldc.i4.5
		IL_00eb: callvirt instance bool System.String::StartsWith(string, valuetype System.StringComparison)
		IL_00f0: brtrue.s IL_010e

		IL_00f2: ldloc.2
		IL_00f3: ldarg.2
		IL_00f4: callvirt instance string System.Globalization.NumberFormatInfo::get_NaNSymbol()
		IL_00f9: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_00fe: call bool System.MemoryExtensions::EqualsOrdinalIgnoreCase(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>)
		IL_0103: brfalse.s IL_010e

		IL_0105: ldarg.3
		IL_0106: ldc.r4 (00 00 C0 FF)
		IL_010b: stind.r4
		IL_010c: br.s IL_017e

		IL_010e: ldarg.3
		IL_010f: ldc.r4 0.0
		IL_0114: stind.r4
		IL_0115: ldc.i4.0
		IL_0116: ret

		IL_0117: ldloc.2
		IL_0118: ldarg.2
		IL_0119: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_011e: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0123: ldc.i4.5
		IL_0124: call bool System.MemoryExtensions::StartsWith(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, valuetype System.StringComparison)
		IL_0129: brfalse.s IL_016c

		IL_012b: ldarg.2
		IL_012c: callvirt instance string System.Globalization.NumberFormatInfo::get_NaNSymbol()
		IL_0131: ldarg.2
		IL_0132: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_0137: ldc.i4.5
		IL_0138: callvirt instance bool System.String::StartsWith(string, valuetype System.StringComparison)
		IL_013d: brtrue.s IL_016c

		IL_013f: ldloca.s 2
		IL_0141: ldarg.2
		IL_0142: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_0147: callvirt instance int32 System.String::get_Length()
		IL_014c: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::Slice(int32)
		IL_0151: ldarg.2
		IL_0152: callvirt instance string System.Globalization.NumberFormatInfo::get_NaNSymbol()
		IL_0157: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_015c: call bool System.MemoryExtensions::EqualsOrdinalIgnoreCase(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>)
		IL_0161: brfalse.s IL_016c

		IL_0163: ldarg.3
		IL_0164: ldc.r4 (00 00 C0 FF)
		IL_0169: stind.r4
		IL_016a: br.s IL_017e

		IL_016c: ldarg.3
		IL_016d: ldc.r4 0.0
		IL_0172: stind.r4
		IL_0173: ldc.i4.0
		IL_0174: ret

		IL_0175: ldarg.3
		IL_0176: ldloca.s 1
		IL_0178: call float32 System.Number::NumberToSingle(valuetype System.Number/NumberBuffer&)
		IL_017d: stind.r4

		IL_017e: ldc.i4.1
		IL_017f: ret
	} // end of method Number::TryParseSingle

	.method assembly hidebysig static 
		bool TryStringToNumber (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.Globalization.NumberStyles styles,
			valuetype System.Number/NumberBuffer& number,
			class System.Globalization.NumberFormatInfo info
		) cil managed 
	{
		// Method begins at RVA 0x78fa0
		// Code size 74 (0x4a)
		.maxstack 5
		.locals (
			[0] char*,
			[1] char& pinned,
			[2] char*
		)

		IL_0000: ldarg.0
		IL_0001: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<char>(valuetype System.ReadOnlySpan`1<!!0>)
		IL_0006: stloc.1
		IL_0007: ldloc.1
		IL_0008: conv.u
		IL_0009: stloc.0
		IL_000a: ldloc.0
		IL_000b: stloc.2
		IL_000c: ldloca.s 2
		IL_000e: ldloc.2
		IL_000f: ldarga.s 'value'
		IL_0011: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0016: conv.i
		IL_0017: ldc.i4.2
		IL_0018: mul
		IL_0019: add
		IL_001a: ldarg.1
		IL_001b: ldarg.2
		IL_001c: ldarg.3
		IL_001d: call bool System.Number::TryParseNumber(char*&, char*, valuetype System.Globalization.NumberStyles, valuetype System.Number/NumberBuffer&, class System.Globalization.NumberFormatInfo)
		IL_0022: brfalse.s IL_0043

		IL_0024: ldloc.2
		IL_0025: ldloc.0
		IL_0026: sub
		IL_0027: ldc.i4.2
		IL_0028: div
		IL_0029: conv.i8
		IL_002a: conv.i4
		IL_002b: ldarga.s 'value'
		IL_002d: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0032: bge.s IL_0045

		IL_0034: ldarg.0
		IL_0035: ldloc.2
		IL_0036: ldloc.0
		IL_0037: sub
		IL_0038: ldc.i4.2
		IL_0039: div
		IL_003a: conv.i8
		IL_003b: conv.i4
		IL_003c: call bool System.Number::TrailingZeros(valuetype System.ReadOnlySpan`1<char>, int32)
		IL_0041: brtrue.s IL_0045

		IL_0043: ldc.i4.0
		IL_0044: ret

		IL_0045: ldc.i4.0
		IL_0046: conv.u
		IL_0047: stloc.1
		IL_0048: ldc.i4.1
		IL_0049: ret
	} // end of method Number::TryStringToNumber

	.method private hidebysig static 
		bool TrailingZeros (
			valuetype System.ReadOnlySpan`1<char> 'value',
			int32 index
		) cil managed 
	{
		// Method begins at RVA 0x78ff8
		// Code size 33 (0x21)
		.maxstack 2
		.locals (
			[0] int32
		)

		IL_0000: ldarg.1
		IL_0001: stloc.0
		IL_0002: br.s IL_0015
		// loop start (head: IL_0015)
			IL_0004: ldarga.s 'value'
			IL_0006: ldloc.0
			IL_0007: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_000c: ldind.u2
			IL_000d: brfalse.s IL_0011

			IL_000f: ldc.i4.0
			IL_0010: ret

			IL_0011: ldloc.0
			IL_0012: ldc.i4.1
			IL_0013: add
			IL_0014: stloc.0

			IL_0015: ldloc.0
			IL_0016: ldarga.s 'value'
			IL_0018: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_001d: blt.un.s IL_0004
		// end loop

		IL_001f: ldc.i4.1
		IL_0020: ret
	} // end of method Number::TrailingZeros

	.method private hidebysig static 
		bool IsSpaceReplacingChar (
			char c
		) cil managed 
	{
		// Method begins at RVA 0x79025
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4 160
		IL_0006: beq.s IL_0011

		IL_0008: ldarg.0
		IL_0009: ldc.i4 8239
		IL_000e: ceq
		IL_0010: ret

		IL_0011: ldc.i4.1
		IL_0012: ret
	} // end of method Number::IsSpaceReplacingChar

	.method private hidebysig static 
		char* MatchChars (
			char* p,
			char* pEnd,
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x7903c
		// Code size 73 (0x49)
		.maxstack 2
		.locals (
			[0] char*,
			[1] char& pinned,
			[2] char*,
			[3] char
		)

		IL_0000: ldarg.2
		IL_0001: brtrue.s IL_0007

		IL_0003: ldc.i4.0
		IL_0004: conv.u
		IL_0005: br.s IL_0010

		IL_0007: ldarg.2
		IL_0008: call instance char& modreq(System.Runtime.InteropServices.InAttribute) System.String::GetPinnableReference()
		IL_000d: stloc.1
		IL_000e: ldloc.1
		IL_000f: conv.u

		IL_0010: stloc.0
		IL_0011: ldloc.0
		IL_0012: stloc.2
		IL_0013: ldloc.2
		IL_0014: ldind.u2
		IL_0015: brfalse.s IL_0043
		// loop start (head: IL_0017)
			IL_0017: ldarg.0
			IL_0018: ldarg.1
			IL_0019: blt.un.s IL_001e

			IL_001b: ldc.i4.0
			IL_001c: br.s IL_0020

			IL_001e: ldarg.0
			IL_001f: ldind.u2

			IL_0020: stloc.3
			IL_0021: ldloc.3
			IL_0022: ldloc.2
			IL_0023: ldind.u2
			IL_0024: beq.s IL_0034

			IL_0026: ldloc.2
			IL_0027: ldind.u2
			IL_0028: call bool System.Number::IsSpaceReplacingChar(char)
			IL_002d: brfalse.s IL_0043

			IL_002f: ldloc.3
			IL_0030: ldc.i4.s 32
			IL_0032: bne.un.s IL_0043

			IL_0034: ldarg.0
			IL_0035: ldc.i4.2
			IL_0036: add
			IL_0037: starg.s p
			IL_0039: ldloc.2
			IL_003a: ldc.i4.2
			IL_003b: add
			IL_003c: stloc.2
			IL_003d: ldloc.2
			IL_003e: ldind.u2
			IL_003f: brtrue.s IL_0017
		// end loop

		IL_0041: ldarg.0
		IL_0042: ret

		IL_0043: ldc.i4.0
		IL_0044: conv.u
		IL_0045: stloc.1
		IL_0046: ldc.i4.0
		IL_0047: conv.u
		IL_0048: ret
	} // end of method Number::MatchChars

	.method private hidebysig static 
		bool IsWhite (
			int32 ch
		) cil managed 
	{
		// Method begins at RVA 0x79091
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 32
		IL_0003: beq.s IL_000e

		IL_0005: ldarg.0
		IL_0006: ldc.i4.s 9
		IL_0008: sub
		IL_0009: ldc.i4.4
		IL_000a: ble.un.s IL_000e

		IL_000c: ldc.i4.0
		IL_000d: ret

		IL_000e: ldc.i4.1
		IL_000f: ret
	} // end of method Number::IsWhite

	.method private hidebysig static 
		bool IsDigit (
			int32 ch
		) cil managed 
	{
		// Method begins at RVA 0x66e39
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 48
		IL_0003: sub
		IL_0004: ldc.i4.s 9
		IL_0006: cgt.un
		IL_0008: ldc.i4.0
		IL_0009: ceq
		IL_000b: ret
	} // end of method Number::IsDigit

	.method assembly hidebysig static 
		void ThrowOverflowOrFormatException (
			valuetype System.Number/ParsingStatus status,
			[opt] valuetype System.TypeCode 'type'
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DoesNotReturnAttribute::.ctor() = (
			01 00 00 00
		)
		.param [2] = int32(0)
		// Method begins at RVA 0x790a2
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call class System.Exception System.Number::GetException(valuetype System.Number/ParsingStatus, valuetype System.TypeCode)
		IL_0007: throw
	} // end of method Number::ThrowOverflowOrFormatException

	.method assembly hidebysig static 
		void ThrowOverflowException (
			valuetype System.TypeCode 'type'
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DoesNotReturnAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x790ab
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldc.i4.2
		IL_0001: ldarg.0
		IL_0002: call class System.Exception System.Number::GetException(valuetype System.Number/ParsingStatus, valuetype System.TypeCode)
		IL_0007: throw
	} // end of method Number::ThrowOverflowException

	.method private hidebysig static 
		class System.Exception GetException (
			valuetype System.Number/ParsingStatus status,
			valuetype System.TypeCode 'type'
		) cil managed 
	{
		// Method begins at RVA 0x790b4
		// Code size 134 (0x86)
		.maxstack 2
		.locals (
			[0] string
		)

		IL_0000: ldarg.0
		IL_0001: ldc.i4.1
		IL_0002: bne.un.s IL_000f

		IL_0004: call string System.SR::get_Format_InvalidString()
		IL_0009: newobj instance void System.FormatException::.ctor(string)
		IL_000e: ret

		IL_000f: ldarg.1
		IL_0010: ldc.i4.5
		IL_0011: sub
		IL_0012: switch (IL_0039, IL_0041, IL_0049, IL_0051, IL_0059, IL_0061, IL_0069, IL_0071)

		IL_0037: br.s IL_0079

		IL_0039: call string System.SR::get_Overflow_SByte()
		IL_003e: stloc.0
		IL_003f: br.s IL_007f

		IL_0041: call string System.SR::get_Overflow_Byte()
		IL_0046: stloc.0
		IL_0047: br.s IL_007f

		IL_0049: call string System.SR::get_Overflow_Int16()
		IL_004e: stloc.0
		IL_004f: br.s IL_007f

		IL_0051: call string System.SR::get_Overflow_UInt16()
		IL_0056: stloc.0
		IL_0057: br.s IL_007f

		IL_0059: call string System.SR::get_Overflow_Int32()
		IL_005e: stloc.0
		IL_005f: br.s IL_007f

		IL_0061: call string System.SR::get_Overflow_UInt32()
		IL_0066: stloc.0
		IL_0067: br.s IL_007f

		IL_0069: call string System.SR::get_Overflow_Int64()
		IL_006e: stloc.0
		IL_006f: br.s IL_007f

		IL_0071: call string System.SR::get_Overflow_UInt64()
		IL_0076: stloc.0
		IL_0077: br.s IL_007f

		IL_0079: call string System.SR::get_Overflow_Decimal()
		IL_007e: stloc.0

		IL_007f: ldloc.0
		IL_0080: newobj instance void System.OverflowException::.ctor(string)
		IL_0085: ret
	} // end of method Number::GetException

	.method assembly hidebysig static 
		float64 NumberToDouble (
			valuetype System.Number/NumberBuffer& number
		) cil managed 
	{
		// Method begins at RVA 0x79148
		// Code size 90 (0x5a)
		.maxstack 2
		.locals (
			[0] float64,
			[1] uint64
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int32 System.Number/NumberBuffer::DigitsCount
		IL_0006: brfalse.s IL_0015

		IL_0008: ldarg.0
		IL_0009: ldfld int32 System.Number/NumberBuffer::Scale
		IL_000e: ldc.i4 -324
		IL_0013: bge.s IL_0021

		IL_0015: ldc.r8 0.0
		IL_001e: stloc.0
		IL_001f: br.s IL_004d

		IL_0021: ldarg.0
		IL_0022: ldfld int32 System.Number/NumberBuffer::Scale
		IL_0027: ldc.i4 309
		IL_002c: ble.s IL_003a

		IL_002e: ldc.r8 (00 00 00 00 00 00 F0 7F)
		IL_0037: stloc.0
		IL_0038: br.s IL_004d

		IL_003a: ldarg.0
		IL_003b: ldsflda valuetype System.Number/FloatingPointInfo System.Number/FloatingPointInfo::Double
		IL_0040: call uint64 System.Number::NumberToFloatingPointBits(valuetype System.Number/NumberBuffer&, valuetype System.Number/FloatingPointInfo&)
		IL_0045: stloc.1
		IL_0046: ldloc.1
		IL_0047: call float64 System.BitConverter::Int64BitsToDouble(int64)
		IL_004c: stloc.0

		IL_004d: ldarg.0
		IL_004e: ldfld bool System.Number/NumberBuffer::IsNegative
		IL_0053: brtrue.s IL_0057

		IL_0055: ldloc.0
		IL_0056: ret

		IL_0057: ldloc.0
		IL_0058: neg
		IL_0059: ret
	} // end of method Number::NumberToDouble

	.method assembly hidebysig static 
		valuetype System.Half NumberToHalf (
			valuetype System.Number/NumberBuffer& number
		) cil managed 
	{
		// Method begins at RVA 0x791b0
		// Code size 83 (0x53)
		.maxstack 2
		.locals (
			[0] valuetype System.Half,
			[1] uint16
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int32 System.Number/NumberBuffer::DigitsCount
		IL_0006: brfalse.s IL_0012

		IL_0008: ldarg.0
		IL_0009: ldfld int32 System.Number/NumberBuffer::Scale
		IL_000e: ldc.i4.s -8
		IL_0010: bge.s IL_001c

		IL_0012: ldloca.s 0
		IL_0014: initobj System.Half
		IL_001a: br.s IL_0042

		IL_001c: ldarg.0
		IL_001d: ldfld int32 System.Number/NumberBuffer::Scale
		IL_0022: ldc.i4.5
		IL_0023: ble.s IL_002d

		IL_0025: call valuetype System.Half System.Half::get_PositiveInfinity()
		IL_002a: stloc.0
		IL_002b: br.s IL_0042

		IL_002d: ldarg.0
		IL_002e: ldsflda valuetype System.Number/FloatingPointInfo System.Number/FloatingPointInfo::Half
		IL_0033: call uint64 System.Number::NumberToFloatingPointBits(valuetype System.Number/NumberBuffer&, valuetype System.Number/FloatingPointInfo&)
		IL_0038: conv.u2
		IL_0039: stloc.1
		IL_003a: ldloca.s 0
		IL_003c: ldloc.1
		IL_003d: call instance void System.Half::.ctor(uint16)

		IL_0042: ldarg.0
		IL_0043: ldfld bool System.Number/NumberBuffer::IsNegative
		IL_0048: brtrue.s IL_004c

		IL_004a: ldloc.0
		IL_004b: ret

		IL_004c: ldloc.0
		IL_004d: call valuetype System.Half System.Half::Negate(valuetype System.Half)
		IL_0052: ret
	} // end of method Number::NumberToHalf

	.method assembly hidebysig static 
		float32 NumberToSingle (
			valuetype System.Number/NumberBuffer& number
		) cil managed 
	{
		// Method begins at RVA 0x79210
		// Code size 77 (0x4d)
		.maxstack 2
		.locals (
			[0] float32,
			[1] uint32
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int32 System.Number/NumberBuffer::DigitsCount
		IL_0006: brfalse.s IL_0012

		IL_0008: ldarg.0
		IL_0009: ldfld int32 System.Number/NumberBuffer::Scale
		IL_000e: ldc.i4.s -45
		IL_0010: bge.s IL_001a

		IL_0012: ldc.r4 0.0
		IL_0017: stloc.0
		IL_0018: br.s IL_0040

		IL_001a: ldarg.0
		IL_001b: ldfld int32 System.Number/NumberBuffer::Scale
		IL_0020: ldc.i4.s 39
		IL_0022: ble.s IL_002c

		IL_0024: ldc.r4 (00 00 80 7F)
		IL_0029: stloc.0
		IL_002a: br.s IL_0040

		IL_002c: ldarg.0
		IL_002d: ldsflda valuetype System.Number/FloatingPointInfo System.Number/FloatingPointInfo::Single
		IL_0032: call uint64 System.Number::NumberToFloatingPointBits(valuetype System.Number/NumberBuffer&, valuetype System.Number/FloatingPointInfo&)
		IL_0037: conv.u4
		IL_0038: stloc.1
		IL_0039: ldloc.1
		IL_003a: call float32 System.BitConverter::Int32BitsToSingle(int32)
		IL_003f: stloc.0

		IL_0040: ldarg.0
		IL_0041: ldfld bool System.Number/NumberBuffer::IsNegative
		IL_0046: brtrue.s IL_004a

		IL_0048: ldloc.0
		IL_0049: ret

		IL_004a: ldloc.0
		IL_004b: neg
		IL_004c: ret
	} // end of method Number::NumberToSingle

	.method private hidebysig specialname rtspecialname static 
		void .cctor () cil managed 
	{
		// Method begins at RVA 0x7926c
		// Code size 544 (0x220)
		.maxstack 4

		IL_0000: ldc.i4.s 10
		IL_0002: newarr System.String
		IL_0007: dup
		IL_0008: ldc.i4.0
		IL_0009: ldstr "0"
		IL_000e: stelem.ref
		IL_000f: dup
		IL_0010: ldc.i4.1
		IL_0011: ldstr "1"
		IL_0016: stelem.ref
		IL_0017: dup
		IL_0018: ldc.i4.2
		IL_0019: ldstr "2"
		IL_001e: stelem.ref
		IL_001f: dup
		IL_0020: ldc.i4.3
		IL_0021: ldstr "3"
		IL_0026: stelem.ref
		IL_0027: dup
		IL_0028: ldc.i4.4
		IL_0029: ldstr "4"
		IL_002e: stelem.ref
		IL_002f: dup
		IL_0030: ldc.i4.5
		IL_0031: ldstr "5"
		IL_0036: stelem.ref
		IL_0037: dup
		IL_0038: ldc.i4.6
		IL_0039: ldstr "6"
		IL_003e: stelem.ref
		IL_003f: dup
		IL_0040: ldc.i4.7
		IL_0041: ldstr "7"
		IL_0046: stelem.ref
		IL_0047: dup
		IL_0048: ldc.i4.8
		IL_0049: ldstr "8"
		IL_004e: stelem.ref
		IL_004f: dup
		IL_0050: ldc.i4.s 9
		IL_0052: ldstr "9"
		IL_0057: stelem.ref
		IL_0058: stsfld string[] System.Number::s_singleDigitStringCache
		IL_005d: ldc.i4.4
		IL_005e: newarr System.String
		IL_0063: dup
		IL_0064: ldc.i4.0
		IL_0065: ldstr "$#"
		IL_006a: stelem.ref
		IL_006b: dup
		IL_006c: ldc.i4.1
		IL_006d: ldstr "#$"
		IL_0072: stelem.ref
		IL_0073: dup
		IL_0074: ldc.i4.2
		IL_0075: ldstr "$ #"
		IL_007a: stelem.ref
		IL_007b: dup
		IL_007c: ldc.i4.3
		IL_007d: ldstr "# $"
		IL_0082: stelem.ref
		IL_0083: stsfld string[] System.Number::s_posCurrencyFormats
		IL_0088: ldc.i4.s 17
		IL_008a: newarr System.String
		IL_008f: dup
		IL_0090: ldc.i4.0
		IL_0091: ldstr "($#)"
		IL_0096: stelem.ref
		IL_0097: dup
		IL_0098: ldc.i4.1
		IL_0099: ldstr "-$#"
		IL_009e: stelem.ref
		IL_009f: dup
		IL_00a0: ldc.i4.2
		IL_00a1: ldstr "$-#"
		IL_00a6: stelem.ref
		IL_00a7: dup
		IL_00a8: ldc.i4.3
		IL_00a9: ldstr "$#-"
		IL_00ae: stelem.ref
		IL_00af: dup
		IL_00b0: ldc.i4.4
		IL_00b1: ldstr "(#$)"
		IL_00b6: stelem.ref
		IL_00b7: dup
		IL_00b8: ldc.i4.5
		IL_00b9: ldstr "-#$"
		IL_00be: stelem.ref
		IL_00bf: dup
		IL_00c0: ldc.i4.6
		IL_00c1: ldstr "#-$"
		IL_00c6: stelem.ref
		IL_00c7: dup
		IL_00c8: ldc.i4.7
		IL_00c9: ldstr "#$-"
		IL_00ce: stelem.ref
		IL_00cf: dup
		IL_00d0: ldc.i4.8
		IL_00d1: ldstr "-# $"
		IL_00d6: stelem.ref
		IL_00d7: dup
		IL_00d8: ldc.i4.s 9
		IL_00da: ldstr "-$ #"
		IL_00df: stelem.ref
		IL_00e0: dup
		IL_00e1: ldc.i4.s 10
		IL_00e3: ldstr "# $-"
		IL_00e8: stelem.ref
		IL_00e9: dup
		IL_00ea: ldc.i4.s 11
		IL_00ec: ldstr "$ #-"
		IL_00f1: stelem.ref
		IL_00f2: dup
		IL_00f3: ldc.i4.s 12
		IL_00f5: ldstr "$ -#"
		IL_00fa: stelem.ref
		IL_00fb: dup
		IL_00fc: ldc.i4.s 13
		IL_00fe: ldstr "#- $"
		IL_0103: stelem.ref
		IL_0104: dup
		IL_0105: ldc.i4.s 14
		IL_0107: ldstr "($ #)"
		IL_010c: stelem.ref
		IL_010d: dup
		IL_010e: ldc.i4.s 15
		IL_0110: ldstr "(# $)"
		IL_0115: stelem.ref
		IL_0116: dup
		IL_0117: ldc.i4.s 16
		IL_0119: ldstr "$- #"
		IL_011e: stelem.ref
		IL_011f: stsfld string[] System.Number::s_negCurrencyFormats
		IL_0124: ldc.i4.4
		IL_0125: newarr System.String
		IL_012a: dup
		IL_012b: ldc.i4.0
		IL_012c: ldstr "# %"
		IL_0131: stelem.ref
		IL_0132: dup
		IL_0133: ldc.i4.1
		IL_0134: ldstr "#%"
		IL_0139: stelem.ref
		IL_013a: dup
		IL_013b: ldc.i4.2
		IL_013c: ldstr "%#"
		IL_0141: stelem.ref
		IL_0142: dup
		IL_0143: ldc.i4.3
		IL_0144: ldstr "% #"
		IL_0149: stelem.ref
		IL_014a: stsfld string[] System.Number::s_posPercentFormats
		IL_014f: ldc.i4.s 12
		IL_0151: newarr System.String
		IL_0156: dup
		IL_0157: ldc.i4.0
		IL_0158: ldstr "-# %"
		IL_015d: stelem.ref
		IL_015e: dup
		IL_015f: ldc.i4.1
		IL_0160: ldstr "-#%"
		IL_0165: stelem.ref
		IL_0166: dup
		IL_0167: ldc.i4.2
		IL_0168: ldstr "-%#"
		IL_016d: stelem.ref
		IL_016e: dup
		IL_016f: ldc.i4.3
		IL_0170: ldstr "%-#"
		IL_0175: stelem.ref
		IL_0176: dup
		IL_0177: ldc.i4.4
		IL_0178: ldstr "%#-"
		IL_017d: stelem.ref
		IL_017e: dup
		IL_017f: ldc.i4.5
		IL_0180: ldstr "#-%"
		IL_0185: stelem.ref
		IL_0186: dup
		IL_0187: ldc.i4.6
		IL_0188: ldstr "#%-"
		IL_018d: stelem.ref
		IL_018e: dup
		IL_018f: ldc.i4.7
		IL_0190: ldstr "-% #"
		IL_0195: stelem.ref
		IL_0196: dup
		IL_0197: ldc.i4.8
		IL_0198: ldstr "# %-"
		IL_019d: stelem.ref
		IL_019e: dup
		IL_019f: ldc.i4.s 9
		IL_01a1: ldstr "% #-"
		IL_01a6: stelem.ref
		IL_01a7: dup
		IL_01a8: ldc.i4.s 10
		IL_01aa: ldstr "% -#"
		IL_01af: stelem.ref
		IL_01b0: dup
		IL_01b1: ldc.i4.s 11
		IL_01b3: ldstr "#- %"
		IL_01b8: stelem.ref
		IL_01b9: stsfld string[] System.Number::s_negPercentFormats
		IL_01be: ldc.i4.5
		IL_01bf: newarr System.String
		IL_01c4: dup
		IL_01c5: ldc.i4.0
		IL_01c6: ldstr "(#)"
		IL_01cb: stelem.ref
		IL_01cc: dup
		IL_01cd: ldc.i4.1
		IL_01ce: ldstr "-#"
		IL_01d3: stelem.ref
		IL_01d4: dup
		IL_01d5: ldc.i4.2
		IL_01d6: ldstr "- #"
		IL_01db: stelem.ref
		IL_01dc: dup
		IL_01dd: ldc.i4.3
		IL_01de: ldstr "#-"
		IL_01e3: stelem.ref
		IL_01e4: dup
		IL_01e5: ldc.i4.4
		IL_01e6: ldstr "# -"
		IL_01eb: stelem.ref
		IL_01ec: stsfld string[] System.Number::s_negNumberFormats
		IL_01f1: ldc.i4.s 11
		IL_01f3: newarr System.Single
		IL_01f8: dup
		IL_01f9: ldtoken field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=44' '<PrivateImplementationDetails>'::CB81BB1A460E5CE9CF6277B9FEB0A3B860AF6F30ABA098EDB651F338C83A9278
		IL_01fe: call void System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class System.Array, valuetype System.RuntimeFieldHandle)
		IL_0203: stsfld float32[] System.Number::s_Pow10SingleTable
		IL_0208: ldc.i4.s 23
		IL_020a: newarr System.Double
		IL_020f: dup
		IL_0210: ldtoken field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=184' '<PrivateImplementationDetails>'::'54163634AEBD5768E4BE0AF562CC018EB2E45008D13F13F14366BE52C290193D'
		IL_0215: call void System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class System.Array, valuetype System.RuntimeFieldHandle)
		IL_021a: stsfld float64[] System.Number::s_Pow10DoubleTable
		IL_021f: ret
	} // end of method Number::.cctor

	.method assembly hidebysig static 
		string '<FormatInt32>g__FormatInt32Slow|38_0' (
			int32 'value',
			int32 hexMask,
			string format,
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x79498
		// Code size 197 (0xc5)
		.maxstack 5
		.locals (
			[0] valuetype System.ReadOnlySpan`1<char>,
			[1] char,
			[2] int32,
			[3] char,
			[4] class System.Globalization.NumberFormatInfo,
			[5] uint8*,
			[6] valuetype System.Number/NumberBuffer,
			[7] char*,
			[8] valuetype System.Text.ValueStringBuilder
		)

		IL_0000: ldarg.2
		IL_0001: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldloca.s 2
		IL_000a: call char System.Number::ParseFormatSpecifier(valuetype System.ReadOnlySpan`1<char>, int32&)
		IL_000f: stloc.1
		IL_0010: ldloc.1
		IL_0011: ldc.i4 65503
		IL_0016: and
		IL_0017: conv.u2
		IL_0018: stloc.3
		IL_0019: ldloc.3
		IL_001a: ldc.i4.s 71
		IL_001c: beq.s IL_0025

		IL_001e: ldloc.3
		IL_001f: ldc.i4.s 68
		IL_0021: ceq
		IL_0023: br.s IL_0029

		IL_0025: ldloc.2
		IL_0026: ldc.i4.1
		IL_0027: clt

		IL_0029: brfalse.s IL_004a

		IL_002b: ldarg.0
		IL_002c: ldc.i4.0
		IL_002d: bge.s IL_0042

		IL_002f: ldarg.0
		IL_0030: ldloc.2
		IL_0031: ldarg.3
		IL_0032: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0037: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_003c: call string System.Number::NegativeInt32ToDecStr(int32, int32, string)
		IL_0041: ret

		IL_0042: ldarg.0
		IL_0043: ldloc.2
		IL_0044: call string System.Number::UInt32ToDecStr(uint32, int32)
		IL_0049: ret

		IL_004a: ldloc.3
		IL_004b: ldc.i4.s 88
		IL_004d: bne.un.s IL_005f

		IL_004f: ldarg.0
		IL_0050: ldarg.1
		IL_0051: and
		IL_0052: ldloc.1
		IL_0053: call char System.Number::GetHexBase(char)
		IL_0058: ldloc.2
		IL_0059: call string System.Number::Int32ToHexStr(int32, char, int32)
		IL_005e: ret

		IL_005f: ldarg.3
		IL_0060: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0065: stloc.s 4
		IL_0067: ldc.i4.s 11
		IL_0069: conv.u
		IL_006a: localloc
		IL_006c: stloc.s 5
		IL_006e: ldloca.s 6
		IL_0070: ldc.i4.1
		IL_0071: ldloc.s 5
		IL_0073: ldc.i4.s 11
		IL_0075: call instance void System.Number/NumberBuffer::.ctor(valuetype System.Number/NumberBufferKind, uint8*, int32)
		IL_007a: ldarg.0
		IL_007b: ldloca.s 6
		IL_007d: call void System.Number::Int32ToNumber(int32, valuetype System.Number/NumberBuffer&)
		IL_0082: ldc.i4.s 64
		IL_0084: conv.u
		IL_0085: localloc
		IL_0087: stloc.s 7
		IL_0089: ldloca.s 8
		IL_008b: ldloc.s 7
		IL_008d: ldc.i4.s 32
		IL_008f: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_0094: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
		IL_0099: ldloc.1
		IL_009a: brfalse.s IL_00ab

		IL_009c: ldloca.s 8
		IL_009e: ldloca.s 6
		IL_00a0: ldloc.1
		IL_00a1: ldloc.2
		IL_00a2: ldloc.s 4
		IL_00a4: call void System.Number::NumberToString(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, char, int32, class System.Globalization.NumberFormatInfo)
		IL_00a9: br.s IL_00b7

		IL_00ab: ldloca.s 8
		IL_00ad: ldloca.s 6
		IL_00af: ldloc.0
		IL_00b0: ldloc.s 4
		IL_00b2: call void System.Number::NumberToStringFormat(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)

		IL_00b7: ldloca.s 8
		IL_00b9: constrained. System.Text.ValueStringBuilder
		IL_00bf: callvirt instance string System.Object::ToString()
		IL_00c4: ret
	} // end of method Number::'<FormatInt32>g__FormatInt32Slow|38_0'

	.method assembly hidebysig static 
		bool '<TryFormatInt32>g__TryFormatInt32Slow|39_0' (
			int32 'value',
			int32 hexMask,
			valuetype System.ReadOnlySpan`1<char> format,
			class System.IFormatProvider provider,
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x7956c
		// Code size 197 (0xc5)
		.maxstack 5
		.locals (
			[0] char,
			[1] int32,
			[2] char,
			[3] class System.Globalization.NumberFormatInfo,
			[4] uint8*,
			[5] valuetype System.Number/NumberBuffer,
			[6] char*,
			[7] valuetype System.Text.ValueStringBuilder
		)

		IL_0000: ldarg.2
		IL_0001: ldloca.s 1
		IL_0003: call char System.Number::ParseFormatSpecifier(valuetype System.ReadOnlySpan`1<char>, int32&)
		IL_0008: stloc.0
		IL_0009: ldloc.0
		IL_000a: ldc.i4 65503
		IL_000f: and
		IL_0010: conv.u2
		IL_0011: stloc.2
		IL_0012: ldloc.2
		IL_0013: ldc.i4.s 71
		IL_0015: beq.s IL_001e

		IL_0017: ldloc.2
		IL_0018: ldc.i4.s 68
		IL_001a: ceq
		IL_001c: br.s IL_0022

		IL_001e: ldloc.1
		IL_001f: ldc.i4.1
		IL_0020: clt

		IL_0022: brfalse.s IL_004b

		IL_0024: ldarg.0
		IL_0025: ldc.i4.0
		IL_0026: bge.s IL_003f

		IL_0028: ldarg.0
		IL_0029: ldloc.1
		IL_002a: ldarg.3
		IL_002b: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0030: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_0035: ldarg.s destination
		IL_0037: ldarg.s charsWritten
		IL_0039: call bool System.Number::TryNegativeInt32ToDecStr(int32, int32, string, valuetype System.Span`1<char>, int32&)
		IL_003e: ret

		IL_003f: ldarg.0
		IL_0040: ldloc.1
		IL_0041: ldarg.s destination
		IL_0043: ldarg.s charsWritten
		IL_0045: call bool System.Number::TryUInt32ToDecStr(uint32, int32, valuetype System.Span`1<char>, int32&)
		IL_004a: ret

		IL_004b: ldloc.2
		IL_004c: ldc.i4.s 88
		IL_004e: bne.un.s IL_0064

		IL_0050: ldarg.0
		IL_0051: ldarg.1
		IL_0052: and
		IL_0053: ldloc.0
		IL_0054: call char System.Number::GetHexBase(char)
		IL_0059: ldloc.1
		IL_005a: ldarg.s destination
		IL_005c: ldarg.s charsWritten
		IL_005e: call bool System.Number::TryInt32ToHexStr(int32, char, int32, valuetype System.Span`1<char>, int32&)
		IL_0063: ret

		IL_0064: ldarg.3
		IL_0065: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_006a: stloc.3
		IL_006b: ldc.i4.s 11
		IL_006d: conv.u
		IL_006e: localloc
		IL_0070: stloc.s 4
		IL_0072: ldloca.s 5
		IL_0074: ldc.i4.1
		IL_0075: ldloc.s 4
		IL_0077: ldc.i4.s 11
		IL_0079: call instance void System.Number/NumberBuffer::.ctor(valuetype System.Number/NumberBufferKind, uint8*, int32)
		IL_007e: ldarg.0
		IL_007f: ldloca.s 5
		IL_0081: call void System.Number::Int32ToNumber(int32, valuetype System.Number/NumberBuffer&)
		IL_0086: ldc.i4.s 64
		IL_0088: conv.u
		IL_0089: localloc
		IL_008b: stloc.s 6
		IL_008d: ldloca.s 7
		IL_008f: ldloc.s 6
		IL_0091: ldc.i4.s 32
		IL_0093: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_0098: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
		IL_009d: ldloc.0
		IL_009e: brfalse.s IL_00ae

		IL_00a0: ldloca.s 7
		IL_00a2: ldloca.s 5
		IL_00a4: ldloc.0
		IL_00a5: ldloc.1
		IL_00a6: ldloc.3
		IL_00a7: call void System.Number::NumberToString(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, char, int32, class System.Globalization.NumberFormatInfo)
		IL_00ac: br.s IL_00b9

		IL_00ae: ldloca.s 7
		IL_00b0: ldloca.s 5
		IL_00b2: ldarg.2
		IL_00b3: ldloc.3
		IL_00b4: call void System.Number::NumberToStringFormat(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)

		IL_00b9: ldloca.s 7
		IL_00bb: ldarg.s destination
		IL_00bd: ldarg.s charsWritten
		IL_00bf: call instance bool System.Text.ValueStringBuilder::TryCopyTo(valuetype System.Span`1<char>, int32&)
		IL_00c4: ret
	} // end of method Number::'<TryFormatInt32>g__TryFormatInt32Slow|39_0'

	.method assembly hidebysig static 
		string '<FormatUInt32>g__FormatUInt32Slow|40_0' (
			uint32 'value',
			string format,
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x79640
		// Code size 172 (0xac)
		.maxstack 5
		.locals (
			[0] valuetype System.ReadOnlySpan`1<char>,
			[1] char,
			[2] int32,
			[3] char,
			[4] class System.Globalization.NumberFormatInfo,
			[5] uint8*,
			[6] valuetype System.Number/NumberBuffer,
			[7] char*,
			[8] valuetype System.Text.ValueStringBuilder
		)

		IL_0000: ldarg.1
		IL_0001: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldloca.s 2
		IL_000a: call char System.Number::ParseFormatSpecifier(valuetype System.ReadOnlySpan`1<char>, int32&)
		IL_000f: stloc.1
		IL_0010: ldloc.1
		IL_0011: ldc.i4 65503
		IL_0016: and
		IL_0017: conv.u2
		IL_0018: stloc.3
		IL_0019: ldloc.3
		IL_001a: ldc.i4.s 71
		IL_001c: beq.s IL_0025

		IL_001e: ldloc.3
		IL_001f: ldc.i4.s 68
		IL_0021: ceq
		IL_0023: br.s IL_0029

		IL_0025: ldloc.2
		IL_0026: ldc.i4.1
		IL_0027: clt

		IL_0029: brfalse.s IL_0033

		IL_002b: ldarg.0
		IL_002c: ldloc.2
		IL_002d: call string System.Number::UInt32ToDecStr(uint32, int32)
		IL_0032: ret

		IL_0033: ldloc.3
		IL_0034: ldc.i4.s 88
		IL_0036: bne.un.s IL_0046

		IL_0038: ldarg.0
		IL_0039: ldloc.1
		IL_003a: call char System.Number::GetHexBase(char)
		IL_003f: ldloc.2
		IL_0040: call string System.Number::Int32ToHexStr(int32, char, int32)
		IL_0045: ret

		IL_0046: ldarg.2
		IL_0047: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_004c: stloc.s 4
		IL_004e: ldc.i4.s 11
		IL_0050: conv.u
		IL_0051: localloc
		IL_0053: stloc.s 5
		IL_0055: ldloca.s 6
		IL_0057: ldc.i4.1
		IL_0058: ldloc.s 5
		IL_005a: ldc.i4.s 11
		IL_005c: call instance void System.Number/NumberBuffer::.ctor(valuetype System.Number/NumberBufferKind, uint8*, int32)
		IL_0061: ldarg.0
		IL_0062: ldloca.s 6
		IL_0064: call void System.Number::UInt32ToNumber(uint32, valuetype System.Number/NumberBuffer&)
		IL_0069: ldc.i4.s 64
		IL_006b: conv.u
		IL_006c: localloc
		IL_006e: stloc.s 7
		IL_0070: ldloca.s 8
		IL_0072: ldloc.s 7
		IL_0074: ldc.i4.s 32
		IL_0076: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_007b: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
		IL_0080: ldloc.1
		IL_0081: brfalse.s IL_0092

		IL_0083: ldloca.s 8
		IL_0085: ldloca.s 6
		IL_0087: ldloc.1
		IL_0088: ldloc.2
		IL_0089: ldloc.s 4
		IL_008b: call void System.Number::NumberToString(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, char, int32, class System.Globalization.NumberFormatInfo)
		IL_0090: br.s IL_009e

		IL_0092: ldloca.s 8
		IL_0094: ldloca.s 6
		IL_0096: ldloc.0
		IL_0097: ldloc.s 4
		IL_0099: call void System.Number::NumberToStringFormat(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)

		IL_009e: ldloca.s 8
		IL_00a0: constrained. System.Text.ValueStringBuilder
		IL_00a6: callvirt instance string System.Object::ToString()
		IL_00ab: ret
	} // end of method Number::'<FormatUInt32>g__FormatUInt32Slow|40_0'

	.method assembly hidebysig static 
		bool '<TryFormatUInt32>g__TryFormatUInt32Slow|41_0' (
			uint32 'value',
			valuetype System.ReadOnlySpan`1<char> format,
			class System.IFormatProvider provider,
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x796f8
		// Code size 165 (0xa5)
		.maxstack 5
		.locals (
			[0] char,
			[1] int32,
			[2] char,
			[3] class System.Globalization.NumberFormatInfo,
			[4] uint8*,
			[5] valuetype System.Number/NumberBuffer,
			[6] char*,
			[7] valuetype System.Text.ValueStringBuilder
		)

		IL_0000: ldarg.1
		IL_0001: ldloca.s 1
		IL_0003: call char System.Number::ParseFormatSpecifier(valuetype System.ReadOnlySpan`1<char>, int32&)
		IL_0008: stloc.0
		IL_0009: ldloc.0
		IL_000a: ldc.i4 65503
		IL_000f: and
		IL_0010: conv.u2
		IL_0011: stloc.2
		IL_0012: ldloc.2
		IL_0013: ldc.i4.s 71
		IL_0015: beq.s IL_001e

		IL_0017: ldloc.2
		IL_0018: ldc.i4.s 68
		IL_001a: ceq
		IL_001c: br.s IL_0022

		IL_001e: ldloc.1
		IL_001f: ldc.i4.1
		IL_0020: clt

		IL_0022: brfalse.s IL_002f

		IL_0024: ldarg.0
		IL_0025: ldloc.1
		IL_0026: ldarg.3
		IL_0027: ldarg.s charsWritten
		IL_0029: call bool System.Number::TryUInt32ToDecStr(uint32, int32, valuetype System.Span`1<char>, int32&)
		IL_002e: ret

		IL_002f: ldloc.2
		IL_0030: ldc.i4.s 88
		IL_0032: bne.un.s IL_0045

		IL_0034: ldarg.0
		IL_0035: ldloc.0
		IL_0036: call char System.Number::GetHexBase(char)
		IL_003b: ldloc.1
		IL_003c: ldarg.3
		IL_003d: ldarg.s charsWritten
		IL_003f: call bool System.Number::TryInt32ToHexStr(int32, char, int32, valuetype System.Span`1<char>, int32&)
		IL_0044: ret

		IL_0045: ldarg.2
		IL_0046: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_004b: stloc.3
		IL_004c: ldc.i4.s 11
		IL_004e: conv.u
		IL_004f: localloc
		IL_0051: stloc.s 4
		IL_0053: ldloca.s 5
		IL_0055: ldc.i4.1
		IL_0056: ldloc.s 4
		IL_0058: ldc.i4.s 11
		IL_005a: call instance void System.Number/NumberBuffer::.ctor(valuetype System.Number/NumberBufferKind, uint8*, int32)
		IL_005f: ldarg.0
		IL_0060: ldloca.s 5
		IL_0062: call void System.Number::UInt32ToNumber(uint32, valuetype System.Number/NumberBuffer&)
		IL_0067: ldc.i4.s 64
		IL_0069: conv.u
		IL_006a: localloc
		IL_006c: stloc.s 6
		IL_006e: ldloca.s 7
		IL_0070: ldloc.s 6
		IL_0072: ldc.i4.s 32
		IL_0074: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_0079: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
		IL_007e: ldloc.0
		IL_007f: brfalse.s IL_008f

		IL_0081: ldloca.s 7
		IL_0083: ldloca.s 5
		IL_0085: ldloc.0
		IL_0086: ldloc.1
		IL_0087: ldloc.3
		IL_0088: call void System.Number::NumberToString(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, char, int32, class System.Globalization.NumberFormatInfo)
		IL_008d: br.s IL_009a

		IL_008f: ldloca.s 7
		IL_0091: ldloca.s 5
		IL_0093: ldarg.1
		IL_0094: ldloc.3
		IL_0095: call void System.Number::NumberToStringFormat(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)

		IL_009a: ldloca.s 7
		IL_009c: ldarg.3
		IL_009d: ldarg.s charsWritten
		IL_009f: call instance bool System.Text.ValueStringBuilder::TryCopyTo(valuetype System.Span`1<char>, int32&)
		IL_00a4: ret
	} // end of method Number::'<TryFormatUInt32>g__TryFormatUInt32Slow|41_0'

	.method assembly hidebysig static 
		string '<FormatInt64>g__FormatInt64Slow|42_0' (
			int64 'value',
			string format,
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x797ac
		// Code size 196 (0xc4)
		.maxstack 5
		.locals (
			[0] valuetype System.ReadOnlySpan`1<char>,
			[1] char,
			[2] int32,
			[3] char,
			[4] class System.Globalization.NumberFormatInfo,
			[5] uint8*,
			[6] valuetype System.Number/NumberBuffer,
			[7] char*,
			[8] valuetype System.Text.ValueStringBuilder
		)

		IL_0000: ldarg.1
		IL_0001: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldloca.s 2
		IL_000a: call char System.Number::ParseFormatSpecifier(valuetype System.ReadOnlySpan`1<char>, int32&)
		IL_000f: stloc.1
		IL_0010: ldloc.1
		IL_0011: ldc.i4 65503
		IL_0016: and
		IL_0017: conv.u2
		IL_0018: stloc.3
		IL_0019: ldloc.3
		IL_001a: ldc.i4.s 71
		IL_001c: beq.s IL_0025

		IL_001e: ldloc.3
		IL_001f: ldc.i4.s 68
		IL_0021: ceq
		IL_0023: br.s IL_0029

		IL_0025: ldloc.2
		IL_0026: ldc.i4.1
		IL_0027: clt

		IL_0029: brfalse.s IL_004b

		IL_002b: ldarg.0
		IL_002c: ldc.i4.0
		IL_002d: conv.i8
		IL_002e: bge.s IL_0043

		IL_0030: ldarg.0
		IL_0031: ldloc.2
		IL_0032: ldarg.2
		IL_0033: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0038: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_003d: call string System.Number::NegativeInt64ToDecStr(int64, int32, string)
		IL_0042: ret

		IL_0043: ldarg.0
		IL_0044: ldloc.2
		IL_0045: call string System.Number::UInt64ToDecStr(uint64, int32)
		IL_004a: ret

		IL_004b: ldloc.3
		IL_004c: ldc.i4.s 88
		IL_004e: bne.un.s IL_005e

		IL_0050: ldarg.0
		IL_0051: ldloc.1
		IL_0052: call char System.Number::GetHexBase(char)
		IL_0057: ldloc.2
		IL_0058: call string System.Number::Int64ToHexStr(int64, char, int32)
		IL_005d: ret

		IL_005e: ldarg.2
		IL_005f: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0064: stloc.s 4
		IL_0066: ldc.i4.s 20
		IL_0068: conv.u
		IL_0069: localloc
		IL_006b: stloc.s 5
		IL_006d: ldloca.s 6
		IL_006f: ldc.i4.1
		IL_0070: ldloc.s 5
		IL_0072: ldc.i4.s 20
		IL_0074: call instance void System.Number/NumberBuffer::.ctor(valuetype System.Number/NumberBufferKind, uint8*, int32)
		IL_0079: ldarg.0
		IL_007a: ldloca.s 6
		IL_007c: call void System.Number::Int64ToNumber(int64, valuetype System.Number/NumberBuffer&)
		IL_0081: ldc.i4.s 64
		IL_0083: conv.u
		IL_0084: localloc
		IL_0086: stloc.s 7
		IL_0088: ldloca.s 8
		IL_008a: ldloc.s 7
		IL_008c: ldc.i4.s 32
		IL_008e: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_0093: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
		IL_0098: ldloc.1
		IL_0099: brfalse.s IL_00aa

		IL_009b: ldloca.s 8
		IL_009d: ldloca.s 6
		IL_009f: ldloc.1
		IL_00a0: ldloc.2
		IL_00a1: ldloc.s 4
		IL_00a3: call void System.Number::NumberToString(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, char, int32, class System.Globalization.NumberFormatInfo)
		IL_00a8: br.s IL_00b6

		IL_00aa: ldloca.s 8
		IL_00ac: ldloca.s 6
		IL_00ae: ldloc.0
		IL_00af: ldloc.s 4
		IL_00b1: call void System.Number::NumberToStringFormat(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)

		IL_00b6: ldloca.s 8
		IL_00b8: constrained. System.Text.ValueStringBuilder
		IL_00be: callvirt instance string System.Object::ToString()
		IL_00c3: ret
	} // end of method Number::'<FormatInt64>g__FormatInt64Slow|42_0'

	.method assembly hidebysig static 
		bool '<TryFormatInt64>g__TryFormatInt64Slow|43_0' (
			int64 'value',
			valuetype System.ReadOnlySpan`1<char> format,
			class System.IFormatProvider provider,
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x7987c
		// Code size 192 (0xc0)
		.maxstack 5
		.locals (
			[0] char,
			[1] int32,
			[2] char,
			[3] class System.Globalization.NumberFormatInfo,
			[4] uint8*,
			[5] valuetype System.Number/NumberBuffer,
			[6] char*,
			[7] valuetype System.Text.ValueStringBuilder
		)

		IL_0000: ldarg.1
		IL_0001: ldloca.s 1
		IL_0003: call char System.Number::ParseFormatSpecifier(valuetype System.ReadOnlySpan`1<char>, int32&)
		IL_0008: stloc.0
		IL_0009: ldloc.0
		IL_000a: ldc.i4 65503
		IL_000f: and
		IL_0010: conv.u2
		IL_0011: stloc.2
		IL_0012: ldloc.2
		IL_0013: ldc.i4.s 71
		IL_0015: beq.s IL_001e

		IL_0017: ldloc.2
		IL_0018: ldc.i4.s 68
		IL_001a: ceq
		IL_001c: br.s IL_0022

		IL_001e: ldloc.1
		IL_001f: ldc.i4.1
		IL_0020: clt

		IL_0022: brfalse.s IL_004a

		IL_0024: ldarg.0
		IL_0025: ldc.i4.0
		IL_0026: conv.i8
		IL_0027: bge.s IL_003f

		IL_0029: ldarg.0
		IL_002a: ldloc.1
		IL_002b: ldarg.2
		IL_002c: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0031: callvirt instance string System.Globalization.NumberFormatInfo::get_NegativeSign()
		IL_0036: ldarg.3
		IL_0037: ldarg.s charsWritten
		IL_0039: call bool System.Number::TryNegativeInt64ToDecStr(int64, int32, string, valuetype System.Span`1<char>, int32&)
		IL_003e: ret

		IL_003f: ldarg.0
		IL_0040: ldloc.1
		IL_0041: ldarg.3
		IL_0042: ldarg.s charsWritten
		IL_0044: call bool System.Number::TryUInt64ToDecStr(uint64, int32, valuetype System.Span`1<char>, int32&)
		IL_0049: ret

		IL_004a: ldloc.2
		IL_004b: ldc.i4.s 88
		IL_004d: bne.un.s IL_0060

		IL_004f: ldarg.0
		IL_0050: ldloc.0
		IL_0051: call char System.Number::GetHexBase(char)
		IL_0056: ldloc.1
		IL_0057: ldarg.3
		IL_0058: ldarg.s charsWritten
		IL_005a: call bool System.Number::TryInt64ToHexStr(int64, char, int32, valuetype System.Span`1<char>, int32&)
		IL_005f: ret

		IL_0060: ldarg.2
		IL_0061: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0066: stloc.3
		IL_0067: ldc.i4.s 20
		IL_0069: conv.u
		IL_006a: localloc
		IL_006c: stloc.s 4
		IL_006e: ldloca.s 5
		IL_0070: ldc.i4.1
		IL_0071: ldloc.s 4
		IL_0073: ldc.i4.s 20
		IL_0075: call instance void System.Number/NumberBuffer::.ctor(valuetype System.Number/NumberBufferKind, uint8*, int32)
		IL_007a: ldarg.0
		IL_007b: ldloca.s 5
		IL_007d: call void System.Number::Int64ToNumber(int64, valuetype System.Number/NumberBuffer&)
		IL_0082: ldc.i4.s 64
		IL_0084: conv.u
		IL_0085: localloc
		IL_0087: stloc.s 6
		IL_0089: ldloca.s 7
		IL_008b: ldloc.s 6
		IL_008d: ldc.i4.s 32
		IL_008f: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_0094: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
		IL_0099: ldloc.0
		IL_009a: brfalse.s IL_00aa

		IL_009c: ldloca.s 7
		IL_009e: ldloca.s 5
		IL_00a0: ldloc.0
		IL_00a1: ldloc.1
		IL_00a2: ldloc.3
		IL_00a3: call void System.Number::NumberToString(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, char, int32, class System.Globalization.NumberFormatInfo)
		IL_00a8: br.s IL_00b5

		IL_00aa: ldloca.s 7
		IL_00ac: ldloca.s 5
		IL_00ae: ldarg.1
		IL_00af: ldloc.3
		IL_00b0: call void System.Number::NumberToStringFormat(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)

		IL_00b5: ldloca.s 7
		IL_00b7: ldarg.3
		IL_00b8: ldarg.s charsWritten
		IL_00ba: call instance bool System.Text.ValueStringBuilder::TryCopyTo(valuetype System.Span`1<char>, int32&)
		IL_00bf: ret
	} // end of method Number::'<TryFormatInt64>g__TryFormatInt64Slow|43_0'

	.method assembly hidebysig static 
		string '<FormatUInt64>g__FormatUInt64Slow|44_0' (
			uint64 'value',
			string format,
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x79948
		// Code size 172 (0xac)
		.maxstack 5
		.locals (
			[0] valuetype System.ReadOnlySpan`1<char>,
			[1] char,
			[2] int32,
			[3] char,
			[4] class System.Globalization.NumberFormatInfo,
			[5] uint8*,
			[6] valuetype System.Number/NumberBuffer,
			[7] char*,
			[8] valuetype System.Text.ValueStringBuilder
		)

		IL_0000: ldarg.1
		IL_0001: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldloca.s 2
		IL_000a: call char System.Number::ParseFormatSpecifier(valuetype System.ReadOnlySpan`1<char>, int32&)
		IL_000f: stloc.1
		IL_0010: ldloc.1
		IL_0011: ldc.i4 65503
		IL_0016: and
		IL_0017: conv.u2
		IL_0018: stloc.3
		IL_0019: ldloc.3
		IL_001a: ldc.i4.s 71
		IL_001c: beq.s IL_0025

		IL_001e: ldloc.3
		IL_001f: ldc.i4.s 68
		IL_0021: ceq
		IL_0023: br.s IL_0029

		IL_0025: ldloc.2
		IL_0026: ldc.i4.1
		IL_0027: clt

		IL_0029: brfalse.s IL_0033

		IL_002b: ldarg.0
		IL_002c: ldloc.2
		IL_002d: call string System.Number::UInt64ToDecStr(uint64, int32)
		IL_0032: ret

		IL_0033: ldloc.3
		IL_0034: ldc.i4.s 88
		IL_0036: bne.un.s IL_0046

		IL_0038: ldarg.0
		IL_0039: ldloc.1
		IL_003a: call char System.Number::GetHexBase(char)
		IL_003f: ldloc.2
		IL_0040: call string System.Number::Int64ToHexStr(int64, char, int32)
		IL_0045: ret

		IL_0046: ldarg.2
		IL_0047: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_004c: stloc.s 4
		IL_004e: ldc.i4.s 21
		IL_0050: conv.u
		IL_0051: localloc
		IL_0053: stloc.s 5
		IL_0055: ldloca.s 6
		IL_0057: ldc.i4.1
		IL_0058: ldloc.s 5
		IL_005a: ldc.i4.s 21
		IL_005c: call instance void System.Number/NumberBuffer::.ctor(valuetype System.Number/NumberBufferKind, uint8*, int32)
		IL_0061: ldarg.0
		IL_0062: ldloca.s 6
		IL_0064: call void System.Number::UInt64ToNumber(uint64, valuetype System.Number/NumberBuffer&)
		IL_0069: ldc.i4.s 64
		IL_006b: conv.u
		IL_006c: localloc
		IL_006e: stloc.s 7
		IL_0070: ldloca.s 8
		IL_0072: ldloc.s 7
		IL_0074: ldc.i4.s 32
		IL_0076: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_007b: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
		IL_0080: ldloc.1
		IL_0081: brfalse.s IL_0092

		IL_0083: ldloca.s 8
		IL_0085: ldloca.s 6
		IL_0087: ldloc.1
		IL_0088: ldloc.2
		IL_0089: ldloc.s 4
		IL_008b: call void System.Number::NumberToString(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, char, int32, class System.Globalization.NumberFormatInfo)
		IL_0090: br.s IL_009e

		IL_0092: ldloca.s 8
		IL_0094: ldloca.s 6
		IL_0096: ldloc.0
		IL_0097: ldloc.s 4
		IL_0099: call void System.Number::NumberToStringFormat(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)

		IL_009e: ldloca.s 8
		IL_00a0: constrained. System.Text.ValueStringBuilder
		IL_00a6: callvirt instance string System.Object::ToString()
		IL_00ab: ret
	} // end of method Number::'<FormatUInt64>g__FormatUInt64Slow|44_0'

	.method assembly hidebysig static 
		bool '<TryFormatUInt64>g__TryFormatUInt64Slow|45_0' (
			uint64 'value',
			valuetype System.ReadOnlySpan`1<char> format,
			class System.IFormatProvider provider,
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x79a00
		// Code size 165 (0xa5)
		.maxstack 5
		.locals (
			[0] char,
			[1] int32,
			[2] char,
			[3] class System.Globalization.NumberFormatInfo,
			[4] uint8*,
			[5] valuetype System.Number/NumberBuffer,
			[6] char*,
			[7] valuetype System.Text.ValueStringBuilder
		)

		IL_0000: ldarg.1
		IL_0001: ldloca.s 1
		IL_0003: call char System.Number::ParseFormatSpecifier(valuetype System.ReadOnlySpan`1<char>, int32&)
		IL_0008: stloc.0
		IL_0009: ldloc.0
		IL_000a: ldc.i4 65503
		IL_000f: and
		IL_0010: conv.u2
		IL_0011: stloc.2
		IL_0012: ldloc.2
		IL_0013: ldc.i4.s 71
		IL_0015: beq.s IL_001e

		IL_0017: ldloc.2
		IL_0018: ldc.i4.s 68
		IL_001a: ceq
		IL_001c: br.s IL_0022

		IL_001e: ldloc.1
		IL_001f: ldc.i4.1
		IL_0020: clt

		IL_0022: brfalse.s IL_002f

		IL_0024: ldarg.0
		IL_0025: ldloc.1
		IL_0026: ldarg.3
		IL_0027: ldarg.s charsWritten
		IL_0029: call bool System.Number::TryUInt64ToDecStr(uint64, int32, valuetype System.Span`1<char>, int32&)
		IL_002e: ret

		IL_002f: ldloc.2
		IL_0030: ldc.i4.s 88
		IL_0032: bne.un.s IL_0045

		IL_0034: ldarg.0
		IL_0035: ldloc.0
		IL_0036: call char System.Number::GetHexBase(char)
		IL_003b: ldloc.1
		IL_003c: ldarg.3
		IL_003d: ldarg.s charsWritten
		IL_003f: call bool System.Number::TryInt64ToHexStr(int64, char, int32, valuetype System.Span`1<char>, int32&)
		IL_0044: ret

		IL_0045: ldarg.2
		IL_0046: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_004b: stloc.3
		IL_004c: ldc.i4.s 21
		IL_004e: conv.u
		IL_004f: localloc
		IL_0051: stloc.s 4
		IL_0053: ldloca.s 5
		IL_0055: ldc.i4.1
		IL_0056: ldloc.s 4
		IL_0058: ldc.i4.s 21
		IL_005a: call instance void System.Number/NumberBuffer::.ctor(valuetype System.Number/NumberBufferKind, uint8*, int32)
		IL_005f: ldarg.0
		IL_0060: ldloca.s 5
		IL_0062: call void System.Number::UInt64ToNumber(uint64, valuetype System.Number/NumberBuffer&)
		IL_0067: ldc.i4.s 64
		IL_0069: conv.u
		IL_006a: localloc
		IL_006c: stloc.s 6
		IL_006e: ldloca.s 7
		IL_0070: ldloc.s 6
		IL_0072: ldc.i4.s 32
		IL_0074: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_0079: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
		IL_007e: ldloc.0
		IL_007f: brfalse.s IL_008f

		IL_0081: ldloca.s 7
		IL_0083: ldloca.s 5
		IL_0085: ldloc.0
		IL_0086: ldloc.1
		IL_0087: ldloc.3
		IL_0088: call void System.Number::NumberToString(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, char, int32, class System.Globalization.NumberFormatInfo)
		IL_008d: br.s IL_009a

		IL_008f: ldloca.s 7
		IL_0091: ldloca.s 5
		IL_0093: ldarg.1
		IL_0094: ldloc.3
		IL_0095: call void System.Number::NumberToStringFormat(valuetype System.Text.ValueStringBuilder&, valuetype System.Number/NumberBuffer&, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)

		IL_009a: ldloca.s 7
		IL_009c: ldarg.3
		IL_009d: ldarg.s charsWritten
		IL_009f: call instance bool System.Text.ValueStringBuilder::TryCopyTo(valuetype System.Span`1<char>, int32&)
		IL_00a4: ret
	} // end of method Number::'<TryFormatUInt64>g__TryFormatUInt64Slow|45_0'

	.method assembly hidebysig static 
		bool '<RoundNumber>g__ShouldRoundUp|78_0' (
			uint8* dig,
			int32 i,
			valuetype System.Number/NumberBufferKind numberKind,
			bool isCorrectlyRounded
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x79ab4
		// Code size 24 (0x18)
		.maxstack 2
		.locals (
			[0] uint8
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: add
		IL_0003: ldind.u1
		IL_0004: stloc.0
		IL_0005: ldloc.0
		IL_0006: ldc.i4.0
		IL_0007: ceq
		IL_0009: ldarg.3
		IL_000a: or
		IL_000b: brfalse.s IL_000f

		IL_000d: ldc.i4.0
		IL_000e: ret

		IL_000f: ldloc.0
		IL_0010: ldc.i4.s 53
		IL_0012: clt
		IL_0014: ldc.i4.0
		IL_0015: ceq
		IL_0017: ret
	} // end of method Number::'<RoundNumber>g__ShouldRoundUp|78_0'

} // end of class System.Number