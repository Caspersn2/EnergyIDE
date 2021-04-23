.class public auto ansi sealed serializable beforefieldinit System.DateTime
	extends System.ValueType
	implements .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.IComparable,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.IFormattable,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.IConvertible,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	class System.IComparable`1<valuetype System.DateTime>,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	class System.IEquatable`1<valuetype System.DateTime>,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.Runtime.Serialization.ISerializable,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.ISpanFormattable
{
	.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
		01 00 01 00 00
	)
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
	// Nested Types
	.class nested private sequential ansi sealed beforefieldinit FullSystemTime
		extends System.ValueType
	{
		// Fields
		.field assembly valuetype Interop/Kernel32/SYSTEMTIME systemTime
		.field assembly int64 hundredNanoSecond

		// Methods
		.method assembly hidebysig specialname rtspecialname 
			instance void .ctor (
				int32 year,
				int32 month,
				valuetype System.DayOfWeek dayOfWeek,
				int32 day,
				int32 hour,
				int32 minute,
				int32 second
			) cil managed 
		{
			// Method begins at RVA 0x5c13c
			// Code size 116 (0x74)
			.maxstack 2

			IL_0000: ldarg.0
			IL_0001: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
			IL_0006: ldarg.1
			IL_0007: conv.u2
			IL_0008: stfld uint16 Interop/Kernel32/SYSTEMTIME::Year
			IL_000d: ldarg.0
			IL_000e: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
			IL_0013: ldarg.2
			IL_0014: conv.u2
			IL_0015: stfld uint16 Interop/Kernel32/SYSTEMTIME::Month
			IL_001a: ldarg.0
			IL_001b: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
			IL_0020: ldarg.3
			IL_0021: conv.u2
			IL_0022: stfld uint16 Interop/Kernel32/SYSTEMTIME::DayOfWeek
			IL_0027: ldarg.0
			IL_0028: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
			IL_002d: ldarg.s day
			IL_002f: conv.u2
			IL_0030: stfld uint16 Interop/Kernel32/SYSTEMTIME::Day
			IL_0035: ldarg.0
			IL_0036: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
			IL_003b: ldarg.s hour
			IL_003d: conv.u2
			IL_003e: stfld uint16 Interop/Kernel32/SYSTEMTIME::Hour
			IL_0043: ldarg.0
			IL_0044: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
			IL_0049: ldarg.s minute
			IL_004b: conv.u2
			IL_004c: stfld uint16 Interop/Kernel32/SYSTEMTIME::Minute
			IL_0051: ldarg.0
			IL_0052: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
			IL_0057: ldarg.s second
			IL_0059: conv.u2
			IL_005a: stfld uint16 Interop/Kernel32/SYSTEMTIME::Second
			IL_005f: ldarg.0
			IL_0060: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
			IL_0065: ldc.i4.0
			IL_0066: stfld uint16 Interop/Kernel32/SYSTEMTIME::Milliseconds
			IL_006b: ldarg.0
			IL_006c: ldc.i4.0
			IL_006d: conv.i8
			IL_006e: stfld int64 System.DateTime/FullSystemTime::hundredNanoSecond
			IL_0073: ret
		} // end of method FullSystemTime::.ctor

		.method assembly hidebysig specialname rtspecialname 
			instance void .ctor (
				int64 ticks
			) cil managed 
		{
			// Method begins at RVA 0x5c1bc
			// Code size 159 (0x9f)
			.maxstack 5
			.locals (
				[0] valuetype System.DateTime,
				[1] int32,
				[2] int32,
				[3] int32,
				[4] int32,
				[5] int32,
				[6] int32,
				[7] int32
			)

			IL_0000: ldloca.s 0
			IL_0002: ldarg.1
			IL_0003: call instance void System.DateTime::.ctor(int64)
			IL_0008: ldloca.s 0
			IL_000a: ldloca.s 1
			IL_000c: ldloca.s 2
			IL_000e: ldloca.s 3
			IL_0010: call instance void System.DateTime::GetDate(int32&, int32&, int32&)
			IL_0015: ldloca.s 0
			IL_0017: ldloca.s 4
			IL_0019: ldloca.s 5
			IL_001b: ldloca.s 6
			IL_001d: ldloca.s 7
			IL_001f: call instance void System.DateTime::GetTime(int32&, int32&, int32&, int32&)
			IL_0024: ldarg.0
			IL_0025: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
			IL_002a: ldloc.1
			IL_002b: conv.u2
			IL_002c: stfld uint16 Interop/Kernel32/SYSTEMTIME::Year
			IL_0031: ldarg.0
			IL_0032: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
			IL_0037: ldloc.2
			IL_0038: conv.u2
			IL_0039: stfld uint16 Interop/Kernel32/SYSTEMTIME::Month
			IL_003e: ldarg.0
			IL_003f: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
			IL_0044: ldloca.s 0
			IL_0046: call instance valuetype System.DayOfWeek System.DateTime::get_DayOfWeek()
			IL_004b: conv.u2
			IL_004c: stfld uint16 Interop/Kernel32/SYSTEMTIME::DayOfWeek
			IL_0051: ldarg.0
			IL_0052: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
			IL_0057: ldloc.3
			IL_0058: conv.u2
			IL_0059: stfld uint16 Interop/Kernel32/SYSTEMTIME::Day
			IL_005e: ldarg.0
			IL_005f: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
			IL_0064: ldloc.s 4
			IL_0066: conv.u2
			IL_0067: stfld uint16 Interop/Kernel32/SYSTEMTIME::Hour
			IL_006c: ldarg.0
			IL_006d: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
			IL_0072: ldloc.s 5
			IL_0074: conv.u2
			IL_0075: stfld uint16 Interop/Kernel32/SYSTEMTIME::Minute
			IL_007a: ldarg.0
			IL_007b: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
			IL_0080: ldloc.s 6
			IL_0082: conv.u2
			IL_0083: stfld uint16 Interop/Kernel32/SYSTEMTIME::Second
			IL_0088: ldarg.0
			IL_0089: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
			IL_008e: ldloc.s 7
			IL_0090: conv.u2
			IL_0091: stfld uint16 Interop/Kernel32/SYSTEMTIME::Milliseconds
			IL_0096: ldarg.0
			IL_0097: ldc.i4.0
			IL_0098: conv.i8
			IL_0099: stfld int64 System.DateTime/FullSystemTime::hundredNanoSecond
			IL_009e: ret
		} // end of method FullSystemTime::.ctor

	} // end of class FullSystemTime


	// Fields
	.field private static initonly int32[] s_daysToMonth365
	.field private static initonly int32[] s_daysToMonth366
	.field public static initonly valuetype System.DateTime MinValue
	.field public static initonly valuetype System.DateTime MaxValue
	.field public static initonly valuetype System.DateTime UnixEpoch
	.field private initonly uint64 _dateData
	.field assembly static initonly bool s_systemSupportsLeapSeconds

	// Methods
	.method private hidebysig static 
		bool ValidateSystemTime (
			valuetype Interop/Kernel32/SYSTEMTIME* time,
			bool localTime
		) cil managed internalcall 
	{
	} // end of method DateTime::ValidateSystemTime

	.method private hidebysig static 
		bool FileTimeToSystemTime (
			int64 fileTime,
			valuetype System.DateTime/FullSystemTime* time
		) cil managed internalcall 
	{
	} // end of method DateTime::FileTimeToSystemTime

	.method private hidebysig static 
		void GetSystemTimeWithLeapSecondsHandling (
			valuetype System.DateTime/FullSystemTime* time
		) cil managed internalcall 
	{
	} // end of method DateTime::GetSystemTimeWithLeapSecondsHandling

	.method private hidebysig static 
		bool SystemTimeToFileTime (
			valuetype Interop/Kernel32/SYSTEMTIME* time,
			int64* fileTime
		) cil managed internalcall 
	{
	} // end of method DateTime::SystemTimeToFileTime

	.method private hidebysig static 
		int64 GetSystemTimeAsFileTime () cil managed internalcall 
	{
	} // end of method DateTime::GetSystemTimeAsFileTime

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int64 ticks
		) cil managed 
	{
		// Method begins at RVA 0x5a3c0
		// Code size 41 (0x29)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: conv.i8
		IL_0003: blt.s IL_0011

		IL_0005: ldarg.1
		IL_0006: ldc.i8 3155378975999999999
		IL_000f: ble.s IL_0021

		IL_0011: ldstr "ticks"
		IL_0016: call string System.SR::get_ArgumentOutOfRange_DateTimeBadTicks()
		IL_001b: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0020: throw

		IL_0021: ldarg.0
		IL_0022: ldarg.1
		IL_0023: stfld uint64 System.DateTime::_dateData
		IL_0028: ret
	} // end of method DateTime::.ctor

	.method private hidebysig specialname rtspecialname 
		instance void .ctor (
			uint64 dateData
		) cil managed 
	{
		// Method begins at RVA 0x5a3ea
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: stfld uint64 System.DateTime::_dateData
		IL_0007: ret
	} // end of method DateTime::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int64 ticks,
			valuetype System.DateTimeKind kind
		) cil managed 
	{
		// Method begins at RVA 0x5a3f4
		// Code size 71 (0x47)
		.maxstack 4

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: conv.i8
		IL_0003: blt.s IL_0011

		IL_0005: ldarg.1
		IL_0006: ldc.i8 3155378975999999999
		IL_000f: ble.s IL_0021

		IL_0011: ldstr "ticks"
		IL_0016: call string System.SR::get_ArgumentOutOfRange_DateTimeBadTicks()
		IL_001b: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0020: throw

		IL_0021: ldarg.2
		IL_0022: ldc.i4.0
		IL_0023: blt.s IL_0029

		IL_0025: ldarg.2
		IL_0026: ldc.i4.2
		IL_0027: ble.s IL_0039

		IL_0029: call string System.SR::get_Argument_InvalidDateTimeKind()
		IL_002e: ldstr "kind"
		IL_0033: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0038: throw

		IL_0039: ldarg.0
		IL_003a: ldarg.1
		IL_003b: ldarg.2
		IL_003c: conv.i8
		IL_003d: ldc.i4.s 62
		IL_003f: shl
		IL_0040: or
		IL_0041: stfld uint64 System.DateTime::_dateData
		IL_0046: ret
	} // end of method DateTime::.ctor

	.method assembly hidebysig specialname rtspecialname 
		instance void .ctor (
			int64 ticks,
			valuetype System.DateTimeKind kind,
			bool isAmbiguousDst
		) cil managed 
	{
		// Method begins at RVA 0x5a448
		// Code size 65 (0x41)
		.maxstack 3

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: conv.i8
		IL_0003: blt.s IL_0011

		IL_0005: ldarg.1
		IL_0006: ldc.i8 3155378975999999999
		IL_000f: ble.s IL_0021

		IL_0011: ldstr "ticks"
		IL_0016: call string System.SR::get_ArgumentOutOfRange_DateTimeBadTicks()
		IL_001b: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0020: throw

		IL_0021: ldarg.0
		IL_0022: ldarg.1
		IL_0023: ldarg.3
		IL_0024: brtrue.s IL_0031

		IL_0026: ldc.i8 -9223372036854775808
		IL_002f: br.s IL_003a

		IL_0031: ldc.i8 -4611686018427387904

		IL_003a: or
		IL_003b: stfld uint64 System.DateTime::_dateData
		IL_0040: ret
	} // end of method DateTime::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 year,
			int32 month,
			int32 day
		) cil managed 
	{
		// Method begins at RVA 0x5a495
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: call int64 System.DateTime::DateToTicks(int32, int32, int32)
		IL_0009: stfld uint64 System.DateTime::_dateData
		IL_000e: ret
	} // end of method DateTime::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 year,
			int32 month,
			int32 day,
			class System.Globalization.Calendar calendar
		) cil managed 
	{
		// Method begins at RVA 0x5a4a5
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: ldc.i4.0
		IL_0005: ldc.i4.0
		IL_0006: ldc.i4.0
		IL_0007: ldarg.s calendar
		IL_0009: call instance void System.DateTime::.ctor(int32, int32, int32, int32, int32, int32, class System.Globalization.Calendar)
		IL_000e: ret
	} // end of method DateTime::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 year,
			int32 month,
			int32 day,
			int32 hour,
			int32 minute,
			int32 second
		) cil managed 
	{
		// Method begins at RVA 0x5a4b5
		// Code size 61 (0x3d)
		.maxstack 8

		IL_0000: ldarg.s second
		IL_0002: ldc.i4.s 60
		IL_0004: bne.un.s IL_0022

		IL_0006: ldsfld bool System.DateTime::s_systemSupportsLeapSeconds
		IL_000b: brfalse.s IL_0022

		IL_000d: ldarg.1
		IL_000e: ldarg.2
		IL_000f: ldarg.3
		IL_0010: ldarg.s hour
		IL_0012: ldarg.s minute
		IL_0014: ldarg.s second
		IL_0016: ldc.i4.0
		IL_0017: call bool System.DateTime::IsValidTimeWithLeapSeconds(int32, int32, int32, int32, int32, int32, valuetype System.DateTimeKind)
		IL_001c: brfalse.s IL_0022

		IL_001e: ldc.i4.s 59
		IL_0020: starg.s second

		IL_0022: ldarg.0
		IL_0023: ldarg.1
		IL_0024: ldarg.2
		IL_0025: ldarg.3
		IL_0026: call int64 System.DateTime::DateToTicks(int32, int32, int32)
		IL_002b: ldarg.s hour
		IL_002d: ldarg.s minute
		IL_002f: ldarg.s second
		IL_0031: call int64 System.DateTime::TimeToTicks(int32, int32, int32)
		IL_0036: add
		IL_0037: stfld uint64 System.DateTime::_dateData
		IL_003c: ret
	} // end of method DateTime::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 year,
			int32 month,
			int32 day,
			int32 hour,
			int32 minute,
			int32 second,
			valuetype System.DateTimeKind kind
		) cil managed 
	{
		// Method begins at RVA 0x5a4f4
		// Code size 97 (0x61)
		.maxstack 7
		.locals (
			[0] int64
		)

		IL_0000: ldarg.s kind
		IL_0002: ldc.i4.0
		IL_0003: blt.s IL_000a

		IL_0005: ldarg.s kind
		IL_0007: ldc.i4.2
		IL_0008: ble.s IL_001a

		IL_000a: call string System.SR::get_Argument_InvalidDateTimeKind()
		IL_000f: ldstr "kind"
		IL_0014: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0019: throw

		IL_001a: ldarg.s second
		IL_001c: ldc.i4.s 60
		IL_001e: bne.un.s IL_003d

		IL_0020: ldsfld bool System.DateTime::s_systemSupportsLeapSeconds
		IL_0025: brfalse.s IL_003d

		IL_0027: ldarg.1
		IL_0028: ldarg.2
		IL_0029: ldarg.3
		IL_002a: ldarg.s hour
		IL_002c: ldarg.s minute
		IL_002e: ldarg.s second
		IL_0030: ldarg.s kind
		IL_0032: call bool System.DateTime::IsValidTimeWithLeapSeconds(int32, int32, int32, int32, int32, int32, valuetype System.DateTimeKind)
		IL_0037: brfalse.s IL_003d

		IL_0039: ldc.i4.s 59
		IL_003b: starg.s second

		IL_003d: ldarg.1
		IL_003e: ldarg.2
		IL_003f: ldarg.3
		IL_0040: call int64 System.DateTime::DateToTicks(int32, int32, int32)
		IL_0045: ldarg.s hour
		IL_0047: ldarg.s minute
		IL_0049: ldarg.s second
		IL_004b: call int64 System.DateTime::TimeToTicks(int32, int32, int32)
		IL_0050: add
		IL_0051: stloc.0
		IL_0052: ldarg.0
		IL_0053: ldloc.0
		IL_0054: ldarg.s kind
		IL_0056: conv.i8
		IL_0057: ldc.i4.s 62
		IL_0059: shl
		IL_005a: or
		IL_005b: stfld uint64 System.DateTime::_dateData
		IL_0060: ret
	} // end of method DateTime::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 year,
			int32 month,
			int32 day,
			int32 hour,
			int32 minute,
			int32 second,
			class System.Globalization.Calendar calendar
		) cil managed 
	{
		// Method begins at RVA 0x5a564
		// Code size 142 (0x8e)
		.maxstack 9
		.locals (
			[0] int32,
			[1] valuetype System.DateTime,
			[2] valuetype System.DateTime
		)

		IL_0000: ldarg.s calendar
		IL_0002: brtrue.s IL_000f

		IL_0004: ldstr "calendar"
		IL_0009: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000e: throw

		IL_000f: ldarg.s second
		IL_0011: stloc.0
		IL_0012: ldarg.s second
		IL_0014: ldc.i4.s 60
		IL_0016: bne.un.s IL_0023

		IL_0018: ldsfld bool System.DateTime::s_systemSupportsLeapSeconds
		IL_001d: brfalse.s IL_0023

		IL_001f: ldc.i4.s 59
		IL_0021: starg.s second

		IL_0023: ldarg.0
		IL_0024: ldarg.s calendar
		IL_0026: ldarg.1
		IL_0027: ldarg.2
		IL_0028: ldarg.3
		IL_0029: ldarg.s hour
		IL_002b: ldarg.s minute
		IL_002d: ldarg.s second
		IL_002f: ldc.i4.0
		IL_0030: callvirt instance valuetype System.DateTime System.Globalization.Calendar::ToDateTime(int32, int32, int32, int32, int32, int32, int32)
		IL_0035: stloc.1
		IL_0036: ldloca.s 1
		IL_0038: call instance int64 System.DateTime::get_Ticks()
		IL_003d: stfld uint64 System.DateTime::_dateData
		IL_0042: ldloc.0
		IL_0043: ldc.i4.s 60
		IL_0045: bne.un.s IL_008d

		IL_0047: ldloca.s 2
		IL_0049: ldarg.0
		IL_004a: ldfld uint64 System.DateTime::_dateData
		IL_004f: call instance void System.DateTime::.ctor(uint64)
		IL_0054: ldloca.s 2
		IL_0056: call instance int32 System.DateTime::get_Year()
		IL_005b: ldloca.s 2
		IL_005d: call instance int32 System.DateTime::get_Month()
		IL_0062: ldloca.s 2
		IL_0064: call instance int32 System.DateTime::get_Day()
		IL_0069: ldloca.s 2
		IL_006b: call instance int32 System.DateTime::get_Hour()
		IL_0070: ldloca.s 2
		IL_0072: call instance int32 System.DateTime::get_Minute()
		IL_0077: ldc.i4.s 60
		IL_0079: ldc.i4.0
		IL_007a: call bool System.DateTime::IsValidTimeWithLeapSeconds(int32, int32, int32, int32, int32, int32, valuetype System.DateTimeKind)
		IL_007f: brtrue.s IL_008d

		IL_0081: ldnull
		IL_0082: call string System.SR::get_ArgumentOutOfRange_BadHourMinuteSecond()
		IL_0087: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_008c: throw

		IL_008d: ret
	} // end of method DateTime::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 year,
			int32 month,
			int32 day,
			int32 hour,
			int32 minute,
			int32 second,
			int32 millisecond
		) cil managed 
	{
		// Method begins at RVA 0x5a600
		// Code size 155 (0x9b)
		.maxstack 7
		.locals (
			[0] int64
		)

		IL_0000: ldarg.s millisecond
		IL_0002: ldc.i4.0
		IL_0003: blt.s IL_000e

		IL_0005: ldarg.s millisecond
		IL_0007: ldc.i4 1000
		IL_000c: blt.s IL_0033

		IL_000e: ldstr "millisecond"
		IL_0013: call string System.SR::get_ArgumentOutOfRange_Range()
		IL_0018: ldc.i4.0
		IL_0019: box System.Int32
		IL_001e: ldc.i4 999
		IL_0023: box System.Int32
		IL_0028: call string System.SR::Format(string, object, object)
		IL_002d: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0032: throw

		IL_0033: ldarg.s second
		IL_0035: ldc.i4.s 60
		IL_0037: bne.un.s IL_0055

		IL_0039: ldsfld bool System.DateTime::s_systemSupportsLeapSeconds
		IL_003e: brfalse.s IL_0055

		IL_0040: ldarg.1
		IL_0041: ldarg.2
		IL_0042: ldarg.3
		IL_0043: ldarg.s hour
		IL_0045: ldarg.s minute
		IL_0047: ldarg.s second
		IL_0049: ldc.i4.0
		IL_004a: call bool System.DateTime::IsValidTimeWithLeapSeconds(int32, int32, int32, int32, int32, int32, valuetype System.DateTimeKind)
		IL_004f: brfalse.s IL_0055

		IL_0051: ldc.i4.s 59
		IL_0053: starg.s second

		IL_0055: ldarg.1
		IL_0056: ldarg.2
		IL_0057: ldarg.3
		IL_0058: call int64 System.DateTime::DateToTicks(int32, int32, int32)
		IL_005d: ldarg.s hour
		IL_005f: ldarg.s minute
		IL_0061: ldarg.s second
		IL_0063: call int64 System.DateTime::TimeToTicks(int32, int32, int32)
		IL_0068: add
		IL_0069: stloc.0
		IL_006a: ldloc.0
		IL_006b: ldarg.s millisecond
		IL_006d: conv.i8
		IL_006e: ldc.i4 10000
		IL_0073: conv.i8
		IL_0074: mul
		IL_0075: add
		IL_0076: stloc.0
		IL_0077: ldloc.0
		IL_0078: ldc.i4.0
		IL_0079: conv.i8
		IL_007a: blt.s IL_0088

		IL_007c: ldloc.0
		IL_007d: ldc.i8 3155378975999999999
		IL_0086: ble.s IL_0093

		IL_0088: call string System.SR::get_Arg_DateTimeRange()
		IL_008d: newobj instance void System.ArgumentException::.ctor(string)
		IL_0092: throw

		IL_0093: ldarg.0
		IL_0094: ldloc.0
		IL_0095: stfld uint64 System.DateTime::_dateData
		IL_009a: ret
	} // end of method DateTime::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 year,
			int32 month,
			int32 day,
			int32 hour,
			int32 minute,
			int32 second,
			int32 millisecond,
			valuetype System.DateTimeKind kind
		) cil managed 
	{
		// Method begins at RVA 0x5a6a8
		// Code size 189 (0xbd)
		.maxstack 7
		.locals (
			[0] int64
		)

		IL_0000: ldarg.s millisecond
		IL_0002: ldc.i4.0
		IL_0003: blt.s IL_000e

		IL_0005: ldarg.s millisecond
		IL_0007: ldc.i4 1000
		IL_000c: blt.s IL_0033

		IL_000e: ldstr "millisecond"
		IL_0013: call string System.SR::get_ArgumentOutOfRange_Range()
		IL_0018: ldc.i4.0
		IL_0019: box System.Int32
		IL_001e: ldc.i4 999
		IL_0023: box System.Int32
		IL_0028: call string System.SR::Format(string, object, object)
		IL_002d: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0032: throw

		IL_0033: ldarg.s kind
		IL_0035: ldc.i4.0
		IL_0036: blt.s IL_003d

		IL_0038: ldarg.s kind
		IL_003a: ldc.i4.2
		IL_003b: ble.s IL_004d

		IL_003d: call string System.SR::get_Argument_InvalidDateTimeKind()
		IL_0042: ldstr "kind"
		IL_0047: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_004c: throw

		IL_004d: ldarg.s second
		IL_004f: ldc.i4.s 60
		IL_0051: bne.un.s IL_0070

		IL_0053: ldsfld bool System.DateTime::s_systemSupportsLeapSeconds
		IL_0058: brfalse.s IL_0070

		IL_005a: ldarg.1
		IL_005b: ldarg.2
		IL_005c: ldarg.3
		IL_005d: ldarg.s hour
		IL_005f: ldarg.s minute
		IL_0061: ldarg.s second
		IL_0063: ldarg.s kind
		IL_0065: call bool System.DateTime::IsValidTimeWithLeapSeconds(int32, int32, int32, int32, int32, int32, valuetype System.DateTimeKind)
		IL_006a: brfalse.s IL_0070

		IL_006c: ldc.i4.s 59
		IL_006e: starg.s second

		IL_0070: ldarg.1
		IL_0071: ldarg.2
		IL_0072: ldarg.3
		IL_0073: call int64 System.DateTime::DateToTicks(int32, int32, int32)
		IL_0078: ldarg.s hour
		IL_007a: ldarg.s minute
		IL_007c: ldarg.s second
		IL_007e: call int64 System.DateTime::TimeToTicks(int32, int32, int32)
		IL_0083: add
		IL_0084: stloc.0
		IL_0085: ldloc.0
		IL_0086: ldarg.s millisecond
		IL_0088: conv.i8
		IL_0089: ldc.i4 10000
		IL_008e: conv.i8
		IL_008f: mul
		IL_0090: add
		IL_0091: stloc.0
		IL_0092: ldloc.0
		IL_0093: ldc.i4.0
		IL_0094: conv.i8
		IL_0095: blt.s IL_00a3

		IL_0097: ldloc.0
		IL_0098: ldc.i8 3155378975999999999
		IL_00a1: ble.s IL_00ae

		IL_00a3: call string System.SR::get_Arg_DateTimeRange()
		IL_00a8: newobj instance void System.ArgumentException::.ctor(string)
		IL_00ad: throw

		IL_00ae: ldarg.0
		IL_00af: ldloc.0
		IL_00b0: ldarg.s kind
		IL_00b2: conv.i8
		IL_00b3: ldc.i4.s 62
		IL_00b5: shl
		IL_00b6: or
		IL_00b7: stfld uint64 System.DateTime::_dateData
		IL_00bc: ret
	} // end of method DateTime::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 year,
			int32 month,
			int32 day,
			int32 hour,
			int32 minute,
			int32 second,
			int32 millisecond,
			class System.Globalization.Calendar calendar
		) cil managed 
	{
		// Method begins at RVA 0x5a774
		// Code size 236 (0xec)
		.maxstack 8
		.locals (
			[0] int32,
			[1] int64,
			[2] valuetype System.DateTime,
			[3] valuetype System.DateTime
		)

		IL_0000: ldarg.s calendar
		IL_0002: brtrue.s IL_000f

		IL_0004: ldstr "calendar"
		IL_0009: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000e: throw

		IL_000f: ldarg.s millisecond
		IL_0011: ldc.i4.0
		IL_0012: blt.s IL_001d

		IL_0014: ldarg.s millisecond
		IL_0016: ldc.i4 1000
		IL_001b: blt.s IL_0042

		IL_001d: ldstr "millisecond"
		IL_0022: call string System.SR::get_ArgumentOutOfRange_Range()
		IL_0027: ldc.i4.0
		IL_0028: box System.Int32
		IL_002d: ldc.i4 999
		IL_0032: box System.Int32
		IL_0037: call string System.SR::Format(string, object, object)
		IL_003c: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0041: throw

		IL_0042: ldarg.s second
		IL_0044: stloc.0
		IL_0045: ldarg.s second
		IL_0047: ldc.i4.s 60
		IL_0049: bne.un.s IL_0056

		IL_004b: ldsfld bool System.DateTime::s_systemSupportsLeapSeconds
		IL_0050: brfalse.s IL_0056

		IL_0052: ldc.i4.s 59
		IL_0054: starg.s second

		IL_0056: ldarg.s calendar
		IL_0058: ldarg.1
		IL_0059: ldarg.2
		IL_005a: ldarg.3
		IL_005b: ldarg.s hour
		IL_005d: ldarg.s minute
		IL_005f: ldarg.s second
		IL_0061: ldc.i4.0
		IL_0062: callvirt instance valuetype System.DateTime System.Globalization.Calendar::ToDateTime(int32, int32, int32, int32, int32, int32, int32)
		IL_0067: stloc.2
		IL_0068: ldloca.s 2
		IL_006a: call instance int64 System.DateTime::get_Ticks()
		IL_006f: stloc.1
		IL_0070: ldloc.1
		IL_0071: ldarg.s millisecond
		IL_0073: conv.i8
		IL_0074: ldc.i4 10000
		IL_0079: conv.i8
		IL_007a: mul
		IL_007b: add
		IL_007c: stloc.1
		IL_007d: ldloc.1
		IL_007e: ldc.i4.0
		IL_007f: conv.i8
		IL_0080: blt.s IL_008e

		IL_0082: ldloc.1
		IL_0083: ldc.i8 3155378975999999999
		IL_008c: ble.s IL_0099

		IL_008e: call string System.SR::get_Arg_DateTimeRange()
		IL_0093: newobj instance void System.ArgumentException::.ctor(string)
		IL_0098: throw

		IL_0099: ldarg.0
		IL_009a: ldloc.1
		IL_009b: stfld uint64 System.DateTime::_dateData
		IL_00a0: ldloc.0
		IL_00a1: ldc.i4.s 60
		IL_00a3: bne.un.s IL_00eb

		IL_00a5: ldloca.s 3
		IL_00a7: ldarg.0
		IL_00a8: ldfld uint64 System.DateTime::_dateData
		IL_00ad: call instance void System.DateTime::.ctor(uint64)
		IL_00b2: ldloca.s 3
		IL_00b4: call instance int32 System.DateTime::get_Year()
		IL_00b9: ldloca.s 3
		IL_00bb: call instance int32 System.DateTime::get_Month()
		IL_00c0: ldloca.s 3
		IL_00c2: call instance int32 System.DateTime::get_Day()
		IL_00c7: ldloca.s 3
		IL_00c9: call instance int32 System.DateTime::get_Hour()
		IL_00ce: ldloca.s 3
		IL_00d0: call instance int32 System.DateTime::get_Minute()
		IL_00d5: ldc.i4.s 60
		IL_00d7: ldc.i4.0
		IL_00d8: call bool System.DateTime::IsValidTimeWithLeapSeconds(int32, int32, int32, int32, int32, int32, valuetype System.DateTimeKind)
		IL_00dd: brtrue.s IL_00eb

		IL_00df: ldnull
		IL_00e0: call string System.SR::get_ArgumentOutOfRange_BadHourMinuteSecond()
		IL_00e5: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_00ea: throw

		IL_00eb: ret
	} // end of method DateTime::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 year,
			int32 month,
			int32 day,
			int32 hour,
			int32 minute,
			int32 second,
			int32 millisecond,
			class System.Globalization.Calendar calendar,
			valuetype System.DateTimeKind kind
		) cil managed 
	{
		// Method begins at RVA 0x5a86c
		// Code size 270 (0x10e)
		.maxstack 8
		.locals (
			[0] int32,
			[1] int64,
			[2] valuetype System.DateTime,
			[3] valuetype System.DateTime
		)

		IL_0000: ldarg.s calendar
		IL_0002: brtrue.s IL_000f

		IL_0004: ldstr "calendar"
		IL_0009: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000e: throw

		IL_000f: ldarg.s millisecond
		IL_0011: ldc.i4.0
		IL_0012: blt.s IL_001d

		IL_0014: ldarg.s millisecond
		IL_0016: ldc.i4 1000
		IL_001b: blt.s IL_0042

		IL_001d: ldstr "millisecond"
		IL_0022: call string System.SR::get_ArgumentOutOfRange_Range()
		IL_0027: ldc.i4.0
		IL_0028: box System.Int32
		IL_002d: ldc.i4 999
		IL_0032: box System.Int32
		IL_0037: call string System.SR::Format(string, object, object)
		IL_003c: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0041: throw

		IL_0042: ldarg.s kind
		IL_0044: ldc.i4.0
		IL_0045: blt.s IL_004c

		IL_0047: ldarg.s kind
		IL_0049: ldc.i4.2
		IL_004a: ble.s IL_005c

		IL_004c: call string System.SR::get_Argument_InvalidDateTimeKind()
		IL_0051: ldstr "kind"
		IL_0056: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_005b: throw

		IL_005c: ldarg.s second
		IL_005e: stloc.0
		IL_005f: ldarg.s second
		IL_0061: ldc.i4.s 60
		IL_0063: bne.un.s IL_0070

		IL_0065: ldsfld bool System.DateTime::s_systemSupportsLeapSeconds
		IL_006a: brfalse.s IL_0070

		IL_006c: ldc.i4.s 59
		IL_006e: starg.s second

		IL_0070: ldarg.s calendar
		IL_0072: ldarg.1
		IL_0073: ldarg.2
		IL_0074: ldarg.3
		IL_0075: ldarg.s hour
		IL_0077: ldarg.s minute
		IL_0079: ldarg.s second
		IL_007b: ldc.i4.0
		IL_007c: callvirt instance valuetype System.DateTime System.Globalization.Calendar::ToDateTime(int32, int32, int32, int32, int32, int32, int32)
		IL_0081: stloc.2
		IL_0082: ldloca.s 2
		IL_0084: call instance int64 System.DateTime::get_Ticks()
		IL_0089: stloc.1
		IL_008a: ldloc.1
		IL_008b: ldarg.s millisecond
		IL_008d: conv.i8
		IL_008e: ldc.i4 10000
		IL_0093: conv.i8
		IL_0094: mul
		IL_0095: add
		IL_0096: stloc.1
		IL_0097: ldloc.1
		IL_0098: ldc.i4.0
		IL_0099: conv.i8
		IL_009a: blt.s IL_00a8

		IL_009c: ldloc.1
		IL_009d: ldc.i8 3155378975999999999
		IL_00a6: ble.s IL_00b3

		IL_00a8: call string System.SR::get_Arg_DateTimeRange()
		IL_00ad: newobj instance void System.ArgumentException::.ctor(string)
		IL_00b2: throw

		IL_00b3: ldarg.0
		IL_00b4: ldloc.1
		IL_00b5: ldarg.s kind
		IL_00b7: conv.i8
		IL_00b8: ldc.i4.s 62
		IL_00ba: shl
		IL_00bb: or
		IL_00bc: stfld uint64 System.DateTime::_dateData
		IL_00c1: ldloc.0
		IL_00c2: ldc.i4.s 60
		IL_00c4: bne.un.s IL_010d

		IL_00c6: ldloca.s 3
		IL_00c8: ldarg.0
		IL_00c9: ldfld uint64 System.DateTime::_dateData
		IL_00ce: call instance void System.DateTime::.ctor(uint64)
		IL_00d3: ldloca.s 3
		IL_00d5: call instance int32 System.DateTime::get_Year()
		IL_00da: ldloca.s 3
		IL_00dc: call instance int32 System.DateTime::get_Month()
		IL_00e1: ldloca.s 3
		IL_00e3: call instance int32 System.DateTime::get_Day()
		IL_00e8: ldloca.s 3
		IL_00ea: call instance int32 System.DateTime::get_Hour()
		IL_00ef: ldloca.s 3
		IL_00f1: call instance int32 System.DateTime::get_Minute()
		IL_00f6: ldc.i4.s 60
		IL_00f8: ldarg.s kind
		IL_00fa: call bool System.DateTime::IsValidTimeWithLeapSeconds(int32, int32, int32, int32, int32, int32, valuetype System.DateTimeKind)
		IL_00ff: brtrue.s IL_010d

		IL_0101: ldnull
		IL_0102: call string System.SR::get_ArgumentOutOfRange_BadHourMinuteSecond()
		IL_0107: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_010c: throw

		IL_010d: ret
	} // end of method DateTime::.ctor

	.method private hidebysig specialname rtspecialname 
		instance void .ctor (
			class System.Runtime.Serialization.SerializationInfo info,
			valuetype System.Runtime.Serialization.StreamingContext context
		) cil managed 
	{
		// Method begins at RVA 0x5a988
		// Code size 198 (0xc6)
		.maxstack 2
		.locals (
			[0] bool,
			[1] bool,
			[2] int64,
			[3] uint64,
			[4] class System.Runtime.Serialization.SerializationInfoEnumerator,
			[5] int64,
			[6] string
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "info"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldc.i4.0
		IL_000f: stloc.0
		IL_0010: ldc.i4.0
		IL_0011: stloc.1
		IL_0012: ldc.i4.0
		IL_0013: conv.i8
		IL_0014: stloc.2
		IL_0015: ldc.i4.0
		IL_0016: conv.i8
		IL_0017: stloc.3
		IL_0018: ldarg.1
		IL_0019: callvirt instance class System.Runtime.Serialization.SerializationInfoEnumerator System.Runtime.Serialization.SerializationInfo::GetEnumerator()
		IL_001e: stloc.s 4
		IL_0020: br.s IL_0073
		// loop start (head: IL_0073)
			IL_0022: ldloc.s 4
			IL_0024: callvirt instance string System.Runtime.Serialization.SerializationInfoEnumerator::get_Name()
			IL_0029: stloc.s 6
			IL_002b: ldloc.s 6
			IL_002d: ldstr "ticks"
			IL_0032: call bool System.String::op_Equality(string, string)
			IL_0037: brtrue.s IL_0049

			IL_0039: ldloc.s 6
			IL_003b: ldstr "dateData"
			IL_0040: call bool System.String::op_Equality(string, string)
			IL_0045: brtrue.s IL_005f

			IL_0047: br.s IL_0073

			IL_0049: ldloc.s 4
			IL_004b: callvirt instance object System.Runtime.Serialization.SerializationInfoEnumerator::get_Value()
			IL_0050: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_InvariantCulture()
			IL_0055: call int64 System.Convert::ToInt64(object, class System.IFormatProvider)
			IL_005a: stloc.2
			IL_005b: ldc.i4.1
			IL_005c: stloc.0
			IL_005d: br.s IL_0073

			IL_005f: ldloc.s 4
			IL_0061: callvirt instance object System.Runtime.Serialization.SerializationInfoEnumerator::get_Value()
			IL_0066: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_InvariantCulture()
			IL_006b: call uint64 System.Convert::ToUInt64(object, class System.IFormatProvider)
			IL_0070: stloc.3
			IL_0071: ldc.i4.1
			IL_0072: stloc.1

			IL_0073: ldloc.s 4
			IL_0075: callvirt instance bool System.Runtime.Serialization.SerializationInfoEnumerator::MoveNext()
			IL_007a: brtrue.s IL_0022
		// end loop

		IL_007c: ldloc.1
		IL_007d: brfalse.s IL_0088

		IL_007f: ldarg.0
		IL_0080: ldloc.3
		IL_0081: stfld uint64 System.DateTime::_dateData
		IL_0086: br.s IL_009f

		IL_0088: ldloc.0
		IL_0089: brfalse.s IL_0094

		IL_008b: ldarg.0
		IL_008c: ldloc.2
		IL_008d: stfld uint64 System.DateTime::_dateData
		IL_0092: br.s IL_009f

		IL_0094: call string System.SR::get_Serialization_MissingDateTimeData()
		IL_0099: newobj instance void System.Runtime.Serialization.SerializationException::.ctor(string)
		IL_009e: throw

		IL_009f: ldarg.0
		IL_00a0: call instance int64 System.DateTime::get_InternalTicks()
		IL_00a5: stloc.s 5
		IL_00a7: ldloc.s 5
		IL_00a9: ldc.i4.0
		IL_00aa: conv.i8
		IL_00ab: blt.s IL_00ba

		IL_00ad: ldloc.s 5
		IL_00af: ldc.i8 3155378975999999999
		IL_00b8: ble.s IL_00c5

		IL_00ba: call string System.SR::get_Serialization_DateTimeTicksOutOfRange()
		IL_00bf: newobj instance void System.Runtime.Serialization.SerializationException::.ctor(string)
		IL_00c4: throw

		IL_00c5: ret
	} // end of method DateTime::.ctor

	.method assembly hidebysig specialname 
		instance int64 get_InternalTicks () cil managed 
	{
		// Method begins at RVA 0x5aa5a
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld uint64 System.DateTime::_dateData
		IL_0006: ldc.i8 4611686018427387903
		IL_000f: and
		IL_0010: ret
	} // end of method DateTime::get_InternalTicks

	.method private hidebysig specialname 
		instance uint64 get_InternalKind () cil managed 
	{
		// Method begins at RVA 0x5aa6c
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld uint64 System.DateTime::_dateData
		IL_0006: ldc.i8 -4611686018427387904
		IL_000f: and
		IL_0010: ret
	} // end of method DateTime::get_InternalKind

	.method public hidebysig 
		instance valuetype System.DateTime Add (
			valuetype System.TimeSpan 'value'
		) cil managed 
	{
		// Method begins at RVA 0x5aa7e
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldfld int64 System.TimeSpan::_ticks
		IL_0007: call instance valuetype System.DateTime System.DateTime::AddTicks(int64)
		IL_000c: ret
	} // end of method DateTime::Add

	.method private hidebysig 
		instance valuetype System.DateTime Add (
			float64 'value',
			int32 scale
		) cil managed 
	{
		// Method begins at RVA 0x5aa8c
		// Code size 94 (0x5e)
		.maxstack 3
		.locals (
			[0] float64
		)

		IL_0000: ldarg.1
		IL_0001: ldarg.2
		IL_0002: conv.r8
		IL_0003: mul
		IL_0004: ldarg.1
		IL_0005: ldc.r8 0.0
		IL_000e: bge.s IL_001b

		IL_0010: ldc.r8 -0.5
		IL_0019: br.s IL_0024

		IL_001b: ldc.r8 0.5

		IL_0024: add
		IL_0025: stloc.0
		IL_0026: ldloc.0
		IL_0027: ldc.r8 -315537897600000
		IL_0030: ble.s IL_003e

		IL_0032: ldloc.0
		IL_0033: ldc.r8 315537897600000
		IL_003c: blt.un.s IL_004e

		IL_003e: ldstr "value"
		IL_0043: call string System.SR::get_ArgumentOutOfRange_AddValue()
		IL_0048: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_004d: throw

		IL_004e: ldarg.0
		IL_004f: ldloc.0
		IL_0050: conv.i8
		IL_0051: ldc.i4 10000
		IL_0056: conv.i8
		IL_0057: mul
		IL_0058: call instance valuetype System.DateTime System.DateTime::AddTicks(int64)
		IL_005d: ret
	} // end of method DateTime::Add

	.method public hidebysig 
		instance valuetype System.DateTime AddDays (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x5aaf6
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4 86400000
		IL_0007: call instance valuetype System.DateTime System.DateTime::Add(float64, int32)
		IL_000c: ret
	} // end of method DateTime::AddDays

	.method public hidebysig 
		instance valuetype System.DateTime AddHours (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x5ab04
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4 3600000
		IL_0007: call instance valuetype System.DateTime System.DateTime::Add(float64, int32)
		IL_000c: ret
	} // end of method DateTime::AddHours

	.method public hidebysig 
		instance valuetype System.DateTime AddMilliseconds (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x5ab12
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.1
		IL_0003: call instance valuetype System.DateTime System.DateTime::Add(float64, int32)
		IL_0008: ret
	} // end of method DateTime::AddMilliseconds

	.method public hidebysig 
		instance valuetype System.DateTime AddMinutes (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x5ab1c
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4 60000
		IL_0007: call instance valuetype System.DateTime System.DateTime::Add(float64, int32)
		IL_000c: ret
	} // end of method DateTime::AddMinutes

	.method public hidebysig 
		instance valuetype System.DateTime AddMonths (
			int32 months
		) cil managed 
	{
		// Method begins at RVA 0x5ab2c
		// Code size 173 (0xad)
		.maxstack 4
		.locals (
			[0] int32,
			[1] int32,
			[2] int32,
			[3] int32,
			[4] int32
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4 -120000
		IL_0006: blt.s IL_0010

		IL_0008: ldarg.1
		IL_0009: ldc.i4 120000
		IL_000e: ble.s IL_0020

		IL_0010: ldstr "months"
		IL_0015: call string System.SR::get_ArgumentOutOfRange_DateTimeBadMonths()
		IL_001a: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_001f: throw

		IL_0020: ldarg.0
		IL_0021: ldloca.s 0
		IL_0023: ldloca.s 1
		IL_0025: ldloca.s 2
		IL_0027: call instance void System.DateTime::GetDate(int32&, int32&, int32&)
		IL_002c: ldloc.1
		IL_002d: ldc.i4.1
		IL_002e: sub
		IL_002f: ldarg.1
		IL_0030: add
		IL_0031: stloc.3
		IL_0032: ldloc.3
		IL_0033: ldc.i4.0
		IL_0034: blt.s IL_0046

		IL_0036: ldloc.3
		IL_0037: ldc.i4.s 12
		IL_0039: rem
		IL_003a: ldc.i4.1
		IL_003b: add
		IL_003c: stloc.1
		IL_003d: ldloc.0
		IL_003e: ldloc.3
		IL_003f: ldc.i4.s 12
		IL_0041: div
		IL_0042: add
		IL_0043: stloc.0
		IL_0044: br.s IL_005a

		IL_0046: ldc.i4.s 12
		IL_0048: ldloc.3
		IL_0049: ldc.i4.1
		IL_004a: add
		IL_004b: ldc.i4.s 12
		IL_004d: rem
		IL_004e: add
		IL_004f: stloc.1
		IL_0050: ldloc.0
		IL_0051: ldloc.3
		IL_0052: ldc.i4.s 11
		IL_0054: sub
		IL_0055: ldc.i4.s 12
		IL_0057: div
		IL_0058: add
		IL_0059: stloc.0

		IL_005a: ldloc.0
		IL_005b: ldc.i4.1
		IL_005c: blt.s IL_0066

		IL_005e: ldloc.0
		IL_005f: ldc.i4 9999
		IL_0064: ble.s IL_0076

		IL_0066: ldstr "months"
		IL_006b: call string System.SR::get_ArgumentOutOfRange_DateArithmetic()
		IL_0070: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0075: throw

		IL_0076: ldloc.0
		IL_0077: ldloc.1
		IL_0078: call int32 System.DateTime::DaysInMonth(int32, int32)
		IL_007d: stloc.s 4
		IL_007f: ldloc.2
		IL_0080: ldloc.s 4
		IL_0082: ble.s IL_0087

		IL_0084: ldloc.s 4
		IL_0086: stloc.2

		IL_0087: ldloc.0
		IL_0088: ldloc.1
		IL_0089: ldloc.2
		IL_008a: call int64 System.DateTime::DateToTicks(int32, int32, int32)
		IL_008f: ldarg.0
		IL_0090: call instance int64 System.DateTime::get_InternalTicks()
		IL_0095: ldc.i8 864000000000
		IL_009e: rem
		IL_009f: add
		IL_00a0: ldarg.0
		IL_00a1: call instance uint64 System.DateTime::get_InternalKind()
		IL_00a6: or
		IL_00a7: newobj instance void System.DateTime::.ctor(uint64)
		IL_00ac: ret
	} // end of method DateTime::AddMonths

	.method public hidebysig 
		instance valuetype System.DateTime AddSeconds (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x5abe5
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4 1000
		IL_0007: call instance valuetype System.DateTime System.DateTime::Add(float64, int32)
		IL_000c: ret
	} // end of method DateTime::AddSeconds

	.method public hidebysig 
		instance valuetype System.DateTime AddTicks (
			int64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x5abf4
		// Code size 60 (0x3c)
		.maxstack 3
		.locals (
			[0] int64
		)

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.DateTime::get_InternalTicks()
		IL_0006: stloc.0
		IL_0007: ldarg.1
		IL_0008: ldc.i8 3155378975999999999
		IL_0011: ldloc.0
		IL_0012: sub
		IL_0013: bgt.s IL_001c

		IL_0015: ldarg.1
		IL_0016: ldc.i4.0
		IL_0017: conv.i8
		IL_0018: ldloc.0
		IL_0019: sub
		IL_001a: bge.s IL_002c

		IL_001c: ldstr "value"
		IL_0021: call string System.SR::get_ArgumentOutOfRange_DateArithmetic()
		IL_0026: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_002b: throw

		IL_002c: ldloc.0
		IL_002d: ldarg.1
		IL_002e: add
		IL_002f: ldarg.0
		IL_0030: call instance uint64 System.DateTime::get_InternalKind()
		IL_0035: or
		IL_0036: newobj instance void System.DateTime::.ctor(uint64)
		IL_003b: ret
	} // end of method DateTime::AddTicks

	.method assembly hidebysig 
		instance bool TryAddTicks (
			int64 'value',
			[out] valuetype System.DateTime& result
		) cil managed 
	{
		// Method begins at RVA 0x5ac3c
		// Code size 60 (0x3c)
		.maxstack 3
		.locals (
			[0] int64
		)

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.DateTime::get_InternalTicks()
		IL_0006: stloc.0
		IL_0007: ldarg.1
		IL_0008: ldc.i8 3155378975999999999
		IL_0011: ldloc.0
		IL_0012: sub
		IL_0013: bgt.s IL_001c

		IL_0015: ldarg.1
		IL_0016: ldc.i4.0
		IL_0017: conv.i8
		IL_0018: ldloc.0
		IL_0019: sub
		IL_001a: bge.s IL_0025

		IL_001c: ldarg.2
		IL_001d: initobj System.DateTime
		IL_0023: ldc.i4.0
		IL_0024: ret

		IL_0025: ldarg.2
		IL_0026: ldloc.0
		IL_0027: ldarg.1
		IL_0028: add
		IL_0029: ldarg.0
		IL_002a: call instance uint64 System.DateTime::get_InternalKind()
		IL_002f: or
		IL_0030: newobj instance void System.DateTime::.ctor(uint64)
		IL_0035: stobj System.DateTime
		IL_003a: ldc.i4.1
		IL_003b: ret
	} // end of method DateTime::TryAddTicks

	.method public hidebysig 
		instance valuetype System.DateTime AddYears (
			int32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x5ac84
		// Code size 43 (0x2b)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldc.i4 -10000
		IL_0006: blt.s IL_0010

		IL_0008: ldarg.1
		IL_0009: ldc.i4 10000
		IL_000e: ble.s IL_0020

		IL_0010: ldstr "value"
		IL_0015: call string System.SR::get_ArgumentOutOfRange_DateTimeBadYears()
		IL_001a: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_001f: throw

		IL_0020: ldarg.0
		IL_0021: ldarg.1
		IL_0022: ldc.i4.s 12
		IL_0024: mul
		IL_0025: call instance valuetype System.DateTime System.DateTime::AddMonths(int32)
		IL_002a: ret
	} // end of method DateTime::AddYears

	.method public hidebysig static 
		int32 Compare (
			valuetype System.DateTime t1,
			valuetype System.DateTime t2
		) cil managed 
	{
		// Method begins at RVA 0x5acb0
		// Code size 30 (0x1e)
		.maxstack 2
		.locals (
			[0] int64,
			[1] int64
		)

		IL_0000: ldarga.s t1
		IL_0002: call instance int64 System.DateTime::get_InternalTicks()
		IL_0007: stloc.0
		IL_0008: ldarga.s t2
		IL_000a: call instance int64 System.DateTime::get_InternalTicks()
		IL_000f: stloc.1
		IL_0010: ldloc.0
		IL_0011: ldloc.1
		IL_0012: ble.s IL_0016

		IL_0014: ldc.i4.1
		IL_0015: ret

		IL_0016: ldloc.0
		IL_0017: ldloc.1
		IL_0018: bge.s IL_001c

		IL_001a: ldc.i4.m1
		IL_001b: ret

		IL_001c: ldc.i4.0
		IL_001d: ret
	} // end of method DateTime::Compare

	.method public final hidebysig newslot virtual 
		instance int32 CompareTo (
			object 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x5acda
		// Code size 42 (0x2a)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.1
		IL_0004: ret

		IL_0005: ldarg.1
		IL_0006: isinst System.DateTime
		IL_000b: brtrue.s IL_0018

		IL_000d: call string System.SR::get_Arg_MustBeDateTime()
		IL_0012: newobj instance void System.ArgumentException::.ctor(string)
		IL_0017: throw

		IL_0018: ldarg.0
		IL_0019: ldobj System.DateTime
		IL_001e: ldarg.1
		IL_001f: unbox.any System.DateTime
		IL_0024: call int32 System.DateTime::Compare(valuetype System.DateTime, valuetype System.DateTime)
		IL_0029: ret
	} // end of method DateTime::CompareTo

	.method public final hidebysig newslot virtual 
		instance int32 CompareTo (
			valuetype System.DateTime 'value'
		) cil managed 
	{
		// Method begins at RVA 0x5ad05
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.DateTime
		IL_0006: ldarg.1
		IL_0007: call int32 System.DateTime::Compare(valuetype System.DateTime, valuetype System.DateTime)
		IL_000c: ret
	} // end of method DateTime::CompareTo

	.method private hidebysig static 
		int64 DateToTicks (
			int32 year,
			int32 month,
			int32 day
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x5ad14
		// Code size 120 (0x78)
		.maxstack 5
		.locals (
			[0] int32[],
			[1] int32,
			[2] int32
		)

		IL_0000: ldarg.0
		IL_0001: ldc.i4.1
		IL_0002: blt.s IL_0019

		IL_0004: ldarg.0
		IL_0005: ldc.i4 9999
		IL_000a: bgt.s IL_0019

		IL_000c: ldarg.1
		IL_000d: ldc.i4.1
		IL_000e: blt.s IL_0019

		IL_0010: ldarg.1
		IL_0011: ldc.i4.s 12
		IL_0013: bgt.s IL_0019

		IL_0015: ldarg.2
		IL_0016: ldc.i4.1
		IL_0017: bge.s IL_001e

		IL_0019: call void System.ThrowHelper::ThrowArgumentOutOfRange_BadYearMonthDay()

		IL_001e: ldarg.0
		IL_001f: call bool System.DateTime::IsLeapYear(int32)
		IL_0024: brtrue.s IL_002d

		IL_0026: ldsfld int32[] System.DateTime::s_daysToMonth365
		IL_002b: br.s IL_0032

		IL_002d: ldsfld int32[] System.DateTime::s_daysToMonth366

		IL_0032: stloc.0
		IL_0033: ldarg.2
		IL_0034: ldloc.0
		IL_0035: ldarg.1
		IL_0036: ldelem.i4
		IL_0037: ldloc.0
		IL_0038: ldarg.1
		IL_0039: ldc.i4.1
		IL_003a: sub
		IL_003b: ldelem.i4
		IL_003c: sub
		IL_003d: ble.s IL_0044

		IL_003f: call void System.ThrowHelper::ThrowArgumentOutOfRange_BadYearMonthDay()

		IL_0044: ldarg.0
		IL_0045: ldc.i4.1
		IL_0046: sub
		IL_0047: stloc.1
		IL_0048: ldloc.1
		IL_0049: ldc.i4 365
		IL_004e: mul
		IL_004f: ldloc.1
		IL_0050: ldc.i4.4
		IL_0051: div
		IL_0052: add
		IL_0053: ldloc.1
		IL_0054: ldc.i4.s 100
		IL_0056: div
		IL_0057: sub
		IL_0058: ldloc.1
		IL_0059: ldc.i4 400
		IL_005e: div
		IL_005f: add
		IL_0060: ldloc.0
		IL_0061: ldarg.1
		IL_0062: ldc.i4.1
		IL_0063: sub
		IL_0064: ldelem.i4
		IL_0065: add
		IL_0066: ldarg.2
		IL_0067: add
		IL_0068: ldc.i4.1
		IL_0069: sub
		IL_006a: stloc.2
		IL_006b: ldloc.2
		IL_006c: conv.i8
		IL_006d: ldc.i8 864000000000
		IL_0076: mul
		IL_0077: ret
	} // end of method DateTime::DateToTicks

	.method private hidebysig static 
		int64 TimeToTicks (
			int32 hour,
			int32 minute,
			int32 second
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x5ad98
		// Code size 29 (0x1d)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 24
		IL_0003: bge.un.s IL_000f

		IL_0005: ldarg.1
		IL_0006: ldc.i4.s 60
		IL_0008: bge.un.s IL_000f

		IL_000a: ldarg.2
		IL_000b: ldc.i4.s 60
		IL_000d: blt.un.s IL_0014

		IL_000f: call void System.ThrowHelper::ThrowArgumentOutOfRange_BadHourMinuteSecond()

		IL_0014: ldarg.0
		IL_0015: ldarg.1
		IL_0016: ldarg.2
		IL_0017: call int64 System.TimeSpan::TimeToTicks(int32, int32, int32)
		IL_001c: ret
	} // end of method DateTime::TimeToTicks

	.method public hidebysig static 
		int32 DaysInMonth (
			int32 year,
			int32 month
		) cil managed 
	{
		// Method begins at RVA 0x5adb8
		// Code size 56 (0x38)
		.maxstack 4
		.locals (
			[0] int32[]
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.1
		IL_0002: blt.s IL_0009

		IL_0004: ldarg.1
		IL_0005: ldc.i4.s 12
		IL_0007: ble.s IL_0019

		IL_0009: ldstr "month"
		IL_000e: call string System.SR::get_ArgumentOutOfRange_Month()
		IL_0013: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0018: throw

		IL_0019: ldarg.0
		IL_001a: call bool System.DateTime::IsLeapYear(int32)
		IL_001f: brtrue.s IL_0028

		IL_0021: ldsfld int32[] System.DateTime::s_daysToMonth365
		IL_0026: br.s IL_002d

		IL_0028: ldsfld int32[] System.DateTime::s_daysToMonth366

		IL_002d: stloc.0
		IL_002e: ldloc.0
		IL_002f: ldarg.1
		IL_0030: ldelem.i4
		IL_0031: ldloc.0
		IL_0032: ldarg.1
		IL_0033: ldc.i4.1
		IL_0034: sub
		IL_0035: ldelem.i4
		IL_0036: sub
		IL_0037: ret
	} // end of method DateTime::DaysInMonth

	.method assembly hidebysig static 
		int64 DoubleDateToTicks (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x5adfc
		// Code size 149 (0x95)
		.maxstack 3
		.locals (
			[0] int64
		)

		IL_0000: ldarg.0
		IL_0001: ldc.r8 2958466
		IL_000a: bge.un.s IL_0018

		IL_000c: ldarg.0
		IL_000d: ldc.r8 -657435
		IL_0016: bgt.s IL_0023

		IL_0018: call string System.SR::get_Arg_OleAutDateInvalid()
		IL_001d: newobj instance void System.ArgumentException::.ctor(string)
		IL_0022: throw

		IL_0023: ldarg.0
		IL_0024: ldc.r8 86400000
		IL_002d: mul
		IL_002e: ldarg.0
		IL_002f: ldc.r8 0.0
		IL_0038: bge.s IL_0045

		IL_003a: ldc.r8 -0.5
		IL_0043: br.s IL_004e

		IL_0045: ldc.r8 0.5

		IL_004e: add
		IL_004f: conv.i8
		IL_0050: stloc.0
		IL_0051: ldloc.0
		IL_0052: ldc.i4.0
		IL_0053: conv.i8
		IL_0054: bge.s IL_0064

		IL_0056: ldloc.0
		IL_0057: ldloc.0
		IL_0058: ldc.i4 86400000
		IL_005d: conv.i8
		IL_005e: rem
		IL_005f: ldc.i4.2
		IL_0060: conv.i8
		IL_0061: mul
		IL_0062: sub
		IL_0063: stloc.0

		IL_0064: ldloc.0
		IL_0065: ldc.i8 59926435200000
		IL_006e: add
		IL_006f: stloc.0
		IL_0070: ldloc.0
		IL_0071: ldc.i4.0
		IL_0072: conv.i8
		IL_0073: blt.s IL_0081

		IL_0075: ldloc.0
		IL_0076: ldc.i8 315537897600000
		IL_007f: blt.s IL_008c

		IL_0081: call string System.SR::get_Arg_OleAutDateScale()
		IL_0086: newobj instance void System.ArgumentException::.ctor(string)
		IL_008b: throw

		IL_008c: ldloc.0
		IL_008d: ldc.i4 10000
		IL_0092: conv.i8
		IL_0093: mul
		IL_0094: ret
	} // end of method DateTime::DoubleDateToTicks

	.method public hidebysig virtual 
		instance bool Equals (
			object 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x5aea0
		// Code size 33 (0x21)
		.maxstack 2
		.locals (
			[0] valuetype System.DateTime
		)

		IL_0000: ldarg.1
		IL_0001: isinst System.DateTime
		IL_0006: brfalse.s IL_001f

		IL_0008: ldarg.0
		IL_0009: call instance int64 System.DateTime::get_InternalTicks()
		IL_000e: ldarg.1
		IL_000f: unbox.any System.DateTime
		IL_0014: stloc.0
		IL_0015: ldloca.s 0
		IL_0017: call instance int64 System.DateTime::get_InternalTicks()
		IL_001c: ceq
		IL_001e: ret

		IL_001f: ldc.i4.0
		IL_0020: ret
	} // end of method DateTime::Equals

	.method public final hidebysig newslot virtual 
		instance bool Equals (
			valuetype System.DateTime 'value'
		) cil managed 
	{
		// Method begins at RVA 0x5aecd
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.DateTime::get_InternalTicks()
		IL_0006: ldarga.s 'value'
		IL_0008: call instance int64 System.DateTime::get_InternalTicks()
		IL_000d: ceq
		IL_000f: ret
	} // end of method DateTime::Equals

	.method public hidebysig static 
		bool Equals (
			valuetype System.DateTime t1,
			valuetype System.DateTime t2
		) cil managed 
	{
		// Method begins at RVA 0x5aede
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarga.s t1
		IL_0002: call instance int64 System.DateTime::get_InternalTicks()
		IL_0007: ldarga.s t2
		IL_0009: call instance int64 System.DateTime::get_InternalTicks()
		IL_000e: ceq
		IL_0010: ret
	} // end of method DateTime::Equals

	.method public hidebysig static 
		valuetype System.DateTime FromBinary (
			int64 dateData
		) cil managed 
	{
		// Method begins at RVA 0x5aef0
		// Code size 219 (0xdb)
		.maxstack 4
		.locals (
			[0] int64,
			[1] bool,
			[2] int64,
			[3] valuetype System.TimeSpan,
			[4] valuetype System.DateTime,
			[5] bool
		)

		IL_0000: ldarg.0
		IL_0001: ldc.i8 -9223372036854775808
		IL_000a: and
		IL_000b: brfalse IL_00d4

		IL_0010: ldarg.0
		IL_0011: ldc.i8 4611686018427387903
		IL_001a: and
		IL_001b: stloc.0
		IL_001c: ldloc.0
		IL_001d: ldc.i8 4611685154427387904
		IL_0026: ble.s IL_0034

		IL_0028: ldloc.0
		IL_0029: ldc.i8 4611686018427387904
		IL_0032: sub
		IL_0033: stloc.0

		IL_0034: ldc.i4.0
		IL_0035: stloc.1
		IL_0036: ldloc.0
		IL_0037: ldc.i4.0
		IL_0038: conv.i8
		IL_0039: bge.s IL_0051

		IL_003b: ldsfld valuetype System.DateTime System.DateTime::MinValue
		IL_0040: ldc.i4.2
		IL_0041: call valuetype System.TimeSpan System.TimeZoneInfo::GetLocalUtcOffset(valuetype System.DateTime, valuetype System.TimeZoneInfoOptions)
		IL_0046: stloc.3
		IL_0047: ldloca.s 3
		IL_0049: call instance int64 System.TimeSpan::get_Ticks()
		IL_004e: stloc.2
		IL_004f: br.s IL_0095

		IL_0051: ldloc.0
		IL_0052: ldc.i8 3155378975999999999
		IL_005b: ble.s IL_0073

		IL_005d: ldsfld valuetype System.DateTime System.DateTime::MaxValue
		IL_0062: ldc.i4.2
		IL_0063: call valuetype System.TimeSpan System.TimeZoneInfo::GetLocalUtcOffset(valuetype System.DateTime, valuetype System.TimeZoneInfoOptions)
		IL_0068: stloc.3
		IL_0069: ldloca.s 3
		IL_006b: call instance int64 System.TimeSpan::get_Ticks()
		IL_0070: stloc.2
		IL_0071: br.s IL_0095

		IL_0073: ldloca.s 4
		IL_0075: ldloc.0
		IL_0076: ldc.i4.1
		IL_0077: call instance void System.DateTime::.ctor(int64, valuetype System.DateTimeKind)
		IL_007c: ldloc.s 4
		IL_007e: call class System.TimeZoneInfo System.TimeZoneInfo::get_Local()
		IL_0083: ldloca.s 5
		IL_0085: ldloca.s 1
		IL_0087: call valuetype System.TimeSpan System.TimeZoneInfo::GetUtcOffsetFromUtc(valuetype System.DateTime, class System.TimeZoneInfo, bool&, bool&)
		IL_008c: stloc.3
		IL_008d: ldloca.s 3
		IL_008f: call instance int64 System.TimeSpan::get_Ticks()
		IL_0094: stloc.2

		IL_0095: ldloc.0
		IL_0096: ldloc.2
		IL_0097: add
		IL_0098: stloc.0
		IL_0099: ldloc.0
		IL_009a: ldc.i4.0
		IL_009b: conv.i8
		IL_009c: bge.s IL_00aa

		IL_009e: ldloc.0
		IL_009f: ldc.i8 864000000000
		IL_00a8: add
		IL_00a9: stloc.0

		IL_00aa: ldloc.0
		IL_00ab: ldc.i4.0
		IL_00ac: conv.i8
		IL_00ad: blt.s IL_00bb

		IL_00af: ldloc.0
		IL_00b0: ldc.i8 3155378975999999999
		IL_00b9: ble.s IL_00cb

		IL_00bb: call string System.SR::get_Argument_DateTimeBadBinaryData()
		IL_00c0: ldstr "dateData"
		IL_00c5: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_00ca: throw

		IL_00cb: ldloc.0
		IL_00cc: ldc.i4.2
		IL_00cd: ldloc.1
		IL_00ce: newobj instance void System.DateTime::.ctor(int64, valuetype System.DateTimeKind, bool)
		IL_00d3: ret

		IL_00d4: ldarg.0
		IL_00d5: call valuetype System.DateTime System.DateTime::FromBinaryRaw(int64)
		IL_00da: ret
	} // end of method DateTime::FromBinary

	.method assembly hidebysig static 
		valuetype System.DateTime FromBinaryRaw (
			int64 dateData
		) cil managed 
	{
		// Method begins at RVA 0x5afd8
		// Code size 52 (0x34)
		.maxstack 2
		.locals (
			[0] int64
		)

		IL_0000: ldarg.0
		IL_0001: ldc.i8 4611686018427387903
		IL_000a: and
		IL_000b: stloc.0
		IL_000c: ldloc.0
		IL_000d: ldc.i4.0
		IL_000e: conv.i8
		IL_000f: blt.s IL_001d

		IL_0011: ldloc.0
		IL_0012: ldc.i8 3155378975999999999
		IL_001b: ble.s IL_002d

		IL_001d: call string System.SR::get_Argument_DateTimeBadBinaryData()
		IL_0022: ldstr "dateData"
		IL_0027: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_002c: throw

		IL_002d: ldarg.0
		IL_002e: newobj instance void System.DateTime::.ctor(uint64)
		IL_0033: ret
	} // end of method DateTime::FromBinaryRaw

	.method public hidebysig static 
		valuetype System.DateTime FromFileTime (
			int64 fileTime
		) cil managed 
	{
		// Method begins at RVA 0x5b018
		// Code size 15 (0xf)
		.maxstack 1
		.locals (
			[0] valuetype System.DateTime
		)

		IL_0000: ldarg.0
		IL_0001: call valuetype System.DateTime System.DateTime::FromFileTimeUtc(int64)
		IL_0006: stloc.0
		IL_0007: ldloca.s 0
		IL_0009: call instance valuetype System.DateTime System.DateTime::ToLocalTime()
		IL_000e: ret
	} // end of method DateTime::FromFileTime

	.method public hidebysig static 
		valuetype System.DateTime FromFileTimeUtc (
			int64 fileTime
		) cil managed 
	{
		// Method begins at RVA 0x5b034
		// Code size 67 (0x43)
		.maxstack 2
		.locals (
			[0] int64
		)

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: conv.i8
		IL_0003: blt.s IL_0011

		IL_0005: ldarg.0
		IL_0006: ldc.i8 2650467743999999999
		IL_000f: ble.s IL_0021

		IL_0011: ldstr "fileTime"
		IL_0016: call string System.SR::get_ArgumentOutOfRange_FileTimeInvalid()
		IL_001b: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0020: throw

		IL_0021: ldsfld bool System.DateTime::s_systemSupportsLeapSeconds
		IL_0026: brfalse.s IL_002f

		IL_0028: ldarg.0
		IL_0029: call valuetype System.DateTime System.DateTime::FromFileTimeLeapSecondsAware(int64)
		IL_002e: ret

		IL_002f: ldarg.0
		IL_0030: ldc.i8 504911232000000000
		IL_0039: add
		IL_003a: stloc.0
		IL_003b: ldloc.0
		IL_003c: ldc.i4.1
		IL_003d: newobj instance void System.DateTime::.ctor(int64, valuetype System.DateTimeKind)
		IL_0042: ret
	} // end of method DateTime::FromFileTimeUtc

	.method public hidebysig static 
		valuetype System.DateTime FromOADate (
			float64 d
		) cil managed 
	{
		// Method begins at RVA 0x5b083
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call int64 System.DateTime::DoubleDateToTicks(float64)
		IL_0006: ldc.i4.0
		IL_0007: newobj instance void System.DateTime::.ctor(int64, valuetype System.DateTimeKind)
		IL_000c: ret
	} // end of method DateTime::FromOADate

	.method private final hidebysig newslot virtual 
		instance void System.Runtime.Serialization.ISerializable.GetObjectData (
			class System.Runtime.Serialization.SerializationInfo info,
			valuetype System.Runtime.Serialization.StreamingContext context
		) cil managed 
	{
		.override method instance void System.Runtime.Serialization.ISerializable::GetObjectData(class System.Runtime.Serialization.SerializationInfo, valuetype System.Runtime.Serialization.StreamingContext)
		// Method begins at RVA 0x5b091
		// Code size 49 (0x31)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "info"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.1
		IL_000f: ldstr "ticks"
		IL_0014: ldarg.0
		IL_0015: call instance int64 System.DateTime::get_InternalTicks()
		IL_001a: callvirt instance void System.Runtime.Serialization.SerializationInfo::AddValue(string, int64)
		IL_001f: ldarg.1
		IL_0020: ldstr "dateData"
		IL_0025: ldarg.0
		IL_0026: ldfld uint64 System.DateTime::_dateData
		IL_002b: callvirt instance void System.Runtime.Serialization.SerializationInfo::AddValue(string, uint64)
		IL_0030: ret
	} // end of method DateTime::System.Runtime.Serialization.ISerializable.GetObjectData

	.method public hidebysig 
		instance bool IsDaylightSavingTime () cil managed 
	{
		// Method begins at RVA 0x5b0c3
		// Code size 29 (0x1d)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance valuetype System.DateTimeKind System.DateTime::get_Kind()
		IL_0006: ldc.i4.1
		IL_0007: bne.un.s IL_000b

		IL_0009: ldc.i4.0
		IL_000a: ret

		IL_000b: call class System.TimeZoneInfo System.TimeZoneInfo::get_Local()
		IL_0010: ldarg.0
		IL_0011: ldobj System.DateTime
		IL_0016: ldc.i4.2
		IL_0017: callvirt instance bool System.TimeZoneInfo::IsDaylightSavingTime(valuetype System.DateTime, valuetype System.TimeZoneInfoOptions)
		IL_001c: ret
	} // end of method DateTime::IsDaylightSavingTime

	.method public hidebysig static 
		valuetype System.DateTime SpecifyKind (
			valuetype System.DateTime 'value',
			valuetype System.DateTimeKind kind
		) cil managed 
	{
		// Method begins at RVA 0x5b0e1
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call instance int64 System.DateTime::get_InternalTicks()
		IL_0007: ldarg.1
		IL_0008: newobj instance void System.DateTime::.ctor(int64, valuetype System.DateTimeKind)
		IL_000d: ret
	} // end of method DateTime::SpecifyKind

	.method public hidebysig 
		instance int64 ToBinary () cil managed 
	{
		// Method begins at RVA 0x5b0f0
		// Code size 75 (0x4b)
		.maxstack 2
		.locals (
			[0] valuetype System.TimeSpan,
			[1] int64,
			[2] int64
		)

		IL_0000: ldarg.0
		IL_0001: call instance valuetype System.DateTimeKind System.DateTime::get_Kind()
		IL_0006: ldc.i4.2
		IL_0007: bne.un.s IL_0044

		IL_0009: ldarg.0
		IL_000a: ldobj System.DateTime
		IL_000f: ldc.i4.2
		IL_0010: call valuetype System.TimeSpan System.TimeZoneInfo::GetLocalUtcOffset(valuetype System.DateTime, valuetype System.TimeZoneInfoOptions)
		IL_0015: stloc.0
		IL_0016: ldarg.0
		IL_0017: call instance int64 System.DateTime::get_Ticks()
		IL_001c: stloc.1
		IL_001d: ldloc.1
		IL_001e: ldloca.s 0
		IL_0020: call instance int64 System.TimeSpan::get_Ticks()
		IL_0025: sub
		IL_0026: stloc.2
		IL_0027: ldloc.2
		IL_0028: ldc.i4.0
		IL_0029: conv.i8
		IL_002a: bge.s IL_0038

		IL_002c: ldc.i8 4611686018427387904
		IL_0035: ldloc.2
		IL_0036: add
		IL_0037: stloc.2

		IL_0038: ldloc.2
		IL_0039: ldc.i8 -9223372036854775808
		IL_0042: or
		IL_0043: ret

		IL_0044: ldarg.0
		IL_0045: ldfld uint64 System.DateTime::_dateData
		IL_004a: ret
	} // end of method DateTime::ToBinary

	.method public hidebysig specialname 
		instance valuetype System.DateTime get_Date () cil managed 
	{
		// Method begins at RVA 0x5b148
		// Code size 33 (0x21)
		.maxstack 3
		.locals (
			[0] int64
		)

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.DateTime::get_InternalTicks()
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldloc.0
		IL_0009: ldc.i8 864000000000
		IL_0012: rem
		IL_0013: sub
		IL_0014: ldarg.0
		IL_0015: call instance uint64 System.DateTime::get_InternalKind()
		IL_001a: or
		IL_001b: newobj instance void System.DateTime::.ctor(uint64)
		IL_0020: ret
	} // end of method DateTime::get_Date

	.method private hidebysig 
		instance int32 GetDatePart (
			int32 part
		) cil managed 
	{
		// Method begins at RVA 0x5b178
		// Code size 227 (0xe3)
		.maxstack 4
		.locals (
			[0] int64,
			[1] int32,
			[2] int32,
			[3] int32,
			[4] int32,
			[5] int32,
			[6] bool,
			[7] int32[],
			[8] int32
		)

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.DateTime::get_InternalTicks()
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldc.i8 864000000000
		IL_0011: div
		IL_0012: conv.i4
		IL_0013: stloc.1
		IL_0014: ldloc.1
		IL_0015: ldc.i4 146097
		IL_001a: div
		IL_001b: stloc.2
		IL_001c: ldloc.1
		IL_001d: ldloc.2
		IL_001e: ldc.i4 146097
		IL_0023: mul
		IL_0024: sub
		IL_0025: stloc.1
		IL_0026: ldloc.1
		IL_0027: ldc.i4 36524
		IL_002c: div
		IL_002d: stloc.3
		IL_002e: ldloc.3
		IL_002f: ldc.i4.4
		IL_0030: bne.un.s IL_0034

		IL_0032: ldc.i4.3
		IL_0033: stloc.3

		IL_0034: ldloc.1
		IL_0035: ldloc.3
		IL_0036: ldc.i4 36524
		IL_003b: mul
		IL_003c: sub
		IL_003d: stloc.1
		IL_003e: ldloc.1
		IL_003f: ldc.i4 1461
		IL_0044: div
		IL_0045: stloc.s 4
		IL_0047: ldloc.1
		IL_0048: ldloc.s 4
		IL_004a: ldc.i4 1461
		IL_004f: mul
		IL_0050: sub
		IL_0051: stloc.1
		IL_0052: ldloc.1
		IL_0053: ldc.i4 365
		IL_0058: div
		IL_0059: stloc.s 5
		IL_005b: ldloc.s 5
		IL_005d: ldc.i4.4
		IL_005e: bne.un.s IL_0063

		IL_0060: ldc.i4.3
		IL_0061: stloc.s 5

		IL_0063: ldarg.1
		IL_0064: brtrue.s IL_007d

		IL_0066: ldloc.2
		IL_0067: ldc.i4 400
		IL_006c: mul
		IL_006d: ldloc.3
		IL_006e: ldc.i4.s 100
		IL_0070: mul
		IL_0071: add
		IL_0072: ldloc.s 4
		IL_0074: ldc.i4.4
		IL_0075: mul
		IL_0076: add
		IL_0077: ldloc.s 5
		IL_0079: add
		IL_007a: ldc.i4.1
		IL_007b: add
		IL_007c: ret

		IL_007d: ldloc.1
		IL_007e: ldloc.s 5
		IL_0080: ldc.i4 365
		IL_0085: mul
		IL_0086: sub
		IL_0087: stloc.1
		IL_0088: ldarg.1
		IL_0089: ldc.i4.1
		IL_008a: bne.un.s IL_0090

		IL_008c: ldloc.1
		IL_008d: ldc.i4.1
		IL_008e: add
		IL_008f: ret

		IL_0090: ldloc.s 5
		IL_0092: ldc.i4.3
		IL_0093: bne.un.s IL_00a4

		IL_0095: ldloc.s 4
		IL_0097: ldc.i4.s 24
		IL_0099: bne.un.s IL_00a1

		IL_009b: ldloc.3
		IL_009c: ldc.i4.3
		IL_009d: ceq
		IL_009f: br.s IL_00a5

		IL_00a1: ldc.i4.1
		IL_00a2: br.s IL_00a5

		IL_00a4: ldc.i4.0

		IL_00a5: stloc.s 6
		IL_00a7: ldloc.s 6
		IL_00a9: brtrue.s IL_00b2

		IL_00ab: ldsfld int32[] System.DateTime::s_daysToMonth365
		IL_00b0: br.s IL_00b7

		IL_00b2: ldsfld int32[] System.DateTime::s_daysToMonth366

		IL_00b7: stloc.s 7
		IL_00b9: ldloc.1
		IL_00ba: ldc.i4.5
		IL_00bb: shr
		IL_00bc: ldc.i4.1
		IL_00bd: add
		IL_00be: stloc.s 8
		IL_00c0: br.s IL_00c8
		// loop start (head: IL_00c8)
			IL_00c2: ldloc.s 8
			IL_00c4: ldc.i4.1
			IL_00c5: add
			IL_00c6: stloc.s 8

			IL_00c8: ldloc.1
			IL_00c9: ldloc.s 7
			IL_00cb: ldloc.s 8
			IL_00cd: ldelem.i4
			IL_00ce: bge.s IL_00c2
		// end loop

		IL_00d0: ldarg.1
		IL_00d1: ldc.i4.2
		IL_00d2: bne.un.s IL_00d7

		IL_00d4: ldloc.s 8
		IL_00d6: ret

		IL_00d7: ldloc.1
		IL_00d8: ldloc.s 7
		IL_00da: ldloc.s 8
		IL_00dc: ldc.i4.1
		IL_00dd: sub
		IL_00de: ldelem.i4
		IL_00df: sub
		IL_00e0: ldc.i4.1
		IL_00e1: add
		IL_00e2: ret
	} // end of method DateTime::GetDatePart

	.method assembly hidebysig 
		instance void GetDate (
			[out] int32& year,
			[out] int32& month,
			[out] int32& day
		) cil managed 
	{
		// Method begins at RVA 0x5b268
		// Code size 216 (0xd8)
		.maxstack 5
		.locals (
			[0] int64,
			[1] int32,
			[2] int32,
			[3] int32,
			[4] int32,
			[5] int32,
			[6] bool,
			[7] int32[],
			[8] int32
		)

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.DateTime::get_InternalTicks()
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldc.i8 864000000000
		IL_0011: div
		IL_0012: conv.i4
		IL_0013: stloc.1
		IL_0014: ldloc.1
		IL_0015: ldc.i4 146097
		IL_001a: div
		IL_001b: stloc.2
		IL_001c: ldloc.1
		IL_001d: ldloc.2
		IL_001e: ldc.i4 146097
		IL_0023: mul
		IL_0024: sub
		IL_0025: stloc.1
		IL_0026: ldloc.1
		IL_0027: ldc.i4 36524
		IL_002c: div
		IL_002d: stloc.3
		IL_002e: ldloc.3
		IL_002f: ldc.i4.4
		IL_0030: bne.un.s IL_0034

		IL_0032: ldc.i4.3
		IL_0033: stloc.3

		IL_0034: ldloc.1
		IL_0035: ldloc.3
		IL_0036: ldc.i4 36524
		IL_003b: mul
		IL_003c: sub
		IL_003d: stloc.1
		IL_003e: ldloc.1
		IL_003f: ldc.i4 1461
		IL_0044: div
		IL_0045: stloc.s 4
		IL_0047: ldloc.1
		IL_0048: ldloc.s 4
		IL_004a: ldc.i4 1461
		IL_004f: mul
		IL_0050: sub
		IL_0051: stloc.1
		IL_0052: ldloc.1
		IL_0053: ldc.i4 365
		IL_0058: div
		IL_0059: stloc.s 5
		IL_005b: ldloc.s 5
		IL_005d: ldc.i4.4
		IL_005e: bne.un.s IL_0063

		IL_0060: ldc.i4.3
		IL_0061: stloc.s 5

		IL_0063: ldarg.1
		IL_0064: ldloc.2
		IL_0065: ldc.i4 400
		IL_006a: mul
		IL_006b: ldloc.3
		IL_006c: ldc.i4.s 100
		IL_006e: mul
		IL_006f: add
		IL_0070: ldloc.s 4
		IL_0072: ldc.i4.4
		IL_0073: mul
		IL_0074: add
		IL_0075: ldloc.s 5
		IL_0077: add
		IL_0078: ldc.i4.1
		IL_0079: add
		IL_007a: stind.i4
		IL_007b: ldloc.1
		IL_007c: ldloc.s 5
		IL_007e: ldc.i4 365
		IL_0083: mul
		IL_0084: sub
		IL_0085: stloc.1
		IL_0086: ldloc.s 5
		IL_0088: ldc.i4.3
		IL_0089: bne.un.s IL_009a

		IL_008b: ldloc.s 4
		IL_008d: ldc.i4.s 24
		IL_008f: bne.un.s IL_0097

		IL_0091: ldloc.3
		IL_0092: ldc.i4.3
		IL_0093: ceq
		IL_0095: br.s IL_009b

		IL_0097: ldc.i4.1
		IL_0098: br.s IL_009b

		IL_009a: ldc.i4.0

		IL_009b: stloc.s 6
		IL_009d: ldloc.s 6
		IL_009f: brtrue.s IL_00a8

		IL_00a1: ldsfld int32[] System.DateTime::s_daysToMonth365
		IL_00a6: br.s IL_00ad

		IL_00a8: ldsfld int32[] System.DateTime::s_daysToMonth366

		IL_00ad: stloc.s 7
		IL_00af: ldloc.1
		IL_00b0: ldc.i4.5
		IL_00b1: shr
		IL_00b2: ldc.i4.1
		IL_00b3: add
		IL_00b4: stloc.s 8
		IL_00b6: br.s IL_00be
		// loop start (head: IL_00be)
			IL_00b8: ldloc.s 8
			IL_00ba: ldc.i4.1
			IL_00bb: add
			IL_00bc: stloc.s 8

			IL_00be: ldloc.1
			IL_00bf: ldloc.s 7
			IL_00c1: ldloc.s 8
			IL_00c3: ldelem.i4
			IL_00c4: bge.s IL_00b8
		// end loop

		IL_00c6: ldarg.2
		IL_00c7: ldloc.s 8
		IL_00c9: stind.i4
		IL_00ca: ldarg.3
		IL_00cb: ldloc.1
		IL_00cc: ldloc.s 7
		IL_00ce: ldloc.s 8
		IL_00d0: ldc.i4.1
		IL_00d1: sub
		IL_00d2: ldelem.i4
		IL_00d3: sub
		IL_00d4: ldc.i4.1
		IL_00d5: add
		IL_00d6: stind.i4
		IL_00d7: ret
	} // end of method DateTime::GetDate

	.method assembly hidebysig 
		instance void GetTime (
			[out] int32& hour,
			[out] int32& minute,
			[out] int32& second
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x5b34c
		// Code size 55 (0x37)
		.maxstack 3
		.locals (
			[0] int64,
			[1] int64
		)

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.DateTime::get_InternalTicks()
		IL_0006: ldc.i4 10000000
		IL_000b: conv.i8
		IL_000c: div
		IL_000d: stloc.0
		IL_000e: ldloc.0
		IL_000f: ldc.i4.s 60
		IL_0011: conv.i8
		IL_0012: ldloca.s 1
		IL_0014: call int64 System.Math::DivRem(int64, int64, int64&)
		IL_0019: stloc.0
		IL_001a: ldarg.3
		IL_001b: ldloc.1
		IL_001c: conv.i4
		IL_001d: stind.i4
		IL_001e: ldloc.0
		IL_001f: ldc.i4.s 60
		IL_0021: conv.i8
		IL_0022: ldloca.s 1
		IL_0024: call int64 System.Math::DivRem(int64, int64, int64&)
		IL_0029: stloc.0
		IL_002a: ldarg.2
		IL_002b: ldloc.1
		IL_002c: conv.i4
		IL_002d: stind.i4
		IL_002e: ldarg.1
		IL_002f: ldloc.0
		IL_0030: ldc.i4.s 24
		IL_0032: conv.i8
		IL_0033: rem
		IL_0034: conv.i4
		IL_0035: stind.i4
		IL_0036: ret
	} // end of method DateTime::GetTime

	.method assembly hidebysig 
		instance void GetTime (
			[out] int32& hour,
			[out] int32& minute,
			[out] int32& second,
			[out] int32& millisecond
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x5b390
		// Code size 75 (0x4b)
		.maxstack 3
		.locals (
			[0] int64,
			[1] int64
		)

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.DateTime::get_InternalTicks()
		IL_0006: ldc.i4 10000
		IL_000b: conv.i8
		IL_000c: div
		IL_000d: stloc.0
		IL_000e: ldloc.0
		IL_000f: ldc.i4 1000
		IL_0014: conv.i8
		IL_0015: ldloca.s 1
		IL_0017: call int64 System.Math::DivRem(int64, int64, int64&)
		IL_001c: stloc.0
		IL_001d: ldarg.s millisecond
		IL_001f: ldloc.1
		IL_0020: conv.i4
		IL_0021: stind.i4
		IL_0022: ldloc.0
		IL_0023: ldc.i4.s 60
		IL_0025: conv.i8
		IL_0026: ldloca.s 1
		IL_0028: call int64 System.Math::DivRem(int64, int64, int64&)
		IL_002d: stloc.0
		IL_002e: ldarg.3
		IL_002f: ldloc.1
		IL_0030: conv.i4
		IL_0031: stind.i4
		IL_0032: ldloc.0
		IL_0033: ldc.i4.s 60
		IL_0035: conv.i8
		IL_0036: ldloca.s 1
		IL_0038: call int64 System.Math::DivRem(int64, int64, int64&)
		IL_003d: stloc.0
		IL_003e: ldarg.2
		IL_003f: ldloc.1
		IL_0040: conv.i4
		IL_0041: stind.i4
		IL_0042: ldarg.1
		IL_0043: ldloc.0
		IL_0044: ldc.i4.s 24
		IL_0046: conv.i8
		IL_0047: rem
		IL_0048: conv.i4
		IL_0049: stind.i4
		IL_004a: ret
	} // end of method DateTime::GetTime

	.method assembly hidebysig 
		instance void GetTimePrecise (
			[out] int32& hour,
			[out] int32& minute,
			[out] int32& second,
			[out] int32& tick
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x5b3e8
		// Code size 66 (0x42)
		.maxstack 3
		.locals (
			[0] int64,
			[1] int64
		)

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.DateTime::get_InternalTicks()
		IL_0006: ldc.i4 10000000
		IL_000b: conv.i8
		IL_000c: ldloca.s 1
		IL_000e: call int64 System.Math::DivRem(int64, int64, int64&)
		IL_0013: stloc.0
		IL_0014: ldarg.s tick
		IL_0016: ldloc.1
		IL_0017: conv.i4
		IL_0018: stind.i4
		IL_0019: ldloc.0
		IL_001a: ldc.i4.s 60
		IL_001c: conv.i8
		IL_001d: ldloca.s 1
		IL_001f: call int64 System.Math::DivRem(int64, int64, int64&)
		IL_0024: stloc.0
		IL_0025: ldarg.3
		IL_0026: ldloc.1
		IL_0027: conv.i4
		IL_0028: stind.i4
		IL_0029: ldloc.0
		IL_002a: ldc.i4.s 60
		IL_002c: conv.i8
		IL_002d: ldloca.s 1
		IL_002f: call int64 System.Math::DivRem(int64, int64, int64&)
		IL_0034: stloc.0
		IL_0035: ldarg.2
		IL_0036: ldloc.1
		IL_0037: conv.i4
		IL_0038: stind.i4
		IL_0039: ldarg.1
		IL_003a: ldloc.0
		IL_003b: ldc.i4.s 24
		IL_003d: conv.i8
		IL_003e: rem
		IL_003f: conv.i4
		IL_0040: stind.i4
		IL_0041: ret
	} // end of method DateTime::GetTimePrecise

	.method public hidebysig specialname 
		instance int32 get_Day () cil managed 
	{
		// Method begins at RVA 0x5b436
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.3
		IL_0002: call instance int32 System.DateTime::GetDatePart(int32)
		IL_0007: ret
	} // end of method DateTime::get_Day

	.method public hidebysig specialname 
		instance valuetype System.DayOfWeek get_DayOfWeek () cil managed 
	{
		// Method begins at RVA 0x5b43f
		// Code size 24 (0x18)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.DateTime::get_InternalTicks()
		IL_0006: ldc.i8 864000000000
		IL_000f: div
		IL_0010: ldc.i4.1
		IL_0011: conv.i8
		IL_0012: add
		IL_0013: ldc.i4.7
		IL_0014: conv.i8
		IL_0015: rem
		IL_0016: conv.i4
		IL_0017: ret
	} // end of method DateTime::get_DayOfWeek

	.method public hidebysig specialname 
		instance int32 get_DayOfYear () cil managed 
	{
		// Method begins at RVA 0x5b458
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.1
		IL_0002: call instance int32 System.DateTime::GetDatePart(int32)
		IL_0007: ret
	} // end of method DateTime::get_DayOfYear

	.method public hidebysig virtual 
		instance int32 GetHashCode () cil managed 
	{
		// Method begins at RVA 0x5b464
		// Code size 16 (0x10)
		.maxstack 3
		.locals (
			[0] int64
		)

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.DateTime::get_InternalTicks()
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: conv.i4
		IL_0009: ldloc.0
		IL_000a: ldc.i4.s 32
		IL_000c: shr
		IL_000d: conv.i4
		IL_000e: xor
		IL_000f: ret
	} // end of method DateTime::GetHashCode

	.method public hidebysig specialname 
		instance int32 get_Hour () cil managed 
	{
		// Method begins at RVA 0x5b480
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.DateTime::get_InternalTicks()
		IL_0006: ldc.i8 36000000000
		IL_000f: div
		IL_0010: ldc.i4.s 24
		IL_0012: conv.i8
		IL_0013: rem
		IL_0014: conv.i4
		IL_0015: ret
	} // end of method DateTime::get_Hour

	.method assembly hidebysig 
		instance bool IsAmbiguousDaylightSavingTime () cil managed 
	{
		// Method begins at RVA 0x5b497
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance uint64 System.DateTime::get_InternalKind()
		IL_0006: ldc.i8 -4611686018427387904
		IL_000f: ceq
		IL_0011: ret
	} // end of method DateTime::IsAmbiguousDaylightSavingTime

	.method public hidebysig specialname 
		instance valuetype System.DateTimeKind get_Kind () cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x5b4ac
		// Code size 36 (0x24)
		.maxstack 2
		.locals (
			[0] valuetype System.DateTimeKind,
			[1] uint64
		)

		IL_0000: ldarg.0
		IL_0001: call instance uint64 System.DateTime::get_InternalKind()
		IL_0006: stloc.1
		IL_0007: ldloc.1
		IL_0008: brfalse.s IL_0018

		IL_000a: ldloc.1
		IL_000b: ldc.i8 4611686018427387904
		IL_0014: beq.s IL_001c

		IL_0016: br.s IL_0020

		IL_0018: ldc.i4.0
		IL_0019: stloc.0
		IL_001a: br.s IL_0022

		IL_001c: ldc.i4.1
		IL_001d: stloc.0
		IL_001e: br.s IL_0022

		IL_0020: ldc.i4.2
		IL_0021: stloc.0

		IL_0022: ldloc.0
		IL_0023: ret
	} // end of method DateTime::get_Kind

	.method public hidebysig specialname 
		instance int32 get_Millisecond () cil managed 
	{
		// Method begins at RVA 0x5b4dc
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.DateTime::get_InternalTicks()
		IL_0006: ldc.i4 10000
		IL_000b: conv.i8
		IL_000c: div
		IL_000d: ldc.i4 1000
		IL_0012: conv.i8
		IL_0013: rem
		IL_0014: conv.i4
		IL_0015: ret
	} // end of method DateTime::get_Millisecond

	.method public hidebysig specialname 
		instance int32 get_Minute () cil managed 
	{
		// Method begins at RVA 0x5b4f3
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.DateTime::get_InternalTicks()
		IL_0006: ldc.i4 600000000
		IL_000b: conv.i8
		IL_000c: div
		IL_000d: ldc.i4.s 60
		IL_000f: conv.i8
		IL_0010: rem
		IL_0011: conv.i4
		IL_0012: ret
	} // end of method DateTime::get_Minute

	.method public hidebysig specialname 
		instance int32 get_Month () cil managed 
	{
		// Method begins at RVA 0x5b507
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.2
		IL_0002: call instance int32 System.DateTime::GetDatePart(int32)
		IL_0007: ret
	} // end of method DateTime::get_Month

	.method public hidebysig specialname static 
		valuetype System.DateTime get_Now () cil managed 
	{
		// Method begins at RVA 0x5b510
		// Code size 85 (0x55)
		.maxstack 3
		.locals (
			[0] valuetype System.DateTime,
			[1] int64,
			[2] bool,
			[3] int64,
			[4] valuetype System.TimeSpan
		)

		IL_0000: call valuetype System.DateTime System.DateTime::get_UtcNow()
		IL_0005: stloc.0
		IL_0006: ldloc.0
		IL_0007: ldloca.s 2
		IL_0009: call valuetype System.TimeSpan System.TimeZoneInfo::GetDateTimeNowUtcOffsetFromUtc(valuetype System.DateTime, bool&)
		IL_000e: stloc.s 4
		IL_0010: ldloca.s 4
		IL_0012: call instance int64 System.TimeSpan::get_Ticks()
		IL_0017: stloc.1
		IL_0018: ldloca.s 0
		IL_001a: call instance int64 System.DateTime::get_Ticks()
		IL_001f: ldloc.1
		IL_0020: add
		IL_0021: stloc.3
		IL_0022: ldloc.3
		IL_0023: ldc.i8 3155378975999999999
		IL_002c: ble.s IL_003e

		IL_002e: ldc.i8 3155378975999999999
		IL_0037: ldc.i4.2
		IL_0038: newobj instance void System.DateTime::.ctor(int64, valuetype System.DateTimeKind)
		IL_003d: ret

		IL_003e: ldloc.3
		IL_003f: ldc.i4.0
		IL_0040: conv.i8
		IL_0041: bge.s IL_004c

		IL_0043: ldc.i4.0
		IL_0044: conv.i8
		IL_0045: ldc.i4.2
		IL_0046: newobj instance void System.DateTime::.ctor(int64, valuetype System.DateTimeKind)
		IL_004b: ret

		IL_004c: ldloc.3
		IL_004d: ldc.i4.2
		IL_004e: ldloc.2
		IL_004f: newobj instance void System.DateTime::.ctor(int64, valuetype System.DateTimeKind, bool)
		IL_0054: ret
	} // end of method DateTime::get_Now

	.method public hidebysig specialname 
		instance int32 get_Second () cil managed 
	{
		// Method begins at RVA 0x5b571
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.DateTime::get_InternalTicks()
		IL_0006: ldc.i4 10000000
		IL_000b: conv.i8
		IL_000c: div
		IL_000d: ldc.i4.s 60
		IL_000f: conv.i8
		IL_0010: rem
		IL_0011: conv.i4
		IL_0012: ret
	} // end of method DateTime::get_Second

	.method public hidebysig specialname 
		instance int64 get_Ticks () cil managed 
	{
		// Method begins at RVA 0x5b585
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.DateTime::get_InternalTicks()
		IL_0006: ret
	} // end of method DateTime::get_Ticks

	.method public hidebysig specialname 
		instance valuetype System.TimeSpan get_TimeOfDay () cil managed 
	{
		// Method begins at RVA 0x5b58d
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.DateTime::get_InternalTicks()
		IL_0006: ldc.i8 864000000000
		IL_000f: rem
		IL_0010: newobj instance void System.TimeSpan::.ctor(int64)
		IL_0015: ret
	} // end of method DateTime::get_TimeOfDay

	.method public hidebysig specialname static 
		valuetype System.DateTime get_Today () cil managed 
	{
		// Method begins at RVA 0x5b5a4
		// Code size 14 (0xe)
		.maxstack 1
		.locals (
			[0] valuetype System.DateTime
		)

		IL_0000: call valuetype System.DateTime System.DateTime::get_Now()
		IL_0005: stloc.0
		IL_0006: ldloca.s 0
		IL_0008: call instance valuetype System.DateTime System.DateTime::get_Date()
		IL_000d: ret
	} // end of method DateTime::get_Today

	.method public hidebysig specialname 
		instance int32 get_Year () cil managed 
	{
		// Method begins at RVA 0x5b5be
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: call instance int32 System.DateTime::GetDatePart(int32)
		IL_0007: ret
	} // end of method DateTime::get_Year

	.method public hidebysig static 
		bool IsLeapYear (
			int32 year
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x5b5c7
		// Code size 40 (0x28)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.1
		IL_0002: blt.s IL_000c

		IL_0004: ldarg.0
		IL_0005: ldc.i4 9999
		IL_000a: ble.s IL_0011

		IL_000c: call void System.ThrowHelper::ThrowArgumentOutOfRange_Year()

		IL_0011: ldarg.0
		IL_0012: ldc.i4.3
		IL_0013: and
		IL_0014: brtrue.s IL_0026

		IL_0016: ldarg.0
		IL_0017: ldc.i4.s 15
		IL_0019: and
		IL_001a: brfalse.s IL_0024

		IL_001c: ldarg.0
		IL_001d: ldc.i4.s 25
		IL_001f: rem
		IL_0020: ldc.i4.0
		IL_0021: cgt.un
		IL_0023: ret

		IL_0024: ldc.i4.1
		IL_0025: ret

		IL_0026: ldc.i4.0
		IL_0027: ret
	} // end of method DateTime::IsLeapYear

	.method public hidebysig static 
		valuetype System.DateTime Parse (
			string s
		) cil managed 
	{
		// Method begins at RVA 0x5b5f0
		// Code size 28 (0x1c)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 17
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0010: call class System.Globalization.DateTimeFormatInfo System.Globalization.DateTimeFormatInfo::get_CurrentInfo()
		IL_0015: ldc.i4.0
		IL_0016: call valuetype System.DateTime System.DateTimeParse::Parse(valuetype System.ReadOnlySpan`1<char>, class System.Globalization.DateTimeFormatInfo, valuetype System.Globalization.DateTimeStyles)
		IL_001b: ret
	} // end of method DateTime::Parse

	.method public hidebysig static 
		valuetype System.DateTime Parse (
			string s,
			class System.IFormatProvider provider
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x5b60d
		// Code size 29 (0x1d)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 17
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0010: ldarg.1
		IL_0011: call class System.Globalization.DateTimeFormatInfo System.Globalization.DateTimeFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0016: ldc.i4.0
		IL_0017: call valuetype System.DateTime System.DateTimeParse::Parse(valuetype System.ReadOnlySpan`1<char>, class System.Globalization.DateTimeFormatInfo, valuetype System.Globalization.DateTimeStyles)
		IL_001c: ret
	} // end of method DateTime::Parse

	.method public hidebysig static 
		valuetype System.DateTime Parse (
			string s,
			class System.IFormatProvider provider,
			valuetype System.Globalization.DateTimeStyles styles
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x5b62b
		// Code size 40 (0x28)
		.maxstack 8

		IL_0000: ldarg.2
		IL_0001: ldstr "styles"
		IL_0006: call void System.Globalization.DateTimeFormatInfo::ValidateStyles(valuetype System.Globalization.DateTimeStyles, string)
		IL_000b: ldarg.0
		IL_000c: brtrue.s IL_0015

		IL_000e: ldc.i4.s 17
		IL_0010: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0015: ldarg.0
		IL_0016: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_001b: ldarg.1
		IL_001c: call class System.Globalization.DateTimeFormatInfo System.Globalization.DateTimeFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0021: ldarg.2
		IL_0022: call valuetype System.DateTime System.DateTimeParse::Parse(valuetype System.ReadOnlySpan`1<char>, class System.Globalization.DateTimeFormatInfo, valuetype System.Globalization.DateTimeStyles)
		IL_0027: ret
	} // end of method DateTime::Parse

	.method public hidebysig static 
		valuetype System.DateTime Parse (
			valuetype System.ReadOnlySpan`1<char> s,
			[opt] class System.IFormatProvider provider,
			[opt] valuetype System.Globalization.DateTimeStyles styles
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.param [2] = nullref
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [3] = int32(0)
		// Method begins at RVA 0x5b654
		// Code size 25 (0x19)
		.maxstack 8

		IL_0000: ldarg.2
		IL_0001: ldstr "styles"
		IL_0006: call void System.Globalization.DateTimeFormatInfo::ValidateStyles(valuetype System.Globalization.DateTimeStyles, string)
		IL_000b: ldarg.0
		IL_000c: ldarg.1
		IL_000d: call class System.Globalization.DateTimeFormatInfo System.Globalization.DateTimeFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0012: ldarg.2
		IL_0013: call valuetype System.DateTime System.DateTimeParse::Parse(valuetype System.ReadOnlySpan`1<char>, class System.Globalization.DateTimeFormatInfo, valuetype System.Globalization.DateTimeStyles)
		IL_0018: ret
	} // end of method DateTime::Parse

	.method public hidebysig static 
		valuetype System.DateTime ParseExact (
			string s,
			string format,
			class System.IFormatProvider provider
		) cil managed 
	{
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x5b66e
		// Code size 45 (0x2d)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 17
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.1
		IL_000b: brtrue.s IL_0014

		IL_000d: ldc.i4.s 34
		IL_000f: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0014: ldarg.0
		IL_0015: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_001a: ldarg.1
		IL_001b: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0020: ldarg.2
		IL_0021: call class System.Globalization.DateTimeFormatInfo System.Globalization.DateTimeFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0026: ldc.i4.0
		IL_0027: call valuetype System.DateTime System.DateTimeParse::ParseExact(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.DateTimeFormatInfo, valuetype System.Globalization.DateTimeStyles)
		IL_002c: ret
	} // end of method DateTime::ParseExact

	.method public hidebysig static 
		valuetype System.DateTime ParseExact (
			string s,
			string format,
			class System.IFormatProvider provider,
			valuetype System.Globalization.DateTimeStyles style
		) cil managed 
	{
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x5b69c
		// Code size 56 (0x38)
		.maxstack 8

		IL_0000: ldarg.3
		IL_0001: ldstr "style"
		IL_0006: call void System.Globalization.DateTimeFormatInfo::ValidateStyles(valuetype System.Globalization.DateTimeStyles, string)
		IL_000b: ldarg.0
		IL_000c: brtrue.s IL_0015

		IL_000e: ldc.i4.s 17
		IL_0010: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0015: ldarg.1
		IL_0016: brtrue.s IL_001f

		IL_0018: ldc.i4.s 34
		IL_001a: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_001f: ldarg.0
		IL_0020: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0025: ldarg.1
		IL_0026: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_002b: ldarg.2
		IL_002c: call class System.Globalization.DateTimeFormatInfo System.Globalization.DateTimeFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0031: ldarg.3
		IL_0032: call valuetype System.DateTime System.DateTimeParse::ParseExact(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.DateTimeFormatInfo, valuetype System.Globalization.DateTimeStyles)
		IL_0037: ret
	} // end of method DateTime::ParseExact

	.method public hidebysig static 
		valuetype System.DateTime ParseExact (
			valuetype System.ReadOnlySpan`1<char> s,
			valuetype System.ReadOnlySpan`1<char> format,
			class System.IFormatProvider provider,
			[opt] valuetype System.Globalization.DateTimeStyles style
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [4] = int32(0)
		// Method begins at RVA 0x5b6d5
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: ldarg.3
		IL_0001: ldstr "style"
		IL_0006: call void System.Globalization.DateTimeFormatInfo::ValidateStyles(valuetype System.Globalization.DateTimeStyles, string)
		IL_000b: ldarg.0
		IL_000c: ldarg.1
		IL_000d: ldarg.2
		IL_000e: call class System.Globalization.DateTimeFormatInfo System.Globalization.DateTimeFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0013: ldarg.3
		IL_0014: call valuetype System.DateTime System.DateTimeParse::ParseExact(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.DateTimeFormatInfo, valuetype System.Globalization.DateTimeStyles)
		IL_0019: ret
	} // end of method DateTime::ParseExact

	.method public hidebysig static 
		valuetype System.DateTime ParseExact (
			string s,
			string[] formats,
			class System.IFormatProvider provider,
			valuetype System.Globalization.DateTimeStyles style
		) cil managed 
	{
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x5b6f0
		// Code size 41 (0x29)
		.maxstack 8

		IL_0000: ldarg.3
		IL_0001: ldstr "style"
		IL_0006: call void System.Globalization.DateTimeFormatInfo::ValidateStyles(valuetype System.Globalization.DateTimeStyles, string)
		IL_000b: ldarg.0
		IL_000c: brtrue.s IL_0015

		IL_000e: ldc.i4.s 17
		IL_0010: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0015: ldarg.0
		IL_0016: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_001b: ldarg.1
		IL_001c: ldarg.2
		IL_001d: call class System.Globalization.DateTimeFormatInfo System.Globalization.DateTimeFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0022: ldarg.3
		IL_0023: call valuetype System.DateTime System.DateTimeParse::ParseExactMultiple(valuetype System.ReadOnlySpan`1<char>, string[], class System.Globalization.DateTimeFormatInfo, valuetype System.Globalization.DateTimeStyles)
		IL_0028: ret
	} // end of method DateTime::ParseExact

	.method public hidebysig static 
		valuetype System.DateTime ParseExact (
			valuetype System.ReadOnlySpan`1<char> s,
			string[] formats,
			class System.IFormatProvider provider,
			[opt] valuetype System.Globalization.DateTimeStyles style
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [4] = int32(0)
		// Method begins at RVA 0x5b71a
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: ldarg.3
		IL_0001: ldstr "style"
		IL_0006: call void System.Globalization.DateTimeFormatInfo::ValidateStyles(valuetype System.Globalization.DateTimeStyles, string)
		IL_000b: ldarg.0
		IL_000c: ldarg.1
		IL_000d: ldarg.2
		IL_000e: call class System.Globalization.DateTimeFormatInfo System.Globalization.DateTimeFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0013: ldarg.3
		IL_0014: call valuetype System.DateTime System.DateTimeParse::ParseExactMultiple(valuetype System.ReadOnlySpan`1<char>, string[], class System.Globalization.DateTimeFormatInfo, valuetype System.Globalization.DateTimeStyles)
		IL_0019: ret
	} // end of method DateTime::ParseExact

	.method public hidebysig 
		instance valuetype System.TimeSpan Subtract (
			valuetype System.DateTime 'value'
		) cil managed 
	{
		// Method begins at RVA 0x5b735
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.DateTime::get_InternalTicks()
		IL_0006: ldarga.s 'value'
		IL_0008: call instance int64 System.DateTime::get_InternalTicks()
		IL_000d: sub
		IL_000e: newobj instance void System.TimeSpan::.ctor(int64)
		IL_0013: ret
	} // end of method DateTime::Subtract

	.method public hidebysig 
		instance valuetype System.DateTime Subtract (
			valuetype System.TimeSpan 'value'
		) cil managed 
	{
		// Method begins at RVA 0x5b74c
		// Code size 64 (0x40)
		.maxstack 2
		.locals (
			[0] int64,
			[1] int64
		)

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.DateTime::get_InternalTicks()
		IL_0006: stloc.0
		IL_0007: ldarg.1
		IL_0008: ldfld int64 System.TimeSpan::_ticks
		IL_000d: stloc.1
		IL_000e: ldloc.0
		IL_000f: ldloc.1
		IL_0010: blt.s IL_0020

		IL_0012: ldloc.0
		IL_0013: ldc.i8 3155378975999999999
		IL_001c: sub
		IL_001d: ldloc.1
		IL_001e: ble.s IL_0030

		IL_0020: ldstr "value"
		IL_0025: call string System.SR::get_ArgumentOutOfRange_DateArithmetic()
		IL_002a: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_002f: throw

		IL_0030: ldloc.0
		IL_0031: ldloc.1
		IL_0032: sub
		IL_0033: ldarg.0
		IL_0034: call instance uint64 System.DateTime::get_InternalKind()
		IL_0039: or
		IL_003a: newobj instance void System.DateTime::.ctor(uint64)
		IL_003f: ret
	} // end of method DateTime::Subtract

	.method private hidebysig static 
		float64 TicksToOADate (
			int64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x5b798
		// Code size 124 (0x7c)
		.maxstack 3
		.locals (
			[0] int64,
			[1] int64
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000d

		IL_0003: ldc.r8 0.0
		IL_000c: ret

		IL_000d: ldarg.0
		IL_000e: ldc.i8 864000000000
		IL_0017: bge.s IL_0026

		IL_0019: ldarg.0
		IL_001a: ldc.i8 599264352000000000
		IL_0023: add
		IL_0024: starg.s 'value'

		IL_0026: ldarg.0
		IL_0027: ldc.i8 31241376000000000
		IL_0030: bge.s IL_003d

		IL_0032: call string System.SR::get_Arg_OleAutDateInvalid()
		IL_0037: newobj instance void System.OverflowException::.ctor(string)
		IL_003c: throw

		IL_003d: ldarg.0
		IL_003e: ldc.i8 599264352000000000
		IL_0047: sub
		IL_0048: ldc.i4 10000
		IL_004d: conv.i8
		IL_004e: div
		IL_004f: stloc.0
		IL_0050: ldloc.0
		IL_0051: ldc.i4.0
		IL_0052: conv.i8
		IL_0053: bge.s IL_006f

		IL_0055: ldloc.0
		IL_0056: ldc.i4 86400000
		IL_005b: conv.i8
		IL_005c: rem
		IL_005d: stloc.1
		IL_005e: ldloc.1
		IL_005f: brfalse.s IL_006f

		IL_0061: ldloc.0
		IL_0062: ldc.i4 86400000
		IL_0067: conv.i8
		IL_0068: ldloc.1
		IL_0069: add
		IL_006a: ldc.i4.2
		IL_006b: conv.i8
		IL_006c: mul
		IL_006d: sub
		IL_006e: stloc.0

		IL_006f: ldloc.0
		IL_0070: conv.r8
		IL_0071: ldc.r8 86400000
		IL_007a: div
		IL_007b: ret
	} // end of method DateTime::TicksToOADate

	.method public hidebysig 
		instance float64 ToOADate () cil managed 
	{
		// Method begins at RVA 0x5b820
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.DateTime::get_InternalTicks()
		IL_0006: call float64 System.DateTime::TicksToOADate(int64)
		IL_000b: ret
	} // end of method DateTime::ToOADate

	.method public hidebysig 
		instance int64 ToFileTime () cil managed 
	{
		// Method begins at RVA 0x5b830
		// Code size 15 (0xf)
		.maxstack 1
		.locals (
			[0] valuetype System.DateTime
		)

		IL_0000: ldarg.0
		IL_0001: call instance valuetype System.DateTime System.DateTime::ToUniversalTime()
		IL_0006: stloc.0
		IL_0007: ldloca.s 0
		IL_0009: call instance int64 System.DateTime::ToFileTimeUtc()
		IL_000e: ret
	} // end of method DateTime::ToFileTime

	.method public hidebysig 
		instance int64 ToFileTimeUtc () cil managed 
	{
		// Method begins at RVA 0x5b84c
		// Code size 86 (0x56)
		.maxstack 2
		.locals (
			[0] int64,
			[1] valuetype System.DateTime
		)

		IL_0000: ldarg.0
		IL_0001: call instance uint64 System.DateTime::get_InternalKind()
		IL_0006: ldc.i8 -9223372036854775808
		IL_000f: and
		IL_0010: brtrue.s IL_001a

		IL_0012: ldarg.0
		IL_0013: call instance int64 System.DateTime::get_InternalTicks()
		IL_0018: br.s IL_0028

		IL_001a: ldarg.0
		IL_001b: call instance valuetype System.DateTime System.DateTime::ToUniversalTime()
		IL_0020: stloc.1
		IL_0021: ldloca.s 1
		IL_0023: call instance int64 System.DateTime::get_InternalTicks()

		IL_0028: stloc.0
		IL_0029: ldsfld bool System.DateTime::s_systemSupportsLeapSeconds
		IL_002e: brfalse.s IL_0037

		IL_0030: ldloc.0
		IL_0031: call int64 System.DateTime::ToFileTimeLeapSecondsAware(int64)
		IL_0036: ret

		IL_0037: ldloc.0
		IL_0038: ldc.i8 504911232000000000
		IL_0041: sub
		IL_0042: stloc.0
		IL_0043: ldloc.0
		IL_0044: ldc.i4.0
		IL_0045: conv.i8
		IL_0046: bge.s IL_0054

		IL_0048: ldnull
		IL_0049: call string System.SR::get_ArgumentOutOfRange_FileTimeInvalid()
		IL_004e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0053: throw

		IL_0054: ldloc.0
		IL_0055: ret
	} // end of method DateTime::ToFileTimeUtc

	.method public hidebysig 
		instance valuetype System.DateTime ToLocalTime () cil managed 
	{
		// Method begins at RVA 0x5b8ae
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: call instance valuetype System.DateTime System.DateTime::ToLocalTime(bool)
		IL_0007: ret
	} // end of method DateTime::ToLocalTime

	.method assembly hidebysig 
		instance valuetype System.DateTime ToLocalTime (
			bool throwOnOverflow
		) cil managed 
	{
		// Method begins at RVA 0x5b8b8
		// Code size 134 (0x86)
		.maxstack 4
		.locals (
			[0] int64,
			[1] bool,
			[2] bool,
			[3] int64,
			[4] valuetype System.TimeSpan
		)

		IL_0000: ldarg.0
		IL_0001: call instance valuetype System.DateTimeKind System.DateTime::get_Kind()
		IL_0006: ldc.i4.2
		IL_0007: bne.un.s IL_0010

		IL_0009: ldarg.0
		IL_000a: ldobj System.DateTime
		IL_000f: ret

		IL_0010: ldarg.0
		IL_0011: ldobj System.DateTime
		IL_0016: call class System.TimeZoneInfo System.TimeZoneInfo::get_Local()
		IL_001b: ldloca.s 1
		IL_001d: ldloca.s 2
		IL_001f: call valuetype System.TimeSpan System.TimeZoneInfo::GetUtcOffsetFromUtc(valuetype System.DateTime, class System.TimeZoneInfo, bool&, bool&)
		IL_0024: stloc.s 4
		IL_0026: ldloca.s 4
		IL_0028: call instance int64 System.TimeSpan::get_Ticks()
		IL_002d: stloc.0
		IL_002e: ldarg.0
		IL_002f: call instance int64 System.DateTime::get_Ticks()
		IL_0034: ldloc.0
		IL_0035: add
		IL_0036: stloc.3
		IL_0037: ldloc.3
		IL_0038: ldc.i8 3155378975999999999
		IL_0041: ble.s IL_0061

		IL_0043: ldarg.1
		IL_0044: brfalse.s IL_0051

		IL_0046: call string System.SR::get_Arg_ArgumentOutOfRangeException()
		IL_004b: newobj instance void System.ArgumentException::.ctor(string)
		IL_0050: throw

		IL_0051: ldc.i8 3155378975999999999
		IL_005a: ldc.i4.2
		IL_005b: newobj instance void System.DateTime::.ctor(int64, valuetype System.DateTimeKind)
		IL_0060: ret

		IL_0061: ldloc.3
		IL_0062: ldc.i4.0
		IL_0063: conv.i8
		IL_0064: bge.s IL_007d

		IL_0066: ldarg.1
		IL_0067: brfalse.s IL_0074

		IL_0069: call string System.SR::get_Arg_ArgumentOutOfRangeException()
		IL_006e: newobj instance void System.ArgumentException::.ctor(string)
		IL_0073: throw

		IL_0074: ldc.i4.0
		IL_0075: conv.i8
		IL_0076: ldc.i4.2
		IL_0077: newobj instance void System.DateTime::.ctor(int64, valuetype System.DateTimeKind)
		IL_007c: ret

		IL_007d: ldloc.3
		IL_007e: ldc.i4.2
		IL_007f: ldloc.2
		IL_0080: newobj instance void System.DateTime::.ctor(int64, valuetype System.DateTimeKind, bool)
		IL_0085: ret
	} // end of method DateTime::ToLocalTime

	.method public hidebysig 
		instance string ToLongDateString () cil managed 
	{
		// Method begins at RVA 0x5b94a
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.DateTime
		IL_0006: ldstr "D"
		IL_000b: ldnull
		IL_000c: call string System.DateTimeFormat::Format(valuetype System.DateTime, string, class System.IFormatProvider)
		IL_0011: ret
	} // end of method DateTime::ToLongDateString

	.method public hidebysig 
		instance string ToLongTimeString () cil managed 
	{
		// Method begins at RVA 0x5b95d
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.DateTime
		IL_0006: ldstr "T"
		IL_000b: ldnull
		IL_000c: call string System.DateTimeFormat::Format(valuetype System.DateTime, string, class System.IFormatProvider)
		IL_0011: ret
	} // end of method DateTime::ToLongTimeString

	.method public hidebysig 
		instance string ToShortDateString () cil managed 
	{
		// Method begins at RVA 0x5b970
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.DateTime
		IL_0006: ldstr "d"
		IL_000b: ldnull
		IL_000c: call string System.DateTimeFormat::Format(valuetype System.DateTime, string, class System.IFormatProvider)
		IL_0011: ret
	} // end of method DateTime::ToShortDateString

	.method public hidebysig 
		instance string ToShortTimeString () cil managed 
	{
		// Method begins at RVA 0x5b983
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.DateTime
		IL_0006: ldstr "t"
		IL_000b: ldnull
		IL_000c: call string System.DateTimeFormat::Format(valuetype System.DateTime, string, class System.IFormatProvider)
		IL_0011: ret
	} // end of method DateTime::ToShortTimeString

	.method public hidebysig virtual 
		instance string ToString () cil managed 
	{
		// Method begins at RVA 0x5b996
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.DateTime
		IL_0006: ldnull
		IL_0007: ldnull
		IL_0008: call string System.DateTimeFormat::Format(valuetype System.DateTime, string, class System.IFormatProvider)
		IL_000d: ret
	} // end of method DateTime::ToString

	.method public hidebysig 
		instance string ToString (
			string format
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x5b9a5
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.DateTime
		IL_0006: ldarg.1
		IL_0007: ldnull
		IL_0008: call string System.DateTimeFormat::Format(valuetype System.DateTime, string, class System.IFormatProvider)
		IL_000d: ret
	} // end of method DateTime::ToString

	.method public final hidebysig newslot virtual 
		instance string ToString (
			class System.IFormatProvider provider
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x5b9b4
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.DateTime
		IL_0006: ldnull
		IL_0007: ldarg.1
		IL_0008: call string System.DateTimeFormat::Format(valuetype System.DateTime, string, class System.IFormatProvider)
		IL_000d: ret
	} // end of method DateTime::ToString

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
		// Method begins at RVA 0x5b9c3
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.DateTime
		IL_0006: ldarg.1
		IL_0007: ldarg.2
		IL_0008: call string System.DateTimeFormat::Format(valuetype System.DateTime, string, class System.IFormatProvider)
		IL_000d: ret
	} // end of method DateTime::ToString

	.method public final hidebysig newslot virtual 
		instance bool TryFormat (
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten,
			[opt] valuetype System.ReadOnlySpan`1<char> format,
			[opt] class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.param [3] = nullref
		.param [4] = nullref
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x5b9d2
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.DateTime
		IL_0006: ldarg.1
		IL_0007: ldarg.2
		IL_0008: ldarg.3
		IL_0009: ldarg.s provider
		IL_000b: call bool System.DateTimeFormat::TryFormat(valuetype System.DateTime, valuetype System.Span`1<char>, int32&, valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider)
		IL_0010: ret
	} // end of method DateTime::TryFormat

	.method public hidebysig 
		instance valuetype System.DateTime ToUniversalTime () cil managed 
	{
		// Method begins at RVA 0x5b9e4
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.DateTime
		IL_0006: ldc.i4.2
		IL_0007: call valuetype System.DateTime System.TimeZoneInfo::ConvertTimeToUtc(valuetype System.DateTime, valuetype System.TimeZoneInfoOptions)
		IL_000c: ret
	} // end of method DateTime::ToUniversalTime

	.method public hidebysig static 
		bool TryParse (
			string s,
			[out] valuetype System.DateTime& result
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullWhenAttribute::.ctor(bool) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x5b9f2
		// Code size 31 (0x1f)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000c

		IL_0003: ldarg.1
		IL_0004: initobj System.DateTime
		IL_000a: ldc.i4.0
		IL_000b: ret

		IL_000c: ldarg.0
		IL_000d: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0012: call class System.Globalization.DateTimeFormatInfo System.Globalization.DateTimeFormatInfo::get_CurrentInfo()
		IL_0017: ldc.i4.0
		IL_0018: ldarg.1
		IL_0019: call bool System.DateTimeParse::TryParse(valuetype System.ReadOnlySpan`1<char>, class System.Globalization.DateTimeFormatInfo, valuetype System.Globalization.DateTimeStyles, valuetype System.DateTime&)
		IL_001e: ret
	} // end of method DateTime::TryParse

	.method public hidebysig static 
		bool TryParse (
			valuetype System.ReadOnlySpan`1<char> s,
			[out] valuetype System.DateTime& result
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x5ba12
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call class System.Globalization.DateTimeFormatInfo System.Globalization.DateTimeFormatInfo::get_CurrentInfo()
		IL_0006: ldc.i4.0
		IL_0007: ldarg.1
		IL_0008: call bool System.DateTimeParse::TryParse(valuetype System.ReadOnlySpan`1<char>, class System.Globalization.DateTimeFormatInfo, valuetype System.Globalization.DateTimeStyles, valuetype System.DateTime&)
		IL_000d: ret
	} // end of method DateTime::TryParse

	.method public hidebysig static 
		bool TryParse (
			string s,
			class System.IFormatProvider provider,
			valuetype System.Globalization.DateTimeStyles styles,
			[out] valuetype System.DateTime& result
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullWhenAttribute::.ctor(bool) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x5ba21
		// Code size 43 (0x2b)
		.maxstack 8

		IL_0000: ldarg.2
		IL_0001: ldstr "styles"
		IL_0006: call void System.Globalization.DateTimeFormatInfo::ValidateStyles(valuetype System.Globalization.DateTimeStyles, string)
		IL_000b: ldarg.0
		IL_000c: brtrue.s IL_0017

		IL_000e: ldarg.3
		IL_000f: initobj System.DateTime
		IL_0015: ldc.i4.0
		IL_0016: ret

		IL_0017: ldarg.0
		IL_0018: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_001d: ldarg.1
		IL_001e: call class System.Globalization.DateTimeFormatInfo System.Globalization.DateTimeFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0023: ldarg.2
		IL_0024: ldarg.3
		IL_0025: call bool System.DateTimeParse::TryParse(valuetype System.ReadOnlySpan`1<char>, class System.Globalization.DateTimeFormatInfo, valuetype System.Globalization.DateTimeStyles, valuetype System.DateTime&)
		IL_002a: ret
	} // end of method DateTime::TryParse

	.method public hidebysig static 
		bool TryParse (
			valuetype System.ReadOnlySpan`1<char> s,
			class System.IFormatProvider provider,
			valuetype System.Globalization.DateTimeStyles styles,
			[out] valuetype System.DateTime& result
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x5ba4d
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: ldarg.2
		IL_0001: ldstr "styles"
		IL_0006: call void System.Globalization.DateTimeFormatInfo::ValidateStyles(valuetype System.Globalization.DateTimeStyles, string)
		IL_000b: ldarg.0
		IL_000c: ldarg.1
		IL_000d: call class System.Globalization.DateTimeFormatInfo System.Globalization.DateTimeFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0012: ldarg.2
		IL_0013: ldarg.3
		IL_0014: call bool System.DateTimeParse::TryParse(valuetype System.ReadOnlySpan`1<char>, class System.Globalization.DateTimeFormatInfo, valuetype System.Globalization.DateTimeStyles, valuetype System.DateTime&)
		IL_0019: ret
	} // end of method DateTime::TryParse

	.method public hidebysig static 
		bool TryParseExact (
			string s,
			string format,
			class System.IFormatProvider provider,
			valuetype System.Globalization.DateTimeStyles style,
			[out] valuetype System.DateTime& result
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullWhenAttribute::.ctor(bool) = (
				01 00 01 00 00
			)
		.param [2]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullWhenAttribute::.ctor(bool) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x5ba68
		// Code size 54 (0x36)
		.maxstack 8

		IL_0000: ldarg.3
		IL_0001: ldstr "style"
		IL_0006: call void System.Globalization.DateTimeFormatInfo::ValidateStyles(valuetype System.Globalization.DateTimeStyles, string)
		IL_000b: ldarg.0
		IL_000c: brfalse.s IL_0011

		IL_000e: ldarg.1
		IL_000f: brtrue.s IL_001b

		IL_0011: ldarg.s result
		IL_0013: initobj System.DateTime
		IL_0019: ldc.i4.0
		IL_001a: ret

		IL_001b: ldarg.0
		IL_001c: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0021: ldarg.1
		IL_0022: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0027: ldarg.2
		IL_0028: call class System.Globalization.DateTimeFormatInfo System.Globalization.DateTimeFormatInfo::GetInstance(class System.IFormatProvider)
		IL_002d: ldarg.3
		IL_002e: ldarg.s result
		IL_0030: call bool System.DateTimeParse::TryParseExact(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.DateTimeFormatInfo, valuetype System.Globalization.DateTimeStyles, valuetype System.DateTime&)
		IL_0035: ret
	} // end of method DateTime::TryParseExact

	.method public hidebysig static 
		bool TryParseExact (
			valuetype System.ReadOnlySpan`1<char> s,
			valuetype System.ReadOnlySpan`1<char> format,
			class System.IFormatProvider provider,
			valuetype System.Globalization.DateTimeStyles style,
			[out] valuetype System.DateTime& result
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x5ba9f
		// Code size 28 (0x1c)
		.maxstack 8

		IL_0000: ldarg.3
		IL_0001: ldstr "style"
		IL_0006: call void System.Globalization.DateTimeFormatInfo::ValidateStyles(valuetype System.Globalization.DateTimeStyles, string)
		IL_000b: ldarg.0
		IL_000c: ldarg.1
		IL_000d: ldarg.2
		IL_000e: call class System.Globalization.DateTimeFormatInfo System.Globalization.DateTimeFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0013: ldarg.3
		IL_0014: ldarg.s result
		IL_0016: call bool System.DateTimeParse::TryParseExact(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.DateTimeFormatInfo, valuetype System.Globalization.DateTimeStyles, valuetype System.DateTime&)
		IL_001b: ret
	} // end of method DateTime::TryParseExact

	.method public hidebysig static 
		bool TryParseExact (
			string s,
			string[] formats,
			class System.IFormatProvider provider,
			valuetype System.Globalization.DateTimeStyles style,
			[out] valuetype System.DateTime& result
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullWhenAttribute::.ctor(bool) = (
				01 00 01 00 00
			)
		.param [2]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullWhenAttribute::.ctor(bool) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x5babc
		// Code size 46 (0x2e)
		.maxstack 8

		IL_0000: ldarg.3
		IL_0001: ldstr "style"
		IL_0006: call void System.Globalization.DateTimeFormatInfo::ValidateStyles(valuetype System.Globalization.DateTimeStyles, string)
		IL_000b: ldarg.0
		IL_000c: brtrue.s IL_0018

		IL_000e: ldarg.s result
		IL_0010: initobj System.DateTime
		IL_0016: ldc.i4.0
		IL_0017: ret

		IL_0018: ldarg.0
		IL_0019: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_001e: ldarg.1
		IL_001f: ldarg.2
		IL_0020: call class System.Globalization.DateTimeFormatInfo System.Globalization.DateTimeFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0025: ldarg.3
		IL_0026: ldarg.s result
		IL_0028: call bool System.DateTimeParse::TryParseExactMultiple(valuetype System.ReadOnlySpan`1<char>, string[], class System.Globalization.DateTimeFormatInfo, valuetype System.Globalization.DateTimeStyles, valuetype System.DateTime&)
		IL_002d: ret
	} // end of method DateTime::TryParseExact

	.method public hidebysig static 
		bool TryParseExact (
			valuetype System.ReadOnlySpan`1<char> s,
			string[] formats,
			class System.IFormatProvider provider,
			valuetype System.Globalization.DateTimeStyles style,
			[out] valuetype System.DateTime& result
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 00 00 00
			)
		.param [2]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullWhenAttribute::.ctor(bool) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x5baeb
		// Code size 28 (0x1c)
		.maxstack 8

		IL_0000: ldarg.3
		IL_0001: ldstr "style"
		IL_0006: call void System.Globalization.DateTimeFormatInfo::ValidateStyles(valuetype System.Globalization.DateTimeStyles, string)
		IL_000b: ldarg.0
		IL_000c: ldarg.1
		IL_000d: ldarg.2
		IL_000e: call class System.Globalization.DateTimeFormatInfo System.Globalization.DateTimeFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0013: ldarg.3
		IL_0014: ldarg.s result
		IL_0016: call bool System.DateTimeParse::TryParseExactMultiple(valuetype System.ReadOnlySpan`1<char>, string[], class System.Globalization.DateTimeFormatInfo, valuetype System.Globalization.DateTimeStyles, valuetype System.DateTime&)
		IL_001b: ret
	} // end of method DateTime::TryParseExact

	.method public hidebysig specialname static 
		valuetype System.DateTime op_Addition (
			valuetype System.DateTime d,
			valuetype System.TimeSpan t
		) cil managed 
	{
		// Method begins at RVA 0x5bb08
		// Code size 69 (0x45)
		.maxstack 3
		.locals (
			[0] int64,
			[1] int64
		)

		IL_0000: ldarga.s d
		IL_0002: call instance int64 System.DateTime::get_InternalTicks()
		IL_0007: stloc.0
		IL_0008: ldarg.1
		IL_0009: ldfld int64 System.TimeSpan::_ticks
		IL_000e: stloc.1
		IL_000f: ldloc.1
		IL_0010: ldc.i8 3155378975999999999
		IL_0019: ldloc.0
		IL_001a: sub
		IL_001b: bgt.s IL_0024

		IL_001d: ldloc.1
		IL_001e: ldc.i4.0
		IL_001f: conv.i8
		IL_0020: ldloc.0
		IL_0021: sub
		IL_0022: bge.s IL_0034

		IL_0024: ldstr "t"
		IL_0029: call string System.SR::get_ArgumentOutOfRange_DateArithmetic()
		IL_002e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0033: throw

		IL_0034: ldloc.0
		IL_0035: ldloc.1
		IL_0036: add
		IL_0037: ldarga.s d
		IL_0039: call instance uint64 System.DateTime::get_InternalKind()
		IL_003e: or
		IL_003f: newobj instance void System.DateTime::.ctor(uint64)
		IL_0044: ret
	} // end of method DateTime::op_Addition

	.method public hidebysig specialname static 
		valuetype System.DateTime op_Subtraction (
			valuetype System.DateTime d,
			valuetype System.TimeSpan t
		) cil managed 
	{
		// Method begins at RVA 0x5bb5c
		// Code size 66 (0x42)
		.maxstack 2
		.locals (
			[0] int64,
			[1] int64
		)

		IL_0000: ldarga.s d
		IL_0002: call instance int64 System.DateTime::get_InternalTicks()
		IL_0007: stloc.0
		IL_0008: ldarg.1
		IL_0009: ldfld int64 System.TimeSpan::_ticks
		IL_000e: stloc.1
		IL_000f: ldloc.0
		IL_0010: ldloc.1
		IL_0011: blt.s IL_0021

		IL_0013: ldloc.0
		IL_0014: ldc.i8 3155378975999999999
		IL_001d: sub
		IL_001e: ldloc.1
		IL_001f: ble.s IL_0031

		IL_0021: ldstr "t"
		IL_0026: call string System.SR::get_ArgumentOutOfRange_DateArithmetic()
		IL_002b: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0030: throw

		IL_0031: ldloc.0
		IL_0032: ldloc.1
		IL_0033: sub
		IL_0034: ldarga.s d
		IL_0036: call instance uint64 System.DateTime::get_InternalKind()
		IL_003b: or
		IL_003c: newobj instance void System.DateTime::.ctor(uint64)
		IL_0041: ret
	} // end of method DateTime::op_Subtraction

	.method public hidebysig specialname static 
		valuetype System.TimeSpan op_Subtraction (
			valuetype System.DateTime d1,
			valuetype System.DateTime d2
		) cil managed 
	{
		// Method begins at RVA 0x5bbaa
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarga.s d1
		IL_0002: call instance int64 System.DateTime::get_InternalTicks()
		IL_0007: ldarga.s d2
		IL_0009: call instance int64 System.DateTime::get_InternalTicks()
		IL_000e: sub
		IL_000f: newobj instance void System.TimeSpan::.ctor(int64)
		IL_0014: ret
	} // end of method DateTime::op_Subtraction

	.method public hidebysig specialname static 
		bool op_Equality (
			valuetype System.DateTime d1,
			valuetype System.DateTime d2
		) cil managed 
	{
		// Method begins at RVA 0x5aede
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarga.s d1
		IL_0002: call instance int64 System.DateTime::get_InternalTicks()
		IL_0007: ldarga.s d2
		IL_0009: call instance int64 System.DateTime::get_InternalTicks()
		IL_000e: ceq
		IL_0010: ret
	} // end of method DateTime::op_Equality

	.method public hidebysig specialname static 
		bool op_Inequality (
			valuetype System.DateTime d1,
			valuetype System.DateTime d2
		) cil managed 
	{
		// Method begins at RVA 0x5bbc0
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarga.s d1
		IL_0002: call instance int64 System.DateTime::get_InternalTicks()
		IL_0007: ldarga.s d2
		IL_0009: call instance int64 System.DateTime::get_InternalTicks()
		IL_000e: ceq
		IL_0010: ldc.i4.0
		IL_0011: ceq
		IL_0013: ret
	} // end of method DateTime::op_Inequality

	.method public hidebysig specialname static 
		bool op_LessThan (
			valuetype System.DateTime t1,
			valuetype System.DateTime t2
		) cil managed 
	{
		// Method begins at RVA 0x5bbd5
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarga.s t1
		IL_0002: call instance int64 System.DateTime::get_InternalTicks()
		IL_0007: ldarga.s t2
		IL_0009: call instance int64 System.DateTime::get_InternalTicks()
		IL_000e: clt
		IL_0010: ret
	} // end of method DateTime::op_LessThan

	.method public hidebysig specialname static 
		bool op_LessThanOrEqual (
			valuetype System.DateTime t1,
			valuetype System.DateTime t2
		) cil managed 
	{
		// Method begins at RVA 0x5bbe7
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarga.s t1
		IL_0002: call instance int64 System.DateTime::get_InternalTicks()
		IL_0007: ldarga.s t2
		IL_0009: call instance int64 System.DateTime::get_InternalTicks()
		IL_000e: cgt
		IL_0010: ldc.i4.0
		IL_0011: ceq
		IL_0013: ret
	} // end of method DateTime::op_LessThanOrEqual

	.method public hidebysig specialname static 
		bool op_GreaterThan (
			valuetype System.DateTime t1,
			valuetype System.DateTime t2
		) cil managed 
	{
		// Method begins at RVA 0x5bbfc
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarga.s t1
		IL_0002: call instance int64 System.DateTime::get_InternalTicks()
		IL_0007: ldarga.s t2
		IL_0009: call instance int64 System.DateTime::get_InternalTicks()
		IL_000e: cgt
		IL_0010: ret
	} // end of method DateTime::op_GreaterThan

	.method public hidebysig specialname static 
		bool op_GreaterThanOrEqual (
			valuetype System.DateTime t1,
			valuetype System.DateTime t2
		) cil managed 
	{
		// Method begins at RVA 0x5bc0e
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarga.s t1
		IL_0002: call instance int64 System.DateTime::get_InternalTicks()
		IL_0007: ldarga.s t2
		IL_0009: call instance int64 System.DateTime::get_InternalTicks()
		IL_000e: clt
		IL_0010: ldc.i4.0
		IL_0011: ceq
		IL_0013: ret
	} // end of method DateTime::op_GreaterThanOrEqual

	.method public hidebysig 
		instance string[] GetDateTimeFormats () cil managed 
	{
		// Method begins at RVA 0x5bc23
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()
		IL_0006: call instance string[] System.DateTime::GetDateTimeFormats(class System.IFormatProvider)
		IL_000b: ret
	} // end of method DateTime::GetDateTimeFormats

	.method public hidebysig 
		instance string[] GetDateTimeFormats (
			class System.IFormatProvider provider
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x5bc30
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.DateTime
		IL_0006: ldarg.1
		IL_0007: call class System.Globalization.DateTimeFormatInfo System.Globalization.DateTimeFormatInfo::GetInstance(class System.IFormatProvider)
		IL_000c: call string[] System.DateTimeFormat::GetAllDateTimes(valuetype System.DateTime, class System.Globalization.DateTimeFormatInfo)
		IL_0011: ret
	} // end of method DateTime::GetDateTimeFormats

	.method public hidebysig 
		instance string[] GetDateTimeFormats (
			char format
		) cil managed 
	{
		// Method begins at RVA 0x5bc43
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call class System.Globalization.CultureInfo System.Globalization.CultureInfo::get_CurrentCulture()
		IL_0007: call instance string[] System.DateTime::GetDateTimeFormats(char, class System.IFormatProvider)
		IL_000c: ret
	} // end of method DateTime::GetDateTimeFormats

	.method public hidebysig 
		instance string[] GetDateTimeFormats (
			char format,
			class System.IFormatProvider provider
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x5bc51
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.DateTime
		IL_0006: ldarg.1
		IL_0007: ldarg.2
		IL_0008: call class System.Globalization.DateTimeFormatInfo System.Globalization.DateTimeFormatInfo::GetInstance(class System.IFormatProvider)
		IL_000d: call string[] System.DateTimeFormat::GetAllDateTimes(valuetype System.DateTime, char, class System.Globalization.DateTimeFormatInfo)
		IL_0012: ret
	} // end of method DateTime::GetDateTimeFormats

	.method public final hidebysig newslot virtual 
		instance valuetype System.TypeCode GetTypeCode () cil managed 
	{
		// Method begins at RVA 0x5bc65
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldc.i4.s 16
		IL_0002: ret
	} // end of method DateTime::GetTypeCode

	.method private final hidebysig newslot virtual 
		instance bool System.IConvertible.ToBoolean (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance bool System.IConvertible::ToBoolean(class System.IFormatProvider)
		// Method begins at RVA 0x5bc69
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: call string System.SR::get_InvalidCast_FromTo()
		IL_0005: ldstr "DateTime"
		IL_000a: ldstr "Boolean"
		IL_000f: call string System.SR::Format(string, object, object)
		IL_0014: newobj instance void System.InvalidCastException::.ctor(string)
		IL_0019: throw
	} // end of method DateTime::System.IConvertible.ToBoolean

	.method private final hidebysig newslot virtual 
		instance char System.IConvertible.ToChar (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance char System.IConvertible::ToChar(class System.IFormatProvider)
		// Method begins at RVA 0x5bc84
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: call string System.SR::get_InvalidCast_FromTo()
		IL_0005: ldstr "DateTime"
		IL_000a: ldstr "Char"
		IL_000f: call string System.SR::Format(string, object, object)
		IL_0014: newobj instance void System.InvalidCastException::.ctor(string)
		IL_0019: throw
	} // end of method DateTime::System.IConvertible.ToChar

	.method private final hidebysig newslot virtual 
		instance int8 System.IConvertible.ToSByte (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance int8 System.IConvertible::ToSByte(class System.IFormatProvider)
		// Method begins at RVA 0x5bc9f
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: call string System.SR::get_InvalidCast_FromTo()
		IL_0005: ldstr "DateTime"
		IL_000a: ldstr "SByte"
		IL_000f: call string System.SR::Format(string, object, object)
		IL_0014: newobj instance void System.InvalidCastException::.ctor(string)
		IL_0019: throw
	} // end of method DateTime::System.IConvertible.ToSByte

	.method private final hidebysig newslot virtual 
		instance uint8 System.IConvertible.ToByte (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance uint8 System.IConvertible::ToByte(class System.IFormatProvider)
		// Method begins at RVA 0x5bcba
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: call string System.SR::get_InvalidCast_FromTo()
		IL_0005: ldstr "DateTime"
		IL_000a: ldstr "Byte"
		IL_000f: call string System.SR::Format(string, object, object)
		IL_0014: newobj instance void System.InvalidCastException::.ctor(string)
		IL_0019: throw
	} // end of method DateTime::System.IConvertible.ToByte

	.method private final hidebysig newslot virtual 
		instance int16 System.IConvertible.ToInt16 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance int16 System.IConvertible::ToInt16(class System.IFormatProvider)
		// Method begins at RVA 0x5bcd5
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: call string System.SR::get_InvalidCast_FromTo()
		IL_0005: ldstr "DateTime"
		IL_000a: ldstr "Int16"
		IL_000f: call string System.SR::Format(string, object, object)
		IL_0014: newobj instance void System.InvalidCastException::.ctor(string)
		IL_0019: throw
	} // end of method DateTime::System.IConvertible.ToInt16

	.method private final hidebysig newslot virtual 
		instance uint16 System.IConvertible.ToUInt16 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance uint16 System.IConvertible::ToUInt16(class System.IFormatProvider)
		// Method begins at RVA 0x5bcf0
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: call string System.SR::get_InvalidCast_FromTo()
		IL_0005: ldstr "DateTime"
		IL_000a: ldstr "UInt16"
		IL_000f: call string System.SR::Format(string, object, object)
		IL_0014: newobj instance void System.InvalidCastException::.ctor(string)
		IL_0019: throw
	} // end of method DateTime::System.IConvertible.ToUInt16

	.method private final hidebysig newslot virtual 
		instance int32 System.IConvertible.ToInt32 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance int32 System.IConvertible::ToInt32(class System.IFormatProvider)
		// Method begins at RVA 0x5bd0b
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: call string System.SR::get_InvalidCast_FromTo()
		IL_0005: ldstr "DateTime"
		IL_000a: ldstr "Int32"
		IL_000f: call string System.SR::Format(string, object, object)
		IL_0014: newobj instance void System.InvalidCastException::.ctor(string)
		IL_0019: throw
	} // end of method DateTime::System.IConvertible.ToInt32

	.method private final hidebysig newslot virtual 
		instance uint32 System.IConvertible.ToUInt32 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance uint32 System.IConvertible::ToUInt32(class System.IFormatProvider)
		// Method begins at RVA 0x5bd26
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: call string System.SR::get_InvalidCast_FromTo()
		IL_0005: ldstr "DateTime"
		IL_000a: ldstr "UInt32"
		IL_000f: call string System.SR::Format(string, object, object)
		IL_0014: newobj instance void System.InvalidCastException::.ctor(string)
		IL_0019: throw
	} // end of method DateTime::System.IConvertible.ToUInt32

	.method private final hidebysig newslot virtual 
		instance int64 System.IConvertible.ToInt64 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance int64 System.IConvertible::ToInt64(class System.IFormatProvider)
		// Method begins at RVA 0x5bd41
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: call string System.SR::get_InvalidCast_FromTo()
		IL_0005: ldstr "DateTime"
		IL_000a: ldstr "Int64"
		IL_000f: call string System.SR::Format(string, object, object)
		IL_0014: newobj instance void System.InvalidCastException::.ctor(string)
		IL_0019: throw
	} // end of method DateTime::System.IConvertible.ToInt64

	.method private final hidebysig newslot virtual 
		instance uint64 System.IConvertible.ToUInt64 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance uint64 System.IConvertible::ToUInt64(class System.IFormatProvider)
		// Method begins at RVA 0x5bd5c
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: call string System.SR::get_InvalidCast_FromTo()
		IL_0005: ldstr "DateTime"
		IL_000a: ldstr "UInt64"
		IL_000f: call string System.SR::Format(string, object, object)
		IL_0014: newobj instance void System.InvalidCastException::.ctor(string)
		IL_0019: throw
	} // end of method DateTime::System.IConvertible.ToUInt64

	.method private final hidebysig newslot virtual 
		instance float32 System.IConvertible.ToSingle (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance float32 System.IConvertible::ToSingle(class System.IFormatProvider)
		// Method begins at RVA 0x5bd77
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: call string System.SR::get_InvalidCast_FromTo()
		IL_0005: ldstr "DateTime"
		IL_000a: ldstr "Single"
		IL_000f: call string System.SR::Format(string, object, object)
		IL_0014: newobj instance void System.InvalidCastException::.ctor(string)
		IL_0019: throw
	} // end of method DateTime::System.IConvertible.ToSingle

	.method private final hidebysig newslot virtual 
		instance float64 System.IConvertible.ToDouble (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance float64 System.IConvertible::ToDouble(class System.IFormatProvider)
		// Method begins at RVA 0x5bd92
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: call string System.SR::get_InvalidCast_FromTo()
		IL_0005: ldstr "DateTime"
		IL_000a: ldstr "Double"
		IL_000f: call string System.SR::Format(string, object, object)
		IL_0014: newobj instance void System.InvalidCastException::.ctor(string)
		IL_0019: throw
	} // end of method DateTime::System.IConvertible.ToDouble

	.method private final hidebysig newslot virtual 
		instance valuetype System.Decimal System.IConvertible.ToDecimal (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance valuetype System.Decimal System.IConvertible::ToDecimal(class System.IFormatProvider)
		// Method begins at RVA 0x5bdad
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: call string System.SR::get_InvalidCast_FromTo()
		IL_0005: ldstr "DateTime"
		IL_000a: ldstr "Decimal"
		IL_000f: call string System.SR::Format(string, object, object)
		IL_0014: newobj instance void System.InvalidCastException::.ctor(string)
		IL_0019: throw
	} // end of method DateTime::System.IConvertible.ToDecimal

	.method private final hidebysig newslot virtual 
		instance valuetype System.DateTime System.IConvertible.ToDateTime (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		// Method begins at RVA 0x5bdc8
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.DateTime
		IL_0006: ret
	} // end of method DateTime::System.IConvertible.ToDateTime

	.method private final hidebysig newslot virtual 
		instance object System.IConvertible.ToType (
			class System.Type 'type',
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance object System.IConvertible::ToType(class System.Type, class System.IFormatProvider)
		// Method begins at RVA 0x5bdd0
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.DateTime
		IL_0006: box System.DateTime
		IL_000b: ldarg.1
		IL_000c: ldarg.2
		IL_000d: call object System.Convert::DefaultToType(class System.IConvertible, class System.Type, class System.IFormatProvider)
		IL_0012: ret
	} // end of method DateTime::System.IConvertible.ToType

	.method assembly hidebysig static 
		bool TryCreate (
			int32 year,
			int32 month,
			int32 day,
			int32 hour,
			int32 minute,
			int32 second,
			int32 millisecond,
			[out] valuetype System.DateTime& result
		) cil managed 
	{
		// Method begins at RVA 0x5bde4
		// Code size 228 (0xe4)
		.maxstack 7
		.locals (
			[0] int32[],
			[1] int64
		)

		IL_0000: ldarg.s result
		IL_0002: ldsfld valuetype System.DateTime System.DateTime::MinValue
		IL_0007: stobj System.DateTime
		IL_000c: ldarg.0
		IL_000d: ldc.i4.1
		IL_000e: blt.s IL_0021

		IL_0010: ldarg.0
		IL_0011: ldc.i4 9999
		IL_0016: bgt.s IL_0021

		IL_0018: ldarg.1
		IL_0019: ldc.i4.1
		IL_001a: blt.s IL_0021

		IL_001c: ldarg.1
		IL_001d: ldc.i4.s 12
		IL_001f: ble.s IL_0023

		IL_0021: ldc.i4.0
		IL_0022: ret

		IL_0023: ldarg.0
		IL_0024: call bool System.DateTime::IsLeapYear(int32)
		IL_0029: brtrue.s IL_0032

		IL_002b: ldsfld int32[] System.DateTime::s_daysToMonth365
		IL_0030: br.s IL_0037

		IL_0032: ldsfld int32[] System.DateTime::s_daysToMonth366

		IL_0037: stloc.0
		IL_0038: ldarg.2
		IL_0039: ldc.i4.1
		IL_003a: blt.s IL_0048

		IL_003c: ldarg.2
		IL_003d: ldloc.0
		IL_003e: ldarg.1
		IL_003f: ldelem.i4
		IL_0040: ldloc.0
		IL_0041: ldarg.1
		IL_0042: ldc.i4.1
		IL_0043: sub
		IL_0044: ldelem.i4
		IL_0045: sub
		IL_0046: ble.s IL_004a

		IL_0048: ldc.i4.0
		IL_0049: ret

		IL_004a: ldarg.3
		IL_004b: ldc.i4.0
		IL_004c: blt.s IL_0069

		IL_004e: ldarg.3
		IL_004f: ldc.i4.s 24
		IL_0051: bge.s IL_0069

		IL_0053: ldarg.s minute
		IL_0055: ldc.i4.0
		IL_0056: blt.s IL_0069

		IL_0058: ldarg.s minute
		IL_005a: ldc.i4.s 60
		IL_005c: bge.s IL_0069

		IL_005e: ldarg.s second
		IL_0060: ldc.i4.0
		IL_0061: blt.s IL_0069

		IL_0063: ldarg.s second
		IL_0065: ldc.i4.s 60
		IL_0067: ble.s IL_006b

		IL_0069: ldc.i4.0
		IL_006a: ret

		IL_006b: ldarg.s millisecond
		IL_006d: ldc.i4.0
		IL_006e: blt.s IL_0079

		IL_0070: ldarg.s millisecond
		IL_0072: ldc.i4 1000
		IL_0077: blt.s IL_007b

		IL_0079: ldc.i4.0
		IL_007a: ret

		IL_007b: ldarg.s second
		IL_007d: ldc.i4.s 60
		IL_007f: bne.un.s IL_00a0

		IL_0081: ldsfld bool System.DateTime::s_systemSupportsLeapSeconds
		IL_0086: brfalse.s IL_009e

		IL_0088: ldarg.0
		IL_0089: ldarg.1
		IL_008a: ldarg.2
		IL_008b: ldarg.3
		IL_008c: ldarg.s minute
		IL_008e: ldarg.s second
		IL_0090: ldc.i4.0
		IL_0091: call bool System.DateTime::IsValidTimeWithLeapSeconds(int32, int32, int32, int32, int32, int32, valuetype System.DateTimeKind)
		IL_0096: brfalse.s IL_009e

		IL_0098: ldc.i4.s 59
		IL_009a: starg.s second
		IL_009c: br.s IL_00a0

		IL_009e: ldc.i4.0
		IL_009f: ret

		IL_00a0: ldarg.0
		IL_00a1: ldarg.1
		IL_00a2: ldarg.2
		IL_00a3: call int64 System.DateTime::DateToTicks(int32, int32, int32)
		IL_00a8: ldarg.3
		IL_00a9: ldarg.s minute
		IL_00ab: ldarg.s second
		IL_00ad: call int64 System.DateTime::TimeToTicks(int32, int32, int32)
		IL_00b2: add
		IL_00b3: stloc.1
		IL_00b4: ldloc.1
		IL_00b5: ldarg.s millisecond
		IL_00b7: conv.i8
		IL_00b8: ldc.i4 10000
		IL_00bd: conv.i8
		IL_00be: mul
		IL_00bf: add
		IL_00c0: stloc.1
		IL_00c1: ldloc.1
		IL_00c2: ldc.i4.0
		IL_00c3: conv.i8
		IL_00c4: blt.s IL_00d2

		IL_00c6: ldloc.1
		IL_00c7: ldc.i8 3155378975999999999
		IL_00d0: ble.s IL_00d4

		IL_00d2: ldc.i4.0
		IL_00d3: ret

		IL_00d4: ldarg.s result
		IL_00d6: ldloc.1
		IL_00d7: ldc.i4.0
		IL_00d8: newobj instance void System.DateTime::.ctor(int64, valuetype System.DateTimeKind)
		IL_00dd: stobj System.DateTime
		IL_00e2: ldc.i4.1
		IL_00e3: ret
	} // end of method DateTime::TryCreate

	.method private hidebysig static 
		bool SystemSupportsLeapSeconds () cil managed 
	{
		// Method begins at RVA 0x5bed4
		// Code size 35 (0x23)
		.maxstack 4
		.locals (
			[0] valuetype Interop/NtDll/SYSTEM_LEAP_SECOND_INFORMATION
		)

		IL_0000: ldc.i4 206
		IL_0005: ldloca.s 0
		IL_0007: conv.u
		IL_0008: sizeof Interop/NtDll/SYSTEM_LEAP_SECOND_INFORMATION
		IL_000e: ldc.i4.0
		IL_000f: conv.u
		IL_0010: call uint32 Interop/NtDll::NtQuerySystemInformation(int32, void*, uint32, uint32*)
		IL_0015: brtrue.s IL_0021

		IL_0017: ldloc.0
		IL_0018: ldfld valuetype Interop/BOOLEAN Interop/NtDll/SYSTEM_LEAP_SECOND_INFORMATION::Enabled
		IL_001d: ldc.i4.0
		IL_001e: cgt.un
		IL_0020: ret

		IL_0021: ldc.i4.0
		IL_0022: ret
	} // end of method DateTime::SystemSupportsLeapSeconds

	.method public hidebysig specialname static 
		valuetype System.DateTime get_UtcNow () cil managed 
	{
		// Method begins at RVA 0x5bf04
		// Code size 54 (0x36)
		.maxstack 2
		.locals (
			[0] valuetype System.DateTime/FullSystemTime
		)

		IL_0000: ldsfld bool System.DateTime::s_systemSupportsLeapSeconds
		IL_0005: brfalse.s IL_0017

		IL_0007: ldloca.s 0
		IL_0009: conv.u
		IL_000a: call void System.DateTime::GetSystemTimeWithLeapSecondsHandling(valuetype System.DateTime/FullSystemTime*)
		IL_000f: ldloca.s 0
		IL_0011: call valuetype System.DateTime System.DateTime::CreateDateTimeFromSystemTime(valuetype System.DateTime/FullSystemTime&)
		IL_0016: ret

		IL_0017: call int64 System.DateTime::GetSystemTimeAsFileTime()
		IL_001c: ldc.i8 504911232000000000
		IL_0025: add
		IL_0026: ldc.i8 4611686018427387904
		IL_002f: or
		IL_0030: newobj instance void System.DateTime::.ctor(uint64)
		IL_0035: ret
	} // end of method DateTime::get_UtcNow

	.method assembly hidebysig static 
		bool IsValidTimeWithLeapSeconds (
			int32 year,
			int32 month,
			int32 day,
			int32 hour,
			int32 minute,
			int32 second,
			valuetype System.DateTimeKind kind
		) cil managed 
	{
		// Method begins at RVA 0x5bf48
		// Code size 112 (0x70)
		.maxstack 8
		.locals (
			[0] valuetype System.DateTime,
			[1] valuetype System.DateTime/FullSystemTime,
			[2] bool
		)

		IL_0000: ldloca.s 0
		IL_0002: ldarg.0
		IL_0003: ldarg.1
		IL_0004: ldarg.2
		IL_0005: call instance void System.DateTime::.ctor(int32, int32, int32)
		IL_000a: ldloca.s 1
		IL_000c: ldarg.0
		IL_000d: ldarg.1
		IL_000e: ldloca.s 0
		IL_0010: call instance valuetype System.DayOfWeek System.DateTime::get_DayOfWeek()
		IL_0015: ldarg.2
		IL_0016: ldarg.3
		IL_0017: ldarg.s minute
		IL_0019: ldarg.s second
		IL_001b: call instance void System.DateTime/FullSystemTime::.ctor(int32, int32, valuetype System.DayOfWeek, int32, int32, int32, int32)
		IL_0020: ldarg.s kind
		IL_0022: ldc.i4.1
		IL_0023: beq.s IL_003b

		IL_0025: ldarg.s kind
		IL_0027: ldc.i4.2
		IL_0028: bne.un.s IL_004c

		IL_002a: ldloca.s 1
		IL_002c: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
		IL_0031: conv.u
		IL_0032: ldc.i4.1
		IL_0033: call bool System.DateTime::ValidateSystemTime(valuetype Interop/Kernel32/SYSTEMTIME*, bool)
		IL_0038: stloc.2
		IL_0039: br.s IL_006e

		IL_003b: ldloca.s 1
		IL_003d: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
		IL_0042: conv.u
		IL_0043: ldc.i4.0
		IL_0044: call bool System.DateTime::ValidateSystemTime(valuetype Interop/Kernel32/SYSTEMTIME*, bool)
		IL_0049: stloc.2
		IL_004a: br.s IL_006e

		IL_004c: ldloca.s 1
		IL_004e: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
		IL_0053: conv.u
		IL_0054: ldc.i4.1
		IL_0055: call bool System.DateTime::ValidateSystemTime(valuetype Interop/Kernel32/SYSTEMTIME*, bool)
		IL_005a: brtrue.s IL_006c

		IL_005c: ldloca.s 1
		IL_005e: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
		IL_0063: conv.u
		IL_0064: ldc.i4.0
		IL_0065: call bool System.DateTime::ValidateSystemTime(valuetype Interop/Kernel32/SYSTEMTIME*, bool)
		IL_006a: br.s IL_006d

		IL_006c: ldc.i4.1

		IL_006d: stloc.2

		IL_006e: ldloc.2
		IL_006f: ret
	} // end of method DateTime::IsValidTimeWithLeapSeconds

	.method private hidebysig static 
		valuetype System.DateTime FromFileTimeLeapSecondsAware (
			int64 fileTime
		) cil managed 
	{
		// Method begins at RVA 0x5bfc4
		// Code size 35 (0x23)
		.maxstack 2
		.locals (
			[0] valuetype System.DateTime/FullSystemTime
		)

		IL_0000: ldarg.0
		IL_0001: ldloca.s 0
		IL_0003: conv.u
		IL_0004: call bool System.DateTime::FileTimeToSystemTime(int64, valuetype System.DateTime/FullSystemTime*)
		IL_0009: brfalse.s IL_0013

		IL_000b: ldloca.s 0
		IL_000d: call valuetype System.DateTime System.DateTime::CreateDateTimeFromSystemTime(valuetype System.DateTime/FullSystemTime&)
		IL_0012: ret

		IL_0013: ldstr "fileTime"
		IL_0018: call string System.SR::get_ArgumentOutOfRange_DateTimeBadTicks()
		IL_001d: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0022: throw
	} // end of method DateTime::FromFileTimeLeapSecondsAware

	.method private hidebysig static 
		int64 ToFileTimeLeapSecondsAware (
			int64 ticks
		) cil managed 
	{
		// Method begins at RVA 0x5bff4
		// Code size 49 (0x31)
		.maxstack 3
		.locals (
			[0] valuetype System.DateTime/FullSystemTime,
			[1] int64
		)

		IL_0000: ldloca.s 0
		IL_0002: ldarg.0
		IL_0003: call instance void System.DateTime/FullSystemTime::.ctor(int64)
		IL_0008: ldloca.s 0
		IL_000a: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
		IL_000f: conv.u
		IL_0010: ldloca.s 1
		IL_0012: conv.u
		IL_0013: call bool System.DateTime::SystemTimeToFileTime(valuetype Interop/Kernel32/SYSTEMTIME*, int64*)
		IL_0018: brfalse.s IL_0025

		IL_001a: ldloc.1
		IL_001b: ldarg.0
		IL_001c: ldc.i4 10000
		IL_0021: conv.i8
		IL_0022: rem
		IL_0023: add
		IL_0024: ret

		IL_0025: ldnull
		IL_0026: call string System.SR::get_ArgumentOutOfRange_FileTimeInvalid()
		IL_002b: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0030: throw
	} // end of method DateTime::ToFileTimeLeapSecondsAware

	.method private hidebysig static 
		valuetype System.DateTime CreateDateTimeFromSystemTime (
			[in] valuetype System.DateTime/FullSystemTime& time
		) cil managed aggressiveinlining 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x5c034
		// Code size 128 (0x80)
		.maxstack 4
		.locals (
			[0] int64
		)

		IL_0000: ldarg.0
		IL_0001: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
		IL_0006: ldfld uint16 Interop/Kernel32/SYSTEMTIME::Year
		IL_000b: ldarg.0
		IL_000c: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
		IL_0011: ldfld uint16 Interop/Kernel32/SYSTEMTIME::Month
		IL_0016: ldarg.0
		IL_0017: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
		IL_001c: ldfld uint16 Interop/Kernel32/SYSTEMTIME::Day
		IL_0021: call int64 System.DateTime::DateToTicks(int32, int32, int32)
		IL_0026: stloc.0
		IL_0027: ldloc.0
		IL_0028: ldarg.0
		IL_0029: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
		IL_002e: ldfld uint16 Interop/Kernel32/SYSTEMTIME::Hour
		IL_0033: ldarg.0
		IL_0034: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
		IL_0039: ldfld uint16 Interop/Kernel32/SYSTEMTIME::Minute
		IL_003e: ldarg.0
		IL_003f: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
		IL_0044: ldfld uint16 Interop/Kernel32/SYSTEMTIME::Second
		IL_0049: call int64 System.DateTime::TimeToTicks(int32, int32, int32)
		IL_004e: add
		IL_004f: stloc.0
		IL_0050: ldloc.0
		IL_0051: ldarg.0
		IL_0052: ldflda valuetype Interop/Kernel32/SYSTEMTIME System.DateTime/FullSystemTime::systemTime
		IL_0057: ldfld uint16 Interop/Kernel32/SYSTEMTIME::Milliseconds
		IL_005c: conv.u8
		IL_005d: ldc.i4 10000
		IL_0062: conv.i8
		IL_0063: mul
		IL_0064: add
		IL_0065: stloc.0
		IL_0066: ldloc.0
		IL_0067: ldarg.0
		IL_0068: ldfld int64 System.DateTime/FullSystemTime::hundredNanoSecond
		IL_006d: add
		IL_006e: stloc.0
		IL_006f: ldloc.0
		IL_0070: ldc.i8 4611686018427387904
		IL_0079: or
		IL_007a: newobj instance void System.DateTime::.ctor(uint64)
		IL_007f: ret
	} // end of method DateTime::CreateDateTimeFromSystemTime

	.method private hidebysig specialname rtspecialname static 
		void .cctor () cil managed 
	{
		// Method begins at RVA 0x5c0c0
		// Code size 110 (0x6e)
		.maxstack 3

		IL_0000: ldc.i4.s 13
		IL_0002: newarr System.Int32
		IL_0007: dup
		IL_0008: ldtoken field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=52' '<PrivateImplementationDetails>'::'5857EE4CE98BFABBD62B385C1098507DD0052FF3951043AAD6A1DABD495F18AA'
		IL_000d: call void System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class System.Array, valuetype System.RuntimeFieldHandle)
		IL_0012: stsfld int32[] System.DateTime::s_daysToMonth365
		IL_0017: ldc.i4.s 13
		IL_0019: newarr System.Int32
		IL_001e: dup
		IL_001f: ldtoken field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=52' '<PrivateImplementationDetails>'::FADB218011E7702BB9575D0C32A685DA10B5C72EB809BD9A955DB1C76E4D8315
		IL_0024: call void System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class System.Array, valuetype System.RuntimeFieldHandle)
		IL_0029: stsfld int32[] System.DateTime::s_daysToMonth366
		IL_002e: ldc.i4.0
		IL_002f: conv.i8
		IL_0030: ldc.i4.0
		IL_0031: newobj instance void System.DateTime::.ctor(int64, valuetype System.DateTimeKind)
		IL_0036: stsfld valuetype System.DateTime System.DateTime::MinValue
		IL_003b: ldc.i8 3155378975999999999
		IL_0044: ldc.i4.0
		IL_0045: newobj instance void System.DateTime::.ctor(int64, valuetype System.DateTimeKind)
		IL_004a: stsfld valuetype System.DateTime System.DateTime::MaxValue
		IL_004f: ldc.i8 621355968000000000
		IL_0058: ldc.i4.1
		IL_0059: newobj instance void System.DateTime::.ctor(int64, valuetype System.DateTimeKind)
		IL_005e: stsfld valuetype System.DateTime System.DateTime::UnixEpoch
		IL_0063: call bool System.DateTime::SystemSupportsLeapSeconds()
		IL_0068: stsfld bool System.DateTime::s_systemSupportsLeapSeconds
		IL_006d: ret
	} // end of method DateTime::.cctor

	// Properties
	.property instance int64 InternalTicks()
	{
		.get instance int64 System.DateTime::get_InternalTicks()
	}
	.property instance uint64 InternalKind()
	{
		.get instance uint64 System.DateTime::get_InternalKind()
	}
	.property instance valuetype System.DateTime Date()
	{
		.get instance valuetype System.DateTime System.DateTime::get_Date()
	}
	.property instance int32 Day()
	{
		.get instance int32 System.DateTime::get_Day()
	}
	.property instance valuetype System.DayOfWeek DayOfWeek()
	{
		.get instance valuetype System.DayOfWeek System.DateTime::get_DayOfWeek()
	}
	.property instance int32 DayOfYear()
	{
		.get instance int32 System.DateTime::get_DayOfYear()
	}
	.property instance int32 Hour()
	{
		.get instance int32 System.DateTime::get_Hour()
	}
	.property instance valuetype System.DateTimeKind Kind()
	{
		.get instance valuetype System.DateTimeKind System.DateTime::get_Kind()
	}
	.property instance int32 Millisecond()
	{
		.get instance int32 System.DateTime::get_Millisecond()
	}
	.property instance int32 Minute()
	{
		.get instance int32 System.DateTime::get_Minute()
	}
	.property instance int32 Month()
	{
		.get instance int32 System.DateTime::get_Month()
	}
	.property valuetype System.DateTime Now()
	{
		.get valuetype System.DateTime System.DateTime::get_Now()
	}
	.property instance int32 Second()
	{
		.get instance int32 System.DateTime::get_Second()
	}
	.property instance int64 Ticks()
	{
		.get instance int64 System.DateTime::get_Ticks()
	}
	.property instance valuetype System.TimeSpan TimeOfDay()
	{
		.get instance valuetype System.TimeSpan System.DateTime::get_TimeOfDay()
	}
	.property valuetype System.DateTime Today()
	{
		.get valuetype System.DateTime System.DateTime::get_Today()
	}
	.property instance int32 Year()
	{
		.get instance int32 System.DateTime::get_Year()
	}
	.property valuetype System.DateTime UtcNow()
	{
		.get valuetype System.DateTime System.DateTime::get_UtcNow()
	}

} // end of class System.DateTime