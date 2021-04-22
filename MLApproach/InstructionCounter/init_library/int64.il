.class public sequential ansi sealed serializable beforefieldinit System.Int64
	extends System.ValueType
	implements System.IComparable,
	           System.IConvertible,
	           System.IFormattable,
	           class System.IComparable`1<int64>,
	           class System.IEquatable`1<int64>,
	           System.ISpanFormattable
{
	.custom instance void System.Runtime.CompilerServices.TypeForwardedFromAttribute::.ctor(string) = (
		01 00 4b 6d 73 63 6f 72 6c 69 62 2c 20 56 65 72
		73 69 6f 6e 3d 34 2e 30 2e 30 2e 30 2c 20 43 75
		6c 74 75 72 65 3d 6e 65 75 74 72 61 6c 2c 20 50
		75 62 6c 69 63 4b 65 79 54 6f 6b 65 6e 3d 62 37
		37 61 35 63 35 36 31 39 33 34 65 30 38 39 00 00
	)
	.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
		01 00 00 00
	)
	// Fields
	.field private initonly int64 m_value
	.field public static literal int64 MaxValue = int64(9223372036854775807)
	.field public static literal int64 MinValue = int64(-9223372036854775808)

	// Methods
	.method public final hidebysig newslot virtual 
		instance int32 CompareTo (
			object 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x6fba0
		// Code size 47 (0x2f)
		.maxstack 2
		.locals (
			[0] int64
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.1
		IL_0004: ret

		IL_0005: ldarg.1
		IL_0006: isinst System.Int64
		IL_000b: brfalse.s IL_0024

		IL_000d: ldarg.1
		IL_000e: unbox.any System.Int64
		IL_0013: stloc.0
		IL_0014: ldarg.0
		IL_0015: ldind.i8
		IL_0016: ldloc.0
		IL_0017: bge.s IL_001b

		IL_0019: ldc.i4.m1
		IL_001a: ret

		IL_001b: ldarg.0
		IL_001c: ldind.i8
		IL_001d: ldloc.0
		IL_001e: ble.s IL_0022

		IL_0020: ldc.i4.1
		IL_0021: ret

		IL_0022: ldc.i4.0
		IL_0023: ret

		IL_0024: call string System.SR::get_Arg_MustBeInt64()
		IL_0029: newobj instance void System.ArgumentException::.ctor(string)
		IL_002e: throw
	} // end of method Int64::CompareTo

	.method public final hidebysig newslot virtual 
		instance int32 CompareTo (
			int64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x6fbdb
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: ldarg.1
		IL_0003: bge.s IL_0007

		IL_0005: ldc.i4.m1
		IL_0006: ret

		IL_0007: ldarg.0
		IL_0008: ldind.i8
		IL_0009: ldarg.1
		IL_000a: ble.s IL_000e

		IL_000c: ldc.i4.1
		IL_000d: ret

		IL_000e: ldc.i4.0
		IL_000f: ret
	} // end of method Int64::CompareTo

	.method public hidebysig virtual 
		instance bool Equals (
			object obj
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x6fbec
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: isinst System.Int64
		IL_0006: brtrue.s IL_000a

		IL_0008: ldc.i4.0
		IL_0009: ret

		IL_000a: ldarg.0
		IL_000b: ldind.i8
		IL_000c: ldarg.1
		IL_000d: unbox.any System.Int64
		IL_0012: ceq
		IL_0014: ret
	} // end of method Int64::Equals

	.method public final hidebysig newslot virtual 
		instance bool Equals (
			int64 obj
		) cil managed 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x6fc02
		// Code size 6 (0x6)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: ldarg.1
		IL_0003: ceq
		IL_0005: ret
	} // end of method Int64::Equals

	.method public hidebysig virtual 
		instance int32 GetHashCode () cil managed 
	{
		// Method begins at RVA 0x6fc09
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: conv.i4
		IL_0003: ldarg.0
		IL_0004: ldind.i8
		IL_0005: ldc.i4.s 32
		IL_0007: shr
		IL_0008: conv.i4
		IL_0009: xor
		IL_000a: ret
	} // end of method Int64::GetHashCode

	.method public hidebysig virtual 
		instance string ToString () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x6fc15
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: call string System.Number::Int64ToDecStr(int64)
		IL_0007: ret
	} // end of method Int64::ToString

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
		// Method begins at RVA 0x6fc1e
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: ldnull
		IL_0003: ldarg.1
		IL_0004: call string System.Number::FormatInt64(int64, string, class System.IFormatProvider)
		IL_0009: ret
	} // end of method Int64::ToString

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
		// Method begins at RVA 0x6fc29
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: ldarg.1
		IL_0003: ldnull
		IL_0004: call string System.Number::FormatInt64(int64, string, class System.IFormatProvider)
		IL_0009: ret
	} // end of method Int64::ToString

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
		// Method begins at RVA 0x6fc34
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: ldarg.1
		IL_0003: ldarg.2
		IL_0004: call string System.Number::FormatInt64(int64, string, class System.IFormatProvider)
		IL_0009: ret
	} // end of method Int64::ToString

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
		// Method begins at RVA 0x6fc3f
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: ldarg.3
		IL_0003: ldarg.s provider
		IL_0005: ldarg.1
		IL_0006: ldarg.2
		IL_0007: call bool System.Number::TryFormatInt64(int64, valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider, valuetype System.Span`1<char>, int32&)
		IL_000c: ret
	} // end of method Int64::TryFormat

	.method public hidebysig static 
		int64 Parse (
			string s
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x6fc4d
		// Code size 28 (0x1c)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 17
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0010: ldc.i4.7
		IL_0011: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::get_CurrentInfo()
		IL_0016: call int64 System.Number::ParseInt64(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo)
		IL_001b: ret
	} // end of method Int64::Parse

	.method public hidebysig static 
		int64 Parse (
			string s,
			valuetype System.Globalization.NumberStyles style
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x6fc6a
		// Code size 34 (0x22)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call void System.Globalization.NumberFormatInfo::ValidateParseStyleInteger(valuetype System.Globalization.NumberStyles)
		IL_0006: ldarg.0
		IL_0007: brtrue.s IL_0010

		IL_0009: ldc.i4.s 17
		IL_000b: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0010: ldarg.0
		IL_0011: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0016: ldarg.1
		IL_0017: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::get_CurrentInfo()
		IL_001c: call int64 System.Number::ParseInt64(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo)
		IL_0021: ret
	} // end of method Int64::Parse

	.method public hidebysig static 
		int64 Parse (
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
		// Method begins at RVA 0x6fc8d
		// Code size 29 (0x1d)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 17
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0010: ldc.i4.7
		IL_0011: ldarg.1
		IL_0012: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0017: call int64 System.Number::ParseInt64(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo)
		IL_001c: ret
	} // end of method Int64::Parse

	.method public hidebysig static 
		int64 Parse (
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
		// Method begins at RVA 0x6fcab
		// Code size 35 (0x23)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call void System.Globalization.NumberFormatInfo::ValidateParseStyleInteger(valuetype System.Globalization.NumberStyles)
		IL_0006: ldarg.0
		IL_0007: brtrue.s IL_0010

		IL_0009: ldc.i4.s 17
		IL_000b: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0010: ldarg.0
		IL_0011: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0016: ldarg.1
		IL_0017: ldarg.2
		IL_0018: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_001d: call int64 System.Number::ParseInt64(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo)
		IL_0022: ret
	} // end of method Int64::Parse

	.method public hidebysig static 
		int64 Parse (
			valuetype System.ReadOnlySpan`1<char> s,
			[opt] valuetype System.Globalization.NumberStyles style,
			[opt] class System.IFormatProvider provider
		) cil managed 
	{
		.param [2] = int32(7)
		.param [3] = nullref
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x6fccf
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call void System.Globalization.NumberFormatInfo::ValidateParseStyleInteger(valuetype System.Globalization.NumberStyles)
		IL_0006: ldarg.0
		IL_0007: ldarg.1
		IL_0008: ldarg.2
		IL_0009: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_000e: call int64 System.Number::ParseInt64(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo)
		IL_0013: ret
	} // end of method Int64::Parse

	.method public hidebysig static 
		bool TryParse (
			string s,
			[out] int64& result
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullWhenAttribute::.ctor(bool) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x6fce4
		// Code size 31 (0x1f)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldarg.1
		IL_0004: ldc.i4.0
		IL_0005: conv.i8
		IL_0006: stind.i8
		IL_0007: ldc.i4.0
		IL_0008: ret

		IL_0009: ldarg.0
		IL_000a: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_000f: ldc.i4.7
		IL_0010: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::get_CurrentInfo()
		IL_0015: ldarg.1
		IL_0016: call valuetype System.Number/ParsingStatus System.Number::TryParseInt64IntegerStyle(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, int64&)
		IL_001b: ldc.i4.0
		IL_001c: ceq
		IL_001e: ret
	} // end of method Int64::TryParse

	.method public hidebysig static 
		bool TryParse (
			valuetype System.ReadOnlySpan`1<char> s,
			[out] int64& result
		) cil managed 
	{
		// Method begins at RVA 0x6fd04
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.7
		IL_0002: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::get_CurrentInfo()
		IL_0007: ldarg.1
		IL_0008: call valuetype System.Number/ParsingStatus System.Number::TryParseInt64IntegerStyle(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, int64&)
		IL_000d: ldc.i4.0
		IL_000e: ceq
		IL_0010: ret
	} // end of method Int64::TryParse

	.method public hidebysig static 
		bool TryParse (
			string s,
			valuetype System.Globalization.NumberStyles style,
			class System.IFormatProvider provider,
			[out] int64& result
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullWhenAttribute::.ctor(bool) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x6fd16
		// Code size 38 (0x26)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call void System.Globalization.NumberFormatInfo::ValidateParseStyleInteger(valuetype System.Globalization.NumberStyles)
		IL_0006: ldarg.0
		IL_0007: brtrue.s IL_000f

		IL_0009: ldarg.3
		IL_000a: ldc.i4.0
		IL_000b: conv.i8
		IL_000c: stind.i8
		IL_000d: ldc.i4.0
		IL_000e: ret

		IL_000f: ldarg.0
		IL_0010: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0015: ldarg.1
		IL_0016: ldarg.2
		IL_0017: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_001c: ldarg.3
		IL_001d: call valuetype System.Number/ParsingStatus System.Number::TryParseInt64(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, int64&)
		IL_0022: ldc.i4.0
		IL_0023: ceq
		IL_0025: ret
	} // end of method Int64::TryParse

	.method public hidebysig static 
		bool TryParse (
			valuetype System.ReadOnlySpan`1<char> s,
			valuetype System.Globalization.NumberStyles style,
			class System.IFormatProvider provider,
			[out] int64& result
		) cil managed 
	{
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x6fd3d
		// Code size 24 (0x18)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call void System.Globalization.NumberFormatInfo::ValidateParseStyleInteger(valuetype System.Globalization.NumberStyles)
		IL_0006: ldarg.0
		IL_0007: ldarg.1
		IL_0008: ldarg.2
		IL_0009: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_000e: ldarg.3
		IL_000f: call valuetype System.Number/ParsingStatus System.Number::TryParseInt64(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, int64&)
		IL_0014: ldc.i4.0
		IL_0015: ceq
		IL_0017: ret
	} // end of method Int64::TryParse

	.method public final hidebysig newslot virtual 
		instance valuetype System.TypeCode GetTypeCode () cil managed 
	{
		// Method begins at RVA 0x6fd56
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldc.i4.s 11
		IL_0002: ret
	} // end of method Int64::GetTypeCode

	.method private final hidebysig newslot virtual 
		instance bool System.IConvertible.ToBoolean (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance bool System.IConvertible::ToBoolean(class System.IFormatProvider)
		// Method begins at RVA 0x6fd5a
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: call bool System.Convert::ToBoolean(int64)
		IL_0007: ret
	} // end of method Int64::System.IConvertible.ToBoolean

	.method private final hidebysig newslot virtual 
		instance char System.IConvertible.ToChar (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance char System.IConvertible::ToChar(class System.IFormatProvider)
		// Method begins at RVA 0x6fd63
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: call char System.Convert::ToChar(int64)
		IL_0007: ret
	} // end of method Int64::System.IConvertible.ToChar

	.method private final hidebysig newslot virtual 
		instance int8 System.IConvertible.ToSByte (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance int8 System.IConvertible::ToSByte(class System.IFormatProvider)
		// Method begins at RVA 0x6fd6c
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: call int8 System.Convert::ToSByte(int64)
		IL_0007: ret
	} // end of method Int64::System.IConvertible.ToSByte

	.method private final hidebysig newslot virtual 
		instance uint8 System.IConvertible.ToByte (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance uint8 System.IConvertible::ToByte(class System.IFormatProvider)
		// Method begins at RVA 0x6fd75
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: call uint8 System.Convert::ToByte(int64)
		IL_0007: ret
	} // end of method Int64::System.IConvertible.ToByte

	.method private final hidebysig newslot virtual 
		instance int16 System.IConvertible.ToInt16 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance int16 System.IConvertible::ToInt16(class System.IFormatProvider)
		// Method begins at RVA 0x6fd7e
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: call int16 System.Convert::ToInt16(int64)
		IL_0007: ret
	} // end of method Int64::System.IConvertible.ToInt16

	.method private final hidebysig newslot virtual 
		instance uint16 System.IConvertible.ToUInt16 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance uint16 System.IConvertible::ToUInt16(class System.IFormatProvider)
		// Method begins at RVA 0x6fd87
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: call uint16 System.Convert::ToUInt16(int64)
		IL_0007: ret
	} // end of method Int64::System.IConvertible.ToUInt16

	.method private final hidebysig newslot virtual 
		instance int32 System.IConvertible.ToInt32 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance int32 System.IConvertible::ToInt32(class System.IFormatProvider)
		// Method begins at RVA 0x6fd90
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: call int32 System.Convert::ToInt32(int64)
		IL_0007: ret
	} // end of method Int64::System.IConvertible.ToInt32

	.method private final hidebysig newslot virtual 
		instance uint32 System.IConvertible.ToUInt32 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance uint32 System.IConvertible::ToUInt32(class System.IFormatProvider)
		// Method begins at RVA 0x6fd99
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: call uint32 System.Convert::ToUInt32(int64)
		IL_0007: ret
	} // end of method Int64::System.IConvertible.ToUInt32

	.method private final hidebysig newslot virtual 
		instance int64 System.IConvertible.ToInt64 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance int64 System.IConvertible::ToInt64(class System.IFormatProvider)
		// Method begins at RVA 0x6fda2
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: ret
	} // end of method Int64::System.IConvertible.ToInt64

	.method private final hidebysig newslot virtual 
		instance uint64 System.IConvertible.ToUInt64 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance uint64 System.IConvertible::ToUInt64(class System.IFormatProvider)
		// Method begins at RVA 0x6fda6
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: call uint64 System.Convert::ToUInt64(int64)
		IL_0007: ret
	} // end of method Int64::System.IConvertible.ToUInt64

	.method private final hidebysig newslot virtual 
		instance float32 System.IConvertible.ToSingle (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance float32 System.IConvertible::ToSingle(class System.IFormatProvider)
		// Method begins at RVA 0x6fdaf
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: call float32 System.Convert::ToSingle(int64)
		IL_0007: ret
	} // end of method Int64::System.IConvertible.ToSingle

	.method private final hidebysig newslot virtual 
		instance float64 System.IConvertible.ToDouble (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance float64 System.IConvertible::ToDouble(class System.IFormatProvider)
		// Method begins at RVA 0x6fdb8
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: call float64 System.Convert::ToDouble(int64)
		IL_0007: ret
	} // end of method Int64::System.IConvertible.ToDouble

	.method private final hidebysig newslot virtual 
		instance valuetype System.Decimal System.IConvertible.ToDecimal (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance valuetype System.Decimal System.IConvertible::ToDecimal(class System.IFormatProvider)
		// Method begins at RVA 0x6fdc1
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: call valuetype System.Decimal System.Convert::ToDecimal(int64)
		IL_0007: ret
	} // end of method Int64::System.IConvertible.ToDecimal

	.method private final hidebysig newslot virtual 
		instance valuetype System.DateTime System.IConvertible.ToDateTime (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		// Method begins at RVA 0x6fdca
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: call string System.SR::get_InvalidCast_FromTo()
		IL_0005: ldstr "Int64"
		IL_000a: ldstr "DateTime"
		IL_000f: call string System.SR::Format(string, object, object)
		IL_0014: newobj instance void System.InvalidCastException::.ctor(string)
		IL_0019: throw
	} // end of method Int64::System.IConvertible.ToDateTime

	.method private final hidebysig newslot virtual 
		instance object System.IConvertible.ToType (
			class System.Type 'type',
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance object System.IConvertible::ToType(class System.Type, class System.IFormatProvider)
		// Method begins at RVA 0x6fde5
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldind.i8
		IL_0002: box System.Int64
		IL_0007: ldarg.1
		IL_0008: ldarg.2
		IL_0009: call object System.Convert::DefaultToType(class System.IConvertible, class System.Type, class System.IFormatProvider)
		IL_000e: ret
	} // end of method Int64::System.IConvertible.ToType

} // end of class System.Int64