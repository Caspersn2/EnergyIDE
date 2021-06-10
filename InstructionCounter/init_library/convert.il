.class public auto ansi abstract sealed beforefieldinit System.Convert
	extends System.Object
{
	.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
		01 00 02 00 00
	)
	.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	.custom instance void System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = (
		01 00 00 00
	)
	// Fields
	.field assembly static initonly class System.Type[] ConvertTypes
	.field private static initonly class System.Type EnumType
	.field assembly static initonly char[] base64Table
	.field public static initonly object DBNull
	.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 01 00 00
	)

	// Methods
	.method private hidebysig static 
		bool TryDecodeFromUtf16 (
			valuetype System.ReadOnlySpan`1<char> utf16,
			valuetype System.Span`1<uint8> bytes,
			[out] int32& consumed,
			[out] int32& written
		) cil managed 
	{
		// Method begins at RVA 0x5fe2c
		// Code size 522 (0x20a)
		.maxstack 3
		.locals (
			[0] char&,
			[1] uint8&,
			[2] int32,
			[3] int32,
			[4] int32,
			[5] int32,
			[6] int8&,
			[7] int32,
			[8] int32,
			[9] int32,
			[10] int32,
			[11] int32,
			[12] int32
		)

		IL_0000: ldarg.0
		IL_0001: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<char>(valuetype System.ReadOnlySpan`1<!!0>)
		IL_0006: stloc.0
		IL_0007: ldarg.1
		IL_0008: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<uint8>(valuetype System.Span`1<!!0>)
		IL_000d: stloc.1
		IL_000e: ldarga.s utf16
		IL_0010: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0015: ldc.i4.s -4
		IL_0017: and
		IL_0018: stloc.2
		IL_0019: ldarga.s bytes
		IL_001b: call instance int32 valuetype System.Span`1<uint8>::get_Length()
		IL_0020: stloc.3
		IL_0021: ldc.i4.0
		IL_0022: stloc.s 4
		IL_0024: ldc.i4.0
		IL_0025: stloc.s 5
		IL_0027: ldarga.s utf16
		IL_0029: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_002e: brfalse IL_01f6

		IL_0033: call valuetype System.ReadOnlySpan`1<int8> System.Convert::get_DecodingMap()
		IL_0038: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<int8>(valuetype System.ReadOnlySpan`1<!!0>)
		IL_003d: stloc.s 6
		IL_003f: ldloc.3
		IL_0040: ldloc.2
		IL_0041: ldc.i4.2
		IL_0042: shr
		IL_0043: ldc.i4.3
		IL_0044: mul
		IL_0045: blt.s IL_004e

		IL_0047: ldloc.2
		IL_0048: ldc.i4.4
		IL_0049: sub
		IL_004a: stloc.s 7
		IL_004c: br.s IL_008b

		IL_004e: ldloc.3
		IL_004f: ldc.i4.3
		IL_0050: div
		IL_0051: ldc.i4.4
		IL_0052: mul
		IL_0053: stloc.s 7
		IL_0055: br.s IL_008b
		// loop start (head: IL_008b)
			IL_0057: ldloc.0
			IL_0058: ldloc.s 4
			IL_005a: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
			IL_005f: ldloc.s 6
			IL_0061: call int32 System.Convert::Decode(char&, int8&)
			IL_0066: stloc.s 12
			IL_0068: ldloc.s 12
			IL_006a: ldc.i4.0
			IL_006b: blt IL_0200

			IL_0070: ldloc.1
			IL_0071: ldloc.s 5
			IL_0073: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<uint8>(!!0&, int32)
			IL_0078: ldloc.s 12
			IL_007a: call void System.Convert::WriteThreeLowOrderBytes(uint8&, int32)
			IL_007f: ldloc.s 5
			IL_0081: ldc.i4.3
			IL_0082: add
			IL_0083: stloc.s 5
			IL_0085: ldloc.s 4
			IL_0087: ldc.i4.4
			IL_0088: add
			IL_0089: stloc.s 4

			IL_008b: ldloc.s 4
			IL_008d: ldloc.s 7
			IL_008f: blt.s IL_0057
		// end loop

		IL_0091: ldloc.s 7
		IL_0093: ldloc.2
		IL_0094: ldc.i4.4
		IL_0095: sub
		IL_0096: bne.un IL_0200

		IL_009b: ldloc.s 4
		IL_009d: ldloc.2
		IL_009e: beq IL_0200

		IL_00a3: ldloc.0
		IL_00a4: ldloc.2
		IL_00a5: ldc.i4.4
		IL_00a6: sub
		IL_00a7: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_00ac: ldind.u2
		IL_00ad: stloc.s 8
		IL_00af: ldloc.0
		IL_00b0: ldloc.2
		IL_00b1: ldc.i4.3
		IL_00b2: sub
		IL_00b3: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_00b8: ldind.u2
		IL_00b9: stloc.s 9
		IL_00bb: ldloc.0
		IL_00bc: ldloc.2
		IL_00bd: ldc.i4.2
		IL_00be: sub
		IL_00bf: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_00c4: ldind.u2
		IL_00c5: stloc.s 10
		IL_00c7: ldloc.0
		IL_00c8: ldloc.2
		IL_00c9: ldc.i4.1
		IL_00ca: sub
		IL_00cb: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_00d0: ldind.u2
		IL_00d1: stloc.s 11
		IL_00d3: ldloc.s 8
		IL_00d5: ldloc.s 9
		IL_00d7: or
		IL_00d8: ldloc.s 10
		IL_00da: or
		IL_00db: ldloc.s 11
		IL_00dd: or
		IL_00de: conv.i8
		IL_00df: ldc.i4 -256
		IL_00e4: conv.u8
		IL_00e5: and
		IL_00e6: brtrue IL_0200

		IL_00eb: ldloc.s 6
		IL_00ed: ldloc.s 8
		IL_00ef: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<int8>(!!0&, int32)
		IL_00f4: ldind.i1
		IL_00f5: stloc.s 8
		IL_00f7: ldloc.s 6
		IL_00f9: ldloc.s 9
		IL_00fb: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<int8>(!!0&, int32)
		IL_0100: ldind.i1
		IL_0101: stloc.s 9
		IL_0103: ldloc.s 8
		IL_0105: ldc.i4.s 18
		IL_0107: shl
		IL_0108: stloc.s 8
		IL_010a: ldloc.s 9
		IL_010c: ldc.i4.s 12
		IL_010e: shl
		IL_010f: stloc.s 9
		IL_0111: ldloc.s 8
		IL_0113: ldloc.s 9
		IL_0115: or
		IL_0116: stloc.s 8
		IL_0118: ldloc.s 11
		IL_011a: ldc.i4.s 61
		IL_011c: beq.s IL_0173

		IL_011e: ldloc.s 6
		IL_0120: ldloc.s 10
		IL_0122: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<int8>(!!0&, int32)
		IL_0127: ldind.i1
		IL_0128: stloc.s 10
		IL_012a: ldloc.s 6
		IL_012c: ldloc.s 11
		IL_012e: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<int8>(!!0&, int32)
		IL_0133: ldind.i1
		IL_0134: stloc.s 11
		IL_0136: ldloc.s 10
		IL_0138: ldc.i4.6
		IL_0139: shl
		IL_013a: stloc.s 10
		IL_013c: ldloc.s 8
		IL_013e: ldloc.s 11
		IL_0140: or
		IL_0141: stloc.s 8
		IL_0143: ldloc.s 8
		IL_0145: ldloc.s 10
		IL_0147: or
		IL_0148: stloc.s 8
		IL_014a: ldloc.s 8
		IL_014c: ldc.i4.0
		IL_014d: blt IL_0200

		IL_0152: ldloc.s 5
		IL_0154: ldloc.3
		IL_0155: ldc.i4.3
		IL_0156: sub
		IL_0157: bgt IL_0200

		IL_015c: ldloc.1
		IL_015d: ldloc.s 5
		IL_015f: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<uint8>(!!0&, int32)
		IL_0164: ldloc.s 8
		IL_0166: call void System.Convert::WriteThreeLowOrderBytes(uint8&, int32)
		IL_016b: ldloc.s 5
		IL_016d: ldc.i4.3
		IL_016e: add
		IL_016f: stloc.s 5
		IL_0171: br.s IL_01e6

		IL_0173: ldloc.s 10
		IL_0175: ldc.i4.s 61
		IL_0177: beq.s IL_01c5

		IL_0179: ldloc.s 6
		IL_017b: ldloc.s 10
		IL_017d: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<int8>(!!0&, int32)
		IL_0182: ldind.i1
		IL_0183: stloc.s 10
		IL_0185: ldloc.s 10
		IL_0187: ldc.i4.6
		IL_0188: shl
		IL_0189: stloc.s 10
		IL_018b: ldloc.s 8
		IL_018d: ldloc.s 10
		IL_018f: or
		IL_0190: stloc.s 8
		IL_0192: ldloc.s 8
		IL_0194: ldc.i4.0
		IL_0195: blt.s IL_0200

		IL_0197: ldloc.s 5
		IL_0199: ldloc.3
		IL_019a: ldc.i4.2
		IL_019b: sub
		IL_019c: bgt.s IL_0200

		IL_019e: ldloc.1
		IL_019f: ldloc.s 5
		IL_01a1: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<uint8>(!!0&, int32)
		IL_01a6: ldloc.s 8
		IL_01a8: ldc.i4.s 16
		IL_01aa: shr
		IL_01ab: conv.u1
		IL_01ac: stind.i1
		IL_01ad: ldloc.1
		IL_01ae: ldloc.s 5
		IL_01b0: ldc.i4.1
		IL_01b1: add
		IL_01b2: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<uint8>(!!0&, int32)
		IL_01b7: ldloc.s 8
		IL_01b9: ldc.i4.8
		IL_01ba: shr
		IL_01bb: conv.u1
		IL_01bc: stind.i1
		IL_01bd: ldloc.s 5
		IL_01bf: ldc.i4.2
		IL_01c0: add
		IL_01c1: stloc.s 5
		IL_01c3: br.s IL_01e6

		IL_01c5: ldloc.s 8
		IL_01c7: ldc.i4.0
		IL_01c8: blt.s IL_0200

		IL_01ca: ldloc.s 5
		IL_01cc: ldloc.3
		IL_01cd: ldc.i4.1
		IL_01ce: sub
		IL_01cf: bgt.s IL_0200

		IL_01d1: ldloc.1
		IL_01d2: ldloc.s 5
		IL_01d4: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<uint8>(!!0&, int32)
		IL_01d9: ldloc.s 8
		IL_01db: ldc.i4.s 16
		IL_01dd: shr
		IL_01de: conv.u1
		IL_01df: stind.i1
		IL_01e0: ldloc.s 5
		IL_01e2: ldc.i4.1
		IL_01e3: add
		IL_01e4: stloc.s 5

		IL_01e6: ldloc.s 4
		IL_01e8: ldc.i4.4
		IL_01e9: add
		IL_01ea: stloc.s 4
		IL_01ec: ldloc.2
		IL_01ed: ldarga.s utf16
		IL_01ef: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_01f4: bne.un.s IL_0200

		IL_01f6: ldarg.2
		IL_01f7: ldloc.s 4
		IL_01f9: stind.i4
		IL_01fa: ldarg.3
		IL_01fb: ldloc.s 5
		IL_01fd: stind.i4
		IL_01fe: ldc.i4.1
		IL_01ff: ret

		IL_0200: ldarg.2
		IL_0201: ldloc.s 4
		IL_0203: stind.i4
		IL_0204: ldarg.3
		IL_0205: ldloc.s 5
		IL_0207: stind.i4
		IL_0208: ldc.i4.0
		IL_0209: ret
	} // end of method Convert::TryDecodeFromUtf16

	.method private hidebysig static 
		int32 Decode (
			char& encodedChars,
			int8& decodingMap
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x60044
		// Code size 113 (0x71)
		.maxstack 2
		.locals (
			[0] int32,
			[1] int32,
			[2] int32,
			[3] int32
		)

		IL_0000: ldarg.0
		IL_0001: ldind.u2
		IL_0002: stloc.0
		IL_0003: ldarg.0
		IL_0004: ldc.i4.1
		IL_0005: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_000a: ldind.u2
		IL_000b: stloc.1
		IL_000c: ldarg.0
		IL_000d: ldc.i4.2
		IL_000e: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_0013: ldind.u2
		IL_0014: stloc.2
		IL_0015: ldarg.0
		IL_0016: ldc.i4.3
		IL_0017: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_001c: ldind.u2
		IL_001d: stloc.3
		IL_001e: ldloc.0
		IL_001f: ldloc.1
		IL_0020: or
		IL_0021: ldloc.2
		IL_0022: or
		IL_0023: ldloc.3
		IL_0024: or
		IL_0025: conv.i8
		IL_0026: ldc.i4 -256
		IL_002b: conv.u8
		IL_002c: and
		IL_002d: brfalse.s IL_0031

		IL_002f: ldc.i4.m1
		IL_0030: ret

		IL_0031: ldarg.1
		IL_0032: ldloc.0
		IL_0033: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<int8>(!!0&, int32)
		IL_0038: ldind.i1
		IL_0039: stloc.0
		IL_003a: ldarg.1
		IL_003b: ldloc.1
		IL_003c: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<int8>(!!0&, int32)
		IL_0041: ldind.i1
		IL_0042: stloc.1
		IL_0043: ldarg.1
		IL_0044: ldloc.2
		IL_0045: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<int8>(!!0&, int32)
		IL_004a: ldind.i1
		IL_004b: stloc.2
		IL_004c: ldarg.1
		IL_004d: ldloc.3
		IL_004e: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<int8>(!!0&, int32)
		IL_0053: ldind.i1
		IL_0054: stloc.3
		IL_0055: ldloc.0
		IL_0056: ldc.i4.s 18
		IL_0058: shl
		IL_0059: stloc.0
		IL_005a: ldloc.1
		IL_005b: ldc.i4.s 12
		IL_005d: shl
		IL_005e: stloc.1
		IL_005f: ldloc.2
		IL_0060: ldc.i4.6
		IL_0061: shl
		IL_0062: stloc.2
		IL_0063: ldloc.0
		IL_0064: ldloc.3
		IL_0065: or
		IL_0066: stloc.0
		IL_0067: ldloc.1
		IL_0068: ldloc.2
		IL_0069: or
		IL_006a: stloc.1
		IL_006b: ldloc.0
		IL_006c: ldloc.1
		IL_006d: or
		IL_006e: stloc.0
		IL_006f: ldloc.0
		IL_0070: ret
	} // end of method Convert::Decode

	.method private hidebysig static 
		void WriteThreeLowOrderBytes (
			uint8& destination,
			int32 'value'
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x600c1
		// Code size 30 (0x1e)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.s 16
		IL_0004: shr
		IL_0005: conv.u1
		IL_0006: stind.i1
		IL_0007: ldarg.0
		IL_0008: ldc.i4.1
		IL_0009: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<uint8>(!!0&, int32)
		IL_000e: ldarg.1
		IL_000f: ldc.i4.8
		IL_0010: shr
		IL_0011: conv.u1
		IL_0012: stind.i1
		IL_0013: ldarg.0
		IL_0014: ldc.i4.2
		IL_0015: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<uint8>(!!0&, int32)
		IL_001a: ldarg.1
		IL_001b: conv.u1
		IL_001c: stind.i1
		IL_001d: ret
	} // end of method Convert::WriteThreeLowOrderBytes

	.method private hidebysig specialname static 
		valuetype System.ReadOnlySpan`1<int8> get_DecodingMap () cil managed 
	{
		// Method begins at RVA 0x600e0
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldsflda valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=256' '<PrivateImplementationDetails>'::F2830F044682E33B39018B5912634835B641562914E192CA66C654F5E4492FA8
		IL_0005: ldc.i4 256
		IL_000a: newobj instance void valuetype System.ReadOnlySpan`1<int8>::.ctor(void*, int32)
		IL_000f: ret
	} // end of method Convert::get_DecodingMap

	.method public hidebysig static 
		valuetype System.TypeCode GetTypeCode (
			object 'value'
		) cil managed 
	{
		// Method begins at RVA 0x600f4
		// Code size 24 (0x18)
		.maxstack 1
		.locals (
			[0] class System.IConvertible
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldarg.0
		IL_0006: isinst System.IConvertible
		IL_000b: stloc.0
		IL_000c: ldloc.0
		IL_000d: brfalse.s IL_0016

		IL_000f: ldloc.0
		IL_0010: callvirt instance valuetype System.TypeCode System.IConvertible::GetTypeCode()
		IL_0015: ret

		IL_0016: ldc.i4.1
		IL_0017: ret
	} // end of method Convert::GetTypeCode

	.method public hidebysig static 
		bool IsDBNull (
			object 'value'
		) cil managed 
	{
		.param [1]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullWhenAttribute::.ctor(bool) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x60118
		// Code size 32 (0x20)
		.maxstack 2
		.locals (
			[0] class System.IConvertible
		)

		IL_0000: ldarg.0
		IL_0001: ldsfld class System.DBNull System.DBNull::Value
		IL_0006: bne.un.s IL_000a

		IL_0008: ldc.i4.1
		IL_0009: ret

		IL_000a: ldarg.0
		IL_000b: isinst System.IConvertible
		IL_0010: stloc.0
		IL_0011: ldloc.0
		IL_0012: brtrue.s IL_0016

		IL_0014: ldc.i4.0
		IL_0015: ret

		IL_0016: ldloc.0
		IL_0017: callvirt instance valuetype System.TypeCode System.IConvertible::GetTypeCode()
		IL_001c: ldc.i4.2
		IL_001d: ceq
		IL_001f: ret
	} // end of method Convert::IsDBNull

	.method public hidebysig static 
		object ChangeType (
			object 'value',
			valuetype System.TypeCode typeCode
		) cil managed 
	{
		.param [0]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullIfNotNullAttribute::.ctor(string) = (
				01 00 05 76 61 6c 75 65 00 00
			)
		// Method begins at RVA 0x60144
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()
		IL_0007: call object System.Convert::ChangeType(object, valuetype System.TypeCode, class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ChangeType

	.method public hidebysig static 
		object ChangeType (
			object 'value',
			valuetype System.TypeCode typeCode,
			class System.IFormatProvider provider
		) cil managed 
	{
		.param [0]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullIfNotNullAttribute::.ctor(string) = (
				01 00 05 76 61 6c 75 65 00 00
			)
		// Method begins at RVA 0x60154
		// Code size 408 (0x198)
		.maxstack 2
		.locals (
			[0] class System.IConvertible,
			[1] object
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0011

		IL_0003: ldarg.1
		IL_0004: brfalse.s IL_000f

		IL_0006: ldarg.1
		IL_0007: ldc.i4.s 18
		IL_0009: beq.s IL_000f

		IL_000b: ldarg.1
		IL_000c: ldc.i4.1
		IL_000d: bne.un.s IL_0011

		IL_000f: ldnull
		IL_0010: ret

		IL_0011: ldarg.0
		IL_0012: isinst System.IConvertible
		IL_0017: stloc.0
		IL_0018: ldloc.0
		IL_0019: brtrue.s IL_0026

		IL_001b: call string System.SR::get_InvalidCast_IConvertible()
		IL_0020: newobj instance void System.InvalidCastException::.ctor(string)
		IL_0025: throw

		IL_0026: ldarg.1
		IL_0027: switch (IL_0180, IL_0171, IL_0175, IL_007d, IL_008f, IL_00a1, IL_00b3, IL_00c5, IL_00d7, IL_00e9, IL_00fb, IL_010d, IL_011c, IL_012b, IL_013a, IL_0149, IL_0158, IL_018b, IL_0167)

		IL_0078: br IL_018b

		IL_007d: ldloc.0
		IL_007e: ldarg.2
		IL_007f: callvirt instance bool System.IConvertible::ToBoolean(class System.IFormatProvider)
		IL_0084: box System.Boolean
		IL_0089: stloc.1
		IL_008a: br IL_0196

		IL_008f: ldloc.0
		IL_0090: ldarg.2
		IL_0091: callvirt instance char System.IConvertible::ToChar(class System.IFormatProvider)
		IL_0096: box System.Char
		IL_009b: stloc.1
		IL_009c: br IL_0196

		IL_00a1: ldloc.0
		IL_00a2: ldarg.2
		IL_00a3: callvirt instance int8 System.IConvertible::ToSByte(class System.IFormatProvider)
		IL_00a8: box System.SByte
		IL_00ad: stloc.1
		IL_00ae: br IL_0196

		IL_00b3: ldloc.0
		IL_00b4: ldarg.2
		IL_00b5: callvirt instance uint8 System.IConvertible::ToByte(class System.IFormatProvider)
		IL_00ba: box System.Byte
		IL_00bf: stloc.1
		IL_00c0: br IL_0196

		IL_00c5: ldloc.0
		IL_00c6: ldarg.2
		IL_00c7: callvirt instance int16 System.IConvertible::ToInt16(class System.IFormatProvider)
		IL_00cc: box System.Int16
		IL_00d1: stloc.1
		IL_00d2: br IL_0196

		IL_00d7: ldloc.0
		IL_00d8: ldarg.2
		IL_00d9: callvirt instance uint16 System.IConvertible::ToUInt16(class System.IFormatProvider)
		IL_00de: box System.UInt16
		IL_00e3: stloc.1
		IL_00e4: br IL_0196

		IL_00e9: ldloc.0
		IL_00ea: ldarg.2
		IL_00eb: callvirt instance int32 System.IConvertible::ToInt32(class System.IFormatProvider)
		IL_00f0: box System.Int32
		IL_00f5: stloc.1
		IL_00f6: br IL_0196

		IL_00fb: ldloc.0
		IL_00fc: ldarg.2
		IL_00fd: callvirt instance uint32 System.IConvertible::ToUInt32(class System.IFormatProvider)
		IL_0102: box System.UInt32
		IL_0107: stloc.1
		IL_0108: br IL_0196

		IL_010d: ldloc.0
		IL_010e: ldarg.2
		IL_010f: callvirt instance int64 System.IConvertible::ToInt64(class System.IFormatProvider)
		IL_0114: box System.Int64
		IL_0119: stloc.1
		IL_011a: br.s IL_0196

		IL_011c: ldloc.0
		IL_011d: ldarg.2
		IL_011e: callvirt instance uint64 System.IConvertible::ToUInt64(class System.IFormatProvider)
		IL_0123: box System.UInt64
		IL_0128: stloc.1
		IL_0129: br.s IL_0196

		IL_012b: ldloc.0
		IL_012c: ldarg.2
		IL_012d: callvirt instance float32 System.IConvertible::ToSingle(class System.IFormatProvider)
		IL_0132: box System.Single
		IL_0137: stloc.1
		IL_0138: br.s IL_0196

		IL_013a: ldloc.0
		IL_013b: ldarg.2
		IL_013c: callvirt instance float64 System.IConvertible::ToDouble(class System.IFormatProvider)
		IL_0141: box System.Double
		IL_0146: stloc.1
		IL_0147: br.s IL_0196

		IL_0149: ldloc.0
		IL_014a: ldarg.2
		IL_014b: callvirt instance valuetype System.Decimal System.IConvertible::ToDecimal(class System.IFormatProvider)
		IL_0150: box System.Decimal
		IL_0155: stloc.1
		IL_0156: br.s IL_0196

		IL_0158: ldloc.0
		IL_0159: ldarg.2
		IL_015a: callvirt instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		IL_015f: box System.DateTime
		IL_0164: stloc.1
		IL_0165: br.s IL_0196

		IL_0167: ldloc.0
		IL_0168: ldarg.2
		IL_0169: callvirt instance string System.IConvertible::ToString(class System.IFormatProvider)
		IL_016e: stloc.1
		IL_016f: br.s IL_0196

		IL_0171: ldarg.0
		IL_0172: stloc.1
		IL_0173: br.s IL_0196

		IL_0175: call string System.SR::get_InvalidCast_DBNull()
		IL_017a: newobj instance void System.InvalidCastException::.ctor(string)
		IL_017f: throw

		IL_0180: call string System.SR::get_InvalidCast_Empty()
		IL_0185: newobj instance void System.InvalidCastException::.ctor(string)
		IL_018a: throw

		IL_018b: call string System.SR::get_Arg_UnknownTypeCode()
		IL_0190: newobj instance void System.ArgumentException::.ctor(string)
		IL_0195: throw

		IL_0196: ldloc.1
		IL_0197: ret
	} // end of method Convert::ChangeType

	.method assembly hidebysig static 
		object DefaultToType (
			class System.IConvertible 'value',
			class System.Type targetType,
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x602f8
		// Code size 482 (0x1e2)
		.maxstack 3

		IL_0000: ldarg.1
		IL_0001: ldnull
		IL_0002: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0007: brfalse.s IL_0014

		IL_0009: ldstr "targetType"
		IL_000e: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0013: throw

		IL_0014: ldarg.0
		IL_0015: callvirt instance class System.Type System.Object::GetType()
		IL_001a: ldarg.1
		IL_001b: bne.un.s IL_001f

		IL_001d: ldarg.0
		IL_001e: ret

		IL_001f: ldarg.1
		IL_0020: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_0025: ldc.i4.3
		IL_0026: ldelem.ref
		IL_0027: bne.un.s IL_0036

		IL_0029: ldarg.0
		IL_002a: ldarg.2
		IL_002b: callvirt instance bool System.IConvertible::ToBoolean(class System.IFormatProvider)
		IL_0030: box System.Boolean
		IL_0035: ret

		IL_0036: ldarg.1
		IL_0037: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_003c: ldc.i4.4
		IL_003d: ldelem.ref
		IL_003e: bne.un.s IL_004d

		IL_0040: ldarg.0
		IL_0041: ldarg.2
		IL_0042: callvirt instance char System.IConvertible::ToChar(class System.IFormatProvider)
		IL_0047: box System.Char
		IL_004c: ret

		IL_004d: ldarg.1
		IL_004e: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_0053: ldc.i4.5
		IL_0054: ldelem.ref
		IL_0055: bne.un.s IL_0064

		IL_0057: ldarg.0
		IL_0058: ldarg.2
		IL_0059: callvirt instance int8 System.IConvertible::ToSByte(class System.IFormatProvider)
		IL_005e: box System.SByte
		IL_0063: ret

		IL_0064: ldarg.1
		IL_0065: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_006a: ldc.i4.6
		IL_006b: ldelem.ref
		IL_006c: bne.un.s IL_007b

		IL_006e: ldarg.0
		IL_006f: ldarg.2
		IL_0070: callvirt instance uint8 System.IConvertible::ToByte(class System.IFormatProvider)
		IL_0075: box System.Byte
		IL_007a: ret

		IL_007b: ldarg.1
		IL_007c: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_0081: ldc.i4.7
		IL_0082: ldelem.ref
		IL_0083: bne.un.s IL_0092

		IL_0085: ldarg.0
		IL_0086: ldarg.2
		IL_0087: callvirt instance int16 System.IConvertible::ToInt16(class System.IFormatProvider)
		IL_008c: box System.Int16
		IL_0091: ret

		IL_0092: ldarg.1
		IL_0093: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_0098: ldc.i4.8
		IL_0099: ldelem.ref
		IL_009a: bne.un.s IL_00a9

		IL_009c: ldarg.0
		IL_009d: ldarg.2
		IL_009e: callvirt instance uint16 System.IConvertible::ToUInt16(class System.IFormatProvider)
		IL_00a3: box System.UInt16
		IL_00a8: ret

		IL_00a9: ldarg.1
		IL_00aa: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_00af: ldc.i4.s 9
		IL_00b1: ldelem.ref
		IL_00b2: bne.un.s IL_00c1

		IL_00b4: ldarg.0
		IL_00b5: ldarg.2
		IL_00b6: callvirt instance int32 System.IConvertible::ToInt32(class System.IFormatProvider)
		IL_00bb: box System.Int32
		IL_00c0: ret

		IL_00c1: ldarg.1
		IL_00c2: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_00c7: ldc.i4.s 10
		IL_00c9: ldelem.ref
		IL_00ca: bne.un.s IL_00d9

		IL_00cc: ldarg.0
		IL_00cd: ldarg.2
		IL_00ce: callvirt instance uint32 System.IConvertible::ToUInt32(class System.IFormatProvider)
		IL_00d3: box System.UInt32
		IL_00d8: ret

		IL_00d9: ldarg.1
		IL_00da: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_00df: ldc.i4.s 11
		IL_00e1: ldelem.ref
		IL_00e2: bne.un.s IL_00f1

		IL_00e4: ldarg.0
		IL_00e5: ldarg.2
		IL_00e6: callvirt instance int64 System.IConvertible::ToInt64(class System.IFormatProvider)
		IL_00eb: box System.Int64
		IL_00f0: ret

		IL_00f1: ldarg.1
		IL_00f2: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_00f7: ldc.i4.s 12
		IL_00f9: ldelem.ref
		IL_00fa: bne.un.s IL_0109

		IL_00fc: ldarg.0
		IL_00fd: ldarg.2
		IL_00fe: callvirt instance uint64 System.IConvertible::ToUInt64(class System.IFormatProvider)
		IL_0103: box System.UInt64
		IL_0108: ret

		IL_0109: ldarg.1
		IL_010a: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_010f: ldc.i4.s 13
		IL_0111: ldelem.ref
		IL_0112: bne.un.s IL_0121

		IL_0114: ldarg.0
		IL_0115: ldarg.2
		IL_0116: callvirt instance float32 System.IConvertible::ToSingle(class System.IFormatProvider)
		IL_011b: box System.Single
		IL_0120: ret

		IL_0121: ldarg.1
		IL_0122: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_0127: ldc.i4.s 14
		IL_0129: ldelem.ref
		IL_012a: bne.un.s IL_0139

		IL_012c: ldarg.0
		IL_012d: ldarg.2
		IL_012e: callvirt instance float64 System.IConvertible::ToDouble(class System.IFormatProvider)
		IL_0133: box System.Double
		IL_0138: ret

		IL_0139: ldarg.1
		IL_013a: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_013f: ldc.i4.s 15
		IL_0141: ldelem.ref
		IL_0142: bne.un.s IL_0151

		IL_0144: ldarg.0
		IL_0145: ldarg.2
		IL_0146: callvirt instance valuetype System.Decimal System.IConvertible::ToDecimal(class System.IFormatProvider)
		IL_014b: box System.Decimal
		IL_0150: ret

		IL_0151: ldarg.1
		IL_0152: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_0157: ldc.i4.s 16
		IL_0159: ldelem.ref
		IL_015a: bne.un.s IL_0169

		IL_015c: ldarg.0
		IL_015d: ldarg.2
		IL_015e: callvirt instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		IL_0163: box System.DateTime
		IL_0168: ret

		IL_0169: ldarg.1
		IL_016a: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_016f: ldc.i4.s 18
		IL_0171: ldelem.ref
		IL_0172: bne.un.s IL_017c

		IL_0174: ldarg.0
		IL_0175: ldarg.2
		IL_0176: callvirt instance string System.IConvertible::ToString(class System.IFormatProvider)
		IL_017b: ret

		IL_017c: ldarg.1
		IL_017d: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_0182: ldc.i4.1
		IL_0183: ldelem.ref
		IL_0184: bne.un.s IL_0188

		IL_0186: ldarg.0
		IL_0187: ret

		IL_0188: ldarg.1
		IL_0189: ldsfld class System.Type System.Convert::EnumType
		IL_018e: bne.un.s IL_0197

		IL_0190: ldarg.0
		IL_0191: castclass System.Enum
		IL_0196: ret

		IL_0197: ldarg.1
		IL_0198: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_019d: ldc.i4.2
		IL_019e: ldelem.ref
		IL_019f: bne.un.s IL_01ac

		IL_01a1: call string System.SR::get_InvalidCast_DBNull()
		IL_01a6: newobj instance void System.InvalidCastException::.ctor(string)
		IL_01ab: throw

		IL_01ac: ldarg.1
		IL_01ad: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_01b2: ldc.i4.0
		IL_01b3: ldelem.ref
		IL_01b4: bne.un.s IL_01c1

		IL_01b6: call string System.SR::get_InvalidCast_Empty()
		IL_01bb: newobj instance void System.InvalidCastException::.ctor(string)
		IL_01c0: throw

		IL_01c1: call string System.SR::get_InvalidCast_FromTo()
		IL_01c6: ldarg.0
		IL_01c7: callvirt instance class System.Type System.Object::GetType()
		IL_01cc: callvirt instance string System.Type::get_FullName()
		IL_01d1: ldarg.1
		IL_01d2: callvirt instance string System.Type::get_FullName()
		IL_01d7: call string System.SR::Format(string, object, object)
		IL_01dc: newobj instance void System.InvalidCastException::.ctor(string)
		IL_01e1: throw
	} // end of method Convert::DefaultToType

	.method public hidebysig static 
		object ChangeType (
			object 'value',
			class System.Type conversionType
		) cil managed 
	{
		.param [0]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullIfNotNullAttribute::.ctor(string) = (
				01 00 05 76 61 6c 75 65 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x604e6
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()
		IL_0007: call object System.Convert::ChangeType(object, class System.Type, class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ChangeType

	.method public hidebysig static 
		object ChangeType (
			object 'value',
			class System.Type conversionType,
			class System.IFormatProvider provider
		) cil managed 
	{
		.param [0]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullIfNotNullAttribute::.ctor(string) = (
				01 00 05 76 61 6c 75 65 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x604f4
		// Code size 445 (0x1bd)
		.maxstack 3
		.locals (
			[0] class System.IConvertible
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "conversionType"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: brtrue.s IL_0026

		IL_0011: ldarg.1
		IL_0012: callvirt instance bool System.Type::get_IsValueType()
		IL_0017: brfalse.s IL_0024

		IL_0019: call string System.SR::get_InvalidCast_CannotCastNullToValueType()
		IL_001e: newobj instance void System.InvalidCastException::.ctor(string)
		IL_0023: throw

		IL_0024: ldnull
		IL_0025: ret

		IL_0026: ldarg.0
		IL_0027: isinst System.IConvertible
		IL_002c: stloc.0
		IL_002d: ldloc.0
		IL_002e: brtrue.s IL_004b

		IL_0030: ldarg.0
		IL_0031: callvirt instance class System.Type System.Object::GetType()
		IL_0036: ldarg.1
		IL_0037: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_003c: brfalse.s IL_0040

		IL_003e: ldarg.0
		IL_003f: ret

		IL_0040: call string System.SR::get_InvalidCast_IConvertible()
		IL_0045: newobj instance void System.InvalidCastException::.ctor(string)
		IL_004a: throw

		IL_004b: ldarg.1
		IL_004c: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_0051: ldc.i4.3
		IL_0052: ldelem.ref
		IL_0053: bne.un.s IL_0062

		IL_0055: ldloc.0
		IL_0056: ldarg.2
		IL_0057: callvirt instance bool System.IConvertible::ToBoolean(class System.IFormatProvider)
		IL_005c: box System.Boolean
		IL_0061: ret

		IL_0062: ldarg.1
		IL_0063: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_0068: ldc.i4.4
		IL_0069: ldelem.ref
		IL_006a: bne.un.s IL_0079

		IL_006c: ldloc.0
		IL_006d: ldarg.2
		IL_006e: callvirt instance char System.IConvertible::ToChar(class System.IFormatProvider)
		IL_0073: box System.Char
		IL_0078: ret

		IL_0079: ldarg.1
		IL_007a: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_007f: ldc.i4.5
		IL_0080: ldelem.ref
		IL_0081: bne.un.s IL_0090

		IL_0083: ldloc.0
		IL_0084: ldarg.2
		IL_0085: callvirt instance int8 System.IConvertible::ToSByte(class System.IFormatProvider)
		IL_008a: box System.SByte
		IL_008f: ret

		IL_0090: ldarg.1
		IL_0091: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_0096: ldc.i4.6
		IL_0097: ldelem.ref
		IL_0098: bne.un.s IL_00a7

		IL_009a: ldloc.0
		IL_009b: ldarg.2
		IL_009c: callvirt instance uint8 System.IConvertible::ToByte(class System.IFormatProvider)
		IL_00a1: box System.Byte
		IL_00a6: ret

		IL_00a7: ldarg.1
		IL_00a8: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_00ad: ldc.i4.7
		IL_00ae: ldelem.ref
		IL_00af: bne.un.s IL_00be

		IL_00b1: ldloc.0
		IL_00b2: ldarg.2
		IL_00b3: callvirt instance int16 System.IConvertible::ToInt16(class System.IFormatProvider)
		IL_00b8: box System.Int16
		IL_00bd: ret

		IL_00be: ldarg.1
		IL_00bf: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_00c4: ldc.i4.8
		IL_00c5: ldelem.ref
		IL_00c6: bne.un.s IL_00d5

		IL_00c8: ldloc.0
		IL_00c9: ldarg.2
		IL_00ca: callvirt instance uint16 System.IConvertible::ToUInt16(class System.IFormatProvider)
		IL_00cf: box System.UInt16
		IL_00d4: ret

		IL_00d5: ldarg.1
		IL_00d6: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_00db: ldc.i4.s 9
		IL_00dd: ldelem.ref
		IL_00de: bne.un.s IL_00ed

		IL_00e0: ldloc.0
		IL_00e1: ldarg.2
		IL_00e2: callvirt instance int32 System.IConvertible::ToInt32(class System.IFormatProvider)
		IL_00e7: box System.Int32
		IL_00ec: ret

		IL_00ed: ldarg.1
		IL_00ee: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_00f3: ldc.i4.s 10
		IL_00f5: ldelem.ref
		IL_00f6: bne.un.s IL_0105

		IL_00f8: ldloc.0
		IL_00f9: ldarg.2
		IL_00fa: callvirt instance uint32 System.IConvertible::ToUInt32(class System.IFormatProvider)
		IL_00ff: box System.UInt32
		IL_0104: ret

		IL_0105: ldarg.1
		IL_0106: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_010b: ldc.i4.s 11
		IL_010d: ldelem.ref
		IL_010e: bne.un.s IL_011d

		IL_0110: ldloc.0
		IL_0111: ldarg.2
		IL_0112: callvirt instance int64 System.IConvertible::ToInt64(class System.IFormatProvider)
		IL_0117: box System.Int64
		IL_011c: ret

		IL_011d: ldarg.1
		IL_011e: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_0123: ldc.i4.s 12
		IL_0125: ldelem.ref
		IL_0126: bne.un.s IL_0135

		IL_0128: ldloc.0
		IL_0129: ldarg.2
		IL_012a: callvirt instance uint64 System.IConvertible::ToUInt64(class System.IFormatProvider)
		IL_012f: box System.UInt64
		IL_0134: ret

		IL_0135: ldarg.1
		IL_0136: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_013b: ldc.i4.s 13
		IL_013d: ldelem.ref
		IL_013e: bne.un.s IL_014d

		IL_0140: ldloc.0
		IL_0141: ldarg.2
		IL_0142: callvirt instance float32 System.IConvertible::ToSingle(class System.IFormatProvider)
		IL_0147: box System.Single
		IL_014c: ret

		IL_014d: ldarg.1
		IL_014e: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_0153: ldc.i4.s 14
		IL_0155: ldelem.ref
		IL_0156: bne.un.s IL_0165

		IL_0158: ldloc.0
		IL_0159: ldarg.2
		IL_015a: callvirt instance float64 System.IConvertible::ToDouble(class System.IFormatProvider)
		IL_015f: box System.Double
		IL_0164: ret

		IL_0165: ldarg.1
		IL_0166: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_016b: ldc.i4.s 15
		IL_016d: ldelem.ref
		IL_016e: bne.un.s IL_017d

		IL_0170: ldloc.0
		IL_0171: ldarg.2
		IL_0172: callvirt instance valuetype System.Decimal System.IConvertible::ToDecimal(class System.IFormatProvider)
		IL_0177: box System.Decimal
		IL_017c: ret

		IL_017d: ldarg.1
		IL_017e: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_0183: ldc.i4.s 16
		IL_0185: ldelem.ref
		IL_0186: bne.un.s IL_0195

		IL_0188: ldloc.0
		IL_0189: ldarg.2
		IL_018a: callvirt instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		IL_018f: box System.DateTime
		IL_0194: ret

		IL_0195: ldarg.1
		IL_0196: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_019b: ldc.i4.s 18
		IL_019d: ldelem.ref
		IL_019e: bne.un.s IL_01a8

		IL_01a0: ldloc.0
		IL_01a1: ldarg.2
		IL_01a2: callvirt instance string System.IConvertible::ToString(class System.IFormatProvider)
		IL_01a7: ret

		IL_01a8: ldarg.1
		IL_01a9: ldsfld class System.Type[] System.Convert::ConvertTypes
		IL_01ae: ldc.i4.1
		IL_01af: ldelem.ref
		IL_01b0: bne.un.s IL_01b4

		IL_01b2: ldarg.0
		IL_01b3: ret

		IL_01b4: ldloc.0
		IL_01b5: ldarg.1
		IL_01b6: ldarg.2
		IL_01b7: callvirt instance object System.IConvertible::ToType(class System.Type, class System.IFormatProvider)
		IL_01bc: ret
	} // end of method Convert::ChangeType

	.method private hidebysig static 
		void ThrowCharOverflowException () cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DoesNotReturnAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x606bd
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_Overflow_Char()
		IL_0005: newobj instance void System.OverflowException::.ctor(string)
		IL_000a: throw
	} // end of method Convert::ThrowCharOverflowException

	.method private hidebysig static 
		void ThrowByteOverflowException () cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DoesNotReturnAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x606c9
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_Overflow_Byte()
		IL_0005: newobj instance void System.OverflowException::.ctor(string)
		IL_000a: throw
	} // end of method Convert::ThrowByteOverflowException

	.method private hidebysig static 
		void ThrowSByteOverflowException () cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DoesNotReturnAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x606d5
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_Overflow_SByte()
		IL_0005: newobj instance void System.OverflowException::.ctor(string)
		IL_000a: throw
	} // end of method Convert::ThrowSByteOverflowException

	.method private hidebysig static 
		void ThrowInt16OverflowException () cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DoesNotReturnAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x606e1
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_Overflow_Int16()
		IL_0005: newobj instance void System.OverflowException::.ctor(string)
		IL_000a: throw
	} // end of method Convert::ThrowInt16OverflowException

	.method private hidebysig static 
		void ThrowUInt16OverflowException () cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DoesNotReturnAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x606ed
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_Overflow_UInt16()
		IL_0005: newobj instance void System.OverflowException::.ctor(string)
		IL_000a: throw
	} // end of method Convert::ThrowUInt16OverflowException

	.method private hidebysig static 
		void ThrowInt32OverflowException () cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DoesNotReturnAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x606f9
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_Overflow_Int32()
		IL_0005: newobj instance void System.OverflowException::.ctor(string)
		IL_000a: throw
	} // end of method Convert::ThrowInt32OverflowException

	.method private hidebysig static 
		void ThrowUInt32OverflowException () cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DoesNotReturnAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x60705
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_Overflow_UInt32()
		IL_0005: newobj instance void System.OverflowException::.ctor(string)
		IL_000a: throw
	} // end of method Convert::ThrowUInt32OverflowException

	.method private hidebysig static 
		void ThrowInt64OverflowException () cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DoesNotReturnAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x60711
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_Overflow_Int64()
		IL_0005: newobj instance void System.OverflowException::.ctor(string)
		IL_000a: throw
	} // end of method Convert::ThrowInt64OverflowException

	.method private hidebysig static 
		void ThrowUInt64OverflowException () cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DoesNotReturnAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x6071d
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_Overflow_UInt64()
		IL_0005: newobj instance void System.OverflowException::.ctor(string)
		IL_000a: throw
	} // end of method Convert::ThrowUInt64OverflowException

	.method public hidebysig static 
		bool ToBoolean (
			object 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60729
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldnull
		IL_000a: callvirt instance bool System.IConvertible::ToBoolean(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.i4.0
		IL_0011: ret
	} // end of method Convert::ToBoolean

	.method public hidebysig static 
		bool ToBoolean (
			object 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x6073c
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldarg.1
		IL_000a: callvirt instance bool System.IConvertible::ToBoolean(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.i4.0
		IL_0011: ret
	} // end of method Convert::ToBoolean

	.method public hidebysig static 
		bool ToBoolean (
			bool 'value'
		) cil managed 
	{
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToBoolean

	.method public hidebysig static 
		bool ToBoolean (
			int8 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x6074f
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: cgt.un
		IL_0004: ret
	} // end of method Convert::ToBoolean

	.method public hidebysig static 
		bool ToBoolean (
			char 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60755
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.Char
		IL_0006: ldnull
		IL_0007: callvirt instance bool System.IConvertible::ToBoolean(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToBoolean

	.method public hidebysig static 
		bool ToBoolean (
			uint8 'value'
		) cil managed 
	{
		// Method begins at RVA 0x6074f
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: cgt.un
		IL_0004: ret
	} // end of method Convert::ToBoolean

	.method public hidebysig static 
		bool ToBoolean (
			int16 'value'
		) cil managed 
	{
		// Method begins at RVA 0x6074f
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: cgt.un
		IL_0004: ret
	} // end of method Convert::ToBoolean

	.method public hidebysig static 
		bool ToBoolean (
			uint16 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x6074f
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: cgt.un
		IL_0004: ret
	} // end of method Convert::ToBoolean

	.method public hidebysig static 
		bool ToBoolean (
			int32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x6074f
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: cgt.un
		IL_0004: ret
	} // end of method Convert::ToBoolean

	.method public hidebysig static 
		bool ToBoolean (
			uint32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x6074f
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: cgt.un
		IL_0004: ret
	} // end of method Convert::ToBoolean

	.method public hidebysig static 
		bool ToBoolean (
			int64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60763
		// Code size 6 (0x6)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: conv.i8
		IL_0003: cgt.un
		IL_0005: ret
	} // end of method Convert::ToBoolean

	.method public hidebysig static 
		bool ToBoolean (
			uint64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60763
		// Code size 6 (0x6)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: conv.i8
		IL_0003: cgt.un
		IL_0005: ret
	} // end of method Convert::ToBoolean

	.method public hidebysig static 
		bool ToBoolean (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x6076a
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldarg.0
		IL_0006: call bool System.Boolean::Parse(string)
		IL_000b: ret
	} // end of method Convert::ToBoolean

	.method public hidebysig static 
		bool ToBoolean (
			string 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x6076a
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldarg.0
		IL_0006: call bool System.Boolean::Parse(string)
		IL_000b: ret
	} // end of method Convert::ToBoolean

	.method public hidebysig static 
		bool ToBoolean (
			float32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60777
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.r4 0.0
		IL_0006: ceq
		IL_0008: ldc.i4.0
		IL_0009: ceq
		IL_000b: ret
	} // end of method Convert::ToBoolean

	.method public hidebysig static 
		bool ToBoolean (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60784
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.r8 0.0
		IL_000a: ceq
		IL_000c: ldc.i4.0
		IL_000d: ceq
		IL_000f: ret
	} // end of method Convert::ToBoolean

	.method public hidebysig static 
		bool ToBoolean (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60795
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldsfld valuetype System.Decimal System.Decimal::Zero
		IL_0006: call bool System.Decimal::op_Inequality(valuetype System.Decimal, valuetype System.Decimal)
		IL_000b: ret
	} // end of method Convert::ToBoolean

	.method public hidebysig static 
		bool ToBoolean (
			valuetype System.DateTime 'value'
		) cil managed 
	{
		// Method begins at RVA 0x607a2
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.DateTime
		IL_0006: ldnull
		IL_0007: callvirt instance bool System.IConvertible::ToBoolean(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToBoolean

	.method public hidebysig static 
		char ToChar (
			object 'value'
		) cil managed 
	{
		// Method begins at RVA 0x607b0
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldnull
		IL_000a: callvirt instance char System.IConvertible::ToChar(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.i4.0
		IL_0011: ret
	} // end of method Convert::ToChar

	.method public hidebysig static 
		char ToChar (
			object 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x607c3
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldarg.1
		IL_000a: callvirt instance char System.IConvertible::ToChar(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.i4.0
		IL_0011: ret
	} // end of method Convert::ToChar

	.method public hidebysig static 
		char ToChar (
			bool 'value'
		) cil managed 
	{
		// Method begins at RVA 0x607d6
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.Boolean
		IL_0006: ldnull
		IL_0007: callvirt instance char System.IConvertible::ToChar(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToChar

	.method public hidebysig static 
		char ToChar (
			char 'value'
		) cil managed 
	{
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToChar

	.method public hidebysig static 
		char ToChar (
			int8 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x607e4
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0009

		IL_0004: call void System.Convert::ThrowCharOverflowException()

		IL_0009: ldarg.0
		IL_000a: conv.u2
		IL_000b: ret
	} // end of method Convert::ToChar

	.method public hidebysig static 
		char ToChar (
			uint8 'value'
		) cil managed 
	{
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToChar

	.method public hidebysig static 
		char ToChar (
			int16 'value'
		) cil managed 
	{
		// Method begins at RVA 0x607e4
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0009

		IL_0004: call void System.Convert::ThrowCharOverflowException()

		IL_0009: ldarg.0
		IL_000a: conv.u2
		IL_000b: ret
	} // end of method Convert::ToChar

	.method public hidebysig static 
		char ToChar (
			uint16 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToChar

	.method public hidebysig static 
		char ToChar (
			int32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x607f1
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call char System.Convert::ToChar(uint32)
		IL_0006: ret
	} // end of method Convert::ToChar

	.method public hidebysig static 
		char ToChar (
			uint32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x607f9
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4 65535
		IL_0006: ble.un.s IL_000d

		IL_0008: call void System.Convert::ThrowCharOverflowException()

		IL_000d: ldarg.0
		IL_000e: conv.u2
		IL_000f: ret
	} // end of method Convert::ToChar

	.method public hidebysig static 
		char ToChar (
			int64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x6080a
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call char System.Convert::ToChar(uint64)
		IL_0006: ret
	} // end of method Convert::ToChar

	.method public hidebysig static 
		char ToChar (
			uint64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60812
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4 65535
		IL_0006: conv.i8
		IL_0007: ble.un.s IL_000e

		IL_0009: call void System.Convert::ThrowCharOverflowException()

		IL_000e: ldarg.0
		IL_000f: conv.u2
		IL_0010: ret
	} // end of method Convert::ToChar

	.method public hidebysig static 
		char ToChar (
			string 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x60824
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: call char System.Convert::ToChar(string, class System.IFormatProvider)
		IL_0007: ret
	} // end of method Convert::ToChar

	.method public hidebysig static 
		char ToChar (
			string 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x6082d
		// Code size 42 (0x2a)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "value"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: callvirt instance int32 System.String::get_Length()
		IL_0014: ldc.i4.1
		IL_0015: beq.s IL_0022

		IL_0017: call string System.SR::get_Format_NeedSingleChar()
		IL_001c: newobj instance void System.FormatException::.ctor(string)
		IL_0021: throw

		IL_0022: ldarg.0
		IL_0023: ldc.i4.0
		IL_0024: callvirt instance char System.String::get_Chars(int32)
		IL_0029: ret
	} // end of method Convert::ToChar

	.method public hidebysig static 
		char ToChar (
			float32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60858
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.Single
		IL_0006: ldnull
		IL_0007: callvirt instance char System.IConvertible::ToChar(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToChar

	.method public hidebysig static 
		char ToChar (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60866
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.Double
		IL_0006: ldnull
		IL_0007: callvirt instance char System.IConvertible::ToChar(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToChar

	.method public hidebysig static 
		char ToChar (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60874
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.Decimal
		IL_0006: ldnull
		IL_0007: callvirt instance char System.IConvertible::ToChar(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToChar

	.method public hidebysig static 
		char ToChar (
			valuetype System.DateTime 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60882
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.DateTime
		IL_0006: ldnull
		IL_0007: callvirt instance char System.IConvertible::ToChar(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToChar

	.method public hidebysig static 
		int8 ToSByte (
			object 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60890
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldnull
		IL_000a: callvirt instance int8 System.IConvertible::ToSByte(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.i4.0
		IL_0011: ret
	} // end of method Convert::ToSByte

	.method public hidebysig static 
		int8 ToSByte (
			object 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x608a3
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldarg.1
		IL_000a: callvirt instance int8 System.IConvertible::ToSByte(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.i4.0
		IL_0011: ret
	} // end of method Convert::ToSByte

	.method public hidebysig static 
		int8 ToSByte (
			bool 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x608b6
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldc.i4.1
		IL_0006: ret
	} // end of method Convert::ToSByte

	.method public hidebysig static 
		int8 ToSByte (
			int8 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToSByte

	.method public hidebysig static 
		int8 ToSByte (
			char 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x608be
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 127
		IL_0003: ble.s IL_000a

		IL_0005: call void System.Convert::ThrowSByteOverflowException()

		IL_000a: ldarg.0
		IL_000b: conv.i1
		IL_000c: ret
	} // end of method Convert::ToSByte

	.method public hidebysig static 
		int8 ToSByte (
			uint8 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x608be
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 127
		IL_0003: ble.s IL_000a

		IL_0005: call void System.Convert::ThrowSByteOverflowException()

		IL_000a: ldarg.0
		IL_000b: conv.i1
		IL_000c: ret
	} // end of method Convert::ToSByte

	.method public hidebysig static 
		int8 ToSByte (
			int16 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x608cc
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s -128
		IL_0003: blt.s IL_000a

		IL_0005: ldarg.0
		IL_0006: ldc.i4.s 127
		IL_0008: ble.s IL_000f

		IL_000a: call void System.Convert::ThrowSByteOverflowException()

		IL_000f: ldarg.0
		IL_0010: conv.i1
		IL_0011: ret
	} // end of method Convert::ToSByte

	.method public hidebysig static 
		int8 ToSByte (
			uint16 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x608be
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 127
		IL_0003: ble.s IL_000a

		IL_0005: call void System.Convert::ThrowSByteOverflowException()

		IL_000a: ldarg.0
		IL_000b: conv.i1
		IL_000c: ret
	} // end of method Convert::ToSByte

	.method public hidebysig static 
		int8 ToSByte (
			int32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x608cc
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s -128
		IL_0003: blt.s IL_000a

		IL_0005: ldarg.0
		IL_0006: ldc.i4.s 127
		IL_0008: ble.s IL_000f

		IL_000a: call void System.Convert::ThrowSByteOverflowException()

		IL_000f: ldarg.0
		IL_0010: conv.i1
		IL_0011: ret
	} // end of method Convert::ToSByte

	.method public hidebysig static 
		int8 ToSByte (
			uint32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x608df
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 127
		IL_0003: ble.un.s IL_000a

		IL_0005: call void System.Convert::ThrowSByteOverflowException()

		IL_000a: ldarg.0
		IL_000b: conv.i1
		IL_000c: ret
	} // end of method Convert::ToSByte

	.method public hidebysig static 
		int8 ToSByte (
			int64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x608ed
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s -128
		IL_0003: conv.i8
		IL_0004: blt.s IL_000c

		IL_0006: ldarg.0
		IL_0007: ldc.i4.s 127
		IL_0009: conv.i8
		IL_000a: ble.s IL_0011

		IL_000c: call void System.Convert::ThrowSByteOverflowException()

		IL_0011: ldarg.0
		IL_0012: conv.i1
		IL_0013: ret
	} // end of method Convert::ToSByte

	.method public hidebysig static 
		int8 ToSByte (
			uint64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60902
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 127
		IL_0003: conv.i8
		IL_0004: ble.un.s IL_000b

		IL_0006: call void System.Convert::ThrowSByteOverflowException()

		IL_000b: ldarg.0
		IL_000c: conv.i1
		IL_000d: ret
	} // end of method Convert::ToSByte

	.method public hidebysig static 
		int8 ToSByte (
			float32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60911
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r8
		IL_0002: call int8 System.Convert::ToSByte(float64)
		IL_0007: ret
	} // end of method Convert::ToSByte

	.method public hidebysig static 
		int8 ToSByte (
			float64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x6091a
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call int32 System.Convert::ToInt32(float64)
		IL_0006: call int8 System.Convert::ToSByte(int32)
		IL_000b: ret
	} // end of method Convert::ToSByte

	.method public hidebysig static 
		int8 ToSByte (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60927
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: call valuetype System.Decimal System.Decimal::Round(valuetype System.Decimal, int32)
		IL_0007: call int8 System.Decimal::ToSByte(valuetype System.Decimal)
		IL_000c: ret
	} // end of method Convert::ToSByte

	.method public hidebysig static 
		int8 ToSByte (
			string 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60935
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldarg.0
		IL_0006: call int8 System.SByte::Parse(string)
		IL_000b: ret
	} // end of method Convert::ToSByte

	.method public hidebysig static 
		int8 ToSByte (
			string 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x60942
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call int8 System.SByte::Parse(string, class System.IFormatProvider)
		IL_0007: ret
	} // end of method Convert::ToSByte

	.method public hidebysig static 
		int8 ToSByte (
			valuetype System.DateTime 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x6094b
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.DateTime
		IL_0006: ldnull
		IL_0007: callvirt instance int8 System.IConvertible::ToSByte(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToSByte

	.method public hidebysig static 
		uint8 ToByte (
			object 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60959
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldnull
		IL_000a: callvirt instance uint8 System.IConvertible::ToByte(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.i4.0
		IL_0011: ret
	} // end of method Convert::ToByte

	.method public hidebysig static 
		uint8 ToByte (
			object 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x6096c
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldarg.1
		IL_000a: callvirt instance uint8 System.IConvertible::ToByte(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.i4.0
		IL_0011: ret
	} // end of method Convert::ToByte

	.method public hidebysig static 
		uint8 ToByte (
			bool 'value'
		) cil managed 
	{
		// Method begins at RVA 0x608b6
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldc.i4.1
		IL_0006: ret
	} // end of method Convert::ToByte

	.method public hidebysig static 
		uint8 ToByte (
			uint8 'value'
		) cil managed 
	{
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToByte

	.method public hidebysig static 
		uint8 ToByte (
			char 'value'
		) cil managed 
	{
		// Method begins at RVA 0x6097f
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4 255
		IL_0006: ble.s IL_000d

		IL_0008: call void System.Convert::ThrowByteOverflowException()

		IL_000d: ldarg.0
		IL_000e: conv.u1
		IL_000f: ret
	} // end of method Convert::ToByte

	.method public hidebysig static 
		uint8 ToByte (
			int8 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60990
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0009

		IL_0004: call void System.Convert::ThrowByteOverflowException()

		IL_0009: ldarg.0
		IL_000a: conv.u1
		IL_000b: ret
	} // end of method Convert::ToByte

	.method public hidebysig static 
		uint8 ToByte (
			int16 'value'
		) cil managed 
	{
		// Method begins at RVA 0x6099d
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4 255
		IL_0006: ble.un.s IL_000d

		IL_0008: call void System.Convert::ThrowByteOverflowException()

		IL_000d: ldarg.0
		IL_000e: conv.u1
		IL_000f: ret
	} // end of method Convert::ToByte

	.method public hidebysig static 
		uint8 ToByte (
			uint16 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x6097f
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4 255
		IL_0006: ble.s IL_000d

		IL_0008: call void System.Convert::ThrowByteOverflowException()

		IL_000d: ldarg.0
		IL_000e: conv.u1
		IL_000f: ret
	} // end of method Convert::ToByte

	.method public hidebysig static 
		uint8 ToByte (
			int32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x609ae
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call uint8 System.Convert::ToByte(uint32)
		IL_0006: ret
	} // end of method Convert::ToByte

	.method public hidebysig static 
		uint8 ToByte (
			uint32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x6099d
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4 255
		IL_0006: ble.un.s IL_000d

		IL_0008: call void System.Convert::ThrowByteOverflowException()

		IL_000d: ldarg.0
		IL_000e: conv.u1
		IL_000f: ret
	} // end of method Convert::ToByte

	.method public hidebysig static 
		uint8 ToByte (
			int64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x609b6
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call uint8 System.Convert::ToByte(uint64)
		IL_0006: ret
	} // end of method Convert::ToByte

	.method public hidebysig static 
		uint8 ToByte (
			uint64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x609be
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4 255
		IL_0006: conv.i8
		IL_0007: ble.un.s IL_000e

		IL_0009: call void System.Convert::ThrowByteOverflowException()

		IL_000e: ldarg.0
		IL_000f: conv.u1
		IL_0010: ret
	} // end of method Convert::ToByte

	.method public hidebysig static 
		uint8 ToByte (
			float32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x609d0
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r8
		IL_0002: call uint8 System.Convert::ToByte(float64)
		IL_0007: ret
	} // end of method Convert::ToByte

	.method public hidebysig static 
		uint8 ToByte (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x609d9
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call int32 System.Convert::ToInt32(float64)
		IL_0006: call uint8 System.Convert::ToByte(int32)
		IL_000b: ret
	} // end of method Convert::ToByte

	.method public hidebysig static 
		uint8 ToByte (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0x609e6
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: call valuetype System.Decimal System.Decimal::Round(valuetype System.Decimal, int32)
		IL_0007: call uint8 System.Decimal::ToByte(valuetype System.Decimal)
		IL_000c: ret
	} // end of method Convert::ToByte

	.method public hidebysig static 
		uint8 ToByte (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x609f4
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldarg.0
		IL_0006: call uint8 System.Byte::Parse(string)
		IL_000b: ret
	} // end of method Convert::ToByte

	.method public hidebysig static 
		uint8 ToByte (
			string 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x60a01
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldarg.0
		IL_0006: ldarg.1
		IL_0007: call uint8 System.Byte::Parse(string, class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToByte

	.method public hidebysig static 
		uint8 ToByte (
			valuetype System.DateTime 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60a0f
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.DateTime
		IL_0006: ldnull
		IL_0007: callvirt instance uint8 System.IConvertible::ToByte(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToByte

	.method public hidebysig static 
		int16 ToInt16 (
			object 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60a1d
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldnull
		IL_000a: callvirt instance int16 System.IConvertible::ToInt16(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.i4.0
		IL_0011: ret
	} // end of method Convert::ToInt16

	.method public hidebysig static 
		int16 ToInt16 (
			object 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x60a30
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldarg.1
		IL_000a: callvirt instance int16 System.IConvertible::ToInt16(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.i4.0
		IL_0011: ret
	} // end of method Convert::ToInt16

	.method public hidebysig static 
		int16 ToInt16 (
			bool 'value'
		) cil managed 
	{
		// Method begins at RVA 0x608b6
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldc.i4.1
		IL_0006: ret
	} // end of method Convert::ToInt16

	.method public hidebysig static 
		int16 ToInt16 (
			char 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60a43
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4 32767
		IL_0006: ble.s IL_000d

		IL_0008: call void System.Convert::ThrowInt16OverflowException()

		IL_000d: ldarg.0
		IL_000e: conv.i2
		IL_000f: ret
	} // end of method Convert::ToInt16

	.method public hidebysig static 
		int16 ToInt16 (
			int8 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToInt16

	.method public hidebysig static 
		int16 ToInt16 (
			uint8 'value'
		) cil managed 
	{
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToInt16

	.method public hidebysig static 
		int16 ToInt16 (
			uint16 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60a43
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4 32767
		IL_0006: ble.s IL_000d

		IL_0008: call void System.Convert::ThrowInt16OverflowException()

		IL_000d: ldarg.0
		IL_000e: conv.i2
		IL_000f: ret
	} // end of method Convert::ToInt16

	.method public hidebysig static 
		int16 ToInt16 (
			int32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60a54
		// Code size 24 (0x18)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4 -32768
		IL_0006: blt.s IL_0010

		IL_0008: ldarg.0
		IL_0009: ldc.i4 32767
		IL_000e: ble.s IL_0015

		IL_0010: call void System.Convert::ThrowInt16OverflowException()

		IL_0015: ldarg.0
		IL_0016: conv.i2
		IL_0017: ret
	} // end of method Convert::ToInt16

	.method public hidebysig static 
		int16 ToInt16 (
			uint32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60a6d
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4 32767
		IL_0006: ble.un.s IL_000d

		IL_0008: call void System.Convert::ThrowInt16OverflowException()

		IL_000d: ldarg.0
		IL_000e: conv.i2
		IL_000f: ret
	} // end of method Convert::ToInt16

	.method public hidebysig static 
		int16 ToInt16 (
			int16 'value'
		) cil managed 
	{
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToInt16

	.method public hidebysig static 
		int16 ToInt16 (
			int64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60a7e
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4 -32768
		IL_0006: conv.i8
		IL_0007: blt.s IL_0012

		IL_0009: ldarg.0
		IL_000a: ldc.i4 32767
		IL_000f: conv.i8
		IL_0010: ble.s IL_0017

		IL_0012: call void System.Convert::ThrowInt16OverflowException()

		IL_0017: ldarg.0
		IL_0018: conv.i2
		IL_0019: ret
	} // end of method Convert::ToInt16

	.method public hidebysig static 
		int16 ToInt16 (
			uint64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60a99
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4 32767
		IL_0006: conv.i8
		IL_0007: ble.un.s IL_000e

		IL_0009: call void System.Convert::ThrowInt16OverflowException()

		IL_000e: ldarg.0
		IL_000f: conv.i2
		IL_0010: ret
	} // end of method Convert::ToInt16

	.method public hidebysig static 
		int16 ToInt16 (
			float32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60aab
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r8
		IL_0002: call int16 System.Convert::ToInt16(float64)
		IL_0007: ret
	} // end of method Convert::ToInt16

	.method public hidebysig static 
		int16 ToInt16 (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60ab4
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call int32 System.Convert::ToInt32(float64)
		IL_0006: call int16 System.Convert::ToInt16(int32)
		IL_000b: ret
	} // end of method Convert::ToInt16

	.method public hidebysig static 
		int16 ToInt16 (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60ac1
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: call valuetype System.Decimal System.Decimal::Round(valuetype System.Decimal, int32)
		IL_0007: call int16 System.Decimal::ToInt16(valuetype System.Decimal)
		IL_000c: ret
	} // end of method Convert::ToInt16

	.method public hidebysig static 
		int16 ToInt16 (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60acf
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldarg.0
		IL_0006: call int16 System.Int16::Parse(string)
		IL_000b: ret
	} // end of method Convert::ToInt16

	.method public hidebysig static 
		int16 ToInt16 (
			string 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x60adc
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldarg.0
		IL_0006: ldarg.1
		IL_0007: call int16 System.Int16::Parse(string, class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToInt16

	.method public hidebysig static 
		int16 ToInt16 (
			valuetype System.DateTime 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60aea
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.DateTime
		IL_0006: ldnull
		IL_0007: callvirt instance int16 System.IConvertible::ToInt16(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToInt16

	.method public hidebysig static 
		uint16 ToUInt16 (
			object 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60af8
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldnull
		IL_000a: callvirt instance uint16 System.IConvertible::ToUInt16(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.i4.0
		IL_0011: ret
	} // end of method Convert::ToUInt16

	.method public hidebysig static 
		uint16 ToUInt16 (
			object 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60b0b
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldarg.1
		IL_000a: callvirt instance uint16 System.IConvertible::ToUInt16(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.i4.0
		IL_0011: ret
	} // end of method Convert::ToUInt16

	.method public hidebysig static 
		uint16 ToUInt16 (
			bool 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x608b6
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldc.i4.1
		IL_0006: ret
	} // end of method Convert::ToUInt16

	.method public hidebysig static 
		uint16 ToUInt16 (
			char 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToUInt16

	.method public hidebysig static 
		uint16 ToUInt16 (
			int8 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60b1e
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0009

		IL_0004: call void System.Convert::ThrowUInt16OverflowException()

		IL_0009: ldarg.0
		IL_000a: conv.u2
		IL_000b: ret
	} // end of method Convert::ToUInt16

	.method public hidebysig static 
		uint16 ToUInt16 (
			uint8 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToUInt16

	.method public hidebysig static 
		uint16 ToUInt16 (
			int16 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60b1e
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0009

		IL_0004: call void System.Convert::ThrowUInt16OverflowException()

		IL_0009: ldarg.0
		IL_000a: conv.u2
		IL_000b: ret
	} // end of method Convert::ToUInt16

	.method public hidebysig static 
		uint16 ToUInt16 (
			int32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60b2b
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call uint16 System.Convert::ToUInt16(uint32)
		IL_0006: ret
	} // end of method Convert::ToUInt16

	.method public hidebysig static 
		uint16 ToUInt16 (
			uint16 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToUInt16

	.method public hidebysig static 
		uint16 ToUInt16 (
			uint32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60b33
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4 65535
		IL_0006: ble.un.s IL_000d

		IL_0008: call void System.Convert::ThrowUInt16OverflowException()

		IL_000d: ldarg.0
		IL_000e: conv.u2
		IL_000f: ret
	} // end of method Convert::ToUInt16

	.method public hidebysig static 
		uint16 ToUInt16 (
			int64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60b44
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call uint16 System.Convert::ToUInt16(uint64)
		IL_0006: ret
	} // end of method Convert::ToUInt16

	.method public hidebysig static 
		uint16 ToUInt16 (
			uint64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60b4c
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4 65535
		IL_0006: conv.i8
		IL_0007: ble.un.s IL_000e

		IL_0009: call void System.Convert::ThrowUInt16OverflowException()

		IL_000e: ldarg.0
		IL_000f: conv.u2
		IL_0010: ret
	} // end of method Convert::ToUInt16

	.method public hidebysig static 
		uint16 ToUInt16 (
			float32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60b5e
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r8
		IL_0002: call uint16 System.Convert::ToUInt16(float64)
		IL_0007: ret
	} // end of method Convert::ToUInt16

	.method public hidebysig static 
		uint16 ToUInt16 (
			float64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60b67
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call int32 System.Convert::ToInt32(float64)
		IL_0006: call uint16 System.Convert::ToUInt16(int32)
		IL_000b: ret
	} // end of method Convert::ToUInt16

	.method public hidebysig static 
		uint16 ToUInt16 (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60b74
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: call valuetype System.Decimal System.Decimal::Round(valuetype System.Decimal, int32)
		IL_0007: call uint16 System.Decimal::ToUInt16(valuetype System.Decimal)
		IL_000c: ret
	} // end of method Convert::ToUInt16

	.method public hidebysig static 
		uint16 ToUInt16 (
			string 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60b82
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldarg.0
		IL_0006: call uint16 System.UInt16::Parse(string)
		IL_000b: ret
	} // end of method Convert::ToUInt16

	.method public hidebysig static 
		uint16 ToUInt16 (
			string 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60b8f
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldarg.0
		IL_0006: ldarg.1
		IL_0007: call uint16 System.UInt16::Parse(string, class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToUInt16

	.method public hidebysig static 
		uint16 ToUInt16 (
			valuetype System.DateTime 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60b9d
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.DateTime
		IL_0006: ldnull
		IL_0007: callvirt instance uint16 System.IConvertible::ToUInt16(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToUInt16

	.method public hidebysig static 
		int32 ToInt32 (
			object 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60bab
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldnull
		IL_000a: callvirt instance int32 System.IConvertible::ToInt32(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.i4.0
		IL_0011: ret
	} // end of method Convert::ToInt32

	.method public hidebysig static 
		int32 ToInt32 (
			object 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x60bbe
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldarg.1
		IL_000a: callvirt instance int32 System.IConvertible::ToInt32(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.i4.0
		IL_0011: ret
	} // end of method Convert::ToInt32

	.method public hidebysig static 
		int32 ToInt32 (
			bool 'value'
		) cil managed 
	{
		// Method begins at RVA 0x608b6
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldc.i4.1
		IL_0006: ret
	} // end of method Convert::ToInt32

	.method public hidebysig static 
		int32 ToInt32 (
			char 'value'
		) cil managed 
	{
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToInt32

	.method public hidebysig static 
		int32 ToInt32 (
			int8 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToInt32

	.method public hidebysig static 
		int32 ToInt32 (
			uint8 'value'
		) cil managed 
	{
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToInt32

	.method public hidebysig static 
		int32 ToInt32 (
			int16 'value'
		) cil managed 
	{
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToInt32

	.method public hidebysig static 
		int32 ToInt32 (
			uint16 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToInt32

	.method public hidebysig static 
		int32 ToInt32 (
			uint32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60bd1
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0009

		IL_0004: call void System.Convert::ThrowInt32OverflowException()

		IL_0009: ldarg.0
		IL_000a: ret
	} // end of method Convert::ToInt32

	.method public hidebysig static 
		int32 ToInt32 (
			int32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToInt32

	.method public hidebysig static 
		int32 ToInt32 (
			int64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60bdd
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4 -2147483648
		IL_0006: conv.i8
		IL_0007: blt.s IL_0012

		IL_0009: ldarg.0
		IL_000a: ldc.i4 2147483647
		IL_000f: conv.i8
		IL_0010: ble.s IL_0017

		IL_0012: call void System.Convert::ThrowInt32OverflowException()

		IL_0017: ldarg.0
		IL_0018: conv.i4
		IL_0019: ret
	} // end of method Convert::ToInt32

	.method public hidebysig static 
		int32 ToInt32 (
			uint64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60bf8
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4 2147483647
		IL_0006: conv.i8
		IL_0007: ble.un.s IL_000e

		IL_0009: call void System.Convert::ThrowInt32OverflowException()

		IL_000e: ldarg.0
		IL_000f: conv.i4
		IL_0010: ret
	} // end of method Convert::ToInt32

	.method public hidebysig static 
		int32 ToInt32 (
			float32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60c0a
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r8
		IL_0002: call int32 System.Convert::ToInt32(float64)
		IL_0007: ret
	} // end of method Convert::ToInt32

	.method public hidebysig static 
		int32 ToInt32 (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60c14
		// Code size 133 (0x85)
		.maxstack 2
		.locals (
			[0] int32,
			[1] float64,
			[2] int32,
			[3] float64
		)

		IL_0000: ldarg.0
		IL_0001: ldc.r8 0.0
		IL_000a: blt.un.s IL_0043

		IL_000c: ldarg.0
		IL_000d: ldc.r8 2147483647.5
		IL_0016: bge.un.s IL_007a

		IL_0018: ldarg.0
		IL_0019: conv.i4
		IL_001a: stloc.0
		IL_001b: ldarg.0
		IL_001c: ldloc.0
		IL_001d: conv.r8
		IL_001e: sub
		IL_001f: stloc.1
		IL_0020: ldloc.1
		IL_0021: ldc.r8 0.5
		IL_002a: bgt.s IL_003d

		IL_002c: ldloc.1
		IL_002d: ldc.r8 0.5
		IL_0036: bne.un.s IL_0041

		IL_0038: ldloc.0
		IL_0039: ldc.i4.1
		IL_003a: and
		IL_003b: brfalse.s IL_0041

		IL_003d: ldloc.0
		IL_003e: ldc.i4.1
		IL_003f: add
		IL_0040: stloc.0

		IL_0041: ldloc.0
		IL_0042: ret

		IL_0043: ldarg.0
		IL_0044: ldc.r8 -2147483648.5
		IL_004d: blt.un.s IL_007a

		IL_004f: ldarg.0
		IL_0050: conv.i4
		IL_0051: stloc.2
		IL_0052: ldarg.0
		IL_0053: ldloc.2
		IL_0054: conv.r8
		IL_0055: sub
		IL_0056: stloc.3
		IL_0057: ldloc.3
		IL_0058: ldc.r8 -0.5
		IL_0061: blt.s IL_0074

		IL_0063: ldloc.3
		IL_0064: ldc.r8 -0.5
		IL_006d: bne.un.s IL_0078

		IL_006f: ldloc.2
		IL_0070: ldc.i4.1
		IL_0071: and
		IL_0072: brfalse.s IL_0078

		IL_0074: ldloc.2
		IL_0075: ldc.i4.1
		IL_0076: sub
		IL_0077: stloc.2

		IL_0078: ldloc.2
		IL_0079: ret

		IL_007a: call string System.SR::get_Overflow_Int32()
		IL_007f: newobj instance void System.OverflowException::.ctor(string)
		IL_0084: throw
	} // end of method Convert::ToInt32

	.method public hidebysig static 
		int32 ToInt32 (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60ca5
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: call valuetype System.Decimal System.Decimal::Round(valuetype System.Decimal, int32)
		IL_0007: call int32 System.Decimal::ToInt32(valuetype System.Decimal)
		IL_000c: ret
	} // end of method Convert::ToInt32

	.method public hidebysig static 
		int32 ToInt32 (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60cb3
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldarg.0
		IL_0006: call int32 System.Int32::Parse(string)
		IL_000b: ret
	} // end of method Convert::ToInt32

	.method public hidebysig static 
		int32 ToInt32 (
			string 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x60cc0
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldarg.0
		IL_0006: ldarg.1
		IL_0007: call int32 System.Int32::Parse(string, class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToInt32

	.method public hidebysig static 
		int32 ToInt32 (
			valuetype System.DateTime 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60cce
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.DateTime
		IL_0006: ldnull
		IL_0007: callvirt instance int32 System.IConvertible::ToInt32(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToInt32

	.method public hidebysig static 
		uint32 ToUInt32 (
			object 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60cdc
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldnull
		IL_000a: callvirt instance uint32 System.IConvertible::ToUInt32(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.i4.0
		IL_0011: ret
	} // end of method Convert::ToUInt32

	.method public hidebysig static 
		uint32 ToUInt32 (
			object 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60cef
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldarg.1
		IL_000a: callvirt instance uint32 System.IConvertible::ToUInt32(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.i4.0
		IL_0011: ret
	} // end of method Convert::ToUInt32

	.method public hidebysig static 
		uint32 ToUInt32 (
			bool 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x608b6
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldc.i4.1
		IL_0006: ret
	} // end of method Convert::ToUInt32

	.method public hidebysig static 
		uint32 ToUInt32 (
			char 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToUInt32

	.method public hidebysig static 
		uint32 ToUInt32 (
			int8 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60d02
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0009

		IL_0004: call void System.Convert::ThrowUInt32OverflowException()

		IL_0009: ldarg.0
		IL_000a: ret
	} // end of method Convert::ToUInt32

	.method public hidebysig static 
		uint32 ToUInt32 (
			uint8 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToUInt32

	.method public hidebysig static 
		uint32 ToUInt32 (
			int16 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60d02
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0009

		IL_0004: call void System.Convert::ThrowUInt32OverflowException()

		IL_0009: ldarg.0
		IL_000a: ret
	} // end of method Convert::ToUInt32

	.method public hidebysig static 
		uint32 ToUInt32 (
			uint16 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToUInt32

	.method public hidebysig static 
		uint32 ToUInt32 (
			int32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60d02
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0009

		IL_0004: call void System.Convert::ThrowUInt32OverflowException()

		IL_0009: ldarg.0
		IL_000a: ret
	} // end of method Convert::ToUInt32

	.method public hidebysig static 
		uint32 ToUInt32 (
			uint32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToUInt32

	.method public hidebysig static 
		uint32 ToUInt32 (
			int64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60d0e
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call uint32 System.Convert::ToUInt32(uint64)
		IL_0006: ret
	} // end of method Convert::ToUInt32

	.method public hidebysig static 
		uint32 ToUInt32 (
			uint64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60d16
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.m1
		IL_0002: conv.u8
		IL_0003: ble.un.s IL_000a

		IL_0005: call void System.Convert::ThrowUInt32OverflowException()

		IL_000a: ldarg.0
		IL_000b: conv.u4
		IL_000c: ret
	} // end of method Convert::ToUInt32

	.method public hidebysig static 
		uint32 ToUInt32 (
			float32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60d24
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r8
		IL_0002: call uint32 System.Convert::ToUInt32(float64)
		IL_0007: ret
	} // end of method Convert::ToUInt32

	.method public hidebysig static 
		uint32 ToUInt32 (
			float64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60d30
		// Code size 79 (0x4f)
		.maxstack 2
		.locals (
			[0] uint32,
			[1] float64
		)

		IL_0000: ldarg.0
		IL_0001: ldc.r8 -0.5
		IL_000a: blt.un.s IL_0044

		IL_000c: ldarg.0
		IL_000d: ldc.r8 4294967295.5
		IL_0016: bge.un.s IL_0044

		IL_0018: ldarg.0
		IL_0019: conv.u4
		IL_001a: stloc.0
		IL_001b: ldarg.0
		IL_001c: ldloc.0
		IL_001d: conv.r.un
		IL_001e: conv.r8
		IL_001f: sub
		IL_0020: stloc.1
		IL_0021: ldloc.1
		IL_0022: ldc.r8 0.5
		IL_002b: bgt.s IL_003e

		IL_002d: ldloc.1
		IL_002e: ldc.r8 0.5
		IL_0037: bne.un.s IL_0042

		IL_0039: ldloc.0
		IL_003a: ldc.i4.1
		IL_003b: and
		IL_003c: brfalse.s IL_0042

		IL_003e: ldloc.0
		IL_003f: ldc.i4.1
		IL_0040: add
		IL_0041: stloc.0

		IL_0042: ldloc.0
		IL_0043: ret

		IL_0044: call string System.SR::get_Overflow_UInt32()
		IL_0049: newobj instance void System.OverflowException::.ctor(string)
		IL_004e: throw
	} // end of method Convert::ToUInt32

	.method public hidebysig static 
		uint32 ToUInt32 (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60d8b
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: call valuetype System.Decimal System.Decimal::Round(valuetype System.Decimal, int32)
		IL_0007: call uint32 System.Decimal::ToUInt32(valuetype System.Decimal)
		IL_000c: ret
	} // end of method Convert::ToUInt32

	.method public hidebysig static 
		uint32 ToUInt32 (
			string 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60d99
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldarg.0
		IL_0006: call uint32 System.UInt32::Parse(string)
		IL_000b: ret
	} // end of method Convert::ToUInt32

	.method public hidebysig static 
		uint32 ToUInt32 (
			string 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60da6
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldarg.0
		IL_0006: ldarg.1
		IL_0007: call uint32 System.UInt32::Parse(string, class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToUInt32

	.method public hidebysig static 
		uint32 ToUInt32 (
			valuetype System.DateTime 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60db4
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.DateTime
		IL_0006: ldnull
		IL_0007: callvirt instance uint32 System.IConvertible::ToUInt32(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToUInt32

	.method public hidebysig static 
		int64 ToInt64 (
			object 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60dc2
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldnull
		IL_000a: callvirt instance int64 System.IConvertible::ToInt64(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.i4.0
		IL_0011: conv.i8
		IL_0012: ret
	} // end of method Convert::ToInt64

	.method public hidebysig static 
		int64 ToInt64 (
			object 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x60dd6
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldarg.1
		IL_000a: callvirt instance int64 System.IConvertible::ToInt64(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.i4.0
		IL_0011: conv.i8
		IL_0012: ret
	} // end of method Convert::ToInt64

	.method public hidebysig static 
		int64 ToInt64 (
			bool 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60dea
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0006

		IL_0003: ldc.i4.0
		IL_0004: br.s IL_0007

		IL_0006: ldc.i4.1

		IL_0007: conv.i8
		IL_0008: ret
	} // end of method Convert::ToInt64

	.method public hidebysig static 
		int64 ToInt64 (
			char 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60df4
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.u8
		IL_0002: ret
	} // end of method Convert::ToInt64

	.method public hidebysig static 
		int64 ToInt64 (
			int8 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60df8
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.i8
		IL_0002: ret
	} // end of method Convert::ToInt64

	.method public hidebysig static 
		int64 ToInt64 (
			uint8 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60df4
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.u8
		IL_0002: ret
	} // end of method Convert::ToInt64

	.method public hidebysig static 
		int64 ToInt64 (
			int16 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60df8
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.i8
		IL_0002: ret
	} // end of method Convert::ToInt64

	.method public hidebysig static 
		int64 ToInt64 (
			uint16 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60df4
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.u8
		IL_0002: ret
	} // end of method Convert::ToInt64

	.method public hidebysig static 
		int64 ToInt64 (
			int32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60df8
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.i8
		IL_0002: ret
	} // end of method Convert::ToInt64

	.method public hidebysig static 
		int64 ToInt64 (
			uint32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60df4
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.u8
		IL_0002: ret
	} // end of method Convert::ToInt64

	.method public hidebysig static 
		int64 ToInt64 (
			uint64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60dfc
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: conv.i8
		IL_0003: bge.s IL_000a

		IL_0005: call void System.Convert::ThrowInt64OverflowException()

		IL_000a: ldarg.0
		IL_000b: ret
	} // end of method Convert::ToInt64

	.method public hidebysig static 
		int64 ToInt64 (
			int64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToInt64

	.method public hidebysig static 
		int64 ToInt64 (
			float32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60e09
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r8
		IL_0002: call int64 System.Convert::ToInt64(float64)
		IL_0007: ret
	} // end of method Convert::ToInt64

	.method public hidebysig static 
		int64 ToInt64 (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60e12
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call float64 System.Math::Round(float64)
		IL_0006: conv.ovf.i8
		IL_0007: ret
	} // end of method Convert::ToInt64

	.method public hidebysig static 
		int64 ToInt64 (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60e1b
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: call valuetype System.Decimal System.Decimal::Round(valuetype System.Decimal, int32)
		IL_0007: call int64 System.Decimal::ToInt64(valuetype System.Decimal)
		IL_000c: ret
	} // end of method Convert::ToInt64

	.method public hidebysig static 
		int64 ToInt64 (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60e29
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0006

		IL_0003: ldc.i4.0
		IL_0004: conv.i8
		IL_0005: ret

		IL_0006: ldarg.0
		IL_0007: call int64 System.Int64::Parse(string)
		IL_000c: ret
	} // end of method Convert::ToInt64

	.method public hidebysig static 
		int64 ToInt64 (
			string 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x60e37
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0006

		IL_0003: ldc.i4.0
		IL_0004: conv.i8
		IL_0005: ret

		IL_0006: ldarg.0
		IL_0007: ldarg.1
		IL_0008: call int64 System.Int64::Parse(string, class System.IFormatProvider)
		IL_000d: ret
	} // end of method Convert::ToInt64

	.method public hidebysig static 
		int64 ToInt64 (
			valuetype System.DateTime 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60e46
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.DateTime
		IL_0006: ldnull
		IL_0007: callvirt instance int64 System.IConvertible::ToInt64(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToInt64

	.method public hidebysig static 
		uint64 ToUInt64 (
			object 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60e54
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldnull
		IL_000a: callvirt instance uint64 System.IConvertible::ToUInt64(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.i4.0
		IL_0011: conv.i8
		IL_0012: ret
	} // end of method Convert::ToUInt64

	.method public hidebysig static 
		uint64 ToUInt64 (
			object 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60e68
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldarg.1
		IL_000a: callvirt instance uint64 System.IConvertible::ToUInt64(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.i4.0
		IL_0011: conv.i8
		IL_0012: ret
	} // end of method Convert::ToUInt64

	.method public hidebysig static 
		uint64 ToUInt64 (
			bool 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60e7c
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0006

		IL_0003: ldc.i4.0
		IL_0004: conv.i8
		IL_0005: ret

		IL_0006: ldc.i4.1
		IL_0007: conv.i8
		IL_0008: ret
	} // end of method Convert::ToUInt64

	.method public hidebysig static 
		uint64 ToUInt64 (
			char 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60df4
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.u8
		IL_0002: ret
	} // end of method Convert::ToUInt64

	.method public hidebysig static 
		uint64 ToUInt64 (
			int8 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60e86
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0009

		IL_0004: call void System.Convert::ThrowUInt64OverflowException()

		IL_0009: ldarg.0
		IL_000a: conv.i8
		IL_000b: ret
	} // end of method Convert::ToUInt64

	.method public hidebysig static 
		uint64 ToUInt64 (
			uint8 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60df4
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.u8
		IL_0002: ret
	} // end of method Convert::ToUInt64

	.method public hidebysig static 
		uint64 ToUInt64 (
			int16 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60e86
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0009

		IL_0004: call void System.Convert::ThrowUInt64OverflowException()

		IL_0009: ldarg.0
		IL_000a: conv.i8
		IL_000b: ret
	} // end of method Convert::ToUInt64

	.method public hidebysig static 
		uint64 ToUInt64 (
			uint16 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60df4
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.u8
		IL_0002: ret
	} // end of method Convert::ToUInt64

	.method public hidebysig static 
		uint64 ToUInt64 (
			int32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60e86
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0009

		IL_0004: call void System.Convert::ThrowUInt64OverflowException()

		IL_0009: ldarg.0
		IL_000a: conv.i8
		IL_000b: ret
	} // end of method Convert::ToUInt64

	.method public hidebysig static 
		uint64 ToUInt64 (
			uint32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60df4
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.u8
		IL_0002: ret
	} // end of method Convert::ToUInt64

	.method public hidebysig static 
		uint64 ToUInt64 (
			int64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60e93
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: conv.i8
		IL_0003: bge.s IL_000a

		IL_0005: call void System.Convert::ThrowUInt64OverflowException()

		IL_000a: ldarg.0
		IL_000b: ret
	} // end of method Convert::ToUInt64

	.method public hidebysig static 
		uint64 ToUInt64 (
			uint64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToUInt64

	.method public hidebysig static 
		uint64 ToUInt64 (
			float32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60ea0
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r8
		IL_0002: call uint64 System.Convert::ToUInt64(float64)
		IL_0007: ret
	} // end of method Convert::ToUInt64

	.method public hidebysig static 
		uint64 ToUInt64 (
			float64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60ea9
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call float64 System.Math::Round(float64)
		IL_0006: conv.ovf.u8
		IL_0007: ret
	} // end of method Convert::ToUInt64

	.method public hidebysig static 
		uint64 ToUInt64 (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60eb2
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: call valuetype System.Decimal System.Decimal::Round(valuetype System.Decimal, int32)
		IL_0007: call uint64 System.Decimal::ToUInt64(valuetype System.Decimal)
		IL_000c: ret
	} // end of method Convert::ToUInt64

	.method public hidebysig static 
		uint64 ToUInt64 (
			string 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60ec0
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0006

		IL_0003: ldc.i4.0
		IL_0004: conv.i8
		IL_0005: ret

		IL_0006: ldarg.0
		IL_0007: call uint64 System.UInt64::Parse(string)
		IL_000c: ret
	} // end of method Convert::ToUInt64

	.method public hidebysig static 
		uint64 ToUInt64 (
			string 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60ece
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0006

		IL_0003: ldc.i4.0
		IL_0004: conv.i8
		IL_0005: ret

		IL_0006: ldarg.0
		IL_0007: ldarg.1
		IL_0008: call uint64 System.UInt64::Parse(string, class System.IFormatProvider)
		IL_000d: ret
	} // end of method Convert::ToUInt64

	.method public hidebysig static 
		uint64 ToUInt64 (
			valuetype System.DateTime 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60edd
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.DateTime
		IL_0006: ldnull
		IL_0007: callvirt instance uint64 System.IConvertible::ToUInt64(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToUInt64

	.method public hidebysig static 
		float32 ToSingle (
			object 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60eeb
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldnull
		IL_000a: callvirt instance float32 System.IConvertible::ToSingle(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.r4 0.0
		IL_0015: ret
	} // end of method Convert::ToSingle

	.method public hidebysig static 
		float32 ToSingle (
			object 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x60f02
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldarg.1
		IL_000a: callvirt instance float32 System.IConvertible::ToSingle(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.r4 0.0
		IL_0015: ret
	} // end of method Convert::ToSingle

	.method public hidebysig static 
		float32 ToSingle (
			int8 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60f19
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r4
		IL_0002: ret
	} // end of method Convert::ToSingle

	.method public hidebysig static 
		float32 ToSingle (
			uint8 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60f19
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r4
		IL_0002: ret
	} // end of method Convert::ToSingle

	.method public hidebysig static 
		float32 ToSingle (
			char 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60f1d
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.Char
		IL_0006: ldnull
		IL_0007: callvirt instance float32 System.IConvertible::ToSingle(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToSingle

	.method public hidebysig static 
		float32 ToSingle (
			int16 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60f19
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r4
		IL_0002: ret
	} // end of method Convert::ToSingle

	.method public hidebysig static 
		float32 ToSingle (
			uint16 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60f19
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r4
		IL_0002: ret
	} // end of method Convert::ToSingle

	.method public hidebysig static 
		float32 ToSingle (
			int32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60f19
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r4
		IL_0002: ret
	} // end of method Convert::ToSingle

	.method public hidebysig static 
		float32 ToSingle (
			uint32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60f2b
		// Code size 4 (0x4)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r.un
		IL_0002: conv.r4
		IL_0003: ret
	} // end of method Convert::ToSingle

	.method public hidebysig static 
		float32 ToSingle (
			int64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60f19
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r4
		IL_0002: ret
	} // end of method Convert::ToSingle

	.method public hidebysig static 
		float32 ToSingle (
			uint64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60f2b
		// Code size 4 (0x4)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r.un
		IL_0002: conv.r4
		IL_0003: ret
	} // end of method Convert::ToSingle

	.method public hidebysig static 
		float32 ToSingle (
			float32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToSingle

	.method public hidebysig static 
		float32 ToSingle (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60f19
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r4
		IL_0002: ret
	} // end of method Convert::ToSingle

	.method public hidebysig static 
		float32 ToSingle (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60f30
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call float32 System.Decimal::op_Explicit(valuetype System.Decimal)
		IL_0006: conv.r4
		IL_0007: ret
	} // end of method Convert::ToSingle

	.method public hidebysig static 
		float32 ToSingle (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60f39
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.r4 0.0
		IL_0008: ret

		IL_0009: ldarg.0
		IL_000a: call float32 System.Single::Parse(string)
		IL_000f: ret
	} // end of method Convert::ToSingle

	.method public hidebysig static 
		float32 ToSingle (
			string 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x60f4a
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.r4 0.0
		IL_0008: ret

		IL_0009: ldarg.0
		IL_000a: ldarg.1
		IL_000b: call float32 System.Single::Parse(string, class System.IFormatProvider)
		IL_0010: ret
	} // end of method Convert::ToSingle

	.method public hidebysig static 
		float32 ToSingle (
			bool 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60f5c
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0006

		IL_0003: ldc.i4.0
		IL_0004: br.s IL_0007

		IL_0006: ldc.i4.1

		IL_0007: conv.r4
		IL_0008: ret
	} // end of method Convert::ToSingle

	.method public hidebysig static 
		float32 ToSingle (
			valuetype System.DateTime 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60f66
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.DateTime
		IL_0006: ldnull
		IL_0007: callvirt instance float32 System.IConvertible::ToSingle(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToSingle

	.method public hidebysig static 
		float64 ToDouble (
			object 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60f74
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldnull
		IL_000a: callvirt instance float64 System.IConvertible::ToDouble(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.r8 0.0
		IL_0019: ret
	} // end of method Convert::ToDouble

	.method public hidebysig static 
		float64 ToDouble (
			object 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x60f8f
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldarg.1
		IL_000a: callvirt instance float64 System.IConvertible::ToDouble(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldc.r8 0.0
		IL_0019: ret
	} // end of method Convert::ToDouble

	.method public hidebysig static 
		float64 ToDouble (
			int8 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60faa
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r8
		IL_0002: ret
	} // end of method Convert::ToDouble

	.method public hidebysig static 
		float64 ToDouble (
			uint8 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60faa
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r8
		IL_0002: ret
	} // end of method Convert::ToDouble

	.method public hidebysig static 
		float64 ToDouble (
			int16 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60faa
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r8
		IL_0002: ret
	} // end of method Convert::ToDouble

	.method public hidebysig static 
		float64 ToDouble (
			char 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60fae
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.Char
		IL_0006: ldnull
		IL_0007: callvirt instance float64 System.IConvertible::ToDouble(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToDouble

	.method public hidebysig static 
		float64 ToDouble (
			uint16 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60faa
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r8
		IL_0002: ret
	} // end of method Convert::ToDouble

	.method public hidebysig static 
		float64 ToDouble (
			int32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60faa
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r8
		IL_0002: ret
	} // end of method Convert::ToDouble

	.method public hidebysig static 
		float64 ToDouble (
			uint32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60fbc
		// Code size 4 (0x4)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r.un
		IL_0002: conv.r8
		IL_0003: ret
	} // end of method Convert::ToDouble

	.method public hidebysig static 
		float64 ToDouble (
			int64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60faa
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r8
		IL_0002: ret
	} // end of method Convert::ToDouble

	.method public hidebysig static 
		float64 ToDouble (
			uint64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x60fbc
		// Code size 4 (0x4)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r.un
		IL_0002: conv.r8
		IL_0003: ret
	} // end of method Convert::ToDouble

	.method public hidebysig static 
		float64 ToDouble (
			float32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60faa
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: conv.r8
		IL_0002: ret
	} // end of method Convert::ToDouble

	.method public hidebysig static 
		float64 ToDouble (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToDouble

	.method public hidebysig static 
		float64 ToDouble (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60fc1
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call float64 System.Decimal::op_Explicit(valuetype System.Decimal)
		IL_0006: conv.r8
		IL_0007: ret
	} // end of method Convert::ToDouble

	.method public hidebysig static 
		float64 ToDouble (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60fca
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000d

		IL_0003: ldc.r8 0.0
		IL_000c: ret

		IL_000d: ldarg.0
		IL_000e: call float64 System.Double::Parse(string)
		IL_0013: ret
	} // end of method Convert::ToDouble

	.method public hidebysig static 
		float64 ToDouble (
			string 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x60fdf
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000d

		IL_0003: ldc.r8 0.0
		IL_000c: ret

		IL_000d: ldarg.0
		IL_000e: ldarg.1
		IL_000f: call float64 System.Double::Parse(string, class System.IFormatProvider)
		IL_0014: ret
	} // end of method Convert::ToDouble

	.method public hidebysig static 
		float64 ToDouble (
			bool 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60ff5
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0006

		IL_0003: ldc.i4.0
		IL_0004: br.s IL_0007

		IL_0006: ldc.i4.1

		IL_0007: conv.r8
		IL_0008: ret
	} // end of method Convert::ToDouble

	.method public hidebysig static 
		float64 ToDouble (
			valuetype System.DateTime 'value'
		) cil managed 
	{
		// Method begins at RVA 0x60fff
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.DateTime
		IL_0006: ldnull
		IL_0007: callvirt instance float64 System.IConvertible::ToDouble(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToDouble

	.method public hidebysig static 
		valuetype System.Decimal ToDecimal (
			object 'value'
		) cil managed 
	{
		// Method begins at RVA 0x6100d
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldnull
		IL_000a: callvirt instance valuetype System.Decimal System.IConvertible::ToDecimal(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldsfld valuetype System.Decimal System.Decimal::Zero
		IL_0015: ret
	} // end of method Convert::ToDecimal

	.method public hidebysig static 
		valuetype System.Decimal ToDecimal (
			object 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x61024
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldarg.1
		IL_000a: callvirt instance valuetype System.Decimal System.IConvertible::ToDecimal(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldsfld valuetype System.Decimal System.Decimal::Zero
		IL_0015: ret
	} // end of method Convert::ToDecimal

	.method public hidebysig static 
		valuetype System.Decimal ToDecimal (
			int8 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x6103b
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call valuetype System.Decimal System.Decimal::op_Implicit(int8)
		IL_0006: ret
	} // end of method Convert::ToDecimal

	.method public hidebysig static 
		valuetype System.Decimal ToDecimal (
			uint8 'value'
		) cil managed 
	{
		// Method begins at RVA 0x61043
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call valuetype System.Decimal System.Decimal::op_Implicit(uint8)
		IL_0006: ret
	} // end of method Convert::ToDecimal

	.method public hidebysig static 
		valuetype System.Decimal ToDecimal (
			char 'value'
		) cil managed 
	{
		// Method begins at RVA 0x6104b
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.Char
		IL_0006: ldnull
		IL_0007: callvirt instance valuetype System.Decimal System.IConvertible::ToDecimal(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToDecimal

	.method public hidebysig static 
		valuetype System.Decimal ToDecimal (
			int16 'value'
		) cil managed 
	{
		// Method begins at RVA 0x61059
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call valuetype System.Decimal System.Decimal::op_Implicit(int16)
		IL_0006: ret
	} // end of method Convert::ToDecimal

	.method public hidebysig static 
		valuetype System.Decimal ToDecimal (
			uint16 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x61061
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call valuetype System.Decimal System.Decimal::op_Implicit(uint16)
		IL_0006: ret
	} // end of method Convert::ToDecimal

	.method public hidebysig static 
		valuetype System.Decimal ToDecimal (
			int32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x61069
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call valuetype System.Decimal System.Decimal::op_Implicit(int32)
		IL_0006: ret
	} // end of method Convert::ToDecimal

	.method public hidebysig static 
		valuetype System.Decimal ToDecimal (
			uint32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x61071
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call valuetype System.Decimal System.Decimal::op_Implicit(uint32)
		IL_0006: ret
	} // end of method Convert::ToDecimal

	.method public hidebysig static 
		valuetype System.Decimal ToDecimal (
			int64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x61079
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call valuetype System.Decimal System.Decimal::op_Implicit(int64)
		IL_0006: ret
	} // end of method Convert::ToDecimal

	.method public hidebysig static 
		valuetype System.Decimal ToDecimal (
			uint64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x61081
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call valuetype System.Decimal System.Decimal::op_Implicit(uint64)
		IL_0006: ret
	} // end of method Convert::ToDecimal

	.method public hidebysig static 
		valuetype System.Decimal ToDecimal (
			float32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x61089
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call valuetype System.Decimal System.Decimal::op_Explicit(float32)
		IL_0006: ret
	} // end of method Convert::ToDecimal

	.method public hidebysig static 
		valuetype System.Decimal ToDecimal (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x61091
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call valuetype System.Decimal System.Decimal::op_Explicit(float64)
		IL_0006: ret
	} // end of method Convert::ToDecimal

	.method public hidebysig static 
		valuetype System.Decimal ToDecimal (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x61099
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldsfld valuetype System.Decimal System.Decimal::Zero
		IL_0008: ret

		IL_0009: ldarg.0
		IL_000a: call valuetype System.Decimal System.Decimal::Parse(string)
		IL_000f: ret
	} // end of method Convert::ToDecimal

	.method public hidebysig static 
		valuetype System.Decimal ToDecimal (
			string 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x610aa
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldsfld valuetype System.Decimal System.Decimal::Zero
		IL_0008: ret

		IL_0009: ldarg.0
		IL_000a: ldarg.1
		IL_000b: call valuetype System.Decimal System.Decimal::Parse(string, class System.IFormatProvider)
		IL_0010: ret
	} // end of method Convert::ToDecimal

	.method public hidebysig static 
		valuetype System.Decimal ToDecimal (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToDecimal

	.method public hidebysig static 
		valuetype System.Decimal ToDecimal (
			bool 'value'
		) cil managed 
	{
		// Method begins at RVA 0x610bc
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0006

		IL_0003: ldc.i4.0
		IL_0004: br.s IL_0007

		IL_0006: ldc.i4.1

		IL_0007: call valuetype System.Decimal System.Decimal::op_Implicit(int32)
		IL_000c: ret
	} // end of method Convert::ToDecimal

	.method public hidebysig static 
		valuetype System.Decimal ToDecimal (
			valuetype System.DateTime 'value'
		) cil managed 
	{
		// Method begins at RVA 0x610ca
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.DateTime
		IL_0006: ldnull
		IL_0007: callvirt instance valuetype System.Decimal System.IConvertible::ToDecimal(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToDecimal

	.method public hidebysig static 
		valuetype System.DateTime ToDateTime (
			valuetype System.DateTime 'value'
		) cil managed 
	{
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToDateTime

	.method public hidebysig static 
		valuetype System.DateTime ToDateTime (
			object 'value'
		) cil managed 
	{
		// Method begins at RVA 0x610d8
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldnull
		IL_000a: callvirt instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldsfld valuetype System.DateTime System.DateTime::MinValue
		IL_0015: ret
	} // end of method Convert::ToDateTime

	.method public hidebysig static 
		valuetype System.DateTime ToDateTime (
			object 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x610ef
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: castclass System.IConvertible
		IL_0009: ldarg.1
		IL_000a: callvirt instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		IL_000f: ret

		IL_0010: ldsfld valuetype System.DateTime System.DateTime::MinValue
		IL_0015: ret
	} // end of method Convert::ToDateTime

	.method public hidebysig static 
		valuetype System.DateTime ToDateTime (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x61106
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000b

		IL_0003: ldc.i4.0
		IL_0004: conv.i8
		IL_0005: newobj instance void System.DateTime::.ctor(int64)
		IL_000a: ret

		IL_000b: ldarg.0
		IL_000c: call valuetype System.DateTime System.DateTime::Parse(string)
		IL_0011: ret
	} // end of method Convert::ToDateTime

	.method public hidebysig static 
		valuetype System.DateTime ToDateTime (
			string 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x61119
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000b

		IL_0003: ldc.i4.0
		IL_0004: conv.i8
		IL_0005: newobj instance void System.DateTime::.ctor(int64)
		IL_000a: ret

		IL_000b: ldarg.0
		IL_000c: ldarg.1
		IL_000d: call valuetype System.DateTime System.DateTime::Parse(string, class System.IFormatProvider)
		IL_0012: ret
	} // end of method Convert::ToDateTime

	.method public hidebysig static 
		valuetype System.DateTime ToDateTime (
			int8 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x6112d
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.SByte
		IL_0006: ldnull
		IL_0007: callvirt instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToDateTime

	.method public hidebysig static 
		valuetype System.DateTime ToDateTime (
			uint8 'value'
		) cil managed 
	{
		// Method begins at RVA 0x6113b
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.Byte
		IL_0006: ldnull
		IL_0007: callvirt instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToDateTime

	.method public hidebysig static 
		valuetype System.DateTime ToDateTime (
			int16 'value'
		) cil managed 
	{
		// Method begins at RVA 0x61149
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.Int16
		IL_0006: ldnull
		IL_0007: callvirt instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToDateTime

	.method public hidebysig static 
		valuetype System.DateTime ToDateTime (
			uint16 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x61157
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.UInt16
		IL_0006: ldnull
		IL_0007: callvirt instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToDateTime

	.method public hidebysig static 
		valuetype System.DateTime ToDateTime (
			int32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x61165
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.Int32
		IL_0006: ldnull
		IL_0007: callvirt instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToDateTime

	.method public hidebysig static 
		valuetype System.DateTime ToDateTime (
			uint32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x61173
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.UInt32
		IL_0006: ldnull
		IL_0007: callvirt instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToDateTime

	.method public hidebysig static 
		valuetype System.DateTime ToDateTime (
			int64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x61181
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.Int64
		IL_0006: ldnull
		IL_0007: callvirt instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToDateTime

	.method public hidebysig static 
		valuetype System.DateTime ToDateTime (
			uint64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x6118f
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.UInt64
		IL_0006: ldnull
		IL_0007: callvirt instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToDateTime

	.method public hidebysig static 
		valuetype System.DateTime ToDateTime (
			bool 'value'
		) cil managed 
	{
		// Method begins at RVA 0x6119d
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.Boolean
		IL_0006: ldnull
		IL_0007: callvirt instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToDateTime

	.method public hidebysig static 
		valuetype System.DateTime ToDateTime (
			char 'value'
		) cil managed 
	{
		// Method begins at RVA 0x611ab
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.Char
		IL_0006: ldnull
		IL_0007: callvirt instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToDateTime

	.method public hidebysig static 
		valuetype System.DateTime ToDateTime (
			float32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x611b9
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.Single
		IL_0006: ldnull
		IL_0007: callvirt instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToDateTime

	.method public hidebysig static 
		valuetype System.DateTime ToDateTime (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x611c7
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.Double
		IL_0006: ldnull
		IL_0007: callvirt instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToDateTime

	.method public hidebysig static 
		valuetype System.DateTime ToDateTime (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0x611d5
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: box System.Decimal
		IL_0006: ldnull
		IL_0007: callvirt instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		IL_000c: ret
	} // end of method Convert::ToDateTime

	.method public hidebysig static 
		string ToString (
			object 'value'
		) cil managed 
	{
		// Method begins at RVA 0x611e3
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: call string System.Convert::ToString(object, class System.IFormatProvider)
		IL_0007: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			object 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0x611ec
		// Code size 53 (0x35)
		.maxstack 3
		.locals (
			[0] class System.IConvertible,
			[1] class System.IFormattable
		)

		IL_0000: ldarg.0
		IL_0001: isinst System.IConvertible
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: brfalse.s IL_0012

		IL_000a: ldloc.0
		IL_000b: ldarg.1
		IL_000c: callvirt instance string System.IConvertible::ToString(class System.IFormatProvider)
		IL_0011: ret

		IL_0012: ldarg.0
		IL_0013: isinst System.IFormattable
		IL_0018: stloc.1
		IL_0019: ldloc.1
		IL_001a: brfalse.s IL_0025

		IL_001c: ldloc.1
		IL_001d: ldnull
		IL_001e: ldarg.1
		IL_001f: callvirt instance string System.IFormattable::ToString(string, class System.IFormatProvider)
		IL_0024: ret

		IL_0025: ldarg.0
		IL_0026: brfalse.s IL_002f

		IL_0028: ldarg.0
		IL_0029: callvirt instance string System.Object::ToString()
		IL_002e: ret

		IL_002f: ldsfld string System.String::Empty
		IL_0034: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			bool 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x6122d
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance string System.Boolean::ToString()
		IL_0007: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			bool 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x6122d
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance string System.Boolean::ToString()
		IL_0007: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			char 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x61236
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call string System.Char::ToString(char)
		IL_0006: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			char 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x6123e
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance string System.Char::ToString()
		IL_0007: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			int8 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x61247
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance string System.SByte::ToString()
		IL_0007: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			int8 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x61250
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: ldarg.1
		IL_0003: call instance string System.SByte::ToString(class System.IFormatProvider)
		IL_0008: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			uint8 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x6125a
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance string System.Byte::ToString()
		IL_0007: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			uint8 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x61263
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: ldarg.1
		IL_0003: call instance string System.Byte::ToString(class System.IFormatProvider)
		IL_0008: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			int16 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x6126d
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance string System.Int16::ToString()
		IL_0007: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			int16 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x61276
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: ldarg.1
		IL_0003: call instance string System.Int16::ToString(class System.IFormatProvider)
		IL_0008: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			uint16 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x61280
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance string System.UInt16::ToString()
		IL_0007: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			uint16 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x61289
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: ldarg.1
		IL_0003: call instance string System.UInt16::ToString(class System.IFormatProvider)
		IL_0008: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			int32 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x61293
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance string System.Int32::ToString()
		IL_0007: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			int32 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x6129c
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: ldarg.1
		IL_0003: call instance string System.Int32::ToString(class System.IFormatProvider)
		IL_0008: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			uint32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x612a6
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance string System.UInt32::ToString()
		IL_0007: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			uint32 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x612af
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: ldarg.1
		IL_0003: call instance string System.UInt32::ToString(class System.IFormatProvider)
		IL_0008: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			int64 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x612b9
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance string System.Int64::ToString()
		IL_0007: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			int64 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x612c2
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: ldarg.1
		IL_0003: call instance string System.Int64::ToString(class System.IFormatProvider)
		IL_0008: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			uint64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x612cc
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance string System.UInt64::ToString()
		IL_0007: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			uint64 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x612d5
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: ldarg.1
		IL_0003: call instance string System.UInt64::ToString(class System.IFormatProvider)
		IL_0008: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			float32 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x612df
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance string System.Single::ToString()
		IL_0007: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			float32 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x612e8
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: ldarg.1
		IL_0003: call instance string System.Single::ToString(class System.IFormatProvider)
		IL_0008: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			float64 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x612f2
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance string System.Double::ToString()
		IL_0007: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			float64 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x612fb
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: ldarg.1
		IL_0003: call instance string System.Double::ToString(class System.IFormatProvider)
		IL_0008: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x61305
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance string System.Decimal::ToString()
		IL_0007: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			valuetype System.Decimal 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x6130e
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: ldarg.1
		IL_0003: call instance string System.Decimal::ToString(class System.IFormatProvider)
		IL_0008: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			valuetype System.DateTime 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x61318
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance string System.DateTime::ToString()
		IL_0007: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			valuetype System.DateTime 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x61321
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: ldarg.1
		IL_0003: call instance string System.DateTime::ToString(class System.IFormatProvider)
		IL_0008: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			string 'value'
		) cil managed 
	{
		.param [0]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullIfNotNullAttribute::.ctor(string) = (
				01 00 05 76 61 6c 75 65 00 00
			)
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			string 'value',
			class System.IFormatProvider provider
		) cil managed 
	{
		.param [0]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullIfNotNullAttribute::.ctor(string) = (
				01 00 05 76 61 6c 75 65 00 00
			)
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		uint8 ToByte (
			string 'value',
			int32 fromBase
		) cil managed 
	{
		// Method begins at RVA 0x6132c
		// Code size 68 (0x44)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.2
		IL_0002: beq.s IL_001d

		IL_0004: ldarg.1
		IL_0005: ldc.i4.8
		IL_0006: beq.s IL_001d

		IL_0008: ldarg.1
		IL_0009: ldc.i4.s 10
		IL_000b: beq.s IL_001d

		IL_000d: ldarg.1
		IL_000e: ldc.i4.s 16
		IL_0010: beq.s IL_001d

		IL_0012: call string System.SR::get_Arg_InvalidBase()
		IL_0017: newobj instance void System.ArgumentException::.ctor(string)
		IL_001c: throw

		IL_001d: ldarg.0
		IL_001e: brtrue.s IL_0022

		IL_0020: ldc.i4.0
		IL_0021: ret

		IL_0022: ldarg.0
		IL_0023: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string)
		IL_0028: ldarg.1
		IL_0029: ldc.i4 4608
		IL_002e: call int32 System.ParseNumbers::StringToInt(valuetype System.ReadOnlySpan`1<char>, int32, int32)
		IL_0033: stloc.0
		IL_0034: ldloc.0
		IL_0035: ldc.i4 255
		IL_003a: ble.un.s IL_0041

		IL_003c: call void System.Convert::ThrowByteOverflowException()

		IL_0041: ldloc.0
		IL_0042: conv.u1
		IL_0043: ret
	} // end of method Convert::ToByte

	.method public hidebysig static 
		int8 ToSByte (
			string 'value',
			int32 fromBase
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x6137c
		// Code size 86 (0x56)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.2
		IL_0002: beq.s IL_001d

		IL_0004: ldarg.1
		IL_0005: ldc.i4.8
		IL_0006: beq.s IL_001d

		IL_0008: ldarg.1
		IL_0009: ldc.i4.s 10
		IL_000b: beq.s IL_001d

		IL_000d: ldarg.1
		IL_000e: ldc.i4.s 16
		IL_0010: beq.s IL_001d

		IL_0012: call string System.SR::get_Arg_InvalidBase()
		IL_0017: newobj instance void System.ArgumentException::.ctor(string)
		IL_001c: throw

		IL_001d: ldarg.0
		IL_001e: brtrue.s IL_0022

		IL_0020: ldc.i4.0
		IL_0021: ret

		IL_0022: ldarg.0
		IL_0023: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string)
		IL_0028: ldarg.1
		IL_0029: ldc.i4 5120
		IL_002e: call int32 System.ParseNumbers::StringToInt(valuetype System.ReadOnlySpan`1<char>, int32, int32)
		IL_0033: stloc.0
		IL_0034: ldarg.1
		IL_0035: ldc.i4.s 10
		IL_0037: beq.s IL_0044

		IL_0039: ldloc.0
		IL_003a: ldc.i4 255
		IL_003f: bgt.s IL_0044

		IL_0041: ldloc.0
		IL_0042: conv.i1
		IL_0043: ret

		IL_0044: ldloc.0
		IL_0045: ldc.i4.s -128
		IL_0047: blt.s IL_004e

		IL_0049: ldloc.0
		IL_004a: ldc.i4.s 127
		IL_004c: ble.s IL_0053

		IL_004e: call void System.Convert::ThrowSByteOverflowException()

		IL_0053: ldloc.0
		IL_0054: conv.i1
		IL_0055: ret
	} // end of method Convert::ToSByte

	.method public hidebysig static 
		int16 ToInt16 (
			string 'value',
			int32 fromBase
		) cil managed 
	{
		// Method begins at RVA 0x613e0
		// Code size 92 (0x5c)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.2
		IL_0002: beq.s IL_001d

		IL_0004: ldarg.1
		IL_0005: ldc.i4.8
		IL_0006: beq.s IL_001d

		IL_0008: ldarg.1
		IL_0009: ldc.i4.s 10
		IL_000b: beq.s IL_001d

		IL_000d: ldarg.1
		IL_000e: ldc.i4.s 16
		IL_0010: beq.s IL_001d

		IL_0012: call string System.SR::get_Arg_InvalidBase()
		IL_0017: newobj instance void System.ArgumentException::.ctor(string)
		IL_001c: throw

		IL_001d: ldarg.0
		IL_001e: brtrue.s IL_0022

		IL_0020: ldc.i4.0
		IL_0021: ret

		IL_0022: ldarg.0
		IL_0023: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string)
		IL_0028: ldarg.1
		IL_0029: ldc.i4 6144
		IL_002e: call int32 System.ParseNumbers::StringToInt(valuetype System.ReadOnlySpan`1<char>, int32, int32)
		IL_0033: stloc.0
		IL_0034: ldarg.1
		IL_0035: ldc.i4.s 10
		IL_0037: beq.s IL_0044

		IL_0039: ldloc.0
		IL_003a: ldc.i4 65535
		IL_003f: bgt.s IL_0044

		IL_0041: ldloc.0
		IL_0042: conv.i2
		IL_0043: ret

		IL_0044: ldloc.0
		IL_0045: ldc.i4 -32768
		IL_004a: blt.s IL_0054

		IL_004c: ldloc.0
		IL_004d: ldc.i4 32767
		IL_0052: ble.s IL_0059

		IL_0054: call void System.Convert::ThrowInt16OverflowException()

		IL_0059: ldloc.0
		IL_005a: conv.i2
		IL_005b: ret
	} // end of method Convert::ToInt16

	.method public hidebysig static 
		uint16 ToUInt16 (
			string 'value',
			int32 fromBase
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x61448
		// Code size 68 (0x44)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.2
		IL_0002: beq.s IL_001d

		IL_0004: ldarg.1
		IL_0005: ldc.i4.8
		IL_0006: beq.s IL_001d

		IL_0008: ldarg.1
		IL_0009: ldc.i4.s 10
		IL_000b: beq.s IL_001d

		IL_000d: ldarg.1
		IL_000e: ldc.i4.s 16
		IL_0010: beq.s IL_001d

		IL_0012: call string System.SR::get_Arg_InvalidBase()
		IL_0017: newobj instance void System.ArgumentException::.ctor(string)
		IL_001c: throw

		IL_001d: ldarg.0
		IL_001e: brtrue.s IL_0022

		IL_0020: ldc.i4.0
		IL_0021: ret

		IL_0022: ldarg.0
		IL_0023: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string)
		IL_0028: ldarg.1
		IL_0029: ldc.i4 4608
		IL_002e: call int32 System.ParseNumbers::StringToInt(valuetype System.ReadOnlySpan`1<char>, int32, int32)
		IL_0033: stloc.0
		IL_0034: ldloc.0
		IL_0035: ldc.i4 65535
		IL_003a: ble.un.s IL_0041

		IL_003c: call void System.Convert::ThrowUInt16OverflowException()

		IL_0041: ldloc.0
		IL_0042: conv.u2
		IL_0043: ret
	} // end of method Convert::ToUInt16

	.method public hidebysig static 
		int32 ToInt32 (
			string 'value',
			int32 fromBase
		) cil managed 
	{
		// Method begins at RVA 0x61498
		// Code size 52 (0x34)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldc.i4.2
		IL_0002: beq.s IL_001d

		IL_0004: ldarg.1
		IL_0005: ldc.i4.8
		IL_0006: beq.s IL_001d

		IL_0008: ldarg.1
		IL_0009: ldc.i4.s 10
		IL_000b: beq.s IL_001d

		IL_000d: ldarg.1
		IL_000e: ldc.i4.s 16
		IL_0010: beq.s IL_001d

		IL_0012: call string System.SR::get_Arg_InvalidBase()
		IL_0017: newobj instance void System.ArgumentException::.ctor(string)
		IL_001c: throw

		IL_001d: ldarg.0
		IL_001e: brtrue.s IL_0022

		IL_0020: ldc.i4.0
		IL_0021: ret

		IL_0022: ldarg.0
		IL_0023: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string)
		IL_0028: ldarg.1
		IL_0029: ldc.i4 4096
		IL_002e: call int32 System.ParseNumbers::StringToInt(valuetype System.ReadOnlySpan`1<char>, int32, int32)
		IL_0033: ret
	} // end of method Convert::ToInt32

	.method public hidebysig static 
		uint32 ToUInt32 (
			string 'value',
			int32 fromBase
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x614cd
		// Code size 52 (0x34)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldc.i4.2
		IL_0002: beq.s IL_001d

		IL_0004: ldarg.1
		IL_0005: ldc.i4.8
		IL_0006: beq.s IL_001d

		IL_0008: ldarg.1
		IL_0009: ldc.i4.s 10
		IL_000b: beq.s IL_001d

		IL_000d: ldarg.1
		IL_000e: ldc.i4.s 16
		IL_0010: beq.s IL_001d

		IL_0012: call string System.SR::get_Arg_InvalidBase()
		IL_0017: newobj instance void System.ArgumentException::.ctor(string)
		IL_001c: throw

		IL_001d: ldarg.0
		IL_001e: brtrue.s IL_0022

		IL_0020: ldc.i4.0
		IL_0021: ret

		IL_0022: ldarg.0
		IL_0023: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string)
		IL_0028: ldarg.1
		IL_0029: ldc.i4 4608
		IL_002e: call int32 System.ParseNumbers::StringToInt(valuetype System.ReadOnlySpan`1<char>, int32, int32)
		IL_0033: ret
	} // end of method Convert::ToUInt32

	.method public hidebysig static 
		int64 ToInt64 (
			string 'value',
			int32 fromBase
		) cil managed 
	{
		// Method begins at RVA 0x61502
		// Code size 53 (0x35)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldc.i4.2
		IL_0002: beq.s IL_001d

		IL_0004: ldarg.1
		IL_0005: ldc.i4.8
		IL_0006: beq.s IL_001d

		IL_0008: ldarg.1
		IL_0009: ldc.i4.s 10
		IL_000b: beq.s IL_001d

		IL_000d: ldarg.1
		IL_000e: ldc.i4.s 16
		IL_0010: beq.s IL_001d

		IL_0012: call string System.SR::get_Arg_InvalidBase()
		IL_0017: newobj instance void System.ArgumentException::.ctor(string)
		IL_001c: throw

		IL_001d: ldarg.0
		IL_001e: brtrue.s IL_0023

		IL_0020: ldc.i4.0
		IL_0021: conv.i8
		IL_0022: ret

		IL_0023: ldarg.0
		IL_0024: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string)
		IL_0029: ldarg.1
		IL_002a: ldc.i4 4096
		IL_002f: call int64 System.ParseNumbers::StringToLong(valuetype System.ReadOnlySpan`1<char>, int32, int32)
		IL_0034: ret
	} // end of method Convert::ToInt64

	.method public hidebysig static 
		uint64 ToUInt64 (
			string 'value',
			int32 fromBase
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x61538
		// Code size 53 (0x35)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldc.i4.2
		IL_0002: beq.s IL_001d

		IL_0004: ldarg.1
		IL_0005: ldc.i4.8
		IL_0006: beq.s IL_001d

		IL_0008: ldarg.1
		IL_0009: ldc.i4.s 10
		IL_000b: beq.s IL_001d

		IL_000d: ldarg.1
		IL_000e: ldc.i4.s 16
		IL_0010: beq.s IL_001d

		IL_0012: call string System.SR::get_Arg_InvalidBase()
		IL_0017: newobj instance void System.ArgumentException::.ctor(string)
		IL_001c: throw

		IL_001d: ldarg.0
		IL_001e: brtrue.s IL_0023

		IL_0020: ldc.i4.0
		IL_0021: conv.i8
		IL_0022: ret

		IL_0023: ldarg.0
		IL_0024: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string)
		IL_0029: ldarg.1
		IL_002a: ldc.i4 4608
		IL_002f: call int64 System.ParseNumbers::StringToLong(valuetype System.ReadOnlySpan`1<char>, int32, int32)
		IL_0034: ret
	} // end of method Convert::ToUInt64

	.method public hidebysig static 
		string ToString (
			uint8 'value',
			int32 toBase
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x6156e
		// Code size 42 (0x2a)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldc.i4.2
		IL_0002: beq.s IL_001d

		IL_0004: ldarg.1
		IL_0005: ldc.i4.8
		IL_0006: beq.s IL_001d

		IL_0008: ldarg.1
		IL_0009: ldc.i4.s 10
		IL_000b: beq.s IL_001d

		IL_000d: ldarg.1
		IL_000e: ldc.i4.s 16
		IL_0010: beq.s IL_001d

		IL_0012: call string System.SR::get_Arg_InvalidBase()
		IL_0017: newobj instance void System.ArgumentException::.ctor(string)
		IL_001c: throw

		IL_001d: ldarg.0
		IL_001e: ldarg.1
		IL_001f: ldc.i4.m1
		IL_0020: ldc.i4.s 32
		IL_0022: ldc.i4.s 64
		IL_0024: call string System.ParseNumbers::IntToString(int32, int32, int32, char, int32)
		IL_0029: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			int16 'value',
			int32 toBase
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x61599
		// Code size 45 (0x2d)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldc.i4.2
		IL_0002: beq.s IL_001d

		IL_0004: ldarg.1
		IL_0005: ldc.i4.8
		IL_0006: beq.s IL_001d

		IL_0008: ldarg.1
		IL_0009: ldc.i4.s 10
		IL_000b: beq.s IL_001d

		IL_000d: ldarg.1
		IL_000e: ldc.i4.s 16
		IL_0010: beq.s IL_001d

		IL_0012: call string System.SR::get_Arg_InvalidBase()
		IL_0017: newobj instance void System.ArgumentException::.ctor(string)
		IL_001c: throw

		IL_001d: ldarg.0
		IL_001e: ldarg.1
		IL_001f: ldc.i4.m1
		IL_0020: ldc.i4.s 32
		IL_0022: ldc.i4 128
		IL_0027: call string System.ParseNumbers::IntToString(int32, int32, int32, char, int32)
		IL_002c: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			int32 'value',
			int32 toBase
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x615c7
		// Code size 41 (0x29)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldc.i4.2
		IL_0002: beq.s IL_001d

		IL_0004: ldarg.1
		IL_0005: ldc.i4.8
		IL_0006: beq.s IL_001d

		IL_0008: ldarg.1
		IL_0009: ldc.i4.s 10
		IL_000b: beq.s IL_001d

		IL_000d: ldarg.1
		IL_000e: ldc.i4.s 16
		IL_0010: beq.s IL_001d

		IL_0012: call string System.SR::get_Arg_InvalidBase()
		IL_0017: newobj instance void System.ArgumentException::.ctor(string)
		IL_001c: throw

		IL_001d: ldarg.0
		IL_001e: ldarg.1
		IL_001f: ldc.i4.m1
		IL_0020: ldc.i4.s 32
		IL_0022: ldc.i4.0
		IL_0023: call string System.ParseNumbers::IntToString(int32, int32, int32, char, int32)
		IL_0028: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToString (
			int64 'value',
			int32 toBase
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x615f1
		// Code size 41 (0x29)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldc.i4.2
		IL_0002: beq.s IL_001d

		IL_0004: ldarg.1
		IL_0005: ldc.i4.8
		IL_0006: beq.s IL_001d

		IL_0008: ldarg.1
		IL_0009: ldc.i4.s 10
		IL_000b: beq.s IL_001d

		IL_000d: ldarg.1
		IL_000e: ldc.i4.s 16
		IL_0010: beq.s IL_001d

		IL_0012: call string System.SR::get_Arg_InvalidBase()
		IL_0017: newobj instance void System.ArgumentException::.ctor(string)
		IL_001c: throw

		IL_001d: ldarg.0
		IL_001e: ldarg.1
		IL_001f: ldc.i4.m1
		IL_0020: ldc.i4.s 32
		IL_0022: ldc.i4.0
		IL_0023: call string System.ParseNumbers::LongToString(int64, int32, int32, char, int32)
		IL_0028: ret
	} // end of method Convert::ToString

	.method public hidebysig static 
		string ToBase64String (
			uint8[] inArray
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x6161b
		// Code size 27 (0x1b)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "inArray"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: newobj instance void valuetype System.ReadOnlySpan`1<uint8>::.ctor(!0[])
		IL_0014: ldc.i4.0
		IL_0015: call string System.Convert::ToBase64String(valuetype System.ReadOnlySpan`1<uint8>, valuetype System.Base64FormattingOptions)
		IL_001a: ret
	} // end of method Convert::ToBase64String

	.method public hidebysig static 
		string ToBase64String (
			uint8[] inArray,
			valuetype System.Base64FormattingOptions options
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x61637
		// Code size 27 (0x1b)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "inArray"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: newobj instance void valuetype System.ReadOnlySpan`1<uint8>::.ctor(!0[])
		IL_0014: ldarg.1
		IL_0015: call string System.Convert::ToBase64String(valuetype System.ReadOnlySpan`1<uint8>, valuetype System.Base64FormattingOptions)
		IL_001a: ret
	} // end of method Convert::ToBase64String

	.method public hidebysig static 
		string ToBase64String (
			uint8[] inArray,
			int32 offset,
			int32 length
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x61653
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldc.i4.0
		IL_0004: call string System.Convert::ToBase64String(uint8[], int32, int32, valuetype System.Base64FormattingOptions)
		IL_0009: ret
	} // end of method Convert::ToBase64String

	.method public hidebysig static 
		string ToBase64String (
			uint8[] inArray,
			int32 offset,
			int32 length,
			valuetype System.Base64FormattingOptions options
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x61660
		// Code size 93 (0x5d)
		.maxstack 3

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "inArray"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.2
		IL_000f: ldc.i4.0
		IL_0010: bge.s IL_0022

		IL_0012: ldstr "length"
		IL_0017: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_001c: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0021: throw

		IL_0022: ldarg.1
		IL_0023: ldc.i4.0
		IL_0024: bge.s IL_0036

		IL_0026: ldstr "offset"
		IL_002b: call string System.SR::get_ArgumentOutOfRange_GenericPositive()
		IL_0030: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0035: throw

		IL_0036: ldarg.1
		IL_0037: ldarg.0
		IL_0038: ldlen
		IL_0039: conv.i4
		IL_003a: ldarg.2
		IL_003b: sub
		IL_003c: ble.s IL_004e

		IL_003e: ldstr "offset"
		IL_0043: call string System.SR::get_ArgumentOutOfRange_OffsetLength()
		IL_0048: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_004d: throw

		IL_004e: ldarg.0
		IL_004f: ldarg.1
		IL_0050: ldarg.2
		IL_0051: newobj instance void valuetype System.ReadOnlySpan`1<uint8>::.ctor(!0[], int32, int32)
		IL_0056: ldarg.3
		IL_0057: call string System.Convert::ToBase64String(valuetype System.ReadOnlySpan`1<uint8>, valuetype System.Base64FormattingOptions)
		IL_005c: ret
	} // end of method Convert::ToBase64String

	.method public hidebysig static 
		string ToBase64String (
			valuetype System.ReadOnlySpan`1<uint8> bytes,
			[opt] valuetype System.Base64FormattingOptions options
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [2] = int32(0)
		// Method begins at RVA 0x616cc
		// Code size 132 (0x84)
		.maxstack 5
		.locals (
			[0] bool,
			[1] string,
			[2] uint8*,
			[3] uint8& pinned,
			[4] char*,
			[5] char& pinned,
			[6] int32
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: blt.s IL_0008

		IL_0004: ldarg.1
		IL_0005: ldc.i4.1
		IL_0006: ble.s IL_0023

		IL_0008: call string System.SR::get_Arg_EnumIllegalVal()
		IL_000d: ldarg.1
		IL_000e: box System.Int32
		IL_0013: call string System.SR::Format(string, object)
		IL_0018: ldstr "options"
		IL_001d: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0022: throw

		IL_0023: ldarga.s 0
		IL_0025: call instance int32 valuetype System.ReadOnlySpan`1<uint8>::get_Length()
		IL_002a: brtrue.s IL_0032

		IL_002c: ldsfld string System.String::Empty
		IL_0031: ret

		IL_0032: ldarg.1
		IL_0033: ldc.i4.1
		IL_0034: ceq
		IL_0036: stloc.0
		IL_0037: ldarga.s 0
		IL_0039: call instance int32 valuetype System.ReadOnlySpan`1<uint8>::get_Length()
		IL_003e: ldloc.0
		IL_003f: call int32 System.Convert::ToBase64_CalculateAndValidateOutputLength(int32, bool)
		IL_0044: call string System.String::FastAllocateString(int32)
		IL_0049: stloc.1
		IL_004a: ldarg.0
		IL_004b: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<uint8>(valuetype System.ReadOnlySpan`1<!!0>)
		IL_0050: stloc.3
		IL_0051: ldloc.3
		IL_0052: conv.u
		IL_0053: stloc.2
		IL_0054: ldloc.1
		IL_0055: brtrue.s IL_005b

		IL_0057: ldc.i4.0
		IL_0058: conv.u
		IL_0059: br.s IL_0066

		IL_005b: ldloc.1
		IL_005c: call instance char& modreq(System.Runtime.InteropServices.InAttribute) System.String::GetPinnableReference()
		IL_0061: stloc.s 5
		IL_0063: ldloc.s 5
		IL_0065: conv.u

		IL_0066: stloc.s 4
		IL_0068: ldloc.s 4
		IL_006a: ldloc.2
		IL_006b: ldc.i4.0
		IL_006c: ldarga.s 0
		IL_006e: call instance int32 valuetype System.ReadOnlySpan`1<uint8>::get_Length()
		IL_0073: ldloc.0
		IL_0074: call int32 System.Convert::ConvertToBase64Array(char*, uint8*, int32, int32, bool)
		IL_0079: stloc.s 6
		IL_007b: ldc.i4.0
		IL_007c: conv.u
		IL_007d: stloc.s 5
		IL_007f: ldc.i4.0
		IL_0080: conv.u
		IL_0081: stloc.3
		IL_0082: ldloc.1
		IL_0083: ret
	} // end of method Convert::ToBase64String

	.method public hidebysig static 
		int32 ToBase64CharArray (
			uint8[] inArray,
			int32 offsetIn,
			int32 length,
			char[] outArray,
			int32 offsetOut
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x6175c
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: ldarg.s offsetOut
		IL_0006: ldc.i4.0
		IL_0007: call int32 System.Convert::ToBase64CharArray(uint8[], int32, int32, char[], int32, valuetype System.Base64FormattingOptions)
		IL_000c: ret
	} // end of method Convert::ToBase64CharArray

	.method public hidebysig static 
		int32 ToBase64CharArray (
			uint8[] inArray,
			int32 offsetIn,
			int32 length,
			char[] outArray,
			int32 offsetOut,
			valuetype System.Base64FormattingOptions options
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x6176c
		// Code size 254 (0xfe)
		.maxstack 5
		.locals (
			[0] int32,
			[1] int32,
			[2] int32,
			[3] int32,
			[4] bool,
			[5] char*,
			[6] char& pinned,
			[7] uint8*,
			[8] uint8& pinned
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "inArray"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.3
		IL_000f: brtrue.s IL_001c

		IL_0011: ldstr "outArray"
		IL_0016: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_001b: throw

		IL_001c: ldarg.2
		IL_001d: ldc.i4.0
		IL_001e: bge.s IL_0030

		IL_0020: ldstr "length"
		IL_0025: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_002a: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_002f: throw

		IL_0030: ldarg.1
		IL_0031: ldc.i4.0
		IL_0032: bge.s IL_0044

		IL_0034: ldstr "offsetIn"
		IL_0039: call string System.SR::get_ArgumentOutOfRange_GenericPositive()
		IL_003e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0043: throw

		IL_0044: ldarg.s offsetOut
		IL_0046: ldc.i4.0
		IL_0047: bge.s IL_0059

		IL_0049: ldstr "offsetOut"
		IL_004e: call string System.SR::get_ArgumentOutOfRange_GenericPositive()
		IL_0053: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0058: throw

		IL_0059: ldarg.s options
		IL_005b: ldc.i4.0
		IL_005c: blt.s IL_0063

		IL_005e: ldarg.s options
		IL_0060: ldc.i4.1
		IL_0061: ble.s IL_007f

		IL_0063: call string System.SR::get_Arg_EnumIllegalVal()
		IL_0068: ldarg.s options
		IL_006a: box System.Int32
		IL_006f: call string System.SR::Format(string, object)
		IL_0074: ldstr "options"
		IL_0079: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_007e: throw

		IL_007f: ldarg.0
		IL_0080: ldlen
		IL_0081: conv.i4
		IL_0082: stloc.1
		IL_0083: ldarg.1
		IL_0084: ldloc.1
		IL_0085: ldarg.2
		IL_0086: sub
		IL_0087: ble.s IL_0099

		IL_0089: ldstr "offsetIn"
		IL_008e: call string System.SR::get_ArgumentOutOfRange_OffsetLength()
		IL_0093: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0098: throw

		IL_0099: ldloc.1
		IL_009a: brtrue.s IL_009e

		IL_009c: ldc.i4.0
		IL_009d: ret

		IL_009e: ldarg.s options
		IL_00a0: ldc.i4.1
		IL_00a1: ceq
		IL_00a3: stloc.s 4
		IL_00a5: ldarg.3
		IL_00a6: ldlen
		IL_00a7: conv.i4
		IL_00a8: stloc.2
		IL_00a9: ldarg.2
		IL_00aa: ldloc.s 4
		IL_00ac: call int32 System.Convert::ToBase64_CalculateAndValidateOutputLength(int32, bool)
		IL_00b1: stloc.3
		IL_00b2: ldarg.s offsetOut
		IL_00b4: ldloc.2
		IL_00b5: ldloc.3
		IL_00b6: sub
		IL_00b7: ble.s IL_00c9

		IL_00b9: ldstr "offsetOut"
		IL_00be: call string System.SR::get_ArgumentOutOfRange_OffsetOut()
		IL_00c3: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_00c8: throw

		IL_00c9: ldarg.3
		IL_00ca: ldarg.s offsetOut
		IL_00cc: ldelema System.Char
		IL_00d1: stloc.s 6
		IL_00d3: ldloc.s 6
		IL_00d5: conv.u
		IL_00d6: stloc.s 5
		IL_00d8: ldarg.0
		IL_00d9: ldc.i4.0
		IL_00da: ldelema System.Byte
		IL_00df: stloc.s 8
		IL_00e1: ldloc.s 8
		IL_00e3: conv.u
		IL_00e4: stloc.s 7
		IL_00e6: ldloc.s 5
		IL_00e8: ldloc.s 7
		IL_00ea: ldarg.1
		IL_00eb: ldarg.2
		IL_00ec: ldloc.s 4
		IL_00ee: call int32 System.Convert::ConvertToBase64Array(char*, uint8*, int32, int32, bool)
		IL_00f3: stloc.0
		IL_00f4: ldc.i4.0
		IL_00f5: conv.u
		IL_00f6: stloc.s 8
		IL_00f8: ldc.i4.0
		IL_00f9: conv.u
		IL_00fa: stloc.s 6
		IL_00fc: ldloc.0
		IL_00fd: ret
	} // end of method Convert::ToBase64CharArray

	.method public hidebysig static 
		bool TryToBase64Chars (
			valuetype System.ReadOnlySpan`1<uint8> bytes,
			valuetype System.Span`1<char> chars,
			[out] int32& charsWritten,
			[opt] valuetype System.Base64FormattingOptions options
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.param [4] = int32(0)
		// Method begins at RVA 0x61878
		// Code size 127 (0x7f)
		.maxstack 6
		.locals (
			[0] bool,
			[1] int32,
			[2] char*,
			[3] char& pinned,
			[4] uint8*,
			[5] uint8& pinned
		)

		IL_0000: ldarg.3
		IL_0001: ldc.i4.0
		IL_0002: blt.s IL_0008

		IL_0004: ldarg.3
		IL_0005: ldc.i4.1
		IL_0006: ble.s IL_0023

		IL_0008: call string System.SR::get_Arg_EnumIllegalVal()
		IL_000d: ldarg.3
		IL_000e: box System.Int32
		IL_0013: call string System.SR::Format(string, object)
		IL_0018: ldstr "options"
		IL_001d: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0022: throw

		IL_0023: ldarga.s bytes
		IL_0025: call instance int32 valuetype System.ReadOnlySpan`1<uint8>::get_Length()
		IL_002a: brtrue.s IL_0031

		IL_002c: ldarg.2
		IL_002d: ldc.i4.0
		IL_002e: stind.i4
		IL_002f: ldc.i4.1
		IL_0030: ret

		IL_0031: ldarg.3
		IL_0032: ldc.i4.1
		IL_0033: ceq
		IL_0035: stloc.0
		IL_0036: ldarga.s bytes
		IL_0038: call instance int32 valuetype System.ReadOnlySpan`1<uint8>::get_Length()
		IL_003d: ldloc.0
		IL_003e: call int32 System.Convert::ToBase64_CalculateAndValidateOutputLength(int32, bool)
		IL_0043: stloc.1
		IL_0044: ldloc.1
		IL_0045: ldarga.s chars
		IL_0047: call instance int32 valuetype System.Span`1<char>::get_Length()
		IL_004c: ble.s IL_0053

		IL_004e: ldarg.2
		IL_004f: ldc.i4.0
		IL_0050: stind.i4
		IL_0051: ldc.i4.0
		IL_0052: ret

		IL_0053: ldarg.1
		IL_0054: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<char>(valuetype System.Span`1<!!0>)
		IL_0059: stloc.3
		IL_005a: ldloc.3
		IL_005b: conv.u
		IL_005c: stloc.2
		IL_005d: ldarg.0
		IL_005e: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<uint8>(valuetype System.ReadOnlySpan`1<!!0>)
		IL_0063: stloc.s 5
		IL_0065: ldloc.s 5
		IL_0067: conv.u
		IL_0068: stloc.s 4
		IL_006a: ldarg.2
		IL_006b: ldloc.2
		IL_006c: ldloc.s 4
		IL_006e: ldc.i4.0
		IL_006f: ldarga.s bytes
		IL_0071: call instance int32 valuetype System.ReadOnlySpan`1<uint8>::get_Length()
		IL_0076: ldloc.0
		IL_0077: call int32 System.Convert::ConvertToBase64Array(char*, uint8*, int32, int32, bool)
		IL_007c: stind.i4
		IL_007d: ldc.i4.1
		IL_007e: ret
	} // end of method Convert::TryToBase64Chars

	.method private hidebysig static 
		int32 ConvertToBase64Array (
			char* outChars,
			uint8* inData,
			int32 offset,
			int32 length,
			bool insertLineBreaks
		) cil managed 
	{
		// Method begins at RVA 0x61904
		// Code size 507 (0x1fb)
		.maxstack 6
		.locals (
			[0] int32,
			[1] int32,
			[2] int32,
			[3] int32,
			[4] int32,
			[5] char*,
			[6] char& pinned
		)

		IL_0000: ldarg.3
		IL_0001: ldc.i4.3
		IL_0002: rem
		IL_0003: stloc.0
		IL_0004: ldarg.2
		IL_0005: ldarg.3
		IL_0006: ldloc.0
		IL_0007: sub
		IL_0008: add
		IL_0009: stloc.1
		IL_000a: ldc.i4.0
		IL_000b: stloc.2
		IL_000c: ldc.i4.0
		IL_000d: stloc.3
		IL_000e: ldsfld char[] System.Convert::base64Table
		IL_0013: ldc.i4.0
		IL_0014: ldelema System.Char
		IL_0019: stloc.s 6
		IL_001b: ldloc.s 6
		IL_001d: conv.u
		IL_001e: stloc.s 5
		IL_0020: ldarg.2
		IL_0021: stloc.s 4
		IL_0023: br IL_00e5
		// loop start (head: IL_00e5)
			IL_0028: ldarg.s insertLineBreaks
			IL_002a: brfalse.s IL_0051

			IL_002c: ldloc.3
			IL_002d: ldc.i4.s 76
			IL_002f: bne.un.s IL_004d

			IL_0031: ldarg.0
			IL_0032: ldloc.2
			IL_0033: dup
			IL_0034: ldc.i4.1
			IL_0035: add
			IL_0036: stloc.2
			IL_0037: conv.i
			IL_0038: ldc.i4.2
			IL_0039: mul
			IL_003a: add
			IL_003b: ldc.i4.s 13
			IL_003d: stind.i2
			IL_003e: ldarg.0
			IL_003f: ldloc.2
			IL_0040: dup
			IL_0041: ldc.i4.1
			IL_0042: add
			IL_0043: stloc.2
			IL_0044: conv.i
			IL_0045: ldc.i4.2
			IL_0046: mul
			IL_0047: add
			IL_0048: ldc.i4.s 10
			IL_004a: stind.i2
			IL_004b: ldc.i4.0
			IL_004c: stloc.3

			IL_004d: ldloc.3
			IL_004e: ldc.i4.4
			IL_004f: add
			IL_0050: stloc.3

			IL_0051: ldarg.0
			IL_0052: ldloc.2
			IL_0053: conv.i
			IL_0054: ldc.i4.2
			IL_0055: mul
			IL_0056: add
			IL_0057: ldloc.s 5
			IL_0059: ldarg.1
			IL_005a: ldloc.s 4
			IL_005c: add
			IL_005d: ldind.u1
			IL_005e: ldc.i4 252
			IL_0063: and
			IL_0064: ldc.i4.2
			IL_0065: shr
			IL_0066: conv.i
			IL_0067: ldc.i4.2
			IL_0068: mul
			IL_0069: add
			IL_006a: ldind.u2
			IL_006b: stind.i2
			IL_006c: ldarg.0
			IL_006d: ldloc.2
			IL_006e: ldc.i4.1
			IL_006f: add
			IL_0070: conv.i
			IL_0071: ldc.i4.2
			IL_0072: mul
			IL_0073: add
			IL_0074: ldloc.s 5
			IL_0076: ldarg.1
			IL_0077: ldloc.s 4
			IL_0079: add
			IL_007a: ldind.u1
			IL_007b: ldc.i4.3
			IL_007c: and
			IL_007d: ldc.i4.4
			IL_007e: shl
			IL_007f: ldarg.1
			IL_0080: ldloc.s 4
			IL_0082: ldc.i4.1
			IL_0083: add
			IL_0084: add
			IL_0085: ldind.u1
			IL_0086: ldc.i4 240
			IL_008b: and
			IL_008c: ldc.i4.4
			IL_008d: shr
			IL_008e: or
			IL_008f: conv.i
			IL_0090: ldc.i4.2
			IL_0091: mul
			IL_0092: add
			IL_0093: ldind.u2
			IL_0094: stind.i2
			IL_0095: ldarg.0
			IL_0096: ldloc.2
			IL_0097: ldc.i4.2
			IL_0098: add
			IL_0099: conv.i
			IL_009a: ldc.i4.2
			IL_009b: mul
			IL_009c: add
			IL_009d: ldloc.s 5
			IL_009f: ldarg.1
			IL_00a0: ldloc.s 4
			IL_00a2: ldc.i4.1
			IL_00a3: add
			IL_00a4: add
			IL_00a5: ldind.u1
			IL_00a6: ldc.i4.s 15
			IL_00a8: and
			IL_00a9: ldc.i4.2
			IL_00aa: shl
			IL_00ab: ldarg.1
			IL_00ac: ldloc.s 4
			IL_00ae: ldc.i4.2
			IL_00af: add
			IL_00b0: add
			IL_00b1: ldind.u1
			IL_00b2: ldc.i4 192
			IL_00b7: and
			IL_00b8: ldc.i4.6
			IL_00b9: shr
			IL_00ba: or
			IL_00bb: conv.i
			IL_00bc: ldc.i4.2
			IL_00bd: mul
			IL_00be: add
			IL_00bf: ldind.u2
			IL_00c0: stind.i2
			IL_00c1: ldarg.0
			IL_00c2: ldloc.2
			IL_00c3: ldc.i4.3
			IL_00c4: add
			IL_00c5: conv.i
			IL_00c6: ldc.i4.2
			IL_00c7: mul
			IL_00c8: add
			IL_00c9: ldloc.s 5
			IL_00cb: ldarg.1
			IL_00cc: ldloc.s 4
			IL_00ce: ldc.i4.2
			IL_00cf: add
			IL_00d0: add
			IL_00d1: ldind.u1
			IL_00d2: ldc.i4.s 63
			IL_00d4: and
			IL_00d5: conv.i
			IL_00d6: ldc.i4.2
			IL_00d7: mul
			IL_00d8: add
			IL_00d9: ldind.u2
			IL_00da: stind.i2
			IL_00db: ldloc.2
			IL_00dc: ldc.i4.4
			IL_00dd: add
			IL_00de: stloc.2
			IL_00df: ldloc.s 4
			IL_00e1: ldc.i4.3
			IL_00e2: add
			IL_00e3: stloc.s 4

			IL_00e5: ldloc.s 4
			IL_00e7: ldloc.1
			IL_00e8: blt IL_0028
		// end loop

		IL_00ed: ldloc.1
		IL_00ee: stloc.s 4
		IL_00f0: ldarg.s insertLineBreaks
		IL_00f2: brfalse.s IL_0116

		IL_00f4: ldloc.0
		IL_00f5: brfalse.s IL_0116

		IL_00f7: ldloc.3
		IL_00f8: ldc.i4.s 76
		IL_00fa: bne.un.s IL_0116

		IL_00fc: ldarg.0
		IL_00fd: ldloc.2
		IL_00fe: dup
		IL_00ff: ldc.i4.1
		IL_0100: add
		IL_0101: stloc.2
		IL_0102: conv.i
		IL_0103: ldc.i4.2
		IL_0104: mul
		IL_0105: add
		IL_0106: ldc.i4.s 13
		IL_0108: stind.i2
		IL_0109: ldarg.0
		IL_010a: ldloc.2
		IL_010b: dup
		IL_010c: ldc.i4.1
		IL_010d: add
		IL_010e: stloc.2
		IL_010f: conv.i
		IL_0110: ldc.i4.2
		IL_0111: mul
		IL_0112: add
		IL_0113: ldc.i4.s 10
		IL_0115: stind.i2

		IL_0116: ldloc.0
		IL_0117: ldc.i4.1
		IL_0118: beq.s IL_0199

		IL_011a: ldloc.0
		IL_011b: ldc.i4.2
		IL_011c: bne.un IL_01f5

		IL_0121: ldarg.0
		IL_0122: ldloc.2
		IL_0123: conv.i
		IL_0124: ldc.i4.2
		IL_0125: mul
		IL_0126: add
		IL_0127: ldloc.s 5
		IL_0129: ldarg.1
		IL_012a: ldloc.s 4
		IL_012c: add
		IL_012d: ldind.u1
		IL_012e: ldc.i4 252
		IL_0133: and
		IL_0134: ldc.i4.2
		IL_0135: shr
		IL_0136: conv.i
		IL_0137: ldc.i4.2
		IL_0138: mul
		IL_0139: add
		IL_013a: ldind.u2
		IL_013b: stind.i2
		IL_013c: ldarg.0
		IL_013d: ldloc.2
		IL_013e: ldc.i4.1
		IL_013f: add
		IL_0140: conv.i
		IL_0141: ldc.i4.2
		IL_0142: mul
		IL_0143: add
		IL_0144: ldloc.s 5
		IL_0146: ldarg.1
		IL_0147: ldloc.s 4
		IL_0149: add
		IL_014a: ldind.u1
		IL_014b: ldc.i4.3
		IL_014c: and
		IL_014d: ldc.i4.4
		IL_014e: shl
		IL_014f: ldarg.1
		IL_0150: ldloc.s 4
		IL_0152: ldc.i4.1
		IL_0153: add
		IL_0154: add
		IL_0155: ldind.u1
		IL_0156: ldc.i4 240
		IL_015b: and
		IL_015c: ldc.i4.4
		IL_015d: shr
		IL_015e: or
		IL_015f: conv.i
		IL_0160: ldc.i4.2
		IL_0161: mul
		IL_0162: add
		IL_0163: ldind.u2
		IL_0164: stind.i2
		IL_0165: ldarg.0
		IL_0166: ldloc.2
		IL_0167: ldc.i4.2
		IL_0168: add
		IL_0169: conv.i
		IL_016a: ldc.i4.2
		IL_016b: mul
		IL_016c: add
		IL_016d: ldloc.s 5
		IL_016f: ldarg.1
		IL_0170: ldloc.s 4
		IL_0172: ldc.i4.1
		IL_0173: add
		IL_0174: add
		IL_0175: ldind.u1
		IL_0176: ldc.i4.s 15
		IL_0178: and
		IL_0179: ldc.i4.2
		IL_017a: shl
		IL_017b: conv.i
		IL_017c: ldc.i4.2
		IL_017d: mul
		IL_017e: add
		IL_017f: ldind.u2
		IL_0180: stind.i2
		IL_0181: ldarg.0
		IL_0182: ldloc.2
		IL_0183: ldc.i4.3
		IL_0184: add
		IL_0185: conv.i
		IL_0186: ldc.i4.2
		IL_0187: mul
		IL_0188: add
		IL_0189: ldloc.s 5
		IL_018b: ldc.i4.s 64
		IL_018d: conv.i
		IL_018e: ldc.i4.2
		IL_018f: mul
		IL_0190: add
		IL_0191: ldind.u2
		IL_0192: stind.i2
		IL_0193: ldloc.2
		IL_0194: ldc.i4.4
		IL_0195: add
		IL_0196: stloc.2
		IL_0197: br.s IL_01f5

		IL_0199: ldarg.0
		IL_019a: ldloc.2
		IL_019b: conv.i
		IL_019c: ldc.i4.2
		IL_019d: mul
		IL_019e: add
		IL_019f: ldloc.s 5
		IL_01a1: ldarg.1
		IL_01a2: ldloc.s 4
		IL_01a4: add
		IL_01a5: ldind.u1
		IL_01a6: ldc.i4 252
		IL_01ab: and
		IL_01ac: ldc.i4.2
		IL_01ad: shr
		IL_01ae: conv.i
		IL_01af: ldc.i4.2
		IL_01b0: mul
		IL_01b1: add
		IL_01b2: ldind.u2
		IL_01b3: stind.i2
		IL_01b4: ldarg.0
		IL_01b5: ldloc.2
		IL_01b6: ldc.i4.1
		IL_01b7: add
		IL_01b8: conv.i
		IL_01b9: ldc.i4.2
		IL_01ba: mul
		IL_01bb: add
		IL_01bc: ldloc.s 5
		IL_01be: ldarg.1
		IL_01bf: ldloc.s 4
		IL_01c1: add
		IL_01c2: ldind.u1
		IL_01c3: ldc.i4.3
		IL_01c4: and
		IL_01c5: ldc.i4.4
		IL_01c6: shl
		IL_01c7: conv.i
		IL_01c8: ldc.i4.2
		IL_01c9: mul
		IL_01ca: add
		IL_01cb: ldind.u2
		IL_01cc: stind.i2
		IL_01cd: ldarg.0
		IL_01ce: ldloc.2
		IL_01cf: ldc.i4.2
		IL_01d0: add
		IL_01d1: conv.i
		IL_01d2: ldc.i4.2
		IL_01d3: mul
		IL_01d4: add
		IL_01d5: ldloc.s 5
		IL_01d7: ldc.i4.s 64
		IL_01d9: conv.i
		IL_01da: ldc.i4.2
		IL_01db: mul
		IL_01dc: add
		IL_01dd: ldind.u2
		IL_01de: stind.i2
		IL_01df: ldarg.0
		IL_01e0: ldloc.2
		IL_01e1: ldc.i4.3
		IL_01e2: add
		IL_01e3: conv.i
		IL_01e4: ldc.i4.2
		IL_01e5: mul
		IL_01e6: add
		IL_01e7: ldloc.s 5
		IL_01e9: ldc.i4.s 64
		IL_01eb: conv.i
		IL_01ec: ldc.i4.2
		IL_01ed: mul
		IL_01ee: add
		IL_01ef: ldind.u2
		IL_01f0: stind.i2
		IL_01f1: ldloc.2
		IL_01f2: ldc.i4.4
		IL_01f3: add
		IL_01f4: stloc.2

		IL_01f5: ldc.i4.0
		IL_01f6: conv.u
		IL_01f7: stloc.s 6
		IL_01f9: ldloc.2
		IL_01fa: ret
	} // end of method Convert::ConvertToBase64Array

	.method private hidebysig static 
		int32 ToBase64_CalculateAndValidateOutputLength (
			int32 inputLength,
			bool insertLineBreaks
		) cil managed 
	{
		// Method begins at RVA 0x61b0c
		// Code size 73 (0x49)
		.maxstack 3
		.locals (
			[0] int64,
			[1] int64
		)

		IL_0000: ldarg.0
		IL_0001: conv.i8
		IL_0002: ldc.i4.3
		IL_0003: conv.i8
		IL_0004: div
		IL_0005: ldc.i4.4
		IL_0006: conv.i8
		IL_0007: mul
		IL_0008: stloc.0
		IL_0009: ldloc.0
		IL_000a: ldarg.0
		IL_000b: ldc.i4.3
		IL_000c: rem
		IL_000d: brtrue.s IL_0012

		IL_000f: ldc.i4.0
		IL_0010: br.s IL_0013

		IL_0012: ldc.i4.4

		IL_0013: conv.i8
		IL_0014: add
		IL_0015: stloc.0
		IL_0016: ldloc.0
		IL_0017: brtrue.s IL_001b

		IL_0019: ldc.i4.0
		IL_001a: ret

		IL_001b: ldarg.1
		IL_001c: brfalse.s IL_0037

		IL_001e: ldloc.0
		IL_001f: ldc.i4.s 76
		IL_0021: conv.i8
		IL_0022: div
		IL_0023: stloc.1
		IL_0024: ldloc.0
		IL_0025: ldc.i4.s 76
		IL_0027: conv.i8
		IL_0028: rem
		IL_0029: brtrue.s IL_0030

		IL_002b: ldloc.1
		IL_002c: ldc.i4.1
		IL_002d: conv.i8
		IL_002e: sub
		IL_002f: stloc.1

		IL_0030: ldloc.0
		IL_0031: ldloc.1
		IL_0032: ldc.i4.2
		IL_0033: conv.i8
		IL_0034: mul
		IL_0035: add
		IL_0036: stloc.0

		IL_0037: ldloc.0
		IL_0038: ldc.i4 2147483647
		IL_003d: conv.i8
		IL_003e: ble.s IL_0046

		IL_0040: newobj instance void System.OutOfMemoryException::.ctor()
		IL_0045: throw

		IL_0046: ldloc.0
		IL_0047: conv.i4
		IL_0048: ret
	} // end of method Convert::ToBase64_CalculateAndValidateOutputLength

	.method public hidebysig static 
		uint8[] FromBase64String (
			string s
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x61b64
		// Code size 44 (0x2c)
		.maxstack 2
		.locals (
			[0] char*,
			[1] char& pinned
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "s"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: brtrue.s IL_0015

		IL_0011: ldc.i4.0
		IL_0012: conv.u
		IL_0013: br.s IL_001e

		IL_0015: ldarg.0
		IL_0016: call instance char& modreq(System.Runtime.InteropServices.InAttribute) System.String::GetPinnableReference()
		IL_001b: stloc.1
		IL_001c: ldloc.1
		IL_001d: conv.u

		IL_001e: stloc.0
		IL_001f: ldloc.0
		IL_0020: ldarg.0
		IL_0021: callvirt instance int32 System.String::get_Length()
		IL_0026: call uint8[] System.Convert::FromBase64CharPtr(char*, int32)
		IL_002b: ret
	} // end of method Convert::FromBase64String

	.method public hidebysig static 
		bool TryFromBase64String (
			string s,
			valuetype System.Span`1<uint8> bytes,
			[out] int32& bytesWritten
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x61b9c
		// Code size 28 (0x1c)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "s"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string)
		IL_0014: ldarg.1
		IL_0015: ldarg.2
		IL_0016: call bool System.Convert::TryFromBase64Chars(valuetype System.ReadOnlySpan`1<char>, valuetype System.Span`1<uint8>, int32&)
		IL_001b: ret
	} // end of method Convert::TryFromBase64String

	.method public hidebysig static 
		bool TryFromBase64Chars (
			valuetype System.ReadOnlySpan`1<char> chars,
			valuetype System.Span`1<uint8> bytes,
			[out] int32& bytesWritten
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x61bbc
		// Code size 309 (0x135)
		.maxstack 4
		.locals (
			[0] valuetype System.Span`1<char>,
			[1] valuetype System.Span`1<char>,
			[2] bool,
			[3] int32,
			[4] int32,
			[5] int32,
			[6] int32,
			[7] int32,
			[8] int32,
			[9] int32,
			[10] int32
		)

		IL_0000: ldc.i4.8
		IL_0001: conv.u
		IL_0002: localloc
		IL_0004: ldc.i4.4
		IL_0005: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_000a: stloc.1
		IL_000b: ldloc.1
		IL_000c: stloc.0
		IL_000d: ldarg.2
		IL_000e: ldc.i4.0
		IL_000f: stind.i4
		IL_0010: br IL_0127
		// loop start (head: IL_0127)
			IL_0015: ldarg.0
			IL_0016: ldarg.1
			IL_0017: ldloca.s 3
			IL_0019: ldloca.s 4
			IL_001b: call bool System.Convert::TryDecodeFromUtf16(valuetype System.ReadOnlySpan`1<char>, valuetype System.Span`1<uint8>, int32&, int32&)
			IL_0020: stloc.2
			IL_0021: ldarg.2
			IL_0022: ldarg.2
			IL_0023: ldind.i4
			IL_0024: ldloc.s 4
			IL_0026: add
			IL_0027: stind.i4
			IL_0028: ldloc.2
			IL_0029: brfalse.s IL_002d

			IL_002b: ldc.i4.1
			IL_002c: ret

			IL_002d: ldarga.s chars
			IL_002f: ldloc.3
			IL_0030: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::Slice(int32)
			IL_0035: starg.s chars
			IL_0037: ldarga.s bytes
			IL_0039: ldloc.s 4
			IL_003b: call instance valuetype System.Span`1<!0> valuetype System.Span`1<uint8>::Slice(int32)
			IL_0040: starg.s bytes
			IL_0042: ldarga.s chars
			IL_0044: ldc.i4.0
			IL_0045: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_004a: ldind.u2
			IL_004b: call bool System.Convert::IsSpace(char)
			IL_0050: brfalse.s IL_009e

			IL_0052: ldc.i4.1
			IL_0053: stloc.s 5
			// loop start (head: IL_0055)
				IL_0055: ldloc.s 5
				IL_0057: ldarga.s chars
				IL_0059: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
				IL_005e: beq.s IL_0079

				IL_0060: ldarga.s chars
				IL_0062: ldloc.s 5
				IL_0064: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
				IL_0069: ldind.u2
				IL_006a: call bool System.Convert::IsSpace(char)
				IL_006f: brfalse.s IL_0079

				IL_0071: ldloc.s 5
				IL_0073: ldc.i4.1
				IL_0074: add
				IL_0075: stloc.s 5
				IL_0077: br.s IL_0055
			// end loop

			IL_0079: ldarga.s chars
			IL_007b: ldloc.s 5
			IL_007d: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::Slice(int32)
			IL_0082: starg.s chars
			IL_0084: ldloc.s 4
			IL_0086: ldc.i4.3
			IL_0087: rem
			IL_0088: brfalse IL_0127

			IL_008d: ldarga.s chars
			IL_008f: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0094: brfalse IL_0127

			IL_0099: ldarg.2
			IL_009a: ldc.i4.0
			IL_009b: stind.i4
			IL_009c: ldc.i4.0
			IL_009d: ret

			IL_009e: ldarg.0
			IL_009f: ldloc.0
			IL_00a0: ldloca.s 6
			IL_00a2: ldloca.s 7
			IL_00a4: call void System.Convert::CopyToTempBufferWithoutWhiteSpace(valuetype System.ReadOnlySpan`1<char>, valuetype System.Span`1<char>, int32&, int32&)
			IL_00a9: ldloc.s 7
			IL_00ab: ldc.i4.3
			IL_00ac: and
			IL_00ad: brfalse.s IL_00b4

			IL_00af: ldarg.2
			IL_00b0: ldc.i4.0
			IL_00b1: stind.i4
			IL_00b2: ldc.i4.0
			IL_00b3: ret

			IL_00b4: ldloca.s 0
			IL_00b6: ldc.i4.0
			IL_00b7: ldloc.s 7
			IL_00b9: call instance valuetype System.Span`1<!0> valuetype System.Span`1<char>::Slice(int32, int32)
			IL_00be: stloc.0
			IL_00bf: ldloc.0
			IL_00c0: call valuetype System.ReadOnlySpan`1<!0> valuetype System.Span`1<char>::op_Implicit(valuetype System.Span`1<!0>)
			IL_00c5: ldarg.1
			IL_00c6: ldloca.s 8
			IL_00c8: ldloca.s 9
			IL_00ca: call bool System.Convert::TryDecodeFromUtf16(valuetype System.ReadOnlySpan`1<char>, valuetype System.Span`1<uint8>, int32&, int32&)
			IL_00cf: brtrue.s IL_00d6

			IL_00d1: ldarg.2
			IL_00d2: ldc.i4.0
			IL_00d3: stind.i4
			IL_00d4: ldc.i4.0
			IL_00d5: ret

			IL_00d6: ldarg.2
			IL_00d7: ldarg.2
			IL_00d8: ldind.i4
			IL_00d9: ldloc.s 9
			IL_00db: add
			IL_00dc: stind.i4
			IL_00dd: ldarga.s chars
			IL_00df: ldloc.s 6
			IL_00e1: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::Slice(int32)
			IL_00e6: starg.s chars
			IL_00e8: ldarga.s bytes
			IL_00ea: ldloc.s 9
			IL_00ec: call instance valuetype System.Span`1<!0> valuetype System.Span`1<uint8>::Slice(int32)
			IL_00f1: starg.s bytes
			IL_00f3: ldloc.s 9
			IL_00f5: ldc.i4.3
			IL_00f6: rem
			IL_00f7: brfalse.s IL_0127

			IL_00f9: ldc.i4.0
			IL_00fa: stloc.s 10
			IL_00fc: br.s IL_011a
			// loop start (head: IL_011a)
				IL_00fe: ldarga.s chars
				IL_0100: ldloc.s 10
				IL_0102: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
				IL_0107: ldind.u2
				IL_0108: call bool System.Convert::IsSpace(char)
				IL_010d: brtrue.s IL_0114

				IL_010f: ldarg.2
				IL_0110: ldc.i4.0
				IL_0111: stind.i4
				IL_0112: ldc.i4.0
				IL_0113: ret

				IL_0114: ldloc.s 10
				IL_0116: ldc.i4.1
				IL_0117: add
				IL_0118: stloc.s 10

				IL_011a: ldloc.s 10
				IL_011c: ldarga.s chars
				IL_011e: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
				IL_0123: blt.s IL_00fe
			// end loop

			IL_0125: ldc.i4.1
			IL_0126: ret

			IL_0127: ldarga.s chars
			IL_0129: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_012e: brtrue IL_0015
		// end loop

		IL_0133: ldc.i4.1
		IL_0134: ret
	} // end of method Convert::TryFromBase64Chars

	.method private hidebysig static 
		void CopyToTempBufferWithoutWhiteSpace (
			valuetype System.ReadOnlySpan`1<char> chars,
			valuetype System.Span`1<char> tempBuffer,
			[out] int32& consumed,
			[out] int32& charsWritten
		) cil managed 
	{
		// Method begins at RVA 0x61d00
		// Code size 84 (0x54)
		.maxstack 4
		.locals (
			[0] int32,
			[1] char,
			[2] int32
		)

		IL_0000: ldarg.3
		IL_0001: ldc.i4.0
		IL_0002: stind.i4
		IL_0003: ldc.i4.0
		IL_0004: stloc.0
		IL_0005: br.s IL_0040
		// loop start (head: IL_0040)
			IL_0007: ldarga.s chars
			IL_0009: ldloc.0
			IL_000a: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_000f: ldind.u2
			IL_0010: stloc.1
			IL_0011: ldloc.1
			IL_0012: call bool System.Convert::IsSpace(char)
			IL_0017: brtrue.s IL_003c

			IL_0019: ldarga.s tempBuffer
			IL_001b: ldarg.3
			IL_001c: ldarg.3
			IL_001d: ldind.i4
			IL_001e: stloc.2
			IL_001f: ldloc.2
			IL_0020: ldc.i4.1
			IL_0021: add
			IL_0022: stind.i4
			IL_0023: ldloc.2
			IL_0024: call instance !0& valuetype System.Span`1<char>::get_Item(int32)
			IL_0029: ldloc.1
			IL_002a: stind.i2
			IL_002b: ldarg.3
			IL_002c: ldind.i4
			IL_002d: ldarga.s tempBuffer
			IL_002f: call instance int32 valuetype System.Span`1<char>::get_Length()
			IL_0034: bne.un.s IL_003c

			IL_0036: ldarg.2
			IL_0037: ldloc.0
			IL_0038: ldc.i4.1
			IL_0039: add
			IL_003a: stind.i4
			IL_003b: ret

			IL_003c: ldloc.0
			IL_003d: ldc.i4.1
			IL_003e: add
			IL_003f: stloc.0

			IL_0040: ldloc.0
			IL_0041: ldarga.s chars
			IL_0043: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0048: blt.s IL_0007
		// end loop

		IL_004a: ldarg.2
		IL_004b: ldarga.s chars
		IL_004d: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0052: stind.i4
		IL_0053: ret
	} // end of method Convert::CopyToTempBufferWithoutWhiteSpace

	.method private hidebysig static 
		bool IsSpace (
			char c
		) cil managed aggressiveinlining 
	{
		.custom instance void System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x61d60
		// Code size 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 32
		IL_0003: beq.s IL_0015

		IL_0005: ldarg.0
		IL_0006: ldc.i4.s 9
		IL_0008: beq.s IL_0015

		IL_000a: ldarg.0
		IL_000b: ldc.i4.s 13
		IL_000d: beq.s IL_0015

		IL_000f: ldarg.0
		IL_0010: ldc.i4.s 10
		IL_0012: ceq
		IL_0014: ret

		IL_0015: ldc.i4.1
		IL_0016: ret
	} // end of method Convert::IsSpace

	.method public hidebysig static 
		uint8[] FromBase64CharArray (
			char[] inArray,
			int32 offset,
			int32 length
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x61d78
		// Code size 112 (0x70)
		.maxstack 3
		.locals (
			[0] char*,
			[1] char& pinned
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "inArray"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.2
		IL_000f: ldc.i4.0
		IL_0010: bge.s IL_0022

		IL_0012: ldstr "length"
		IL_0017: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_001c: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0021: throw

		IL_0022: ldarg.1
		IL_0023: ldc.i4.0
		IL_0024: bge.s IL_0036

		IL_0026: ldstr "offset"
		IL_002b: call string System.SR::get_ArgumentOutOfRange_GenericPositive()
		IL_0030: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0035: throw

		IL_0036: ldarg.1
		IL_0037: ldarg.0
		IL_0038: ldlen
		IL_0039: conv.i4
		IL_003a: ldarg.2
		IL_003b: sub
		IL_003c: ble.s IL_004e

		IL_003e: ldstr "offset"
		IL_0043: call string System.SR::get_ArgumentOutOfRange_OffsetLength()
		IL_0048: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_004d: throw

		IL_004e: ldarg.0
		IL_004f: ldlen
		IL_0050: brtrue.s IL_0058

		IL_0052: call !!0[] System.Array::Empty<uint8>()
		IL_0057: ret

		IL_0058: ldarg.0
		IL_0059: ldc.i4.0
		IL_005a: ldelema System.Char
		IL_005f: stloc.1
		IL_0060: ldloc.1
		IL_0061: conv.u
		IL_0062: stloc.0
		IL_0063: ldloc.0
		IL_0064: ldarg.1
		IL_0065: conv.i
		IL_0066: ldc.i4.2
		IL_0067: mul
		IL_0068: add
		IL_0069: ldarg.2
		IL_006a: call uint8[] System.Convert::FromBase64CharPtr(char*, int32)
		IL_006f: ret
	} // end of method Convert::FromBase64CharArray

	.method private hidebysig static 
		uint8[] FromBase64CharPtr (
			char* inputPtr,
			int32 inputLength
		) cil managed 
	{
		// Method begins at RVA 0x61df4
		// Code size 91 (0x5b)
		.maxstack 3
		.locals (
			[0] int32,
			[1] uint8[],
			[2] int32,
			[3] int32
		)

		IL_0000: br.s IL_0025
		// loop start (head: IL_0025)
			IL_0002: ldarg.0
			IL_0003: ldarg.1
			IL_0004: ldc.i4.1
			IL_0005: sub
			IL_0006: conv.i
			IL_0007: ldc.i4.2
			IL_0008: mul
			IL_0009: add
			IL_000a: ldind.u2
			IL_000b: stloc.2
			IL_000c: ldloc.2
			IL_000d: ldc.i4.s 32
			IL_000f: beq.s IL_0020

			IL_0011: ldloc.2
			IL_0012: ldc.i4.s 10
			IL_0014: beq.s IL_0020

			IL_0016: ldloc.2
			IL_0017: ldc.i4.s 13
			IL_0019: beq.s IL_0020

			IL_001b: ldloc.2
			IL_001c: ldc.i4.s 9
			IL_001e: bne.un.s IL_0029

			IL_0020: ldarg.1
			IL_0021: ldc.i4.1
			IL_0022: sub
			IL_0023: starg.s inputLength

			IL_0025: ldarg.1
			IL_0026: ldc.i4.0
			IL_0027: bgt.s IL_0002
		// end loop

		IL_0029: ldarg.0
		IL_002a: ldarg.1
		IL_002b: call int32 System.Convert::FromBase64_ComputeResultLength(char*, int32)
		IL_0030: stloc.0
		IL_0031: ldloc.0
		IL_0032: newarr System.Byte
		IL_0037: stloc.1
		IL_0038: ldarg.0
		IL_0039: ldarg.1
		IL_003a: newobj instance void valuetype System.ReadOnlySpan`1<char>::.ctor(void*, int32)
		IL_003f: ldloc.1
		IL_0040: call valuetype System.Span`1<!0> valuetype System.Span`1<uint8>::op_Implicit(!0[])
		IL_0045: ldloca.s 3
		IL_0047: call bool System.Convert::TryFromBase64Chars(valuetype System.ReadOnlySpan`1<char>, valuetype System.Span`1<uint8>, int32&)
		IL_004c: brtrue.s IL_0059

		IL_004e: call string System.SR::get_Format_BadBase64Char()
		IL_0053: newobj instance void System.FormatException::.ctor(string)
		IL_0058: throw

		IL_0059: ldloc.1
		IL_005a: ret
	} // end of method Convert::FromBase64CharPtr

	.method private hidebysig static 
		int32 FromBase64_ComputeResultLength (
			char* inputPtr,
			int32 inputLength
		) cil managed 
	{
		// Method begins at RVA 0x61e5c
		// Code size 87 (0x57)
		.maxstack 3
		.locals (
			[0] char*,
			[1] int32,
			[2] int32,
			[3] uint32
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: conv.i
		IL_0003: ldc.i4.2
		IL_0004: mul
		IL_0005: add
		IL_0006: stloc.0
		IL_0007: ldarg.1
		IL_0008: stloc.1
		IL_0009: ldc.i4.0
		IL_000a: stloc.2
		IL_000b: br.s IL_002d
		// loop start (head: IL_002d)
			IL_000d: ldarg.0
			IL_000e: ldind.u2
			IL_000f: stloc.3
			IL_0010: ldarg.0
			IL_0011: ldc.i4.2
			IL_0012: add
			IL_0013: starg.s inputPtr
			IL_0015: ldloc.3
			IL_0016: ldc.i4.s 32
			IL_0018: bgt.un.s IL_0020

			IL_001a: ldloc.1
			IL_001b: ldc.i4.1
			IL_001c: sub
			IL_001d: stloc.1
			IL_001e: br.s IL_002d

			IL_0020: ldloc.3
			IL_0021: ldc.i4.s 61
			IL_0023: bne.un.s IL_002d

			IL_0025: ldloc.1
			IL_0026: ldc.i4.1
			IL_0027: sub
			IL_0028: stloc.1
			IL_0029: ldloc.2
			IL_002a: ldc.i4.1
			IL_002b: add
			IL_002c: stloc.2

			IL_002d: ldarg.0
			IL_002e: ldloc.0
			IL_002f: blt.un.s IL_000d
		// end loop

		IL_0031: ldloc.2
		IL_0032: brfalse.s IL_004f

		IL_0034: ldloc.2
		IL_0035: ldc.i4.1
		IL_0036: bne.un.s IL_003c

		IL_0038: ldc.i4.2
		IL_0039: stloc.2
		IL_003a: br.s IL_004f

		IL_003c: ldloc.2
		IL_003d: ldc.i4.2
		IL_003e: bne.un.s IL_0044

		IL_0040: ldc.i4.1
		IL_0041: stloc.2
		IL_0042: br.s IL_004f

		IL_0044: call string System.SR::get_Format_BadBase64Char()
		IL_0049: newobj instance void System.FormatException::.ctor(string)
		IL_004e: throw

		IL_004f: ldloc.1
		IL_0050: ldc.i4.4
		IL_0051: div
		IL_0052: ldc.i4.3
		IL_0053: mul
		IL_0054: ldloc.2
		IL_0055: add
		IL_0056: ret
	} // end of method Convert::FromBase64_ComputeResultLength

	.method public hidebysig static 
		uint8[] FromHexString (
			string s
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x61ebf
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "s"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string)
		IL_0014: call uint8[] System.Convert::FromHexString(valuetype System.ReadOnlySpan`1<char>)
		IL_0019: ret
	} // end of method Convert::FromHexString

	.method public hidebysig static 
		uint8[] FromHexString (
			valuetype System.ReadOnlySpan`1<char> chars
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x61edc
		// Code size 80 (0x50)
		.maxstack 2
		.locals (
			[0] uint8[]
		)

		IL_0000: ldarga.s 0
		IL_0002: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0007: brtrue.s IL_000f

		IL_0009: call !!0[] System.Array::Empty<uint8>()
		IL_000e: ret

		IL_000f: ldarga.s 0
		IL_0011: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0016: ldc.i4.2
		IL_0017: rem.un
		IL_0018: brfalse.s IL_0025

		IL_001a: call string System.SR::get_Format_BadHexLength()
		IL_001f: newobj instance void System.FormatException::.ctor(string)
		IL_0024: throw

		IL_0025: ldarga.s 0
		IL_0027: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_002c: ldc.i4.1
		IL_002d: shr
		IL_002e: ldc.i4.0
		IL_002f: call !!0[] System.GC::AllocateUninitializedArray<uint8>(int32, bool)
		IL_0034: stloc.0
		IL_0035: ldarg.0
		IL_0036: ldloc.0
		IL_0037: call valuetype System.Span`1<!0> valuetype System.Span`1<uint8>::op_Implicit(!0[])
		IL_003c: call bool System.HexConverter::TryDecodeFromUtf16(valuetype System.ReadOnlySpan`1<char>, valuetype System.Span`1<uint8>)
		IL_0041: brtrue.s IL_004e

		IL_0043: call string System.SR::get_Format_BadHexChar()
		IL_0048: newobj instance void System.FormatException::.ctor(string)
		IL_004d: throw

		IL_004e: ldloc.0
		IL_004f: ret
	} // end of method Convert::FromHexString

	.method public hidebysig static 
		string ToHexString (
			uint8[] inArray
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x61f38
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "inArray"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: newobj instance void valuetype System.ReadOnlySpan`1<uint8>::.ctor(!0[])
		IL_0014: call string System.Convert::ToHexString(valuetype System.ReadOnlySpan`1<uint8>)
		IL_0019: ret
	} // end of method Convert::ToHexString

	.method public hidebysig static 
		string ToHexString (
			uint8[] inArray,
			int32 offset,
			int32 length
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x61f54
		// Code size 92 (0x5c)
		.maxstack 3

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "inArray"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.2
		IL_000f: ldc.i4.0
		IL_0010: bge.s IL_0022

		IL_0012: ldstr "length"
		IL_0017: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_001c: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0021: throw

		IL_0022: ldarg.1
		IL_0023: ldc.i4.0
		IL_0024: bge.s IL_0036

		IL_0026: ldstr "offset"
		IL_002b: call string System.SR::get_ArgumentOutOfRange_GenericPositive()
		IL_0030: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0035: throw

		IL_0036: ldarg.1
		IL_0037: ldarg.0
		IL_0038: ldlen
		IL_0039: conv.i4
		IL_003a: ldarg.2
		IL_003b: sub
		IL_003c: ble.s IL_004e

		IL_003e: ldstr "offset"
		IL_0043: call string System.SR::get_ArgumentOutOfRange_OffsetLength()
		IL_0048: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_004d: throw

		IL_004e: ldarg.0
		IL_004f: ldarg.1
		IL_0050: ldarg.2
		IL_0051: newobj instance void valuetype System.ReadOnlySpan`1<uint8>::.ctor(!0[], int32, int32)
		IL_0056: call string System.Convert::ToHexString(valuetype System.ReadOnlySpan`1<uint8>)
		IL_005b: ret
	} // end of method Convert::ToHexString

	.method public hidebysig static 
		string ToHexString (
			valuetype System.ReadOnlySpan`1<uint8> bytes
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x61fbc
		// Code size 53 (0x35)
		.maxstack 8

		IL_0000: ldarga.s 0
		IL_0002: call instance int32 valuetype System.ReadOnlySpan`1<uint8>::get_Length()
		IL_0007: brtrue.s IL_000f

		IL_0009: ldsfld string System.String::Empty
		IL_000e: ret

		IL_000f: ldarga.s 0
		IL_0011: call instance int32 valuetype System.ReadOnlySpan`1<uint8>::get_Length()
		IL_0016: ldc.i4 1073741823
		IL_001b: ble.s IL_002d

		IL_001d: ldstr "bytes"
		IL_0022: call string System.SR::get_ArgumentOutOfRange_InputTooLarge()
		IL_0027: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_002c: throw

		IL_002d: ldarg.0
		IL_002e: ldc.i4.0
		IL_002f: call string System.HexConverter::ToString(valuetype System.ReadOnlySpan`1<uint8>, valuetype System.HexConverter/Casing)
		IL_0034: ret
	} // end of method Convert::ToHexString

	.method private hidebysig specialname rtspecialname static 
		void .cctor () cil managed 
	{
		// Method begins at RVA 0x61ff4
		// Code size 318 (0x13e)
		.maxstack 4

		IL_0000: ldc.i4.s 19
		IL_0002: newarr System.Type
		IL_0007: dup
		IL_0008: ldc.i4.0
		IL_0009: ldtoken System.Empty
		IL_000e: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0013: stelem.ref
		IL_0014: dup
		IL_0015: ldc.i4.1
		IL_0016: ldtoken System.Object
		IL_001b: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0020: stelem.ref
		IL_0021: dup
		IL_0022: ldc.i4.2
		IL_0023: ldtoken System.DBNull
		IL_0028: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_002d: stelem.ref
		IL_002e: dup
		IL_002f: ldc.i4.3
		IL_0030: ldtoken System.Boolean
		IL_0035: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_003a: stelem.ref
		IL_003b: dup
		IL_003c: ldc.i4.4
		IL_003d: ldtoken System.Char
		IL_0042: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0047: stelem.ref
		IL_0048: dup
		IL_0049: ldc.i4.5
		IL_004a: ldtoken System.SByte
		IL_004f: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0054: stelem.ref
		IL_0055: dup
		IL_0056: ldc.i4.6
		IL_0057: ldtoken System.Byte
		IL_005c: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0061: stelem.ref
		IL_0062: dup
		IL_0063: ldc.i4.7
		IL_0064: ldtoken System.Int16
		IL_0069: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_006e: stelem.ref
		IL_006f: dup
		IL_0070: ldc.i4.8
		IL_0071: ldtoken System.UInt16
		IL_0076: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_007b: stelem.ref
		IL_007c: dup
		IL_007d: ldc.i4.s 9
		IL_007f: ldtoken System.Int32
		IL_0084: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0089: stelem.ref
		IL_008a: dup
		IL_008b: ldc.i4.s 10
		IL_008d: ldtoken System.UInt32
		IL_0092: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0097: stelem.ref
		IL_0098: dup
		IL_0099: ldc.i4.s 11
		IL_009b: ldtoken System.Int64
		IL_00a0: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_00a5: stelem.ref
		IL_00a6: dup
		IL_00a7: ldc.i4.s 12
		IL_00a9: ldtoken System.UInt64
		IL_00ae: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_00b3: stelem.ref
		IL_00b4: dup
		IL_00b5: ldc.i4.s 13
		IL_00b7: ldtoken System.Single
		IL_00bc: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_00c1: stelem.ref
		IL_00c2: dup
		IL_00c3: ldc.i4.s 14
		IL_00c5: ldtoken System.Double
		IL_00ca: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_00cf: stelem.ref
		IL_00d0: dup
		IL_00d1: ldc.i4.s 15
		IL_00d3: ldtoken System.Decimal
		IL_00d8: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_00dd: stelem.ref
		IL_00de: dup
		IL_00df: ldc.i4.s 16
		IL_00e1: ldtoken System.DateTime
		IL_00e6: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_00eb: stelem.ref
		IL_00ec: dup
		IL_00ed: ldc.i4.s 17
		IL_00ef: ldtoken System.Object
		IL_00f4: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_00f9: stelem.ref
		IL_00fa: dup
		IL_00fb: ldc.i4.s 18
		IL_00fd: ldtoken System.String
		IL_0102: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0107: stelem.ref
		IL_0108: stsfld class System.Type[] System.Convert::ConvertTypes
		IL_010d: ldtoken System.Enum
		IL_0112: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0117: stsfld class System.Type System.Convert::EnumType
		IL_011c: ldc.i4.s 65
		IL_011e: newarr System.Char
		IL_0123: dup
		IL_0124: ldtoken field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=130' '<PrivateImplementationDetails>'::C9830DF6956357ACE51CE1F82298578B36EB45A0CFDB8AEC5B9FDA7DB17E8063
		IL_0129: call void System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class System.Array, valuetype System.RuntimeFieldHandle)
		IL_012e: stsfld char[] System.Convert::base64Table
		IL_0133: ldsfld class System.DBNull System.DBNull::Value
		IL_0138: stsfld object System.Convert::DBNull
		IL_013d: ret
	} // end of method Convert::.cctor

	// Properties
	.property valuetype System.ReadOnlySpan`1<int8> DecodingMap()
	{
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.get valuetype System.ReadOnlySpan`1<int8> System.Convert::get_DecodingMap()
	}

} // end of class System.Convert