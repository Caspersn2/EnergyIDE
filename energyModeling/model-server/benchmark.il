// IL code: benchmark
.class private auto ansi '<Module>'
{
} // end of class <Module>

.class public sequential ansi sealed beforefieldinit Measure
	extends [System.Runtime]System.ValueType
{
	// Nested Types
	.class nested private auto ansi sealed serializable beforefieldinit '<>c'
		extends [System.Runtime]System.Object
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Fields
		.field public static initonly class Measure/'<>c' '<>9'
		.field public static class [System.Runtime]System.Predicate`1<valuetype [System.Runtime]System.ValueTuple`2<string, float64>> '<>9__2_0'

		// Methods
		.method private hidebysig specialname rtspecialname static 
			void .cctor () cil managed 
		{
			// Method begins at RVA 0x258a
			// Code size 11 (0xb)
			.maxstack 8

			IL_0000: newobj instance void Measure/'<>c'::.ctor()
			IL_0005: stsfld class Measure/'<>c' Measure/'<>c'::'<>9'
			IL_000a: ret
		} // end of method '<>c'::.cctor

		.method public hidebysig specialname rtspecialname 
			instance void .ctor () cil managed 
		{
			// Method begins at RVA 0x2596
			// Code size 8 (0x8)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: call instance void [System.Runtime]System.Object::.ctor()
			IL_0006: nop
			IL_0007: ret
		} // end of method '<>c'::.ctor

		.method assembly hidebysig 
			instance bool '<.ctor>b__2_0' (
				valuetype [System.Runtime]System.ValueTuple`2<string, float64> res
			) cil managed 
		{
			// Method begins at RVA 0x259f
			// Code size 17 (0x11)
			.maxstack 8

			IL_0000: ldarg.1
			IL_0001: ldfld !0 valuetype [System.Runtime]System.ValueTuple`2<string, float64>::Item1
			IL_0006: ldstr "timer"
			IL_000b: callvirt instance bool [System.Runtime]System.String::Equals(string)
			IL_0010: ret
		} // end of method '<>c'::'<.ctor>b__2_0'

	} // end of class <>c


	// Fields
	.field public float64 duration
	.field public class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.ValueTuple`2<string, float64>> apis
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.TupleElementNamesAttribute::.ctor(string[]) = (
		01 00 02 00 00 00 07 61 70 69 4e 61 6d 65 08 61
		70 69 56 61 6c 75 65 00 00
	)

	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.ValueTuple`2<string, float64>> raplResult
		) cil managed 
	{
		// Method begins at RVA 0x2050
		// Code size 57 (0x39)
		.maxstack 8

		IL_0000: nop
		IL_0001: ldarg.0
		IL_0002: ldarg.1
		IL_0003: ldsfld class [System.Runtime]System.Predicate`1<valuetype [System.Runtime]System.ValueTuple`2<string, float64>> Measure/'<>c'::'<>9__2_0'
		IL_0008: dup
		IL_0009: brtrue.s IL_0022

		IL_000b: pop
		IL_000c: ldsfld class Measure/'<>c' Measure/'<>c'::'<>9'
		IL_0011: ldftn instance bool Measure/'<>c'::'<.ctor>b__2_0'(valuetype [System.Runtime]System.ValueTuple`2<string, float64>)
		IL_0017: newobj instance void class [System.Runtime]System.Predicate`1<valuetype [System.Runtime]System.ValueTuple`2<string, float64>>::.ctor(object, native int)
		IL_001c: dup
		IL_001d: stsfld class [System.Runtime]System.Predicate`1<valuetype [System.Runtime]System.ValueTuple`2<string, float64>> Measure/'<>c'::'<>9__2_0'

		IL_0022: callvirt instance !0 class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.ValueTuple`2<string, float64>>::Find(class [System.Runtime]System.Predicate`1<!0>)
		IL_0027: ldfld !1 valuetype [System.Runtime]System.ValueTuple`2<string, float64>::Item2
		IL_002c: stfld float64 Measure::duration
		IL_0031: ldarg.0
		IL_0032: ldarg.1
		IL_0033: stfld class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.ValueTuple`2<string, float64>> Measure::apis
		IL_0038: ret
	} // end of method Measure::.ctor

} // end of class Measure

.class public auto ansi sealed MeasureTypes
	extends [System.Runtime]System.Enum
{
	// Fields
	.field public specialname rtspecialname int32 value__
	.field public static literal valuetype MeasureTypes Timer = int32(0)
	.field public static literal valuetype MeasureTypes Package = int32(1)
	.field public static literal valuetype MeasureTypes DRAM = int32(2)
	.field public static literal valuetype MeasureTypes Temp = int32(3)

} // end of class MeasureTypes

.class public auto ansi sealed benchmark.SingleRun
	extends [System.Runtime]System.MulticastDelegate
{
	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			object 'object',
			native int 'method'
		) runtime managed 
	{
	} // end of method SingleRun::.ctor

	.method public hidebysig newslot virtual 
		instance void Invoke (
			valuetype Measure measure
		) runtime managed 
	{
	} // end of method SingleRun::Invoke

	.method public hidebysig newslot virtual 
		instance class [System.Runtime]System.IAsyncResult BeginInvoke (
			valuetype Measure measure,
			class [System.Runtime]System.AsyncCallback callback,
			object 'object'
		) runtime managed 
	{
	} // end of method SingleRun::BeginInvoke

	.method public hidebysig newslot virtual 
		instance void EndInvoke (
			class [System.Runtime]System.IAsyncResult result
		) runtime managed 
	{
	} // end of method SingleRun::EndInvoke

} // end of class benchmark.SingleRun

.class public auto ansi beforefieldinit benchmark.Benchmark
	extends [System.Runtime]System.Object
{
	// Nested Types
	.class nested private auto ansi sealed serializable beforefieldinit '<>c'
		extends [System.Runtime]System.Object
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Fields
		.field public static initonly class benchmark.Benchmark/'<>c' '<>9'
		.field public static class [System.Runtime]System.Func`2<valuetype MeasureTypes, class [CsharpRAPL]CsharpRAPL.Sensor> '<>9__18_0'

		// Methods
		.method private hidebysig specialname rtspecialname static 
			void .cctor () cil managed 
		{
			// Method begins at RVA 0x25b1
			// Code size 11 (0xb)
			.maxstack 8

			IL_0000: newobj instance void benchmark.Benchmark/'<>c'::.ctor()
			IL_0005: stsfld class benchmark.Benchmark/'<>c' benchmark.Benchmark/'<>c'::'<>9'
			IL_000a: ret
		} // end of method '<>c'::.cctor

		.method public hidebysig specialname rtspecialname 
			instance void .ctor () cil managed 
		{
			// Method begins at RVA 0x25bd
			// Code size 8 (0x8)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: call instance void [System.Runtime]System.Object::.ctor()
			IL_0006: nop
			IL_0007: ret
		} // end of method '<>c'::.ctor

		.method assembly hidebysig 
			instance class [CsharpRAPL]CsharpRAPL.Sensor '<.ctor>b__18_0' (
				valuetype MeasureTypes x
			) cil managed 
		{
			// Method begins at RVA 0x25c8
			// Code size 113 (0x71)
			.maxstack 3
			.locals init (
				[0] valuetype MeasureTypes,
				[1] valuetype MeasureTypes,
				[2] class [CsharpRAPL]CsharpRAPL.Sensor
			)

			IL_0000: nop
			IL_0001: ldarg.1
			IL_0002: stloc.1
			IL_0003: ldloc.1
			IL_0004: stloc.0
			IL_0005: ldloc.0
			IL_0006: switch (IL_001d, IL_0030, IL_0044, IL_0058)

			IL_001b: br.s IL_006b

			IL_001d: ldstr "timer"
			IL_0022: newobj instance void [CsharpRAPL]CsharpRAPL.Devices.TimerAPI::.ctor()
			IL_0027: ldc.i4.1
			IL_0028: newobj instance void [CsharpRAPL]CsharpRAPL.Sensor::.ctor(string, class [CsharpRAPL]CsharpRAPL.DeviceAPI, valuetype [CsharpRAPL]CollectionApproach)
			IL_002d: stloc.2
			IL_002e: br.s IL_006f

			IL_0030: ldstr "package"
			IL_0035: ldnull
			IL_0036: newobj instance void [CsharpRAPL]CsharpRAPL.Devices.PackageAPI::.ctor(class [System.Collections]System.Collections.Generic.List`1<int32>)
			IL_003b: ldc.i4.1
			IL_003c: newobj instance void [CsharpRAPL]CsharpRAPL.Sensor::.ctor(string, class [CsharpRAPL]CsharpRAPL.DeviceAPI, valuetype [CsharpRAPL]CollectionApproach)
			IL_0041: stloc.2
			IL_0042: br.s IL_006f

			IL_0044: ldstr "dram"
			IL_0049: ldnull
			IL_004a: newobj instance void [CsharpRAPL]CsharpRAPL.Devices.DramAPI::.ctor(class [System.Collections]System.Collections.Generic.List`1<int32>)
			IL_004f: ldc.i4.1
			IL_0050: newobj instance void [CsharpRAPL]CsharpRAPL.Sensor::.ctor(string, class [CsharpRAPL]CsharpRAPL.DeviceAPI, valuetype [CsharpRAPL]CollectionApproach)
			IL_0055: stloc.2
			IL_0056: br.s IL_006f

			IL_0058: ldstr "temp"
			IL_005d: newobj instance void [CsharpRAPL]CsharpRAPL.Devices.TempAPI::.ctor()
			IL_0062: ldc.i4.0
			IL_0063: newobj instance void [CsharpRAPL]CsharpRAPL.Sensor::.ctor(string, class [CsharpRAPL]CsharpRAPL.DeviceAPI, valuetype [CsharpRAPL]CollectionApproach)
			IL_0068: stloc.2
			IL_0069: br.s IL_006f

			IL_006b: ldnull
			IL_006c: stloc.2
			IL_006d: br.s IL_006f

			IL_006f: ldloc.2
			IL_0070: ret
		} // end of method '<>c'::'<.ctor>b__18_0'

	} // end of class <>c

	.class nested private auto ansi sealed beforefieldinit '<>c__DisplayClass22_0`2'<I, R>
		extends [System.Runtime]System.Object
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Fields
		.field public class [System.Runtime]System.Func`2<!I, !R> benchmark
		.field public !I input

		// Methods
		.method public hidebysig specialname rtspecialname 
			instance void .ctor () cil managed 
		{
			// Method begins at RVA 0x2645
			// Code size 8 (0x8)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: call instance void [System.Runtime]System.Object::.ctor()
			IL_0006: nop
			IL_0007: ret
		} // end of method '<>c__DisplayClass22_0`2'::.ctor

		.method assembly hidebysig 
			instance !R '<Run>b__0' () cil managed 
		{
			// Method begins at RVA 0x264e
			// Code size 18 (0x12)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld class [System.Runtime]System.Func`2<!0, !1> class benchmark.Benchmark/'<>c__DisplayClass22_0`2'<!I, !R>::benchmark
			IL_0006: ldarg.0
			IL_0007: ldfld !0 class benchmark.Benchmark/'<>c__DisplayClass22_0`2'<!I, !R>::input
			IL_000c: callvirt instance !1 class [System.Runtime]System.Func`2<!I, !R>::Invoke(!0)
			IL_0011: ret
		} // end of method '<>c__DisplayClass22_0`2'::'<Run>b__0'

	} // end of class <>c__DisplayClass22_0`2


	// Fields
	.field private bool '<stop_running>k__BackingField'
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
		01 00 00 00
	)
	.custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = (
		01 00 00 00 00 00 00 00
	)
	.field private static initonly int32 maxExecutionTime
	.field private static initonly string outputFilePath
	.field private initonly int32 '<iterations>k__BackingField'
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
		01 00 00 00
	)
	.custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = (
		01 00 00 00 00 00 00 00
	)
	.field private float64 elapsedTime
	.field private class [System.Collections]System.Collections.Generic.List`1<valuetype Measure> _resultBuffer
	.field private class [CsharpRAPL]CsharpRAPL.RAPL _rapl
	.field public class [System.Runtime]System.IO.TextWriter stdout
	.field private class [System.Runtime]System.IO.TextWriter benchmarkOutputStream
	.field private class benchmark.SingleRun SingleRunComplete
	.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
		01 00 00 00
	)
	.custom instance void [System.Runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggerBrowsableState) = (
		01 00 00 00 00 00 00 00
	)
	.field private string name

	// Methods
	.method public hidebysig specialname 
		instance bool get_stop_running () cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x208a
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld bool benchmark.Benchmark::'<stop_running>k__BackingField'
		IL_0006: ret
	} // end of method Benchmark::get_stop_running

	.method public hidebysig specialname 
		instance void set_stop_running (
			bool 'value'
		) cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x2092
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: stfld bool benchmark.Benchmark::'<stop_running>k__BackingField'
		IL_0007: ret
	} // end of method Benchmark::set_stop_running

	.method private hidebysig specialname 
		instance int32 get_iterations () cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x209b
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int32 benchmark.Benchmark::'<iterations>k__BackingField'
		IL_0006: ret
	} // end of method Benchmark::get_iterations

	.method public hidebysig specialname 
		instance void add_SingleRunComplete (
			class benchmark.SingleRun 'value'
		) cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x20a4
		// Code size 41 (0x29)
		.maxstack 3
		.locals init (
			[0] class benchmark.SingleRun,
			[1] class benchmark.SingleRun,
			[2] class benchmark.SingleRun
		)

		IL_0000: ldarg.0
		IL_0001: ldfld class benchmark.SingleRun benchmark.Benchmark::SingleRunComplete
		IL_0006: stloc.0
		// loop start (head: IL_0007)
			IL_0007: ldloc.0
			IL_0008: stloc.1
			IL_0009: ldloc.1
			IL_000a: ldarg.1
			IL_000b: call class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Combine(class [System.Runtime]System.Delegate, class [System.Runtime]System.Delegate)
			IL_0010: castclass benchmark.SingleRun
			IL_0015: stloc.2
			IL_0016: ldarg.0
			IL_0017: ldflda class benchmark.SingleRun benchmark.Benchmark::SingleRunComplete
			IL_001c: ldloc.2
			IL_001d: ldloc.1
			IL_001e: call !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class benchmark.SingleRun>(!!0&, !!0, !!0)
			IL_0023: stloc.0
			IL_0024: ldloc.0
			IL_0025: ldloc.1
			IL_0026: bne.un.s IL_0007
		// end loop
		IL_0028: ret
	} // end of method Benchmark::add_SingleRunComplete

	.method public hidebysig specialname 
		instance void remove_SingleRunComplete (
			class benchmark.SingleRun 'value'
		) cil managed 
	{
		.custom instance void [System.Runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x20dc
		// Code size 41 (0x29)
		.maxstack 3
		.locals init (
			[0] class benchmark.SingleRun,
			[1] class benchmark.SingleRun,
			[2] class benchmark.SingleRun
		)

		IL_0000: ldarg.0
		IL_0001: ldfld class benchmark.SingleRun benchmark.Benchmark::SingleRunComplete
		IL_0006: stloc.0
		// loop start (head: IL_0007)
			IL_0007: ldloc.0
			IL_0008: stloc.1
			IL_0009: ldloc.1
			IL_000a: ldarg.1
			IL_000b: call class [System.Runtime]System.Delegate [System.Runtime]System.Delegate::Remove(class [System.Runtime]System.Delegate, class [System.Runtime]System.Delegate)
			IL_0010: castclass benchmark.SingleRun
			IL_0015: stloc.2
			IL_0016: ldarg.0
			IL_0017: ldflda class benchmark.SingleRun benchmark.Benchmark::SingleRunComplete
			IL_001c: ldloc.2
			IL_001d: ldloc.1
			IL_001e: call !!0 [System.Threading]System.Threading.Interlocked::CompareExchange<class benchmark.SingleRun>(!!0&, !!0, !!0)
			IL_0023: stloc.0
			IL_0024: ldloc.0
			IL_0025: ldloc.1
			IL_0026: bne.un.s IL_0007
		// end loop
		IL_0028: ret
	} // end of method Benchmark::remove_SingleRunComplete

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 iterations,
			class [System.Collections]System.Collections.Generic.List`1<valuetype MeasureTypes> types,
			[opt] bool silenceBenchmarkOutput,
			[opt] string name
		) cil managed 
	{
		.param [3] = bool(true)
		.param [4] = "not specified"
		// Method begins at RVA 0x2114
		// Code size 152 (0x98)
		.maxstack 3
		.locals init (
			[0] class [System.Collections]System.Collections.Generic.List`1<class [CsharpRAPL]CsharpRAPL.Sensor>,
			[1] bool
		)

		IL_0000: ldarg.0
		IL_0001: ldc.r8 0.0
		IL_000a: stfld float64 benchmark.Benchmark::elapsedTime
		IL_000f: ldarg.0
		IL_0010: newobj instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Measure>::.ctor()
		IL_0015: stfld class [System.Collections]System.Collections.Generic.List`1<valuetype Measure> benchmark.Benchmark::_resultBuffer
		IL_001a: ldarg.0
		IL_001b: ldsfld class [System.Runtime]System.IO.Stream [System.Runtime]System.IO.Stream::Null
		IL_0020: newobj instance void [System.Runtime]System.IO.StreamWriter::.ctor(class [System.Runtime]System.IO.Stream)
		IL_0025: stfld class [System.Runtime]System.IO.TextWriter benchmark.Benchmark::benchmarkOutputStream
		IL_002a: ldarg.0
		IL_002b: call instance void [System.Runtime]System.Object::.ctor()
		IL_0030: nop
		IL_0031: nop
		IL_0032: ldarg.0
		IL_0033: call class [System.Runtime]System.IO.TextWriter [System.Console]System.Console::get_Out()
		IL_0038: stfld class [System.Runtime]System.IO.TextWriter benchmark.Benchmark::stdout
		IL_003d: ldarg.0
		IL_003e: ldarg.s name
		IL_0040: stfld string benchmark.Benchmark::name
		IL_0045: ldarg.3
		IL_0046: ldc.i4.0
		IL_0047: ceq
		IL_0049: stloc.1
		IL_004a: ldloc.1
		IL_004b: brfalse.s IL_0059

		IL_004d: ldarg.0
		IL_004e: ldarg.0
		IL_004f: ldfld class [System.Runtime]System.IO.TextWriter benchmark.Benchmark::stdout
		IL_0054: stfld class [System.Runtime]System.IO.TextWriter benchmark.Benchmark::benchmarkOutputStream

		IL_0059: ldarg.0
		IL_005a: ldarg.1
		IL_005b: stfld int32 benchmark.Benchmark::'<iterations>k__BackingField'
		IL_0060: ldarg.2
		IL_0061: ldsfld class [System.Runtime]System.Func`2<valuetype MeasureTypes, class [CsharpRAPL]CsharpRAPL.Sensor> benchmark.Benchmark/'<>c'::'<>9__18_0'
		IL_0066: dup
		IL_0067: brtrue.s IL_0080

		IL_0069: pop
		IL_006a: ldsfld class benchmark.Benchmark/'<>c' benchmark.Benchmark/'<>c'::'<>9'
		IL_006f: ldftn instance class [CsharpRAPL]CsharpRAPL.Sensor benchmark.Benchmark/'<>c'::'<.ctor>b__18_0'(valuetype MeasureTypes)
		IL_0075: newobj instance void class [System.Runtime]System.Func`2<valuetype MeasureTypes, class [CsharpRAPL]CsharpRAPL.Sensor>::.ctor(object, native int)
		IL_007a: dup
		IL_007b: stsfld class [System.Runtime]System.Func`2<valuetype MeasureTypes, class [CsharpRAPL]CsharpRAPL.Sensor> benchmark.Benchmark/'<>c'::'<>9__18_0'

		IL_0080: call class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!1> [System.Linq]System.Linq.Enumerable::Select<valuetype MeasureTypes, class [CsharpRAPL]CsharpRAPL.Sensor>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>, class [System.Runtime]System.Func`2<!!0, !!1>)
		IL_0085: call class [System.Collections]System.Collections.Generic.List`1<!!0> [System.Linq]System.Linq.Enumerable::ToList<class [CsharpRAPL]CsharpRAPL.Sensor>(class [System.Runtime]System.Collections.Generic.IEnumerable`1<!!0>)
		IL_008a: stloc.0
		IL_008b: ldarg.0
		IL_008c: ldloc.0
		IL_008d: newobj instance void [CsharpRAPL]CsharpRAPL.RAPL::.ctor(class [System.Collections]System.Collections.Generic.List`1<class [CsharpRAPL]CsharpRAPL.Sensor>)
		IL_0092: stfld class [CsharpRAPL]CsharpRAPL.RAPL benchmark.Benchmark::_rapl
		IL_0097: ret
	} // end of method Benchmark::.ctor

	.method private hidebysig 
		instance void start () cil managed 
	{
		// Method begins at RVA 0x21b8
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld class [CsharpRAPL]CsharpRAPL.RAPL benchmark.Benchmark::_rapl
		IL_0006: callvirt instance void [CsharpRAPL]CsharpRAPL.RAPL::Start()
		IL_000b: nop
		IL_000c: ret
	} // end of method Benchmark::start

	.method private hidebysig 
		instance void end () cil managed 
	{
		// Method begins at RVA 0x21c8
		// Code size 110 (0x6e)
		.maxstack 4
		.locals init (
			[0] bool,
			[1] valuetype Measure
		)

		IL_0000: nop
		IL_0001: ldarg.0
		IL_0002: ldfld class [CsharpRAPL]CsharpRAPL.RAPL benchmark.Benchmark::_rapl
		IL_0007: callvirt instance void [CsharpRAPL]CsharpRAPL.RAPL::End()
		IL_000c: nop
		IL_000d: ldarg.0
		IL_000e: ldfld class [CsharpRAPL]CsharpRAPL.RAPL benchmark.Benchmark::_rapl
		IL_0013: callvirt instance bool [CsharpRAPL]CsharpRAPL.RAPL::IsValid()
		IL_0018: stloc.0
		IL_0019: ldloc.0
		IL_001a: brfalse.s IL_006d

		IL_001c: nop
		IL_001d: ldloca.s 1
		IL_001f: ldarg.0
		IL_0020: ldfld class [CsharpRAPL]CsharpRAPL.RAPL benchmark.Benchmark::_rapl
		IL_0025: callvirt instance class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.ValueTuple`2<string, float64>> [CsharpRAPL]CsharpRAPL.RAPL::GetResults()
		IL_002a: call instance void Measure::.ctor(class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.ValueTuple`2<string, float64>>)
		IL_002f: ldarg.0
		IL_0030: ldfld class [System.Collections]System.Collections.Generic.List`1<valuetype Measure> benchmark.Benchmark::_resultBuffer
		IL_0035: ldloc.1
		IL_0036: callvirt instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Measure>::Add(!0)
		IL_003b: nop
		IL_003c: ldarg.0
		IL_003d: ldfld class benchmark.SingleRun benchmark.Benchmark::SingleRunComplete
		IL_0042: dup
		IL_0043: brtrue.s IL_0048

		IL_0045: pop
		IL_0046: br.s IL_004f

		IL_0048: ldloc.1
		IL_0049: callvirt instance void benchmark.SingleRun::Invoke(valuetype Measure)
		IL_004e: nop

		IL_004f: ldarg.0
		IL_0050: ldarg.0
		IL_0051: ldfld float64 benchmark.Benchmark::elapsedTime
		IL_0056: ldloc.1
		IL_0057: ldfld float64 Measure::duration
		IL_005c: ldc.r8 1000
		IL_0065: div
		IL_0066: add
		IL_0067: stfld float64 benchmark.Benchmark::elapsedTime
		IL_006c: nop

		IL_006d: ret
	} // end of method Benchmark::end

	.method public hidebysig 
		instance void Run<R> (
			class [System.Runtime]System.Func`1<!!R> benchmark
		) cil managed 
	{
		// Method begins at RVA 0x2242
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldnull
		IL_0003: call instance void benchmark.Benchmark::Run<!!R>(class [System.Runtime]System.Func`1<!!0>, class [System.Runtime]System.Action`1<!!0>)
		IL_0008: nop
		IL_0009: ret
	} // end of method Benchmark::Run

	.method public hidebysig 
		instance void Run<I, R> (
			class [System.Runtime]System.Func`2<!!I, !!R> benchmark,
			!!I input,
			class [System.Runtime]System.Action`1<!!R> benchmarkOutput
		) cil managed 
	{
		// Method begins at RVA 0x2250
		// Code size 41 (0x29)
		.maxstack 3
		.locals init (
			[0] class benchmark.Benchmark/'<>c__DisplayClass22_0`2'<!!I, !!R>
		)

		IL_0000: newobj instance void class benchmark.Benchmark/'<>c__DisplayClass22_0`2'<!!I, !!R>::.ctor()
		IL_0005: stloc.0
		IL_0006: ldloc.0
		IL_0007: ldarg.1
		IL_0008: stfld class [System.Runtime]System.Func`2<!0, !1> class benchmark.Benchmark/'<>c__DisplayClass22_0`2'<!!I, !!R>::benchmark
		IL_000d: ldloc.0
		IL_000e: ldarg.2
		IL_000f: stfld !0 class benchmark.Benchmark/'<>c__DisplayClass22_0`2'<!!I, !!R>::input
		IL_0014: ldarg.0
		IL_0015: ldloc.0
		IL_0016: ldftn instance !1 class benchmark.Benchmark/'<>c__DisplayClass22_0`2'<!!I, !!R>::'<Run>b__0'()
		IL_001c: newobj instance void class [System.Runtime]System.Func`1<!!R>::.ctor(object, native int)
		IL_0021: ldarg.3
		IL_0022: call instance void benchmark.Benchmark::Run<!!R>(class [System.Runtime]System.Func`1<!!0>, class [System.Runtime]System.Action`1<!!0>)
		IL_0027: nop
		IL_0028: ret
	} // end of method Benchmark::Run

	.method public hidebysig 
		instance void Run<R> (
			class [System.Runtime]System.Func`1<!!R> benchmark,
			class [System.Runtime]System.Action`1<!!R> benchmarkOutput
		) cil managed 
	{
		// Method begins at RVA 0x2288
		// Code size 347 (0x15b)
		.maxstack 5
		.locals init (
			[0] int32,
			[1] !!R,
			[2] bool,
			[3] bool,
			[4] bool,
			[5] bool,
			[6] bool,
			[7] bool,
			[8] bool
		)

		IL_0000: nop
		IL_0001: ldarg.0
		IL_0002: ldfld class [System.Runtime]System.IO.TextWriter benchmark.Benchmark::benchmarkOutputStream
		IL_0007: call void [System.Console]System.Console::SetOut(class [System.Runtime]System.IO.TextWriter)
		IL_000c: nop
		IL_000d: ldarg.0
		IL_000e: ldc.r8 0.0
		IL_0017: stfld float64 benchmark.Benchmark::elapsedTime
		IL_001c: ldarg.0
		IL_001d: newobj instance void class [System.Collections]System.Collections.Generic.List`1<valuetype Measure>::.ctor()
		IL_0022: stfld class [System.Collections]System.Collections.Generic.List`1<valuetype Measure> benchmark.Benchmark::_resultBuffer
		IL_0027: ldc.i4.0
		IL_0028: stloc.0
		IL_0029: br IL_010b
		// loop start (head: IL_010b)
			IL_002e: nop
			IL_002f: ldarg.0
			IL_0030: call instance bool benchmark.Benchmark::get_stop_running()
			IL_0035: stloc.2
			IL_0036: ldloc.2
			IL_0037: brfalse.s IL_003e

			IL_0039: br IL_011d

			IL_003e: ldarg.0
			IL_003f: call instance int32 benchmark.Benchmark::get_iterations()
			IL_0044: ldc.i4.1
			IL_0045: ceq
			IL_0047: ldc.i4.0
			IL_0048: ceq
			IL_004a: stloc.3
			IL_004b: ldloc.3
			IL_004c: brfalse.s IL_007e

			IL_004e: ldarg.0
			IL_004f: ldnull
			IL_0050: ldftn void [System.Console]System.Console::Write(string)
			IL_0056: newobj instance void class [System.Runtime]System.Action`1<string>::.ctor(object, native int)
			IL_005b: ldstr "\r{0} of {1}"
			IL_0060: ldloc.0
			IL_0061: ldc.i4.1
			IL_0062: add
			IL_0063: box [System.Runtime]System.Int32
			IL_0068: ldarg.0
			IL_0069: call instance int32 benchmark.Benchmark::get_iterations()
			IL_006e: box [System.Runtime]System.Int32
			IL_0073: call string [System.Runtime]System.String::Format(string, object, object)
			IL_0078: call instance void benchmark.Benchmark::print(class [System.Runtime]System.Action`1<string>, string)
			IL_007d: nop

			IL_007e: ldarg.0
			IL_007f: call instance void benchmark.Benchmark::start()
			IL_0084: nop
			IL_0085: ldarg.1
			IL_0086: callvirt instance !0 class [System.Runtime]System.Func`1<!!R>::Invoke()
			IL_008b: stloc.1
			IL_008c: ldarg.0
			IL_008d: call instance void benchmark.Benchmark::end()
			IL_0092: nop
			IL_0093: ldarg.0
			IL_0094: ldfld class [System.Runtime]System.IO.TextWriter benchmark.Benchmark::benchmarkOutputStream
			IL_0099: ldarg.0
			IL_009a: ldfld class [System.Runtime]System.IO.TextWriter benchmark.Benchmark::stdout
			IL_009f: callvirt instance bool [System.Runtime]System.Object::Equals(object)
			IL_00a4: stloc.s 4
			IL_00a6: ldloc.s 4
			IL_00a8: brfalse.s IL_00c2

			IL_00aa: ldarg.0
			IL_00ab: ldnull
			IL_00ac: ldftn void [System.Console]System.Console::WriteLine(string)
			IL_00b2: newobj instance void class [System.Runtime]System.Action`1<string>::.ctor(object, native int)
			IL_00b7: ldstr ""
			IL_00bc: call instance void benchmark.Benchmark::print(class [System.Runtime]System.Action`1<string>, string)
			IL_00c1: nop

			IL_00c2: ldarg.2
			IL_00c3: ldnull
			IL_00c4: cgt.un
			IL_00c6: stloc.s 5
			IL_00c8: ldloc.s 5
			IL_00ca: brfalse.s IL_00d4

			IL_00cc: ldarg.2
			IL_00cd: ldloc.1
			IL_00ce: callvirt instance void class [System.Runtime]System.Action`1<!!R>::Invoke(!0)
			IL_00d3: nop

			IL_00d4: ldarg.0
			IL_00d5: ldfld float64 benchmark.Benchmark::elapsedTime
			IL_00da: ldsfld int32 benchmark.Benchmark::maxExecutionTime
			IL_00df: conv.r8
			IL_00e0: clt.un
			IL_00e2: ldc.i4.0
			IL_00e3: ceq
			IL_00e5: stloc.s 6
			IL_00e7: ldloc.s 6
			IL_00e9: brfalse.s IL_0106

			IL_00eb: nop
			IL_00ec: ldarg.0
			IL_00ed: ldnull
			IL_00ee: ldftn void [System.Console]System.Console::WriteLine(string)
			IL_00f4: newobj instance void class [System.Runtime]System.Action`1<string>::.ctor(object, native int)
			IL_00f9: ldstr "\nEnding benchmark due to time constraints"
			IL_00fe: call instance void benchmark.Benchmark::print(class [System.Runtime]System.Action`1<string>, string)
			IL_0103: nop
			IL_0104: br.s IL_011d

			IL_0106: nop
			IL_0107: ldloc.0
			IL_0108: ldc.i4.1
			IL_0109: add
			IL_010a: stloc.0

			IL_010b: ldloc.0
			IL_010c: ldarg.0
			IL_010d: call instance int32 benchmark.Benchmark::get_iterations()
			IL_0112: clt
			IL_0114: stloc.s 7
			IL_0116: ldloc.s 7
			IL_0118: brtrue IL_002e
		// end loop

		IL_011d: ldarg.0
		IL_011e: call instance int32 benchmark.Benchmark::get_iterations()
		IL_0123: ldc.i4.1
		IL_0124: ceq
		IL_0126: ldc.i4.0
		IL_0127: ceq
		IL_0129: stloc.s 8
		IL_012b: ldloc.s 8
		IL_012d: brfalse.s IL_0147

		IL_012f: ldarg.0
		IL_0130: ldnull
		IL_0131: ldftn void [System.Console]System.Console::WriteLine(string)
		IL_0137: newobj instance void class [System.Runtime]System.Action`1<string>::.ctor(object, native int)
		IL_013c: ldstr ""
		IL_0141: call instance void benchmark.Benchmark::print(class [System.Runtime]System.Action`1<string>, string)
		IL_0146: nop

		IL_0147: ldarg.0
		IL_0148: call instance void benchmark.Benchmark::saveResults()
		IL_014d: nop
		IL_014e: ldarg.0
		IL_014f: ldfld class [System.Runtime]System.IO.TextWriter benchmark.Benchmark::stdout
		IL_0154: call void [System.Console]System.Console::SetOut(class [System.Runtime]System.IO.TextWriter)
		IL_0159: nop
		IL_015a: ret
	} // end of method Benchmark::Run

	.method private hidebysig 
		instance void print (
			class [System.Runtime]System.Action`1<string> printAction,
			[opt] string 'value'
		) cil managed 
	{
		.param [2] = ""
		// Method begins at RVA 0x23ef
		// Code size 45 (0x2d)
		.maxstack 8

		IL_0000: nop
		IL_0001: ldarg.0
		IL_0002: ldfld class [System.Runtime]System.IO.TextWriter benchmark.Benchmark::stdout
		IL_0007: call void [System.Console]System.Console::SetOut(class [System.Runtime]System.IO.TextWriter)
		IL_000c: nop
		IL_000d: ldarg.1
		IL_000e: ldarg.2
		IL_000f: callvirt instance void class [System.Runtime]System.Action`1<string>::Invoke(!0)
		IL_0014: nop
		IL_0015: call class [System.Runtime]System.IO.TextWriter [System.Console]System.Console::get_Out()
		IL_001a: callvirt instance void [System.Runtime]System.IO.TextWriter::Flush()
		IL_001f: nop
		IL_0020: ldarg.0
		IL_0021: ldfld class [System.Runtime]System.IO.TextWriter benchmark.Benchmark::benchmarkOutputStream
		IL_0026: call void [System.Console]System.Console::SetOut(class [System.Runtime]System.IO.TextWriter)
		IL_002b: nop
		IL_002c: ret
	} // end of method Benchmark::print

	.method private hidebysig 
		instance void saveResults () cil managed 
	{
		// Method begins at RVA 0x2420
		// Code size 300 (0x12c)
		.maxstack 3
		.locals init (
			[0] string,
			[1] string,
			[2] valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Measure>,
			[3] valuetype Measure,
			[4] valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [System.Runtime]System.ValueTuple`2<string, float64>>,
			[5] valuetype [System.Runtime]System.ValueTuple`2<string, float64>,
			[6] bool,
			[7] float64,
			[8] bool
		)

		IL_0000: nop
		IL_0001: ldstr "name;duration(ms);pkg(µj);dram(µj);temp(C)\n"
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: stloc.1
		IL_0009: nop
		IL_000a: ldarg.0
		IL_000b: ldfld class [System.Collections]System.Collections.Generic.List`1<valuetype Measure> benchmark.Benchmark::_resultBuffer
		IL_0010: callvirt instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype Measure>::GetEnumerator()
		IL_0015: stloc.2
		.try
		{
			IL_0016: br IL_0102
			// loop start (head: IL_0102)
				IL_001b: ldloca.s 2
				IL_001d: call instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Measure>::get_Current()
				IL_0022: stloc.3
				IL_0023: nop
				IL_0024: ldloc.1
				IL_0025: ldarg.0
				IL_0026: ldfld string benchmark.Benchmark::name
				IL_002b: call string [System.Runtime]System.String::Concat(string, string)
				IL_0030: stloc.1
				IL_0031: nop
				IL_0032: ldloc.3
				IL_0033: ldfld class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.ValueTuple`2<string, float64>> Measure::apis
				IL_0038: callvirt instance valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<!0> class [System.Collections]System.Collections.Generic.List`1<valuetype [System.Runtime]System.ValueTuple`2<string, float64>>::GetEnumerator()
				IL_003d: stloc.s 4
				.try
				{
					IL_003f: br IL_00d8
					// loop start (head: IL_00d8)
						IL_0044: ldloca.s 4
						IL_0046: call instance !0 valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [System.Runtime]System.ValueTuple`2<string, float64>>::get_Current()
						IL_004b: stloc.s 5
						IL_004d: nop
						IL_004e: ldloc.s 5
						IL_0050: ldfld !0 valuetype [System.Runtime]System.ValueTuple`2<string, float64>::Item1
						IL_0055: ldstr "temp"
						IL_005a: callvirt instance bool [System.Runtime]System.String::Equals(string)
						IL_005f: stloc.s 6
						IL_0061: ldloc.s 6
						IL_0063: brfalse.s IL_0089

						IL_0065: ldloc.1
						IL_0066: ldloc.s 5
						IL_0068: ldfld !1 valuetype [System.Runtime]System.ValueTuple`2<string, float64>::Item2
						IL_006d: conv.r8
						IL_006e: ldc.r8 1000
						IL_0077: div
						IL_0078: stloc.s 7
						IL_007a: ldloca.s 7
						IL_007c: call instance string [System.Runtime]System.Double::ToString()
						IL_0081: call string [System.Runtime]System.String::Concat(string, string)
						IL_0086: stloc.1
						IL_0087: br.s IL_00d7

						IL_0089: ldloc.s 5
						IL_008b: ldfld !0 valuetype [System.Runtime]System.ValueTuple`2<string, float64>::Item1
						IL_0090: ldstr "timer"
						IL_0095: callvirt instance bool [System.Runtime]System.String::Equals(string)
						IL_009a: stloc.s 8
						IL_009c: ldloc.s 8
						IL_009e: brfalse.s IL_00bf

						IL_00a0: ldloc.1
						IL_00a1: ldstr "{0,0:N3};"
						IL_00a6: ldloc.s 5
						IL_00a8: ldfld !1 valuetype [System.Runtime]System.ValueTuple`2<string, float64>::Item2
						IL_00ad: box [System.Runtime]System.Double
						IL_00b2: call string [System.Runtime]System.String::Format(string, object)
						IL_00b7: call string [System.Runtime]System.String::Concat(string, string)
						IL_00bc: stloc.1
						IL_00bd: br.s IL_00d7

						IL_00bf: ldloc.1
						IL_00c0: ldloca.s 5
						IL_00c2: ldflda !1 valuetype [System.Runtime]System.ValueTuple`2<string, float64>::Item2
						IL_00c7: call instance string [System.Runtime]System.Double::ToString()
						IL_00cc: ldstr ";"
						IL_00d1: call string [System.Runtime]System.String::Concat(string, string, string)
						IL_00d6: stloc.1

						IL_00d7: nop

						IL_00d8: ldloca.s 4
						IL_00da: call instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [System.Runtime]System.ValueTuple`2<string, float64>>::MoveNext()
						IL_00df: brtrue IL_0044
					// end loop

					IL_00e4: leave.s IL_00f5
				} // end .try
				finally
				{
					IL_00e6: ldloca.s 4
					IL_00e8: constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype [System.Runtime]System.ValueTuple`2<string, float64>>
					IL_00ee: callvirt instance void [System.Runtime]System.IDisposable::Dispose()
					IL_00f3: nop
					IL_00f4: endfinally
				} // end handler

				IL_00f5: ldloc.1
				IL_00f6: ldstr "\n"
				IL_00fb: call string [System.Runtime]System.String::Concat(string, string)
				IL_0100: stloc.1
				IL_0101: nop

				IL_0102: ldloca.s 2
				IL_0104: call instance bool valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Measure>::MoveNext()
				IL_0109: brtrue IL_001b
			// end loop

			IL_010e: leave.s IL_011f
		} // end .try
		finally
		{
			IL_0110: ldloca.s 2
			IL_0112: constrained. valuetype [System.Collections]System.Collections.Generic.List`1/Enumerator<valuetype Measure>
			IL_0118: callvirt instance void [System.Runtime]System.IDisposable::Dispose()
			IL_011d: nop
			IL_011e: endfinally
		} // end handler

		IL_011f: ldsfld string benchmark.Benchmark::outputFilePath
		IL_0124: ldloc.1
		IL_0125: call void [System.IO.FileSystem]System.IO.File::WriteAllText(string, string)
		IL_012a: nop
		IL_012b: ret
	} // end of method Benchmark::saveResults

	.method private hidebysig specialname rtspecialname static 
		void .cctor () cil managed 
	{
		// Method begins at RVA 0x2574
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldc.i4 2700
		IL_0005: stsfld int32 benchmark.Benchmark::maxExecutionTime
		IL_000a: ldstr "tempResults.csv"
		IL_000f: stsfld string benchmark.Benchmark::outputFilePath
		IL_0014: ret
	} // end of method Benchmark::.cctor

	// Events
	.event benchmark.SingleRun SingleRunComplete
	{
		.addon instance void benchmark.Benchmark::add_SingleRunComplete(class benchmark.SingleRun)
		.removeon instance void benchmark.Benchmark::remove_SingleRunComplete(class benchmark.SingleRun)
	}


	// Properties
	.property instance bool stop_running()
	{
		.get instance bool benchmark.Benchmark::get_stop_running()
		.set instance void benchmark.Benchmark::set_stop_running(bool)
	}
	.property instance int32 iterations()
	{
		.get instance int32 benchmark.Benchmark::get_iterations()
	}

} // end of class benchmark.Benchmark

