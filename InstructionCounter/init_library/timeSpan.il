.class public sequential ansi sealed serializable beforefieldinit System.TimeSpan
	extends System.ValueType
	implements System.IComparable,
	           class System.IComparable`1<valuetype System.TimeSpan>,
	           class System.IEquatable`1<valuetype System.TimeSpan>,
	           System.IFormattable,
	           System.ISpanFormattable
{
	.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
		01 00 00 00
	)
	// Fields
	.field public static literal int64 TicksPerMillisecond = int64(10000)
	.field public static literal int64 TicksPerSecond = int64(10000000)
	.field public static literal int64 TicksPerMinute = int64(600000000)
	.field public static literal int64 TicksPerHour = int64(36000000000)
	.field public static literal int64 TicksPerDay = int64(864000000000)
	.field public static initonly valuetype System.TimeSpan Zero
	.field public static initonly valuetype System.TimeSpan MaxValue
	.field public static initonly valuetype System.TimeSpan MinValue
	.field assembly initonly int64 _ticks

	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int64 ticks
		) cil managed 
	{
		// Method begins at RVA 0x88b44
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: stfld int64 System.TimeSpan::_ticks
		IL_0007: ret
	} // end of method TimeSpan::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 hours,
			int32 minutes,
			int32 seconds
		) cil managed 
	{
		// Method begins at RVA 0x88b4d
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: call int64 System.TimeSpan::TimeToTicks(int32, int32, int32)
		IL_0009: stfld int64 System.TimeSpan::_ticks
		IL_000e: ret
	} // end of method TimeSpan::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 days,
			int32 hours,
			int32 minutes,
			int32 seconds
		) cil managed 
	{
		// Method begins at RVA 0x88b5d
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: ldarg.s seconds
		IL_0006: ldc.i4.0
		IL_0007: call instance void System.TimeSpan::.ctor(int32, int32, int32, int32, int32)
		IL_000c: ret
	} // end of method TimeSpan::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 days,
			int32 hours,
			int32 minutes,
			int32 seconds,
			int32 milliseconds
		) cil managed 
	{
		// Method begins at RVA 0x88b6c
		// Code size 97 (0x61)
		.maxstack 3
		.locals (
			[0] int64
		)

		IL_0000: ldarg.1
		IL_0001: conv.i8
		IL_0002: ldc.i4 3600
		IL_0007: conv.i8
		IL_0008: mul
		IL_0009: ldc.i4.s 24
		IL_000b: conv.i8
		IL_000c: mul
		IL_000d: ldarg.2
		IL_000e: conv.i8
		IL_000f: ldc.i4 3600
		IL_0014: conv.i8
		IL_0015: mul
		IL_0016: add
		IL_0017: ldarg.3
		IL_0018: conv.i8
		IL_0019: ldc.i4.s 60
		IL_001b: conv.i8
		IL_001c: mul
		IL_001d: add
		IL_001e: ldarg.s seconds
		IL_0020: conv.i8
		IL_0021: add
		IL_0022: ldc.i4 1000
		IL_0027: conv.i8
		IL_0028: mul
		IL_0029: ldarg.s milliseconds
		IL_002b: conv.i8
		IL_002c: add
		IL_002d: stloc.0
		IL_002e: ldloc.0
		IL_002f: ldc.i8 922337203685477
		IL_0038: bgt.s IL_0046

		IL_003a: ldloc.0
		IL_003b: ldc.i8 -922337203685477
		IL_0044: bge.s IL_0052

		IL_0046: ldnull
		IL_0047: call string System.SR::get_Overflow_TimeSpanTooLong()
		IL_004c: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0051: throw

		IL_0052: ldarg.0
		IL_0053: ldloc.0
		IL_0054: ldc.i4 10000
		IL_0059: conv.i8
		IL_005a: mul
		IL_005b: stfld int64 System.TimeSpan::_ticks
		IL_0060: ret
	} // end of method TimeSpan::.ctor

	.method public hidebysig specialname 
		instance int64 get_Ticks () cil managed 
	{
		// Method begins at RVA 0x88bd9
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: ret
	} // end of method TimeSpan::get_Ticks

	.method public hidebysig specialname 
		instance int32 get_Days () cil managed 
	{
		// Method begins at RVA 0x88be1
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: ldc.i8 864000000000
		IL_000f: div
		IL_0010: conv.i4
		IL_0011: ret
	} // end of method TimeSpan::get_Days

	.method public hidebysig specialname 
		instance int32 get_Hours () cil managed 
	{
		// Method begins at RVA 0x88bf4
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: ldc.i8 36000000000
		IL_000f: div
		IL_0010: ldc.i4.s 24
		IL_0012: conv.i8
		IL_0013: rem
		IL_0014: conv.i4
		IL_0015: ret
	} // end of method TimeSpan::get_Hours

	.method public hidebysig specialname 
		instance int32 get_Milliseconds () cil managed 
	{
		// Method begins at RVA 0x88c0b
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: ldc.i4 10000
		IL_000b: conv.i8
		IL_000c: div
		IL_000d: ldc.i4 1000
		IL_0012: conv.i8
		IL_0013: rem
		IL_0014: conv.i4
		IL_0015: ret
	} // end of method TimeSpan::get_Milliseconds

	.method public hidebysig specialname 
		instance int32 get_Minutes () cil managed 
	{
		// Method begins at RVA 0x88c22
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: ldc.i4 600000000
		IL_000b: conv.i8
		IL_000c: div
		IL_000d: ldc.i4.s 60
		IL_000f: conv.i8
		IL_0010: rem
		IL_0011: conv.i4
		IL_0012: ret
	} // end of method TimeSpan::get_Minutes

	.method public hidebysig specialname 
		instance int32 get_Seconds () cil managed 
	{
		// Method begins at RVA 0x88c36
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: ldc.i4 10000000
		IL_000b: conv.i8
		IL_000c: div
		IL_000d: ldc.i4.s 60
		IL_000f: conv.i8
		IL_0010: rem
		IL_0011: conv.i4
		IL_0012: ret
	} // end of method TimeSpan::get_Seconds

	.method public hidebysig specialname 
		instance float64 get_TotalDays () cil managed 
	{
		// Method begins at RVA 0x88c4a
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: conv.r8
		IL_0007: ldc.r8 864000000000
		IL_0010: div
		IL_0011: ret
	} // end of method TimeSpan::get_TotalDays

	.method public hidebysig specialname 
		instance float64 get_TotalHours () cil managed 
	{
		// Method begins at RVA 0x88c5d
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: conv.r8
		IL_0007: ldc.r8 36000000000
		IL_0010: div
		IL_0011: ret
	} // end of method TimeSpan::get_TotalHours

	.method public hidebysig specialname 
		instance float64 get_TotalMilliseconds () cil managed 
	{
		// Method begins at RVA 0x88c70
		// Code size 64 (0x40)
		.maxstack 2
		.locals (
			[0] float64
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: conv.r8
		IL_0007: ldc.r8 10000
		IL_0010: div
		IL_0011: stloc.0
		IL_0012: ldloc.0
		IL_0013: ldc.r8 922337203685477
		IL_001c: ble.un.s IL_0028

		IL_001e: ldc.r8 922337203685477
		IL_0027: ret

		IL_0028: ldloc.0
		IL_0029: ldc.r8 -922337203685477
		IL_0032: bge.un.s IL_003e

		IL_0034: ldc.r8 -922337203685477
		IL_003d: ret

		IL_003e: ldloc.0
		IL_003f: ret
	} // end of method TimeSpan::get_TotalMilliseconds

	.method public hidebysig specialname 
		instance float64 get_TotalMinutes () cil managed 
	{
		// Method begins at RVA 0x88cbc
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: conv.r8
		IL_0007: ldc.r8 600000000
		IL_0010: div
		IL_0011: ret
	} // end of method TimeSpan::get_TotalMinutes

	.method public hidebysig specialname 
		instance float64 get_TotalSeconds () cil managed 
	{
		// Method begins at RVA 0x88ccf
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: conv.r8
		IL_0007: ldc.r8 10000000
		IL_0010: div
		IL_0011: ret
	} // end of method TimeSpan::get_TotalSeconds

	.method public hidebysig 
		instance valuetype System.TimeSpan Add (
			valuetype System.TimeSpan ts
		) cil managed 
	{
		// Method begins at RVA 0x88ce4
		// Code size 67 (0x43)
		.maxstack 3
		.locals (
			[0] int64
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: ldarg.1
		IL_0007: ldfld int64 System.TimeSpan::_ticks
		IL_000c: add
		IL_000d: stloc.0
		IL_000e: ldarg.0
		IL_000f: ldfld int64 System.TimeSpan::_ticks
		IL_0014: ldc.i4.s 63
		IL_0016: shr
		IL_0017: ldarg.1
		IL_0018: ldfld int64 System.TimeSpan::_ticks
		IL_001d: ldc.i4.s 63
		IL_001f: shr
		IL_0020: bne.un.s IL_003c

		IL_0022: ldarg.0
		IL_0023: ldfld int64 System.TimeSpan::_ticks
		IL_0028: ldc.i4.s 63
		IL_002a: shr
		IL_002b: ldloc.0
		IL_002c: ldc.i4.s 63
		IL_002e: shr
		IL_002f: beq.s IL_003c

		IL_0031: call string System.SR::get_Overflow_TimeSpanTooLong()
		IL_0036: newobj instance void System.OverflowException::.ctor(string)
		IL_003b: throw

		IL_003c: ldloc.0
		IL_003d: newobj instance void System.TimeSpan::.ctor(int64)
		IL_0042: ret
	} // end of method TimeSpan::Add

	.method public hidebysig static 
		int32 Compare (
			valuetype System.TimeSpan t1,
			valuetype System.TimeSpan t2
		) cil managed 
	{
		// Method begins at RVA 0x88d33
		// Code size 34 (0x22)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: ldarg.1
		IL_0007: ldfld int64 System.TimeSpan::_ticks
		IL_000c: ble.s IL_0010

		IL_000e: ldc.i4.1
		IL_000f: ret

		IL_0010: ldarg.0
		IL_0011: ldfld int64 System.TimeSpan::_ticks
		IL_0016: ldarg.1
		IL_0017: ldfld int64 System.TimeSpan::_ticks
		IL_001c: bge.s IL_0020

		IL_001e: ldc.i4.m1
		IL_001f: ret

		IL_0020: ldc.i4.0
		IL_0021: ret
	} // end of method TimeSpan::Compare

	.method public final hidebysig newslot virtual 
		instance int32 CompareTo (
			object 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x88d58
		// Code size 60 (0x3c)
		.maxstack 2
		.locals (
			[0] int64
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.1
		IL_0004: ret

		IL_0005: ldarg.1
		IL_0006: isinst System.TimeSpan
		IL_000b: brtrue.s IL_0018

		IL_000d: call string System.SR::get_Arg_MustBeTimeSpan()
		IL_0012: newobj instance void System.ArgumentException::.ctor(string)
		IL_0017: throw

		IL_0018: ldarg.1
		IL_0019: unbox System.TimeSpan
		IL_001e: ldfld int64 System.TimeSpan::_ticks
		IL_0023: stloc.0
		IL_0024: ldarg.0
		IL_0025: ldfld int64 System.TimeSpan::_ticks
		IL_002a: ldloc.0
		IL_002b: ble.s IL_002f

		IL_002d: ldc.i4.1
		IL_002e: ret

		IL_002f: ldarg.0
		IL_0030: ldfld int64 System.TimeSpan::_ticks
		IL_0035: ldloc.0
		IL_0036: bge.s IL_003a

		IL_0038: ldc.i4.m1
		IL_0039: ret

		IL_003a: ldc.i4.0
		IL_003b: ret
	} // end of method TimeSpan::CompareTo

	.method public final hidebysig newslot virtual 
		instance int32 CompareTo (
			valuetype System.TimeSpan 'value'
		) cil managed 
	{
		// Method begins at RVA 0x88da0
		// Code size 31 (0x1f)
		.maxstack 2
		.locals (
			[0] int64
		)

		IL_0000: ldarg.1
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: stloc.0
		IL_0007: ldarg.0
		IL_0008: ldfld int64 System.TimeSpan::_ticks
		IL_000d: ldloc.0
		IL_000e: ble.s IL_0012

		IL_0010: ldc.i4.1
		IL_0011: ret

		IL_0012: ldarg.0
		IL_0013: ldfld int64 System.TimeSpan::_ticks
		IL_0018: ldloc.0
		IL_0019: bge.s IL_001d

		IL_001b: ldc.i4.m1
		IL_001c: ret

		IL_001d: ldc.i4.0
		IL_001e: ret
	} // end of method TimeSpan::CompareTo

	.method public hidebysig static 
		valuetype System.TimeSpan FromDays (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x88dcb
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.r8 864000000000
		IL_000a: call valuetype System.TimeSpan System.TimeSpan::Interval(float64, float64)
		IL_000f: ret
	} // end of method TimeSpan::FromDays

	.method public hidebysig 
		instance valuetype System.TimeSpan Duration () cil managed 
	{
		// Method begins at RVA 0x88ddc
		// Code size 60 (0x3c)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.TimeSpan::get_Ticks()
		IL_0006: ldsflda valuetype System.TimeSpan System.TimeSpan::MinValue
		IL_000b: call instance int64 System.TimeSpan::get_Ticks()
		IL_0010: bne.un.s IL_001d

		IL_0012: call string System.SR::get_Overflow_Duration()
		IL_0017: newobj instance void System.OverflowException::.ctor(string)
		IL_001c: throw

		IL_001d: ldarg.0
		IL_001e: ldfld int64 System.TimeSpan::_ticks
		IL_0023: ldc.i4.0
		IL_0024: conv.i8
		IL_0025: bge.s IL_0030

		IL_0027: ldarg.0
		IL_0028: ldfld int64 System.TimeSpan::_ticks
		IL_002d: neg
		IL_002e: br.s IL_0036

		IL_0030: ldarg.0
		IL_0031: ldfld int64 System.TimeSpan::_ticks

		IL_0036: newobj instance void System.TimeSpan::.ctor(int64)
		IL_003b: ret
	} // end of method TimeSpan::Duration

	.method public hidebysig virtual 
		instance bool Equals (
			object 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x88e19
		// Code size 30 (0x1e)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: isinst System.TimeSpan
		IL_0006: brfalse.s IL_001c

		IL_0008: ldarg.0
		IL_0009: ldfld int64 System.TimeSpan::_ticks
		IL_000e: ldarg.1
		IL_000f: unbox System.TimeSpan
		IL_0014: ldfld int64 System.TimeSpan::_ticks
		IL_0019: ceq
		IL_001b: ret

		IL_001c: ldc.i4.0
		IL_001d: ret
	} // end of method TimeSpan::Equals

	.method public final hidebysig newslot virtual 
		instance bool Equals (
			valuetype System.TimeSpan obj
		) cil managed 
	{
		// Method begins at RVA 0x88e38
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: ldarg.1
		IL_0007: ldfld int64 System.TimeSpan::_ticks
		IL_000c: ceq
		IL_000e: ret
	} // end of method TimeSpan::Equals

	.method public hidebysig static 
		bool Equals (
			valuetype System.TimeSpan t1,
			valuetype System.TimeSpan t2
		) cil managed 
	{
		// Method begins at RVA 0x88e38
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: ldarg.1
		IL_0007: ldfld int64 System.TimeSpan::_ticks
		IL_000c: ceq
		IL_000e: ret
	} // end of method TimeSpan::Equals

	.method public hidebysig virtual 
		instance int32 GetHashCode () cil managed 
	{
		// Method begins at RVA 0x88e48
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: conv.i4
		IL_0007: ldarg.0
		IL_0008: ldfld int64 System.TimeSpan::_ticks
		IL_000d: ldc.i4.s 32
		IL_000f: shr
		IL_0010: conv.i4
		IL_0011: xor
		IL_0012: ret
	} // end of method TimeSpan::GetHashCode

	.method public hidebysig static 
		valuetype System.TimeSpan FromHours (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x88e5c
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.r8 36000000000
		IL_000a: call valuetype System.TimeSpan System.TimeSpan::Interval(float64, float64)
		IL_000f: ret
	} // end of method TimeSpan::FromHours

	.method private hidebysig static 
		valuetype System.TimeSpan Interval (
			float64 'value',
			float64 scale
		) cil managed 
	{
		// Method begins at RVA 0x88e70
		// Code size 30 (0x1e)
		.maxstack 2
		.locals (
			[0] float64
		)

		IL_0000: ldarg.0
		IL_0001: call bool System.Double::IsNaN(float64)
		IL_0006: brfalse.s IL_0013

		IL_0008: call string System.SR::get_Arg_CannotBeNaN()
		IL_000d: newobj instance void System.ArgumentException::.ctor(string)
		IL_0012: throw

		IL_0013: ldarg.0
		IL_0014: ldarg.1
		IL_0015: mul
		IL_0016: stloc.0
		IL_0017: ldloc.0
		IL_0018: call valuetype System.TimeSpan System.TimeSpan::IntervalFromDoubleTicks(float64)
		IL_001d: ret
	} // end of method TimeSpan::Interval

	.method private hidebysig static 
		valuetype System.TimeSpan IntervalFromDoubleTicks (
			float64 ticks
		) cil managed 
	{
		// Method begins at RVA 0x88e9c
		// Code size 69 (0x45)
		.maxstack 2

		IL_0000: ldarg.0
		IL_0001: ldc.r8 9.223372036854776E+18
		IL_000a: bgt.s IL_0020

		IL_000c: ldarg.0
		IL_000d: ldc.r8 -9.223372036854776E+18
		IL_0016: blt.s IL_0020

		IL_0018: ldarg.0
		IL_0019: call bool System.Double::IsNaN(float64)
		IL_001e: brfalse.s IL_002b

		IL_0020: call string System.SR::get_Overflow_TimeSpanTooLong()
		IL_0025: newobj instance void System.OverflowException::.ctor(string)
		IL_002a: throw

		IL_002b: ldarg.0
		IL_002c: ldc.r8 9.223372036854776E+18
		IL_0035: bne.un.s IL_003d

		IL_0037: ldsfld valuetype System.TimeSpan System.TimeSpan::MaxValue
		IL_003c: ret

		IL_003d: ldarg.0
		IL_003e: conv.i8
		IL_003f: newobj instance void System.TimeSpan::.ctor(int64)
		IL_0044: ret
	} // end of method TimeSpan::IntervalFromDoubleTicks

	.method public hidebysig static 
		valuetype System.TimeSpan FromMilliseconds (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x88eed
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.r8 10000
		IL_000a: call valuetype System.TimeSpan System.TimeSpan::Interval(float64, float64)
		IL_000f: ret
	} // end of method TimeSpan::FromMilliseconds

	.method public hidebysig static 
		valuetype System.TimeSpan FromMinutes (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x88efe
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.r8 600000000
		IL_000a: call valuetype System.TimeSpan System.TimeSpan::Interval(float64, float64)
		IL_000f: ret
	} // end of method TimeSpan::FromMinutes

	.method public hidebysig 
		instance valuetype System.TimeSpan Negate () cil managed 
	{
		// Method begins at RVA 0x88f0f
		// Code size 42 (0x2a)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.TimeSpan::get_Ticks()
		IL_0006: ldsflda valuetype System.TimeSpan System.TimeSpan::MinValue
		IL_000b: call instance int64 System.TimeSpan::get_Ticks()
		IL_0010: bne.un.s IL_001d

		IL_0012: call string System.SR::get_Overflow_NegateTwosCompNum()
		IL_0017: newobj instance void System.OverflowException::.ctor(string)
		IL_001c: throw

		IL_001d: ldarg.0
		IL_001e: ldfld int64 System.TimeSpan::_ticks
		IL_0023: neg
		IL_0024: newobj instance void System.TimeSpan::.ctor(int64)
		IL_0029: ret
	} // end of method TimeSpan::Negate

	.method public hidebysig static 
		valuetype System.TimeSpan FromSeconds (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x88f3a
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.r8 10000000
		IL_000a: call valuetype System.TimeSpan System.TimeSpan::Interval(float64, float64)
		IL_000f: ret
	} // end of method TimeSpan::FromSeconds

	.method public hidebysig 
		instance valuetype System.TimeSpan Subtract (
			valuetype System.TimeSpan ts
		) cil managed 
	{
		// Method begins at RVA 0x88f4c
		// Code size 67 (0x43)
		.maxstack 3
		.locals (
			[0] int64
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: ldarg.1
		IL_0007: ldfld int64 System.TimeSpan::_ticks
		IL_000c: sub
		IL_000d: stloc.0
		IL_000e: ldarg.0
		IL_000f: ldfld int64 System.TimeSpan::_ticks
		IL_0014: ldc.i4.s 63
		IL_0016: shr
		IL_0017: ldarg.1
		IL_0018: ldfld int64 System.TimeSpan::_ticks
		IL_001d: ldc.i4.s 63
		IL_001f: shr
		IL_0020: beq.s IL_003c

		IL_0022: ldarg.0
		IL_0023: ldfld int64 System.TimeSpan::_ticks
		IL_0028: ldc.i4.s 63
		IL_002a: shr
		IL_002b: ldloc.0
		IL_002c: ldc.i4.s 63
		IL_002e: shr
		IL_002f: beq.s IL_003c

		IL_0031: call string System.SR::get_Overflow_TimeSpanTooLong()
		IL_0036: newobj instance void System.OverflowException::.ctor(string)
		IL_003b: throw

		IL_003c: ldloc.0
		IL_003d: newobj instance void System.TimeSpan::.ctor(int64)
		IL_0042: ret
	} // end of method TimeSpan::Subtract

	.method public hidebysig 
		instance valuetype System.TimeSpan Multiply (
			float64 factor
		) cil managed 
	{
		// Method begins at RVA 0x88f9b
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.TimeSpan
		IL_0006: ldarg.1
		IL_0007: call valuetype System.TimeSpan System.TimeSpan::op_Multiply(valuetype System.TimeSpan, float64)
		IL_000c: ret
	} // end of method TimeSpan::Multiply

	.method public hidebysig 
		instance valuetype System.TimeSpan Divide (
			float64 divisor
		) cil managed 
	{
		// Method begins at RVA 0x88fa9
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.TimeSpan
		IL_0006: ldarg.1
		IL_0007: call valuetype System.TimeSpan System.TimeSpan::op_Division(valuetype System.TimeSpan, float64)
		IL_000c: ret
	} // end of method TimeSpan::Divide

	.method public hidebysig 
		instance float64 Divide (
			valuetype System.TimeSpan ts
		) cil managed 
	{
		// Method begins at RVA 0x88fb7
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.TimeSpan
		IL_0006: ldarg.1
		IL_0007: call float64 System.TimeSpan::op_Division(valuetype System.TimeSpan, valuetype System.TimeSpan)
		IL_000c: ret
	} // end of method TimeSpan::Divide

	.method public hidebysig static 
		valuetype System.TimeSpan FromTicks (
			int64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x88fc5
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void System.TimeSpan::.ctor(int64)
		IL_0006: ret
	} // end of method TimeSpan::FromTicks

	.method assembly hidebysig static 
		int64 TimeToTicks (
			int32 hour,
			int32 minute,
			int32 second
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x88fd0
		// Code size 58 (0x3a)
		.maxstack 3
		.locals (
			[0] int64
		)

		IL_0000: ldarg.0
		IL_0001: conv.i8
		IL_0002: ldc.i4 3600
		IL_0007: conv.i8
		IL_0008: mul
		IL_0009: ldarg.1
		IL_000a: conv.i8
		IL_000b: ldc.i4.s 60
		IL_000d: conv.i8
		IL_000e: mul
		IL_000f: add
		IL_0010: ldarg.2
		IL_0011: conv.i8
		IL_0012: add
		IL_0013: stloc.0
		IL_0014: ldloc.0
		IL_0015: ldc.i8 922337203685
		IL_001e: bgt.s IL_002c

		IL_0020: ldloc.0
		IL_0021: ldc.i8 -922337203685
		IL_002a: bge.s IL_0031

		IL_002c: call void System.ThrowHelper::ThrowArgumentOutOfRange_TimeSpanTooLong()

		IL_0031: ldloc.0
		IL_0032: ldc.i4 10000000
		IL_0037: conv.i8
		IL_0038: mul
		IL_0039: ret
	} // end of method TimeSpan::TimeToTicks

	.method private hidebysig static 
		void ValidateStyles (
			valuetype System.Globalization.TimeSpanStyles style,
			string parameterName
		) cil managed 
	{
		// Method begins at RVA 0x89016
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0013

		IL_0003: ldarg.0
		IL_0004: ldc.i4.1
		IL_0005: beq.s IL_0013

		IL_0007: call string System.SR::get_Argument_InvalidTimeSpanStyles()
		IL_000c: ldarg.1
		IL_000d: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0012: throw

		IL_0013: ret
	} // end of method TimeSpan::ValidateStyles

	.method public hidebysig static 
		valuetype System.TimeSpan Parse (
			string s
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x8902b
		// Code size 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 18
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0010: ldnull
		IL_0011: call valuetype System.TimeSpan System.Globalization.TimeSpanParse::Parse(valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider)
		IL_0016: ret
	} // end of method TimeSpan::Parse

	.method public hidebysig static 
		valuetype System.TimeSpan Parse (
			string input,
			class System.IFormatProvider formatProvider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x89043
		// Code size 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 18
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0010: ldarg.1
		IL_0011: call valuetype System.TimeSpan System.Globalization.TimeSpanParse::Parse(valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider)
		IL_0016: ret
	} // end of method TimeSpan::Parse

	.method public hidebysig static 
		valuetype System.TimeSpan Parse (
			valuetype System.ReadOnlySpan`1<char> input,
			[opt] class System.IFormatProvider formatProvider
		) cil managed 
	{
		.param [2] = nullref
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x8905b
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call valuetype System.TimeSpan System.Globalization.TimeSpanParse::Parse(valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider)
		IL_0007: ret
	} // end of method TimeSpan::Parse

	.method public hidebysig static 
		valuetype System.TimeSpan ParseExact (
			string input,
			string format,
			class System.IFormatProvider formatProvider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x89064
		// Code size 40 (0x28)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 18
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
		IL_0021: ldc.i4.0
		IL_0022: call valuetype System.TimeSpan System.Globalization.TimeSpanParse::ParseExact(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider, valuetype System.Globalization.TimeSpanStyles)
		IL_0027: ret
	} // end of method TimeSpan::ParseExact

	.method public hidebysig static 
		valuetype System.TimeSpan ParseExact (
			string input,
			string[] formats,
			class System.IFormatProvider formatProvider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x8908d
		// Code size 25 (0x19)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 18
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0010: ldarg.1
		IL_0011: ldarg.2
		IL_0012: ldc.i4.0
		IL_0013: call valuetype System.TimeSpan System.Globalization.TimeSpanParse::ParseExactMultiple(valuetype System.ReadOnlySpan`1<char>, string[], class System.IFormatProvider, valuetype System.Globalization.TimeSpanStyles)
		IL_0018: ret
	} // end of method TimeSpan::ParseExact

	.method public hidebysig static 
		valuetype System.TimeSpan ParseExact (
			string input,
			string format,
			class System.IFormatProvider formatProvider,
			valuetype System.Globalization.TimeSpanStyles styles
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x890a7
		// Code size 51 (0x33)
		.maxstack 8

		IL_0000: ldarg.3
		IL_0001: ldstr "styles"
		IL_0006: call void System.TimeSpan::ValidateStyles(valuetype System.Globalization.TimeSpanStyles, string)
		IL_000b: ldarg.0
		IL_000c: brtrue.s IL_0015

		IL_000e: ldc.i4.s 18
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
		IL_002c: ldarg.3
		IL_002d: call valuetype System.TimeSpan System.Globalization.TimeSpanParse::ParseExact(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider, valuetype System.Globalization.TimeSpanStyles)
		IL_0032: ret
	} // end of method TimeSpan::ParseExact

	.method public hidebysig static 
		valuetype System.TimeSpan ParseExact (
			valuetype System.ReadOnlySpan`1<char> input,
			valuetype System.ReadOnlySpan`1<char> format,
			class System.IFormatProvider formatProvider,
			[opt] valuetype System.Globalization.TimeSpanStyles styles
		) cil managed 
	{
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [4] = int32(0)
		// Method begins at RVA 0x890db
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarg.3
		IL_0001: ldstr "styles"
		IL_0006: call void System.TimeSpan::ValidateStyles(valuetype System.Globalization.TimeSpanStyles, string)
		IL_000b: ldarg.0
		IL_000c: ldarg.1
		IL_000d: ldarg.2
		IL_000e: ldarg.3
		IL_000f: call valuetype System.TimeSpan System.Globalization.TimeSpanParse::ParseExact(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider, valuetype System.Globalization.TimeSpanStyles)
		IL_0014: ret
	} // end of method TimeSpan::ParseExact

	.method public hidebysig static 
		valuetype System.TimeSpan ParseExact (
			string input,
			string[] formats,
			class System.IFormatProvider formatProvider,
			valuetype System.Globalization.TimeSpanStyles styles
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x890f1
		// Code size 36 (0x24)
		.maxstack 8

		IL_0000: ldarg.3
		IL_0001: ldstr "styles"
		IL_0006: call void System.TimeSpan::ValidateStyles(valuetype System.Globalization.TimeSpanStyles, string)
		IL_000b: ldarg.0
		IL_000c: brtrue.s IL_0015

		IL_000e: ldc.i4.s 18
		IL_0010: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0015: ldarg.0
		IL_0016: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_001b: ldarg.1
		IL_001c: ldarg.2
		IL_001d: ldarg.3
		IL_001e: call valuetype System.TimeSpan System.Globalization.TimeSpanParse::ParseExactMultiple(valuetype System.ReadOnlySpan`1<char>, string[], class System.IFormatProvider, valuetype System.Globalization.TimeSpanStyles)
		IL_0023: ret
	} // end of method TimeSpan::ParseExact

	.method public hidebysig static 
		valuetype System.TimeSpan ParseExact (
			valuetype System.ReadOnlySpan`1<char> input,
			string[] formats,
			class System.IFormatProvider formatProvider,
			[opt] valuetype System.Globalization.TimeSpanStyles styles
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [4] = int32(0)
		// Method begins at RVA 0x89116
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarg.3
		IL_0001: ldstr "styles"
		IL_0006: call void System.TimeSpan::ValidateStyles(valuetype System.Globalization.TimeSpanStyles, string)
		IL_000b: ldarg.0
		IL_000c: ldarg.1
		IL_000d: ldarg.2
		IL_000e: ldarg.3
		IL_000f: call valuetype System.TimeSpan System.Globalization.TimeSpanParse::ParseExactMultiple(valuetype System.ReadOnlySpan`1<char>, string[], class System.IFormatProvider, valuetype System.Globalization.TimeSpanStyles)
		IL_0014: ret
	} // end of method TimeSpan::ParseExact

	.method public hidebysig static 
		bool TryParse (
			string s,
			[out] valuetype System.TimeSpan& result
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullWhenAttribute::.ctor(bool) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x8912c
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000c

		IL_0003: ldarg.1
		IL_0004: initobj System.TimeSpan
		IL_000a: ldc.i4.0
		IL_000b: ret

		IL_000c: ldarg.0
		IL_000d: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0012: ldnull
		IL_0013: ldarg.1
		IL_0014: call bool System.Globalization.TimeSpanParse::TryParse(valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider, valuetype System.TimeSpan&)
		IL_0019: ret
	} // end of method TimeSpan::TryParse

	.method public hidebysig static 
		bool TryParse (
			valuetype System.ReadOnlySpan`1<char> s,
			[out] valuetype System.TimeSpan& result
		) cil managed 
	{
		// Method begins at RVA 0x89147
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: ldarg.1
		IL_0003: call bool System.Globalization.TimeSpanParse::TryParse(valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider, valuetype System.TimeSpan&)
		IL_0008: ret
	} // end of method TimeSpan::TryParse

	.method public hidebysig static 
		bool TryParse (
			string input,
			class System.IFormatProvider formatProvider,
			[out] valuetype System.TimeSpan& result
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullWhenAttribute::.ctor(bool) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x89151
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000c

		IL_0003: ldarg.2
		IL_0004: initobj System.TimeSpan
		IL_000a: ldc.i4.0
		IL_000b: ret

		IL_000c: ldarg.0
		IL_000d: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0012: ldarg.1
		IL_0013: ldarg.2
		IL_0014: call bool System.Globalization.TimeSpanParse::TryParse(valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider, valuetype System.TimeSpan&)
		IL_0019: ret
	} // end of method TimeSpan::TryParse

	.method public hidebysig static 
		bool TryParse (
			valuetype System.ReadOnlySpan`1<char> input,
			class System.IFormatProvider formatProvider,
			[out] valuetype System.TimeSpan& result
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x8916c
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: call bool System.Globalization.TimeSpanParse::TryParse(valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider, valuetype System.TimeSpan&)
		IL_0008: ret
	} // end of method TimeSpan::TryParse

	.method public hidebysig static 
		bool TryParseExact (
			string input,
			string format,
			class System.IFormatProvider formatProvider,
			[out] valuetype System.TimeSpan& result
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
		// Method begins at RVA 0x89176
		// Code size 36 (0x24)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0006

		IL_0003: ldarg.1
		IL_0004: brtrue.s IL_000f

		IL_0006: ldarg.3
		IL_0007: initobj System.TimeSpan
		IL_000d: ldc.i4.0
		IL_000e: ret

		IL_000f: ldarg.0
		IL_0010: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0015: ldarg.1
		IL_0016: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_001b: ldarg.2
		IL_001c: ldc.i4.0
		IL_001d: ldarg.3
		IL_001e: call bool System.Globalization.TimeSpanParse::TryParseExact(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider, valuetype System.Globalization.TimeSpanStyles, valuetype System.TimeSpan&)
		IL_0023: ret
	} // end of method TimeSpan::TryParseExact

	.method public hidebysig static 
		bool TryParseExact (
			valuetype System.ReadOnlySpan`1<char> input,
			valuetype System.ReadOnlySpan`1<char> format,
			class System.IFormatProvider formatProvider,
			[out] valuetype System.TimeSpan& result
		) cil managed 
	{
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x8919b
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldc.i4.0
		IL_0004: ldarg.3
		IL_0005: call bool System.Globalization.TimeSpanParse::TryParseExact(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider, valuetype System.Globalization.TimeSpanStyles, valuetype System.TimeSpan&)
		IL_000a: ret
	} // end of method TimeSpan::TryParseExact

	.method public hidebysig static 
		bool TryParseExact (
			string input,
			string[] formats,
			class System.IFormatProvider formatProvider,
			[out] valuetype System.TimeSpan& result
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
		// Method begins at RVA 0x891a7
		// Code size 28 (0x1c)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000c

		IL_0003: ldarg.3
		IL_0004: initobj System.TimeSpan
		IL_000a: ldc.i4.0
		IL_000b: ret

		IL_000c: ldarg.0
		IL_000d: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0012: ldarg.1
		IL_0013: ldarg.2
		IL_0014: ldc.i4.0
		IL_0015: ldarg.3
		IL_0016: call bool System.Globalization.TimeSpanParse::TryParseExactMultiple(valuetype System.ReadOnlySpan`1<char>, string[], class System.IFormatProvider, valuetype System.Globalization.TimeSpanStyles, valuetype System.TimeSpan&)
		IL_001b: ret
	} // end of method TimeSpan::TryParseExact

	.method public hidebysig static 
		bool TryParseExact (
			valuetype System.ReadOnlySpan`1<char> input,
			string[] formats,
			class System.IFormatProvider formatProvider,
			[out] valuetype System.TimeSpan& result
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
		// Method begins at RVA 0x891c4
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldc.i4.0
		IL_0004: ldarg.3
		IL_0005: call bool System.Globalization.TimeSpanParse::TryParseExactMultiple(valuetype System.ReadOnlySpan`1<char>, string[], class System.IFormatProvider, valuetype System.Globalization.TimeSpanStyles, valuetype System.TimeSpan&)
		IL_000a: ret
	} // end of method TimeSpan::TryParseExact

	.method public hidebysig static 
		bool TryParseExact (
			string input,
			string format,
			class System.IFormatProvider formatProvider,
			valuetype System.Globalization.TimeSpanStyles styles,
			[out] valuetype System.TimeSpan& result
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
		// Method begins at RVA 0x891d0
		// Code size 49 (0x31)
		.maxstack 8

		IL_0000: ldarg.3
		IL_0001: ldstr "styles"
		IL_0006: call void System.TimeSpan::ValidateStyles(valuetype System.Globalization.TimeSpanStyles, string)
		IL_000b: ldarg.0
		IL_000c: brfalse.s IL_0011

		IL_000e: ldarg.1
		IL_000f: brtrue.s IL_001b

		IL_0011: ldarg.s result
		IL_0013: initobj System.TimeSpan
		IL_0019: ldc.i4.0
		IL_001a: ret

		IL_001b: ldarg.0
		IL_001c: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0021: ldarg.1
		IL_0022: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0027: ldarg.2
		IL_0028: ldarg.3
		IL_0029: ldarg.s result
		IL_002b: call bool System.Globalization.TimeSpanParse::TryParseExact(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider, valuetype System.Globalization.TimeSpanStyles, valuetype System.TimeSpan&)
		IL_0030: ret
	} // end of method TimeSpan::TryParseExact

	.method public hidebysig static 
		bool TryParseExact (
			valuetype System.ReadOnlySpan`1<char> input,
			valuetype System.ReadOnlySpan`1<char> format,
			class System.IFormatProvider formatProvider,
			valuetype System.Globalization.TimeSpanStyles styles,
			[out] valuetype System.TimeSpan& result
		) cil managed 
	{
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x89202
		// Code size 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.3
		IL_0001: ldstr "styles"
		IL_0006: call void System.TimeSpan::ValidateStyles(valuetype System.Globalization.TimeSpanStyles, string)
		IL_000b: ldarg.0
		IL_000c: ldarg.1
		IL_000d: ldarg.2
		IL_000e: ldarg.3
		IL_000f: ldarg.s result
		IL_0011: call bool System.Globalization.TimeSpanParse::TryParseExact(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider, valuetype System.Globalization.TimeSpanStyles, valuetype System.TimeSpan&)
		IL_0016: ret
	} // end of method TimeSpan::TryParseExact

	.method public hidebysig static 
		bool TryParseExact (
			string input,
			string[] formats,
			class System.IFormatProvider formatProvider,
			valuetype System.Globalization.TimeSpanStyles styles,
			[out] valuetype System.TimeSpan& result
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
		// Method begins at RVA 0x8921a
		// Code size 41 (0x29)
		.maxstack 8

		IL_0000: ldarg.3
		IL_0001: ldstr "styles"
		IL_0006: call void System.TimeSpan::ValidateStyles(valuetype System.Globalization.TimeSpanStyles, string)
		IL_000b: ldarg.0
		IL_000c: brtrue.s IL_0018

		IL_000e: ldarg.s result
		IL_0010: initobj System.TimeSpan
		IL_0016: ldc.i4.0
		IL_0017: ret

		IL_0018: ldarg.0
		IL_0019: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_001e: ldarg.1
		IL_001f: ldarg.2
		IL_0020: ldarg.3
		IL_0021: ldarg.s result
		IL_0023: call bool System.Globalization.TimeSpanParse::TryParseExactMultiple(valuetype System.ReadOnlySpan`1<char>, string[], class System.IFormatProvider, valuetype System.Globalization.TimeSpanStyles, valuetype System.TimeSpan&)
		IL_0028: ret
	} // end of method TimeSpan::TryParseExact

	.method public hidebysig static 
		bool TryParseExact (
			valuetype System.ReadOnlySpan`1<char> input,
			string[] formats,
			class System.IFormatProvider formatProvider,
			valuetype System.Globalization.TimeSpanStyles styles,
			[out] valuetype System.TimeSpan& result
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
		// Method begins at RVA 0x89244
		// Code size 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.3
		IL_0001: ldstr "styles"
		IL_0006: call void System.TimeSpan::ValidateStyles(valuetype System.Globalization.TimeSpanStyles, string)
		IL_000b: ldarg.0
		IL_000c: ldarg.1
		IL_000d: ldarg.2
		IL_000e: ldarg.3
		IL_000f: ldarg.s result
		IL_0011: call bool System.Globalization.TimeSpanParse::TryParseExactMultiple(valuetype System.ReadOnlySpan`1<char>, string[], class System.IFormatProvider, valuetype System.Globalization.TimeSpanStyles, valuetype System.TimeSpan&)
		IL_0016: ret
	} // end of method TimeSpan::TryParseExact

	.method public hidebysig virtual 
		instance string ToString () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x8925c
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.TimeSpan
		IL_0006: call string System.Globalization.TimeSpanFormat::FormatC(valuetype System.TimeSpan)
		IL_000b: ret
	} // end of method TimeSpan::ToString

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
		// Method begins at RVA 0x89269
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.TimeSpan
		IL_0006: ldarg.1
		IL_0007: ldnull
		IL_0008: call string System.Globalization.TimeSpanFormat::Format(valuetype System.TimeSpan, string, class System.IFormatProvider)
		IL_000d: ret
	} // end of method TimeSpan::ToString

	.method public final hidebysig newslot virtual 
		instance string ToString (
			string format,
			class System.IFormatProvider formatProvider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x89278
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.TimeSpan
		IL_0006: ldarg.1
		IL_0007: ldarg.2
		IL_0008: call string System.Globalization.TimeSpanFormat::Format(valuetype System.TimeSpan, string, class System.IFormatProvider)
		IL_000d: ret
	} // end of method TimeSpan::ToString

	.method public final hidebysig newslot virtual 
		instance bool TryFormat (
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten,
			[opt] valuetype System.ReadOnlySpan`1<char> format,
			[opt] class System.IFormatProvider formatProvider
		) cil managed 
	{
		.param [3] = nullref
		.param [4] = nullref
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x89287
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.TimeSpan
		IL_0006: ldarg.1
		IL_0007: ldarg.2
		IL_0008: ldarg.3
		IL_0009: ldarg.s formatProvider
		IL_000b: call bool System.Globalization.TimeSpanFormat::TryFormat(valuetype System.TimeSpan, valuetype System.Span`1<char>, int32&, valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider)
		IL_0010: ret
	} // end of method TimeSpan::TryFormat

	.method public hidebysig specialname static 
		valuetype System.TimeSpan op_UnaryNegation (
			valuetype System.TimeSpan t
		) cil managed 
	{
		// Method begins at RVA 0x89299
		// Code size 42 (0x2a)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: ldsflda valuetype System.TimeSpan System.TimeSpan::MinValue
		IL_000b: ldfld int64 System.TimeSpan::_ticks
		IL_0010: bne.un.s IL_001d

		IL_0012: call string System.SR::get_Overflow_NegateTwosCompNum()
		IL_0017: newobj instance void System.OverflowException::.ctor(string)
		IL_001c: throw

		IL_001d: ldarg.0
		IL_001e: ldfld int64 System.TimeSpan::_ticks
		IL_0023: neg
		IL_0024: newobj instance void System.TimeSpan::.ctor(int64)
		IL_0029: ret
	} // end of method TimeSpan::op_UnaryNegation

	.method public hidebysig specialname static 
		valuetype System.TimeSpan op_Subtraction (
			valuetype System.TimeSpan t1,
			valuetype System.TimeSpan t2
		) cil managed 
	{
		// Method begins at RVA 0x892c4
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarga.s t1
		IL_0002: ldarg.1
		IL_0003: call instance valuetype System.TimeSpan System.TimeSpan::Subtract(valuetype System.TimeSpan)
		IL_0008: ret
	} // end of method TimeSpan::op_Subtraction

	.method public hidebysig specialname static 
		valuetype System.TimeSpan op_UnaryPlus (
			valuetype System.TimeSpan t
		) cil managed 
	{
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method TimeSpan::op_UnaryPlus

	.method public hidebysig specialname static 
		valuetype System.TimeSpan op_Addition (
			valuetype System.TimeSpan t1,
			valuetype System.TimeSpan t2
		) cil managed 
	{
		// Method begins at RVA 0x892ce
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarga.s t1
		IL_0002: ldarg.1
		IL_0003: call instance valuetype System.TimeSpan System.TimeSpan::Add(valuetype System.TimeSpan)
		IL_0008: ret
	} // end of method TimeSpan::op_Addition

	.method public hidebysig specialname static 
		valuetype System.TimeSpan op_Multiply (
			valuetype System.TimeSpan timeSpan,
			float64 factor
		) cil managed 
	{
		// Method begins at RVA 0x892d8
		// Code size 47 (0x2f)
		.maxstack 2
		.locals (
			[0] float64
		)

		IL_0000: ldarg.1
		IL_0001: call bool System.Double::IsNaN(float64)
		IL_0006: brfalse.s IL_0018

		IL_0008: call string System.SR::get_Arg_CannotBeNaN()
		IL_000d: ldstr "factor"
		IL_0012: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0017: throw

		IL_0018: ldarga.s timeSpan
		IL_001a: call instance int64 System.TimeSpan::get_Ticks()
		IL_001f: conv.r8
		IL_0020: ldarg.1
		IL_0021: mul
		IL_0022: call float64 System.Math::Round(float64)
		IL_0027: stloc.0
		IL_0028: ldloc.0
		IL_0029: call valuetype System.TimeSpan System.TimeSpan::IntervalFromDoubleTicks(float64)
		IL_002e: ret
	} // end of method TimeSpan::op_Multiply

	.method public hidebysig specialname static 
		valuetype System.TimeSpan op_Multiply (
			float64 factor,
			valuetype System.TimeSpan timeSpan
		) cil managed 
	{
		// Method begins at RVA 0x89313
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: call valuetype System.TimeSpan System.TimeSpan::op_Multiply(valuetype System.TimeSpan, float64)
		IL_0007: ret
	} // end of method TimeSpan::op_Multiply

	.method public hidebysig specialname static 
		valuetype System.TimeSpan op_Division (
			valuetype System.TimeSpan timeSpan,
			float64 divisor
		) cil managed 
	{
		// Method begins at RVA 0x8931c
		// Code size 47 (0x2f)
		.maxstack 2
		.locals (
			[0] float64
		)

		IL_0000: ldarg.1
		IL_0001: call bool System.Double::IsNaN(float64)
		IL_0006: brfalse.s IL_0018

		IL_0008: call string System.SR::get_Arg_CannotBeNaN()
		IL_000d: ldstr "divisor"
		IL_0012: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0017: throw

		IL_0018: ldarga.s timeSpan
		IL_001a: call instance int64 System.TimeSpan::get_Ticks()
		IL_001f: conv.r8
		IL_0020: ldarg.1
		IL_0021: div
		IL_0022: call float64 System.Math::Round(float64)
		IL_0027: stloc.0
		IL_0028: ldloc.0
		IL_0029: call valuetype System.TimeSpan System.TimeSpan::IntervalFromDoubleTicks(float64)
		IL_002e: ret
	} // end of method TimeSpan::op_Division

	.method public hidebysig specialname static 
		float64 op_Division (
			valuetype System.TimeSpan t1,
			valuetype System.TimeSpan t2
		) cil managed 
	{
		// Method begins at RVA 0x89357
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarga.s t1
		IL_0002: call instance int64 System.TimeSpan::get_Ticks()
		IL_0007: conv.r8
		IL_0008: ldarga.s t2
		IL_000a: call instance int64 System.TimeSpan::get_Ticks()
		IL_000f: conv.r8
		IL_0010: div
		IL_0011: ret
	} // end of method TimeSpan::op_Division

	.method public hidebysig specialname static 
		bool op_Equality (
			valuetype System.TimeSpan t1,
			valuetype System.TimeSpan t2
		) cil managed 
	{
		// Method begins at RVA 0x88e38
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: ldarg.1
		IL_0007: ldfld int64 System.TimeSpan::_ticks
		IL_000c: ceq
		IL_000e: ret
	} // end of method TimeSpan::op_Equality

	.method public hidebysig specialname static 
		bool op_Inequality (
			valuetype System.TimeSpan t1,
			valuetype System.TimeSpan t2
		) cil managed 
	{
		// Method begins at RVA 0x8936a
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: ldarg.1
		IL_0007: ldfld int64 System.TimeSpan::_ticks
		IL_000c: ceq
		IL_000e: ldc.i4.0
		IL_000f: ceq
		IL_0011: ret
	} // end of method TimeSpan::op_Inequality

	.method public hidebysig specialname static 
		bool op_LessThan (
			valuetype System.TimeSpan t1,
			valuetype System.TimeSpan t2
		) cil managed 
	{
		// Method begins at RVA 0x8937d
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: ldarg.1
		IL_0007: ldfld int64 System.TimeSpan::_ticks
		IL_000c: clt
		IL_000e: ret
	} // end of method TimeSpan::op_LessThan

	.method public hidebysig specialname static 
		bool op_LessThanOrEqual (
			valuetype System.TimeSpan t1,
			valuetype System.TimeSpan t2
		) cil managed 
	{
		// Method begins at RVA 0x8938d
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: ldarg.1
		IL_0007: ldfld int64 System.TimeSpan::_ticks
		IL_000c: cgt
		IL_000e: ldc.i4.0
		IL_000f: ceq
		IL_0011: ret
	} // end of method TimeSpan::op_LessThanOrEqual

	.method public hidebysig specialname static 
		bool op_GreaterThan (
			valuetype System.TimeSpan t1,
			valuetype System.TimeSpan t2
		) cil managed 
	{
		// Method begins at RVA 0x893a0
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: ldarg.1
		IL_0007: ldfld int64 System.TimeSpan::_ticks
		IL_000c: cgt
		IL_000e: ret
	} // end of method TimeSpan::op_GreaterThan

	.method public hidebysig specialname static 
		bool op_GreaterThanOrEqual (
			valuetype System.TimeSpan t1,
			valuetype System.TimeSpan t2
		) cil managed 
	{
		// Method begins at RVA 0x893b0
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.TimeSpan::_ticks
		IL_0006: ldarg.1
		IL_0007: ldfld int64 System.TimeSpan::_ticks
		IL_000c: clt
		IL_000e: ldc.i4.0
		IL_000f: ceq
		IL_0011: ret
	} // end of method TimeSpan::op_GreaterThanOrEqual

	.method private hidebysig specialname rtspecialname static 
		void .cctor () cil managed 
	{
		// Method begins at RVA 0x893c3
		// Code size 51 (0x33)
		.maxstack 8

		IL_0000: ldc.i4.0
		IL_0001: conv.i8
		IL_0002: newobj instance void System.TimeSpan::.ctor(int64)
		IL_0007: stsfld valuetype System.TimeSpan System.TimeSpan::Zero
		IL_000c: ldc.i8 9223372036854775807
		IL_0015: newobj instance void System.TimeSpan::.ctor(int64)
		IL_001a: stsfld valuetype System.TimeSpan System.TimeSpan::MaxValue
		IL_001f: ldc.i8 -9223372036854775808
		IL_0028: newobj instance void System.TimeSpan::.ctor(int64)
		IL_002d: stsfld valuetype System.TimeSpan System.TimeSpan::MinValue
		IL_0032: ret
	} // end of method TimeSpan::.cctor

	// Properties
	.property instance int64 Ticks()
	{
		.get instance int64 System.TimeSpan::get_Ticks()
	}
	.property instance int32 Days()
	{
		.get instance int32 System.TimeSpan::get_Days()
	}
	.property instance int32 Hours()
	{
		.get instance int32 System.TimeSpan::get_Hours()
	}
	.property instance int32 Milliseconds()
	{
		.get instance int32 System.TimeSpan::get_Milliseconds()
	}
	.property instance int32 Minutes()
	{
		.get instance int32 System.TimeSpan::get_Minutes()
	}
	.property instance int32 Seconds()
	{
		.get instance int32 System.TimeSpan::get_Seconds()
	}
	.property instance float64 TotalDays()
	{
		.get instance float64 System.TimeSpan::get_TotalDays()
	}
	.property instance float64 TotalHours()
	{
		.get instance float64 System.TimeSpan::get_TotalHours()
	}
	.property instance float64 TotalMilliseconds()
	{
		.get instance float64 System.TimeSpan::get_TotalMilliseconds()
	}
	.property instance float64 TotalMinutes()
	{
		.get instance float64 System.TimeSpan::get_TotalMinutes()
	}
	.property instance float64 TotalSeconds()
	{
		.get instance float64 System.TimeSpan::get_TotalSeconds()
	}

} // end of class System.TimeSpan