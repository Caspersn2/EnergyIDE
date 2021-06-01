.class public auto ansi beforefieldinit System.Diagnostics.Stopwatch
	extends System.Object
{
	// Fields
	.field private int64 _elapsed
	.field private int64 _startTimeStamp
	.field private bool _isRunning
	.field public static initonly int64 Frequency
	.field public static initonly bool IsHighResolution
	.field private static initonly float64 s_tickFrequency

	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x1469aa
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void System.Object::.ctor()
		IL_0006: ldarg.0
		IL_0007: call instance void System.Diagnostics.Stopwatch::Reset()
		IL_000c: ret
	} // end of method Stopwatch::.ctor

	.method public hidebysig 
		instance void Start () cil managed 
	{
		// Method begins at RVA 0x1469b8
		// Code size 27 (0x1b)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld bool System.Diagnostics.Stopwatch::_isRunning
		IL_0006: brtrue.s IL_001a

		IL_0008: ldarg.0
		IL_0009: call int64 System.Diagnostics.Stopwatch::GetTimestamp()
		IL_000e: stfld int64 System.Diagnostics.Stopwatch::_startTimeStamp
		IL_0013: ldarg.0
		IL_0014: ldc.i4.1
		IL_0015: stfld bool System.Diagnostics.Stopwatch::_isRunning

		IL_001a: ret
	} // end of method Stopwatch::Start

	.method public hidebysig static 
		class System.Diagnostics.Stopwatch StartNew () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x1469d4
		// Code size 14 (0xe)
		.maxstack 1
		.locals (
			[0] class System.Diagnostics.Stopwatch
		)

		IL_0000: newobj instance void System.Diagnostics.Stopwatch::.ctor()
		IL_0005: stloc.0
		IL_0006: ldloc.0
		IL_0007: callvirt instance void System.Diagnostics.Stopwatch::Start()
		IL_000c: ldloc.0
		IL_000d: ret
	} // end of method Stopwatch::StartNew

	.method public hidebysig 
		instance void Stop () cil managed 
	{
		// Method begins at RVA 0x1469f0
		// Code size 63 (0x3f)
		.maxstack 3
		.locals (
			[0] int64,
			[1] int64
		)

		IL_0000: ldarg.0
		IL_0001: ldfld bool System.Diagnostics.Stopwatch::_isRunning
		IL_0006: brfalse.s IL_003e

		IL_0008: call int64 System.Diagnostics.Stopwatch::GetTimestamp()
		IL_000d: stloc.0
		IL_000e: ldloc.0
		IL_000f: ldarg.0
		IL_0010: ldfld int64 System.Diagnostics.Stopwatch::_startTimeStamp
		IL_0015: sub
		IL_0016: stloc.1
		IL_0017: ldarg.0
		IL_0018: ldarg.0
		IL_0019: ldfld int64 System.Diagnostics.Stopwatch::_elapsed
		IL_001e: ldloc.1
		IL_001f: add
		IL_0020: stfld int64 System.Diagnostics.Stopwatch::_elapsed
		IL_0025: ldarg.0
		IL_0026: ldc.i4.0
		IL_0027: stfld bool System.Diagnostics.Stopwatch::_isRunning
		IL_002c: ldarg.0
		IL_002d: ldfld int64 System.Diagnostics.Stopwatch::_elapsed
		IL_0032: ldc.i4.0
		IL_0033: conv.i8
		IL_0034: bge.s IL_003e

		IL_0036: ldarg.0
		IL_0037: ldc.i4.0
		IL_0038: conv.i8
		IL_0039: stfld int64 System.Diagnostics.Stopwatch::_elapsed

		IL_003e: ret
	} // end of method Stopwatch::Stop

	.method public hidebysig 
		instance void Reset () cil managed 
	{
		// Method begins at RVA 0x146a3b
		// Code size 24 (0x18)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: conv.i8
		IL_0003: stfld int64 System.Diagnostics.Stopwatch::_elapsed
		IL_0008: ldarg.0
		IL_0009: ldc.i4.0
		IL_000a: stfld bool System.Diagnostics.Stopwatch::_isRunning
		IL_000f: ldarg.0
		IL_0010: ldc.i4.0
		IL_0011: conv.i8
		IL_0012: stfld int64 System.Diagnostics.Stopwatch::_startTimeStamp
		IL_0017: ret
	} // end of method Stopwatch::Reset

	.method public hidebysig 
		instance void Restart () cil managed 
	{
		// Method begins at RVA 0x146a54
		// Code size 27 (0x1b)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: conv.i8
		IL_0003: stfld int64 System.Diagnostics.Stopwatch::_elapsed
		IL_0008: ldarg.0
		IL_0009: call int64 System.Diagnostics.Stopwatch::GetTimestamp()
		IL_000e: stfld int64 System.Diagnostics.Stopwatch::_startTimeStamp
		IL_0013: ldarg.0
		IL_0014: ldc.i4.1
		IL_0015: stfld bool System.Diagnostics.Stopwatch::_isRunning
		IL_001a: ret
	} // end of method Stopwatch::Restart

	.method public hidebysig specialname 
		instance bool get_IsRunning () cil managed 
	{
		// Method begins at RVA 0x146a70
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld bool System.Diagnostics.Stopwatch::_isRunning
		IL_0006: ret
	} // end of method Stopwatch::get_IsRunning

	.method public hidebysig specialname 
		instance valuetype System.TimeSpan get_Elapsed () cil managed 
	{
		// Method begins at RVA 0x146a78
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.Diagnostics.Stopwatch::GetElapsedDateTimeTicks()
		IL_0006: newobj instance void System.TimeSpan::.ctor(int64)
		IL_000b: ret
	} // end of method Stopwatch::get_Elapsed

	.method public hidebysig specialname 
		instance int64 get_ElapsedMilliseconds () cil managed 
	{
		// Method begins at RVA 0x146a85
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.Diagnostics.Stopwatch::GetElapsedDateTimeTicks()
		IL_0006: ldc.i4 10000
		IL_000b: conv.i8
		IL_000c: div
		IL_000d: ret
	} // end of method Stopwatch::get_ElapsedMilliseconds

	.method public hidebysig specialname 
		instance int64 get_ElapsedTicks () cil managed 
	{
		// Method begins at RVA 0x146a94
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.Diagnostics.Stopwatch::GetRawElapsedTicks()
		IL_0006: ret
	} // end of method Stopwatch::get_ElapsedTicks

	.method public hidebysig static 
		int64 GetTimestamp () cil managed 
	{
		// Method begins at RVA 0x146a9c
		// Code size 6 (0x6)
		.maxstack 8

		IL_0000: call int64 System.Diagnostics.Stopwatch::QueryPerformanceCounter()
		IL_0005: ret
	} // end of method Stopwatch::GetTimestamp

	.method private hidebysig 
		instance int64 GetRawElapsedTicks () cil managed 
	{
		// Method begins at RVA 0x146aa4
		// Code size 36 (0x24)
		.maxstack 2
		.locals (
			[0] int64,
			[1] int64,
			[2] int64
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int64 System.Diagnostics.Stopwatch::_elapsed
		IL_0006: stloc.0
		IL_0007: ldarg.0
		IL_0008: ldfld bool System.Diagnostics.Stopwatch::_isRunning
		IL_000d: brfalse.s IL_0022

		IL_000f: call int64 System.Diagnostics.Stopwatch::GetTimestamp()
		IL_0014: stloc.1
		IL_0015: ldloc.1
		IL_0016: ldarg.0
		IL_0017: ldfld int64 System.Diagnostics.Stopwatch::_startTimeStamp
		IL_001c: sub
		IL_001d: stloc.2
		IL_001e: ldloc.0
		IL_001f: ldloc.2
		IL_0020: add
		IL_0021: stloc.0

		IL_0022: ldloc.0
		IL_0023: ret
	} // end of method Stopwatch::GetRawElapsedTicks

	.method private hidebysig 
		instance int64 GetElapsedDateTimeTicks () cil managed 
	{
		// Method begins at RVA 0x146ad4
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance int64 System.Diagnostics.Stopwatch::GetRawElapsedTicks()
		IL_0006: conv.r8
		IL_0007: ldsfld float64 System.Diagnostics.Stopwatch::s_tickFrequency
		IL_000c: mul
		IL_000d: conv.i8
		IL_000e: ret
	} // end of method Stopwatch::GetElapsedDateTimeTicks

	.method private hidebysig static 
		int64 QueryPerformanceFrequency () cil managed 
	{
		// Method begins at RVA 0x146ae4
		// Code size 11 (0xb)
		.maxstack 1
		.locals (
			[0] int64,
			[1] valuetype Interop/BOOL
		)

		IL_0000: ldloca.s 0
		IL_0002: conv.u
		IL_0003: call valuetype Interop/BOOL Interop/Kernel32::QueryPerformanceFrequency(int64*)
		IL_0008: stloc.1
		IL_0009: ldloc.0
		IL_000a: ret
	} // end of method Stopwatch::QueryPerformanceFrequency

	.method private hidebysig static 
		int64 QueryPerformanceCounter () cil managed 
	{
		// Method begins at RVA 0x146afc
		// Code size 11 (0xb)
		.maxstack 1
		.locals (
			[0] int64,
			[1] valuetype Interop/BOOL
		)

		IL_0000: ldloca.s 0
		IL_0002: conv.u
		IL_0003: call valuetype Interop/BOOL Interop/Kernel32::QueryPerformanceCounter(int64*)
		IL_0008: stloc.1
		IL_0009: ldloc.0
		IL_000a: ret
	} // end of method Stopwatch::QueryPerformanceCounter

	.method private hidebysig specialname rtspecialname static 
		void .cctor () cil managed 
	{
		// Method begins at RVA 0x146b13
		// Code size 38 (0x26)
		.maxstack 8

		IL_0000: call int64 System.Diagnostics.Stopwatch::QueryPerformanceFrequency()
		IL_0005: stsfld int64 System.Diagnostics.Stopwatch::Frequency
		IL_000a: ldc.i4.1
		IL_000b: stsfld bool System.Diagnostics.Stopwatch::IsHighResolution
		IL_0010: ldc.r8 10000000
		IL_0019: ldsfld int64 System.Diagnostics.Stopwatch::Frequency
		IL_001e: conv.r8
		IL_001f: div
		IL_0020: stsfld float64 System.Diagnostics.Stopwatch::s_tickFrequency
		IL_0025: ret
	} // end of method Stopwatch::.cctor

	// Properties
	.property instance bool IsRunning()
	{
		.get instance bool System.Diagnostics.Stopwatch::get_IsRunning()
	}
	.property instance valuetype System.TimeSpan Elapsed()
	{
		.get instance valuetype System.TimeSpan System.Diagnostics.Stopwatch::get_Elapsed()
	}
	.property instance int64 ElapsedMilliseconds()
	{
		.get instance int64 System.Diagnostics.Stopwatch::get_ElapsedMilliseconds()
	}
	.property instance int64 ElapsedTicks()
	{
		.get instance int64 System.Diagnostics.Stopwatch::get_ElapsedTicks()
	}

} // end of class System.Diagnostics.Stopwatch