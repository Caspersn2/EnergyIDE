.class public auto ansi sealed serializable beforefieldinit System.String
	extends System.Object
	implements .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.IComparable,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.Collections.IEnumerable,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.IConvertible,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	class System.Collections.Generic.IEnumerable`1<char>,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
		01 00 02 00 00 00 00 02 00 00
	)
	class System.IComparable`1<string>,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
		01 00 02 00 00 00 00 02 00 00
	)
	class System.IEquatable`1<string>,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.ICloneable
{
	.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
		01 00 01 00 00
	)
	.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	.custom instance void System.Reflection.DefaultMemberAttribute::.ctor(string) = (
		01 00 05 43 68 61 72 73 00 00
	)
	.custom instance void System.Runtime.CompilerServices.TypeForwardedFromAttribute::.ctor(string) = (
		01 00 4b 6d 73 63 6f 72 6c 69 62 2c 20 56 65 72
		73 69 6f 6e 3d 34 2e 30 2e 30 2e 30 2c 20 43 75
		6c 74 75 72 65 3d 6e 65 75 74 72 61 6c 2c 20 50
		75 62 6c 69 63 4b 65 79 54 6f 6b 65 6e 3d 62 37
		37 61 35 63 35 36 31 39 33 34 65 30 38 39 00 00
	)
	// Nested Types
	.class nested private explicit ansi sealed beforefieldinit ProbabilisticMap
		extends System.ValueType
	{
		.pack 0
		.size 32

	} // end of class ProbabilisticMap


	// Fields
	.field public static initonly string Empty
	.custom instance void System.Runtime.CompilerServices.IntrinsicAttribute::.ctor() = (
		01 00 00 00
	)
	.field private initonly notserialized int32 _stringLength
	.field private notserialized char _firstChar

	// Methods
	.method public hidebysig specialname 
		instance char get_Chars (
			int32 index
		) cil managed internalcall 
	{
		.custom instance void System.Runtime.CompilerServices.IntrinsicAttribute::.ctor() = (
			01 00 00 00
		)
	} // end of method String::get_Chars

	.method public hidebysig specialname 
		instance int32 get_Length () cil managed internalcall 
	{
		.custom instance void System.Runtime.CompilerServices.IntrinsicAttribute::.ctor() = (
			01 00 00 00
		)
	} // end of method String::get_Length

	.method assembly hidebysig static 
		string FastAllocateString (
			int32 length
		) cil managed internalcall 
	{
	} // end of method String::FastAllocateString

	.method assembly hidebysig 
		instance void SetTrailByte (
			uint8 data
		) cil managed internalcall 
	{
	} // end of method String::SetTrailByte

	.method assembly hidebysig 
		instance bool TryGetTrailByte (
			[out] uint8& data
		) cil managed internalcall 
	{
	} // end of method String::TryGetTrailByte

	.method private hidebysig 
		instance string Intern () cil managed internalcall 
	{
	} // end of method String::Intern

	.method private hidebysig 
		instance string IsInterned () cil managed internalcall 
	{
	} // end of method String::IsInterned

	.method public hidebysig static 
		string Intern (
			string str
		) cil managed 
	{
		// Method begins at RVA 0x536dc
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "str"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: callvirt instance string System.String::Intern()
		IL_0014: ret
	} // end of method String::Intern

	.method public hidebysig static 
		string IsInterned (
			string str
		) cil managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x536f2
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "str"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: callvirt instance string System.String::IsInterned()
		IL_0014: ret
	} // end of method String::IsInterned

	.method assembly hidebysig static 
		void InternalCopy (
			string src,
			native int dest,
			int32 len
		) cil managed 
	{
		// Method begins at RVA 0x53708
		// Code size 35 (0x23)
		.maxstack 3
		.locals (
			[0] char*,
			[1] char& pinned,
			[2] uint8*,
			[3] uint8*
		)

		IL_0000: ldarg.2
		IL_0001: brtrue.s IL_0004

		IL_0003: ret

		IL_0004: ldarg.0
		IL_0005: ldflda char System.String::_firstChar
		IL_000a: stloc.1
		IL_000b: ldloc.1
		IL_000c: conv.u
		IL_000d: stloc.0
		IL_000e: ldloc.0
		IL_000f: stloc.2
		IL_0010: ldarg.1
		IL_0011: call void* System.IntPtr::op_Explicit(native int)
		IL_0016: stloc.3
		IL_0017: ldloc.3
		IL_0018: ldloc.2
		IL_0019: ldarg.2
		IL_001a: call void System.Buffer::Memcpy(uint8*, uint8*, int32)
		IL_001f: ldc.i4.0
		IL_0020: conv.u
		IL_0021: stloc.1
		IL_0022: ret
	} // end of method String::InternalCopy

	.method assembly hidebysig 
		instance int32 GetBytesFromEncoding (
			uint8* pbNativeBuffer,
			int32 cbNativeBuffer,
			class System.Text.Encoding encoding
		) cil managed 
	{
		// Method begins at RVA 0x53738
		// Code size 26 (0x1a)
		.maxstack 5
		.locals (
			[0] char*,
			[1] char& pinned
		)

		IL_0000: ldarg.0
		IL_0001: ldflda char System.String::_firstChar
		IL_0006: stloc.1
		IL_0007: ldloc.1
		IL_0008: conv.u
		IL_0009: stloc.0
		IL_000a: ldarg.3
		IL_000b: ldloc.0
		IL_000c: ldarg.0
		IL_000d: call instance int32 System.String::get_Length()
		IL_0012: ldarg.1
		IL_0013: ldarg.2
		IL_0014: callvirt instance int32 System.Text.Encoding::GetBytes(char*, int32, uint8*, int32)
		IL_0019: ret
	} // end of method String::GetBytesFromEncoding

	.method private hidebysig static 
		bool EqualsHelper (
			string strA,
			string strB
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x5375e
		// Code size 38 (0x26)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance char& System.String::GetRawStringData()
		IL_0006: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<char, uint8>(!!0&)
		IL_000b: ldarg.1
		IL_000c: callvirt instance char& System.String::GetRawStringData()
		IL_0011: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<char, uint8>(!!0&)
		IL_0016: ldarg.0
		IL_0017: callvirt instance int32 System.String::get_Length()
		IL_001c: conv.i
		IL_001d: ldc.i4.2
		IL_001e: conv.i
		IL_001f: mul
		IL_0020: call bool System.SpanHelpers::SequenceEqual(uint8&, uint8&, native uint)
		IL_0025: ret
	} // end of method String::EqualsHelper

	.method private hidebysig static 
		int32 CompareOrdinalHelper (
			string strA,
			int32 indexA,
			int32 countA,
			string strB,
			int32 indexB,
			int32 countB
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x53785
		// Code size 34 (0x22)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance char& System.String::GetRawStringData()
		IL_0006: ldarg.1
		IL_0007: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_000c: ldarg.2
		IL_000d: ldarg.3
		IL_000e: callvirt instance char& System.String::GetRawStringData()
		IL_0013: ldarg.s indexB
		IL_0015: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_001a: ldarg.s countB
		IL_001c: call int32 System.SpanHelpers::SequenceCompareTo(char&, int32, char&, int32)
		IL_0021: ret
	} // end of method String::CompareOrdinalHelper

	.method assembly hidebysig static 
		bool EqualsOrdinalIgnoreCase (
			string strA,
			string strB
		) cil managed 
	{
		// Method begins at RVA 0x537a8
		// Code size 38 (0x26)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: bne.un.s IL_0006

		IL_0004: ldc.i4.1
		IL_0005: ret

		IL_0006: ldarg.0
		IL_0007: brfalse.s IL_000c

		IL_0009: ldarg.1
		IL_000a: brtrue.s IL_000e

		IL_000c: ldc.i4.0
		IL_000d: ret

		IL_000e: ldarg.0
		IL_000f: callvirt instance int32 System.String::get_Length()
		IL_0014: ldarg.1
		IL_0015: callvirt instance int32 System.String::get_Length()
		IL_001a: beq.s IL_001e

		IL_001c: ldc.i4.0
		IL_001d: ret

		IL_001e: ldarg.0
		IL_001f: ldarg.1
		IL_0020: call bool System.String::EqualsOrdinalIgnoreCaseNoLengthCheck(string, string)
		IL_0025: ret
	} // end of method String::EqualsOrdinalIgnoreCase

	.method private hidebysig static 
		bool EqualsOrdinalIgnoreCaseNoLengthCheck (
			string strA,
			string strB
		) cil managed 
	{
		// Method begins at RVA 0x537cf
		// Code size 24 (0x18)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance char& System.String::GetRawStringData()
		IL_0006: ldarg.1
		IL_0007: callvirt instance char& System.String::GetRawStringData()
		IL_000c: ldarg.1
		IL_000d: callvirt instance int32 System.String::get_Length()
		IL_0012: call bool System.Globalization.Ordinal::EqualsIgnoreCase(char&, char&, int32)
		IL_0017: ret
	} // end of method String::EqualsOrdinalIgnoreCaseNoLengthCheck

	.method private hidebysig static 
		int32 CompareOrdinalHelper (
			string strA,
			string strB
		) cil managed 
	{
		// Method begins at RVA 0x537e8
		// Code size 358 (0x166)
		.maxstack 4
		.locals (
			[0] int32,
			[1] char*,
			[2] char& pinned,
			[3] char*,
			[4] char& pinned,
			[5] char*,
			[6] char*
		)

		IL_0000: ldarg.0
		IL_0001: callvirt instance int32 System.String::get_Length()
		IL_0006: ldarg.1
		IL_0007: callvirt instance int32 System.String::get_Length()
		IL_000c: call int32 System.Math::Min(int32, int32)
		IL_0011: stloc.0
		IL_0012: ldarg.0
		IL_0013: ldflda char System.String::_firstChar
		IL_0018: stloc.2
		IL_0019: ldloc.2
		IL_001a: conv.u
		IL_001b: stloc.1
		IL_001c: ldarg.1
		IL_001d: ldflda char System.String::_firstChar
		IL_0022: stloc.s 4
		IL_0024: ldloc.s 4
		IL_0026: conv.u
		IL_0027: stloc.3
		IL_0028: ldloc.1
		IL_0029: stloc.s 5
		IL_002b: ldloc.3
		IL_002c: stloc.s 6
		IL_002e: ldloc.s 5
		IL_0030: ldc.i4.2
		IL_0031: add
		IL_0032: ldind.u2
		IL_0033: ldloc.s 6
		IL_0035: ldc.i4.2
		IL_0036: add
		IL_0037: ldind.u2
		IL_0038: bne.un IL_015a

		IL_003d: ldloc.0
		IL_003e: ldc.i4.2
		IL_003f: sub
		IL_0040: stloc.0
		IL_0041: ldloc.s 5
		IL_0043: ldc.i4.2
		IL_0044: conv.i
		IL_0045: ldc.i4.2
		IL_0046: mul
		IL_0047: add
		IL_0048: stloc.s 5
		IL_004a: ldloc.s 6
		IL_004c: ldc.i4.2
		IL_004d: conv.i
		IL_004e: ldc.i4.2
		IL_004f: mul
		IL_0050: add
		IL_0051: stloc.s 6
		IL_0053: br.s IL_00c7
		// loop start (head: IL_00c7)
			IL_0055: ldloc.s 5
			IL_0057: ldind.i4
			IL_0058: ldloc.s 6
			IL_005a: ldind.i4
			IL_005b: bne.un IL_014a

			IL_0060: ldloc.s 5
			IL_0062: ldc.i4.2
			IL_0063: conv.i
			IL_0064: ldc.i4.2
			IL_0065: mul
			IL_0066: add
			IL_0067: ldind.i4
			IL_0068: ldloc.s 6
			IL_006a: ldc.i4.2
			IL_006b: conv.i
			IL_006c: ldc.i4.2
			IL_006d: mul
			IL_006e: add
			IL_006f: ldind.i4
			IL_0070: bne.un IL_0138

			IL_0075: ldloc.s 5
			IL_0077: ldc.i4.4
			IL_0078: conv.i
			IL_0079: ldc.i4.2
			IL_007a: mul
			IL_007b: add
			IL_007c: ldind.i4
			IL_007d: ldloc.s 6
			IL_007f: ldc.i4.4
			IL_0080: conv.i
			IL_0081: ldc.i4.2
			IL_0082: mul
			IL_0083: add
			IL_0084: ldind.i4
			IL_0085: bne.un IL_0126

			IL_008a: ldloc.s 5
			IL_008c: ldc.i4.6
			IL_008d: conv.i
			IL_008e: ldc.i4.2
			IL_008f: mul
			IL_0090: add
			IL_0091: ldind.i4
			IL_0092: ldloc.s 6
			IL_0094: ldc.i4.6
			IL_0095: conv.i
			IL_0096: ldc.i4.2
			IL_0097: mul
			IL_0098: add
			IL_0099: ldind.i4
			IL_009a: bne.un.s IL_0112

			IL_009c: ldloc.s 5
			IL_009e: ldc.i4.8
			IL_009f: conv.i
			IL_00a0: ldc.i4.2
			IL_00a1: mul
			IL_00a2: add
			IL_00a3: ldind.i4
			IL_00a4: ldloc.s 6
			IL_00a6: ldc.i4.8
			IL_00a7: conv.i
			IL_00a8: ldc.i4.2
			IL_00a9: mul
			IL_00aa: add
			IL_00ab: ldind.i4
			IL_00ac: bne.un.s IL_00fe

			IL_00ae: ldloc.0
			IL_00af: ldc.i4.s 10
			IL_00b1: sub
			IL_00b2: stloc.0
			IL_00b3: ldloc.s 5
			IL_00b5: ldc.i4.s 10
			IL_00b7: conv.i
			IL_00b8: ldc.i4.2
			IL_00b9: mul
			IL_00ba: add
			IL_00bb: stloc.s 5
			IL_00bd: ldloc.s 6
			IL_00bf: ldc.i4.s 10
			IL_00c1: conv.i
			IL_00c2: ldc.i4.2
			IL_00c3: mul
			IL_00c4: add
			IL_00c5: stloc.s 6

			IL_00c7: ldloc.0
			IL_00c8: ldc.i4.s 10
			IL_00ca: bge.s IL_0055
		// end loop

		IL_00cc: br.s IL_00ec
		// loop start (head: IL_00ec)
			IL_00ce: ldloc.s 5
			IL_00d0: ldind.i4
			IL_00d1: ldloc.s 6
			IL_00d3: ldind.i4
			IL_00d4: bne.un.s IL_014a

			IL_00d6: ldloc.0
			IL_00d7: ldc.i4.2
			IL_00d8: sub
			IL_00d9: stloc.0
			IL_00da: ldloc.s 5
			IL_00dc: ldc.i4.2
			IL_00dd: conv.i
			IL_00de: ldc.i4.2
			IL_00df: mul
			IL_00e0: add
			IL_00e1: stloc.s 5
			IL_00e3: ldloc.s 6
			IL_00e5: ldc.i4.2
			IL_00e6: conv.i
			IL_00e7: ldc.i4.2
			IL_00e8: mul
			IL_00e9: add
			IL_00ea: stloc.s 6

			IL_00ec: ldloc.0
			IL_00ed: ldc.i4.0
			IL_00ee: bgt.s IL_00ce
		// end loop

		IL_00f0: ldarg.0
		IL_00f1: callvirt instance int32 System.String::get_Length()
		IL_00f6: ldarg.1
		IL_00f7: callvirt instance int32 System.String::get_Length()
		IL_00fc: sub
		IL_00fd: ret

		IL_00fe: ldloc.s 5
		IL_0100: ldc.i4.8
		IL_0101: conv.i
		IL_0102: ldc.i4.2
		IL_0103: mul
		IL_0104: add
		IL_0105: stloc.s 5
		IL_0107: ldloc.s 6
		IL_0109: ldc.i4.8
		IL_010a: conv.i
		IL_010b: ldc.i4.2
		IL_010c: mul
		IL_010d: add
		IL_010e: stloc.s 6
		IL_0110: br.s IL_014a

		IL_0112: ldloc.s 5
		IL_0114: ldc.i4.6
		IL_0115: conv.i
		IL_0116: ldc.i4.2
		IL_0117: mul
		IL_0118: add
		IL_0119: stloc.s 5
		IL_011b: ldloc.s 6
		IL_011d: ldc.i4.6
		IL_011e: conv.i
		IL_011f: ldc.i4.2
		IL_0120: mul
		IL_0121: add
		IL_0122: stloc.s 6
		IL_0124: br.s IL_014a

		IL_0126: ldloc.s 5
		IL_0128: ldc.i4.2
		IL_0129: conv.i
		IL_012a: ldc.i4.2
		IL_012b: mul
		IL_012c: add
		IL_012d: stloc.s 5
		IL_012f: ldloc.s 6
		IL_0131: ldc.i4.2
		IL_0132: conv.i
		IL_0133: ldc.i4.2
		IL_0134: mul
		IL_0135: add
		IL_0136: stloc.s 6

		IL_0138: ldloc.s 5
		IL_013a: ldc.i4.2
		IL_013b: conv.i
		IL_013c: ldc.i4.2
		IL_013d: mul
		IL_013e: add
		IL_013f: stloc.s 5
		IL_0141: ldloc.s 6
		IL_0143: ldc.i4.2
		IL_0144: conv.i
		IL_0145: ldc.i4.2
		IL_0146: mul
		IL_0147: add
		IL_0148: stloc.s 6

		IL_014a: ldloc.s 5
		IL_014c: ldind.u2
		IL_014d: ldloc.s 6
		IL_014f: ldind.u2
		IL_0150: beq.s IL_015a

		IL_0152: ldloc.s 5
		IL_0154: ldind.u2
		IL_0155: ldloc.s 6
		IL_0157: ldind.u2
		IL_0158: sub
		IL_0159: ret

		IL_015a: ldloc.s 5
		IL_015c: ldc.i4.2
		IL_015d: add
		IL_015e: ldind.u2
		IL_015f: ldloc.s 6
		IL_0161: ldc.i4.2
		IL_0162: add
		IL_0163: ldind.u2
		IL_0164: sub
		IL_0165: ret
	} // end of method String::CompareOrdinalHelper

	.method public hidebysig static 
		int32 Compare (
			string strA,
			string strB
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x5395a
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.0
		IL_0003: call int32 System.String::Compare(string, string, valuetype System.StringComparison)
		IL_0008: ret
	} // end of method String::Compare

	.method public hidebysig static 
		int32 Compare (
			string strA,
			string strB,
			bool ignoreCase
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x53964
		// Code size 17 (0x11)
		.maxstack 3
		.locals (
			[0] valuetype System.StringComparison
		)

		IL_0000: ldarg.2
		IL_0001: brtrue.s IL_0006

		IL_0003: ldc.i4.0
		IL_0004: br.s IL_0007

		IL_0006: ldc.i4.1

		IL_0007: stloc.0
		IL_0008: ldarg.0
		IL_0009: ldarg.1
		IL_000a: ldloc.0
		IL_000b: call int32 System.String::Compare(string, string, valuetype System.StringComparison)
		IL_0010: ret
	} // end of method String::Compare

	.method public hidebysig static 
		int32 Compare (
			string strA,
			string strB,
			valuetype System.StringComparison comparisonType
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x53984
		// Code size 191 (0xbf)
		.maxstack 4

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: bne.un.s IL_000c

		IL_0004: ldarg.2
		IL_0005: call void System.String::CheckStringComparison(valuetype System.StringComparison)
		IL_000a: ldc.i4.0
		IL_000b: ret

		IL_000c: ldarg.0
		IL_000d: brtrue.s IL_0017

		IL_000f: ldarg.2
		IL_0010: call void System.String::CheckStringComparison(valuetype System.StringComparison)
		IL_0015: ldc.i4.m1
		IL_0016: ret

		IL_0017: ldarg.1
		IL_0018: brtrue.s IL_0022

		IL_001a: ldarg.2
		IL_001b: call void System.String::CheckStringComparison(valuetype System.StringComparison)
		IL_0020: ldc.i4.1
		IL_0021: ret

		IL_0022: ldarg.2
		IL_0023: switch (IL_0042, IL_0042, IL_005a, IL_005a, IL_006d, IL_0091)

		IL_0040: br.s IL_00af

		IL_0042: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()
		IL_0047: callvirt instance class System.Globalization.CompareInfo System.Globalization.CultureInfo::get_CompareInfo()
		IL_004c: ldarg.0
		IL_004d: ldarg.1
		IL_004e: ldarg.2
		IL_004f: call valuetype System.Globalization.CompareOptions System.String::GetCaseCompareOfComparisonCulture(valuetype System.StringComparison)
		IL_0054: callvirt instance int32 System.Globalization.CompareInfo::Compare(string, string, valuetype System.Globalization.CompareOptions)
		IL_0059: ret

		IL_005a: ldsfld class System.Globalization.CompareInfo System.Globalization.CompareInfo::Invariant
		IL_005f: ldarg.0
		IL_0060: ldarg.1
		IL_0061: ldarg.2
		IL_0062: call valuetype System.Globalization.CompareOptions System.String::GetCaseCompareOfComparisonCulture(valuetype System.StringComparison)
		IL_0067: callvirt instance int32 System.Globalization.CompareInfo::Compare(string, string, valuetype System.Globalization.CompareOptions)
		IL_006c: ret

		IL_006d: ldarg.0
		IL_006e: ldfld char System.String::_firstChar
		IL_0073: ldarg.1
		IL_0074: ldfld char System.String::_firstChar
		IL_0079: beq.s IL_0089

		IL_007b: ldarg.0
		IL_007c: ldfld char System.String::_firstChar
		IL_0081: ldarg.1
		IL_0082: ldfld char System.String::_firstChar
		IL_0087: sub
		IL_0088: ret

		IL_0089: ldarg.0
		IL_008a: ldarg.1
		IL_008b: call int32 System.String::CompareOrdinalHelper(string, string)
		IL_0090: ret

		IL_0091: ldarg.0
		IL_0092: callvirt instance char& System.String::GetRawStringData()
		IL_0097: ldarg.0
		IL_0098: callvirt instance int32 System.String::get_Length()
		IL_009d: ldarg.1
		IL_009e: callvirt instance char& System.String::GetRawStringData()
		IL_00a3: ldarg.1
		IL_00a4: callvirt instance int32 System.String::get_Length()
		IL_00a9: call int32 System.Globalization.Ordinal::CompareStringIgnoreCase(char&, int32, char&, int32)
		IL_00ae: ret

		IL_00af: call string System.SR::get_NotSupported_StringComparison()
		IL_00b4: ldstr "comparisonType"
		IL_00b9: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_00be: throw
	} // end of method String::Compare

	.method public hidebysig static 
		int32 Compare (
			string strA,
			string strB,
			class System.Globalization.CultureInfo culture,
			valuetype System.Globalization.CompareOptions options
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x53a50
		// Code size 26 (0x1a)
		.maxstack 4
		.locals (
			[0] class System.Globalization.CultureInfo
		)

		IL_0000: ldarg.2
		IL_0001: dup
		IL_0002: brtrue.s IL_000a

		IL_0004: pop
		IL_0005: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()

		IL_000a: stloc.0
		IL_000b: ldloc.0
		IL_000c: callvirt instance class System.Globalization.CompareInfo System.Globalization.CultureInfo::get_CompareInfo()
		IL_0011: ldarg.0
		IL_0012: ldarg.1
		IL_0013: ldarg.3
		IL_0014: callvirt instance int32 System.Globalization.CompareInfo::Compare(string, string, valuetype System.Globalization.CompareOptions)
		IL_0019: ret
	} // end of method String::Compare

	.method public hidebysig static 
		int32 Compare (
			string strA,
			string strB,
			bool ignoreCase,
			class System.Globalization.CultureInfo culture
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x53a78
		// Code size 18 (0x12)
		.maxstack 4
		.locals (
			[0] valuetype System.Globalization.CompareOptions
		)

		IL_0000: ldarg.2
		IL_0001: brtrue.s IL_0006

		IL_0003: ldc.i4.0
		IL_0004: br.s IL_0007

		IL_0006: ldc.i4.1

		IL_0007: stloc.0
		IL_0008: ldarg.0
		IL_0009: ldarg.1
		IL_000a: ldarg.3
		IL_000b: ldloc.0
		IL_000c: call int32 System.String::Compare(string, string, class System.Globalization.CultureInfo, valuetype System.Globalization.CompareOptions)
		IL_0011: ret
	} // end of method String::Compare

	.method public hidebysig static 
		int32 Compare (
			string strA,
			int32 indexA,
			string strB,
			int32 indexB,
			int32 length
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x53a96
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: ldarg.s length
		IL_0006: ldc.i4.0
		IL_0007: call int32 System.String::Compare(string, int32, string, int32, int32, bool)
		IL_000c: ret
	} // end of method String::Compare

	.method public hidebysig static 
		int32 Compare (
			string strA,
			int32 indexA,
			string strB,
			int32 indexB,
			int32 length,
			bool ignoreCase
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x53aa4
		// Code size 74 (0x4a)
		.maxstack 8
		.locals (
			[0] int32,
			[1] int32,
			[2] valuetype System.Globalization.CompareOptions
		)

		IL_0000: ldarg.s length
		IL_0002: stloc.0
		IL_0003: ldarg.s length
		IL_0005: stloc.1
		IL_0006: ldarg.0
		IL_0007: brfalse.s IL_0018

		IL_0009: ldloc.0
		IL_000a: ldarg.0
		IL_000b: callvirt instance int32 System.String::get_Length()
		IL_0010: ldarg.1
		IL_0011: sub
		IL_0012: call int32 System.Math::Min(int32, int32)
		IL_0017: stloc.0

		IL_0018: ldarg.2
		IL_0019: brfalse.s IL_002a

		IL_001b: ldloc.1
		IL_001c: ldarg.2
		IL_001d: callvirt instance int32 System.String::get_Length()
		IL_0022: ldarg.3
		IL_0023: sub
		IL_0024: call int32 System.Math::Min(int32, int32)
		IL_0029: stloc.1

		IL_002a: ldarg.s ignoreCase
		IL_002c: brtrue.s IL_0031

		IL_002e: ldc.i4.0
		IL_002f: br.s IL_0032

		IL_0031: ldc.i4.1

		IL_0032: stloc.2
		IL_0033: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()
		IL_0038: callvirt instance class System.Globalization.CompareInfo System.Globalization.CultureInfo::get_CompareInfo()
		IL_003d: ldarg.0
		IL_003e: ldarg.1
		IL_003f: ldloc.0
		IL_0040: ldarg.2
		IL_0041: ldarg.3
		IL_0042: ldloc.1
		IL_0043: ldloc.2
		IL_0044: callvirt instance int32 System.Globalization.CompareInfo::Compare(string, int32, int32, string, int32, int32, valuetype System.Globalization.CompareOptions)
		IL_0049: ret
	} // end of method String::Compare

	.method public hidebysig static 
		int32 Compare (
			string strA,
			int32 indexA,
			string strB,
			int32 indexB,
			int32 length,
			bool ignoreCase,
			class System.Globalization.CultureInfo culture
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x53afc
		// Code size 24 (0x18)
		.maxstack 7
		.locals (
			[0] valuetype System.Globalization.CompareOptions
		)

		IL_0000: ldarg.s ignoreCase
		IL_0002: brtrue.s IL_0007

		IL_0004: ldc.i4.0
		IL_0005: br.s IL_0008

		IL_0007: ldc.i4.1

		IL_0008: stloc.0
		IL_0009: ldarg.0
		IL_000a: ldarg.1
		IL_000b: ldarg.2
		IL_000c: ldarg.3
		IL_000d: ldarg.s length
		IL_000f: ldarg.s culture
		IL_0011: ldloc.0
		IL_0012: call int32 System.String::Compare(string, int32, string, int32, int32, class System.Globalization.CultureInfo, valuetype System.Globalization.CompareOptions)
		IL_0017: ret
	} // end of method String::Compare

	.method public hidebysig static 
		int32 Compare (
			string strA,
			int32 indexA,
			string strB,
			int32 indexB,
			int32 length,
			class System.Globalization.CultureInfo culture,
			valuetype System.Globalization.CompareOptions options
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x53b20
		// Code size 74 (0x4a)
		.maxstack 8
		.locals (
			[0] class System.Globalization.CultureInfo,
			[1] int32,
			[2] int32
		)

		IL_0000: ldarg.s culture
		IL_0002: dup
		IL_0003: brtrue.s IL_000b

		IL_0005: pop
		IL_0006: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()

		IL_000b: stloc.0
		IL_000c: ldarg.s length
		IL_000e: stloc.1
		IL_000f: ldarg.s length
		IL_0011: stloc.2
		IL_0012: ldarg.0
		IL_0013: brfalse.s IL_0024

		IL_0015: ldloc.1
		IL_0016: ldarg.0
		IL_0017: callvirt instance int32 System.String::get_Length()
		IL_001c: ldarg.1
		IL_001d: sub
		IL_001e: call int32 System.Math::Min(int32, int32)
		IL_0023: stloc.1

		IL_0024: ldarg.2
		IL_0025: brfalse.s IL_0036

		IL_0027: ldloc.2
		IL_0028: ldarg.2
		IL_0029: callvirt instance int32 System.String::get_Length()
		IL_002e: ldarg.3
		IL_002f: sub
		IL_0030: call int32 System.Math::Min(int32, int32)
		IL_0035: stloc.2

		IL_0036: ldloc.0
		IL_0037: callvirt instance class System.Globalization.CompareInfo System.Globalization.CultureInfo::get_CompareInfo()
		IL_003c: ldarg.0
		IL_003d: ldarg.1
		IL_003e: ldloc.1
		IL_003f: ldarg.2
		IL_0040: ldarg.3
		IL_0041: ldloc.2
		IL_0042: ldarg.s options
		IL_0044: callvirt instance int32 System.Globalization.CompareInfo::Compare(string, int32, int32, string, int32, int32, valuetype System.Globalization.CompareOptions)
		IL_0049: ret
	} // end of method String::Compare

	.method public hidebysig static 
		int32 Compare (
			string strA,
			int32 indexA,
			string strB,
			int32 indexB,
			int32 length,
			valuetype System.StringComparison comparisonType
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x53b78
		// Code size 314 (0x13a)
		.maxstack 8
		.locals (
			[0] int32,
			[1] int32,
			[2] string,
			[3] string
		)

		IL_0000: ldarg.s comparisonType
		IL_0002: call void System.String::CheckStringComparison(valuetype System.StringComparison)
		IL_0007: ldarg.0
		IL_0008: brfalse.s IL_000d

		IL_000a: ldarg.2
		IL_000b: brtrue.s IL_001a

		IL_000d: ldarg.0
		IL_000e: ldarg.2
		IL_000f: bne.un.s IL_0013

		IL_0011: ldc.i4.0
		IL_0012: ret

		IL_0013: ldarg.0
		IL_0014: brfalse.s IL_0018

		IL_0016: ldc.i4.1
		IL_0017: ret

		IL_0018: ldc.i4.m1
		IL_0019: ret

		IL_001a: ldarg.s length
		IL_001c: ldc.i4.0
		IL_001d: bge.s IL_002f

		IL_001f: ldstr "length"
		IL_0024: call string System.SR::get_ArgumentOutOfRange_NegativeLength()
		IL_0029: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_002e: throw

		IL_002f: ldarg.1
		IL_0030: ldc.i4.0
		IL_0031: blt.s IL_0037

		IL_0033: ldarg.3
		IL_0034: ldc.i4.0
		IL_0035: bge.s IL_0054

		IL_0037: ldarg.1
		IL_0038: ldc.i4.0
		IL_0039: blt.s IL_0042

		IL_003b: ldstr "indexB"
		IL_0040: br.s IL_0047

		IL_0042: ldstr "indexA"

		IL_0047: stloc.2
		IL_0048: ldloc.2
		IL_0049: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_004e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0053: throw

		IL_0054: ldarg.0
		IL_0055: callvirt instance int32 System.String::get_Length()
		IL_005a: ldarg.1
		IL_005b: sub
		IL_005c: ldc.i4.0
		IL_005d: blt.s IL_006a

		IL_005f: ldarg.2
		IL_0060: callvirt instance int32 System.String::get_Length()
		IL_0065: ldarg.3
		IL_0066: sub
		IL_0067: ldc.i4.0
		IL_0068: bge.s IL_008e

		IL_006a: ldarg.0
		IL_006b: callvirt instance int32 System.String::get_Length()
		IL_0070: ldarg.1
		IL_0071: sub
		IL_0072: ldc.i4.0
		IL_0073: blt.s IL_007c

		IL_0075: ldstr "indexB"
		IL_007a: br.s IL_0081

		IL_007c: ldstr "indexA"

		IL_0081: stloc.3
		IL_0082: ldloc.3
		IL_0083: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0088: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_008d: throw

		IL_008e: ldarg.s length
		IL_0090: brfalse.s IL_009a

		IL_0092: ldarg.0
		IL_0093: ldarg.2
		IL_0094: bne.un.s IL_009c

		IL_0096: ldarg.1
		IL_0097: ldarg.3
		IL_0098: bne.un.s IL_009c

		IL_009a: ldc.i4.0
		IL_009b: ret

		IL_009c: ldarg.s length
		IL_009e: ldarg.0
		IL_009f: callvirt instance int32 System.String::get_Length()
		IL_00a4: ldarg.1
		IL_00a5: sub
		IL_00a6: call int32 System.Math::Min(int32, int32)
		IL_00ab: stloc.0
		IL_00ac: ldarg.s length
		IL_00ae: ldarg.2
		IL_00af: callvirt instance int32 System.String::get_Length()
		IL_00b4: ldarg.3
		IL_00b5: sub
		IL_00b6: call int32 System.Math::Min(int32, int32)
		IL_00bb: stloc.1
		IL_00bc: ldarg.s comparisonType
		IL_00be: switch (IL_00d9, IL_00d9, IL_00f6, IL_00f6, IL_010e)

		IL_00d7: br.s IL_011a

		IL_00d9: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()
		IL_00de: callvirt instance class System.Globalization.CompareInfo System.Globalization.CultureInfo::get_CompareInfo()
		IL_00e3: ldarg.0
		IL_00e4: ldarg.1
		IL_00e5: ldloc.0
		IL_00e6: ldarg.2
		IL_00e7: ldarg.3
		IL_00e8: ldloc.1
		IL_00e9: ldarg.s comparisonType
		IL_00eb: call valuetype System.Globalization.CompareOptions System.String::GetCaseCompareOfComparisonCulture(valuetype System.StringComparison)
		IL_00f0: callvirt instance int32 System.Globalization.CompareInfo::Compare(string, int32, int32, string, int32, int32, valuetype System.Globalization.CompareOptions)
		IL_00f5: ret

		IL_00f6: ldsfld class System.Globalization.CompareInfo System.Globalization.CompareInfo::Invariant
		IL_00fb: ldarg.0
		IL_00fc: ldarg.1
		IL_00fd: ldloc.0
		IL_00fe: ldarg.2
		IL_00ff: ldarg.3
		IL_0100: ldloc.1
		IL_0101: ldarg.s comparisonType
		IL_0103: call valuetype System.Globalization.CompareOptions System.String::GetCaseCompareOfComparisonCulture(valuetype System.StringComparison)
		IL_0108: callvirt instance int32 System.Globalization.CompareInfo::Compare(string, int32, int32, string, int32, int32, valuetype System.Globalization.CompareOptions)
		IL_010d: ret

		IL_010e: ldarg.0
		IL_010f: ldarg.1
		IL_0110: ldloc.0
		IL_0111: ldarg.2
		IL_0112: ldarg.3
		IL_0113: ldloc.1
		IL_0114: call int32 System.String::CompareOrdinalHelper(string, int32, int32, string, int32, int32)
		IL_0119: ret

		IL_011a: ldarg.0
		IL_011b: callvirt instance char& System.String::GetRawStringData()
		IL_0120: ldarg.1
		IL_0121: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_0126: ldloc.0
		IL_0127: ldarg.2
		IL_0128: callvirt instance char& System.String::GetRawStringData()
		IL_012d: ldarg.3
		IL_012e: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_0133: ldloc.1
		IL_0134: call int32 System.Globalization.Ordinal::CompareStringIgnoreCase(char&, int32, char&, int32)
		IL_0139: ret
	} // end of method String::Compare

	.method public hidebysig static 
		int32 CompareOrdinal (
			string strA,
			string strB
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x53cbe
		// Code size 52 (0x34)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: bne.un.s IL_0006

		IL_0004: ldc.i4.0
		IL_0005: ret

		IL_0006: ldarg.0
		IL_0007: brtrue.s IL_000b

		IL_0009: ldc.i4.m1
		IL_000a: ret

		IL_000b: ldarg.1
		IL_000c: brtrue.s IL_0010

		IL_000e: ldc.i4.1
		IL_000f: ret

		IL_0010: ldarg.0
		IL_0011: ldfld char System.String::_firstChar
		IL_0016: ldarg.1
		IL_0017: ldfld char System.String::_firstChar
		IL_001c: beq.s IL_002c

		IL_001e: ldarg.0
		IL_001f: ldfld char System.String::_firstChar
		IL_0024: ldarg.1
		IL_0025: ldfld char System.String::_firstChar
		IL_002a: sub
		IL_002b: ret

		IL_002c: ldarg.0
		IL_002d: ldarg.1
		IL_002e: call int32 System.String::CompareOrdinalHelper(string, string)
		IL_0033: ret
	} // end of method String::CompareOrdinal

	.method assembly hidebysig static 
		int32 CompareOrdinal (
			valuetype System.ReadOnlySpan`1<char> strA,
			valuetype System.ReadOnlySpan`1<char> strB
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x53cf3
		// Code size 32 (0x20)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<char>(valuetype System.ReadOnlySpan`1<!!0>)
		IL_0006: ldarga.s strA
		IL_0008: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_000d: ldarg.1
		IL_000e: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<char>(valuetype System.ReadOnlySpan`1<!!0>)
		IL_0013: ldarga.s strB
		IL_0015: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_001a: call int32 System.SpanHelpers::SequenceCompareTo(char&, int32, char&, int32)
		IL_001f: ret
	} // end of method String::CompareOrdinal

	.method public hidebysig static 
		int32 CompareOrdinal (
			string strA,
			int32 indexA,
			string strB,
			int32 indexB,
			int32 length
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x53d14
		// Code size 172 (0xac)
		.maxstack 6
		.locals (
			[0] int32,
			[1] int32,
			[2] string,
			[3] string
		)

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0006

		IL_0003: ldarg.2
		IL_0004: brtrue.s IL_0013

		IL_0006: ldarg.0
		IL_0007: ldarg.2
		IL_0008: bne.un.s IL_000c

		IL_000a: ldc.i4.0
		IL_000b: ret

		IL_000c: ldarg.0
		IL_000d: brfalse.s IL_0011

		IL_000f: ldc.i4.1
		IL_0010: ret

		IL_0011: ldc.i4.m1
		IL_0012: ret

		IL_0013: ldarg.s length
		IL_0015: ldc.i4.0
		IL_0016: bge.s IL_0028

		IL_0018: ldstr "length"
		IL_001d: call string System.SR::get_ArgumentOutOfRange_NegativeCount()
		IL_0022: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0027: throw

		IL_0028: ldarg.1
		IL_0029: ldc.i4.0
		IL_002a: blt.s IL_0030

		IL_002c: ldarg.3
		IL_002d: ldc.i4.0
		IL_002e: bge.s IL_004d

		IL_0030: ldarg.1
		IL_0031: ldc.i4.0
		IL_0032: blt.s IL_003b

		IL_0034: ldstr "indexB"
		IL_0039: br.s IL_0040

		IL_003b: ldstr "indexA"

		IL_0040: stloc.2
		IL_0041: ldloc.2
		IL_0042: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0047: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_004c: throw

		IL_004d: ldarg.s length
		IL_004f: ldarg.0
		IL_0050: callvirt instance int32 System.String::get_Length()
		IL_0055: ldarg.1
		IL_0056: sub
		IL_0057: call int32 System.Math::Min(int32, int32)
		IL_005c: stloc.0
		IL_005d: ldarg.s length
		IL_005f: ldarg.2
		IL_0060: callvirt instance int32 System.String::get_Length()
		IL_0065: ldarg.3
		IL_0066: sub
		IL_0067: call int32 System.Math::Min(int32, int32)
		IL_006c: stloc.1
		IL_006d: ldloc.0
		IL_006e: ldc.i4.0
		IL_006f: blt.s IL_0075

		IL_0071: ldloc.1
		IL_0072: ldc.i4.0
		IL_0073: bge.s IL_0092

		IL_0075: ldloc.0
		IL_0076: ldc.i4.0
		IL_0077: blt.s IL_0080

		IL_0079: ldstr "indexB"
		IL_007e: br.s IL_0085

		IL_0080: ldstr "indexA"

		IL_0085: stloc.3
		IL_0086: ldloc.3
		IL_0087: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_008c: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0091: throw

		IL_0092: ldarg.s length
		IL_0094: brfalse.s IL_009e

		IL_0096: ldarg.0
		IL_0097: ldarg.2
		IL_0098: bne.un.s IL_00a0

		IL_009a: ldarg.1
		IL_009b: ldarg.3
		IL_009c: bne.un.s IL_00a0

		IL_009e: ldc.i4.0
		IL_009f: ret

		IL_00a0: ldarg.0
		IL_00a1: ldarg.1
		IL_00a2: ldloc.0
		IL_00a3: ldarg.2
		IL_00a4: ldarg.3
		IL_00a5: ldloc.1
		IL_00a6: call int32 System.String::CompareOrdinalHelper(string, int32, int32, string, int32, int32)
		IL_00ab: ret
	} // end of method String::CompareOrdinal

	.method public final hidebysig newslot virtual 
		instance int32 CompareTo (
			object 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x53dcc
		// Code size 34 (0x22)
		.maxstack 2
		.locals (
			[0] string
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.1
		IL_0004: ret

		IL_0005: ldarg.1
		IL_0006: isinst System.String
		IL_000b: stloc.0
		IL_000c: ldloc.0
		IL_000d: brtrue.s IL_001a

		IL_000f: call string System.SR::get_Arg_MustBeString()
		IL_0014: newobj instance void System.ArgumentException::.ctor(string)
		IL_0019: throw

		IL_001a: ldarg.0
		IL_001b: ldloc.0
		IL_001c: call instance int32 System.String::CompareTo(string)
		IL_0021: ret
	} // end of method String::CompareTo

	.method public final hidebysig newslot virtual 
		instance int32 CompareTo (
			string strB
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x5395a
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.0
		IL_0003: call int32 System.String::Compare(string, string, valuetype System.StringComparison)
		IL_0008: ret
	} // end of method String::CompareTo

	.method public hidebysig 
		instance bool EndsWith (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x53dfa
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.0
		IL_0003: call instance bool System.String::EndsWith(string, valuetype System.StringComparison)
		IL_0008: ret
	} // end of method String::EndsWith

	.method public hidebysig 
		instance bool EndsWith (
			string 'value',
			valuetype System.StringComparison comparisonType
		) cil managed 
	{
		// Method begins at RVA 0x53e04
		// Code size 247 (0xf7)
		.maxstack 4
		.locals (
			[0] int32
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "value"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: ldarg.1
		IL_0010: bne.un.s IL_001a

		IL_0012: ldarg.2
		IL_0013: call void System.String::CheckStringComparison(valuetype System.StringComparison)
		IL_0018: ldc.i4.1
		IL_0019: ret

		IL_001a: ldarg.1
		IL_001b: callvirt instance int32 System.String::get_Length()
		IL_0020: brtrue.s IL_002a

		IL_0022: ldarg.2
		IL_0023: call void System.String::CheckStringComparison(valuetype System.StringComparison)
		IL_0028: ldc.i4.1
		IL_0029: ret

		IL_002a: ldarg.2
		IL_002b: switch (IL_004d, IL_004d, IL_0065, IL_0065, IL_0078, IL_00a4)

		IL_0048: br IL_00e7

		IL_004d: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()
		IL_0052: callvirt instance class System.Globalization.CompareInfo System.Globalization.CultureInfo::get_CompareInfo()
		IL_0057: ldarg.0
		IL_0058: ldarg.1
		IL_0059: ldarg.2
		IL_005a: call valuetype System.Globalization.CompareOptions System.String::GetCaseCompareOfComparisonCulture(valuetype System.StringComparison)
		IL_005f: callvirt instance bool System.Globalization.CompareInfo::IsSuffix(string, string, valuetype System.Globalization.CompareOptions)
		IL_0064: ret

		IL_0065: ldsfld class System.Globalization.CompareInfo System.Globalization.CompareInfo::Invariant
		IL_006a: ldarg.0
		IL_006b: ldarg.1
		IL_006c: ldarg.2
		IL_006d: call valuetype System.Globalization.CompareOptions System.String::GetCaseCompareOfComparisonCulture(valuetype System.StringComparison)
		IL_0072: callvirt instance bool System.Globalization.CompareInfo::IsSuffix(string, string, valuetype System.Globalization.CompareOptions)
		IL_0077: ret

		IL_0078: ldarg.0
		IL_0079: call instance int32 System.String::get_Length()
		IL_007e: ldarg.1
		IL_007f: callvirt instance int32 System.String::get_Length()
		IL_0084: sub
		IL_0085: stloc.0
		IL_0086: ldloc.0
		IL_0087: ldarg.0
		IL_0088: call instance int32 System.String::get_Length()
		IL_008d: bgt.un.s IL_00a2

		IL_008f: ldarg.0
		IL_0090: ldloc.0
		IL_0091: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string, int32)
		IL_0096: ldarg.1
		IL_0097: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_009c: call bool System.MemoryExtensions::SequenceEqual<char>(valuetype System.ReadOnlySpan`1<!!0>, valuetype System.ReadOnlySpan`1<!!0>)
		IL_00a1: ret

		IL_00a2: ldc.i4.0
		IL_00a3: ret

		IL_00a4: ldarg.0
		IL_00a5: call instance int32 System.String::get_Length()
		IL_00aa: ldarg.1
		IL_00ab: callvirt instance int32 System.String::get_Length()
		IL_00b0: blt.s IL_00e5

		IL_00b2: ldarg.0
		IL_00b3: call instance char& System.String::GetRawStringData()
		IL_00b8: ldarg.0
		IL_00b9: call instance int32 System.String::get_Length()
		IL_00be: ldarg.1
		IL_00bf: callvirt instance int32 System.String::get_Length()
		IL_00c4: sub
		IL_00c5: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_00ca: ldarg.1
		IL_00cb: callvirt instance int32 System.String::get_Length()
		IL_00d0: ldarg.1
		IL_00d1: callvirt instance char& System.String::GetRawStringData()
		IL_00d6: ldarg.1
		IL_00d7: callvirt instance int32 System.String::get_Length()
		IL_00dc: call int32 System.Globalization.Ordinal::CompareStringIgnoreCase(char&, int32, char&, int32)
		IL_00e1: ldc.i4.0
		IL_00e2: ceq
		IL_00e4: ret

		IL_00e5: ldc.i4.0
		IL_00e6: ret

		IL_00e7: call string System.SR::get_NotSupported_StringComparison()
		IL_00ec: ldstr "comparisonType"
		IL_00f1: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_00f6: throw
	} // end of method String::EndsWith

	.method public hidebysig 
		instance bool EndsWith (
			string 'value',
			bool ignoreCase,
			class System.Globalization.CultureInfo culture
		) cil managed 
	{
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x53f08
		// Code size 52 (0x34)
		.maxstack 4
		.locals (
			[0] class System.Globalization.CultureInfo
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "value"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: ldarg.1
		IL_0010: bne.un.s IL_0014

		IL_0012: ldc.i4.1
		IL_0013: ret

		IL_0014: ldarg.3
		IL_0015: dup
		IL_0016: brtrue.s IL_001e

		IL_0018: pop
		IL_0019: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()

		IL_001e: stloc.0
		IL_001f: ldloc.0
		IL_0020: callvirt instance class System.Globalization.CompareInfo System.Globalization.CultureInfo::get_CompareInfo()
		IL_0025: ldarg.0
		IL_0026: ldarg.1
		IL_0027: ldarg.2
		IL_0028: brtrue.s IL_002d

		IL_002a: ldc.i4.0
		IL_002b: br.s IL_002e

		IL_002d: ldc.i4.1

		IL_002e: callvirt instance bool System.Globalization.CompareInfo::IsSuffix(string, string, valuetype System.Globalization.CompareOptions)
		IL_0033: ret
	} // end of method String::EndsWith

	.method public hidebysig 
		instance bool EndsWith (
			char 'value'
		) cil managed 
	{
		// Method begins at RVA 0x53f48
		// Code size 31 (0x1f)
		.maxstack 2
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.String::get_Length()
		IL_0006: ldc.i4.1
		IL_0007: sub
		IL_0008: stloc.0
		IL_0009: ldloc.0
		IL_000a: ldarg.0
		IL_000b: call instance int32 System.String::get_Length()
		IL_0010: bge.un.s IL_001d

		IL_0012: ldarg.0
		IL_0013: ldloc.0
		IL_0014: call instance char System.String::get_Chars(int32)
		IL_0019: ldarg.1
		IL_001a: ceq
		IL_001c: ret

		IL_001d: ldc.i4.0
		IL_001e: ret
	} // end of method String::EndsWith

	.method public hidebysig virtual 
		instance bool Equals (
			object obj
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x53f74
		// Code size 42 (0x2a)
		.maxstack 2
		.locals (
			[0] string
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: bne.un.s IL_0006

		IL_0004: ldc.i4.1
		IL_0005: ret

		IL_0006: ldarg.1
		IL_0007: isinst System.String
		IL_000c: stloc.0
		IL_000d: ldloc.0
		IL_000e: brtrue.s IL_0012

		IL_0010: ldc.i4.0
		IL_0011: ret

		IL_0012: ldarg.0
		IL_0013: call instance int32 System.String::get_Length()
		IL_0018: ldloc.0
		IL_0019: callvirt instance int32 System.String::get_Length()
		IL_001e: beq.s IL_0022

		IL_0020: ldc.i4.0
		IL_0021: ret

		IL_0022: ldarg.0
		IL_0023: ldloc.0
		IL_0024: call bool System.String::EqualsHelper(string, string)
		IL_0029: ret
	} // end of method String::Equals

	.method public final hidebysig newslot virtual 
		instance bool Equals (
			string 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x53faa
		// Code size 35 (0x23)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: bne.un.s IL_0006

		IL_0004: ldc.i4.1
		IL_0005: ret

		IL_0006: ldarg.1
		IL_0007: brtrue.s IL_000b

		IL_0009: ldc.i4.0
		IL_000a: ret

		IL_000b: ldarg.0
		IL_000c: call instance int32 System.String::get_Length()
		IL_0011: ldarg.1
		IL_0012: callvirt instance int32 System.String::get_Length()
		IL_0017: beq.s IL_001b

		IL_0019: ldc.i4.0
		IL_001a: ret

		IL_001b: ldarg.0
		IL_001c: ldarg.1
		IL_001d: call bool System.String::EqualsHelper(string, string)
		IL_0022: ret
	} // end of method String::Equals

	.method public hidebysig 
		instance bool Equals (
			string 'value',
			valuetype System.StringComparison comparisonType
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x53fd0
		// Code size 168 (0xa8)
		.maxstack 4

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: bne.un.s IL_000c

		IL_0004: ldarg.2
		IL_0005: call void System.String::CheckStringComparison(valuetype System.StringComparison)
		IL_000a: ldc.i4.1
		IL_000b: ret

		IL_000c: ldarg.1
		IL_000d: brtrue.s IL_0017

		IL_000f: ldarg.2
		IL_0010: call void System.String::CheckStringComparison(valuetype System.StringComparison)
		IL_0015: ldc.i4.0
		IL_0016: ret

		IL_0017: ldarg.2
		IL_0018: switch (IL_0037, IL_0037, IL_0052, IL_0052, IL_0068, IL_0080)

		IL_0035: br.s IL_0098

		IL_0037: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()
		IL_003c: callvirt instance class System.Globalization.CompareInfo System.Globalization.CultureInfo::get_CompareInfo()
		IL_0041: ldarg.0
		IL_0042: ldarg.1
		IL_0043: ldarg.2
		IL_0044: call valuetype System.Globalization.CompareOptions System.String::GetCaseCompareOfComparisonCulture(valuetype System.StringComparison)
		IL_0049: callvirt instance int32 System.Globalization.CompareInfo::Compare(string, string, valuetype System.Globalization.CompareOptions)
		IL_004e: ldc.i4.0
		IL_004f: ceq
		IL_0051: ret

		IL_0052: ldsfld class System.Globalization.CompareInfo System.Globalization.CompareInfo::Invariant
		IL_0057: ldarg.0
		IL_0058: ldarg.1
		IL_0059: ldarg.2
		IL_005a: call valuetype System.Globalization.CompareOptions System.String::GetCaseCompareOfComparisonCulture(valuetype System.StringComparison)
		IL_005f: callvirt instance int32 System.Globalization.CompareInfo::Compare(string, string, valuetype System.Globalization.CompareOptions)
		IL_0064: ldc.i4.0
		IL_0065: ceq
		IL_0067: ret

		IL_0068: ldarg.0
		IL_0069: call instance int32 System.String::get_Length()
		IL_006e: ldarg.1
		IL_006f: callvirt instance int32 System.String::get_Length()
		IL_0074: beq.s IL_0078

		IL_0076: ldc.i4.0
		IL_0077: ret

		IL_0078: ldarg.0
		IL_0079: ldarg.1
		IL_007a: call bool System.String::EqualsHelper(string, string)
		IL_007f: ret

		IL_0080: ldarg.0
		IL_0081: call instance int32 System.String::get_Length()
		IL_0086: ldarg.1
		IL_0087: callvirt instance int32 System.String::get_Length()
		IL_008c: beq.s IL_0090

		IL_008e: ldc.i4.0
		IL_008f: ret

		IL_0090: ldarg.0
		IL_0091: ldarg.1
		IL_0092: call bool System.String::EqualsOrdinalIgnoreCaseNoLengthCheck(string, string)
		IL_0097: ret

		IL_0098: call string System.SR::get_NotSupported_StringComparison()
		IL_009d: ldstr "comparisonType"
		IL_00a2: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_00a7: throw
	} // end of method String::Equals

	.method public hidebysig static 
		bool Equals (
			string a,
			string b
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x54084
		// Code size 36 (0x24)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: bne.un.s IL_0006

		IL_0004: ldc.i4.1
		IL_0005: ret

		IL_0006: ldarg.0
		IL_0007: brfalse.s IL_001a

		IL_0009: ldarg.1
		IL_000a: brfalse.s IL_001a

		IL_000c: ldarg.0
		IL_000d: callvirt instance int32 System.String::get_Length()
		IL_0012: ldarg.1
		IL_0013: callvirt instance int32 System.String::get_Length()
		IL_0018: beq.s IL_001c

		IL_001a: ldc.i4.0
		IL_001b: ret

		IL_001c: ldarg.0
		IL_001d: ldarg.1
		IL_001e: call bool System.String::EqualsHelper(string, string)
		IL_0023: ret
	} // end of method String::Equals

	.method public hidebysig static 
		bool Equals (
			string a,
			string b,
			valuetype System.StringComparison comparisonType
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x540ac
		// Code size 171 (0xab)
		.maxstack 4

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: bne.un.s IL_000c

		IL_0004: ldarg.2
		IL_0005: call void System.String::CheckStringComparison(valuetype System.StringComparison)
		IL_000a: ldc.i4.1
		IL_000b: ret

		IL_000c: ldarg.0
		IL_000d: brfalse.s IL_0012

		IL_000f: ldarg.1
		IL_0010: brtrue.s IL_001a

		IL_0012: ldarg.2
		IL_0013: call void System.String::CheckStringComparison(valuetype System.StringComparison)
		IL_0018: ldc.i4.0
		IL_0019: ret

		IL_001a: ldarg.2
		IL_001b: switch (IL_003a, IL_003a, IL_0055, IL_0055, IL_006b, IL_0083)

		IL_0038: br.s IL_009b

		IL_003a: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()
		IL_003f: callvirt instance class System.Globalization.CompareInfo System.Globalization.CultureInfo::get_CompareInfo()
		IL_0044: ldarg.0
		IL_0045: ldarg.1
		IL_0046: ldarg.2
		IL_0047: call valuetype System.Globalization.CompareOptions System.String::GetCaseCompareOfComparisonCulture(valuetype System.StringComparison)
		IL_004c: callvirt instance int32 System.Globalization.CompareInfo::Compare(string, string, valuetype System.Globalization.CompareOptions)
		IL_0051: ldc.i4.0
		IL_0052: ceq
		IL_0054: ret

		IL_0055: ldsfld class System.Globalization.CompareInfo System.Globalization.CompareInfo::Invariant
		IL_005a: ldarg.0
		IL_005b: ldarg.1
		IL_005c: ldarg.2
		IL_005d: call valuetype System.Globalization.CompareOptions System.String::GetCaseCompareOfComparisonCulture(valuetype System.StringComparison)
		IL_0062: callvirt instance int32 System.Globalization.CompareInfo::Compare(string, string, valuetype System.Globalization.CompareOptions)
		IL_0067: ldc.i4.0
		IL_0068: ceq
		IL_006a: ret

		IL_006b: ldarg.0
		IL_006c: callvirt instance int32 System.String::get_Length()
		IL_0071: ldarg.1
		IL_0072: callvirt instance int32 System.String::get_Length()
		IL_0077: beq.s IL_007b

		IL_0079: ldc.i4.0
		IL_007a: ret

		IL_007b: ldarg.0
		IL_007c: ldarg.1
		IL_007d: call bool System.String::EqualsHelper(string, string)
		IL_0082: ret

		IL_0083: ldarg.0
		IL_0084: callvirt instance int32 System.String::get_Length()
		IL_0089: ldarg.1
		IL_008a: callvirt instance int32 System.String::get_Length()
		IL_008f: beq.s IL_0093

		IL_0091: ldc.i4.0
		IL_0092: ret

		IL_0093: ldarg.0
		IL_0094: ldarg.1
		IL_0095: call bool System.String::EqualsOrdinalIgnoreCaseNoLengthCheck(string, string)
		IL_009a: ret

		IL_009b: call string System.SR::get_NotSupported_StringComparison()
		IL_00a0: ldstr "comparisonType"
		IL_00a5: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_00aa: throw
	} // end of method String::Equals

	.method public hidebysig specialname static 
		bool op_Equality (
			string a,
			string b
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x54163
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call bool System.String::Equals(string, string)
		IL_0007: ret
	} // end of method String::op_Equality

	.method public hidebysig specialname static 
		bool op_Inequality (
			string a,
			string b
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x5416c
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call bool System.String::Equals(string, string)
		IL_0007: ldc.i4.0
		IL_0008: ceq
		IL_000a: ret
	} // end of method String::op_Inequality

	.method public hidebysig virtual 
		instance int32 GetHashCode () cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x54178
		// Code size 38 (0x26)
		.maxstack 5
		.locals (
			[0] uint64
		)

		IL_0000: call uint64 System.Marvin::get_DefaultSeed()
		IL_0005: stloc.0
		IL_0006: ldarg.0
		IL_0007: ldflda char System.String::_firstChar
		IL_000c: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<char, uint8>(!!0&)
		IL_0011: ldarg.0
		IL_0012: ldfld int32 System.String::_stringLength
		IL_0017: ldc.i4.2
		IL_0018: mul
		IL_0019: ldloc.0
		IL_001a: conv.u4
		IL_001b: ldloc.0
		IL_001c: ldc.i4.s 32
		IL_001e: shr.un
		IL_001f: conv.u4
		IL_0020: call int32 System.Marvin::ComputeHash32(uint8&, uint32, uint32, uint32)
		IL_0025: ret
	} // end of method String::GetHashCode

	.method public hidebysig 
		instance int32 GetHashCode (
			valuetype System.StringComparison comparisonType
		) cil managed 
	{
		// Method begins at RVA 0x541aa
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call class System.StringComparer System.StringComparer::FromComparison(valuetype System.StringComparison)
		IL_0006: ldarg.0
		IL_0007: callvirt instance int32 System.StringComparer::GetHashCode(string)
		IL_000c: ret
	} // end of method String::GetHashCode

	.method assembly hidebysig 
		instance int32 GetHashCodeOrdinalIgnoreCase () cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x541b8
		// Code size 31 (0x1f)
		.maxstack 5
		.locals (
			[0] uint64
		)

		IL_0000: call uint64 System.Marvin::get_DefaultSeed()
		IL_0005: stloc.0
		IL_0006: ldarg.0
		IL_0007: ldflda char System.String::_firstChar
		IL_000c: ldarg.0
		IL_000d: ldfld int32 System.String::_stringLength
		IL_0012: ldloc.0
		IL_0013: conv.u4
		IL_0014: ldloc.0
		IL_0015: ldc.i4.s 32
		IL_0017: shr.un
		IL_0018: conv.u4
		IL_0019: call int32 System.Marvin::ComputeHash32OrdinalIgnoreCase(char&, int32, uint32, uint32)
		IL_001e: ret
	} // end of method String::GetHashCodeOrdinalIgnoreCase

	.method public hidebysig static 
		int32 GetHashCode (
			valuetype System.ReadOnlySpan`1<char> 'value'
		) cil managed aggressiveinlining 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x541e4
		// Code size 39 (0x27)
		.maxstack 5
		.locals (
			[0] uint64
		)

		IL_0000: call uint64 System.Marvin::get_DefaultSeed()
		IL_0005: stloc.0
		IL_0006: ldarg.0
		IL_0007: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<char>(valuetype System.ReadOnlySpan`1<!!0>)
		IL_000c: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<char, uint8>(!!0&)
		IL_0011: ldarga.s 'value'
		IL_0013: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0018: ldc.i4.2
		IL_0019: mul
		IL_001a: ldloc.0
		IL_001b: conv.u4
		IL_001c: ldloc.0
		IL_001d: ldc.i4.s 32
		IL_001f: shr.un
		IL_0020: conv.u4
		IL_0021: call int32 System.Marvin::ComputeHash32(uint8&, uint32, uint32, uint32)
		IL_0026: ret
	} // end of method String::GetHashCode

	.method public hidebysig static 
		int32 GetHashCode (
			valuetype System.ReadOnlySpan`1<char> 'value',
			valuetype System.StringComparison comparisonType
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x54218
		// Code size 98 (0x62)
		.maxstack 3

		IL_0000: ldarg.1
		IL_0001: switch (IL_0020, IL_0020, IL_0037, IL_0037, IL_0049, IL_0050)

		IL_001e: br.s IL_0057

		IL_0020: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()
		IL_0025: callvirt instance class System.Globalization.CompareInfo System.Globalization.CultureInfo::get_CompareInfo()
		IL_002a: ldarg.0
		IL_002b: ldarg.1
		IL_002c: call valuetype System.Globalization.CompareOptions System.String::GetCaseCompareOfComparisonCulture(valuetype System.StringComparison)
		IL_0031: callvirt instance int32 System.Globalization.CompareInfo::GetHashCode(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.CompareOptions)
		IL_0036: ret

		IL_0037: ldsfld class System.Globalization.CompareInfo System.Globalization.CompareInfo::Invariant
		IL_003c: ldarg.0
		IL_003d: ldarg.1
		IL_003e: call valuetype System.Globalization.CompareOptions System.String::GetCaseCompareOfComparisonCulture(valuetype System.StringComparison)
		IL_0043: callvirt instance int32 System.Globalization.CompareInfo::GetHashCode(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.CompareOptions)
		IL_0048: ret

		IL_0049: ldarg.0
		IL_004a: call int32 System.String::GetHashCode(valuetype System.ReadOnlySpan`1<char>)
		IL_004f: ret

		IL_0050: ldarg.0
		IL_0051: call int32 System.String::GetHashCodeOrdinalIgnoreCase(valuetype System.ReadOnlySpan`1<char>)
		IL_0056: ret

		IL_0057: ldc.i4.s 24
		IL_0059: ldc.i4.s 41
		IL_005b: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource, valuetype System.ExceptionArgument)
		IL_0060: ldc.i4.0
		IL_0061: ret
	} // end of method String::GetHashCode

	.method assembly hidebysig static 
		int32 GetHashCodeOrdinalIgnoreCase (
			valuetype System.ReadOnlySpan`1<char> 'value'
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x54288
		// Code size 32 (0x20)
		.maxstack 5
		.locals (
			[0] uint64
		)

		IL_0000: call uint64 System.Marvin::get_DefaultSeed()
		IL_0005: stloc.0
		IL_0006: ldarg.0
		IL_0007: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<char>(valuetype System.ReadOnlySpan`1<!!0>)
		IL_000c: ldarga.s 'value'
		IL_000e: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0013: ldloc.0
		IL_0014: conv.u4
		IL_0015: ldloc.0
		IL_0016: ldc.i4.s 32
		IL_0018: shr.un
		IL_0019: conv.u4
		IL_001a: call int32 System.Marvin::ComputeHash32OrdinalIgnoreCase(char&, int32, uint32, uint32)
		IL_001f: ret
	} // end of method String::GetHashCodeOrdinalIgnoreCase

	.method assembly hidebysig 
		instance int32 GetNonRandomizedHashCode () cil managed 
	{
		// Method begins at RVA 0x542b4
		// Code size 110 (0x6e)
		.maxstack 3
		.locals (
			[0] char*,
			[1] char& pinned,
			[2] uint32,
			[3] uint32,
			[4] uint32*,
			[5] int32
		)

		IL_0000: ldarg.0
		IL_0001: ldflda char System.String::_firstChar
		IL_0006: stloc.1
		IL_0007: ldloc.1
		IL_0008: conv.u
		IL_0009: stloc.0
		IL_000a: ldc.i4 352654597
		IL_000f: stloc.2
		IL_0010: ldloc.2
		IL_0011: stloc.3
		IL_0012: ldloc.0
		IL_0013: stloc.s 4
		IL_0015: ldarg.0
		IL_0016: call instance int32 System.String::get_Length()
		IL_001b: stloc.s 5
		IL_001d: br.s IL_004c
		// loop start (head: IL_004c)
			IL_001f: ldloc.s 5
			IL_0021: ldc.i4.4
			IL_0022: sub
			IL_0023: stloc.s 5
			IL_0025: ldloc.2
			IL_0026: ldc.i4.5
			IL_0027: call uint32 System.Numerics.BitOperations::RotateLeft(uint32, int32)
			IL_002c: ldloc.2
			IL_002d: add
			IL_002e: ldloc.s 4
			IL_0030: ldind.u4
			IL_0031: xor
			IL_0032: stloc.2
			IL_0033: ldloc.3
			IL_0034: ldc.i4.5
			IL_0035: call uint32 System.Numerics.BitOperations::RotateLeft(uint32, int32)
			IL_003a: ldloc.3
			IL_003b: add
			IL_003c: ldloc.s 4
			IL_003e: ldc.i4.4
			IL_003f: add
			IL_0040: ldind.u4
			IL_0041: xor
			IL_0042: stloc.3
			IL_0043: ldloc.s 4
			IL_0045: ldc.i4.2
			IL_0046: conv.i
			IL_0047: ldc.i4.4
			IL_0048: mul
			IL_0049: add
			IL_004a: stloc.s 4

			IL_004c: ldloc.s 5
			IL_004e: ldc.i4.2
			IL_004f: bgt.s IL_001f
		// end loop

		IL_0051: ldloc.s 5
		IL_0053: ldc.i4.0
		IL_0054: ble.s IL_0064

		IL_0056: ldloc.3
		IL_0057: ldc.i4.5
		IL_0058: call uint32 System.Numerics.BitOperations::RotateLeft(uint32, int32)
		IL_005d: ldloc.3
		IL_005e: add
		IL_005f: ldloc.s 4
		IL_0061: ldind.u4
		IL_0062: xor
		IL_0063: stloc.3

		IL_0064: ldloc.2
		IL_0065: ldloc.3
		IL_0066: ldc.i4 1566083941
		IL_006b: mul
		IL_006c: add
		IL_006d: ret
	} // end of method String::GetNonRandomizedHashCode

	.method assembly hidebysig 
		instance int32 GetNonRandomizedHashCodeOrdinalIgnoreCase () cil managed 
	{
		// Method begins at RVA 0x54330
		// Code size 178 (0xb2)
		.maxstack 3
		.locals (
			[0] uint32,
			[1] uint32,
			[2] char*,
			[3] char& pinned,
			[4] uint32*,
			[5] int32,
			[6] uint32,
			[7] uint32,
			[8] uint32
		)

		IL_0000: ldc.i4 352654597
		IL_0005: stloc.0
		IL_0006: ldloc.0
		IL_0007: stloc.1
		.try
		{
			IL_0008: ldarg.0
			IL_0009: ldflda char System.String::_firstChar
			IL_000e: stloc.3
			IL_000f: ldloc.3
			IL_0010: conv.u
			IL_0011: stloc.2
			IL_0012: ldloc.2
			IL_0013: stloc.s 4
			IL_0015: ldarg.0
			IL_0016: call instance int32 System.String::get_Length()
			IL_001b: stloc.s 5
			IL_001d: br.s IL_006e
			// loop start (head: IL_006e)
				IL_001f: ldloc.s 4
				IL_0021: ldind.u4
				IL_0022: stloc.s 6
				IL_0024: ldloc.s 4
				IL_0026: ldc.i4.4
				IL_0027: add
				IL_0028: ldind.u4
				IL_0029: stloc.s 7
				IL_002b: ldloc.s 6
				IL_002d: ldloc.s 7
				IL_002f: or
				IL_0030: call bool System.Text.Unicode.Utf16Utility::AllCharsInUInt32AreAscii(uint32)
				IL_0035: brtrue.s IL_0039

				IL_0037: leave.s IL_00ab

				IL_0039: ldloc.s 5
				IL_003b: ldc.i4.4
				IL_003c: sub
				IL_003d: stloc.s 5
				IL_003f: ldloc.0
				IL_0040: ldc.i4.5
				IL_0041: call uint32 System.Numerics.BitOperations::RotateLeft(uint32, int32)
				IL_0046: ldloc.0
				IL_0047: add
				IL_0048: ldloc.s 6
				IL_004a: ldc.i4 2097184
				IL_004f: or
				IL_0050: xor
				IL_0051: stloc.0
				IL_0052: ldloc.1
				IL_0053: ldc.i4.5
				IL_0054: call uint32 System.Numerics.BitOperations::RotateLeft(uint32, int32)
				IL_0059: ldloc.1
				IL_005a: add
				IL_005b: ldloc.s 7
				IL_005d: ldc.i4 2097184
				IL_0062: or
				IL_0063: xor
				IL_0064: stloc.1
				IL_0065: ldloc.s 4
				IL_0067: ldc.i4.2
				IL_0068: conv.i
				IL_0069: ldc.i4.4
				IL_006a: mul
				IL_006b: add
				IL_006c: stloc.s 4

				IL_006e: ldloc.s 5
				IL_0070: ldc.i4.2
				IL_0071: bgt.s IL_001f
			// end loop

			IL_0073: ldloc.s 5
			IL_0075: ldc.i4.0
			IL_0076: ble.s IL_009b

			IL_0078: ldloc.s 4
			IL_007a: ldind.u4
			IL_007b: stloc.s 8
			IL_007d: ldloc.s 8
			IL_007f: call bool System.Text.Unicode.Utf16Utility::AllCharsInUInt32AreAscii(uint32)
			IL_0084: brtrue.s IL_0088

			IL_0086: leave.s IL_00ab

			IL_0088: ldloc.1
			IL_0089: ldc.i4.5
			IL_008a: call uint32 System.Numerics.BitOperations::RotateLeft(uint32, int32)
			IL_008f: ldloc.1
			IL_0090: add
			IL_0091: ldloc.s 8
			IL_0093: ldc.i4 2097184
			IL_0098: or
			IL_0099: xor
			IL_009a: stloc.1

			IL_009b: leave.s IL_00a1
		} // end .try
		finally
		{
			IL_009d: ldc.i4.0
			IL_009e: conv.u
			IL_009f: stloc.3
			IL_00a0: endfinally
		} // end handler

		IL_00a1: ldloc.0
		IL_00a2: ldloc.1
		IL_00a3: ldc.i4 1566083941
		IL_00a8: mul
		IL_00a9: add
		IL_00aa: ret

		IL_00ab: ldarg.0
		IL_00ac: call int32 System.String::'<GetNonRandomizedHashCodeOrdinalIgnoreCase>g__GetNonRandomizedHashCodeOrdinalIgnoreCaseSlow|52_0'(string)
		IL_00b1: ret
	} // end of method String::GetNonRandomizedHashCodeOrdinalIgnoreCase

	.method public hidebysig 
		instance bool StartsWith (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x54400
		// Code size 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "value"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: ldarg.1
		IL_0010: ldc.i4.0
		IL_0011: call instance bool System.String::StartsWith(string, valuetype System.StringComparison)
		IL_0016: ret
	} // end of method String::StartsWith

	.method public hidebysig 
		instance bool StartsWith (
			string 'value',
			valuetype System.StringComparison comparisonType
		) cil managed 
	{
		// Method begins at RVA 0x54418
		// Code size 255 (0xff)
		.maxstack 4

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "value"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: ldarg.1
		IL_0010: bne.un.s IL_001a

		IL_0012: ldarg.2
		IL_0013: call void System.String::CheckStringComparison(valuetype System.StringComparison)
		IL_0018: ldc.i4.1
		IL_0019: ret

		IL_001a: ldarg.1
		IL_001b: callvirt instance int32 System.String::get_Length()
		IL_0020: brtrue.s IL_002a

		IL_0022: ldarg.2
		IL_0023: call void System.String::CheckStringComparison(valuetype System.StringComparison)
		IL_0028: ldc.i4.1
		IL_0029: ret

		IL_002a: ldarg.2
		IL_002b: switch (IL_004d, IL_004d, IL_0065, IL_0065, IL_0078, IL_00c7)

		IL_0048: br IL_00ef

		IL_004d: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()
		IL_0052: callvirt instance class System.Globalization.CompareInfo System.Globalization.CultureInfo::get_CompareInfo()
		IL_0057: ldarg.0
		IL_0058: ldarg.1
		IL_0059: ldarg.2
		IL_005a: call valuetype System.Globalization.CompareOptions System.String::GetCaseCompareOfComparisonCulture(valuetype System.StringComparison)
		IL_005f: callvirt instance bool System.Globalization.CompareInfo::IsPrefix(string, string, valuetype System.Globalization.CompareOptions)
		IL_0064: ret

		IL_0065: ldsfld class System.Globalization.CompareInfo System.Globalization.CompareInfo::Invariant
		IL_006a: ldarg.0
		IL_006b: ldarg.1
		IL_006c: ldarg.2
		IL_006d: call valuetype System.Globalization.CompareOptions System.String::GetCaseCompareOfComparisonCulture(valuetype System.StringComparison)
		IL_0072: callvirt instance bool System.Globalization.CompareInfo::IsPrefix(string, string, valuetype System.Globalization.CompareOptions)
		IL_0077: ret

		IL_0078: ldarg.0
		IL_0079: call instance int32 System.String::get_Length()
		IL_007e: ldarg.1
		IL_007f: callvirt instance int32 System.String::get_Length()
		IL_0084: blt.s IL_0094

		IL_0086: ldarg.0
		IL_0087: ldfld char System.String::_firstChar
		IL_008c: ldarg.1
		IL_008d: ldfld char System.String::_firstChar
		IL_0092: beq.s IL_0096

		IL_0094: ldc.i4.0
		IL_0095: ret

		IL_0096: ldarg.1
		IL_0097: callvirt instance int32 System.String::get_Length()
		IL_009c: ldc.i4.1
		IL_009d: beq.s IL_00c5

		IL_009f: ldarg.0
		IL_00a0: call instance char& System.String::GetRawStringData()
		IL_00a5: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<char, uint8>(!!0&)
		IL_00aa: ldarg.1
		IL_00ab: callvirt instance char& System.String::GetRawStringData()
		IL_00b0: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<char, uint8>(!!0&)
		IL_00b5: ldarg.1
		IL_00b6: callvirt instance int32 System.String::get_Length()
		IL_00bb: conv.i
		IL_00bc: ldc.i4.2
		IL_00bd: conv.i
		IL_00be: mul
		IL_00bf: call bool System.SpanHelpers::SequenceEqual(uint8&, uint8&, native uint)
		IL_00c4: ret

		IL_00c5: ldc.i4.1
		IL_00c6: ret

		IL_00c7: ldarg.0
		IL_00c8: call instance int32 System.String::get_Length()
		IL_00cd: ldarg.1
		IL_00ce: callvirt instance int32 System.String::get_Length()
		IL_00d3: bge.s IL_00d7

		IL_00d5: ldc.i4.0
		IL_00d6: ret

		IL_00d7: ldarg.0
		IL_00d8: call instance char& System.String::GetRawStringData()
		IL_00dd: ldarg.1
		IL_00de: callvirt instance char& System.String::GetRawStringData()
		IL_00e3: ldarg.1
		IL_00e4: callvirt instance int32 System.String::get_Length()
		IL_00e9: call bool System.Globalization.Ordinal::EqualsIgnoreCase(char&, char&, int32)
		IL_00ee: ret

		IL_00ef: call string System.SR::get_NotSupported_StringComparison()
		IL_00f4: ldstr "comparisonType"
		IL_00f9: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_00fe: throw
	} // end of method String::StartsWith

	.method public hidebysig 
		instance bool StartsWith (
			string 'value',
			bool ignoreCase,
			class System.Globalization.CultureInfo culture
		) cil managed 
	{
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x54524
		// Code size 52 (0x34)
		.maxstack 4
		.locals (
			[0] class System.Globalization.CultureInfo
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "value"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: ldarg.1
		IL_0010: bne.un.s IL_0014

		IL_0012: ldc.i4.1
		IL_0013: ret

		IL_0014: ldarg.3
		IL_0015: dup
		IL_0016: brtrue.s IL_001e

		IL_0018: pop
		IL_0019: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()

		IL_001e: stloc.0
		IL_001f: ldloc.0
		IL_0020: callvirt instance class System.Globalization.CompareInfo System.Globalization.CultureInfo::get_CompareInfo()
		IL_0025: ldarg.0
		IL_0026: ldarg.1
		IL_0027: ldarg.2
		IL_0028: brtrue.s IL_002d

		IL_002a: ldc.i4.0
		IL_002b: br.s IL_002e

		IL_002d: ldc.i4.1

		IL_002e: callvirt instance bool System.Globalization.CompareInfo::IsPrefix(string, string, valuetype System.Globalization.CompareOptions)
		IL_0033: ret
	} // end of method String::StartsWith

	.method public hidebysig 
		instance bool StartsWith (
			char 'value'
		) cil managed 
	{
		// Method begins at RVA 0x54564
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.String::get_Length()
		IL_0006: brfalse.s IL_0012

		IL_0008: ldarg.0
		IL_0009: ldfld char System.String::_firstChar
		IL_000e: ldarg.1
		IL_000f: ceq
		IL_0011: ret

		IL_0012: ldc.i4.0
		IL_0013: ret
	} // end of method String::StartsWith

	.method assembly hidebysig static 
		void CheckStringComparison (
			valuetype System.StringComparison comparisonType
		) cil managed 
	{
		// Method begins at RVA 0x54579
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.5
		IL_0002: ble.un.s IL_000d

		IL_0004: ldc.i4.s 24
		IL_0006: ldc.i4.s 41
		IL_0008: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource, valuetype System.ExceptionArgument)

		IL_000d: ret
	} // end of method String::CheckStringComparison

	.method assembly hidebysig static 
		valuetype System.Globalization.CompareOptions GetCaseCompareOfComparisonCulture (
			valuetype System.StringComparison comparisonType
		) cil managed 
	{
		// Method begins at RVA 0x54588
		// Code size 4 (0x4)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.1
		IL_0002: and
		IL_0003: ret
	} // end of method String::GetCaseCompareOfComparisonCulture

	.method private hidebysig static 
		valuetype System.Globalization.CompareOptions GetCompareOptionsFromOrdinalStringComparison (
			valuetype System.StringComparison comparisonType
		) cil managed 
	{
		// Method begins at RVA 0x54590
		// Code size 10 (0xa)
		.maxstack 2
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: stloc.0
		IL_0002: ldloc.0
		IL_0003: ldloc.0
		IL_0004: neg
		IL_0005: and
		IL_0006: ldc.i4.s 28
		IL_0008: shl
		IL_0009: ret
	} // end of method String::GetCompareOptionsFromOrdinalStringComparison

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			char[] 'value'
		) cil managed internalcall 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicDependencyAttribute::.ctor(string) = (
			01 00 13 43 74 6f 72 28 53 79 73 74 65 6d 2e 43
			68 61 72 5b 5d 29 00 00
		)
	} // end of method String::.ctor

	.method private hidebysig 
		instance string Ctor (
			char[] 'value'
		) cil managed 
	{
		// Method begins at RVA 0x545a8
		// Code size 50 (0x32)
		.maxstack 3
		.locals (
			[0] string,
			[1] native uint
		)

		IL_0000: ldarg.1
		IL_0001: brfalse.s IL_0007

		IL_0003: ldarg.1
		IL_0004: ldlen
		IL_0005: brtrue.s IL_000d

		IL_0007: ldsfld string System.String::Empty
		IL_000c: ret

		IL_000d: ldarg.1
		IL_000e: ldlen
		IL_000f: conv.i4
		IL_0010: call string System.String::FastAllocateString(int32)
		IL_0015: stloc.0
		IL_0016: ldloc.0
		IL_0017: callvirt instance int32 System.String::get_Length()
		IL_001c: conv.u
		IL_001d: stloc.1
		IL_001e: ldloc.0
		IL_001f: ldflda char System.String::_firstChar
		IL_0024: ldarg.1
		IL_0025: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<char>(!!0[])
		IL_002a: ldloc.1
		IL_002b: call void System.Buffer::Memmove<char>(!!0&, !!0&, native uint)
		IL_0030: ldloc.0
		IL_0031: ret
	} // end of method String::Ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			char[] 'value',
			int32 startIndex,
			int32 length
		) cil managed internalcall 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicDependencyAttribute::.ctor(string) = (
			01 00 2d 43 74 6f 72 28 53 79 73 74 65 6d 2e 43
			68 61 72 5b 5d 2c 53 79 73 74 65 6d 2e 49 6e 74
			33 32 2c 53 79 73 74 65 6d 2e 49 6e 74 33 32 29
			00 00
		)
	} // end of method String::.ctor

	.method private hidebysig 
		instance string Ctor (
			char[] 'value',
			int32 startIndex,
			int32 length
		) cil managed 
	{
		// Method begins at RVA 0x545e8
		// Code size 128 (0x80)
		.maxstack 3
		.locals (
			[0] string,
			[1] native uint
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "value"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.2
		IL_000f: ldc.i4.0
		IL_0010: bge.s IL_0022

		IL_0012: ldstr "startIndex"
		IL_0017: call string System.SR::get_ArgumentOutOfRange_StartIndex()
		IL_001c: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0021: throw

		IL_0022: ldarg.3
		IL_0023: ldc.i4.0
		IL_0024: bge.s IL_0036

		IL_0026: ldstr "length"
		IL_002b: call string System.SR::get_ArgumentOutOfRange_NegativeLength()
		IL_0030: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0035: throw

		IL_0036: ldarg.2
		IL_0037: ldarg.1
		IL_0038: ldlen
		IL_0039: conv.i4
		IL_003a: ldarg.3
		IL_003b: sub
		IL_003c: ble.s IL_004e

		IL_003e: ldstr "startIndex"
		IL_0043: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0048: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_004d: throw

		IL_004e: ldarg.3
		IL_004f: brtrue.s IL_0057

		IL_0051: ldsfld string System.String::Empty
		IL_0056: ret

		IL_0057: ldarg.3
		IL_0058: call string System.String::FastAllocateString(int32)
		IL_005d: stloc.0
		IL_005e: ldloc.0
		IL_005f: callvirt instance int32 System.String::get_Length()
		IL_0064: conv.u
		IL_0065: stloc.1
		IL_0066: ldloc.0
		IL_0067: ldflda char System.String::_firstChar
		IL_006c: ldarg.1
		IL_006d: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<char>(!!0[])
		IL_0072: ldarg.2
		IL_0073: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_0078: ldloc.1
		IL_0079: call void System.Buffer::Memmove<char>(!!0&, !!0&, native uint)
		IL_007e: ldloc.0
		IL_007f: ret
	} // end of method String::Ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			char* 'value'
		) cil managed internalcall 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicDependencyAttribute::.ctor(string) = (
			01 00 12 43 74 6f 72 28 53 79 73 74 65 6d 2e 43
			68 61 72 2a 29 00 00
		)
	} // end of method String::.ctor

	.method private hidebysig 
		instance string Ctor (
			char* ptr
		) cil managed 
	{
		// Method begins at RVA 0x54674
		// Code size 57 (0x39)
		.maxstack 3
		.locals (
			[0] int32,
			[1] string,
			[2] native uint
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: conv.u
		IL_0003: bne.un.s IL_000b

		IL_0005: ldsfld string System.String::Empty
		IL_000a: ret

		IL_000b: ldarg.1
		IL_000c: call int32 System.String::wcslen(char*)
		IL_0011: stloc.0
		IL_0012: ldloc.0
		IL_0013: brtrue.s IL_001b

		IL_0015: ldsfld string System.String::Empty
		IL_001a: ret

		IL_001b: ldloc.0
		IL_001c: call string System.String::FastAllocateString(int32)
		IL_0021: stloc.1
		IL_0022: ldloc.1
		IL_0023: callvirt instance int32 System.String::get_Length()
		IL_0028: conv.u
		IL_0029: stloc.2
		IL_002a: ldloc.1
		IL_002b: ldflda char System.String::_firstChar
		IL_0030: ldarg.1
		IL_0031: ldloc.2
		IL_0032: call void System.Buffer::Memmove<char>(!!0&, !!0&, native uint)
		IL_0037: ldloc.1
		IL_0038: ret
	} // end of method String::Ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			char* 'value',
			int32 startIndex,
			int32 length
		) cil managed internalcall 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicDependencyAttribute::.ctor(string) = (
			01 00 2c 43 74 6f 72 28 53 79 73 74 65 6d 2e 43
			68 61 72 2a 2c 53 79 73 74 65 6d 2e 49 6e 74 33
			32 2c 53 79 73 74 65 6d 2e 49 6e 74 33 32 29 00 00
		)
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
	} // end of method String::.ctor

	.method private hidebysig 
		instance string Ctor (
			char* ptr,
			int32 startIndex,
			int32 length
		) cil managed 
	{
		// Method begins at RVA 0x546bc
		// Code size 127 (0x7f)
		.maxstack 3
		.locals (
			[0] char*,
			[1] string,
			[2] native uint
		)

		IL_0000: ldarg.3
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0014

		IL_0004: ldstr "length"
		IL_0009: call string System.SR::get_ArgumentOutOfRange_NegativeLength()
		IL_000e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0013: throw

		IL_0014: ldarg.2
		IL_0015: ldc.i4.0
		IL_0016: bge.s IL_0028

		IL_0018: ldstr "startIndex"
		IL_001d: call string System.SR::get_ArgumentOutOfRange_StartIndex()
		IL_0022: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0027: throw

		IL_0028: ldarg.1
		IL_0029: ldarg.2
		IL_002a: conv.i
		IL_002b: ldc.i4.2
		IL_002c: mul
		IL_002d: add
		IL_002e: stloc.0
		IL_002f: ldloc.0
		IL_0030: ldarg.1
		IL_0031: bge.un.s IL_0043

		IL_0033: ldstr "startIndex"
		IL_0038: call string System.SR::get_ArgumentOutOfRange_PartialWCHAR()
		IL_003d: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0042: throw

		IL_0043: ldarg.3
		IL_0044: brtrue.s IL_004c

		IL_0046: ldsfld string System.String::Empty
		IL_004b: ret

		IL_004c: ldarg.1
		IL_004d: ldc.i4.0
		IL_004e: conv.u
		IL_004f: bne.un.s IL_0061

		IL_0051: ldstr "ptr"
		IL_0056: call string System.SR::get_ArgumentOutOfRange_PartialWCHAR()
		IL_005b: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0060: throw

		IL_0061: ldarg.3
		IL_0062: call string System.String::FastAllocateString(int32)
		IL_0067: stloc.1
		IL_0068: ldloc.1
		IL_0069: callvirt instance int32 System.String::get_Length()
		IL_006e: conv.u
		IL_006f: stloc.2
		IL_0070: ldloc.1
		IL_0071: ldflda char System.String::_firstChar
		IL_0076: ldloc.0
		IL_0077: ldloc.2
		IL_0078: call void System.Buffer::Memmove<char>(!!0&, !!0&, native uint)
		IL_007d: ldloc.1
		IL_007e: ret
	} // end of method String::Ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int8* 'value'
		) cil managed internalcall 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicDependencyAttribute::.ctor(string) = (
			01 00 13 43 74 6f 72 28 53 79 73 74 65 6d 2e 53
			42 79 74 65 2a 29 00 00
		)
	} // end of method String::.ctor

	.method private hidebysig 
		instance string Ctor (
			int8* 'value'
		) cil managed 
	{
		// Method begins at RVA 0x54748
		// Code size 28 (0x1c)
		.maxstack 2
		.locals (
			[0] uint8*,
			[1] int32
		)

		IL_0000: ldarg.1
		IL_0001: stloc.0
		IL_0002: ldloc.0
		IL_0003: ldc.i4.0
		IL_0004: conv.u
		IL_0005: bne.un.s IL_000d

		IL_0007: ldsfld string System.String::Empty
		IL_000c: ret

		IL_000d: ldarg.1
		IL_000e: call int32 System.String::strlen(uint8*)
		IL_0013: stloc.1
		IL_0014: ldloc.0
		IL_0015: ldloc.1
		IL_0016: call string System.String::CreateStringForSByteConstructor(uint8*, int32)
		IL_001b: ret
	} // end of method String::Ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int8* 'value',
			int32 startIndex,
			int32 length
		) cil managed internalcall 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicDependencyAttribute::.ctor(string) = (
			01 00 2d 43 74 6f 72 28 53 79 73 74 65 6d 2e 53
			42 79 74 65 2a 2c 53 79 73 74 65 6d 2e 49 6e 74
			33 32 2c 53 79 73 74 65 6d 2e 49 6e 74 33 32 29
			00 00
		)
	} // end of method String::.ctor

	.method private hidebysig 
		instance string Ctor (
			int8* 'value',
			int32 startIndex,
			int32 length
		) cil managed 
	{
		// Method begins at RVA 0x54770
		// Code size 97 (0x61)
		.maxstack 2
		.locals (
			[0] uint8*
		)

		IL_0000: ldarg.2
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0014

		IL_0004: ldstr "startIndex"
		IL_0009: call string System.SR::get_ArgumentOutOfRange_StartIndex()
		IL_000e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0013: throw

		IL_0014: ldarg.3
		IL_0015: ldc.i4.0
		IL_0016: bge.s IL_0028

		IL_0018: ldstr "length"
		IL_001d: call string System.SR::get_ArgumentOutOfRange_NegativeLength()
		IL_0022: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0027: throw

		IL_0028: ldarg.1
		IL_0029: ldc.i4.0
		IL_002a: conv.u
		IL_002b: bne.un.s IL_0041

		IL_002d: ldarg.3
		IL_002e: brtrue.s IL_0036

		IL_0030: ldsfld string System.String::Empty
		IL_0035: ret

		IL_0036: ldstr "value"
		IL_003b: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0040: throw

		IL_0041: ldarg.1
		IL_0042: ldarg.2
		IL_0043: add
		IL_0044: stloc.0
		IL_0045: ldloc.0
		IL_0046: ldarg.1
		IL_0047: bge.un.s IL_0059

		IL_0049: ldstr "value"
		IL_004e: call string System.SR::get_ArgumentOutOfRange_PartialWCHAR()
		IL_0053: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0058: throw

		IL_0059: ldloc.0
		IL_005a: ldarg.3
		IL_005b: call string System.String::CreateStringForSByteConstructor(uint8*, int32)
		IL_0060: ret
	} // end of method String::Ctor

	.method private hidebysig static 
		string CreateStringForSByteConstructor (
			uint8* pb,
			int32 numBytes
		) cil managed 
	{
		// Method begins at RVA 0x547e0
		// Code size 84 (0x54)
		.maxstack 6
		.locals (
			[0] int32,
			[1] string,
			[2] char*,
			[3] char& pinned
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0009

		IL_0003: ldsfld string System.String::Empty
		IL_0008: ret

		IL_0009: ldc.i4.0
		IL_000a: ldc.i4.1
		IL_000b: ldarg.0
		IL_000c: ldarg.1
		IL_000d: ldc.i4.0
		IL_000e: conv.u
		IL_000f: ldc.i4.0
		IL_0010: call int32 Interop/Kernel32::MultiByteToWideChar(uint32, uint32, uint8*, int32, char*, int32)
		IL_0015: stloc.0
		IL_0016: ldloc.0
		IL_0017: brtrue.s IL_0024

		IL_0019: call string System.SR::get_Arg_InvalidANSIString()
		IL_001e: newobj instance void System.ArgumentException::.ctor(string)
		IL_0023: throw

		IL_0024: ldloc.0
		IL_0025: call string System.String::FastAllocateString(int32)
		IL_002a: stloc.1
		IL_002b: ldloc.1
		IL_002c: ldflda char System.String::_firstChar
		IL_0031: stloc.3
		IL_0032: ldloc.3
		IL_0033: conv.u
		IL_0034: stloc.2
		IL_0035: ldc.i4.0
		IL_0036: ldc.i4.1
		IL_0037: ldarg.0
		IL_0038: ldarg.1
		IL_0039: ldloc.2
		IL_003a: ldloc.0
		IL_003b: call int32 Interop/Kernel32::MultiByteToWideChar(uint32, uint32, uint8*, int32, char*, int32)
		IL_0040: stloc.0
		IL_0041: ldc.i4.0
		IL_0042: conv.u
		IL_0043: stloc.3
		IL_0044: ldloc.0
		IL_0045: brtrue.s IL_0052

		IL_0047: call string System.SR::get_Arg_InvalidANSIString()
		IL_004c: newobj instance void System.ArgumentException::.ctor(string)
		IL_0051: throw

		IL_0052: ldloc.1
		IL_0053: ret
	} // end of method String::CreateStringForSByteConstructor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int8* 'value',
			int32 startIndex,
			int32 length,
			class System.Text.Encoding enc
		) cil managed internalcall 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicDependencyAttribute::.ctor(string) = (
			01 00 42 43 74 6f 72 28 53 79 73 74 65 6d 2e 53
			42 79 74 65 2a 2c 53 79 73 74 65 6d 2e 49 6e 74
			33 32 2c 53 79 73 74 65 6d 2e 49 6e 74 33 32 2c
			53 79 73 74 65 6d 2e 54 65 78 74 2e 45 6e 63 6f
			64 69 6e 67 29 00 00
		)
		.param [4]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
	} // end of method String::.ctor

	.method private hidebysig 
		instance string Ctor (
			int8* 'value',
			int32 startIndex,
			int32 length,
			class System.Text.Encoding enc
		) cil managed 
	{
		// Method begins at RVA 0x54840
		// Code size 117 (0x75)
		.maxstack 3
		.locals (
			[0] uint8*
		)

		IL_0000: ldarg.s enc
		IL_0002: brtrue.s IL_000d

		IL_0004: ldarg.1
		IL_0005: ldarg.2
		IL_0006: ldarg.3
		IL_0007: newobj instance void System.String::.ctor(int8*, int32, int32)
		IL_000c: ret

		IL_000d: ldarg.3
		IL_000e: ldc.i4.0
		IL_000f: bge.s IL_0021

		IL_0011: ldstr "length"
		IL_0016: call string System.SR::get_ArgumentOutOfRange_NeedNonNegNum()
		IL_001b: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0020: throw

		IL_0021: ldarg.2
		IL_0022: ldc.i4.0
		IL_0023: bge.s IL_0035

		IL_0025: ldstr "startIndex"
		IL_002a: call string System.SR::get_ArgumentOutOfRange_StartIndex()
		IL_002f: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0034: throw

		IL_0035: ldarg.1
		IL_0036: ldc.i4.0
		IL_0037: conv.u
		IL_0038: bne.un.s IL_004e

		IL_003a: ldarg.3
		IL_003b: brtrue.s IL_0043

		IL_003d: ldsfld string System.String::Empty
		IL_0042: ret

		IL_0043: ldstr "value"
		IL_0048: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_004d: throw

		IL_004e: ldarg.1
		IL_004f: ldarg.2
		IL_0050: add
		IL_0051: stloc.0
		IL_0052: ldloc.0
		IL_0053: ldarg.1
		IL_0054: bge.un.s IL_0066

		IL_0056: ldstr "startIndex"
		IL_005b: call string System.SR::get_ArgumentOutOfRange_PartialWCHAR()
		IL_0060: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0065: throw

		IL_0066: ldarg.s enc
		IL_0068: ldloc.0
		IL_0069: ldarg.3
		IL_006a: newobj instance void valuetype System.ReadOnlySpan`1<uint8>::.ctor(void*, int32)
		IL_006f: callvirt instance string System.Text.Encoding::GetString(valuetype System.ReadOnlySpan`1<uint8>)
		IL_0074: ret
	} // end of method String::Ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			char c,
			int32 count
		) cil managed internalcall 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicDependencyAttribute::.ctor(string) = (
			01 00 1e 43 74 6f 72 28 53 79 73 74 65 6d 2e 43
			68 61 72 2c 53 79 73 74 65 6d 2e 49 6e 74 33 32
			29 00 00
		)
	} // end of method String::.ctor

	.method private hidebysig 
		instance string Ctor (
			char c,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0x548c4
		// Code size 125 (0x7d)
		.maxstack 3
		.locals (
			[0] string,
			[1] char*,
			[2] char& pinned,
			[3] uint32,
			[4] uint32*
		)

		IL_0000: ldarg.2
		IL_0001: ldc.i4.0
		IL_0002: bgt.s IL_001d

		IL_0004: ldarg.2
		IL_0005: brtrue.s IL_000d

		IL_0007: ldsfld string System.String::Empty
		IL_000c: ret

		IL_000d: ldstr "count"
		IL_0012: call string System.SR::get_ArgumentOutOfRange_NegativeCount()
		IL_0017: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_001c: throw

		IL_001d: ldarg.2
		IL_001e: call string System.String::FastAllocateString(int32)
		IL_0023: stloc.0
		IL_0024: ldarg.1
		IL_0025: brfalse.s IL_007b

		IL_0027: ldloc.0
		IL_0028: ldflda char System.String::_firstChar
		IL_002d: stloc.2
		IL_002e: ldloc.2
		IL_002f: conv.u
		IL_0030: stloc.1
		IL_0031: ldarg.1
		IL_0032: ldc.i4.s 16
		IL_0034: shl
		IL_0035: ldarg.1
		IL_0036: or
		IL_0037: stloc.3
		IL_0038: ldloc.1
		IL_0039: stloc.s 4
		IL_003b: ldarg.2
		IL_003c: ldc.i4.4
		IL_003d: blt.s IL_0060

		IL_003f: ldarg.2
		IL_0040: ldc.i4.4
		IL_0041: sub
		IL_0042: starg.s count
		// loop start (head: IL_0044)
			IL_0044: ldloc.s 4
			IL_0046: ldloc.3
			IL_0047: stind.i4
			IL_0048: ldloc.s 4
			IL_004a: ldc.i4.4
			IL_004b: add
			IL_004c: ldloc.3
			IL_004d: stind.i4
			IL_004e: ldloc.s 4
			IL_0050: ldc.i4.2
			IL_0051: conv.i
			IL_0052: ldc.i4.4
			IL_0053: mul
			IL_0054: add
			IL_0055: stloc.s 4
			IL_0057: ldarg.2
			IL_0058: ldc.i4.4
			IL_0059: sub
			IL_005a: starg.s count
			IL_005c: ldarg.2
			IL_005d: ldc.i4.0
			IL_005e: bge.s IL_0044
		// end loop

		IL_0060: ldarg.2
		IL_0061: ldc.i4.2
		IL_0062: and
		IL_0063: brfalse.s IL_006f

		IL_0065: ldloc.s 4
		IL_0067: ldloc.3
		IL_0068: stind.i4
		IL_0069: ldloc.s 4
		IL_006b: ldc.i4.4
		IL_006c: add
		IL_006d: stloc.s 4

		IL_006f: ldarg.2
		IL_0070: ldc.i4.1
		IL_0071: and
		IL_0072: brfalse.s IL_0078

		IL_0074: ldloc.s 4
		IL_0076: ldarg.1
		IL_0077: stind.i2

		IL_0078: ldc.i4.0
		IL_0079: conv.u
		IL_007a: stloc.2

		IL_007b: ldloc.0
		IL_007c: ret
	} // end of method String::Ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			valuetype System.ReadOnlySpan`1<char> 'value'
		) cil managed internalcall 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicDependencyAttribute::.ctor(string) = (
			01 00 26 43 74 6f 72 28 53 79 73 74 65 6d 2e 52
			65 61 64 4f 6e 6c 79 53 70 61 6e 7b 53 79 73 74
			65 6d 2e 43 68 61 72 7d 29 00 00
		)
	} // end of method String::.ctor

	.method private hidebysig 
		instance string Ctor (
			valuetype System.ReadOnlySpan`1<char> 'value'
		) cil managed 
	{
		// Method begins at RVA 0x54950
		// Code size 55 (0x37)
		.maxstack 3
		.locals (
			[0] string
		)

		IL_0000: ldarga.s 'value'
		IL_0002: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0007: brtrue.s IL_000f

		IL_0009: ldsfld string System.String::Empty
		IL_000e: ret

		IL_000f: ldarga.s 'value'
		IL_0011: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0016: call string System.String::FastAllocateString(int32)
		IL_001b: stloc.0
		IL_001c: ldloc.0
		IL_001d: ldflda char System.String::_firstChar
		IL_0022: ldarg.1
		IL_0023: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<char>(valuetype System.ReadOnlySpan`1<!!0>)
		IL_0028: ldarga.s 'value'
		IL_002a: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_002f: conv.u
		IL_0030: call void System.Buffer::Memmove<char>(!!0&, !!0&, native uint)
		IL_0035: ldloc.0
		IL_0036: ret
	} // end of method String::Ctor

	.method public hidebysig static 
		string Create<TState> (
			int32 length,
			!!TState state,
			class System.Buffers.SpanAction`2<char, !!TState> action
		) cil managed 
	{
		.param type TState
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x54994
		// Code size 66 (0x42)
		.maxstack 3
		.locals (
			[0] string
		)

		IL_0000: ldarg.2
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "action"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: ldc.i4.0
		IL_0010: bgt.s IL_0026

		IL_0012: ldarg.0
		IL_0013: brtrue.s IL_001b

		IL_0015: ldsfld string System.String::Empty
		IL_001a: ret

		IL_001b: ldstr "length"
		IL_0020: newobj instance void System.ArgumentOutOfRangeException::.ctor(string)
		IL_0025: throw

		IL_0026: ldarg.0
		IL_0027: call string System.String::FastAllocateString(int32)
		IL_002c: stloc.0
		IL_002d: ldarg.2
		IL_002e: ldloc.0
		IL_002f: callvirt instance char& System.String::GetRawStringData()
		IL_0034: ldarg.0
		IL_0035: newobj instance void valuetype System.Span`1<char>::.ctor(!0&, int32)
		IL_003a: ldarg.1
		IL_003b: callvirt instance void class System.Buffers.SpanAction`2<char, !!TState>::Invoke(valuetype System.Span`1<!0>, !1)
		IL_0040: ldloc.0
		IL_0041: ret
	} // end of method String::Create

	.method public hidebysig specialname static 
		valuetype System.ReadOnlySpan`1<char> op_Implicit (
			string 'value'
		) cil managed aggressiveinlining 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x549e4
		// Code size 31 (0x1f)
		.maxstack 2
		.locals (
			[0] valuetype System.ReadOnlySpan`1<char>
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000d

		IL_0003: ldloca.s 0
		IL_0005: initobj valuetype System.ReadOnlySpan`1<char>
		IL_000b: ldloc.0
		IL_000c: ret

		IL_000d: ldarg.0
		IL_000e: callvirt instance char& System.String::GetRawStringData()
		IL_0013: ldarg.0
		IL_0014: callvirt instance int32 System.String::get_Length()
		IL_0019: newobj instance void valuetype System.ReadOnlySpan`1<char>::.ctor(!0&, int32)
		IL_001e: ret
	} // end of method String::op_Implicit

	.method assembly hidebysig 
		instance bool TryGetSpan (
			int32 startIndex,
			int32 count,
			[out] valuetype System.ReadOnlySpan`1<char>& slice
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x54a0f
		// Code size 55 (0x37)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: call instance int32 System.String::get_Length()
		IL_0007: bgt.un.s IL_0014

		IL_0009: ldarg.2
		IL_000a: ldarg.0
		IL_000b: call instance int32 System.String::get_Length()
		IL_0010: ldarg.1
		IL_0011: sub
		IL_0012: ble.un.s IL_001d

		IL_0014: ldarg.3
		IL_0015: initobj valuetype System.ReadOnlySpan`1<char>
		IL_001b: ldc.i4.0
		IL_001c: ret

		IL_001d: ldarg.3
		IL_001e: ldarg.0
		IL_001f: ldflda char System.String::_firstChar
		IL_0024: ldarg.1
		IL_0025: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_002a: ldarg.2
		IL_002b: newobj instance void valuetype System.ReadOnlySpan`1<char>::.ctor(!0&, int32)
		IL_0030: stobj valuetype System.ReadOnlySpan`1<char>
		IL_0035: ldc.i4.1
		IL_0036: ret
	} // end of method String::TryGetSpan

	.method public final hidebysig newslot virtual 
		instance object Clone () cil managed 
	{
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method String::Clone

	.method public hidebysig static 
		string Copy (
			string str
		) cil managed 
	{
		// Method begins at RVA 0x54a48
		// Code size 54 (0x36)
		.maxstack 3
		.locals (
			[0] string,
			[1] native uint
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "str"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: callvirt instance int32 System.String::get_Length()
		IL_0014: call string System.String::FastAllocateString(int32)
		IL_0019: stloc.0
		IL_001a: ldloc.0
		IL_001b: callvirt instance int32 System.String::get_Length()
		IL_0020: conv.u
		IL_0021: stloc.1
		IL_0022: ldloc.0
		IL_0023: ldflda char System.String::_firstChar
		IL_0028: ldarg.0
		IL_0029: ldflda char System.String::_firstChar
		IL_002e: ldloc.1
		IL_002f: call void System.Buffer::Memmove<char>(!!0&, !!0&, native uint)
		IL_0034: ldloc.0
		IL_0035: ret
	} // end of method String::Copy

	.method public hidebysig 
		instance void CopyTo (
			int32 sourceIndex,
			char[] destination,
			int32 destinationIndex,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0x54a8c
		// Code size 145 (0x91)
		.maxstack 3

		IL_0000: ldarg.2
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "destination"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.s count
		IL_0010: ldc.i4.0
		IL_0011: bge.s IL_0023

		IL_0013: ldstr "count"
		IL_0018: call string System.SR::get_ArgumentOutOfRange_NegativeCount()
		IL_001d: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0022: throw

		IL_0023: ldarg.1
		IL_0024: ldc.i4.0
		IL_0025: bge.s IL_0037

		IL_0027: ldstr "sourceIndex"
		IL_002c: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0031: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0036: throw

		IL_0037: ldarg.s count
		IL_0039: ldarg.0
		IL_003a: call instance int32 System.String::get_Length()
		IL_003f: ldarg.1
		IL_0040: sub
		IL_0041: ble.s IL_0053

		IL_0043: ldstr "sourceIndex"
		IL_0048: call string System.SR::get_ArgumentOutOfRange_IndexCount()
		IL_004d: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0052: throw

		IL_0053: ldarg.3
		IL_0054: ldarg.2
		IL_0055: ldlen
		IL_0056: conv.i4
		IL_0057: ldarg.s count
		IL_0059: sub
		IL_005a: bgt.s IL_0060

		IL_005c: ldarg.3
		IL_005d: ldc.i4.0
		IL_005e: bge.s IL_0070

		IL_0060: ldstr "destinationIndex"
		IL_0065: call string System.SR::get_ArgumentOutOfRange_IndexCount()
		IL_006a: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_006f: throw

		IL_0070: ldarg.2
		IL_0071: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<char>(!!0[])
		IL_0076: ldarg.3
		IL_0077: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_007c: ldarg.0
		IL_007d: ldflda char System.String::_firstChar
		IL_0082: ldarg.1
		IL_0083: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_0088: ldarg.s count
		IL_008a: conv.u
		IL_008b: call void System.Buffer::Memmove<char>(!!0&, !!0&, native uint)
		IL_0090: ret
	} // end of method String::CopyTo

	.method public hidebysig 
		instance char[] ToCharArray () cil managed 
	{
		// Method begins at RVA 0x54b2c
		// Code size 52 (0x34)
		.maxstack 3
		.locals (
			[0] char[]
		)

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.String::get_Length()
		IL_0006: brtrue.s IL_000e

		IL_0008: call !!0[] System.Array::Empty<char>()
		IL_000d: ret

		IL_000e: ldarg.0
		IL_000f: call instance int32 System.String::get_Length()
		IL_0014: newarr System.Char
		IL_0019: stloc.0
		IL_001a: ldloc.0
		IL_001b: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<char>(!!0[])
		IL_0020: ldarg.0
		IL_0021: ldflda char System.String::_firstChar
		IL_0026: ldarg.0
		IL_0027: call instance int32 System.String::get_Length()
		IL_002c: conv.u
		IL_002d: call void System.Buffer::Memmove<char>(!!0&, !!0&, native uint)
		IL_0032: ldloc.0
		IL_0033: ret
	} // end of method String::ToCharArray

	.method public hidebysig 
		instance char[] ToCharArray (
			int32 startIndex,
			int32 length
		) cil managed 
	{
		// Method begins at RVA 0x54b6c
		// Code size 103 (0x67)
		.maxstack 3
		.locals (
			[0] char[]
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: blt.s IL_0018

		IL_0004: ldarg.1
		IL_0005: ldarg.0
		IL_0006: call instance int32 System.String::get_Length()
		IL_000b: bgt.s IL_0018

		IL_000d: ldarg.1
		IL_000e: ldarg.0
		IL_000f: call instance int32 System.String::get_Length()
		IL_0014: ldarg.2
		IL_0015: sub
		IL_0016: ble.s IL_0028

		IL_0018: ldstr "startIndex"
		IL_001d: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0022: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0027: throw

		IL_0028: ldarg.2
		IL_0029: ldc.i4.0
		IL_002a: bgt.s IL_0045

		IL_002c: ldarg.2
		IL_002d: brtrue.s IL_0035

		IL_002f: call !!0[] System.Array::Empty<char>()
		IL_0034: ret

		IL_0035: ldstr "length"
		IL_003a: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_003f: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0044: throw

		IL_0045: ldarg.2
		IL_0046: newarr System.Char
		IL_004b: stloc.0
		IL_004c: ldloc.0
		IL_004d: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<char>(!!0[])
		IL_0052: ldarg.0
		IL_0053: ldflda char System.String::_firstChar
		IL_0058: ldarg.1
		IL_0059: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_005e: ldarg.2
		IL_005f: conv.u
		IL_0060: call void System.Buffer::Memmove<char>(!!0&, !!0&, native uint)
		IL_0065: ldloc.0
		IL_0066: ret
	} // end of method String::ToCharArray

	.method public hidebysig static 
		bool IsNullOrEmpty (
			string 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		.param [1]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullWhenAttribute::.ctor(bool) = (
				01 00 00 00 00
			)
		// Method begins at RVA 0x54bdf
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_000e

		IL_0003: ldc.i4.0
		IL_0004: ldarg.0
		IL_0005: callvirt instance int32 System.String::get_Length()
		IL_000a: bge.un.s IL_000e

		IL_000c: ldc.i4.0
		IL_000d: ret

		IL_000e: ldc.i4.1
		IL_000f: ret
	} // end of method String::IsNullOrEmpty

	.method public hidebysig static 
		bool IsNullOrWhiteSpace (
			string 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullWhenAttribute::.ctor(bool) = (
				01 00 00 00 00
			)
		// Method begins at RVA 0x54bf0
		// Code size 40 (0x28)
		.maxstack 2
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.1
		IL_0004: ret

		IL_0005: ldc.i4.0
		IL_0006: stloc.0
		IL_0007: br.s IL_001d
		// loop start (head: IL_001d)
			IL_0009: ldarg.0
			IL_000a: ldloc.0
			IL_000b: callvirt instance char System.String::get_Chars(int32)
			IL_0010: call bool System.Char::IsWhiteSpace(char)
			IL_0015: brtrue.s IL_0019

			IL_0017: ldc.i4.0
			IL_0018: ret

			IL_0019: ldloc.0
			IL_001a: ldc.i4.1
			IL_001b: add
			IL_001c: stloc.0

			IL_001d: ldloc.0
			IL_001e: ldarg.0
			IL_001f: callvirt instance int32 System.String::get_Length()
			IL_0024: blt.s IL_0009
		// end loop

		IL_0026: ldc.i4.1
		IL_0027: ret
	} // end of method String::IsNullOrWhiteSpace

	.method public hidebysig 
		instance char& modreq(System.Runtime.InteropServices.InAttribute) GetPinnableReference () cil managed 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		.custom instance void System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype System.ComponentModel.EditorBrowsableState) = (
			01 00 01 00 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x54c24
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldflda char System.String::_firstChar
		IL_0006: ret
	} // end of method String::GetPinnableReference

	.method assembly hidebysig 
		instance char& GetRawStringData () cil managed 
	{
		// Method begins at RVA 0x54c24
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldflda char System.String::_firstChar
		IL_0006: ret
	} // end of method String::GetRawStringData

	.method assembly hidebysig static 
		string CreateStringFromEncoding (
			uint8* bytes,
			int32 byteLength,
			class System.Text.Encoding encoding
		) cil managed 
	{
		// Method begins at RVA 0x54c2c
		// Code size 52 (0x34)
		.maxstack 5
		.locals (
			[0] int32,
			[1] string,
			[2] char*,
			[3] char& pinned,
			[4] int32
		)

		IL_0000: ldarg.2
		IL_0001: ldarg.0
		IL_0002: ldarg.1
		IL_0003: callvirt instance int32 System.Text.Encoding::GetCharCount(uint8*, int32)
		IL_0008: stloc.0
		IL_0009: ldloc.0
		IL_000a: brtrue.s IL_0012

		IL_000c: ldsfld string System.String::Empty
		IL_0011: ret

		IL_0012: ldloc.0
		IL_0013: call string System.String::FastAllocateString(int32)
		IL_0018: stloc.1
		IL_0019: ldloc.1
		IL_001a: ldflda char System.String::_firstChar
		IL_001f: stloc.3
		IL_0020: ldloc.3
		IL_0021: conv.u
		IL_0022: stloc.2
		IL_0023: ldarg.2
		IL_0024: ldarg.0
		IL_0025: ldarg.1
		IL_0026: ldloc.2
		IL_0027: ldloc.0
		IL_0028: callvirt instance int32 System.Text.Encoding::GetChars(uint8*, int32, char*, int32)
		IL_002d: stloc.s 4
		IL_002f: ldc.i4.0
		IL_0030: conv.u
		IL_0031: stloc.3
		IL_0032: ldloc.1
		IL_0033: ret
	} // end of method String::CreateStringFromEncoding

	.method assembly hidebysig static 
		string CreateFromChar (
			char c
		) cil managed 
	{
		// Method begins at RVA 0x54c6c
		// Code size 16 (0x10)
		.maxstack 2
		.locals (
			[0] string
		)

		IL_0000: ldc.i4.1
		IL_0001: call string System.String::FastAllocateString(int32)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldarg.0
		IL_0009: stfld char System.String::_firstChar
		IL_000e: ldloc.0
		IL_000f: ret
	} // end of method String::CreateFromChar

	.method assembly hidebysig static 
		string CreateFromChar (
			char c1,
			char c2
		) cil managed 
	{
		// Method begins at RVA 0x54c88
		// Code size 30 (0x1e)
		.maxstack 2
		.locals (
			[0] string
		)

		IL_0000: ldc.i4.2
		IL_0001: call string System.String::FastAllocateString(int32)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldarg.0
		IL_0009: stfld char System.String::_firstChar
		IL_000e: ldloc.0
		IL_000f: ldflda char System.String::_firstChar
		IL_0014: ldc.i4.1
		IL_0015: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_001a: ldarg.1
		IL_001b: stind.i2
		IL_001c: ldloc.0
		IL_001d: ret
	} // end of method String::CreateFromChar

	.method assembly hidebysig static 
		void wstrcpy (
			char* dmem,
			char* smem,
			int32 charCount
		) cil managed 
	{
		// Method begins at RVA 0x54cb2
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldc.i4.2
		IL_0004: mul
		IL_0005: conv.u
		IL_0006: call void System.Buffer::Memmove(uint8*, uint8*, native uint)
		IL_000b: ret
	} // end of method String::wstrcpy

	.method public hidebysig virtual 
		instance string ToString () cil managed 
	{
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method String::ToString

	.method public final hidebysig newslot virtual 
		instance string ToString (
			class System.IFormatProvider provider
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method String::ToString

	.method public hidebysig 
		instance class System.CharEnumerator GetEnumerator () cil managed 
	{
		// Method begins at RVA 0x54cbf
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void System.CharEnumerator::.ctor(string)
		IL_0006: ret
	} // end of method String::GetEnumerator

	.method private final hidebysig newslot virtual 
		instance class System.Collections.Generic.IEnumerator`1<char> 'System.Collections.Generic.IEnumerable<System.Char>.GetEnumerator' () cil managed 
	{
		.override method instance class System.Collections.Generic.IEnumerator`1<!0> class System.Collections.Generic.IEnumerable`1<char>::GetEnumerator()
		// Method begins at RVA 0x54cbf
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void System.CharEnumerator::.ctor(string)
		IL_0006: ret
	} // end of method String::'System.Collections.Generic.IEnumerable<System.Char>.GetEnumerator'

	.method private final hidebysig newslot virtual 
		instance class System.Collections.IEnumerator System.Collections.IEnumerable.GetEnumerator () cil managed 
	{
		.override method instance class System.Collections.IEnumerator System.Collections.IEnumerable::GetEnumerator()
		// Method begins at RVA 0x54cbf
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void System.CharEnumerator::.ctor(string)
		IL_0006: ret
	} // end of method String::System.Collections.IEnumerable.GetEnumerator

	.method public hidebysig 
		instance valuetype System.Text.StringRuneEnumerator EnumerateRunes () cil managed 
	{
		// Method begins at RVA 0x54cc7
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void System.Text.StringRuneEnumerator::.ctor(string)
		IL_0006: ret
	} // end of method String::EnumerateRunes

	.method assembly hidebysig static 
		int32 wcslen (
			char* ptr
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x54cd0
		// Code size 24 (0x18)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: ldc.i4 2147483647
		IL_0007: call int32 System.SpanHelpers::IndexOf(char&, char, int32)
		IL_000c: stloc.0
		IL_000d: ldloc.0
		IL_000e: ldc.i4.0
		IL_000f: bge.s IL_0016

		IL_0011: call void System.String::ThrowMustBeNullTerminatedString()

		IL_0016: ldloc.0
		IL_0017: ret
	} // end of method String::wcslen

	.method assembly hidebysig static 
		int32 strlen (
			uint8* ptr
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x54cf4
		// Code size 24 (0x18)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: ldc.i4 2147483647
		IL_0007: call int32 System.SpanHelpers::IndexOf(uint8&, uint8, int32)
		IL_000c: stloc.0
		IL_000d: ldloc.0
		IL_000e: ldc.i4.0
		IL_000f: bge.s IL_0016

		IL_0011: call void System.String::ThrowMustBeNullTerminatedString()

		IL_0016: ldloc.0
		IL_0017: ret
	} // end of method String::strlen

	.method private hidebysig static 
		void ThrowMustBeNullTerminatedString () cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DoesNotReturnAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x54d18
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_Arg_MustBeNullTerminatedString()
		IL_0005: newobj instance void System.ArgumentException::.ctor(string)
		IL_000a: throw
	} // end of method String::ThrowMustBeNullTerminatedString

	.method public final hidebysig newslot virtual 
		instance valuetype System.TypeCode GetTypeCode () cil managed 
	{
		// Method begins at RVA 0x54d24
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldc.i4.s 18
		IL_0002: ret
	} // end of method String::GetTypeCode

	.method private final hidebysig newslot virtual 
		instance bool System.IConvertible.ToBoolean (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance bool System.IConvertible::ToBoolean(class System.IFormatProvider)
		// Method begins at RVA 0x54d28
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call bool System.Convert::ToBoolean(string, class System.IFormatProvider)
		IL_0007: ret
	} // end of method String::System.IConvertible.ToBoolean

	.method private final hidebysig newslot virtual 
		instance char System.IConvertible.ToChar (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance char System.IConvertible::ToChar(class System.IFormatProvider)
		// Method begins at RVA 0x54d31
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call char System.Convert::ToChar(string, class System.IFormatProvider)
		IL_0007: ret
	} // end of method String::System.IConvertible.ToChar

	.method private final hidebysig newslot virtual 
		instance int8 System.IConvertible.ToSByte (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance int8 System.IConvertible::ToSByte(class System.IFormatProvider)
		// Method begins at RVA 0x54d3a
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call int8 System.Convert::ToSByte(string, class System.IFormatProvider)
		IL_0007: ret
	} // end of method String::System.IConvertible.ToSByte

	.method private final hidebysig newslot virtual 
		instance uint8 System.IConvertible.ToByte (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance uint8 System.IConvertible::ToByte(class System.IFormatProvider)
		// Method begins at RVA 0x54d43
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call uint8 System.Convert::ToByte(string, class System.IFormatProvider)
		IL_0007: ret
	} // end of method String::System.IConvertible.ToByte

	.method private final hidebysig newslot virtual 
		instance int16 System.IConvertible.ToInt16 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance int16 System.IConvertible::ToInt16(class System.IFormatProvider)
		// Method begins at RVA 0x54d4c
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call int16 System.Convert::ToInt16(string, class System.IFormatProvider)
		IL_0007: ret
	} // end of method String::System.IConvertible.ToInt16

	.method private final hidebysig newslot virtual 
		instance uint16 System.IConvertible.ToUInt16 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance uint16 System.IConvertible::ToUInt16(class System.IFormatProvider)
		// Method begins at RVA 0x54d55
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call uint16 System.Convert::ToUInt16(string, class System.IFormatProvider)
		IL_0007: ret
	} // end of method String::System.IConvertible.ToUInt16

	.method private final hidebysig newslot virtual 
		instance int32 System.IConvertible.ToInt32 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance int32 System.IConvertible::ToInt32(class System.IFormatProvider)
		// Method begins at RVA 0x54d5e
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call int32 System.Convert::ToInt32(string, class System.IFormatProvider)
		IL_0007: ret
	} // end of method String::System.IConvertible.ToInt32

	.method private final hidebysig newslot virtual 
		instance uint32 System.IConvertible.ToUInt32 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance uint32 System.IConvertible::ToUInt32(class System.IFormatProvider)
		// Method begins at RVA 0x54d67
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call uint32 System.Convert::ToUInt32(string, class System.IFormatProvider)
		IL_0007: ret
	} // end of method String::System.IConvertible.ToUInt32

	.method private final hidebysig newslot virtual 
		instance int64 System.IConvertible.ToInt64 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance int64 System.IConvertible::ToInt64(class System.IFormatProvider)
		// Method begins at RVA 0x54d70
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call int64 System.Convert::ToInt64(string, class System.IFormatProvider)
		IL_0007: ret
	} // end of method String::System.IConvertible.ToInt64

	.method private final hidebysig newslot virtual 
		instance uint64 System.IConvertible.ToUInt64 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance uint64 System.IConvertible::ToUInt64(class System.IFormatProvider)
		// Method begins at RVA 0x54d79
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call uint64 System.Convert::ToUInt64(string, class System.IFormatProvider)
		IL_0007: ret
	} // end of method String::System.IConvertible.ToUInt64

	.method private final hidebysig newslot virtual 
		instance float32 System.IConvertible.ToSingle (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance float32 System.IConvertible::ToSingle(class System.IFormatProvider)
		// Method begins at RVA 0x54d82
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call float32 System.Convert::ToSingle(string, class System.IFormatProvider)
		IL_0007: ret
	} // end of method String::System.IConvertible.ToSingle

	.method private final hidebysig newslot virtual 
		instance float64 System.IConvertible.ToDouble (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance float64 System.IConvertible::ToDouble(class System.IFormatProvider)
		// Method begins at RVA 0x54d8b
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call float64 System.Convert::ToDouble(string, class System.IFormatProvider)
		IL_0007: ret
	} // end of method String::System.IConvertible.ToDouble

	.method private final hidebysig newslot virtual 
		instance valuetype System.Decimal System.IConvertible.ToDecimal (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance valuetype System.Decimal System.IConvertible::ToDecimal(class System.IFormatProvider)
		// Method begins at RVA 0x54d94
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call valuetype System.Decimal System.Convert::ToDecimal(string, class System.IFormatProvider)
		IL_0007: ret
	} // end of method String::System.IConvertible.ToDecimal

	.method private final hidebysig newslot virtual 
		instance valuetype System.DateTime System.IConvertible.ToDateTime (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		// Method begins at RVA 0x54d9d
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call valuetype System.DateTime System.Convert::ToDateTime(string, class System.IFormatProvider)
		IL_0007: ret
	} // end of method String::System.IConvertible.ToDateTime

	.method private final hidebysig newslot virtual 
		instance object System.IConvertible.ToType (
			class System.Type 'type',
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance object System.IConvertible::ToType(class System.Type, class System.IFormatProvider)
		// Method begins at RVA 0x49f66
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: call object System.Convert::DefaultToType(class System.IConvertible, class System.Type, class System.IFormatProvider)
		IL_0008: ret
	} // end of method String::System.IConvertible.ToType

	.method public hidebysig 
		instance bool IsNormalized () cil managed 
	{
		// Method begins at RVA 0x54da6
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.1
		IL_0002: call instance bool System.String::IsNormalized(valuetype System.Text.NormalizationForm)
		IL_0007: ret
	} // end of method String::IsNormalized

	.method public hidebysig 
		instance bool IsNormalized (
			valuetype System.Text.NormalizationForm normalizationForm
		) cil managed 
	{
		// Method begins at RVA 0x54daf
		// Code size 34 (0x22)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance bool System.String::IsAscii()
		IL_0006: brfalse.s IL_001a

		IL_0008: ldarg.1
		IL_0009: ldc.i4.1
		IL_000a: beq.s IL_0018

		IL_000c: ldarg.1
		IL_000d: ldc.i4.5
		IL_000e: beq.s IL_0018

		IL_0010: ldarg.1
		IL_0011: ldc.i4.2
		IL_0012: beq.s IL_0018

		IL_0014: ldarg.1
		IL_0015: ldc.i4.6
		IL_0016: bne.un.s IL_001a

		IL_0018: ldc.i4.1
		IL_0019: ret

		IL_001a: ldarg.0
		IL_001b: ldarg.1
		IL_001c: call bool System.Globalization.Normalization::IsNormalized(string, valuetype System.Text.NormalizationForm)
		IL_0021: ret
	} // end of method String::IsNormalized

	.method public hidebysig 
		instance string Normalize () cil managed 
	{
		// Method begins at RVA 0x54dd2
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.1
		IL_0002: call instance string System.String::Normalize(valuetype System.Text.NormalizationForm)
		IL_0007: ret
	} // end of method String::Normalize

	.method public hidebysig 
		instance string Normalize (
			valuetype System.Text.NormalizationForm normalizationForm
		) cil managed 
	{
		// Method begins at RVA 0x54ddb
		// Code size 34 (0x22)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance bool System.String::IsAscii()
		IL_0006: brfalse.s IL_001a

		IL_0008: ldarg.1
		IL_0009: ldc.i4.1
		IL_000a: beq.s IL_0018

		IL_000c: ldarg.1
		IL_000d: ldc.i4.5
		IL_000e: beq.s IL_0018

		IL_0010: ldarg.1
		IL_0011: ldc.i4.2
		IL_0012: beq.s IL_0018

		IL_0014: ldarg.1
		IL_0015: ldc.i4.6
		IL_0016: bne.un.s IL_001a

		IL_0018: ldarg.0
		IL_0019: ret

		IL_001a: ldarg.0
		IL_001b: ldarg.1
		IL_001c: call string System.Globalization.Normalization::Normalize(string, valuetype System.Text.NormalizationForm)
		IL_0021: ret
	} // end of method String::Normalize

	.method private hidebysig 
		instance bool IsAscii () cil managed 
	{
		// Method begins at RVA 0x54e00
		// Code size 33 (0x21)
		.maxstack 2
		.locals (
			[0] char*,
			[1] char& pinned
		)

		IL_0000: ldarg.0
		IL_0001: ldflda char System.String::_firstChar
		IL_0006: stloc.1
		IL_0007: ldloc.1
		IL_0008: conv.u
		IL_0009: stloc.0
		IL_000a: ldloc.0
		IL_000b: ldarg.0
		IL_000c: call instance int32 System.String::get_Length()
		IL_0011: conv.u
		IL_0012: call native uint System.Text.ASCIIUtility::GetIndexOfFirstNonAsciiChar(char*, native uint)
		IL_0017: ldarg.0
		IL_0018: call instance int32 System.String::get_Length()
		IL_001d: conv.u
		IL_001e: ceq
		IL_0020: ret
	} // end of method String::IsAscii

	.method private hidebysig static 
		void FillStringChecked (
			string dest,
			int32 destPos,
			string src
		) cil managed 
	{
		// Method begins at RVA 0x54e2d
		// Code size 53 (0x35)
		.maxstack 8

		IL_0000: ldarg.2
		IL_0001: callvirt instance int32 System.String::get_Length()
		IL_0006: ldarg.0
		IL_0007: callvirt instance int32 System.String::get_Length()
		IL_000c: ldarg.1
		IL_000d: sub
		IL_000e: ble.s IL_0016

		IL_0010: newobj instance void System.IndexOutOfRangeException::.ctor()
		IL_0015: throw

		IL_0016: ldarg.0
		IL_0017: ldflda char System.String::_firstChar
		IL_001c: ldarg.1
		IL_001d: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_0022: ldarg.2
		IL_0023: ldflda char System.String::_firstChar
		IL_0028: ldarg.2
		IL_0029: callvirt instance int32 System.String::get_Length()
		IL_002e: conv.u
		IL_002f: call void System.Buffer::Memmove<char>(!!0&, !!0&, native uint)
		IL_0034: ret
	} // end of method String::FillStringChecked

	.method public hidebysig static 
		string Concat (
			object arg0
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x54e63
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0006

		IL_0003: ldnull
		IL_0004: br.s IL_000c

		IL_0006: ldarg.0
		IL_0007: callvirt instance string System.Object::ToString()

		IL_000c: dup
		IL_000d: brtrue.s IL_0015

		IL_000f: pop
		IL_0010: ldsfld string System.String::Empty

		IL_0015: ret
	} // end of method String::Concat

	.method public hidebysig static 
		string Concat (
			object arg0,
			object arg1
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x54e7a
		// Code size 38 (0x26)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldsfld string System.String::Empty
		IL_0008: starg.s 0

		IL_000a: ldarg.1
		IL_000b: brtrue.s IL_0014

		IL_000d: ldsfld string System.String::Empty
		IL_0012: starg.s arg0

		IL_0014: ldarg.0
		IL_0015: callvirt instance string System.Object::ToString()
		IL_001a: ldarg.1
		IL_001b: callvirt instance string System.Object::ToString()
		IL_0020: call string System.String::Concat(string, string)
		IL_0025: ret
	} // end of method String::Concat

	.method public hidebysig static 
		string Concat (
			object arg0,
			object arg1,
			object arg2
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x54ea1
		// Code size 54 (0x36)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldsfld string System.String::Empty
		IL_0008: starg.s 0

		IL_000a: ldarg.1
		IL_000b: brtrue.s IL_0014

		IL_000d: ldsfld string System.String::Empty
		IL_0012: starg.s arg0

		IL_0014: ldarg.2
		IL_0015: brtrue.s IL_001e

		IL_0017: ldsfld string System.String::Empty
		IL_001c: starg.s arg1

		IL_001e: ldarg.0
		IL_001f: callvirt instance string System.Object::ToString()
		IL_0024: ldarg.1
		IL_0025: callvirt instance string System.Object::ToString()
		IL_002a: ldarg.2
		IL_002b: callvirt instance string System.Object::ToString()
		IL_0030: call string System.String::Concat(string, string, string)
		IL_0035: ret
	} // end of method String::Concat

	.method public hidebysig static 
		string Concat (
			object[] args
		) cil managed 
	{
		.param [1]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 01 02 00 00
			)
		// Method begins at RVA 0x54ed8
		// Code size 204 (0xcc)
		.maxstack 3
		.locals (
			[0] string[],
			[1] int32,
			[2] string,
			[3] int32,
			[4] int32,
			[5] object,
			[6] string,
			[7] int32,
			[8] string
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "args"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: ldlen
		IL_0010: conv.i4
		IL_0011: ldc.i4.1
		IL_0012: bgt.s IL_0037

		IL_0014: ldarg.0
		IL_0015: ldlen
		IL_0016: brfalse.s IL_0031

		IL_0018: ldarg.0
		IL_0019: ldc.i4.0
		IL_001a: ldelem.ref
		IL_001b: dup
		IL_001c: brtrue.s IL_0022

		IL_001e: pop
		IL_001f: ldnull
		IL_0020: br.s IL_0027

		IL_0022: callvirt instance string System.Object::ToString()

		IL_0027: dup
		IL_0028: brtrue.s IL_0036

		IL_002a: pop
		IL_002b: ldsfld string System.String::Empty
		IL_0030: ret

		IL_0031: ldsfld string System.String::Empty

		IL_0036: ret

		IL_0037: ldarg.0
		IL_0038: ldlen
		IL_0039: conv.i4
		IL_003a: newarr System.String
		IL_003f: stloc.0
		IL_0040: ldc.i4.0
		IL_0041: stloc.1
		IL_0042: ldc.i4.0
		IL_0043: stloc.s 4
		IL_0045: br.s IL_0086
		// loop start (head: IL_0086)
			IL_0047: ldarg.0
			IL_0048: ldloc.s 4
			IL_004a: ldelem.ref
			IL_004b: stloc.s 5
			IL_004d: ldloc.s 5
			IL_004f: brtrue.s IL_0054

			IL_0051: ldnull
			IL_0052: br.s IL_005b

			IL_0054: ldloc.s 5
			IL_0056: callvirt instance string System.Object::ToString()

			IL_005b: dup
			IL_005c: brtrue.s IL_0064

			IL_005e: pop
			IL_005f: ldsfld string System.String::Empty

			IL_0064: stloc.s 6
			IL_0066: ldloc.0
			IL_0067: ldloc.s 4
			IL_0069: ldloc.s 6
			IL_006b: stelem.ref
			IL_006c: ldloc.1
			IL_006d: ldloc.s 6
			IL_006f: callvirt instance int32 System.String::get_Length()
			IL_0074: add
			IL_0075: stloc.1
			IL_0076: ldloc.1
			IL_0077: ldc.i4.0
			IL_0078: bge.s IL_0080

			IL_007a: newobj instance void System.OutOfMemoryException::.ctor()
			IL_007f: throw

			IL_0080: ldloc.s 4
			IL_0082: ldc.i4.1
			IL_0083: add
			IL_0084: stloc.s 4

			IL_0086: ldloc.s 4
			IL_0088: ldarg.0
			IL_0089: ldlen
			IL_008a: conv.i4
			IL_008b: blt.s IL_0047
		// end loop

		IL_008d: ldloc.1
		IL_008e: brtrue.s IL_0096

		IL_0090: ldsfld string System.String::Empty
		IL_0095: ret

		IL_0096: ldloc.1
		IL_0097: call string System.String::FastAllocateString(int32)
		IL_009c: stloc.2
		IL_009d: ldc.i4.0
		IL_009e: stloc.3
		IL_009f: ldc.i4.0
		IL_00a0: stloc.s 7
		IL_00a2: br.s IL_00c3
		// loop start (head: IL_00c3)
			IL_00a4: ldloc.0
			IL_00a5: ldloc.s 7
			IL_00a7: ldelem.ref
			IL_00a8: stloc.s 8
			IL_00aa: ldloc.2
			IL_00ab: ldloc.3
			IL_00ac: ldloc.s 8
			IL_00ae: call void System.String::FillStringChecked(string, int32, string)
			IL_00b3: ldloc.3
			IL_00b4: ldloc.s 8
			IL_00b6: callvirt instance int32 System.String::get_Length()
			IL_00bb: add
			IL_00bc: stloc.3
			IL_00bd: ldloc.s 7
			IL_00bf: ldc.i4.1
			IL_00c0: add
			IL_00c1: stloc.s 7

			IL_00c3: ldloc.s 7
			IL_00c5: ldloc.0
			IL_00c6: ldlen
			IL_00c7: conv.i4
			IL_00c8: blt.s IL_00a4
		// end loop

		IL_00ca: ldloc.2
		IL_00cb: ret
	} // end of method String::Concat

	.method public hidebysig static 
		string Concat<T> (
			class System.Collections.Generic.IEnumerable`1<!!T> values
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x54fb0
		// Code size 393 (0x189)
		.maxstack 2
		.locals (
			[0] class System.Collections.Generic.IEnumerator`1<char>,
			[1] char,
			[2] valuetype System.Text.ValueStringBuilder,
			[3] string,
			[4] valuetype System.Span`1<char>,
			[5] class System.Collections.Generic.IEnumerator`1<!!T>,
			[6] !!T,
			[7] string,
			[8] valuetype System.Text.ValueStringBuilder
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "values"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldtoken !!T
		IL_0013: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0018: ldtoken System.Char
		IL_001d: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0022: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0027: brfalse IL_00bf

		IL_002c: ldarg.0
		IL_002d: call !!0 Internal.Runtime.CompilerServices.Unsafe::As<class System.Collections.Generic.IEnumerable`1<char>>(object)
		IL_0032: callvirt instance class System.Collections.Generic.IEnumerator`1<!0> class System.Collections.Generic.IEnumerable`1<char>::GetEnumerator()
		IL_0037: stloc.0
		.try
		{
			IL_0038: ldloc.0
			IL_0039: callvirt instance bool System.Collections.IEnumerator::MoveNext()
			IL_003e: brtrue.s IL_004b

			IL_0040: ldsfld string System.String::Empty
			IL_0045: stloc.3
			IL_0046: leave IL_0187

			IL_004b: ldloc.0
			IL_004c: callvirt instance !0 class System.Collections.Generic.IEnumerator`1<char>::get_Current()
			IL_0051: stloc.1
			IL_0052: ldloc.0
			IL_0053: callvirt instance bool System.Collections.IEnumerator::MoveNext()
			IL_0058: brtrue.s IL_0066

			IL_005a: ldloc.1
			IL_005b: call string System.String::CreateFromChar(char)
			IL_0060: stloc.3
			IL_0061: leave IL_0187

			IL_0066: ldc.i4 512
			IL_006b: conv.u
			IL_006c: localloc
			IL_006e: ldc.i4 256
			IL_0073: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
			IL_0078: stloc.s 4
			IL_007a: ldloca.s 2
			IL_007c: ldloc.s 4
			IL_007e: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
			IL_0083: ldloca.s 2
			IL_0085: ldloc.1
			IL_0086: call instance void System.Text.ValueStringBuilder::Append(char)
			// loop start (head: IL_008b)
				IL_008b: ldloc.0
				IL_008c: callvirt instance !0 class System.Collections.Generic.IEnumerator`1<char>::get_Current()
				IL_0091: stloc.1
				IL_0092: ldloca.s 2
				IL_0094: ldloc.1
				IL_0095: call instance void System.Text.ValueStringBuilder::Append(char)
				IL_009a: ldloc.0
				IL_009b: callvirt instance bool System.Collections.IEnumerator::MoveNext()
				IL_00a0: brtrue.s IL_008b
			// end loop
			IL_00a2: ldloca.s 2
			IL_00a4: constrained. System.Text.ValueStringBuilder
			IL_00aa: callvirt instance string System.Object::ToString()
			IL_00af: stloc.3
			IL_00b0: leave IL_0187
		} // end .try
		finally
		{
			IL_00b5: ldloc.0
			IL_00b6: brfalse.s IL_00be

			IL_00b8: ldloc.0
			IL_00b9: callvirt instance void System.IDisposable::Dispose()

			IL_00be: endfinally
		} // end handler

		IL_00bf: ldarg.0
		IL_00c0: callvirt instance class System.Collections.Generic.IEnumerator`1<!0> class System.Collections.Generic.IEnumerable`1<!!T>::GetEnumerator()
		IL_00c5: stloc.s 5
		.try
		{
			IL_00c7: ldloc.s 5
			IL_00c9: callvirt instance bool System.Collections.IEnumerator::MoveNext()
			IL_00ce: brtrue.s IL_00db

			IL_00d0: ldsfld string System.String::Empty
			IL_00d5: stloc.3
			IL_00d6: leave IL_0187

			IL_00db: ldloc.s 5
			IL_00dd: callvirt instance !0 class System.Collections.Generic.IEnumerator`1<!!T>::get_Current()
			IL_00e2: stloc.s 6
			IL_00e4: ldloc.s 6
			IL_00e6: box !!T
			IL_00eb: brtrue.s IL_00f0

			IL_00ed: ldnull
			IL_00ee: br.s IL_00fd

			IL_00f0: ldloca.s 6
			IL_00f2: constrained. !!T
			IL_00f8: callvirt instance string System.Object::ToString()

			IL_00fd: stloc.s 7
			IL_00ff: ldloc.s 5
			IL_0101: callvirt instance bool System.Collections.IEnumerator::MoveNext()
			IL_0106: brtrue.s IL_0116

			IL_0108: ldloc.s 7
			IL_010a: dup
			IL_010b: brtrue.s IL_0113

			IL_010d: pop
			IL_010e: ldsfld string System.String::Empty

			IL_0113: stloc.3
			IL_0114: leave.s IL_0187

			IL_0116: ldc.i4 512
			IL_011b: conv.u
			IL_011c: localloc
			IL_011e: ldc.i4 256
			IL_0123: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
			IL_0128: stloc.s 4
			IL_012a: ldloca.s 8
			IL_012c: ldloc.s 4
			IL_012e: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
			IL_0133: ldloca.s 8
			IL_0135: ldloc.s 7
			IL_0137: call instance void System.Text.ValueStringBuilder::Append(string)
			// loop start (head: IL_013c)
				IL_013c: ldloc.s 5
				IL_013e: callvirt instance !0 class System.Collections.Generic.IEnumerator`1<!!T>::get_Current()
				IL_0143: stloc.s 6
				IL_0145: ldloc.s 6
				IL_0147: box !!T
				IL_014c: brfalse.s IL_0162

				IL_014e: ldloca.s 8
				IL_0150: ldloca.s 6
				IL_0152: constrained. !!T
				IL_0158: callvirt instance string System.Object::ToString()
				IL_015d: call instance void System.Text.ValueStringBuilder::Append(string)

				IL_0162: ldloc.s 5
				IL_0164: callvirt instance bool System.Collections.IEnumerator::MoveNext()
				IL_0169: brtrue.s IL_013c
			// end loop
			IL_016b: ldloca.s 8
			IL_016d: constrained. System.Text.ValueStringBuilder
			IL_0173: callvirt instance string System.Object::ToString()
			IL_0178: stloc.3
			IL_0179: leave.s IL_0187
		} // end .try
		finally
		{
			IL_017b: ldloc.s 5
			IL_017d: brfalse.s IL_0186

			IL_017f: ldloc.s 5
			IL_0181: callvirt instance void System.IDisposable::Dispose()

			IL_0186: endfinally
		} // end handler

		IL_0187: ldloc.3
		IL_0188: ret
	} // end of method String::Concat

	.method public hidebysig static 
		string Concat (
			class System.Collections.Generic.IEnumerable`1<string> values
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 01 02 00 00
			)
		// Method begins at RVA 0x55164
		// Code size 151 (0x97)
		.maxstack 2
		.locals (
			[0] class System.Collections.Generic.IEnumerator`1<string>,
			[1] string,
			[2] valuetype System.Text.ValueStringBuilder,
			[3] string,
			[4] valuetype System.Span`1<char>
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "values"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: callvirt instance class System.Collections.Generic.IEnumerator`1<!0> class System.Collections.Generic.IEnumerable`1<string>::GetEnumerator()
		IL_0014: stloc.0
		.try
		{
			IL_0015: ldloc.0
			IL_0016: callvirt instance bool System.Collections.IEnumerator::MoveNext()
			IL_001b: brtrue.s IL_0025

			IL_001d: ldsfld string System.String::Empty
			IL_0022: stloc.3
			IL_0023: leave.s IL_0095

			IL_0025: ldloc.0
			IL_0026: callvirt instance !0 class System.Collections.Generic.IEnumerator`1<string>::get_Current()
			IL_002b: stloc.1
			IL_002c: ldloc.0
			IL_002d: callvirt instance bool System.Collections.IEnumerator::MoveNext()
			IL_0032: brtrue.s IL_0041

			IL_0034: ldloc.1
			IL_0035: dup
			IL_0036: brtrue.s IL_003e

			IL_0038: pop
			IL_0039: ldsfld string System.String::Empty

			IL_003e: stloc.3
			IL_003f: leave.s IL_0095

			IL_0041: ldc.i4 512
			IL_0046: conv.u
			IL_0047: localloc
			IL_0049: ldc.i4 256
			IL_004e: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
			IL_0053: stloc.s 4
			IL_0055: ldloca.s 2
			IL_0057: ldloc.s 4
			IL_0059: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
			IL_005e: ldloca.s 2
			IL_0060: ldloc.1
			IL_0061: call instance void System.Text.ValueStringBuilder::Append(string)
			// loop start (head: IL_0066)
				IL_0066: ldloca.s 2
				IL_0068: ldloc.0
				IL_0069: callvirt instance !0 class System.Collections.Generic.IEnumerator`1<string>::get_Current()
				IL_006e: call instance void System.Text.ValueStringBuilder::Append(string)
				IL_0073: ldloc.0
				IL_0074: callvirt instance bool System.Collections.IEnumerator::MoveNext()
				IL_0079: brtrue.s IL_0066
			// end loop
			IL_007b: ldloca.s 2
			IL_007d: constrained. System.Text.ValueStringBuilder
			IL_0083: callvirt instance string System.Object::ToString()
			IL_0088: stloc.3
			IL_0089: leave.s IL_0095
		} // end .try
		finally
		{
			IL_008b: ldloc.0
			IL_008c: brfalse.s IL_0094

			IL_008e: ldloc.0
			IL_008f: callvirt instance void System.IDisposable::Dispose()

			IL_0094: endfinally
		} // end handler

		IL_0095: ldloc.3
		IL_0096: ret
	} // end of method String::Concat

	.method public hidebysig static 
		string Concat (
			string str0,
			string str1
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x55218
		// Code size 73 (0x49)
		.maxstack 3
		.locals (
			[0] int32,
			[1] string
		)

		IL_0000: ldarg.0
		IL_0001: call bool System.String::IsNullOrEmpty(string)
		IL_0006: brfalse.s IL_0018

		IL_0008: ldarg.1
		IL_0009: call bool System.String::IsNullOrEmpty(string)
		IL_000e: brfalse.s IL_0016

		IL_0010: ldsfld string System.String::Empty
		IL_0015: ret

		IL_0016: ldarg.1
		IL_0017: ret

		IL_0018: ldarg.1
		IL_0019: call bool System.String::IsNullOrEmpty(string)
		IL_001e: brfalse.s IL_0022

		IL_0020: ldarg.0
		IL_0021: ret

		IL_0022: ldarg.0
		IL_0023: callvirt instance int32 System.String::get_Length()
		IL_0028: stloc.0
		IL_0029: ldloc.0
		IL_002a: ldarg.1
		IL_002b: callvirt instance int32 System.String::get_Length()
		IL_0030: add
		IL_0031: call string System.String::FastAllocateString(int32)
		IL_0036: stloc.1
		IL_0037: ldloc.1
		IL_0038: ldc.i4.0
		IL_0039: ldarg.0
		IL_003a: call void System.String::FillStringChecked(string, int32, string)
		IL_003f: ldloc.1
		IL_0040: ldloc.0
		IL_0041: ldarg.1
		IL_0042: call void System.String::FillStringChecked(string, int32, string)
		IL_0047: ldloc.1
		IL_0048: ret
	} // end of method String::Concat

	.method public hidebysig static 
		string Concat (
			string str0,
			string str1,
			string str2
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x55270
		// Code size 119 (0x77)
		.maxstack 3
		.locals (
			[0] int32,
			[1] string
		)

		IL_0000: ldarg.0
		IL_0001: call bool System.String::IsNullOrEmpty(string)
		IL_0006: brfalse.s IL_0010

		IL_0008: ldarg.1
		IL_0009: ldarg.2
		IL_000a: call string System.String::Concat(string, string)
		IL_000f: ret

		IL_0010: ldarg.1
		IL_0011: call bool System.String::IsNullOrEmpty(string)
		IL_0016: brfalse.s IL_0020

		IL_0018: ldarg.0
		IL_0019: ldarg.2
		IL_001a: call string System.String::Concat(string, string)
		IL_001f: ret

		IL_0020: ldarg.2
		IL_0021: call bool System.String::IsNullOrEmpty(string)
		IL_0026: brfalse.s IL_0030

		IL_0028: ldarg.0
		IL_0029: ldarg.1
		IL_002a: call string System.String::Concat(string, string)
		IL_002f: ret

		IL_0030: ldarg.0
		IL_0031: callvirt instance int32 System.String::get_Length()
		IL_0036: ldarg.1
		IL_0037: callvirt instance int32 System.String::get_Length()
		IL_003c: add
		IL_003d: ldarg.2
		IL_003e: callvirt instance int32 System.String::get_Length()
		IL_0043: add
		IL_0044: stloc.0
		IL_0045: ldloc.0
		IL_0046: call string System.String::FastAllocateString(int32)
		IL_004b: stloc.1
		IL_004c: ldloc.1
		IL_004d: ldc.i4.0
		IL_004e: ldarg.0
		IL_004f: call void System.String::FillStringChecked(string, int32, string)
		IL_0054: ldloc.1
		IL_0055: ldarg.0
		IL_0056: callvirt instance int32 System.String::get_Length()
		IL_005b: ldarg.1
		IL_005c: call void System.String::FillStringChecked(string, int32, string)
		IL_0061: ldloc.1
		IL_0062: ldarg.0
		IL_0063: callvirt instance int32 System.String::get_Length()
		IL_0068: ldarg.1
		IL_0069: callvirt instance int32 System.String::get_Length()
		IL_006e: add
		IL_006f: ldarg.2
		IL_0070: call void System.String::FillStringChecked(string, int32, string)
		IL_0075: ldloc.1
		IL_0076: ret
	} // end of method String::Concat

	.method public hidebysig static 
		string Concat (
			string str0,
			string str1,
			string str2,
			string str3
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x552f4
		// Code size 173 (0xad)
		.maxstack 3
		.locals (
			[0] int32,
			[1] string
		)

		IL_0000: ldarg.0
		IL_0001: call bool System.String::IsNullOrEmpty(string)
		IL_0006: brfalse.s IL_0011

		IL_0008: ldarg.1
		IL_0009: ldarg.2
		IL_000a: ldarg.3
		IL_000b: call string System.String::Concat(string, string, string)
		IL_0010: ret

		IL_0011: ldarg.1
		IL_0012: call bool System.String::IsNullOrEmpty(string)
		IL_0017: brfalse.s IL_0022

		IL_0019: ldarg.0
		IL_001a: ldarg.2
		IL_001b: ldarg.3
		IL_001c: call string System.String::Concat(string, string, string)
		IL_0021: ret

		IL_0022: ldarg.2
		IL_0023: call bool System.String::IsNullOrEmpty(string)
		IL_0028: brfalse.s IL_0033

		IL_002a: ldarg.0
		IL_002b: ldarg.1
		IL_002c: ldarg.3
		IL_002d: call string System.String::Concat(string, string, string)
		IL_0032: ret

		IL_0033: ldarg.3
		IL_0034: call bool System.String::IsNullOrEmpty(string)
		IL_0039: brfalse.s IL_0044

		IL_003b: ldarg.0
		IL_003c: ldarg.1
		IL_003d: ldarg.2
		IL_003e: call string System.String::Concat(string, string, string)
		IL_0043: ret

		IL_0044: ldarg.0
		IL_0045: callvirt instance int32 System.String::get_Length()
		IL_004a: ldarg.1
		IL_004b: callvirt instance int32 System.String::get_Length()
		IL_0050: add
		IL_0051: ldarg.2
		IL_0052: callvirt instance int32 System.String::get_Length()
		IL_0057: add
		IL_0058: ldarg.3
		IL_0059: callvirt instance int32 System.String::get_Length()
		IL_005e: add
		IL_005f: stloc.0
		IL_0060: ldloc.0
		IL_0061: call string System.String::FastAllocateString(int32)
		IL_0066: stloc.1
		IL_0067: ldloc.1
		IL_0068: ldc.i4.0
		IL_0069: ldarg.0
		IL_006a: call void System.String::FillStringChecked(string, int32, string)
		IL_006f: ldloc.1
		IL_0070: ldarg.0
		IL_0071: callvirt instance int32 System.String::get_Length()
		IL_0076: ldarg.1
		IL_0077: call void System.String::FillStringChecked(string, int32, string)
		IL_007c: ldloc.1
		IL_007d: ldarg.0
		IL_007e: callvirt instance int32 System.String::get_Length()
		IL_0083: ldarg.1
		IL_0084: callvirt instance int32 System.String::get_Length()
		IL_0089: add
		IL_008a: ldarg.2
		IL_008b: call void System.String::FillStringChecked(string, int32, string)
		IL_0090: ldloc.1
		IL_0091: ldarg.0
		IL_0092: callvirt instance int32 System.String::get_Length()
		IL_0097: ldarg.1
		IL_0098: callvirt instance int32 System.String::get_Length()
		IL_009d: add
		IL_009e: ldarg.2
		IL_009f: callvirt instance int32 System.String::get_Length()
		IL_00a4: add
		IL_00a5: ldarg.3
		IL_00a6: call void System.String::FillStringChecked(string, int32, string)
		IL_00ab: ldloc.1
		IL_00ac: ret
	} // end of method String::Concat

	.method public hidebysig static 
		string Concat (
			valuetype System.ReadOnlySpan`1<char> str0,
			valuetype System.ReadOnlySpan`1<char> str1
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x553b0
		// Code size 81 (0x51)
		.maxstack 3
		.locals (
			[0] int32,
			[1] string,
			[2] valuetype System.Span`1<char>
		)

		IL_0000: ldarga.s 0
		IL_0002: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0007: ldarga.s str0
		IL_0009: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_000e: add.ovf
		IL_000f: stloc.0
		IL_0010: ldloc.0
		IL_0011: brtrue.s IL_0019

		IL_0013: ldsfld string System.String::Empty
		IL_0018: ret

		IL_0019: ldloc.0
		IL_001a: call string System.String::FastAllocateString(int32)
		IL_001f: stloc.1
		IL_0020: ldloc.1
		IL_0021: callvirt instance char& System.String::GetRawStringData()
		IL_0026: ldloc.1
		IL_0027: callvirt instance int32 System.String::get_Length()
		IL_002c: newobj instance void valuetype System.Span`1<char>::.ctor(!0&, int32)
		IL_0031: stloc.2
		IL_0032: ldarga.s 0
		IL_0034: ldloc.2
		IL_0035: call instance void valuetype System.ReadOnlySpan`1<char>::CopyTo(valuetype System.Span`1<!0>)
		IL_003a: ldarga.s str0
		IL_003c: ldloca.s 2
		IL_003e: ldarga.s 0
		IL_0040: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0045: call instance valuetype System.Span`1<!0> valuetype System.Span`1<char>::Slice(int32)
		IL_004a: call instance void valuetype System.ReadOnlySpan`1<char>::CopyTo(valuetype System.Span`1<!0>)
		IL_004f: ldloc.1
		IL_0050: ret
	} // end of method String::Concat

	.method public hidebysig static 
		string Concat (
			valuetype System.ReadOnlySpan`1<char> str0,
			valuetype System.ReadOnlySpan`1<char> str1,
			valuetype System.ReadOnlySpan`1<char> str2
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x55410
		// Code size 114 (0x72)
		.maxstack 2
		.locals (
			[0] int32,
			[1] string,
			[2] valuetype System.Span`1<char>
		)

		IL_0000: ldarga.s 0
		IL_0002: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0007: ldarga.s str0
		IL_0009: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_000e: add.ovf
		IL_000f: ldarga.s str1
		IL_0011: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0016: add.ovf
		IL_0017: stloc.0
		IL_0018: ldloc.0
		IL_0019: brtrue.s IL_0021

		IL_001b: ldsfld string System.String::Empty
		IL_0020: ret

		IL_0021: ldloc.0
		IL_0022: call string System.String::FastAllocateString(int32)
		IL_0027: stloc.1
		IL_0028: ldloc.1
		IL_0029: callvirt instance char& System.String::GetRawStringData()
		IL_002e: ldloc.1
		IL_002f: callvirt instance int32 System.String::get_Length()
		IL_0034: newobj instance void valuetype System.Span`1<char>::.ctor(!0&, int32)
		IL_0039: stloc.2
		IL_003a: ldarga.s 0
		IL_003c: ldloc.2
		IL_003d: call instance void valuetype System.ReadOnlySpan`1<char>::CopyTo(valuetype System.Span`1<!0>)
		IL_0042: ldloca.s 2
		IL_0044: ldarga.s 0
		IL_0046: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_004b: call instance valuetype System.Span`1<!0> valuetype System.Span`1<char>::Slice(int32)
		IL_0050: stloc.2
		IL_0051: ldarga.s str0
		IL_0053: ldloc.2
		IL_0054: call instance void valuetype System.ReadOnlySpan`1<char>::CopyTo(valuetype System.Span`1<!0>)
		IL_0059: ldloca.s 2
		IL_005b: ldarga.s str0
		IL_005d: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0062: call instance valuetype System.Span`1<!0> valuetype System.Span`1<char>::Slice(int32)
		IL_0067: stloc.2
		IL_0068: ldarga.s str1
		IL_006a: ldloc.2
		IL_006b: call instance void valuetype System.ReadOnlySpan`1<char>::CopyTo(valuetype System.Span`1<!0>)
		IL_0070: ldloc.1
		IL_0071: ret
	} // end of method String::Concat

	.method public hidebysig static 
		string Concat (
			valuetype System.ReadOnlySpan`1<char> str0,
			valuetype System.ReadOnlySpan`1<char> str1,
			valuetype System.ReadOnlySpan`1<char> str2,
			valuetype System.ReadOnlySpan`1<char> str3
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x55490
		// Code size 145 (0x91)
		.maxstack 2
		.locals (
			[0] int32,
			[1] string,
			[2] valuetype System.Span`1<char>
		)

		IL_0000: ldarga.s 0
		IL_0002: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0007: ldarga.s str0
		IL_0009: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_000e: add.ovf
		IL_000f: ldarga.s str1
		IL_0011: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0016: add.ovf
		IL_0017: ldarga.s str2
		IL_0019: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_001e: add.ovf
		IL_001f: stloc.0
		IL_0020: ldloc.0
		IL_0021: brtrue.s IL_0029

		IL_0023: ldsfld string System.String::Empty
		IL_0028: ret

		IL_0029: ldloc.0
		IL_002a: call string System.String::FastAllocateString(int32)
		IL_002f: stloc.1
		IL_0030: ldloc.1
		IL_0031: callvirt instance char& System.String::GetRawStringData()
		IL_0036: ldloc.1
		IL_0037: callvirt instance int32 System.String::get_Length()
		IL_003c: newobj instance void valuetype System.Span`1<char>::.ctor(!0&, int32)
		IL_0041: stloc.2
		IL_0042: ldarga.s 0
		IL_0044: ldloc.2
		IL_0045: call instance void valuetype System.ReadOnlySpan`1<char>::CopyTo(valuetype System.Span`1<!0>)
		IL_004a: ldloca.s 2
		IL_004c: ldarga.s 0
		IL_004e: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0053: call instance valuetype System.Span`1<!0> valuetype System.Span`1<char>::Slice(int32)
		IL_0058: stloc.2
		IL_0059: ldarga.s str0
		IL_005b: ldloc.2
		IL_005c: call instance void valuetype System.ReadOnlySpan`1<char>::CopyTo(valuetype System.Span`1<!0>)
		IL_0061: ldloca.s 2
		IL_0063: ldarga.s str0
		IL_0065: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_006a: call instance valuetype System.Span`1<!0> valuetype System.Span`1<char>::Slice(int32)
		IL_006f: stloc.2
		IL_0070: ldarga.s str1
		IL_0072: ldloc.2
		IL_0073: call instance void valuetype System.ReadOnlySpan`1<char>::CopyTo(valuetype System.Span`1<!0>)
		IL_0078: ldloca.s 2
		IL_007a: ldarga.s str1
		IL_007c: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0081: call instance valuetype System.Span`1<!0> valuetype System.Span`1<char>::Slice(int32)
		IL_0086: stloc.2
		IL_0087: ldarga.s str2
		IL_0089: ldloc.2
		IL_008a: call instance void valuetype System.ReadOnlySpan`1<char>::CopyTo(valuetype System.Span`1<!0>)
		IL_008f: ldloc.1
		IL_0090: ret
	} // end of method String::Concat

	.method public hidebysig static 
		string Concat (
			string[] values
		) cil managed 
	{
		.param [1]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 01 02 00 00
			)
		// Method begins at RVA 0x55530
		// Code size 211 (0xd3)
		.maxstack 3
		.locals (
			[0] int64,
			[1] int32,
			[2] string,
			[3] int32,
			[4] int32,
			[5] string,
			[6] int32,
			[7] string,
			[8] int32
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "values"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: ldlen
		IL_0010: conv.i4
		IL_0011: ldc.i4.1
		IL_0012: bgt.s IL_002b

		IL_0014: ldarg.0
		IL_0015: ldlen
		IL_0016: brfalse.s IL_0025

		IL_0018: ldarg.0
		IL_0019: ldc.i4.0
		IL_001a: ldelem.ref
		IL_001b: dup
		IL_001c: brtrue.s IL_002a

		IL_001e: pop
		IL_001f: ldsfld string System.String::Empty
		IL_0024: ret

		IL_0025: ldsfld string System.String::Empty

		IL_002a: ret

		IL_002b: ldc.i4.0
		IL_002c: conv.i8
		IL_002d: stloc.0
		IL_002e: ldc.i4.0
		IL_002f: stloc.s 4
		IL_0031: br.s IL_004e
		// loop start (head: IL_004e)
			IL_0033: ldarg.0
			IL_0034: ldloc.s 4
			IL_0036: ldelem.ref
			IL_0037: stloc.s 5
			IL_0039: ldloc.s 5
			IL_003b: brfalse.s IL_0048

			IL_003d: ldloc.0
			IL_003e: ldloc.s 5
			IL_0040: callvirt instance int32 System.String::get_Length()
			IL_0045: conv.i8
			IL_0046: add
			IL_0047: stloc.0

			IL_0048: ldloc.s 4
			IL_004a: ldc.i4.1
			IL_004b: add
			IL_004c: stloc.s 4

			IL_004e: ldloc.s 4
			IL_0050: ldarg.0
			IL_0051: ldlen
			IL_0052: conv.i4
			IL_0053: blt.s IL_0033
		// end loop

		IL_0055: ldloc.0
		IL_0056: ldc.i4 2147483647
		IL_005b: conv.i8
		IL_005c: ble.s IL_0064

		IL_005e: newobj instance void System.OutOfMemoryException::.ctor()
		IL_0063: throw

		IL_0064: ldloc.0
		IL_0065: conv.i4
		IL_0066: stloc.1
		IL_0067: ldloc.1
		IL_0068: brtrue.s IL_0070

		IL_006a: ldsfld string System.String::Empty
		IL_006f: ret

		IL_0070: ldloc.1
		IL_0071: call string System.String::FastAllocateString(int32)
		IL_0076: stloc.2
		IL_0077: ldc.i4.0
		IL_0078: stloc.3
		IL_0079: ldc.i4.0
		IL_007a: stloc.s 6
		IL_007c: br.s IL_00b5
		// loop start (head: IL_00b5)
			IL_007e: ldarg.0
			IL_007f: ldloc.s 6
			IL_0081: ldelem.ref
			IL_0082: stloc.s 7
			IL_0084: ldloc.s 7
			IL_0086: call bool System.String::IsNullOrEmpty(string)
			IL_008b: brtrue.s IL_00af

			IL_008d: ldloc.s 7
			IL_008f: callvirt instance int32 System.String::get_Length()
			IL_0094: stloc.s 8
			IL_0096: ldloc.s 8
			IL_0098: ldloc.1
			IL_0099: ldloc.3
			IL_009a: sub
			IL_009b: ble.s IL_00a1

			IL_009d: ldc.i4.m1
			IL_009e: stloc.3
			IL_009f: br.s IL_00bc

			IL_00a1: ldloc.2
			IL_00a2: ldloc.3
			IL_00a3: ldloc.s 7
			IL_00a5: call void System.String::FillStringChecked(string, int32, string)
			IL_00aa: ldloc.3
			IL_00ab: ldloc.s 8
			IL_00ad: add
			IL_00ae: stloc.3

			IL_00af: ldloc.s 6
			IL_00b1: ldc.i4.1
			IL_00b2: add
			IL_00b3: stloc.s 6

			IL_00b5: ldloc.s 6
			IL_00b7: ldarg.0
			IL_00b8: ldlen
			IL_00b9: conv.i4
			IL_00ba: blt.s IL_007e
		// end loop

		IL_00bc: ldloc.3
		IL_00bd: ldloc.1
		IL_00be: beq.s IL_00d1

		IL_00c0: ldarg.0
		IL_00c1: callvirt instance object System.Array::Clone()
		IL_00c6: castclass string[]
		IL_00cb: call string System.String::Concat(string[])
		IL_00d0: ret

		IL_00d1: ldloc.2
		IL_00d2: ret
	} // end of method String::Concat

	.method public hidebysig static 
		string Format (
			string format,
			object arg0
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x5560f
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldnull
		IL_0001: ldarg.0
		IL_0002: ldarg.1
		IL_0003: newobj instance void System.ParamsArray::.ctor(object)
		IL_0008: call string System.String::FormatHelper(class System.IFormatProvider, string, valuetype System.ParamsArray)
		IL_000d: ret
	} // end of method String::Format

	.method public hidebysig static 
		string Format (
			string format,
			object arg0,
			object arg1
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x5561e
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldnull
		IL_0001: ldarg.0
		IL_0002: ldarg.1
		IL_0003: ldarg.2
		IL_0004: newobj instance void System.ParamsArray::.ctor(object, object)
		IL_0009: call string System.String::FormatHelper(class System.IFormatProvider, string, valuetype System.ParamsArray)
		IL_000e: ret
	} // end of method String::Format

	.method public hidebysig static 
		string Format (
			string format,
			object arg0,
			object arg1,
			object arg2
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x5562e
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldnull
		IL_0001: ldarg.0
		IL_0002: ldarg.1
		IL_0003: ldarg.2
		IL_0004: ldarg.3
		IL_0005: newobj instance void System.ParamsArray::.ctor(object, object, object)
		IL_000a: call string System.String::FormatHelper(class System.IFormatProvider, string, valuetype System.ParamsArray)
		IL_000f: ret
	} // end of method String::Format

	.method public hidebysig static 
		string Format (
			string format,
			object[] args
		) cil managed 
	{
		.param [2]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 01 02 00 00
			)
		// Method begins at RVA 0x5563f
		// Code size 38 (0x26)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0018

		IL_0003: ldarg.0
		IL_0004: brfalse.s IL_000d

		IL_0006: ldstr "args"
		IL_000b: br.s IL_0012

		IL_000d: ldstr "format"

		IL_0012: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0017: throw

		IL_0018: ldnull
		IL_0019: ldarg.0
		IL_001a: ldarg.1
		IL_001b: newobj instance void System.ParamsArray::.ctor(object[])
		IL_0020: call string System.String::FormatHelper(class System.IFormatProvider, string, valuetype System.ParamsArray)
		IL_0025: ret
	} // end of method String::Format

	.method public hidebysig static 
		string Format (
			class System.IFormatProvider provider,
			string format,
			object arg0
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x55666
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: newobj instance void System.ParamsArray::.ctor(object)
		IL_0008: call string System.String::FormatHelper(class System.IFormatProvider, string, valuetype System.ParamsArray)
		IL_000d: ret
	} // end of method String::Format

	.method public hidebysig static 
		string Format (
			class System.IFormatProvider provider,
			string format,
			object arg0,
			object arg1
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x55675
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: newobj instance void System.ParamsArray::.ctor(object, object)
		IL_0009: call string System.String::FormatHelper(class System.IFormatProvider, string, valuetype System.ParamsArray)
		IL_000e: ret
	} // end of method String::Format

	.method public hidebysig static 
		string Format (
			class System.IFormatProvider provider,
			string format,
			object arg0,
			object arg1,
			object arg2
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x55685
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: ldarg.s arg1
		IL_0006: newobj instance void System.ParamsArray::.ctor(object, object, object)
		IL_000b: call string System.String::FormatHelper(class System.IFormatProvider, string, valuetype System.ParamsArray)
		IL_0010: ret
	} // end of method String::Format

	.method public hidebysig static 
		string Format (
			class System.IFormatProvider provider,
			string format,
			object[] args
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [3]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 01 02 00 00
			)
		// Method begins at RVA 0x55697
		// Code size 38 (0x26)
		.maxstack 8

		IL_0000: ldarg.2
		IL_0001: brtrue.s IL_0018

		IL_0003: ldarg.1
		IL_0004: brfalse.s IL_000d

		IL_0006: ldstr "args"
		IL_000b: br.s IL_0012

		IL_000d: ldstr "format"

		IL_0012: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0017: throw

		IL_0018: ldarg.0
		IL_0019: ldarg.1
		IL_001a: ldarg.2
		IL_001b: newobj instance void System.ParamsArray::.ctor(object[])
		IL_0020: call string System.String::FormatHelper(class System.IFormatProvider, string, valuetype System.ParamsArray)
		IL_0025: ret
	} // end of method String::Format

	.method private hidebysig static 
		string FormatHelper (
			class System.IFormatProvider provider,
			string format,
			valuetype System.ParamsArray args
		) cil managed 
	{
		// Method begins at RVA 0x556c0
		// Code size 88 (0x58)
		.maxstack 4
		.locals (
			[0] valuetype System.Text.ValueStringBuilder,
			[1] valuetype System.Span`1<char>
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "format"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldc.i4 512
		IL_0013: conv.u
		IL_0014: localloc
		IL_0016: ldc.i4 256
		IL_001b: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_0020: stloc.1
		IL_0021: ldloca.s 0
		IL_0023: ldloc.1
		IL_0024: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
		IL_0029: ldloca.s 0
		IL_002b: ldarg.1
		IL_002c: callvirt instance int32 System.String::get_Length()
		IL_0031: ldarga.s args
		IL_0033: call instance int32 System.ParamsArray::get_Length()
		IL_0038: ldc.i4.8
		IL_0039: mul
		IL_003a: add
		IL_003b: call instance void System.Text.ValueStringBuilder::EnsureCapacity(int32)
		IL_0040: ldloca.s 0
		IL_0042: ldarg.0
		IL_0043: ldarg.1
		IL_0044: ldarg.2
		IL_0045: call instance void System.Text.ValueStringBuilder::AppendFormatHelper(class System.IFormatProvider, string, valuetype System.ParamsArray)
		IL_004a: ldloca.s 0
		IL_004c: constrained. System.Text.ValueStringBuilder
		IL_0052: callvirt instance string System.Object::ToString()
		IL_0057: ret
	} // end of method String::FormatHelper

	.method public hidebysig 
		instance string Insert (
			int32 startIndex,
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x55724
		// Code size 178 (0xb2)
		.maxstack 4
		.locals (
			[0] int32,
			[1] int32,
			[2] int32,
			[3] string,
			[4] char*,
			[5] char& pinned,
			[6] char*,
			[7] char& pinned,
			[8] char*,
			[9] char& pinned
		)

		IL_0000: ldarg.2
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "value"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.1
		IL_000f: ldc.i4.0
		IL_0010: blt.s IL_001b

		IL_0012: ldarg.1
		IL_0013: ldarg.0
		IL_0014: call instance int32 System.String::get_Length()
		IL_0019: ble.s IL_0026

		IL_001b: ldstr "startIndex"
		IL_0020: newobj instance void System.ArgumentOutOfRangeException::.ctor(string)
		IL_0025: throw

		IL_0026: ldarg.0
		IL_0027: call instance int32 System.String::get_Length()
		IL_002c: stloc.0
		IL_002d: ldarg.2
		IL_002e: callvirt instance int32 System.String::get_Length()
		IL_0033: stloc.1
		IL_0034: ldloc.0
		IL_0035: brtrue.s IL_0039

		IL_0037: ldarg.2
		IL_0038: ret

		IL_0039: ldloc.1
		IL_003a: brtrue.s IL_003e

		IL_003c: ldarg.0
		IL_003d: ret

		IL_003e: ldloc.0
		IL_003f: ldloc.1
		IL_0040: add
		IL_0041: stloc.2
		IL_0042: ldloc.2
		IL_0043: call string System.String::FastAllocateString(int32)
		IL_0048: stloc.3
		IL_0049: ldarg.0
		IL_004a: ldflda char System.String::_firstChar
		IL_004f: stloc.s 5
		IL_0051: ldloc.s 5
		IL_0053: conv.u
		IL_0054: stloc.s 4
		IL_0056: ldarg.2
		IL_0057: ldflda char System.String::_firstChar
		IL_005c: stloc.s 7
		IL_005e: ldloc.s 7
		IL_0060: conv.u
		IL_0061: stloc.s 6
		IL_0063: ldloc.3
		IL_0064: ldflda char System.String::_firstChar
		IL_0069: stloc.s 9
		IL_006b: ldloc.s 9
		IL_006d: conv.u
		IL_006e: stloc.s 8
		IL_0070: ldloc.s 8
		IL_0072: ldloc.s 4
		IL_0074: ldarg.1
		IL_0075: call void System.String::wstrcpy(char*, char*, int32)
		IL_007a: ldloc.s 8
		IL_007c: ldarg.1
		IL_007d: conv.i
		IL_007e: ldc.i4.2
		IL_007f: mul
		IL_0080: add
		IL_0081: ldloc.s 6
		IL_0083: ldloc.1
		IL_0084: call void System.String::wstrcpy(char*, char*, int32)
		IL_0089: ldloc.s 8
		IL_008b: ldarg.1
		IL_008c: conv.i
		IL_008d: ldc.i4.2
		IL_008e: mul
		IL_008f: add
		IL_0090: ldloc.1
		IL_0091: conv.i
		IL_0092: ldc.i4.2
		IL_0093: mul
		IL_0094: add
		IL_0095: ldloc.s 4
		IL_0097: ldarg.1
		IL_0098: conv.i
		IL_0099: ldc.i4.2
		IL_009a: mul
		IL_009b: add
		IL_009c: ldloc.0
		IL_009d: ldarg.1
		IL_009e: sub
		IL_009f: call void System.String::wstrcpy(char*, char*, int32)
		IL_00a4: ldc.i4.0
		IL_00a5: conv.u
		IL_00a6: stloc.s 9
		IL_00a8: ldc.i4.0
		IL_00a9: conv.u
		IL_00aa: stloc.s 7
		IL_00ac: ldc.i4.0
		IL_00ad: conv.u
		IL_00ae: stloc.s 5
		IL_00b0: ldloc.3
		IL_00b1: ret
	} // end of method String::Insert

	.method public hidebysig static 
		string Join (
			char separator,
			string[] 'value'
		) cil managed 
	{
		.param [2]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 01 02 00 00
			)
		// Method begins at RVA 0x557e2
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "value"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: ldarg.1
		IL_0010: ldc.i4.0
		IL_0011: ldarg.1
		IL_0012: ldlen
		IL_0013: conv.i4
		IL_0014: call string System.String::Join(char, string[], int32, int32)
		IL_0019: ret
	} // end of method String::Join

	.method public hidebysig static 
		string Join (
			char separator,
			object[] values
		) cil managed 
	{
		.param [2]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 01 02 00 00
			)
		// Method begins at RVA 0x557fd
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarga.s separator
		IL_0002: conv.u
		IL_0003: ldc.i4.1
		IL_0004: ldarg.1
		IL_0005: call string System.String::JoinCore(char*, int32, object[])
		IL_000a: ret
	} // end of method String::Join

	.method public hidebysig static 
		string Join<T> (
			char separator,
			class System.Collections.Generic.IEnumerable`1<!!T> values
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x55809
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarga.s separator
		IL_0002: conv.u
		IL_0003: ldc.i4.1
		IL_0004: ldarg.1
		IL_0005: call string System.String::JoinCore<!!T>(char*, int32, class System.Collections.Generic.IEnumerable`1<!!0>)
		IL_000a: ret
	} // end of method String::Join

	.method public hidebysig static 
		string Join (
			char separator,
			string[] 'value',
			int32 startIndex,
			int32 count
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 01 02 00 00
			)
		// Method begins at RVA 0x55815
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarga.s separator
		IL_0002: conv.u
		IL_0003: ldc.i4.1
		IL_0004: ldarg.1
		IL_0005: ldarg.2
		IL_0006: ldarg.3
		IL_0007: call string System.String::JoinCore(char*, int32, string[], int32, int32)
		IL_000c: ret
	} // end of method String::Join

	.method public hidebysig static 
		string Join (
			string separator,
			string[] 'value'
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [2]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 01 02 00 00
			)
		// Method begins at RVA 0x55823
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "value"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: ldarg.1
		IL_0010: ldc.i4.0
		IL_0011: ldarg.1
		IL_0012: ldlen
		IL_0013: conv.i4
		IL_0014: call string System.String::Join(string, string[], int32, int32)
		IL_0019: ret
	} // end of method String::Join

	.method public hidebysig static 
		string Join (
			string separator,
			object[] values
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [2]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 01 02 00 00
			)
		// Method begins at RVA 0x55840
		// Code size 34 (0x22)
		.maxstack 3
		.locals (
			[0] char*,
			[1] char& pinned
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldsfld string System.String::Empty
		IL_0008: starg.s separator

		IL_000a: ldarg.0
		IL_000b: ldflda char System.String::_firstChar
		IL_0010: stloc.1
		IL_0011: ldloc.1
		IL_0012: conv.u
		IL_0013: stloc.0
		IL_0014: ldloc.0
		IL_0015: ldarg.0
		IL_0016: callvirt instance int32 System.String::get_Length()
		IL_001b: ldarg.1
		IL_001c: call string System.String::JoinCore(char*, int32, object[])
		IL_0021: ret
	} // end of method String::Join

	.method public hidebysig static 
		string Join<T> (
			string separator,
			class System.Collections.Generic.IEnumerable`1<!!T> values
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x55870
		// Code size 34 (0x22)
		.maxstack 3
		.locals (
			[0] char*,
			[1] char& pinned
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldsfld string System.String::Empty
		IL_0008: starg.s separator

		IL_000a: ldarg.0
		IL_000b: ldflda char System.String::_firstChar
		IL_0010: stloc.1
		IL_0011: ldloc.1
		IL_0012: conv.u
		IL_0013: stloc.0
		IL_0014: ldloc.0
		IL_0015: ldarg.0
		IL_0016: callvirt instance int32 System.String::get_Length()
		IL_001b: ldarg.1
		IL_001c: call string System.String::JoinCore<!!T>(char*, int32, class System.Collections.Generic.IEnumerable`1<!!0>)
		IL_0021: ret
	} // end of method String::Join

	.method public hidebysig static 
		string Join (
			string separator,
			class System.Collections.Generic.IEnumerable`1<string> values
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 01 02 00 00
			)
		// Method begins at RVA 0x558a0
		// Code size 159 (0x9f)
		.maxstack 2
		.locals (
			[0] class System.Collections.Generic.IEnumerator`1<string>,
			[1] string,
			[2] valuetype System.Text.ValueStringBuilder,
			[3] string,
			[4] valuetype System.Span`1<char>
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "values"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.1
		IL_000f: callvirt instance class System.Collections.Generic.IEnumerator`1<!0> class System.Collections.Generic.IEnumerable`1<string>::GetEnumerator()
		IL_0014: stloc.0
		.try
		{
			IL_0015: ldloc.0
			IL_0016: callvirt instance bool System.Collections.IEnumerator::MoveNext()
			IL_001b: brtrue.s IL_0025

			IL_001d: ldsfld string System.String::Empty
			IL_0022: stloc.3
			IL_0023: leave.s IL_009d

			IL_0025: ldloc.0
			IL_0026: callvirt instance !0 class System.Collections.Generic.IEnumerator`1<string>::get_Current()
			IL_002b: stloc.1
			IL_002c: ldloc.0
			IL_002d: callvirt instance bool System.Collections.IEnumerator::MoveNext()
			IL_0032: brtrue.s IL_0041

			IL_0034: ldloc.1
			IL_0035: dup
			IL_0036: brtrue.s IL_003e

			IL_0038: pop
			IL_0039: ldsfld string System.String::Empty

			IL_003e: stloc.3
			IL_003f: leave.s IL_009d

			IL_0041: ldc.i4 512
			IL_0046: conv.u
			IL_0047: localloc
			IL_0049: ldc.i4 256
			IL_004e: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
			IL_0053: stloc.s 4
			IL_0055: ldloca.s 2
			IL_0057: ldloc.s 4
			IL_0059: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
			IL_005e: ldloca.s 2
			IL_0060: ldloc.1
			IL_0061: call instance void System.Text.ValueStringBuilder::Append(string)
			// loop start (head: IL_0066)
				IL_0066: ldloca.s 2
				IL_0068: ldarg.0
				IL_0069: call instance void System.Text.ValueStringBuilder::Append(string)
				IL_006e: ldloca.s 2
				IL_0070: ldloc.0
				IL_0071: callvirt instance !0 class System.Collections.Generic.IEnumerator`1<string>::get_Current()
				IL_0076: call instance void System.Text.ValueStringBuilder::Append(string)
				IL_007b: ldloc.0
				IL_007c: callvirt instance bool System.Collections.IEnumerator::MoveNext()
				IL_0081: brtrue.s IL_0066
			// end loop
			IL_0083: ldloca.s 2
			IL_0085: constrained. System.Text.ValueStringBuilder
			IL_008b: callvirt instance string System.Object::ToString()
			IL_0090: stloc.3
			IL_0091: leave.s IL_009d
		} // end .try
		finally
		{
			IL_0093: ldloc.0
			IL_0094: brfalse.s IL_009c

			IL_0096: ldloc.0
			IL_0097: callvirt instance void System.IDisposable::Dispose()

			IL_009c: endfinally
		} // end handler

		IL_009d: ldloc.3
		IL_009e: ret
	} // end of method String::Join

	.method public hidebysig static 
		string Join (
			string separator,
			string[] 'value',
			int32 startIndex,
			int32 count
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 01 02 00 00
			)
		// Method begins at RVA 0x5595c
		// Code size 36 (0x24)
		.maxstack 5
		.locals (
			[0] char*,
			[1] char& pinned
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldsfld string System.String::Empty
		IL_0008: starg.s separator

		IL_000a: ldarg.0
		IL_000b: ldflda char System.String::_firstChar
		IL_0010: stloc.1
		IL_0011: ldloc.1
		IL_0012: conv.u
		IL_0013: stloc.0
		IL_0014: ldloc.0
		IL_0015: ldarg.0
		IL_0016: callvirt instance int32 System.String::get_Length()
		IL_001b: ldarg.1
		IL_001c: ldarg.2
		IL_001d: ldarg.3
		IL_001e: call string System.String::JoinCore(char*, int32, string[], int32, int32)
		IL_0023: ret
	} // end of method String::Join

	.method private hidebysig static 
		string JoinCore (
			char* separator,
			int32 separatorLength,
			object[] values
		) cil managed 
	{
		// Method begins at RVA 0x5598c
		// Code size 152 (0x98)
		.maxstack 3
		.locals (
			[0] string,
			[1] valuetype System.Text.ValueStringBuilder,
			[2] valuetype System.Span`1<char>,
			[3] int32,
			[4] object
		)

		IL_0000: ldarg.2
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "values"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.2
		IL_000f: ldlen
		IL_0010: brtrue.s IL_0018

		IL_0012: ldsfld string System.String::Empty
		IL_0017: ret

		IL_0018: ldarg.2
		IL_0019: ldc.i4.0
		IL_001a: ldelem.ref
		IL_001b: dup
		IL_001c: brtrue.s IL_0022

		IL_001e: pop
		IL_001f: ldnull
		IL_0020: br.s IL_0027

		IL_0022: callvirt instance string System.Object::ToString()

		IL_0027: stloc.0
		IL_0028: ldarg.2
		IL_0029: ldlen
		IL_002a: conv.i4
		IL_002b: ldc.i4.1
		IL_002c: bne.un.s IL_0039

		IL_002e: ldloc.0
		IL_002f: dup
		IL_0030: brtrue.s IL_0038

		IL_0032: pop
		IL_0033: ldsfld string System.String::Empty

		IL_0038: ret

		IL_0039: ldc.i4 512
		IL_003e: conv.u
		IL_003f: localloc
		IL_0041: ldc.i4 256
		IL_0046: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_004b: stloc.2
		IL_004c: ldloca.s 1
		IL_004e: ldloc.2
		IL_004f: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
		IL_0054: ldloca.s 1
		IL_0056: ldloc.0
		IL_0057: call instance void System.Text.ValueStringBuilder::Append(string)
		IL_005c: ldc.i4.1
		IL_005d: stloc.3
		IL_005e: br.s IL_0084
		// loop start (head: IL_0084)
			IL_0060: ldloca.s 1
			IL_0062: ldarg.0
			IL_0063: ldarg.1
			IL_0064: call instance void System.Text.ValueStringBuilder::Append(char*, int32)
			IL_0069: ldarg.2
			IL_006a: ldloc.3
			IL_006b: ldelem.ref
			IL_006c: stloc.s 4
			IL_006e: ldloc.s 4
			IL_0070: brfalse.s IL_0080

			IL_0072: ldloca.s 1
			IL_0074: ldloc.s 4
			IL_0076: callvirt instance string System.Object::ToString()
			IL_007b: call instance void System.Text.ValueStringBuilder::Append(string)

			IL_0080: ldloc.3
			IL_0081: ldc.i4.1
			IL_0082: add
			IL_0083: stloc.3

			IL_0084: ldloc.3
			IL_0085: ldarg.2
			IL_0086: ldlen
			IL_0087: conv.i4
			IL_0088: blt.s IL_0060
		// end loop

		IL_008a: ldloca.s 1
		IL_008c: constrained. System.Text.ValueStringBuilder
		IL_0092: callvirt instance string System.Object::ToString()
		IL_0097: ret
	} // end of method String::JoinCore

	.method private hidebysig static 
		string JoinCore<T> (
			char* separator,
			int32 separatorLength,
			class System.Collections.Generic.IEnumerable`1<!!T> values
		) cil managed 
	{
		// Method begins at RVA 0x55a30
		// Code size 214 (0xd6)
		.maxstack 3
		.locals (
			[0] class System.Collections.Generic.IEnumerator`1<!!T>,
			[1] !!T,
			[2] string,
			[3] valuetype System.Text.ValueStringBuilder,
			[4] string,
			[5] valuetype System.Span`1<char>
		)

		IL_0000: ldarg.2
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "values"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.2
		IL_000f: callvirt instance class System.Collections.Generic.IEnumerator`1<!0> class System.Collections.Generic.IEnumerable`1<!!T>::GetEnumerator()
		IL_0014: stloc.0
		.try
		{
			IL_0015: ldloc.0
			IL_0016: callvirt instance bool System.Collections.IEnumerator::MoveNext()
			IL_001b: brtrue.s IL_0029

			IL_001d: ldsfld string System.String::Empty
			IL_0022: stloc.s 4
			IL_0024: leave IL_00d3

			IL_0029: ldloc.0
			IL_002a: callvirt instance !0 class System.Collections.Generic.IEnumerator`1<!!T>::get_Current()
			IL_002f: stloc.1
			IL_0030: ldloc.1
			IL_0031: box !!T
			IL_0036: brtrue.s IL_003b

			IL_0038: ldnull
			IL_0039: br.s IL_0048

			IL_003b: ldloca.s 1
			IL_003d: constrained. !!T
			IL_0043: callvirt instance string System.Object::ToString()

			IL_0048: stloc.2
			IL_0049: ldloc.0
			IL_004a: callvirt instance bool System.Collections.IEnumerator::MoveNext()
			IL_004f: brtrue.s IL_005f

			IL_0051: ldloc.2
			IL_0052: dup
			IL_0053: brtrue.s IL_005b

			IL_0055: pop
			IL_0056: ldsfld string System.String::Empty

			IL_005b: stloc.s 4
			IL_005d: leave.s IL_00d3

			IL_005f: ldc.i4 512
			IL_0064: conv.u
			IL_0065: localloc
			IL_0067: ldc.i4 256
			IL_006c: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
			IL_0071: stloc.s 5
			IL_0073: ldloca.s 3
			IL_0075: ldloc.s 5
			IL_0077: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
			IL_007c: ldloca.s 3
			IL_007e: ldloc.2
			IL_007f: call instance void System.Text.ValueStringBuilder::Append(string)
			// loop start (head: IL_0084)
				IL_0084: ldloc.0
				IL_0085: callvirt instance !0 class System.Collections.Generic.IEnumerator`1<!!T>::get_Current()
				IL_008a: stloc.1
				IL_008b: ldloca.s 3
				IL_008d: ldarg.0
				IL_008e: ldarg.1
				IL_008f: call instance void System.Text.ValueStringBuilder::Append(char*, int32)
				IL_0094: ldloc.1
				IL_0095: box !!T
				IL_009a: brfalse.s IL_00b0

				IL_009c: ldloca.s 3
				IL_009e: ldloca.s 1
				IL_00a0: constrained. !!T
				IL_00a6: callvirt instance string System.Object::ToString()
				IL_00ab: call instance void System.Text.ValueStringBuilder::Append(string)

				IL_00b0: ldloc.0
				IL_00b1: callvirt instance bool System.Collections.IEnumerator::MoveNext()
				IL_00b6: brtrue.s IL_0084
			// end loop
			IL_00b8: ldloca.s 3
			IL_00ba: constrained. System.Text.ValueStringBuilder
			IL_00c0: callvirt instance string System.Object::ToString()
			IL_00c5: stloc.s 4
			IL_00c7: leave.s IL_00d3
		} // end .try
		finally
		{
			IL_00c9: ldloc.0
			IL_00ca: brfalse.s IL_00d2

			IL_00cc: ldloc.0
			IL_00cd: callvirt instance void System.IDisposable::Dispose()

			IL_00d2: endfinally
		} // end handler

		IL_00d3: ldloc.s 4
		IL_00d5: ret
	} // end of method String::JoinCore

	.method private hidebysig static 
		string JoinCore (
			char* separator,
			int32 separatorLength,
			string[] 'value',
			int32 startIndex,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0x55b24
		// Code size 351 (0x15f)
		.maxstack 5
		.locals (
			[0] int64,
			[1] int32,
			[2] string,
			[3] int32,
			[4] int32,
			[5] int32,
			[6] string,
			[7] int32,
			[8] int32,
			[9] string,
			[10] int32,
			[11] char*,
			[12] char& pinned
		)

		IL_0000: ldarg.2
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "value"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.3
		IL_000f: ldc.i4.0
		IL_0010: bge.s IL_0022

		IL_0012: ldstr "startIndex"
		IL_0017: call string System.SR::get_ArgumentOutOfRange_StartIndex()
		IL_001c: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0021: throw

		IL_0022: ldarg.s count
		IL_0024: ldc.i4.0
		IL_0025: bge.s IL_0037

		IL_0027: ldstr "count"
		IL_002c: call string System.SR::get_ArgumentOutOfRange_NegativeCount()
		IL_0031: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0036: throw

		IL_0037: ldarg.3
		IL_0038: ldarg.2
		IL_0039: ldlen
		IL_003a: conv.i4
		IL_003b: ldarg.s count
		IL_003d: sub
		IL_003e: ble.s IL_0050

		IL_0040: ldstr "startIndex"
		IL_0045: call string System.SR::get_ArgumentOutOfRange_IndexCountBuffer()
		IL_004a: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_004f: throw

		IL_0050: ldarg.s count
		IL_0052: ldc.i4.1
		IL_0053: bgt.s IL_006c

		IL_0055: ldarg.s count
		IL_0057: brfalse.s IL_0066

		IL_0059: ldarg.2
		IL_005a: ldarg.3
		IL_005b: ldelem.ref
		IL_005c: dup
		IL_005d: brtrue.s IL_006b

		IL_005f: pop
		IL_0060: ldsfld string System.String::Empty
		IL_0065: ret

		IL_0066: ldsfld string System.String::Empty

		IL_006b: ret

		IL_006c: ldarg.s count
		IL_006e: ldc.i4.1
		IL_006f: sub
		IL_0070: conv.i8
		IL_0071: ldarg.1
		IL_0072: conv.i8
		IL_0073: mul
		IL_0074: stloc.0
		IL_0075: ldloc.0
		IL_0076: ldc.i4 2147483647
		IL_007b: conv.i8
		IL_007c: ble.s IL_0084

		IL_007e: newobj instance void System.OutOfMemoryException::.ctor()
		IL_0083: throw

		IL_0084: ldloc.0
		IL_0085: conv.i4
		IL_0086: stloc.1
		IL_0087: ldarg.3
		IL_0088: stloc.s 4
		IL_008a: ldarg.3
		IL_008b: ldarg.s count
		IL_008d: add
		IL_008e: stloc.s 5
		IL_0090: br.s IL_00b6
		// loop start (head: IL_00b6)
			IL_0092: ldarg.2
			IL_0093: ldloc.s 4
			IL_0095: ldelem.ref
			IL_0096: stloc.s 6
			IL_0098: ldloc.s 6
			IL_009a: brfalse.s IL_00b0

			IL_009c: ldloc.1
			IL_009d: ldloc.s 6
			IL_009f: callvirt instance int32 System.String::get_Length()
			IL_00a4: add
			IL_00a5: stloc.1
			IL_00a6: ldloc.1
			IL_00a7: ldc.i4.0
			IL_00a8: bge.s IL_00b0

			IL_00aa: newobj instance void System.OutOfMemoryException::.ctor()
			IL_00af: throw

			IL_00b0: ldloc.s 4
			IL_00b2: ldc.i4.1
			IL_00b3: add
			IL_00b4: stloc.s 4

			IL_00b6: ldloc.s 4
			IL_00b8: ldloc.s 5
			IL_00ba: blt.s IL_0092
		// end loop

		IL_00bc: ldloc.1
		IL_00bd: call string System.String::FastAllocateString(int32)
		IL_00c2: stloc.2
		IL_00c3: ldc.i4.0
		IL_00c4: stloc.3
		IL_00c5: ldarg.3
		IL_00c6: stloc.s 7
		IL_00c8: ldarg.3
		IL_00c9: ldarg.s count
		IL_00cb: add
		IL_00cc: stloc.s 8
		IL_00ce: br.s IL_013d
		// loop start (head: IL_013d)
			IL_00d0: ldarg.2
			IL_00d1: ldloc.s 7
			IL_00d3: ldelem.ref
			IL_00d4: stloc.s 9
			IL_00d6: ldloc.s 9
			IL_00d8: brfalse.s IL_00fc

			IL_00da: ldloc.s 9
			IL_00dc: callvirt instance int32 System.String::get_Length()
			IL_00e1: stloc.s 10
			IL_00e3: ldloc.s 10
			IL_00e5: ldloc.1
			IL_00e6: ldloc.3
			IL_00e7: sub
			IL_00e8: ble.s IL_00ee

			IL_00ea: ldc.i4.m1
			IL_00eb: stloc.3
			IL_00ec: br.s IL_0143

			IL_00ee: ldloc.2
			IL_00ef: ldloc.3
			IL_00f0: ldloc.s 9
			IL_00f2: call void System.String::FillStringChecked(string, int32, string)
			IL_00f7: ldloc.3
			IL_00f8: ldloc.s 10
			IL_00fa: add
			IL_00fb: stloc.3

			IL_00fc: ldloc.s 7
			IL_00fe: ldloc.s 8
			IL_0100: ldc.i4.1
			IL_0101: sub
			IL_0102: bge.s IL_0137

			IL_0104: ldloc.2
			IL_0105: ldflda char System.String::_firstChar
			IL_010a: stloc.s 12
			IL_010c: ldloc.s 12
			IL_010e: conv.u
			IL_010f: stloc.s 11
			IL_0111: ldarg.1
			IL_0112: ldc.i4.1
			IL_0113: bne.un.s IL_0121

			IL_0115: ldloc.s 11
			IL_0117: ldloc.3
			IL_0118: conv.i
			IL_0119: ldc.i4.2
			IL_011a: mul
			IL_011b: add
			IL_011c: ldarg.0
			IL_011d: ldind.u2
			IL_011e: stind.i2
			IL_011f: br.s IL_012f

			IL_0121: ldloc.s 11
			IL_0123: ldloc.3
			IL_0124: conv.i
			IL_0125: ldc.i4.2
			IL_0126: mul
			IL_0127: add
			IL_0128: ldarg.0
			IL_0129: ldarg.1
			IL_012a: call void System.String::wstrcpy(char*, char*, int32)

			IL_012f: ldc.i4.0
			IL_0130: conv.u
			IL_0131: stloc.s 12
			IL_0133: ldloc.3
			IL_0134: ldarg.1
			IL_0135: add
			IL_0136: stloc.3

			IL_0137: ldloc.s 7
			IL_0139: ldc.i4.1
			IL_013a: add
			IL_013b: stloc.s 7

			IL_013d: ldloc.s 7
			IL_013f: ldloc.s 8
			IL_0141: blt.s IL_00d0
		// end loop

		IL_0143: ldloc.3
		IL_0144: ldloc.1
		IL_0145: beq.s IL_015d

		IL_0147: ldarg.0
		IL_0148: ldarg.1
		IL_0149: ldarg.2
		IL_014a: callvirt instance object System.Array::Clone()
		IL_014f: castclass string[]
		IL_0154: ldarg.3
		IL_0155: ldarg.s count
		IL_0157: call string System.String::JoinCore(char*, int32, string[], int32, int32)
		IL_015c: ret

		IL_015d: ldloc.2
		IL_015e: ret
	} // end of method String::JoinCore

	.method public hidebysig 
		instance string PadLeft (
			int32 totalWidth
		) cil managed 
	{
		// Method begins at RVA 0x55c8f
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.s 32
		IL_0004: call instance string System.String::PadLeft(int32, char)
		IL_0009: ret
	} // end of method String::PadLeft

	.method public hidebysig 
		instance string PadLeft (
			int32 totalWidth,
			char paddingChar
		) cil managed 
	{
		// Method begins at RVA 0x55c9c
		// Code size 118 (0x76)
		.maxstack 3
		.locals (
			[0] int32,
			[1] int32,
			[2] string,
			[3] char*,
			[4] char& pinned,
			[5] int32,
			[6] char*,
			[7] char& pinned
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0014

		IL_0004: ldstr "totalWidth"
		IL_0009: call string System.SR::get_ArgumentOutOfRange_NeedNonNegNum()
		IL_000e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0013: throw

		IL_0014: ldarg.0
		IL_0015: call instance int32 System.String::get_Length()
		IL_001a: stloc.0
		IL_001b: ldarg.1
		IL_001c: ldloc.0
		IL_001d: sub
		IL_001e: stloc.1
		IL_001f: ldloc.1
		IL_0020: ldc.i4.0
		IL_0021: bgt.s IL_0025

		IL_0023: ldarg.0
		IL_0024: ret

		IL_0025: ldarg.1
		IL_0026: call string System.String::FastAllocateString(int32)
		IL_002b: stloc.2
		IL_002c: ldloc.2
		IL_002d: ldflda char System.String::_firstChar
		IL_0032: stloc.s 4
		IL_0034: ldloc.s 4
		IL_0036: conv.u
		IL_0037: stloc.3
		IL_0038: ldc.i4.0
		IL_0039: stloc.s 5
		IL_003b: br.s IL_004c
		// loop start (head: IL_004c)
			IL_003d: ldloc.3
			IL_003e: ldloc.s 5
			IL_0040: conv.i
			IL_0041: ldc.i4.2
			IL_0042: mul
			IL_0043: add
			IL_0044: ldarg.2
			IL_0045: stind.i2
			IL_0046: ldloc.s 5
			IL_0048: ldc.i4.1
			IL_0049: add
			IL_004a: stloc.s 5

			IL_004c: ldloc.s 5
			IL_004e: ldloc.1
			IL_004f: blt.s IL_003d
		// end loop

		IL_0051: ldarg.0
		IL_0052: ldflda char System.String::_firstChar
		IL_0057: stloc.s 7
		IL_0059: ldloc.s 7
		IL_005b: conv.u
		IL_005c: stloc.s 6
		IL_005e: ldloc.3
		IL_005f: ldloc.1
		IL_0060: conv.i
		IL_0061: ldc.i4.2
		IL_0062: mul
		IL_0063: add
		IL_0064: ldloc.s 6
		IL_0066: ldloc.0
		IL_0067: call void System.String::wstrcpy(char*, char*, int32)
		IL_006c: ldc.i4.0
		IL_006d: conv.u
		IL_006e: stloc.s 7
		IL_0070: ldc.i4.0
		IL_0071: conv.u
		IL_0072: stloc.s 4
		IL_0074: ldloc.2
		IL_0075: ret
	} // end of method String::PadLeft

	.method public hidebysig 
		instance string PadRight (
			int32 totalWidth
		) cil managed 
	{
		// Method begins at RVA 0x55d1e
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.s 32
		IL_0004: call instance string System.String::PadRight(int32, char)
		IL_0009: ret
	} // end of method String::PadRight

	.method public hidebysig 
		instance string PadRight (
			int32 totalWidth,
			char paddingChar
		) cil managed 
	{
		// Method begins at RVA 0x55d2c
		// Code size 115 (0x73)
		.maxstack 3
		.locals (
			[0] int32,
			[1] int32,
			[2] string,
			[3] char*,
			[4] char& pinned,
			[5] char*,
			[6] char& pinned,
			[7] int32
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0014

		IL_0004: ldstr "totalWidth"
		IL_0009: call string System.SR::get_ArgumentOutOfRange_NeedNonNegNum()
		IL_000e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0013: throw

		IL_0014: ldarg.0
		IL_0015: call instance int32 System.String::get_Length()
		IL_001a: stloc.0
		IL_001b: ldarg.1
		IL_001c: ldloc.0
		IL_001d: sub
		IL_001e: stloc.1
		IL_001f: ldloc.1
		IL_0020: ldc.i4.0
		IL_0021: bgt.s IL_0025

		IL_0023: ldarg.0
		IL_0024: ret

		IL_0025: ldarg.1
		IL_0026: call string System.String::FastAllocateString(int32)
		IL_002b: stloc.2
		IL_002c: ldloc.2
		IL_002d: ldflda char System.String::_firstChar
		IL_0032: stloc.s 4
		IL_0034: ldloc.s 4
		IL_0036: conv.u
		IL_0037: stloc.3
		IL_0038: ldarg.0
		IL_0039: ldflda char System.String::_firstChar
		IL_003e: stloc.s 6
		IL_0040: ldloc.s 6
		IL_0042: conv.u
		IL_0043: stloc.s 5
		IL_0045: ldloc.3
		IL_0046: ldloc.s 5
		IL_0048: ldloc.0
		IL_0049: call void System.String::wstrcpy(char*, char*, int32)
		IL_004e: ldc.i4.0
		IL_004f: conv.u
		IL_0050: stloc.s 6
		IL_0052: ldc.i4.0
		IL_0053: stloc.s 7
		IL_0055: br.s IL_0068
		// loop start (head: IL_0068)
			IL_0057: ldloc.3
			IL_0058: ldloc.0
			IL_0059: ldloc.s 7
			IL_005b: add
			IL_005c: conv.i
			IL_005d: ldc.i4.2
			IL_005e: mul
			IL_005f: add
			IL_0060: ldarg.2
			IL_0061: stind.i2
			IL_0062: ldloc.s 7
			IL_0064: ldc.i4.1
			IL_0065: add
			IL_0066: stloc.s 7

			IL_0068: ldloc.s 7
			IL_006a: ldloc.1
			IL_006b: blt.s IL_0057
		// end loop

		IL_006d: ldc.i4.0
		IL_006e: conv.u
		IL_006f: stloc.s 4
		IL_0071: ldloc.2
		IL_0072: ret
	} // end of method String::PadRight

	.method public hidebysig 
		instance string Remove (
			int32 startIndex,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0x55dac
		// Code size 164 (0xa4)
		.maxstack 4
		.locals (
			[0] int32,
			[1] int32,
			[2] string,
			[3] char*,
			[4] char& pinned,
			[5] char*,
			[6] char& pinned
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0014

		IL_0004: ldstr "startIndex"
		IL_0009: call string System.SR::get_ArgumentOutOfRange_StartIndex()
		IL_000e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0013: throw

		IL_0014: ldarg.2
		IL_0015: ldc.i4.0
		IL_0016: bge.s IL_0028

		IL_0018: ldstr "count"
		IL_001d: call string System.SR::get_ArgumentOutOfRange_NegativeCount()
		IL_0022: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0027: throw

		IL_0028: ldarg.0
		IL_0029: call instance int32 System.String::get_Length()
		IL_002e: stloc.0
		IL_002f: ldarg.2
		IL_0030: ldloc.0
		IL_0031: ldarg.1
		IL_0032: sub
		IL_0033: ble.s IL_0045

		IL_0035: ldstr "count"
		IL_003a: call string System.SR::get_ArgumentOutOfRange_IndexCount()
		IL_003f: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0044: throw

		IL_0045: ldarg.2
		IL_0046: brtrue.s IL_004a

		IL_0048: ldarg.0
		IL_0049: ret

		IL_004a: ldloc.0
		IL_004b: ldarg.2
		IL_004c: sub
		IL_004d: stloc.1
		IL_004e: ldloc.1
		IL_004f: brtrue.s IL_0057

		IL_0051: ldsfld string System.String::Empty
		IL_0056: ret

		IL_0057: ldloc.1
		IL_0058: call string System.String::FastAllocateString(int32)
		IL_005d: stloc.2
		IL_005e: ldarg.0
		IL_005f: ldflda char System.String::_firstChar
		IL_0064: stloc.s 4
		IL_0066: ldloc.s 4
		IL_0068: conv.u
		IL_0069: stloc.3
		IL_006a: ldloc.2
		IL_006b: ldflda char System.String::_firstChar
		IL_0070: stloc.s 6
		IL_0072: ldloc.s 6
		IL_0074: conv.u
		IL_0075: stloc.s 5
		IL_0077: ldloc.s 5
		IL_0079: ldloc.3
		IL_007a: ldarg.1
		IL_007b: call void System.String::wstrcpy(char*, char*, int32)
		IL_0080: ldloc.s 5
		IL_0082: ldarg.1
		IL_0083: conv.i
		IL_0084: ldc.i4.2
		IL_0085: mul
		IL_0086: add
		IL_0087: ldloc.3
		IL_0088: ldarg.1
		IL_0089: conv.i
		IL_008a: ldc.i4.2
		IL_008b: mul
		IL_008c: add
		IL_008d: ldarg.2
		IL_008e: conv.i
		IL_008f: ldc.i4.2
		IL_0090: mul
		IL_0091: add
		IL_0092: ldloc.1
		IL_0093: ldarg.1
		IL_0094: sub
		IL_0095: call void System.String::wstrcpy(char*, char*, int32)
		IL_009a: ldc.i4.0
		IL_009b: conv.u
		IL_009c: stloc.s 6
		IL_009e: ldc.i4.0
		IL_009f: conv.u
		IL_00a0: stloc.s 4
		IL_00a2: ldloc.2
		IL_00a3: ret
	} // end of method String::Remove

	.method public hidebysig 
		instance string Remove (
			int32 startIndex
		) cil managed 
	{
		// Method begins at RVA 0x55e5c
		// Code size 54 (0x36)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0014

		IL_0004: ldstr "startIndex"
		IL_0009: call string System.SR::get_ArgumentOutOfRange_StartIndex()
		IL_000e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0013: throw

		IL_0014: ldarg.1
		IL_0015: ldarg.0
		IL_0016: call instance int32 System.String::get_Length()
		IL_001b: blt.s IL_002d

		IL_001d: ldstr "startIndex"
		IL_0022: call string System.SR::get_ArgumentOutOfRange_StartIndexLessThanLength()
		IL_0027: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_002c: throw

		IL_002d: ldarg.0
		IL_002e: ldc.i4.0
		IL_002f: ldarg.1
		IL_0030: call instance string System.String::Substring(int32, int32)
		IL_0035: ret
	} // end of method String::Remove

	.method public hidebysig 
		instance string Replace (
			string oldValue,
			string newValue,
			bool ignoreCase,
			class System.Globalization.CultureInfo culture
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [4]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x55e93
		// Code size 30 (0x1e)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.s culture
		IL_0005: brtrue.s IL_000a

		IL_0007: ldnull
		IL_0008: br.s IL_0011

		IL_000a: ldarg.s culture
		IL_000c: callvirt instance class System.Globalization.CompareInfo System.Globalization.CultureInfo::get_CompareInfo()

		IL_0011: ldarg.3
		IL_0012: brtrue.s IL_0017

		IL_0014: ldc.i4.0
		IL_0015: br.s IL_0018

		IL_0017: ldc.i4.1

		IL_0018: call instance string System.String::ReplaceCore(string, string, class System.Globalization.CompareInfo, valuetype System.Globalization.CompareOptions)
		IL_001d: ret
	} // end of method String::Replace

	.method public hidebysig 
		instance string Replace (
			string oldValue,
			string newValue,
			valuetype System.StringComparison comparisonType
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x55eb4
		// Code size 121 (0x79)
		.maxstack 5

		IL_0000: ldarg.3
		IL_0001: switch (IL_0020, IL_0020, IL_0039, IL_0039, IL_004d, IL_0056)

		IL_001e: br.s IL_0069

		IL_0020: ldarg.0
		IL_0021: ldarg.1
		IL_0022: ldarg.2
		IL_0023: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()
		IL_0028: callvirt instance class System.Globalization.CompareInfo System.Globalization.CultureInfo::get_CompareInfo()
		IL_002d: ldarg.3
		IL_002e: call valuetype System.Globalization.CompareOptions System.String::GetCaseCompareOfComparisonCulture(valuetype System.StringComparison)
		IL_0033: call instance string System.String::ReplaceCore(string, string, class System.Globalization.CompareInfo, valuetype System.Globalization.CompareOptions)
		IL_0038: ret

		IL_0039: ldarg.0
		IL_003a: ldarg.1
		IL_003b: ldarg.2
		IL_003c: ldsfld class System.Globalization.CompareInfo System.Globalization.CompareInfo::Invariant
		IL_0041: ldarg.3
		IL_0042: call valuetype System.Globalization.CompareOptions System.String::GetCaseCompareOfComparisonCulture(valuetype System.StringComparison)
		IL_0047: call instance string System.String::ReplaceCore(string, string, class System.Globalization.CompareInfo, valuetype System.Globalization.CompareOptions)
		IL_004c: ret

		IL_004d: ldarg.0
		IL_004e: ldarg.1
		IL_004f: ldarg.2
		IL_0050: call instance string System.String::Replace(string, string)
		IL_0055: ret

		IL_0056: ldarg.0
		IL_0057: ldarg.1
		IL_0058: ldarg.2
		IL_0059: ldsfld class System.Globalization.CompareInfo System.Globalization.CompareInfo::Invariant
		IL_005e: ldc.i4 268435456
		IL_0063: call instance string System.String::ReplaceCore(string, string, class System.Globalization.CompareInfo, valuetype System.Globalization.CompareOptions)
		IL_0068: ret

		IL_0069: call string System.SR::get_NotSupported_StringComparison()
		IL_006e: ldstr "comparisonType"
		IL_0073: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0078: throw
	} // end of method String::Replace

	.method private hidebysig 
		instance string ReplaceCore (
			string oldValue,
			string newValue,
			class System.Globalization.CompareInfo ci,
			valuetype System.Globalization.CompareOptions options
		) cil managed 
	{
		// Method begins at RVA 0x55f3c
		// Code size 84 (0x54)
		.maxstack 5

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "oldValue"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.1
		IL_000f: callvirt instance int32 System.String::get_Length()
		IL_0014: brtrue.s IL_0026

		IL_0016: call string System.SR::get_Argument_StringZeroLength()
		IL_001b: ldstr "oldValue"
		IL_0020: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0025: throw

		IL_0026: ldarg.0
		IL_0027: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_002c: ldarg.1
		IL_002d: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string)
		IL_0032: ldarg.2
		IL_0033: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string)
		IL_0038: ldarg.3
		IL_0039: dup
		IL_003a: brtrue.s IL_0047

		IL_003c: pop
		IL_003d: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()
		IL_0042: callvirt instance class System.Globalization.CompareInfo System.Globalization.CultureInfo::get_CompareInfo()

		IL_0047: ldarg.s options
		IL_0049: call string System.String::ReplaceCore(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.CompareInfo, valuetype System.Globalization.CompareOptions)
		IL_004e: dup
		IL_004f: brtrue.s IL_0053

		IL_0051: pop
		IL_0052: ldarg.0

		IL_0053: ret
	} // end of method String::ReplaceCore

	.method private hidebysig static 
		string ReplaceCore (
			valuetype System.ReadOnlySpan`1<char> searchSpace,
			valuetype System.ReadOnlySpan`1<char> oldValue,
			valuetype System.ReadOnlySpan`1<char> newValue,
			class System.Globalization.CompareInfo compareInfo,
			valuetype System.Globalization.CompareOptions options
		) cil managed 
	{
		// Method begins at RVA 0x55f9c
		// Code size 139 (0x8b)
		.maxstack 5
		.locals (
			[0] valuetype System.Text.ValueStringBuilder,
			[1] bool,
			[2] valuetype System.Span`1<char>,
			[3] int32,
			[4] int32
		)

		IL_0000: ldc.i4 512
		IL_0005: conv.u
		IL_0006: localloc
		IL_0008: ldc.i4 256
		IL_000d: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_0012: stloc.2
		IL_0013: ldloca.s 0
		IL_0015: ldloc.2
		IL_0016: call instance void System.Text.ValueStringBuilder::.ctor(valuetype System.Span`1<char>)
		IL_001b: ldloca.s 0
		IL_001d: ldarga.s searchSpace
		IL_001f: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0024: call instance void System.Text.ValueStringBuilder::EnsureCapacity(int32)
		IL_0029: ldc.i4.0
		IL_002a: stloc.1
		// loop start (head: IL_002b)
			IL_002b: ldarg.3
			IL_002c: ldarg.0
			IL_002d: ldarg.1
			IL_002e: ldarg.s options
			IL_0030: ldloca.s 4
			IL_0032: callvirt instance int32 System.Globalization.CompareInfo::IndexOf(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.CompareOptions, int32&)
			IL_0037: stloc.3
			IL_0038: ldloc.3
			IL_0039: ldc.i4.0
			IL_003a: blt.s IL_0069

			IL_003c: ldloc.s 4
			IL_003e: brfalse.s IL_0069

			IL_0040: ldloca.s 0
			IL_0042: ldarga.s searchSpace
			IL_0044: ldc.i4.0
			IL_0045: ldloc.3
			IL_0046: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::Slice(int32, int32)
			IL_004b: call instance void System.Text.ValueStringBuilder::Append(valuetype System.ReadOnlySpan`1<char>)
			IL_0050: ldloca.s 0
			IL_0052: ldarg.2
			IL_0053: call instance void System.Text.ValueStringBuilder::Append(valuetype System.ReadOnlySpan`1<char>)
			IL_0058: ldarga.s searchSpace
			IL_005a: ldloc.3
			IL_005b: ldloc.s 4
			IL_005d: add
			IL_005e: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::Slice(int32)
			IL_0063: starg.s searchSpace
			IL_0065: ldc.i4.1
			IL_0066: stloc.1
			IL_0067: br.s IL_002b
		// end loop

		IL_0069: ldloc.1
		IL_006a: brtrue.s IL_0075

		IL_006c: ldloca.s 0
		IL_006e: call instance void System.Text.ValueStringBuilder::Dispose()
		IL_0073: ldnull
		IL_0074: ret

		IL_0075: ldloca.s 0
		IL_0077: ldarg.0
		IL_0078: call instance void System.Text.ValueStringBuilder::Append(valuetype System.ReadOnlySpan`1<char>)
		IL_007d: ldloca.s 0
		IL_007f: constrained. System.Text.ValueStringBuilder
		IL_0085: callvirt instance string System.Object::ToString()
		IL_008a: ret
	} // end of method String::ReplaceCore

	.method public hidebysig 
		instance string Replace (
			char oldChar,
			char newChar
		) cil managed 
	{
		// Method begins at RVA 0x56034
		// Code size 287 (0x11f)
		.maxstack 3
		.locals (
			[0] int32,
			[1] int32,
			[2] string,
			[3] int32,
			[4] uint16&,
			[5] uint16&,
			[6] valuetype System.Numerics.Vector`1<uint16>,
			[7] valuetype System.Numerics.Vector`1<uint16>,
			[8] valuetype System.Numerics.Vector`1<uint16>,
			[9] valuetype System.Numerics.Vector`1<uint16>,
			[10] valuetype System.Numerics.Vector`1<uint16>,
			[11] uint16
		)

		IL_0000: ldarg.1
		IL_0001: ldarg.2
		IL_0002: bne.un.s IL_0006

		IL_0004: ldarg.0
		IL_0005: ret

		IL_0006: ldarg.0
		IL_0007: ldarg.1
		IL_0008: call instance int32 System.String::IndexOf(char)
		IL_000d: stloc.0
		IL_000e: ldloc.0
		IL_000f: ldc.i4.0
		IL_0010: bge.s IL_0014

		IL_0012: ldarg.0
		IL_0013: ret

		IL_0014: ldarg.0
		IL_0015: call instance int32 System.String::get_Length()
		IL_001a: ldloc.0
		IL_001b: sub
		IL_001c: stloc.1
		IL_001d: ldarg.0
		IL_001e: call instance int32 System.String::get_Length()
		IL_0023: call string System.String::FastAllocateString(int32)
		IL_0028: stloc.2
		IL_0029: ldloc.0
		IL_002a: stloc.3
		IL_002b: ldloc.3
		IL_002c: ldc.i4.0
		IL_002d: ble.s IL_0042

		IL_002f: ldloc.2
		IL_0030: ldflda char System.String::_firstChar
		IL_0035: ldarg.0
		IL_0036: ldflda char System.String::_firstChar
		IL_003b: ldloc.3
		IL_003c: conv.u
		IL_003d: call void System.Buffer::Memmove<char>(!!0&, !!0&, native uint)

		IL_0042: ldarg.0
		IL_0043: ldflda char System.String::_firstChar
		IL_0048: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<char, uint16>(!!0&)
		IL_004d: ldloc.3
		IL_004e: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<uint16>(!!0&, int32)
		IL_0053: stloc.s 4
		IL_0055: ldloc.2
		IL_0056: ldflda char System.String::_firstChar
		IL_005b: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<char, uint16>(!!0&)
		IL_0060: ldloc.3
		IL_0061: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<uint16>(!!0&, int32)
		IL_0066: stloc.s 5
		IL_0068: call bool System.Numerics.Vector::get_IsHardwareAccelerated()
		IL_006d: brfalse IL_0119

		IL_0072: ldloc.1
		IL_0073: call int32 valuetype System.Numerics.Vector`1<uint16>::get_Count()
		IL_0078: blt IL_0119

		IL_007d: ldloca.s 6
		IL_007f: ldarg.1
		IL_0080: call instance void valuetype System.Numerics.Vector`1<uint16>::.ctor(!0)
		IL_0085: ldloca.s 7
		IL_0087: ldarg.2
		IL_0088: call instance void valuetype System.Numerics.Vector`1<uint16>::.ctor(!0)
		// loop start (head: IL_008d)
			IL_008d: ldloc.s 4
			IL_008f: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<uint16, uint8>(!!0&)
			IL_0094: call !!0 Internal.Runtime.CompilerServices.Unsafe::ReadUnaligned<valuetype System.Numerics.Vector`1<uint16>>(uint8&)
			IL_0099: stloc.s 8
			IL_009b: ldloc.s 8
			IL_009d: ldloc.s 6
			IL_009f: call valuetype System.Numerics.Vector`1<!!0> System.Numerics.Vector::Equals<uint16>(valuetype System.Numerics.Vector`1<!!0>, valuetype System.Numerics.Vector`1<!!0>)
			IL_00a4: stloc.s 9
			IL_00a6: ldloc.s 9
			IL_00a8: ldloc.s 7
			IL_00aa: ldloc.s 8
			IL_00ac: call valuetype System.Numerics.Vector`1<!!0> System.Numerics.Vector::ConditionalSelect<uint16>(valuetype System.Numerics.Vector`1<!!0>, valuetype System.Numerics.Vector`1<!!0>, valuetype System.Numerics.Vector`1<!!0>)
			IL_00b1: stloc.s 10
			IL_00b3: ldloc.s 5
			IL_00b5: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<uint16, uint8>(!!0&)
			IL_00ba: ldloc.s 10
			IL_00bc: call void Internal.Runtime.CompilerServices.Unsafe::WriteUnaligned<valuetype System.Numerics.Vector`1<uint16>>(uint8&, !!0)
			IL_00c1: ldloc.s 4
			IL_00c3: call int32 valuetype System.Numerics.Vector`1<uint16>::get_Count()
			IL_00c8: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<uint16>(!!0&, int32)
			IL_00cd: stloc.s 4
			IL_00cf: ldloc.s 5
			IL_00d1: call int32 valuetype System.Numerics.Vector`1<uint16>::get_Count()
			IL_00d6: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<uint16>(!!0&, int32)
			IL_00db: stloc.s 5
			IL_00dd: ldloc.1
			IL_00de: call int32 valuetype System.Numerics.Vector`1<uint16>::get_Count()
			IL_00e3: sub
			IL_00e4: stloc.1
			IL_00e5: ldloc.1
			IL_00e6: call int32 valuetype System.Numerics.Vector`1<uint16>::get_Count()
			IL_00eb: bge.s IL_008d
		// end loop
		IL_00ed: br.s IL_0119
		// loop start (head: IL_0119)
			IL_00ef: ldloc.s 4
			IL_00f1: ldind.u2
			IL_00f2: stloc.s 11
			IL_00f4: ldloc.s 5
			IL_00f6: ldloc.s 11
			IL_00f8: ldarg.1
			IL_00f9: beq.s IL_00ff

			IL_00fb: ldloc.s 11
			IL_00fd: br.s IL_0100

			IL_00ff: ldarg.2

			IL_0100: stind.i2
			IL_0101: ldloc.s 4
			IL_0103: ldc.i4.1
			IL_0104: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<uint16>(!!0&, int32)
			IL_0109: stloc.s 4
			IL_010b: ldloc.s 5
			IL_010d: ldc.i4.1
			IL_010e: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<uint16>(!!0&, int32)
			IL_0113: stloc.s 5
			IL_0115: ldloc.1
			IL_0116: ldc.i4.1
			IL_0117: sub
			IL_0118: stloc.1

			IL_0119: ldloc.1
			IL_011a: ldc.i4.0
			IL_011b: bgt.s IL_00ef
		// end loop

		IL_011d: ldloc.2
		IL_011e: ret
	} // end of method String::Replace

	.method public hidebysig 
		instance string Replace (
			string oldValue,
			string newValue
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x56160
		// Code size 235 (0xeb)
		.maxstack 4
		.locals (
			[0] valuetype System.Collections.Generic.ValueListBuilder`1<int32>,
			[1] string,
			[2] valuetype System.Span`1<int32>,
			[3] char*,
			[4] char& pinned,
			[5] int32,
			[6] int32,
			[7] char*,
			[8] int32
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "oldValue"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.1
		IL_000f: callvirt instance int32 System.String::get_Length()
		IL_0014: brtrue.s IL_0026

		IL_0016: call string System.SR::get_Argument_StringZeroLength()
		IL_001b: ldstr "oldValue"
		IL_0020: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0025: throw

		IL_0026: ldarg.2
		IL_0027: brtrue.s IL_0030

		IL_0029: ldsfld string System.String::Empty
		IL_002e: starg.s newValue

		IL_0030: ldc.i4 512
		IL_0035: conv.u
		IL_0036: localloc
		IL_0038: ldc.i4 128
		IL_003d: newobj instance void valuetype System.Span`1<int32>::.ctor(void*, int32)
		IL_0042: stloc.2
		IL_0043: ldloca.s 0
		IL_0045: ldloc.2
		IL_0046: call instance void valuetype System.Collections.Generic.ValueListBuilder`1<int32>::.ctor(valuetype System.Span`1<!0>)
		IL_004b: ldarg.0
		IL_004c: ldflda char System.String::_firstChar
		IL_0051: stloc.s 4
		IL_0053: ldloc.s 4
		IL_0055: conv.u
		IL_0056: stloc.3
		IL_0057: ldc.i4.0
		IL_0058: stloc.s 5
		IL_005a: ldarg.0
		IL_005b: call instance int32 System.String::get_Length()
		IL_0060: ldarg.1
		IL_0061: callvirt instance int32 System.String::get_Length()
		IL_0066: sub
		IL_0067: stloc.s 6
		IL_0069: br.s IL_00b8
		// loop start (head: IL_00b8)
			IL_006b: ldloc.3
			IL_006c: ldloc.s 5
			IL_006e: conv.i
			IL_006f: ldc.i4.2
			IL_0070: mul
			IL_0071: add
			IL_0072: stloc.s 7
			IL_0074: ldc.i4.0
			IL_0075: stloc.s 8
			IL_0077: br.s IL_0092
			// loop start (head: IL_0092)
				IL_0079: ldloc.s 7
				IL_007b: ldloc.s 8
				IL_007d: conv.i
				IL_007e: ldc.i4.2
				IL_007f: mul
				IL_0080: add
				IL_0081: ldind.u2
				IL_0082: ldarg.1
				IL_0083: ldloc.s 8
				IL_0085: callvirt instance char System.String::get_Chars(int32)
				IL_008a: bne.un.s IL_00b2

				IL_008c: ldloc.s 8
				IL_008e: ldc.i4.1
				IL_008f: add
				IL_0090: stloc.s 8

				IL_0092: ldloc.s 8
				IL_0094: ldarg.1
				IL_0095: callvirt instance int32 System.String::get_Length()
				IL_009a: blt.s IL_0079
			// end loop

			IL_009c: ldloca.s 0
			IL_009e: ldloc.s 5
			IL_00a0: call instance void valuetype System.Collections.Generic.ValueListBuilder`1<int32>::Append(!0)
			IL_00a5: ldloc.s 5
			IL_00a7: ldarg.1
			IL_00a8: callvirt instance int32 System.String::get_Length()
			IL_00ad: add
			IL_00ae: stloc.s 5
			IL_00b0: br.s IL_00b8

			IL_00b2: ldloc.s 5
			IL_00b4: ldc.i4.1
			IL_00b5: add
			IL_00b6: stloc.s 5

			IL_00b8: ldloc.s 5
			IL_00ba: ldloc.s 6
			IL_00bc: ble.s IL_006b
		// end loop

		IL_00be: ldc.i4.0
		IL_00bf: conv.u
		IL_00c0: stloc.s 4
		IL_00c2: ldloca.s 0
		IL_00c4: call instance int32 valuetype System.Collections.Generic.ValueListBuilder`1<int32>::get_Length()
		IL_00c9: brtrue.s IL_00cd

		IL_00cb: ldarg.0
		IL_00cc: ret

		IL_00cd: ldarg.0
		IL_00ce: ldarg.1
		IL_00cf: callvirt instance int32 System.String::get_Length()
		IL_00d4: ldarg.2
		IL_00d5: ldloca.s 0
		IL_00d7: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.Collections.Generic.ValueListBuilder`1<int32>::AsSpan()
		IL_00dc: call instance string System.String::ReplaceHelper(int32, string, valuetype System.ReadOnlySpan`1<int32>)
		IL_00e1: stloc.1
		IL_00e2: ldloca.s 0
		IL_00e4: call instance void valuetype System.Collections.Generic.ValueListBuilder`1<int32>::Dispose()
		IL_00e9: ldloc.1
		IL_00ea: ret
	} // end of method String::Replace

	.method private hidebysig 
		instance string ReplaceHelper (
			int32 oldValueLength,
			string newValue,
			valuetype System.ReadOnlySpan`1<int32> indices
		) cil managed 
	{
		// Method begins at RVA 0x56258
		// Code size 218 (0xda)
		.maxstack 3
		.locals (
			[0] int64,
			[1] string,
			[2] valuetype System.Span`1<char>,
			[3] int32,
			[4] int32,
			[5] int32,
			[6] int32,
			[7] int32,
			[8] valuetype System.ReadOnlySpan`1<char>
		)

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.String::get_Length()
		IL_0006: conv.i8
		IL_0007: ldarg.2
		IL_0008: callvirt instance int32 System.String::get_Length()
		IL_000d: ldarg.1
		IL_000e: sub
		IL_000f: conv.i8
		IL_0010: ldarga.s indices
		IL_0012: call instance int32 valuetype System.ReadOnlySpan`1<int32>::get_Length()
		IL_0017: conv.i8
		IL_0018: mul
		IL_0019: add
		IL_001a: stloc.0
		IL_001b: ldloc.0
		IL_001c: ldc.i4 2147483647
		IL_0021: conv.i8
		IL_0022: ble.s IL_002a

		IL_0024: newobj instance void System.OutOfMemoryException::.ctor()
		IL_0029: throw

		IL_002a: ldloc.0
		IL_002b: conv.i4
		IL_002c: call string System.String::FastAllocateString(int32)
		IL_0031: stloc.1
		IL_0032: ldloc.1
		IL_0033: callvirt instance char& System.String::GetRawStringData()
		IL_0038: ldloc.1
		IL_0039: callvirt instance int32 System.String::get_Length()
		IL_003e: newobj instance void valuetype System.Span`1<char>::.ctor(!0&, int32)
		IL_0043: stloc.2
		IL_0044: ldc.i4.0
		IL_0045: stloc.3
		IL_0046: ldc.i4.0
		IL_0047: stloc.s 4
		IL_0049: ldc.i4.0
		IL_004a: stloc.s 5
		IL_004c: br.s IL_00b4
		// loop start (head: IL_00b4)
			IL_004e: ldarga.s indices
			IL_0050: ldloc.s 5
			IL_0052: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<int32>::get_Item(int32)
			IL_0057: ldind.i4
			IL_0058: stloc.s 6
			IL_005a: ldloc.s 6
			IL_005c: ldloc.3
			IL_005d: sub
			IL_005e: stloc.s 7
			IL_0060: ldloc.s 7
			IL_0062: brfalse.s IL_0086

			IL_0064: ldarg.0
			IL_0065: ldloc.3
			IL_0066: ldloc.s 7
			IL_0068: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string, int32, int32)
			IL_006d: stloc.s 8
			IL_006f: ldloca.s 8
			IL_0071: ldloca.s 2
			IL_0073: ldloc.s 4
			IL_0075: call instance valuetype System.Span`1<!0> valuetype System.Span`1<char>::Slice(int32)
			IL_007a: call instance void valuetype System.ReadOnlySpan`1<char>::CopyTo(valuetype System.Span`1<!0>)
			IL_007f: ldloc.s 4
			IL_0081: ldloc.s 7
			IL_0083: add
			IL_0084: stloc.s 4

			IL_0086: ldloc.s 6
			IL_0088: ldarg.1
			IL_0089: add
			IL_008a: stloc.3
			IL_008b: ldarg.2
			IL_008c: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string)
			IL_0091: stloc.s 8
			IL_0093: ldloca.s 8
			IL_0095: ldloca.s 2
			IL_0097: ldloc.s 4
			IL_0099: call instance valuetype System.Span`1<!0> valuetype System.Span`1<char>::Slice(int32)
			IL_009e: call instance void valuetype System.ReadOnlySpan`1<char>::CopyTo(valuetype System.Span`1<!0>)
			IL_00a3: ldloc.s 4
			IL_00a5: ldarg.2
			IL_00a6: callvirt instance int32 System.String::get_Length()
			IL_00ab: add
			IL_00ac: stloc.s 4
			IL_00ae: ldloc.s 5
			IL_00b0: ldc.i4.1
			IL_00b1: add
			IL_00b2: stloc.s 5

			IL_00b4: ldloc.s 5
			IL_00b6: ldarga.s indices
			IL_00b8: call instance int32 valuetype System.ReadOnlySpan`1<int32>::get_Length()
			IL_00bd: blt.s IL_004e
		// end loop

		IL_00bf: ldarg.0
		IL_00c0: ldloc.3
		IL_00c1: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string, int32)
		IL_00c6: stloc.s 8
		IL_00c8: ldloca.s 8
		IL_00ca: ldloca.s 2
		IL_00cc: ldloc.s 4
		IL_00ce: call instance valuetype System.Span`1<!0> valuetype System.Span`1<char>::Slice(int32)
		IL_00d3: call instance void valuetype System.ReadOnlySpan`1<char>::CopyTo(valuetype System.Span`1<!0>)
		IL_00d8: ldloc.1
		IL_00d9: ret
	} // end of method String::ReplaceHelper

	.method public hidebysig 
		instance string[] Split (
			char separator,
			[opt] valuetype System.StringSplitOptions options
		) cil managed 
	{
		.param [2] = int32(0)
		// Method begins at RVA 0x5633e
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarga.s separator
		IL_0003: ldc.i4.1
		IL_0004: newobj instance void valuetype System.ReadOnlySpan`1<char>::.ctor(!0&, int32)
		IL_0009: ldc.i4 2147483647
		IL_000e: ldarg.2
		IL_000f: call instance string[] System.String::SplitInternal(valuetype System.ReadOnlySpan`1<char>, int32, valuetype System.StringSplitOptions)
		IL_0014: ret
	} // end of method String::Split

	.method public hidebysig 
		instance string[] Split (
			char separator,
			int32 count,
			[opt] valuetype System.StringSplitOptions options
		) cil managed 
	{
		.param [3] = int32(0)
		// Method begins at RVA 0x56354
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarga.s separator
		IL_0003: ldc.i4.1
		IL_0004: newobj instance void valuetype System.ReadOnlySpan`1<char>::.ctor(!0&, int32)
		IL_0009: ldarg.2
		IL_000a: ldarg.3
		IL_000b: call instance string[] System.String::SplitInternal(valuetype System.ReadOnlySpan`1<char>, int32, valuetype System.StringSplitOptions)
		IL_0010: ret
	} // end of method String::Split

	.method public hidebysig 
		instance string[] Split (
			char[] separator
		) cil managed 
	{
		.param [1]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x56366
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::op_Implicit(!0[])
		IL_0007: ldc.i4 2147483647
		IL_000c: ldc.i4.0
		IL_000d: call instance string[] System.String::SplitInternal(valuetype System.ReadOnlySpan`1<char>, int32, valuetype System.StringSplitOptions)
		IL_0012: ret
	} // end of method String::Split

	.method public hidebysig 
		instance string[] Split (
			char[] separator,
			int32 count
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x5637a
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::op_Implicit(!0[])
		IL_0007: ldarg.2
		IL_0008: ldc.i4.0
		IL_0009: call instance string[] System.String::SplitInternal(valuetype System.ReadOnlySpan`1<char>, int32, valuetype System.StringSplitOptions)
		IL_000e: ret
	} // end of method String::Split

	.method public hidebysig 
		instance string[] Split (
			char[] separator,
			valuetype System.StringSplitOptions options
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x5638a
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::op_Implicit(!0[])
		IL_0007: ldc.i4 2147483647
		IL_000c: ldarg.2
		IL_000d: call instance string[] System.String::SplitInternal(valuetype System.ReadOnlySpan`1<char>, int32, valuetype System.StringSplitOptions)
		IL_0012: ret
	} // end of method String::Split

	.method public hidebysig 
		instance string[] Split (
			char[] separator,
			int32 count,
			valuetype System.StringSplitOptions options
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x5639e
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::op_Implicit(!0[])
		IL_0007: ldarg.2
		IL_0008: ldarg.3
		IL_0009: call instance string[] System.String::SplitInternal(valuetype System.ReadOnlySpan`1<char>, int32, valuetype System.StringSplitOptions)
		IL_000e: ret
	} // end of method String::Split

	.method private hidebysig 
		instance string[] SplitInternal (
			valuetype System.ReadOnlySpan`1<char> separators,
			int32 count,
			valuetype System.StringSplitOptions options
		) cil managed 
	{
		// Method begins at RVA 0x563b0
		// Code size 224 (0xe0)
		.maxstack 6
		.locals (
			[0] valuetype System.Collections.Generic.ValueListBuilder`1<int32>,
			[1] valuetype System.ReadOnlySpan`1<int32>,
			[2] string[],
			[3] string,
			[4] valuetype System.Span`1<int32>,
			[5] valuetype System.ReadOnlySpan`1<int32>
		)

		IL_0000: ldarg.2
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0014

		IL_0004: ldstr "count"
		IL_0009: call string System.SR::get_ArgumentOutOfRange_NegativeCount()
		IL_000e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0013: throw

		IL_0014: ldarg.3
		IL_0015: call void System.String::CheckStringSplitOptions(valuetype System.StringSplitOptions)
		// loop start (head: IL_001a)
			IL_001a: ldarg.2
			IL_001b: ldc.i4.1
			IL_001c: ble.s IL_0026

			IL_001e: ldarg.0
			IL_001f: call instance int32 System.String::get_Length()
			IL_0024: brtrue.s IL_005c

			IL_0026: ldarg.0
			IL_0027: stloc.3
			IL_0028: ldarg.3
			IL_0029: ldc.i4.2
			IL_002a: and
			IL_002b: brfalse.s IL_0038

			IL_002d: ldarg.2
			IL_002e: ldc.i4.0
			IL_002f: ble.s IL_0038

			IL_0031: ldloc.3
			IL_0032: callvirt instance string System.String::Trim()
			IL_0037: stloc.3

			IL_0038: ldarg.3
			IL_0039: ldc.i4.1
			IL_003a: and
			IL_003b: brfalse.s IL_0048

			IL_003d: ldloc.3
			IL_003e: callvirt instance int32 System.String::get_Length()
			IL_0043: brtrue.s IL_0048

			IL_0045: ldc.i4.0
			IL_0046: starg.s count

			IL_0048: ldarg.2
			IL_0049: brfalse.s IL_0056

			IL_004b: ldc.i4.1
			IL_004c: newarr System.String
			IL_0051: dup
			IL_0052: ldc.i4.0
			IL_0053: ldloc.3
			IL_0054: stelem.ref
			IL_0055: ret

			IL_0056: call !!0[] System.Array::Empty<string>()
			IL_005b: ret

			IL_005c: ldarga.s separators
			IL_005e: call instance bool valuetype System.ReadOnlySpan`1<char>::get_IsEmpty()
			IL_0063: brfalse.s IL_006b

			IL_0065: ldarg.3
			IL_0066: ldc.i4.s -3
			IL_0068: and
			IL_0069: starg.s options

			IL_006b: ldc.i4 512
			IL_0070: conv.u
			IL_0071: localloc
			IL_0073: ldc.i4 128
			IL_0078: newobj instance void valuetype System.Span`1<int32>::.ctor(void*, int32)
			IL_007d: stloc.s 4
			IL_007f: ldloca.s 0
			IL_0081: ldloc.s 4
			IL_0083: call instance void valuetype System.Collections.Generic.ValueListBuilder`1<int32>::.ctor(valuetype System.Span`1<!0>)
			IL_0088: ldarg.0
			IL_0089: ldarg.1
			IL_008a: ldloca.s 0
			IL_008c: call instance void System.String::MakeSeparatorList(valuetype System.ReadOnlySpan`1<char>, valuetype System.Collections.Generic.ValueListBuilder`1<int32>&)
			IL_0091: ldloca.s 0
			IL_0093: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.Collections.Generic.ValueListBuilder`1<int32>::AsSpan()
			IL_0098: stloc.1
			IL_0099: ldloca.s 1
			IL_009b: call instance int32 valuetype System.ReadOnlySpan`1<int32>::get_Length()
			IL_00a0: brtrue.s IL_00aa

			IL_00a2: ldc.i4.1
			IL_00a3: starg.s count
			IL_00a5: br IL_001a
		// end loop

		IL_00aa: ldarg.3
		IL_00ab: brtrue.s IL_00c2

		IL_00ad: ldarg.0
		IL_00ae: ldloc.1
		IL_00af: ldloca.s 5
		IL_00b1: initobj valuetype System.ReadOnlySpan`1<int32>
		IL_00b7: ldloc.s 5
		IL_00b9: ldc.i4.1
		IL_00ba: ldarg.2
		IL_00bb: call instance string[] System.String::SplitWithoutPostProcessing(valuetype System.ReadOnlySpan`1<int32>, valuetype System.ReadOnlySpan`1<int32>, int32, int32)
		IL_00c0: br.s IL_00d6

		IL_00c2: ldarg.0
		IL_00c3: ldloc.1
		IL_00c4: ldloca.s 5
		IL_00c6: initobj valuetype System.ReadOnlySpan`1<int32>
		IL_00cc: ldloc.s 5
		IL_00ce: ldc.i4.1
		IL_00cf: ldarg.2
		IL_00d0: ldarg.3
		IL_00d1: call instance string[] System.String::SplitWithPostProcessing(valuetype System.ReadOnlySpan`1<int32>, valuetype System.ReadOnlySpan`1<int32>, int32, int32, valuetype System.StringSplitOptions)

		IL_00d6: stloc.2
		IL_00d7: ldloca.s 0
		IL_00d9: call instance void valuetype System.Collections.Generic.ValueListBuilder`1<int32>::Dispose()
		IL_00de: ldloc.2
		IL_00df: ret
	} // end of method String::SplitInternal

	.method public hidebysig 
		instance string[] Split (
			string separator,
			[opt] valuetype System.StringSplitOptions options
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [2] = int32(0)
		// Method begins at RVA 0x5649c
		// Code size 24 (0x18)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: dup
		IL_0003: brtrue.s IL_000b

		IL_0005: pop
		IL_0006: ldsfld string System.String::Empty

		IL_000b: ldnull
		IL_000c: ldc.i4 2147483647
		IL_0011: ldarg.2
		IL_0012: call instance string[] System.String::SplitInternal(string, string[], int32, valuetype System.StringSplitOptions)
		IL_0017: ret
	} // end of method String::Split

	.method public hidebysig 
		instance string[] Split (
			string separator,
			int32 count,
			[opt] valuetype System.StringSplitOptions options
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [3] = int32(0)
		// Method begins at RVA 0x564b5
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: dup
		IL_0003: brtrue.s IL_000b

		IL_0005: pop
		IL_0006: ldsfld string System.String::Empty

		IL_000b: ldnull
		IL_000c: ldarg.2
		IL_000d: ldarg.3
		IL_000e: call instance string[] System.String::SplitInternal(string, string[], int32, valuetype System.StringSplitOptions)
		IL_0013: ret
	} // end of method String::Split

	.method public hidebysig 
		instance string[] Split (
			string[] separator,
			valuetype System.StringSplitOptions options
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		// Method begins at RVA 0x564ca
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: ldarg.1
		IL_0003: ldc.i4 2147483647
		IL_0008: ldarg.2
		IL_0009: call instance string[] System.String::SplitInternal(string, string[], int32, valuetype System.StringSplitOptions)
		IL_000e: ret
	} // end of method String::Split

	.method public hidebysig 
		instance string[] Split (
			string[] separator,
			int32 count,
			valuetype System.StringSplitOptions options
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		// Method begins at RVA 0x564da
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: ldarg.1
		IL_0003: ldarg.2
		IL_0004: ldarg.3
		IL_0005: call instance string[] System.String::SplitInternal(string, string[], int32, valuetype System.StringSplitOptions)
		IL_000a: ret
	} // end of method String::Split

	.method private hidebysig 
		instance string[] SplitInternal (
			string separator,
			string[] separators,
			int32 count,
			valuetype System.StringSplitOptions options
		) cil managed 
	{
		// Method begins at RVA 0x564e8
		// Code size 317 (0x13d)
		.maxstack 6
		.locals (
			[0] bool,
			[1] valuetype System.Collections.Generic.ValueListBuilder`1<int32>,
			[2] valuetype System.Collections.Generic.ValueListBuilder`1<int32>,
			[3] valuetype System.ReadOnlySpan`1<int32>,
			[4] valuetype System.ReadOnlySpan`1<int32>,
			[5] string[],
			[6] valuetype System.ReadOnlySpan`1<char>,
			[7] string,
			[8] valuetype System.Span`1<int32>
		)

		IL_0000: ldarg.3
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0014

		IL_0004: ldstr "count"
		IL_0009: call string System.SR::get_ArgumentOutOfRange_NegativeCount()
		IL_000e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0013: throw

		IL_0014: ldarg.s options
		IL_0016: call void System.String::CheckStringSplitOptions(valuetype System.StringSplitOptions)
		IL_001b: ldarg.1
		IL_001c: ldnull
		IL_001d: cgt.un
		IL_001f: stloc.0
		IL_0020: ldloc.0
		IL_0021: brtrue.s IL_003e

		IL_0023: ldarg.2
		IL_0024: brfalse.s IL_002a

		IL_0026: ldarg.2
		IL_0027: ldlen
		IL_0028: brtrue.s IL_003e

		IL_002a: ldarg.0
		IL_002b: ldloca.s 6
		IL_002d: initobj valuetype System.ReadOnlySpan`1<char>
		IL_0033: ldloc.s 6
		IL_0035: ldarg.3
		IL_0036: ldarg.s options
		IL_0038: call instance string[] System.String::SplitInternal(valuetype System.ReadOnlySpan`1<char>, int32, valuetype System.StringSplitOptions)
		IL_003d: ret
		// loop start (head: IL_003e)
			IL_003e: ldarg.3
			IL_003f: ldc.i4.1
			IL_0040: ble.s IL_004a

			IL_0042: ldarg.0
			IL_0043: call instance int32 System.String::get_Length()
			IL_0048: brtrue.s IL_0087

			IL_004a: ldarg.0
			IL_004b: stloc.s 7
			IL_004d: ldarg.s options
			IL_004f: ldc.i4.2
			IL_0050: and
			IL_0051: brfalse.s IL_0060

			IL_0053: ldarg.3
			IL_0054: ldc.i4.0
			IL_0055: ble.s IL_0060

			IL_0057: ldloc.s 7
			IL_0059: callvirt instance string System.String::Trim()
			IL_005e: stloc.s 7

			IL_0060: ldarg.s options
			IL_0062: ldc.i4.1
			IL_0063: and
			IL_0064: brfalse.s IL_0072

			IL_0066: ldloc.s 7
			IL_0068: callvirt instance int32 System.String::get_Length()
			IL_006d: brtrue.s IL_0072

			IL_006f: ldc.i4.0
			IL_0070: starg.s count

			IL_0072: ldarg.3
			IL_0073: brfalse.s IL_0081

			IL_0075: ldc.i4.1
			IL_0076: newarr System.String
			IL_007b: dup
			IL_007c: ldc.i4.0
			IL_007d: ldloc.s 7
			IL_007f: stelem.ref
			IL_0080: ret

			IL_0081: call !!0[] System.Array::Empty<string>()
			IL_0086: ret

			IL_0087: ldloc.0
			IL_0088: brfalse.s IL_00a2

			IL_008a: ldarg.1
			IL_008b: callvirt instance int32 System.String::get_Length()
			IL_0090: brtrue.s IL_0097

			IL_0092: ldc.i4.1
			IL_0093: starg.s count
			IL_0095: br.s IL_003e
		// end loop

		IL_0097: ldarg.0
		IL_0098: ldarg.1
		IL_0099: ldarg.3
		IL_009a: ldarg.s options
		IL_009c: call instance string[] System.String::SplitInternal(string, int32, valuetype System.StringSplitOptions)
		IL_00a1: ret

		IL_00a2: ldc.i4 512
		IL_00a7: conv.u
		IL_00a8: localloc
		IL_00aa: ldc.i4 128
		IL_00af: newobj instance void valuetype System.Span`1<int32>::.ctor(void*, int32)
		IL_00b4: stloc.s 8
		IL_00b6: ldloca.s 1
		IL_00b8: ldloc.s 8
		IL_00ba: call instance void valuetype System.Collections.Generic.ValueListBuilder`1<int32>::.ctor(valuetype System.Span`1<!0>)
		IL_00bf: ldc.i4 512
		IL_00c4: conv.u
		IL_00c5: localloc
		IL_00c7: ldc.i4 128
		IL_00cc: newobj instance void valuetype System.Span`1<int32>::.ctor(void*, int32)
		IL_00d1: stloc.s 8
		IL_00d3: ldloca.s 2
		IL_00d5: ldloc.s 8
		IL_00d7: call instance void valuetype System.Collections.Generic.ValueListBuilder`1<int32>::.ctor(valuetype System.Span`1<!0>)
		IL_00dc: ldarg.0
		IL_00dd: ldarg.2
		IL_00de: ldloca.s 1
		IL_00e0: ldloca.s 2
		IL_00e2: call instance void System.String::MakeSeparatorList(string[], valuetype System.Collections.Generic.ValueListBuilder`1<int32>&, valuetype System.Collections.Generic.ValueListBuilder`1<int32>&)
		IL_00e7: ldloca.s 1
		IL_00e9: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.Collections.Generic.ValueListBuilder`1<int32>::AsSpan()
		IL_00ee: stloc.3
		IL_00ef: ldloca.s 2
		IL_00f1: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.Collections.Generic.ValueListBuilder`1<int32>::AsSpan()
		IL_00f6: stloc.s 4
		IL_00f8: ldloca.s 3
		IL_00fa: call instance int32 valuetype System.ReadOnlySpan`1<int32>::get_Length()
		IL_00ff: brtrue.s IL_010c

		IL_0101: ldc.i4.1
		IL_0102: newarr System.String
		IL_0107: dup
		IL_0108: ldc.i4.0
		IL_0109: ldarg.0
		IL_010a: stelem.ref
		IL_010b: ret

		IL_010c: ldarg.s options
		IL_010e: brtrue.s IL_011d

		IL_0110: ldarg.0
		IL_0111: ldloc.3
		IL_0112: ldloc.s 4
		IL_0114: ldc.i4.0
		IL_0115: ldarg.3
		IL_0116: call instance string[] System.String::SplitWithoutPostProcessing(valuetype System.ReadOnlySpan`1<int32>, valuetype System.ReadOnlySpan`1<int32>, int32, int32)
		IL_011b: br.s IL_012a

		IL_011d: ldarg.0
		IL_011e: ldloc.3
		IL_011f: ldloc.s 4
		IL_0121: ldc.i4.0
		IL_0122: ldarg.3
		IL_0123: ldarg.s options
		IL_0125: call instance string[] System.String::SplitWithPostProcessing(valuetype System.ReadOnlySpan`1<int32>, valuetype System.ReadOnlySpan`1<int32>, int32, int32, valuetype System.StringSplitOptions)

		IL_012a: stloc.s 5
		IL_012c: ldloca.s 1
		IL_012e: call instance void valuetype System.Collections.Generic.ValueListBuilder`1<int32>::Dispose()
		IL_0133: ldloca.s 2
		IL_0135: call instance void valuetype System.Collections.Generic.ValueListBuilder`1<int32>::Dispose()
		IL_013a: ldloc.s 5
		IL_013c: ret
	} // end of method String::SplitInternal

	.method private hidebysig 
		instance string[] SplitInternal (
			string separator,
			int32 count,
			valuetype System.StringSplitOptions options
		) cil managed 
	{
		// Method begins at RVA 0x56634
		// Code size 166 (0xa6)
		.maxstack 6
		.locals (
			[0] valuetype System.Collections.Generic.ValueListBuilder`1<int32>,
			[1] valuetype System.ReadOnlySpan`1<int32>,
			[2] string[],
			[3] valuetype System.Span`1<int32>,
			[4] string,
			[5] valuetype System.ReadOnlySpan`1<int32>
		)

		IL_0000: ldc.i4 512
		IL_0005: conv.u
		IL_0006: localloc
		IL_0008: ldc.i4 128
		IL_000d: newobj instance void valuetype System.Span`1<int32>::.ctor(void*, int32)
		IL_0012: stloc.3
		IL_0013: ldloca.s 0
		IL_0015: ldloc.3
		IL_0016: call instance void valuetype System.Collections.Generic.ValueListBuilder`1<int32>::.ctor(valuetype System.Span`1<!0>)
		IL_001b: ldarg.0
		IL_001c: ldarg.1
		IL_001d: ldloca.s 0
		IL_001f: call instance void System.String::MakeSeparatorList(string, valuetype System.Collections.Generic.ValueListBuilder`1<int32>&)
		IL_0024: ldloca.s 0
		IL_0026: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.Collections.Generic.ValueListBuilder`1<int32>::AsSpan()
		IL_002b: stloc.1
		IL_002c: ldloca.s 1
		IL_002e: call instance int32 valuetype System.ReadOnlySpan`1<int32>::get_Length()
		IL_0033: brtrue.s IL_0066

		IL_0035: ldarg.0
		IL_0036: stloc.s 4
		IL_0038: ldarg.3
		IL_0039: ldc.i4.2
		IL_003a: and
		IL_003b: brfalse.s IL_0046

		IL_003d: ldloc.s 4
		IL_003f: callvirt instance string System.String::Trim()
		IL_0044: stloc.s 4

		IL_0046: ldloc.s 4
		IL_0048: callvirt instance int32 System.String::get_Length()
		IL_004d: brtrue.s IL_0054

		IL_004f: ldarg.3
		IL_0050: ldc.i4.1
		IL_0051: and
		IL_0052: brtrue.s IL_0060

		IL_0054: ldc.i4.1
		IL_0055: newarr System.String
		IL_005a: dup
		IL_005b: ldc.i4.0
		IL_005c: ldloc.s 4
		IL_005e: stelem.ref
		IL_005f: ret

		IL_0060: call !!0[] System.Array::Empty<string>()
		IL_0065: ret

		IL_0066: ldarg.3
		IL_0067: brtrue.s IL_0083

		IL_0069: ldarg.0
		IL_006a: ldloc.1
		IL_006b: ldloca.s 5
		IL_006d: initobj valuetype System.ReadOnlySpan`1<int32>
		IL_0073: ldloc.s 5
		IL_0075: ldarg.1
		IL_0076: callvirt instance int32 System.String::get_Length()
		IL_007b: ldarg.2
		IL_007c: call instance string[] System.String::SplitWithoutPostProcessing(valuetype System.ReadOnlySpan`1<int32>, valuetype System.ReadOnlySpan`1<int32>, int32, int32)
		IL_0081: br.s IL_009c

		IL_0083: ldarg.0
		IL_0084: ldloc.1
		IL_0085: ldloca.s 5
		IL_0087: initobj valuetype System.ReadOnlySpan`1<int32>
		IL_008d: ldloc.s 5
		IL_008f: ldarg.1
		IL_0090: callvirt instance int32 System.String::get_Length()
		IL_0095: ldarg.2
		IL_0096: ldarg.3
		IL_0097: call instance string[] System.String::SplitWithPostProcessing(valuetype System.ReadOnlySpan`1<int32>, valuetype System.ReadOnlySpan`1<int32>, int32, int32, valuetype System.StringSplitOptions)

		IL_009c: stloc.2
		IL_009d: ldloca.s 0
		IL_009f: call instance void valuetype System.Collections.Generic.ValueListBuilder`1<int32>::Dispose()
		IL_00a4: ldloc.2
		IL_00a5: ret
	} // end of method String::SplitInternal

	.method private hidebysig 
		instance string[] SplitWithoutPostProcessing (
			valuetype System.ReadOnlySpan`1<int32> sepList,
			valuetype System.ReadOnlySpan`1<int32> lengthList,
			int32 defaultLength,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0x566e8
		// Code size 166 (0xa6)
		.maxstack 6
		.locals (
			[0] int32,
			[1] int32,
			[2] int32,
			[3] string[],
			[4] int32
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldc.i4.0
		IL_0003: stloc.1
		IL_0004: ldarg.s count
		IL_0006: ldc.i4.1
		IL_0007: sub
		IL_0008: starg.s count
		IL_000a: ldarga.s sepList
		IL_000c: call instance int32 valuetype System.ReadOnlySpan`1<int32>::get_Length()
		IL_0011: ldarg.s count
		IL_0013: blt.s IL_0019

		IL_0015: ldarg.s count
		IL_0017: br.s IL_0020

		IL_0019: ldarga.s sepList
		IL_001b: call instance int32 valuetype System.ReadOnlySpan`1<int32>::get_Length()

		IL_0020: stloc.2
		IL_0021: ldloc.2
		IL_0022: ldc.i4.1
		IL_0023: add
		IL_0024: newarr System.String
		IL_0029: stloc.3
		IL_002a: ldc.i4.0
		IL_002b: stloc.s 4
		IL_002d: br.s IL_0071
		// loop start (head: IL_0071)
			IL_002f: ldloc.3
			IL_0030: ldloc.1
			IL_0031: dup
			IL_0032: ldc.i4.1
			IL_0033: add
			IL_0034: stloc.1
			IL_0035: ldarg.0
			IL_0036: ldloc.0
			IL_0037: ldarga.s sepList
			IL_0039: ldloc.s 4
			IL_003b: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<int32>::get_Item(int32)
			IL_0040: ldind.i4
			IL_0041: ldloc.0
			IL_0042: sub
			IL_0043: call instance string System.String::Substring(int32, int32)
			IL_0048: stelem.ref
			IL_0049: ldarga.s sepList
			IL_004b: ldloc.s 4
			IL_004d: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<int32>::get_Item(int32)
			IL_0052: ldind.i4
			IL_0053: ldarga.s lengthList
			IL_0055: call instance bool valuetype System.ReadOnlySpan`1<int32>::get_IsEmpty()
			IL_005a: brtrue.s IL_0068

			IL_005c: ldarga.s lengthList
			IL_005e: ldloc.s 4
			IL_0060: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<int32>::get_Item(int32)
			IL_0065: ldind.i4
			IL_0066: br.s IL_0069

			IL_0068: ldarg.3

			IL_0069: add
			IL_006a: stloc.0
			IL_006b: ldloc.s 4
			IL_006d: ldc.i4.1
			IL_006e: add
			IL_006f: stloc.s 4

			IL_0071: ldloc.s 4
			IL_0073: ldloc.2
			IL_0074: bge.s IL_007f

			IL_0076: ldloc.0
			IL_0077: ldarg.0
			IL_0078: call instance int32 System.String::get_Length()
			IL_007d: blt.s IL_002f
		// end loop

		IL_007f: ldloc.0
		IL_0080: ldarg.0
		IL_0081: call instance int32 System.String::get_Length()
		IL_0086: bge.s IL_0098

		IL_0088: ldloc.2
		IL_0089: ldc.i4.0
		IL_008a: blt.s IL_0098

		IL_008c: ldloc.3
		IL_008d: ldloc.1
		IL_008e: ldarg.0
		IL_008f: ldloc.0
		IL_0090: call instance string System.String::Substring(int32)
		IL_0095: stelem.ref
		IL_0096: br.s IL_00a4

		IL_0098: ldloc.1
		IL_0099: ldloc.2
		IL_009a: bne.un.s IL_00a4

		IL_009c: ldloc.3
		IL_009d: ldloc.1
		IL_009e: ldsfld string System.String::Empty
		IL_00a3: stelem.ref

		IL_00a4: ldloc.3
		IL_00a5: ret
	} // end of method String::SplitWithoutPostProcessing

	.method private hidebysig 
		instance string[] SplitWithPostProcessing (
			valuetype System.ReadOnlySpan`1<int32> sepList,
			valuetype System.ReadOnlySpan`1<int32> lengthList,
			int32 defaultLength,
			int32 count,
			valuetype System.StringSplitOptions options
		) cil managed 
	{
		// Method begins at RVA 0x5679c
		// Code size 341 (0x155)
		.maxstack 4
		.locals (
			[0] int32,
			[1] int32,
			[2] string[],
			[3] int32,
			[4] int32,
			[5] valuetype System.ReadOnlySpan`1<char>,
			[6] int32
		)

		IL_0000: ldarga.s sepList
		IL_0002: call instance int32 valuetype System.ReadOnlySpan`1<int32>::get_Length()
		IL_0007: stloc.0
		IL_0008: ldloc.0
		IL_0009: ldarg.s count
		IL_000b: blt.s IL_0011

		IL_000d: ldarg.s count
		IL_000f: br.s IL_0014

		IL_0011: ldloc.0
		IL_0012: ldc.i4.1
		IL_0013: add

		IL_0014: stloc.1
		IL_0015: ldloc.1
		IL_0016: newarr System.String
		IL_001b: stloc.2
		IL_001c: ldc.i4.0
		IL_001d: stloc.3
		IL_001e: ldc.i4.0
		IL_001f: stloc.s 4
		IL_0021: ldc.i4.0
		IL_0022: stloc.s 6
		IL_0024: br IL_0105
		// loop start (head: IL_0105)
			IL_0029: ldarg.0
			IL_002a: ldloc.3
			IL_002b: ldarga.s sepList
			IL_002d: ldloc.s 6
			IL_002f: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<int32>::get_Item(int32)
			IL_0034: ldind.i4
			IL_0035: ldloc.3
			IL_0036: sub
			IL_0037: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string, int32, int32)
			IL_003c: stloc.s 5
			IL_003e: ldarg.s options
			IL_0040: ldc.i4.2
			IL_0041: and
			IL_0042: brfalse.s IL_004d

			IL_0044: ldloc.s 5
			IL_0046: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::Trim(valuetype System.ReadOnlySpan`1<char>)
			IL_004b: stloc.s 5

			IL_004d: ldloca.s 5
			IL_004f: call instance bool valuetype System.ReadOnlySpan`1<char>::get_IsEmpty()
			IL_0054: brfalse.s IL_005c

			IL_0056: ldarg.s options
			IL_0058: ldc.i4.1
			IL_0059: and
			IL_005a: brtrue.s IL_0072

			IL_005c: ldloc.2
			IL_005d: ldloc.s 4
			IL_005f: dup
			IL_0060: ldc.i4.1
			IL_0061: add
			IL_0062: stloc.s 4
			IL_0064: ldloca.s 5
			IL_0066: constrained. valuetype System.ReadOnlySpan`1<char>
			IL_006c: callvirt instance string System.Object::ToString()
			IL_0071: stelem.ref

			IL_0072: ldarga.s sepList
			IL_0074: ldloc.s 6
			IL_0076: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<int32>::get_Item(int32)
			IL_007b: ldind.i4
			IL_007c: ldarga.s lengthList
			IL_007e: call instance bool valuetype System.ReadOnlySpan`1<int32>::get_IsEmpty()
			IL_0083: brtrue.s IL_0091

			IL_0085: ldarga.s lengthList
			IL_0087: ldloc.s 6
			IL_0089: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<int32>::get_Item(int32)
			IL_008e: ldind.i4
			IL_008f: br.s IL_0092

			IL_0091: ldarg.3

			IL_0092: add
			IL_0093: stloc.3
			IL_0094: ldloc.s 4
			IL_0096: ldarg.s count
			IL_0098: ldc.i4.1
			IL_0099: sub
			IL_009a: bne.un.s IL_00ff

			IL_009c: ldarg.s options
			IL_009e: ldc.i4.1
			IL_009f: and
			IL_00a0: brfalse.s IL_010d

			IL_00a2: br.s IL_00f3
			// loop start (head: IL_00f3)
				IL_00a4: ldarg.0
				IL_00a5: ldloc.3
				IL_00a6: ldarga.s sepList
				IL_00a8: ldloc.s 6
				IL_00aa: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<int32>::get_Item(int32)
				IL_00af: ldind.i4
				IL_00b0: ldloc.3
				IL_00b1: sub
				IL_00b2: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string, int32, int32)
				IL_00b7: stloc.s 5
				IL_00b9: ldarg.s options
				IL_00bb: ldc.i4.2
				IL_00bc: and
				IL_00bd: brfalse.s IL_00c8

				IL_00bf: ldloc.s 5
				IL_00c1: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::Trim(valuetype System.ReadOnlySpan`1<char>)
				IL_00c6: stloc.s 5

				IL_00c8: ldloca.s 5
				IL_00ca: call instance bool valuetype System.ReadOnlySpan`1<char>::get_IsEmpty()
				IL_00cf: brfalse.s IL_010d

				IL_00d1: ldarga.s sepList
				IL_00d3: ldloc.s 6
				IL_00d5: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<int32>::get_Item(int32)
				IL_00da: ldind.i4
				IL_00db: ldarga.s lengthList
				IL_00dd: call instance bool valuetype System.ReadOnlySpan`1<int32>::get_IsEmpty()
				IL_00e2: brtrue.s IL_00f0

				IL_00e4: ldarga.s lengthList
				IL_00e6: ldloc.s 6
				IL_00e8: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<int32>::get_Item(int32)
				IL_00ed: ldind.i4
				IL_00ee: br.s IL_00f1

				IL_00f0: ldarg.3

				IL_00f1: add
				IL_00f2: stloc.3

				IL_00f3: ldloc.s 6
				IL_00f5: ldc.i4.1
				IL_00f6: add
				IL_00f7: dup
				IL_00f8: stloc.s 6
				IL_00fa: ldloc.0
				IL_00fb: blt.s IL_00a4
			// end loop

			IL_00fd: br.s IL_010d

			IL_00ff: ldloc.s 6
			IL_0101: ldc.i4.1
			IL_0102: add
			IL_0103: stloc.s 6

			IL_0105: ldloc.s 6
			IL_0107: ldloc.0
			IL_0108: blt IL_0029
		// end loop

		IL_010d: ldarg.0
		IL_010e: ldloc.3
		IL_010f: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string, int32)
		IL_0114: stloc.s 5
		IL_0116: ldarg.s options
		IL_0118: ldc.i4.2
		IL_0119: and
		IL_011a: brfalse.s IL_0125

		IL_011c: ldloc.s 5
		IL_011e: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::Trim(valuetype System.ReadOnlySpan`1<char>)
		IL_0123: stloc.s 5

		IL_0125: ldloca.s 5
		IL_0127: call instance bool valuetype System.ReadOnlySpan`1<char>::get_IsEmpty()
		IL_012c: brfalse.s IL_0134

		IL_012e: ldarg.s options
		IL_0130: ldc.i4.1
		IL_0131: and
		IL_0132: brtrue.s IL_014a

		IL_0134: ldloc.2
		IL_0135: ldloc.s 4
		IL_0137: dup
		IL_0138: ldc.i4.1
		IL_0139: add
		IL_013a: stloc.s 4
		IL_013c: ldloca.s 5
		IL_013e: constrained. valuetype System.ReadOnlySpan`1<char>
		IL_0144: callvirt instance string System.Object::ToString()
		IL_0149: stelem.ref

		IL_014a: ldloca.s 2
		IL_014c: ldloc.s 4
		IL_014e: call void System.Array::Resize<string>(!!0[]&, int32)
		IL_0153: ldloc.2
		IL_0154: ret
	} // end of method String::SplitWithPostProcessing

	.method private hidebysig 
		instance void MakeSeparatorList (
			valuetype System.ReadOnlySpan`1<char> separators,
			valuetype System.Collections.Generic.ValueListBuilder`1<int32>& sepListBuilder
		) cil managed 
	{
		// Method begins at RVA 0x56900
		// Code size 383 (0x17f)
		.maxstack 3
		.locals (
			[0] char,
			[1] char,
			[2] char,
			[3] int32,
			[4] int32,
			[5] int32,
			[6] int32,
			[7] char,
			[8] int32,
			[9] char,
			[10] valuetype System.String/ProbabilisticMap,
			[11] uint32*,
			[12] int32,
			[13] char
		)

		IL_0000: ldarga.s separators
		IL_0002: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0007: stloc.3
		IL_0008: ldloc.3
		IL_0009: switch (IL_0023, IL_0050, IL_0083, IL_00c9)

		IL_001e: br IL_011e

		IL_0023: ldc.i4.0
		IL_0024: stloc.s 4
		IL_0026: br.s IL_0045
		// loop start (head: IL_0045)
			IL_0028: ldarg.0
			IL_0029: ldloc.s 4
			IL_002b: call instance char System.String::get_Chars(int32)
			IL_0030: call bool System.Char::IsWhiteSpace(char)
			IL_0035: brfalse.s IL_003f

			IL_0037: ldarg.2
			IL_0038: ldloc.s 4
			IL_003a: call instance void valuetype System.Collections.Generic.ValueListBuilder`1<int32>::Append(!0)

			IL_003f: ldloc.s 4
			IL_0041: ldc.i4.1
			IL_0042: add
			IL_0043: stloc.s 4

			IL_0045: ldloc.s 4
			IL_0047: ldarg.0
			IL_0048: call instance int32 System.String::get_Length()
			IL_004d: blt.s IL_0028
		// end loop

		IL_004f: ret

		IL_0050: ldarga.s separators
		IL_0052: ldc.i4.0
		IL_0053: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_0058: ldind.u2
		IL_0059: stloc.0
		IL_005a: ldc.i4.0
		IL_005b: stloc.s 5
		IL_005d: br.s IL_0078
		// loop start (head: IL_0078)
			IL_005f: ldarg.0
			IL_0060: ldloc.s 5
			IL_0062: call instance char System.String::get_Chars(int32)
			IL_0067: ldloc.0
			IL_0068: bne.un.s IL_0072

			IL_006a: ldarg.2
			IL_006b: ldloc.s 5
			IL_006d: call instance void valuetype System.Collections.Generic.ValueListBuilder`1<int32>::Append(!0)

			IL_0072: ldloc.s 5
			IL_0074: ldc.i4.1
			IL_0075: add
			IL_0076: stloc.s 5

			IL_0078: ldloc.s 5
			IL_007a: ldarg.0
			IL_007b: call instance int32 System.String::get_Length()
			IL_0080: blt.s IL_005f
		// end loop

		IL_0082: ret

		IL_0083: ldarga.s separators
		IL_0085: ldc.i4.0
		IL_0086: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_008b: ldind.u2
		IL_008c: stloc.0
		IL_008d: ldarga.s separators
		IL_008f: ldc.i4.1
		IL_0090: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_0095: ldind.u2
		IL_0096: stloc.1
		IL_0097: ldc.i4.0
		IL_0098: stloc.s 6
		IL_009a: br.s IL_00be
		// loop start (head: IL_00be)
			IL_009c: ldarg.0
			IL_009d: ldloc.s 6
			IL_009f: call instance char System.String::get_Chars(int32)
			IL_00a4: stloc.s 7
			IL_00a6: ldloc.s 7
			IL_00a8: ldloc.0
			IL_00a9: beq.s IL_00b0

			IL_00ab: ldloc.s 7
			IL_00ad: ldloc.1
			IL_00ae: bne.un.s IL_00b8

			IL_00b0: ldarg.2
			IL_00b1: ldloc.s 6
			IL_00b3: call instance void valuetype System.Collections.Generic.ValueListBuilder`1<int32>::Append(!0)

			IL_00b8: ldloc.s 6
			IL_00ba: ldc.i4.1
			IL_00bb: add
			IL_00bc: stloc.s 6

			IL_00be: ldloc.s 6
			IL_00c0: ldarg.0
			IL_00c1: call instance int32 System.String::get_Length()
			IL_00c6: blt.s IL_009c
		// end loop

		IL_00c8: ret

		IL_00c9: ldarga.s separators
		IL_00cb: ldc.i4.0
		IL_00cc: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_00d1: ldind.u2
		IL_00d2: stloc.0
		IL_00d3: ldarga.s separators
		IL_00d5: ldc.i4.1
		IL_00d6: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_00db: ldind.u2
		IL_00dc: stloc.1
		IL_00dd: ldarga.s separators
		IL_00df: ldc.i4.2
		IL_00e0: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_00e5: ldind.u2
		IL_00e6: stloc.2
		IL_00e7: ldc.i4.0
		IL_00e8: stloc.s 8
		IL_00ea: br.s IL_0113
		// loop start (head: IL_0113)
			IL_00ec: ldarg.0
			IL_00ed: ldloc.s 8
			IL_00ef: call instance char System.String::get_Chars(int32)
			IL_00f4: stloc.s 9
			IL_00f6: ldloc.s 9
			IL_00f8: ldloc.0
			IL_00f9: beq.s IL_0105

			IL_00fb: ldloc.s 9
			IL_00fd: ldloc.1
			IL_00fe: beq.s IL_0105

			IL_0100: ldloc.s 9
			IL_0102: ldloc.2
			IL_0103: bne.un.s IL_010d

			IL_0105: ldarg.2
			IL_0106: ldloc.s 8
			IL_0108: call instance void valuetype System.Collections.Generic.ValueListBuilder`1<int32>::Append(!0)

			IL_010d: ldloc.s 8
			IL_010f: ldc.i4.1
			IL_0110: add
			IL_0111: stloc.s 8

			IL_0113: ldloc.s 8
			IL_0115: ldarg.0
			IL_0116: call instance int32 System.String::get_Length()
			IL_011b: blt.s IL_00ec
		// end loop

		IL_011d: ret

		IL_011e: ldloca.s 10
		IL_0120: initobj System.String/ProbabilisticMap
		IL_0126: ldloca.s 10
		IL_0128: conv.u
		IL_0129: stloc.s 11
		IL_012b: ldloc.s 11
		IL_012d: ldarg.1
		IL_012e: call void System.String::InitializeProbabilisticMap(uint32*, valuetype System.ReadOnlySpan`1<char>)
		IL_0133: ldc.i4.0
		IL_0134: stloc.s 12
		IL_0136: br.s IL_0174
		// loop start (head: IL_0174)
			IL_0138: ldarg.0
			IL_0139: ldloc.s 12
			IL_013b: call instance char System.String::get_Chars(int32)
			IL_0140: stloc.s 13
			IL_0142: ldloc.s 11
			IL_0144: ldloc.s 13
			IL_0146: conv.u1
			IL_0147: call bool System.String::IsCharBitSet(uint32*, uint8)
			IL_014c: brfalse.s IL_016e

			IL_014e: ldloc.s 11
			IL_0150: ldloc.s 13
			IL_0152: ldc.i4.8
			IL_0153: shr
			IL_0154: conv.u1
			IL_0155: call bool System.String::IsCharBitSet(uint32*, uint8)
			IL_015a: brfalse.s IL_016e

			IL_015c: ldarg.1
			IL_015d: ldloc.s 13
			IL_015f: call bool System.MemoryExtensions::Contains<char>(valuetype System.ReadOnlySpan`1<!!0>, !!0)
			IL_0164: brfalse.s IL_016e

			IL_0166: ldarg.2
			IL_0167: ldloc.s 12
			IL_0169: call instance void valuetype System.Collections.Generic.ValueListBuilder`1<int32>::Append(!0)

			IL_016e: ldloc.s 12
			IL_0170: ldc.i4.1
			IL_0171: add
			IL_0172: stloc.s 12

			IL_0174: ldloc.s 12
			IL_0176: ldarg.0
			IL_0177: call instance int32 System.String::get_Length()
			IL_017c: blt.s IL_0138
		// end loop

		IL_017e: ret
	} // end of method String::MakeSeparatorList

	.method private hidebysig 
		instance void MakeSeparatorList (
			string separator,
			valuetype System.Collections.Generic.ValueListBuilder`1<int32>& sepListBuilder
		) cil managed 
	{
		// Method begins at RVA 0x56a8c
		// Code size 90 (0x5a)
		.maxstack 3
		.locals (
			[0] int32,
			[1] int32
		)

		IL_0000: ldarg.1
		IL_0001: callvirt instance int32 System.String::get_Length()
		IL_0006: stloc.0
		IL_0007: ldc.i4.0
		IL_0008: stloc.1
		IL_0009: br.s IL_0050
		// loop start (head: IL_0050)
			IL_000b: ldarg.0
			IL_000c: ldloc.1
			IL_000d: call instance char System.String::get_Chars(int32)
			IL_0012: ldarg.1
			IL_0013: ldc.i4.0
			IL_0014: callvirt instance char System.String::get_Chars(int32)
			IL_0019: bne.un.s IL_004c

			IL_001b: ldloc.0
			IL_001c: ldarg.0
			IL_001d: call instance int32 System.String::get_Length()
			IL_0022: ldloc.1
			IL_0023: sub
			IL_0024: bgt.s IL_004c

			IL_0026: ldloc.0
			IL_0027: ldc.i4.1
			IL_0028: beq.s IL_003f

			IL_002a: ldarg.0
			IL_002b: ldloc.1
			IL_002c: ldloc.0
			IL_002d: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string, int32, int32)
			IL_0032: ldarg.1
			IL_0033: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
			IL_0038: call bool System.MemoryExtensions::SequenceEqual<char>(valuetype System.ReadOnlySpan`1<!!0>, valuetype System.ReadOnlySpan`1<!!0>)
			IL_003d: brfalse.s IL_004c

			IL_003f: ldarg.2
			IL_0040: ldloc.1
			IL_0041: call instance void valuetype System.Collections.Generic.ValueListBuilder`1<int32>::Append(!0)
			IL_0046: ldloc.1
			IL_0047: ldloc.0
			IL_0048: ldc.i4.1
			IL_0049: sub
			IL_004a: add
			IL_004b: stloc.1

			IL_004c: ldloc.1
			IL_004d: ldc.i4.1
			IL_004e: add
			IL_004f: stloc.1

			IL_0050: ldloc.1
			IL_0051: ldarg.0
			IL_0052: call instance int32 System.String::get_Length()
			IL_0057: blt.s IL_000b
		// end loop

		IL_0059: ret
	} // end of method String::MakeSeparatorList

	.method private hidebysig 
		instance void MakeSeparatorList (
			string[] separators,
			valuetype System.Collections.Generic.ValueListBuilder`1<int32>& sepListBuilder,
			valuetype System.Collections.Generic.ValueListBuilder`1<int32>& lengthListBuilder
		) cil managed 
	{
		// Method begins at RVA 0x56af4
		// Code size 125 (0x7d)
		.maxstack 3
		.locals (
			[0] int32,
			[1] int32,
			[2] string,
			[3] int32
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: br.s IL_0073
		// loop start (head: IL_0073)
			IL_0004: ldc.i4.0
			IL_0005: stloc.1
			IL_0006: br.s IL_0069
			// loop start (head: IL_0069)
				IL_0008: ldarg.1
				IL_0009: ldloc.1
				IL_000a: ldelem.ref
				IL_000b: stloc.2
				IL_000c: ldloc.2
				IL_000d: call bool System.String::IsNullOrEmpty(string)
				IL_0012: brtrue.s IL_0065

				IL_0014: ldloc.2
				IL_0015: callvirt instance int32 System.String::get_Length()
				IL_001a: stloc.3
				IL_001b: ldarg.0
				IL_001c: ldloc.0
				IL_001d: call instance char System.String::get_Chars(int32)
				IL_0022: ldloc.2
				IL_0023: ldc.i4.0
				IL_0024: callvirt instance char System.String::get_Chars(int32)
				IL_0029: bne.un.s IL_0065

				IL_002b: ldloc.3
				IL_002c: ldarg.0
				IL_002d: call instance int32 System.String::get_Length()
				IL_0032: ldloc.0
				IL_0033: sub
				IL_0034: bgt.s IL_0065

				IL_0036: ldloc.3
				IL_0037: ldc.i4.1
				IL_0038: beq.s IL_004f

				IL_003a: ldarg.0
				IL_003b: ldloc.0
				IL_003c: ldloc.3
				IL_003d: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string, int32, int32)
				IL_0042: ldloc.2
				IL_0043: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
				IL_0048: call bool System.MemoryExtensions::SequenceEqual<char>(valuetype System.ReadOnlySpan`1<!!0>, valuetype System.ReadOnlySpan`1<!!0>)
				IL_004d: brfalse.s IL_0065

				IL_004f: ldarg.2
				IL_0050: ldloc.0
				IL_0051: call instance void valuetype System.Collections.Generic.ValueListBuilder`1<int32>::Append(!0)
				IL_0056: ldarg.3
				IL_0057: ldloc.3
				IL_0058: call instance void valuetype System.Collections.Generic.ValueListBuilder`1<int32>::Append(!0)
				IL_005d: ldloc.0
				IL_005e: ldloc.3
				IL_005f: ldc.i4.1
				IL_0060: sub
				IL_0061: add
				IL_0062: stloc.0
				IL_0063: br.s IL_006f

				IL_0065: ldloc.1
				IL_0066: ldc.i4.1
				IL_0067: add
				IL_0068: stloc.1

				IL_0069: ldloc.1
				IL_006a: ldarg.1
				IL_006b: ldlen
				IL_006c: conv.i4
				IL_006d: blt.s IL_0008
			// end loop

			IL_006f: ldloc.0
			IL_0070: ldc.i4.1
			IL_0071: add
			IL_0072: stloc.0

			IL_0073: ldloc.0
			IL_0074: ldarg.0
			IL_0075: call instance int32 System.String::get_Length()
			IL_007a: blt.s IL_0004
		// end loop

		IL_007c: ret
	} // end of method String::MakeSeparatorList

	.method private hidebysig static 
		void CheckStringSplitOptions (
			valuetype System.StringSplitOptions options
		) cil managed 
	{
		// Method begins at RVA 0x56b7d
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s -4
		IL_0003: and
		IL_0004: brfalse.s IL_000f

		IL_0006: ldc.i4.s 66
		IL_0008: ldc.i4.s 87
		IL_000a: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource, valuetype System.ExceptionArgument)

		IL_000f: ret
	} // end of method String::CheckStringSplitOptions

	.method public hidebysig 
		instance string Substring (
			int32 startIndex
		) cil managed 
	{
		// Method begins at RVA 0x56b8e
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.0
		IL_0003: call instance int32 System.String::get_Length()
		IL_0008: ldarg.1
		IL_0009: sub
		IL_000a: call instance string System.String::Substring(int32, int32)
		IL_000f: ret
	} // end of method String::Substring

	.method public hidebysig 
		instance string Substring (
			int32 startIndex,
			int32 length
		) cil managed 
	{
		// Method begins at RVA 0x56ba0
		// Code size 124 (0x7c)
		.maxstack 3

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0014

		IL_0004: ldstr "startIndex"
		IL_0009: call string System.SR::get_ArgumentOutOfRange_StartIndex()
		IL_000e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0013: throw

		IL_0014: ldarg.1
		IL_0015: ldarg.0
		IL_0016: call instance int32 System.String::get_Length()
		IL_001b: ble.s IL_002d

		IL_001d: ldstr "startIndex"
		IL_0022: call string System.SR::get_ArgumentOutOfRange_StartIndexLargerThanLength()
		IL_0027: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_002c: throw

		IL_002d: ldarg.2
		IL_002e: ldc.i4.0
		IL_002f: bge.s IL_0041

		IL_0031: ldstr "length"
		IL_0036: call string System.SR::get_ArgumentOutOfRange_NegativeLength()
		IL_003b: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0040: throw

		IL_0041: ldarg.1
		IL_0042: ldarg.0
		IL_0043: call instance int32 System.String::get_Length()
		IL_0048: ldarg.2
		IL_0049: sub
		IL_004a: ble.s IL_005c

		IL_004c: ldstr "length"
		IL_0051: call string System.SR::get_ArgumentOutOfRange_IndexLength()
		IL_0056: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_005b: throw

		IL_005c: ldarg.2
		IL_005d: brtrue.s IL_0065

		IL_005f: ldsfld string System.String::Empty
		IL_0064: ret

		IL_0065: ldarg.1
		IL_0066: brtrue.s IL_0073

		IL_0068: ldarg.2
		IL_0069: ldarg.0
		IL_006a: call instance int32 System.String::get_Length()
		IL_006f: bne.un.s IL_0073

		IL_0071: ldarg.0
		IL_0072: ret

		IL_0073: ldarg.0
		IL_0074: ldarg.1
		IL_0075: ldarg.2
		IL_0076: call instance string System.String::InternalSubString(int32, int32)
		IL_007b: ret
	} // end of method String::Substring

	.method private hidebysig 
		instance string InternalSubString (
			int32 startIndex,
			int32 length
		) cil managed 
	{
		// Method begins at RVA 0x56c28
		// Code size 41 (0x29)
		.maxstack 3
		.locals (
			[0] string,
			[1] native uint
		)

		IL_0000: ldarg.2
		IL_0001: call string System.String::FastAllocateString(int32)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: callvirt instance int32 System.String::get_Length()
		IL_000d: conv.u
		IL_000e: stloc.1
		IL_000f: ldloc.0
		IL_0010: ldflda char System.String::_firstChar
		IL_0015: ldarg.0
		IL_0016: ldflda char System.String::_firstChar
		IL_001b: ldarg.1
		IL_001c: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_0021: ldloc.1
		IL_0022: call void System.Buffer::Memmove<char>(!!0&, !!0&, native uint)
		IL_0027: ldloc.0
		IL_0028: ret
	} // end of method String::InternalSubString

	.method public hidebysig 
		instance string ToLower () cil managed 
	{
		// Method begins at RVA 0x56c5d
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: call instance string System.String::ToLower(class System.Globalization.CultureInfo)
		IL_0007: ret
	} // end of method String::ToLower

	.method public hidebysig 
		instance string ToLower (
			class System.Globalization.CultureInfo culture
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x56c68
		// Code size 24 (0x18)
		.maxstack 2
		.locals (
			[0] class System.Globalization.CultureInfo
		)

		IL_0000: ldarg.1
		IL_0001: dup
		IL_0002: brtrue.s IL_000a

		IL_0004: pop
		IL_0005: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()

		IL_000a: stloc.0
		IL_000b: ldloc.0
		IL_000c: callvirt instance class System.Globalization.TextInfo System.Globalization.CultureInfo::get_TextInfo()
		IL_0011: ldarg.0
		IL_0012: callvirt instance string System.Globalization.TextInfo::ToLower(string)
		IL_0017: ret
	} // end of method String::ToLower

	.method public hidebysig 
		instance string ToLowerInvariant () cil managed 
	{
		// Method begins at RVA 0x56c8c
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldsfld class System.Globalization.TextInfo System.Globalization.TextInfo::Invariant
		IL_0005: ldarg.0
		IL_0006: callvirt instance string System.Globalization.TextInfo::ToLower(string)
		IL_000b: ret
	} // end of method String::ToLowerInvariant

	.method public hidebysig 
		instance string ToUpper () cil managed 
	{
		// Method begins at RVA 0x56c99
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: call instance string System.String::ToUpper(class System.Globalization.CultureInfo)
		IL_0007: ret
	} // end of method String::ToUpper

	.method public hidebysig 
		instance string ToUpper (
			class System.Globalization.CultureInfo culture
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x56ca4
		// Code size 24 (0x18)
		.maxstack 2
		.locals (
			[0] class System.Globalization.CultureInfo
		)

		IL_0000: ldarg.1
		IL_0001: dup
		IL_0002: brtrue.s IL_000a

		IL_0004: pop
		IL_0005: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()

		IL_000a: stloc.0
		IL_000b: ldloc.0
		IL_000c: callvirt instance class System.Globalization.TextInfo System.Globalization.CultureInfo::get_TextInfo()
		IL_0011: ldarg.0
		IL_0012: callvirt instance string System.Globalization.TextInfo::ToUpper(string)
		IL_0017: ret
	} // end of method String::ToUpper

	.method public hidebysig 
		instance string ToUpperInvariant () cil managed 
	{
		// Method begins at RVA 0x56cc8
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldsfld class System.Globalization.TextInfo System.Globalization.TextInfo::Invariant
		IL_0005: ldarg.0
		IL_0006: callvirt instance string System.Globalization.TextInfo::ToUpper(string)
		IL_000b: ret
	} // end of method String::ToUpperInvariant

	.method public hidebysig 
		instance string Trim () cil managed 
	{
		// Method begins at RVA 0x56cd5
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.3
		IL_0002: call instance string System.String::TrimWhiteSpaceHelper(valuetype System.Text.TrimType)
		IL_0007: ret
	} // end of method String::Trim

	.method public hidebysig 
		instance string Trim (
			char trimChar
		) cil managed 
	{
		// Method begins at RVA 0x56cde
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarga.s trimChar
		IL_0003: conv.u
		IL_0004: ldc.i4.1
		IL_0005: ldc.i4.3
		IL_0006: call instance string System.String::TrimHelper(char*, int32, valuetype System.Text.TrimType)
		IL_000b: ret
	} // end of method String::Trim

	.method public hidebysig 
		instance string Trim (
			char[] trimChars
		) cil managed 
	{
		.param [1]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x56cec
		// Code size 38 (0x26)
		.maxstack 4
		.locals (
			[0] char*,
			[1] char& pinned
		)

		IL_0000: ldarg.1
		IL_0001: brfalse.s IL_0007

		IL_0003: ldarg.1
		IL_0004: ldlen
		IL_0005: brtrue.s IL_000f

		IL_0007: ldarg.0
		IL_0008: ldc.i4.3
		IL_0009: call instance string System.String::TrimWhiteSpaceHelper(valuetype System.Text.TrimType)
		IL_000e: ret

		IL_000f: ldarg.1
		IL_0010: ldc.i4.0
		IL_0011: ldelema System.Char
		IL_0016: stloc.1
		IL_0017: ldloc.1
		IL_0018: conv.u
		IL_0019: stloc.0
		IL_001a: ldarg.0
		IL_001b: ldloc.0
		IL_001c: ldarg.1
		IL_001d: ldlen
		IL_001e: conv.i4
		IL_001f: ldc.i4.3
		IL_0020: call instance string System.String::TrimHelper(char*, int32, valuetype System.Text.TrimType)
		IL_0025: ret
	} // end of method String::Trim

	.method public hidebysig 
		instance string TrimStart () cil managed 
	{
		// Method begins at RVA 0x56d1e
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.1
		IL_0002: call instance string System.String::TrimWhiteSpaceHelper(valuetype System.Text.TrimType)
		IL_0007: ret
	} // end of method String::TrimStart

	.method public hidebysig 
		instance string TrimStart (
			char trimChar
		) cil managed 
	{
		// Method begins at RVA 0x56d27
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarga.s trimChar
		IL_0003: conv.u
		IL_0004: ldc.i4.1
		IL_0005: ldc.i4.1
		IL_0006: call instance string System.String::TrimHelper(char*, int32, valuetype System.Text.TrimType)
		IL_000b: ret
	} // end of method String::TrimStart

	.method public hidebysig 
		instance string TrimStart (
			char[] trimChars
		) cil managed 
	{
		.param [1]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x56d34
		// Code size 38 (0x26)
		.maxstack 4
		.locals (
			[0] char*,
			[1] char& pinned
		)

		IL_0000: ldarg.1
		IL_0001: brfalse.s IL_0007

		IL_0003: ldarg.1
		IL_0004: ldlen
		IL_0005: brtrue.s IL_000f

		IL_0007: ldarg.0
		IL_0008: ldc.i4.1
		IL_0009: call instance string System.String::TrimWhiteSpaceHelper(valuetype System.Text.TrimType)
		IL_000e: ret

		IL_000f: ldarg.1
		IL_0010: ldc.i4.0
		IL_0011: ldelema System.Char
		IL_0016: stloc.1
		IL_0017: ldloc.1
		IL_0018: conv.u
		IL_0019: stloc.0
		IL_001a: ldarg.0
		IL_001b: ldloc.0
		IL_001c: ldarg.1
		IL_001d: ldlen
		IL_001e: conv.i4
		IL_001f: ldc.i4.1
		IL_0020: call instance string System.String::TrimHelper(char*, int32, valuetype System.Text.TrimType)
		IL_0025: ret
	} // end of method String::TrimStart

	.method public hidebysig 
		instance string TrimEnd () cil managed 
	{
		// Method begins at RVA 0x56d66
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.2
		IL_0002: call instance string System.String::TrimWhiteSpaceHelper(valuetype System.Text.TrimType)
		IL_0007: ret
	} // end of method String::TrimEnd

	.method public hidebysig 
		instance string TrimEnd (
			char trimChar
		) cil managed 
	{
		// Method begins at RVA 0x56d6f
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarga.s trimChar
		IL_0003: conv.u
		IL_0004: ldc.i4.1
		IL_0005: ldc.i4.2
		IL_0006: call instance string System.String::TrimHelper(char*, int32, valuetype System.Text.TrimType)
		IL_000b: ret
	} // end of method String::TrimEnd

	.method public hidebysig 
		instance string TrimEnd (
			char[] trimChars
		) cil managed 
	{
		.param [1]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x56d7c
		// Code size 38 (0x26)
		.maxstack 4
		.locals (
			[0] char*,
			[1] char& pinned
		)

		IL_0000: ldarg.1
		IL_0001: brfalse.s IL_0007

		IL_0003: ldarg.1
		IL_0004: ldlen
		IL_0005: brtrue.s IL_000f

		IL_0007: ldarg.0
		IL_0008: ldc.i4.2
		IL_0009: call instance string System.String::TrimWhiteSpaceHelper(valuetype System.Text.TrimType)
		IL_000e: ret

		IL_000f: ldarg.1
		IL_0010: ldc.i4.0
		IL_0011: ldelema System.Char
		IL_0016: stloc.1
		IL_0017: ldloc.1
		IL_0018: conv.u
		IL_0019: stloc.0
		IL_001a: ldarg.0
		IL_001b: ldloc.0
		IL_001c: ldarg.1
		IL_001d: ldlen
		IL_001e: conv.i4
		IL_001f: ldc.i4.2
		IL_0020: call instance string System.String::TrimHelper(char*, int32, valuetype System.Text.TrimType)
		IL_0025: ret
	} // end of method String::TrimEnd

	.method private hidebysig 
		instance string TrimWhiteSpaceHelper (
			valuetype System.Text.TrimType trimType
		) cil managed 
	{
		// Method begins at RVA 0x56db0
		// Code size 94 (0x5e)
		.maxstack 3
		.locals (
			[0] int32,
			[1] int32
		)

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.String::get_Length()
		IL_0006: ldc.i4.1
		IL_0007: sub
		IL_0008: stloc.0
		IL_0009: ldc.i4.0
		IL_000a: stloc.1
		IL_000b: ldarg.1
		IL_000c: ldc.i4.1
		IL_000d: and
		IL_000e: brfalse.s IL_002f

		IL_0010: ldc.i4.0
		IL_0011: stloc.1
		IL_0012: br.s IL_0026
		// loop start (head: IL_0026)
			IL_0014: ldarg.0
			IL_0015: ldloc.1
			IL_0016: call instance char System.String::get_Chars(int32)
			IL_001b: call bool System.Char::IsWhiteSpace(char)
			IL_0020: brfalse.s IL_002f

			IL_0022: ldloc.1
			IL_0023: ldc.i4.1
			IL_0024: add
			IL_0025: stloc.1

			IL_0026: ldloc.1
			IL_0027: ldarg.0
			IL_0028: call instance int32 System.String::get_Length()
			IL_002d: blt.s IL_0014
		// end loop

		IL_002f: ldarg.1
		IL_0030: ldc.i4.2
		IL_0031: and
		IL_0032: brfalse.s IL_0055

		IL_0034: ldarg.0
		IL_0035: call instance int32 System.String::get_Length()
		IL_003a: ldc.i4.1
		IL_003b: sub
		IL_003c: stloc.0
		IL_003d: br.s IL_0051
		// loop start (head: IL_0051)
			IL_003f: ldarg.0
			IL_0040: ldloc.0
			IL_0041: call instance char System.String::get_Chars(int32)
			IL_0046: call bool System.Char::IsWhiteSpace(char)
			IL_004b: brfalse.s IL_0055

			IL_004d: ldloc.0
			IL_004e: ldc.i4.1
			IL_004f: sub
			IL_0050: stloc.0

			IL_0051: ldloc.0
			IL_0052: ldloc.1
			IL_0053: bge.s IL_003f
		// end loop

		IL_0055: ldarg.0
		IL_0056: ldloc.1
		IL_0057: ldloc.0
		IL_0058: call instance string System.String::CreateTrimmedString(int32, int32)
		IL_005d: ret
	} // end of method String::TrimWhiteSpaceHelper

	.method private hidebysig 
		instance string TrimHelper (
			char* trimChars,
			int32 trimCharsLength,
			valuetype System.Text.TrimType trimType
		) cil managed 
	{
		// Method begins at RVA 0x56e1c
		// Code size 147 (0x93)
		.maxstack 3
		.locals (
			[0] int32,
			[1] int32,
			[2] int32,
			[3] char,
			[4] int32,
			[5] char
		)

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.String::get_Length()
		IL_0006: ldc.i4.1
		IL_0007: sub
		IL_0008: stloc.0
		IL_0009: ldc.i4.0
		IL_000a: stloc.1
		IL_000b: ldarg.3
		IL_000c: ldc.i4.1
		IL_000d: and
		IL_000e: brfalse.s IL_0045

		IL_0010: ldc.i4.0
		IL_0011: stloc.1
		IL_0012: br.s IL_003c
		// loop start (head: IL_003c)
			IL_0014: ldc.i4.0
			IL_0015: stloc.2
			IL_0016: ldarg.0
			IL_0017: ldloc.1
			IL_0018: call instance char System.String::get_Chars(int32)
			IL_001d: stloc.3
			IL_001e: ldc.i4.0
			IL_001f: stloc.2
			IL_0020: br.s IL_0030
			// loop start (head: IL_0030)
				IL_0022: ldarg.1
				IL_0023: ldloc.2
				IL_0024: conv.i
				IL_0025: ldc.i4.2
				IL_0026: mul
				IL_0027: add
				IL_0028: ldind.u2
				IL_0029: ldloc.3
				IL_002a: beq.s IL_0034

				IL_002c: ldloc.2
				IL_002d: ldc.i4.1
				IL_002e: add
				IL_002f: stloc.2

				IL_0030: ldloc.2
				IL_0031: ldarg.2
				IL_0032: blt.s IL_0022
			// end loop

			IL_0034: ldloc.2
			IL_0035: ldarg.2
			IL_0036: beq.s IL_0045

			IL_0038: ldloc.1
			IL_0039: ldc.i4.1
			IL_003a: add
			IL_003b: stloc.1

			IL_003c: ldloc.1
			IL_003d: ldarg.0
			IL_003e: call instance int32 System.String::get_Length()
			IL_0043: blt.s IL_0014
		// end loop

		IL_0045: ldarg.3
		IL_0046: ldc.i4.2
		IL_0047: and
		IL_0048: brfalse.s IL_008a

		IL_004a: ldarg.0
		IL_004b: call instance int32 System.String::get_Length()
		IL_0050: ldc.i4.1
		IL_0051: sub
		IL_0052: stloc.0
		IL_0053: br.s IL_0086
		// loop start (head: IL_0086)
			IL_0055: ldc.i4.0
			IL_0056: stloc.s 4
			IL_0058: ldarg.0
			IL_0059: ldloc.0
			IL_005a: call instance char System.String::get_Chars(int32)
			IL_005f: stloc.s 5
			IL_0061: ldc.i4.0
			IL_0062: stloc.s 4
			IL_0064: br.s IL_0078
			// loop start (head: IL_0078)
				IL_0066: ldarg.1
				IL_0067: ldloc.s 4
				IL_0069: conv.i
				IL_006a: ldc.i4.2
				IL_006b: mul
				IL_006c: add
				IL_006d: ldind.u2
				IL_006e: ldloc.s 5
				IL_0070: beq.s IL_007d

				IL_0072: ldloc.s 4
				IL_0074: ldc.i4.1
				IL_0075: add
				IL_0076: stloc.s 4

				IL_0078: ldloc.s 4
				IL_007a: ldarg.2
				IL_007b: blt.s IL_0066
			// end loop

			IL_007d: ldloc.s 4
			IL_007f: ldarg.2
			IL_0080: beq.s IL_008a

			IL_0082: ldloc.0
			IL_0083: ldc.i4.1
			IL_0084: sub
			IL_0085: stloc.0

			IL_0086: ldloc.0
			IL_0087: ldloc.1
			IL_0088: bge.s IL_0055
		// end loop

		IL_008a: ldarg.0
		IL_008b: ldloc.1
		IL_008c: ldloc.0
		IL_008d: call instance string System.String::CreateTrimmedString(int32, int32)
		IL_0092: ret
	} // end of method String::TrimHelper

	.method private hidebysig 
		instance string CreateTrimmedString (
			int32 start,
			int32 end
		) cil managed 
	{
		// Method begins at RVA 0x56ebc
		// Code size 35 (0x23)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.2
		IL_0001: ldarg.1
		IL_0002: sub
		IL_0003: ldc.i4.1
		IL_0004: add
		IL_0005: stloc.0
		IL_0006: ldloc.0
		IL_0007: ldarg.0
		IL_0008: call instance int32 System.String::get_Length()
		IL_000d: beq.s IL_0021

		IL_000f: ldloc.0
		IL_0010: brfalse.s IL_001b

		IL_0012: ldarg.0
		IL_0013: ldarg.1
		IL_0014: ldloc.0
		IL_0015: call instance string System.String::InternalSubString(int32, int32)
		IL_001a: ret

		IL_001b: ldsfld string System.String::Empty
		IL_0020: ret

		IL_0021: ldarg.0
		IL_0022: ret
	} // end of method String::CreateTrimmedString

	.method public hidebysig 
		instance bool Contains (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x56eeb
		// Code size 45 (0x2d)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.7
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldflda char System.String::_firstChar
		IL_000f: ldarg.0
		IL_0010: call instance int32 System.String::get_Length()
		IL_0015: ldarg.1
		IL_0016: ldflda char System.String::_firstChar
		IL_001b: ldarg.1
		IL_001c: callvirt instance int32 System.String::get_Length()
		IL_0021: call int32 System.SpanHelpers::IndexOf(char&, int32, char&, int32)
		IL_0026: ldc.i4.0
		IL_0027: clt
		IL_0029: ldc.i4.0
		IL_002a: ceq
		IL_002c: ret
	} // end of method String::Contains

	.method public hidebysig 
		instance bool Contains (
			string 'value',
			valuetype System.StringComparison comparisonType
		) cil managed 
	{
		// Method begins at RVA 0x56f19
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: call instance int32 System.String::IndexOf(string, valuetype System.StringComparison)
		IL_0008: ldc.i4.0
		IL_0009: clt
		IL_000b: ldc.i4.0
		IL_000c: ceq
		IL_000e: ret
	} // end of method String::Contains

	.method public hidebysig 
		instance bool Contains (
			char 'value'
		) cil managed 
	{
		// Method begins at RVA 0x56f29
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldflda char System.String::_firstChar
		IL_0006: ldarg.1
		IL_0007: ldarg.0
		IL_0008: call instance int32 System.String::get_Length()
		IL_000d: call bool System.SpanHelpers::Contains(char&, char, int32)
		IL_0012: ret
	} // end of method String::Contains

	.method public hidebysig 
		instance bool Contains (
			char 'value',
			valuetype System.StringComparison comparisonType
		) cil managed 
	{
		// Method begins at RVA 0x56f3d
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: call instance int32 System.String::IndexOf(char, valuetype System.StringComparison)
		IL_0008: ldc.i4.m1
		IL_0009: ceq
		IL_000b: ldc.i4.0
		IL_000c: ceq
		IL_000e: ret
	} // end of method String::Contains

	.method public hidebysig 
		instance int32 IndexOf (
			char 'value'
		) cil managed 
	{
		// Method begins at RVA 0x56f4d
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldflda char System.String::_firstChar
		IL_0006: ldarg.1
		IL_0007: ldarg.0
		IL_0008: call instance int32 System.String::get_Length()
		IL_000d: call int32 System.SpanHelpers::IndexOf(char&, char, int32)
		IL_0012: ret
	} // end of method String::IndexOf

	.method public hidebysig 
		instance int32 IndexOf (
			char 'value',
			int32 startIndex
		) cil managed 
	{
		// Method begins at RVA 0x56f61
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.0
		IL_0004: call instance int32 System.String::get_Length()
		IL_0009: ldarg.2
		IL_000a: sub
		IL_000b: call instance int32 System.String::IndexOf(char, int32, int32)
		IL_0010: ret
	} // end of method String::IndexOf

	.method public hidebysig 
		instance int32 IndexOf (
			char 'value',
			valuetype System.StringComparison comparisonType
		) cil managed 
	{
		// Method begins at RVA 0x56f74
		// Code size 117 (0x75)
		.maxstack 4

		IL_0000: ldarg.2
		IL_0001: switch (IL_0020, IL_0020, IL_0038, IL_0038, IL_004b, IL_0053)

		IL_001e: br.s IL_0065

		IL_0020: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()
		IL_0025: callvirt instance class System.Globalization.CompareInfo System.Globalization.CultureInfo::get_CompareInfo()
		IL_002a: ldarg.0
		IL_002b: ldarg.1
		IL_002c: ldarg.2
		IL_002d: call valuetype System.Globalization.CompareOptions System.String::GetCaseCompareOfComparisonCulture(valuetype System.StringComparison)
		IL_0032: callvirt instance int32 System.Globalization.CompareInfo::IndexOf(string, char, valuetype System.Globalization.CompareOptions)
		IL_0037: ret

		IL_0038: ldsfld class System.Globalization.CompareInfo System.Globalization.CompareInfo::Invariant
		IL_003d: ldarg.0
		IL_003e: ldarg.1
		IL_003f: ldarg.2
		IL_0040: call valuetype System.Globalization.CompareOptions System.String::GetCaseCompareOfComparisonCulture(valuetype System.StringComparison)
		IL_0045: callvirt instance int32 System.Globalization.CompareInfo::IndexOf(string, char, valuetype System.Globalization.CompareOptions)
		IL_004a: ret

		IL_004b: ldarg.0
		IL_004c: ldarg.1
		IL_004d: call instance int32 System.String::IndexOf(char)
		IL_0052: ret

		IL_0053: ldsfld class System.Globalization.CompareInfo System.Globalization.CompareInfo::Invariant
		IL_0058: ldarg.0
		IL_0059: ldarg.1
		IL_005a: ldc.i4 268435456
		IL_005f: callvirt instance int32 System.Globalization.CompareInfo::IndexOf(string, char, valuetype System.Globalization.CompareOptions)
		IL_0064: ret

		IL_0065: call string System.SR::get_NotSupported_StringComparison()
		IL_006a: ldstr "comparisonType"
		IL_006f: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0074: throw
	} // end of method String::IndexOf

	.method public hidebysig 
		instance int32 IndexOf (
			char 'value',
			int32 startIndex,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0x56ff8
		// Code size 82 (0x52)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.2
		IL_0001: ldarg.0
		IL_0002: call instance int32 System.String::get_Length()
		IL_0007: ble.un.s IL_0019

		IL_0009: ldstr "startIndex"
		IL_000e: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0013: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0018: throw

		IL_0019: ldarg.3
		IL_001a: ldarg.0
		IL_001b: call instance int32 System.String::get_Length()
		IL_0020: ldarg.2
		IL_0021: sub
		IL_0022: ble.un.s IL_0034

		IL_0024: ldstr "count"
		IL_0029: call string System.SR::get_ArgumentOutOfRange_Count()
		IL_002e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0033: throw

		IL_0034: ldarg.0
		IL_0035: ldflda char System.String::_firstChar
		IL_003a: ldarg.2
		IL_003b: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_0040: ldarg.1
		IL_0041: ldarg.3
		IL_0042: call int32 System.SpanHelpers::IndexOf(char&, char, int32)
		IL_0047: stloc.0
		IL_0048: ldloc.0
		IL_0049: ldc.i4.m1
		IL_004a: beq.s IL_0050

		IL_004c: ldloc.0
		IL_004d: ldarg.2
		IL_004e: add
		IL_004f: ret

		IL_0050: ldloc.0
		IL_0051: ret
	} // end of method String::IndexOf

	.method public hidebysig 
		instance int32 IndexOfAny (
			char[] anyOf
		) cil managed 
	{
		// Method begins at RVA 0x57056
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.0
		IL_0003: ldarg.0
		IL_0004: call instance int32 System.String::get_Length()
		IL_0009: call instance int32 System.String::IndexOfAny(char[], int32, int32)
		IL_000e: ret
	} // end of method String::IndexOfAny

	.method public hidebysig 
		instance int32 IndexOfAny (
			char[] anyOf,
			int32 startIndex
		) cil managed 
	{
		// Method begins at RVA 0x57066
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.0
		IL_0004: call instance int32 System.String::get_Length()
		IL_0009: ldarg.2
		IL_000a: sub
		IL_000b: call instance int32 System.String::IndexOfAny(char[], int32, int32)
		IL_0010: ret
	} // end of method String::IndexOfAny

	.method public hidebysig 
		instance int32 IndexOfAny (
			char[] anyOf,
			int32 startIndex,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0x57078
		// Code size 134 (0x86)
		.maxstack 4
		.locals (
			[0] int32
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "anyOf"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.2
		IL_000f: ldarg.0
		IL_0010: call instance int32 System.String::get_Length()
		IL_0015: ble.un.s IL_0027

		IL_0017: ldstr "startIndex"
		IL_001c: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0021: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0026: throw

		IL_0027: ldarg.3
		IL_0028: ldarg.0
		IL_0029: call instance int32 System.String::get_Length()
		IL_002e: ldarg.2
		IL_002f: sub
		IL_0030: ble.un.s IL_0042

		IL_0032: ldstr "count"
		IL_0037: call string System.SR::get_ArgumentOutOfRange_Count()
		IL_003c: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0041: throw

		IL_0042: ldarg.1
		IL_0043: ldlen
		IL_0044: brfalse.s IL_0074

		IL_0046: ldarg.1
		IL_0047: ldlen
		IL_0048: conv.i4
		IL_0049: ldc.i4.5
		IL_004a: bgt.s IL_0074

		IL_004c: ldarg.0
		IL_004d: ldflda char System.String::_firstChar
		IL_0052: ldarg.2
		IL_0053: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_0058: ldarg.3
		IL_0059: newobj instance void valuetype System.ReadOnlySpan`1<char>::.ctor(!0&, int32)
		IL_005e: ldarg.1
		IL_005f: call valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::op_Implicit(!0[])
		IL_0064: call int32 System.MemoryExtensions::IndexOfAny<char>(valuetype System.ReadOnlySpan`1<!!0>, valuetype System.ReadOnlySpan`1<!!0>)
		IL_0069: stloc.0
		IL_006a: ldloc.0
		IL_006b: ldc.i4.m1
		IL_006c: beq.s IL_0072

		IL_006e: ldloc.0
		IL_006f: ldarg.2
		IL_0070: add
		IL_0071: ret

		IL_0072: ldloc.0
		IL_0073: ret

		IL_0074: ldarg.1
		IL_0075: ldlen
		IL_0076: conv.i4
		IL_0077: ldc.i4.5
		IL_0078: ble.s IL_0084

		IL_007a: ldarg.0
		IL_007b: ldarg.1
		IL_007c: ldarg.2
		IL_007d: ldarg.3
		IL_007e: call instance int32 System.String::IndexOfCharArray(char[], int32, int32)
		IL_0083: ret

		IL_0084: ldc.i4.m1
		IL_0085: ret
	} // end of method String::IndexOfAny

	.method private hidebysig 
		instance int32 IndexOfCharArray (
			char[] anyOf,
			int32 startIndex,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0x5710c
		// Code size 110 (0x6e)
		.maxstack 3
		.locals (
			[0] valuetype System.String/ProbabilisticMap,
			[1] uint32*,
			[2] char*,
			[3] char& pinned,
			[4] char*,
			[5] int32
		)

		IL_0000: ldloca.s 0
		IL_0002: initobj System.String/ProbabilisticMap
		IL_0008: ldloca.s 0
		IL_000a: conv.u
		IL_000b: stloc.1
		IL_000c: ldloc.1
		IL_000d: ldarg.1
		IL_000e: call valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::op_Implicit(!0[])
		IL_0013: call void System.String::InitializeProbabilisticMap(uint32*, valuetype System.ReadOnlySpan`1<char>)
		IL_0018: ldarg.0
		IL_0019: ldflda char System.String::_firstChar
		IL_001e: stloc.3
		IL_001f: ldloc.3
		IL_0020: conv.u
		IL_0021: stloc.2
		IL_0022: ldloc.2
		IL_0023: ldarg.2
		IL_0024: conv.i
		IL_0025: ldc.i4.2
		IL_0026: mul
		IL_0027: add
		IL_0028: stloc.s 4
		IL_002a: br.s IL_0068
		// loop start (head: IL_0068)
			IL_002c: ldloc.s 4
			IL_002e: ldind.u2
			IL_002f: stloc.s 5
			IL_0031: ldloc.1
			IL_0032: ldloc.s 5
			IL_0034: conv.u1
			IL_0035: call bool System.String::IsCharBitSet(uint32*, uint8)
			IL_003a: brfalse.s IL_005d

			IL_003c: ldloc.1
			IL_003d: ldloc.s 5
			IL_003f: ldc.i4.8
			IL_0040: shr
			IL_0041: conv.u1
			IL_0042: call bool System.String::IsCharBitSet(uint32*, uint8)
			IL_0047: brfalse.s IL_005d

			IL_0049: ldloc.s 5
			IL_004b: conv.u2
			IL_004c: ldarg.1
			IL_004d: call bool System.String::ArrayContains(char, char[])
			IL_0052: brfalse.s IL_005d

			IL_0054: ldloc.s 4
			IL_0056: ldloc.2
			IL_0057: sub
			IL_0058: ldc.i4.2
			IL_0059: div
			IL_005a: conv.i8
			IL_005b: conv.i4
			IL_005c: ret

			IL_005d: ldarg.3
			IL_005e: ldc.i4.1
			IL_005f: sub
			IL_0060: starg.s count
			IL_0062: ldloc.s 4
			IL_0064: ldc.i4.2
			IL_0065: add
			IL_0066: stloc.s 4

			IL_0068: ldarg.3
			IL_0069: ldc.i4.0
			IL_006a: bgt.s IL_002c
		// end loop

		IL_006c: ldc.i4.m1
		IL_006d: ret
	} // end of method String::IndexOfCharArray

	.method private hidebysig static 
		void InitializeProbabilisticMap (
			uint32* charMap,
			valuetype System.ReadOnlySpan`1<char> anyOf
		) cil managed 
	{
		// Method begins at RVA 0x57188
		// Code size 69 (0x45)
		.maxstack 3
		.locals (
			[0] bool,
			[1] uint32*,
			[2] int32,
			[3] int32
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldarg.0
		IL_0003: stloc.1
		IL_0004: ldc.i4.0
		IL_0005: stloc.2
		IL_0006: br.s IL_0031
		// loop start (head: IL_0031)
			IL_0008: ldarga.s anyOf
			IL_000a: ldloc.2
			IL_000b: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
			IL_0010: ldind.u2
			IL_0011: stloc.3
			IL_0012: ldloc.1
			IL_0013: ldloc.3
			IL_0014: conv.u1
			IL_0015: call void System.String::SetCharBit(uint32*, uint8)
			IL_001a: ldloc.3
			IL_001b: ldc.i4.8
			IL_001c: shr
			IL_001d: stloc.3
			IL_001e: ldloc.3
			IL_001f: brtrue.s IL_0025

			IL_0021: ldc.i4.1
			IL_0022: stloc.0
			IL_0023: br.s IL_002d

			IL_0025: ldloc.1
			IL_0026: ldloc.3
			IL_0027: conv.u1
			IL_0028: call void System.String::SetCharBit(uint32*, uint8)

			IL_002d: ldloc.2
			IL_002e: ldc.i4.1
			IL_002f: add
			IL_0030: stloc.2

			IL_0031: ldloc.2
			IL_0032: ldarga.s anyOf
			IL_0034: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0039: blt.s IL_0008
		// end loop

		IL_003b: ldloc.0
		IL_003c: brfalse.s IL_0044

		IL_003e: ldloc.1
		IL_003f: dup
		IL_0040: ldind.u4
		IL_0041: ldc.i4.1
		IL_0042: or
		IL_0043: stind.i4

		IL_0044: ret
	} // end of method String::InitializeProbabilisticMap

	.method private hidebysig static 
		bool ArrayContains (
			char searchChar,
			char[] anyOf
		) cil managed 
	{
		// Method begins at RVA 0x571dc
		// Code size 24 (0x18)
		.maxstack 2
		.locals (
			[0] int32
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: br.s IL_0010
		// loop start (head: IL_0010)
			IL_0004: ldarg.1
			IL_0005: ldloc.0
			IL_0006: ldelem.u2
			IL_0007: ldarg.0
			IL_0008: bne.un.s IL_000c

			IL_000a: ldc.i4.1
			IL_000b: ret

			IL_000c: ldloc.0
			IL_000d: ldc.i4.1
			IL_000e: add
			IL_000f: stloc.0

			IL_0010: ldloc.0
			IL_0011: ldarg.1
			IL_0012: ldlen
			IL_0013: conv.i4
			IL_0014: blt.s IL_0004
		// end loop

		IL_0016: ldc.i4.0
		IL_0017: ret
	} // end of method String::ArrayContains

	.method private hidebysig static 
		bool IsCharBitSet (
			uint32* charMap,
			uint8 'value'
		) cil managed 
	{
		// Method begins at RVA 0x57200
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.7
		IL_0003: and
		IL_0004: conv.i
		IL_0005: ldc.i4.4
		IL_0006: mul
		IL_0007: add
		IL_0008: ldind.u4
		IL_0009: ldc.i4.1
		IL_000a: ldarg.1
		IL_000b: ldc.i4.3
		IL_000c: shr
		IL_000d: ldc.i4.s 31
		IL_000f: and
		IL_0010: shl
		IL_0011: and
		IL_0012: ldc.i4.0
		IL_0013: cgt.un
		IL_0015: ret
	} // end of method String::IsCharBitSet

	.method private hidebysig static 
		void SetCharBit (
			uint32* charMap,
			uint8 'value'
		) cil managed 
	{
		// Method begins at RVA 0x57217
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.7
		IL_0003: and
		IL_0004: conv.i
		IL_0005: ldc.i4.4
		IL_0006: mul
		IL_0007: add
		IL_0008: dup
		IL_0009: ldind.u4
		IL_000a: ldc.i4.1
		IL_000b: ldarg.1
		IL_000c: ldc.i4.3
		IL_000d: shr
		IL_000e: ldc.i4.s 31
		IL_0010: and
		IL_0011: shl
		IL_0012: or
		IL_0013: stind.i4
		IL_0014: ret
	} // end of method String::SetCharBit

	.method public hidebysig 
		instance int32 IndexOf (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x5722d
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.0
		IL_0003: call instance int32 System.String::IndexOf(string, valuetype System.StringComparison)
		IL_0008: ret
	} // end of method String::IndexOf

	.method public hidebysig 
		instance int32 IndexOf (
			string 'value',
			int32 startIndex
		) cil managed 
	{
		// Method begins at RVA 0x57237
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldc.i4.0
		IL_0004: call instance int32 System.String::IndexOf(string, int32, valuetype System.StringComparison)
		IL_0009: ret
	} // end of method String::IndexOf

	.method public hidebysig 
		instance int32 IndexOf (
			string 'value',
			int32 startIndex,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0x57242
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: ldc.i4.0
		IL_0005: call instance int32 System.String::IndexOf(string, int32, int32, valuetype System.StringComparison)
		IL_000a: ret
	} // end of method String::IndexOf

	.method public hidebysig 
		instance int32 IndexOf (
			string 'value',
			valuetype System.StringComparison comparisonType
		) cil managed 
	{
		// Method begins at RVA 0x5724e
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.0
		IL_0003: ldarg.0
		IL_0004: call instance int32 System.String::get_Length()
		IL_0009: ldarg.2
		IL_000a: call instance int32 System.String::IndexOf(string, int32, int32, valuetype System.StringComparison)
		IL_000f: ret
	} // end of method String::IndexOf

	.method public hidebysig 
		instance int32 IndexOf (
			string 'value',
			int32 startIndex,
			valuetype System.StringComparison comparisonType
		) cil managed 
	{
		// Method begins at RVA 0x5725f
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.0
		IL_0004: call instance int32 System.String::get_Length()
		IL_0009: ldarg.2
		IL_000a: sub
		IL_000b: ldarg.3
		IL_000c: call instance int32 System.String::IndexOf(string, int32, int32, valuetype System.StringComparison)
		IL_0011: ret
	} // end of method String::IndexOf

	.method public hidebysig 
		instance int32 IndexOf (
			string 'value',
			int32 startIndex,
			int32 count,
			valuetype System.StringComparison comparisonType
		) cil managed 
	{
		// Method begins at RVA 0x57274
		// Code size 128 (0x80)
		.maxstack 6

		IL_0000: ldarg.s comparisonType
		IL_0002: switch (IL_0021, IL_0021, IL_003c, IL_003c, IL_0052, IL_0052)

		IL_001f: br.s IL_0061

		IL_0021: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()
		IL_0026: callvirt instance class System.Globalization.CompareInfo System.Globalization.CultureInfo::get_CompareInfo()
		IL_002b: ldarg.0
		IL_002c: ldarg.1
		IL_002d: ldarg.2
		IL_002e: ldarg.3
		IL_002f: ldarg.s comparisonType
		IL_0031: call valuetype System.Globalization.CompareOptions System.String::GetCaseCompareOfComparisonCulture(valuetype System.StringComparison)
		IL_0036: callvirt instance int32 System.Globalization.CompareInfo::IndexOf(string, string, int32, int32, valuetype System.Globalization.CompareOptions)
		IL_003b: ret

		IL_003c: ldsfld class System.Globalization.CompareInfo System.Globalization.CompareInfo::Invariant
		IL_0041: ldarg.0
		IL_0042: ldarg.1
		IL_0043: ldarg.2
		IL_0044: ldarg.3
		IL_0045: ldarg.s comparisonType
		IL_0047: call valuetype System.Globalization.CompareOptions System.String::GetCaseCompareOfComparisonCulture(valuetype System.StringComparison)
		IL_004c: callvirt instance int32 System.Globalization.CompareInfo::IndexOf(string, string, int32, int32, valuetype System.Globalization.CompareOptions)
		IL_0051: ret

		IL_0052: ldarg.0
		IL_0053: ldarg.1
		IL_0054: ldarg.2
		IL_0055: ldarg.3
		IL_0056: ldarg.s comparisonType
		IL_0058: ldc.i4.5
		IL_0059: ceq
		IL_005b: call int32 System.Globalization.Ordinal::IndexOf(string, string, int32, int32, bool)
		IL_0060: ret

		IL_0061: ldarg.1
		IL_0062: brfalse.s IL_0075

		IL_0064: call string System.SR::get_NotSupported_StringComparison()
		IL_0069: ldstr "comparisonType"
		IL_006e: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0073: br.s IL_007f

		IL_0075: ldstr "value"
		IL_007a: newobj instance void System.ArgumentNullException::.ctor(string)

		IL_007f: throw
	} // end of method String::IndexOf

	.method public hidebysig 
		instance int32 LastIndexOf (
			char 'value'
		) cil managed 
	{
		// Method begins at RVA 0x57300
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldflda char System.String::_firstChar
		IL_0006: ldarg.1
		IL_0007: ldarg.0
		IL_0008: call instance int32 System.String::get_Length()
		IL_000d: call int32 System.SpanHelpers::LastIndexOf(char&, char, int32)
		IL_0012: ret
	} // end of method String::LastIndexOf

	.method public hidebysig 
		instance int32 LastIndexOf (
			char 'value',
			int32 startIndex
		) cil managed 
	{
		// Method begins at RVA 0x57314
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.2
		IL_0004: ldc.i4.1
		IL_0005: add
		IL_0006: call instance int32 System.String::LastIndexOf(char, int32, int32)
		IL_000b: ret
	} // end of method String::LastIndexOf

	.method public hidebysig 
		instance int32 LastIndexOf (
			char 'value',
			int32 startIndex,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0x57324
		// Code size 93 (0x5d)
		.maxstack 3
		.locals (
			[0] int32,
			[1] int32
		)

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.String::get_Length()
		IL_0006: brtrue.s IL_000a

		IL_0008: ldc.i4.m1
		IL_0009: ret

		IL_000a: ldarg.2
		IL_000b: ldarg.0
		IL_000c: call instance int32 System.String::get_Length()
		IL_0011: blt.un.s IL_0023

		IL_0013: ldstr "startIndex"
		IL_0018: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_001d: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0022: throw

		IL_0023: ldarg.3
		IL_0024: ldarg.2
		IL_0025: ldc.i4.1
		IL_0026: add
		IL_0027: ble.un.s IL_0039

		IL_0029: ldstr "count"
		IL_002e: call string System.SR::get_ArgumentOutOfRange_Count()
		IL_0033: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0038: throw

		IL_0039: ldarg.2
		IL_003a: ldc.i4.1
		IL_003b: add
		IL_003c: ldarg.3
		IL_003d: sub
		IL_003e: stloc.0
		IL_003f: ldarg.0
		IL_0040: ldflda char System.String::_firstChar
		IL_0045: ldloc.0
		IL_0046: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_004b: ldarg.1
		IL_004c: ldarg.3
		IL_004d: call int32 System.SpanHelpers::LastIndexOf(char&, char, int32)
		IL_0052: stloc.1
		IL_0053: ldloc.1
		IL_0054: ldc.i4.m1
		IL_0055: beq.s IL_005b

		IL_0057: ldloc.1
		IL_0058: ldloc.0
		IL_0059: add
		IL_005a: ret

		IL_005b: ldloc.1
		IL_005c: ret
	} // end of method String::LastIndexOf

	.method public hidebysig 
		instance int32 LastIndexOfAny (
			char[] anyOf
		) cil managed 
	{
		// Method begins at RVA 0x5738d
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.0
		IL_0003: call instance int32 System.String::get_Length()
		IL_0008: ldc.i4.1
		IL_0009: sub
		IL_000a: ldarg.0
		IL_000b: call instance int32 System.String::get_Length()
		IL_0010: call instance int32 System.String::LastIndexOfAny(char[], int32, int32)
		IL_0015: ret
	} // end of method String::LastIndexOfAny

	.method public hidebysig 
		instance int32 LastIndexOfAny (
			char[] anyOf,
			int32 startIndex
		) cil managed 
	{
		// Method begins at RVA 0x573a4
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.2
		IL_0004: ldc.i4.1
		IL_0005: add
		IL_0006: call instance int32 System.String::LastIndexOfAny(char[], int32, int32)
		IL_000b: ret
	} // end of method String::LastIndexOfAny

	.method public hidebysig 
		instance int32 LastIndexOfAny (
			char[] anyOf,
			int32 startIndex,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0x573b4
		// Code size 111 (0x6f)
		.maxstack 4

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "anyOf"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: call instance int32 System.String::get_Length()
		IL_0014: brtrue.s IL_0018

		IL_0016: ldc.i4.m1
		IL_0017: ret

		IL_0018: ldarg.2
		IL_0019: ldarg.0
		IL_001a: call instance int32 System.String::get_Length()
		IL_001f: blt.un.s IL_0031

		IL_0021: ldstr "startIndex"
		IL_0026: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_002b: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0030: throw

		IL_0031: ldarg.3
		IL_0032: ldc.i4.0
		IL_0033: blt.s IL_003b

		IL_0035: ldarg.3
		IL_0036: ldc.i4.1
		IL_0037: sub
		IL_0038: ldarg.2
		IL_0039: ble.s IL_004b

		IL_003b: ldstr "count"
		IL_0040: call string System.SR::get_ArgumentOutOfRange_Count()
		IL_0045: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_004a: throw

		IL_004b: ldarg.1
		IL_004c: ldlen
		IL_004d: conv.i4
		IL_004e: ldc.i4.1
		IL_004f: ble.s IL_005b

		IL_0051: ldarg.0
		IL_0052: ldarg.1
		IL_0053: ldarg.2
		IL_0054: ldarg.3
		IL_0055: call instance int32 System.String::LastIndexOfCharArray(char[], int32, int32)
		IL_005a: ret

		IL_005b: ldarg.1
		IL_005c: ldlen
		IL_005d: conv.i4
		IL_005e: ldc.i4.1
		IL_005f: bne.un.s IL_006d

		IL_0061: ldarg.0
		IL_0062: ldarg.1
		IL_0063: ldc.i4.0
		IL_0064: ldelem.u2
		IL_0065: ldarg.2
		IL_0066: ldarg.3
		IL_0067: call instance int32 System.String::LastIndexOf(char, int32, int32)
		IL_006c: ret

		IL_006d: ldc.i4.m1
		IL_006e: ret
	} // end of method String::LastIndexOfAny

	.method private hidebysig 
		instance int32 LastIndexOfCharArray (
			char[] anyOf,
			int32 startIndex,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0x57430
		// Code size 110 (0x6e)
		.maxstack 3
		.locals (
			[0] valuetype System.String/ProbabilisticMap,
			[1] uint32*,
			[2] char*,
			[3] char& pinned,
			[4] char*,
			[5] int32
		)

		IL_0000: ldloca.s 0
		IL_0002: initobj System.String/ProbabilisticMap
		IL_0008: ldloca.s 0
		IL_000a: conv.u
		IL_000b: stloc.1
		IL_000c: ldloc.1
		IL_000d: ldarg.1
		IL_000e: call valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::op_Implicit(!0[])
		IL_0013: call void System.String::InitializeProbabilisticMap(uint32*, valuetype System.ReadOnlySpan`1<char>)
		IL_0018: ldarg.0
		IL_0019: ldflda char System.String::_firstChar
		IL_001e: stloc.3
		IL_001f: ldloc.3
		IL_0020: conv.u
		IL_0021: stloc.2
		IL_0022: ldloc.2
		IL_0023: ldarg.2
		IL_0024: conv.i
		IL_0025: ldc.i4.2
		IL_0026: mul
		IL_0027: add
		IL_0028: stloc.s 4
		IL_002a: br.s IL_0068
		// loop start (head: IL_0068)
			IL_002c: ldloc.s 4
			IL_002e: ldind.u2
			IL_002f: stloc.s 5
			IL_0031: ldloc.1
			IL_0032: ldloc.s 5
			IL_0034: conv.u1
			IL_0035: call bool System.String::IsCharBitSet(uint32*, uint8)
			IL_003a: brfalse.s IL_005d

			IL_003c: ldloc.1
			IL_003d: ldloc.s 5
			IL_003f: ldc.i4.8
			IL_0040: shr
			IL_0041: conv.u1
			IL_0042: call bool System.String::IsCharBitSet(uint32*, uint8)
			IL_0047: brfalse.s IL_005d

			IL_0049: ldloc.s 5
			IL_004b: conv.u2
			IL_004c: ldarg.1
			IL_004d: call bool System.String::ArrayContains(char, char[])
			IL_0052: brfalse.s IL_005d

			IL_0054: ldloc.s 4
			IL_0056: ldloc.2
			IL_0057: sub
			IL_0058: ldc.i4.2
			IL_0059: div
			IL_005a: conv.i8
			IL_005b: conv.i4
			IL_005c: ret

			IL_005d: ldarg.3
			IL_005e: ldc.i4.1
			IL_005f: sub
			IL_0060: starg.s count
			IL_0062: ldloc.s 4
			IL_0064: ldc.i4.2
			IL_0065: sub
			IL_0066: stloc.s 4

			IL_0068: ldarg.3
			IL_0069: ldc.i4.0
			IL_006a: bgt.s IL_002c
		// end loop

		IL_006c: ldc.i4.m1
		IL_006d: ret
	} // end of method String::LastIndexOfCharArray

	.method public hidebysig 
		instance int32 LastIndexOf (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0x574aa
		// Code size 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.0
		IL_0003: call instance int32 System.String::get_Length()
		IL_0008: ldc.i4.1
		IL_0009: sub
		IL_000a: ldarg.0
		IL_000b: call instance int32 System.String::get_Length()
		IL_0010: ldc.i4.0
		IL_0011: call instance int32 System.String::LastIndexOf(string, int32, int32, valuetype System.StringComparison)
		IL_0016: ret
	} // end of method String::LastIndexOf

	.method public hidebysig 
		instance int32 LastIndexOf (
			string 'value',
			int32 startIndex
		) cil managed 
	{
		// Method begins at RVA 0x574c2
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.2
		IL_0004: ldc.i4.1
		IL_0005: add
		IL_0006: ldc.i4.0
		IL_0007: call instance int32 System.String::LastIndexOf(string, int32, int32, valuetype System.StringComparison)
		IL_000c: ret
	} // end of method String::LastIndexOf

	.method public hidebysig 
		instance int32 LastIndexOf (
			string 'value',
			int32 startIndex,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0x574d0
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: ldc.i4.0
		IL_0005: call instance int32 System.String::LastIndexOf(string, int32, int32, valuetype System.StringComparison)
		IL_000a: ret
	} // end of method String::LastIndexOf

	.method public hidebysig 
		instance int32 LastIndexOf (
			string 'value',
			valuetype System.StringComparison comparisonType
		) cil managed 
	{
		// Method begins at RVA 0x574dc
		// Code size 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.0
		IL_0003: call instance int32 System.String::get_Length()
		IL_0008: ldc.i4.1
		IL_0009: sub
		IL_000a: ldarg.0
		IL_000b: call instance int32 System.String::get_Length()
		IL_0010: ldarg.2
		IL_0011: call instance int32 System.String::LastIndexOf(string, int32, int32, valuetype System.StringComparison)
		IL_0016: ret
	} // end of method String::LastIndexOf

	.method public hidebysig 
		instance int32 LastIndexOf (
			string 'value',
			int32 startIndex,
			valuetype System.StringComparison comparisonType
		) cil managed 
	{
		// Method begins at RVA 0x574f4
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.2
		IL_0004: ldc.i4.1
		IL_0005: add
		IL_0006: ldarg.3
		IL_0007: call instance int32 System.String::LastIndexOf(string, int32, int32, valuetype System.StringComparison)
		IL_000c: ret
	} // end of method String::LastIndexOf

	.method public hidebysig 
		instance int32 LastIndexOf (
			string 'value',
			int32 startIndex,
			int32 count,
			valuetype System.StringComparison comparisonType
		) cil managed 
	{
		// Method begins at RVA 0x57504
		// Code size 135 (0x87)
		.maxstack 6

		IL_0000: ldarg.s comparisonType
		IL_0002: switch (IL_0021, IL_0021, IL_003c, IL_003c, IL_0052, IL_0052)

		IL_001f: br.s IL_0068

		IL_0021: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()
		IL_0026: callvirt instance class System.Globalization.CompareInfo System.Globalization.CultureInfo::get_CompareInfo()
		IL_002b: ldarg.0
		IL_002c: ldarg.1
		IL_002d: ldarg.2
		IL_002e: ldarg.3
		IL_002f: ldarg.s comparisonType
		IL_0031: call valuetype System.Globalization.CompareOptions System.String::GetCaseCompareOfComparisonCulture(valuetype System.StringComparison)
		IL_0036: callvirt instance int32 System.Globalization.CompareInfo::LastIndexOf(string, string, int32, int32, valuetype System.Globalization.CompareOptions)
		IL_003b: ret

		IL_003c: ldsfld class System.Globalization.CompareInfo System.Globalization.CompareInfo::Invariant
		IL_0041: ldarg.0
		IL_0042: ldarg.1
		IL_0043: ldarg.2
		IL_0044: ldarg.3
		IL_0045: ldarg.s comparisonType
		IL_0047: call valuetype System.Globalization.CompareOptions System.String::GetCaseCompareOfComparisonCulture(valuetype System.StringComparison)
		IL_004c: callvirt instance int32 System.Globalization.CompareInfo::LastIndexOf(string, string, int32, int32, valuetype System.Globalization.CompareOptions)
		IL_0051: ret

		IL_0052: ldsfld class System.Globalization.CompareInfo System.Globalization.CompareInfo::Invariant
		IL_0057: ldarg.0
		IL_0058: ldarg.1
		IL_0059: ldarg.2
		IL_005a: ldarg.3
		IL_005b: ldarg.s comparisonType
		IL_005d: call valuetype System.Globalization.CompareOptions System.String::GetCompareOptionsFromOrdinalStringComparison(valuetype System.StringComparison)
		IL_0062: callvirt instance int32 System.Globalization.CompareInfo::LastIndexOf(string, string, int32, int32, valuetype System.Globalization.CompareOptions)
		IL_0067: ret

		IL_0068: ldarg.1
		IL_0069: brfalse.s IL_007c

		IL_006b: call string System.SR::get_NotSupported_StringComparison()
		IL_0070: ldstr "comparisonType"
		IL_0075: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_007a: br.s IL_0086

		IL_007c: ldstr "value"
		IL_0081: newobj instance void System.ArgumentNullException::.ctor(string)

		IL_0086: throw
	} // end of method String::LastIndexOf

	.method assembly hidebysig static 
		int32 '<GetNonRandomizedHashCodeOrdinalIgnoreCase>g__GetNonRandomizedHashCodeOrdinalIgnoreCaseSlow|52_0' (
			string str
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x57598
		// Code size 239 (0xef)
		.maxstack 3
		.locals (
			[0] int32,
			[1] char[],
			[2] valuetype System.Span`1<char>,
			[3] int32,
			[4] uint32,
			[5] uint32,
			[6] valuetype System.Span`1<char>,
			[7] valuetype System.Span`1<char>,
			[8] char*,
			[9] char& pinned,
			[10] uint32*
		)

		IL_0000: ldarg.0
		IL_0001: callvirt instance int32 System.String::get_Length()
		IL_0006: stloc.0
		IL_0007: ldnull
		IL_0008: stloc.1
		IL_0009: ldloc.0
		IL_000a: ldc.i4.s 64
		IL_000c: bge.un.s IL_0025

		IL_000e: ldc.i4 128
		IL_0013: conv.u
		IL_0014: localloc
		IL_0016: ldc.i4.s 64
		IL_0018: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_001d: stloc.s 7
		IL_001f: ldloc.s 7
		IL_0021: stloc.s 6
		IL_0023: br.s IL_003b

		IL_0025: call class System.Buffers.ArrayPool`1<!0> class System.Buffers.ArrayPool`1<char>::get_Shared()
		IL_002a: ldloc.0
		IL_002b: ldc.i4.1
		IL_002c: add
		IL_002d: callvirt instance !0[] class System.Buffers.ArrayPool`1<char>::Rent(int32)
		IL_0032: dup
		IL_0033: stloc.1
		IL_0034: call valuetype System.Span`1<!0> valuetype System.Span`1<char>::op_Implicit(!0[])
		IL_0039: stloc.s 6

		IL_003b: ldloc.s 6
		IL_003d: stloc.2
		IL_003e: ldarg.0
		IL_003f: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0044: ldloc.2
		IL_0045: call int32 System.Globalization.Ordinal::ToUpperOrdinal(valuetype System.ReadOnlySpan`1<char>, valuetype System.Span`1<char>)
		IL_004a: stloc.3
		IL_004b: ldloca.s 2
		IL_004d: ldloc.0
		IL_004e: call instance !0& valuetype System.Span`1<char>::get_Item(int32)
		IL_0053: ldc.i4.0
		IL_0054: stind.i2
		IL_0055: ldc.i4 352654597
		IL_005a: stloc.s 4
		IL_005c: ldloc.s 4
		IL_005e: stloc.s 5
		IL_0060: ldloca.s 2
		IL_0062: call instance !0& valuetype System.Span`1<char>::GetPinnableReference()
		IL_0067: stloc.s 9
		IL_0069: ldloc.s 9
		IL_006b: conv.u
		IL_006c: stloc.s 8
		IL_006e: ldloc.s 8
		IL_0070: stloc.s 10
		IL_0072: br.s IL_00b1
		// loop start (head: IL_00b1)
			IL_0074: ldloc.0
			IL_0075: ldc.i4.4
			IL_0076: sub
			IL_0077: stloc.0
			IL_0078: ldloc.s 4
			IL_007a: ldc.i4.5
			IL_007b: call uint32 System.Numerics.BitOperations::RotateLeft(uint32, int32)
			IL_0080: ldloc.s 4
			IL_0082: add
			IL_0083: ldloc.s 10
			IL_0085: ldind.u4
			IL_0086: ldc.i4 2097184
			IL_008b: or
			IL_008c: xor
			IL_008d: stloc.s 4
			IL_008f: ldloc.s 5
			IL_0091: ldc.i4.5
			IL_0092: call uint32 System.Numerics.BitOperations::RotateLeft(uint32, int32)
			IL_0097: ldloc.s 5
			IL_0099: add
			IL_009a: ldloc.s 10
			IL_009c: ldc.i4.4
			IL_009d: add
			IL_009e: ldind.u4
			IL_009f: ldc.i4 2097184
			IL_00a4: or
			IL_00a5: xor
			IL_00a6: stloc.s 5
			IL_00a8: ldloc.s 10
			IL_00aa: ldc.i4.2
			IL_00ab: conv.i
			IL_00ac: ldc.i4.4
			IL_00ad: mul
			IL_00ae: add
			IL_00af: stloc.s 10

			IL_00b1: ldloc.0
			IL_00b2: ldc.i4.2
			IL_00b3: bgt.s IL_0074
		// end loop

		IL_00b5: ldloc.0
		IL_00b6: ldc.i4.0
		IL_00b7: ble.s IL_00d0

		IL_00b9: ldloc.s 5
		IL_00bb: ldc.i4.5
		IL_00bc: call uint32 System.Numerics.BitOperations::RotateLeft(uint32, int32)
		IL_00c1: ldloc.s 5
		IL_00c3: add
		IL_00c4: ldloc.s 10
		IL_00c6: ldind.u4
		IL_00c7: ldc.i4 2097184
		IL_00cc: or
		IL_00cd: xor
		IL_00ce: stloc.s 5

		IL_00d0: ldc.i4.0
		IL_00d1: conv.u
		IL_00d2: stloc.s 9
		IL_00d4: ldloc.1
		IL_00d5: brfalse.s IL_00e3

		IL_00d7: call class System.Buffers.ArrayPool`1<!0> class System.Buffers.ArrayPool`1<char>::get_Shared()
		IL_00dc: ldloc.1
		IL_00dd: ldc.i4.0
		IL_00de: callvirt instance void class System.Buffers.ArrayPool`1<char>::Return(!0[], bool)

		IL_00e3: ldloc.s 4
		IL_00e5: ldloc.s 5
		IL_00e7: ldc.i4 1566083941
		IL_00ec: mul
		IL_00ed: add
		IL_00ee: ret
	} // end of method String::'<GetNonRandomizedHashCodeOrdinalIgnoreCase>g__GetNonRandomizedHashCodeOrdinalIgnoreCaseSlow|52_0'

	// Properties
	.property instance char Chars(
		int32 index
	)
	{
		.get instance char System.String::get_Chars(int32)
	}
	.property instance int32 Length()
	{
		.get instance int32 System.String::get_Length()
	}

} // end of class System.String