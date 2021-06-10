.class public sequential ansi sealed serializable beforefieldinit System.Single
	extends System.ValueType
	implements System.IComparable,
	           System.IConvertible,
	           System.IFormattable,
	           class System.IComparable`1<float32>,
	           class System.IEquatable`1<float32>,
	           System.ISpanFormattable
{
	.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
		01 00 00 00
	)
	.custom instance void System.Runtime.CompilerServices.TypeForwardedFromAttribute::.ctor(string) = (
		01 00 4b 6d 73 63 6f 72 6c 69 62 2c 20 56 65 72
		73 69 6f 6e 3d 34 2e 30 2e 30 2e 30 2c 20 43 75
		6c 74 75 72 65 3d 6e 65 75 74 72 61 6c 2c 20 50
		75 62 6c 69 63 4b 65 79 54 6f 6b 65 6e 3d 62 37
		37 61 35 63 35 36 31 39 33 34 65 30 38 39 00 00
	)
	// Fields
	.field private initonly float32 m_value
	.field public static literal float32 MinValue = float32(-3.4028235E+38)
	.field public static literal float32 Epsilon = float32(1E-45)
	.field public static literal float32 MaxValue = float32(3.4028235E+38)
	.field public static literal float32 PositiveInfinity = float32(0x7f800000)
	.field public static literal float32 NegativeInfinity = float32(0xff800000)
	.field public static literal float32 NaN = float32(0xffc00000)

	// Methods
	.method public hidebysig static 
		bool IsFinite (
			float32 f
		) cil managed aggressiveinlining 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x7dbe4
		// Code size 22 (0x16)
		.maxstack 2
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: call int32 System.BitConverter::SingleToInt32Bits(float32)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldc.i4 2147483647
		IL_000d: and
		IL_000e: ldc.i4 2139095040
		IL_0013: clt
		IL_0015: ret
	} // end of method Single::IsFinite

	.method public hidebysig static 
		bool IsInfinity (
			float32 f
		) cil managed aggressiveinlining 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x7dc08
		// Code size 22 (0x16)
		.maxstack 2
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: call int32 System.BitConverter::SingleToInt32Bits(float32)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldc.i4 2147483647
		IL_000d: and
		IL_000e: ldc.i4 2139095040
		IL_0013: ceq
		IL_0015: ret
	} // end of method Single::IsInfinity

	.method public hidebysig static 
		bool IsNaN (
			float32 f
		) cil managed aggressiveinlining 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x64be2
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.0
		IL_0002: ceq
		IL_0004: ldc.i4.0
		IL_0005: ceq
		IL_0007: ret
	} // end of method Single::IsNaN

	.method public hidebysig static 
		bool IsNegative (
			float32 f
		) cil managed aggressiveinlining 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x7dc2a
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call int32 System.BitConverter::SingleToInt32Bits(float32)
		IL_0006: ldc.i4.0
		IL_0007: clt
		IL_0009: ret
	} // end of method Single::IsNegative

	.method public hidebysig static 
		bool IsNegativeInfinity (
			float32 f
		) cil managed aggressiveinlining 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x7dc35
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.r4 (00 00 80 FF)
		IL_0006: ceq
		IL_0008: ret
	} // end of method Single::IsNegativeInfinity

	.method public hidebysig static 
		bool IsNormal (
			float32 f
		) cil managed 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x7dc40
		// Code size 39 (0x27)
		.maxstack 2
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: call int32 System.BitConverter::SingleToInt32Bits(float32)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldc.i4 2147483647
		IL_000d: and
		IL_000e: stloc.0
		IL_000f: ldloc.0
		IL_0010: ldc.i4 2139095040
		IL_0015: bge.s IL_0025

		IL_0017: ldloc.0
		IL_0018: brfalse.s IL_0025

		IL_001a: ldloc.0
		IL_001b: ldc.i4 2139095040
		IL_0020: and
		IL_0021: ldc.i4.0
		IL_0022: cgt.un
		IL_0024: ret

		IL_0025: ldc.i4.0
		IL_0026: ret
	} // end of method Single::IsNormal

	.method public hidebysig static 
		bool IsPositiveInfinity (
			float32 f
		) cil managed aggressiveinlining 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x7dc73
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.r4 (00 00 80 7F)
		IL_0006: ceq
		IL_0008: ret
	} // end of method Single::IsPositiveInfinity

	.method public hidebysig static 
		bool IsSubnormal (
			float32 f
		) cil managed 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x7dc80
		// Code size 39 (0x27)
		.maxstack 2
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: call int32 System.BitConverter::SingleToInt32Bits(float32)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldc.i4 2147483647
		IL_000d: and
		IL_000e: stloc.0
		IL_000f: ldloc.0
		IL_0010: ldc.i4 2139095040
		IL_0015: bge.s IL_0025

		IL_0017: ldloc.0
		IL_0018: brfalse.s IL_0025

		IL_001a: ldloc.0
		IL_001b: ldc.i4 2139095040
		IL_0020: and
		IL_0021: ldc.i4.0
		IL_0022: ceq
		IL_0024: ret

		IL_0025: ldc.i4.0
		IL_0026: ret
	} // end of method Single::IsSubnormal

	.method assembly hidebysig static 
		int32 ExtractExponentFromBits (
			uint32 bits
		) cil managed 
	{
		// Method begins at RVA 0x7dcb3
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 23
		IL_0003: shr.un
		IL_0004: ldc.i4 255
		IL_0009: and
		IL_000a: ret
	} // end of method Single::ExtractExponentFromBits

	.method assembly hidebysig static 
		uint32 ExtractSignificandFromBits (
			uint32 bits
		) cil managed 
	{
		// Method begins at RVA 0x7dcbf
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4 8388607
		IL_0006: and
		IL_0007: ret
	} // end of method Single::ExtractSignificandFromBits

	.method public final hidebysig newslot virtual 
		instance int32 CompareTo (
			object 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x7dcc8
		// Code size 75 (0x4b)
		.maxstack 2
		.locals (
			[0] float32
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.1
		IL_0004: ret

		IL_0005: ldarg.1
		IL_0006: isinst System.Single
		IL_000b: brfalse.s IL_0040

		IL_000d: ldarg.1
		IL_000e: unbox.any System.Single
		IL_0013: stloc.0
		IL_0014: ldarg.0
		IL_0015: ldind.r4
		IL_0016: ldloc.0
		IL_0017: bge.un.s IL_001b

		IL_0019: ldc.i4.m1
		IL_001a: ret

		IL_001b: ldarg.0
		IL_001c: ldind.r4
		IL_001d: ldloc.0
		IL_001e: ble.un.s IL_0022

		IL_0020: ldc.i4.1
		IL_0021: ret

		IL_0022: ldarg.0
		IL_0023: ldind.r4
		IL_0024: ldloc.0
		IL_0025: bne.un.s IL_0029

		IL_0027: ldc.i4.0
		IL_0028: ret

		IL_0029: ldarg.0
		IL_002a: ldind.r4
		IL_002b: call bool System.Single::IsNaN(float32)
		IL_0030: brfalse.s IL_003e

		IL_0032: ldloc.0
		IL_0033: call bool System.Single::IsNaN(float32)
		IL_0038: brtrue.s IL_003c

		IL_003a: ldc.i4.m1
		IL_003b: ret

		IL_003c: ldc.i4.0
		IL_003d: ret

		IL_003e: ldc.i4.1
		IL_003f: ret

		IL_0040: call string System.SR::get_Arg_MustBeSingle()
		IL_0045: newobj instance void System.ArgumentException::.ctor(string)
		IL_004a: throw
	} // end of method Single::CompareTo

	.method public final hidebysig newslot virtual 
		instance int32 CompareTo (
			float32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x7dd1f
		// Code size 44 (0x2c)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.r4
		IL_0002: ldarg.1
		IL_0003: bge.un.s IL_0007

		IL_0005: ldc.i4.m1
		IL_0006: ret

		IL_0007: ldarg.0
		IL_0008: ldind.r4
		IL_0009: ldarg.1
		IL_000a: ble.un.s IL_000e

		IL_000c: ldc.i4.1
		IL_000d: ret

		IL_000e: ldarg.0
		IL_000f: ldind.r4
		IL_0010: ldarg.1
		IL_0011: bne.un.s IL_0015

		IL_0013: ldc.i4.0
		IL_0014: ret

		IL_0015: ldarg.0
		IL_0016: ldind.r4
		IL_0017: call bool System.Single::IsNaN(float32)
		IL_001c: brfalse.s IL_002a

		IL_001e: ldarg.1
		IL_001f: call bool System.Single::IsNaN(float32)
		IL_0024: brtrue.s IL_0028

		IL_0026: ldc.i4.m1
		IL_0027: ret

		IL_0028: ldc.i4.0
		IL_0029: ret

		IL_002a: ldc.i4.1
		IL_002b: ret
	} // end of method Single::CompareTo

	.method public hidebysig specialname static 
		bool op_Equality (
			float32 left,
			float32 right
		) cil managed 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x4d592
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ceq
		IL_0004: ret
	} // end of method Single::op_Equality

	.method public hidebysig specialname static 
		bool op_Inequality (
			float32 left,
			float32 right
		) cil managed 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x64d6e
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ceq
		IL_0004: ldc.i4.0
		IL_0005: ceq
		IL_0007: ret
	} // end of method Single::op_Inequality

	.method public hidebysig specialname static 
		bool op_LessThan (
			float32 left,
			float32 right
		) cil managed 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x64d77
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: clt
		IL_0004: ret
	} // end of method Single::op_LessThan

	.method public hidebysig specialname static 
		bool op_GreaterThan (
			float32 left,
			float32 right
		) cil managed 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x64d7d
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: cgt
		IL_0004: ret
	} // end of method Single::op_GreaterThan

	.method public hidebysig specialname static 
		bool op_LessThanOrEqual (
			float32 left,
			float32 right
		) cil managed 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x64d83
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: cgt.un
		IL_0004: ldc.i4.0
		IL_0005: ceq
		IL_0007: ret
	} // end of method Single::op_LessThanOrEqual

	.method public hidebysig specialname static 
		bool op_GreaterThanOrEqual (
			float32 left,
			float32 right
		) cil managed 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x64d8c
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: clt.un
		IL_0004: ldc.i4.0
		IL_0005: ceq
		IL_0007: ret
	} // end of method Single::op_GreaterThanOrEqual

	.method public hidebysig virtual 
		instance bool Equals (
			object obj
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x7dd4c
		// Code size 42 (0x2a)
		.maxstack 2
		.locals (
			[0] float32
		)

		IL_0000: ldarg.1
		IL_0001: isinst System.Single
		IL_0006: brtrue.s IL_000a

		IL_0008: ldc.i4.0
		IL_0009: ret

		IL_000a: ldarg.1
		IL_000b: unbox.any System.Single
		IL_0010: stloc.0
		IL_0011: ldloc.0
		IL_0012: ldarg.0
		IL_0013: ldind.r4
		IL_0014: bne.un.s IL_0018

		IL_0016: ldc.i4.1
		IL_0017: ret

		IL_0018: ldloc.0
		IL_0019: call bool System.Single::IsNaN(float32)
		IL_001e: brfalse.s IL_0028

		IL_0020: ldarg.0
		IL_0021: ldind.r4
		IL_0022: call bool System.Single::IsNaN(float32)
		IL_0027: ret

		IL_0028: ldc.i4.0
		IL_0029: ret
	} // end of method Single::Equals

	.method public final hidebysig newslot virtual 
		instance bool Equals (
			float32 obj
		) cil managed 
	{
		// Method begins at RVA 0x7dd82
		// Code size 25 (0x19)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: ldind.r4
		IL_0003: bne.un.s IL_0007

		IL_0005: ldc.i4.1
		IL_0006: ret

		IL_0007: ldarg.1
		IL_0008: call bool System.Single::IsNaN(float32)
		IL_000d: brfalse.s IL_0017

		IL_000f: ldarg.0
		IL_0010: ldind.r4
		IL_0011: call bool System.Single::IsNaN(float32)
		IL_0016: ret

		IL_0017: ldc.i4.0
		IL_0018: ret
	} // end of method Single::Equals

	.method public hidebysig virtual 
		instance int32 GetHashCode () cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x7dd9c
		// Code size 44 (0x2c)
		.maxstack 2
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: ldflda float32 System.Single::m_value
		IL_0006: call !!0& Internal.Runtime.CompilerServices.Unsafe::AsRef<float32>(!!0&)
		IL_000b: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<float32, int32>(!!0&)
		IL_0010: ldind.i4
		IL_0011: stloc.0
		IL_0012: ldloc.0
		IL_0013: ldc.i4.1
		IL_0014: sub
		IL_0015: ldc.i4 2147483647
		IL_001a: and
		IL_001b: ldc.i4 2139095040
		IL_0020: blt.s IL_002a

		IL_0022: ldloc.0
		IL_0023: ldc.i4 2139095040
		IL_0028: and
		IL_0029: stloc.0

		IL_002a: ldloc.0
		IL_002b: ret
	} // end of method Single::GetHashCode

	.method public hidebysig virtual 
		instance string ToString () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x7ddd4
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.r4
		IL_0002: ldnull
		IL_0003: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::get_CurrentInfo()
		IL_0008: call string System.Number::FormatSingle(float32, string, class System.Globalization.NumberFormatInfo)
		IL_000d: ret
	} // end of method Single::ToString

	.method public final hidebysig newslot virtual 
		instance string ToString (
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x7dde3
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.r4
		IL_0002: ldnull
		IL_0003: ldarg.1
		IL_0004: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0009: call string System.Number::FormatSingle(float32, string, class System.Globalization.NumberFormatInfo)
		IL_000e: ret
	} // end of method Single::ToString

	.method public hidebysig 
		instance string ToString (
			string format
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x7ddf3
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.r4
		IL_0002: ldarg.1
		IL_0003: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::get_CurrentInfo()
		IL_0008: call string System.Number::FormatSingle(float32, string, class System.Globalization.NumberFormatInfo)
		IL_000d: ret
	} // end of method Single::ToString

	.method public final hidebysig newslot virtual 
		instance string ToString (
			string format,
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x7de02
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.r4
		IL_0002: ldarg.1
		IL_0003: ldarg.2
		IL_0004: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0009: call string System.Number::FormatSingle(float32, string, class System.Globalization.NumberFormatInfo)
		IL_000e: ret
	} // end of method Single::ToString

	.method public final hidebysig newslot virtual 
		instance bool TryFormat (
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten,
			[opt] valuetype System.ReadOnlySpan`1<char> format,
			[opt] class System.IFormatProvider provider
		) cil managed 
	{
		.param [3] = nullref
		.param [4] = nullref
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x7de12
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.r4
		IL_0002: ldarg.3
		IL_0003: ldarg.s provider
		IL_0005: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_000a: ldarg.1
		IL_000b: ldarg.2
		IL_000c: call bool System.Number::TryFormatSingle(float32, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo, valuetype System.Span`1<char>, int32&)
		IL_0011: ret
	} // end of method Single::TryFormat

	.method public hidebysig static 
		float32 Parse (
			string s
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x7de25
		// Code size 32 (0x20)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 17
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0010: ldc.i4 231
		IL_0015: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::get_CurrentInfo()
		IL_001a: call float32 System.Number::ParseSingle(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo)
		IL_001f: ret
	} // end of method Single::Parse

	.method public hidebysig static 
		float32 Parse (
			string s,
			valuetype System.Globalization.NumberStyles style
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x7de46
		// Code size 34 (0x22)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call void System.Globalization.NumberFormatInfo::ValidateParseStyleFloatingPoint(valuetype System.Globalization.NumberStyles)
		IL_0006: ldarg.0
		IL_0007: brtrue.s IL_0010

		IL_0009: ldc.i4.s 17
		IL_000b: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0010: ldarg.0
		IL_0011: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0016: ldarg.1
		IL_0017: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::get_CurrentInfo()
		IL_001c: call float32 System.Number::ParseSingle(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo)
		IL_0021: ret
	} // end of method Single::Parse

	.method public hidebysig static 
		float32 Parse (
			string s,
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
		// Method begins at RVA 0x7de69
		// Code size 33 (0x21)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 17
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0010: ldc.i4 231
		IL_0015: ldarg.1
		IL_0016: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_001b: call float32 System.Number::ParseSingle(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo)
		IL_0020: ret
	} // end of method Single::Parse

	.method public hidebysig static 
		float32 Parse (
			string s,
			valuetype System.Globalization.NumberStyles style,
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x7de8b
		// Code size 35 (0x23)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call void System.Globalization.NumberFormatInfo::ValidateParseStyleFloatingPoint(valuetype System.Globalization.NumberStyles)
		IL_0006: ldarg.0
		IL_0007: brtrue.s IL_0010

		IL_0009: ldc.i4.s 17
		IL_000b: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0010: ldarg.0
		IL_0011: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0016: ldarg.1
		IL_0017: ldarg.2
		IL_0018: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_001d: call float32 System.Number::ParseSingle(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo)
		IL_0022: ret
	} // end of method Single::Parse

	.method public hidebysig static 
		float32 Parse (
			valuetype System.ReadOnlySpan`1<char> s,
			[opt] valuetype System.Globalization.NumberStyles style,
			[opt] class System.IFormatProvider provider
		) cil managed 
	{
		.param [2] = int32(231)
		.param [3] = nullref
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x7deaf
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call void System.Globalization.NumberFormatInfo::ValidateParseStyleFloatingPoint(valuetype System.Globalization.NumberStyles)
		IL_0006: ldarg.0
		IL_0007: ldarg.1
		IL_0008: ldarg.2
		IL_0009: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_000e: call float32 System.Number::ParseSingle(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo)
		IL_0013: ret
	} // end of method Single::Parse

	.method public hidebysig static 
		bool TryParse (
			string s,
			[out] float32& result
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullWhenAttribute::.ctor(bool) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x7dec4
		// Code size 35 (0x23)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000c

		IL_0003: ldarg.1
		IL_0004: ldc.r4 0.0
		IL_0009: stind.r4
		IL_000a: ldc.i4.0
		IL_000b: ret

		IL_000c: ldarg.0
		IL_000d: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0012: ldc.i4 231
		IL_0017: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::get_CurrentInfo()
		IL_001c: ldarg.1
		IL_001d: call bool System.Single::TryParse(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, float32&)
		IL_0022: ret
	} // end of method Single::TryParse

	.method public hidebysig static 
		bool TryParse (
			valuetype System.ReadOnlySpan`1<char> s,
			[out] float32& result
		) cil managed 
	{
		// Method begins at RVA 0x7dee8
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4 231
		IL_0006: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::get_CurrentInfo()
		IL_000b: ldarg.1
		IL_000c: call bool System.Single::TryParse(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, float32&)
		IL_0011: ret
	} // end of method Single::TryParse

	.method public hidebysig static 
		bool TryParse (
			string s,
			valuetype System.Globalization.NumberStyles style,
			class System.IFormatProvider provider,
			[out] float32& result
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullWhenAttribute::.ctor(bool) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x7defb
		// Code size 38 (0x26)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call void System.Globalization.NumberFormatInfo::ValidateParseStyleFloatingPoint(valuetype System.Globalization.NumberStyles)
		IL_0006: ldarg.0
		IL_0007: brtrue.s IL_0012

		IL_0009: ldarg.3
		IL_000a: ldc.r4 0.0
		IL_000f: stind.r4
		IL_0010: ldc.i4.0
		IL_0011: ret

		IL_0012: ldarg.0
		IL_0013: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0018: ldarg.1
		IL_0019: ldarg.2
		IL_001a: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_001f: ldarg.3
		IL_0020: call bool System.Single::TryParse(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, float32&)
		IL_0025: ret
	} // end of method Single::TryParse

	.method public hidebysig static 
		bool TryParse (
			valuetype System.ReadOnlySpan`1<char> s,
			valuetype System.Globalization.NumberStyles style,
			class System.IFormatProvider provider,
			[out] float32& result
		) cil managed 
	{
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x7df22
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call void System.Globalization.NumberFormatInfo::ValidateParseStyleFloatingPoint(valuetype System.Globalization.NumberStyles)
		IL_0006: ldarg.0
		IL_0007: ldarg.1
		IL_0008: ldarg.2
		IL_0009: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_000e: ldarg.3
		IL_000f: call bool System.Single::TryParse(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, float32&)
		IL_0014: ret
	} // end of method Single::TryParse

	.method private hidebysig static 
		bool TryParse (
			valuetype System.ReadOnlySpan`1<char> s,
			valuetype System.Globalization.NumberStyles style,
			class System.Globalization.NumberFormatInfo info,
			[out] float32& result
		) cil managed 
	{
		// Method begins at RVA 0x7df38
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: call bool System.Number::TryParseSingle(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, float32&)
		IL_0009: ret
	} // end of method Single::TryParse

	.method public final hidebysig newslot virtual 
		instance valuetype System.TypeCode GetTypeCode () cil managed 
	{
		// Method begins at RVA 0x7df43
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldc.i4.s 13
		IL_0002: ret
	} // end of method Single::GetTypeCode

	.method private final hidebysig newslot virtual 
		instance bool System.IConvertible.ToBoolean (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance bool System.IConvertible::ToBoolean(class System.IFormatProvider)
		// Method begins at RVA 0x7df47
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.r4
		IL_0002: call bool System.Convert::ToBoolean(float32)
		IL_0007: ret
	} // end of method Single::System.IConvertible.ToBoolean

	.method private final hidebysig newslot virtual 
		instance char System.IConvertible.ToChar (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance char System.IConvertible::ToChar(class System.IFormatProvider)
		// Method begins at RVA 0x7df50
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: call string System.SR::get_InvalidCast_FromTo()
		IL_0005: ldstr "Single"
		IL_000a: ldstr "Char"
		IL_000f: call string System.SR::Format(string, object, object)
		IL_0014: newobj instance void System.InvalidCastException::.ctor(string)
		IL_0019: throw
	} // end of method Single::System.IConvertible.ToChar

	.method private final hidebysig newslot virtual 
		instance int8 System.IConvertible.ToSByte (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance int8 System.IConvertible::ToSByte(class System.IFormatProvider)
		// Method begins at RVA 0x7df6b
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.r4
		IL_0002: call int8 System.Convert::ToSByte(float32)
		IL_0007: ret
	} // end of method Single::System.IConvertible.ToSByte

	.method private final hidebysig newslot virtual 
		instance uint8 System.IConvertible.ToByte (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance uint8 System.IConvertible::ToByte(class System.IFormatProvider)
		// Method begins at RVA 0x7df74
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.r4
		IL_0002: call uint8 System.Convert::ToByte(float32)
		IL_0007: ret
	} // end of method Single::System.IConvertible.ToByte

	.method private final hidebysig newslot virtual 
		instance int16 System.IConvertible.ToInt16 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance int16 System.IConvertible::ToInt16(class System.IFormatProvider)
		// Method begins at RVA 0x7df7d
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.r4
		IL_0002: call int16 System.Convert::ToInt16(float32)
		IL_0007: ret
	} // end of method Single::System.IConvertible.ToInt16

	.method private final hidebysig newslot virtual 
		instance uint16 System.IConvertible.ToUInt16 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance uint16 System.IConvertible::ToUInt16(class System.IFormatProvider)
		// Method begins at RVA 0x7df86
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.r4
		IL_0002: call uint16 System.Convert::ToUInt16(float32)
		IL_0007: ret
	} // end of method Single::System.IConvertible.ToUInt16

	.method private final hidebysig newslot virtual 
		instance int32 System.IConvertible.ToInt32 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance int32 System.IConvertible::ToInt32(class System.IFormatProvider)
		// Method begins at RVA 0x7df8f
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.r4
		IL_0002: call int32 System.Convert::ToInt32(float32)
		IL_0007: ret
	} // end of method Single::System.IConvertible.ToInt32

	.method private final hidebysig newslot virtual 
		instance uint32 System.IConvertible.ToUInt32 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance uint32 System.IConvertible::ToUInt32(class System.IFormatProvider)
		// Method begins at RVA 0x7df98
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.r4
		IL_0002: call uint32 System.Convert::ToUInt32(float32)
		IL_0007: ret
	} // end of method Single::System.IConvertible.ToUInt32

	.method private final hidebysig newslot virtual 
		instance int64 System.IConvertible.ToInt64 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance int64 System.IConvertible::ToInt64(class System.IFormatProvider)
		// Method begins at RVA 0x7dfa1
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.r4
		IL_0002: call int64 System.Convert::ToInt64(float32)
		IL_0007: ret
	} // end of method Single::System.IConvertible.ToInt64

	.method private final hidebysig newslot virtual 
		instance uint64 System.IConvertible.ToUInt64 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance uint64 System.IConvertible::ToUInt64(class System.IFormatProvider)
		// Method begins at RVA 0x7dfaa
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.r4
		IL_0002: call uint64 System.Convert::ToUInt64(float32)
		IL_0007: ret
	} // end of method Single::System.IConvertible.ToUInt64

	.method private final hidebysig newslot virtual 
		instance float32 System.IConvertible.ToSingle (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance float32 System.IConvertible::ToSingle(class System.IFormatProvider)
		// Method begins at RVA 0x7dfb3
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.r4
		IL_0002: ret
	} // end of method Single::System.IConvertible.ToSingle

	.method private final hidebysig newslot virtual 
		instance float64 System.IConvertible.ToDouble (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance float64 System.IConvertible::ToDouble(class System.IFormatProvider)
		// Method begins at RVA 0x7dfb7
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.r4
		IL_0002: call float64 System.Convert::ToDouble(float32)
		IL_0007: ret
	} // end of method Single::System.IConvertible.ToDouble

	.method private final hidebysig newslot virtual 
		instance valuetype System.Decimal System.IConvertible.ToDecimal (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance valuetype System.Decimal System.IConvertible::ToDecimal(class System.IFormatProvider)
		// Method begins at RVA 0x7dfc0
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.r4
		IL_0002: call valuetype System.Decimal System.Convert::ToDecimal(float32)
		IL_0007: ret
	} // end of method Single::System.IConvertible.ToDecimal

	.method private final hidebysig newslot virtual 
		instance valuetype System.DateTime System.IConvertible.ToDateTime (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		// Method begins at RVA 0x7dfc9
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: call string System.SR::get_InvalidCast_FromTo()
		IL_0005: ldstr "Single"
		IL_000a: ldstr "DateTime"
		IL_000f: call string System.SR::Format(string, object, object)
		IL_0014: newobj instance void System.InvalidCastException::.ctor(string)
		IL_0019: throw
	} // end of method Single::System.IConvertible.ToDateTime

	.method private final hidebysig newslot virtual 
		instance object System.IConvertible.ToType (
			class System.Type 'type',
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance object System.IConvertible::ToType(class System.Type, class System.IFormatProvider)
		// Method begins at RVA 0x7dfe4
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.r4
		IL_0002: box System.Single
		IL_0007: ldarg.1
		IL_0008: ldarg.2
		IL_0009: call object System.Convert::DefaultToType(class System.IConvertible, class System.Type, class System.IFormatProvider)
		IL_000e: ret
	} // end of method Single::System.IConvertible.ToType

} // end of class System.Single