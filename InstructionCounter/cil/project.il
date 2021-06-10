// IL code: project
.class private auto ansi '<Module>'
{
} // end of class <Module>

.class private auto ansi beforefieldinit ConsoleApplication
	extends [System.Runtime]System.Object
{
	// Fields
	.field private static literal string fileName = "program.dat"

	// Methods
	.method private hidebysig static 
		void Main () cil managed 
	{
		// Method begins at RVA 0x2050
		// Code size 19 (0x13)
		.maxstack 8
		.entrypoint

		IL_0000: nop
		IL_0001: call void ConsoleApplication::Write()
		IL_0006: nop
		IL_0007: ldstr "Using Binary Writer Class the Contents are Written "
		IL_000c: call void [System.Console]System.Console::WriteLine(string)
		IL_0011: nop
		IL_0012: ret
	} // end of method ConsoleApplication::Main

	.method public hidebysig static 
		void Write () cil managed 
	{
		// Method begins at RVA 0x2064
		// Code size 58 (0x3a)
		.maxstack 2
		.locals init (
			[0] class [System.Runtime]System.IO.BinaryWriter
		)

		IL_0000: nop
		IL_0001: ldstr "program.dat"
		IL_0006: ldc.i4.2
		IL_0007: call class [System.Runtime]System.IO.FileStream [System.IO.FileSystem]System.IO.File::Open(string, valuetype [System.Runtime]System.IO.FileMode)
		IL_000c: newobj instance void [System.Runtime]System.IO.BinaryWriter::.ctor(class [System.Runtime]System.IO.Stream)
		IL_0011: stloc.0
		.try
		{
			IL_0012: nop
			IL_0013: ldloc.0
			IL_0014: ldc.r4 1.25
			IL_0019: callvirt instance void [System.Runtime]System.IO.BinaryWriter::Write(float32)
			IL_001e: nop
			IL_001f: ldloc.0
			IL_0020: ldstr "c:\\Temp"
			IL_0025: callvirt instance void [System.Runtime]System.IO.BinaryWriter::Write(string)
			IL_002a: nop
			IL_002b: nop
			IL_002c: leave.s IL_0039
		} // end .try
		finally
		{
			IL_002e: ldloc.0
			IL_002f: brfalse.s IL_0038

			IL_0031: ldloc.0
			IL_0032: callvirt instance void [System.Runtime]System.IDisposable::Dispose()
			IL_0037: nop

			IL_0038: endfinally
		} // end handler

		IL_0039: ret
	} // end of method ConsoleApplication::Write

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x20bc
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void [System.Runtime]System.Object::.ctor()
		IL_0006: nop
		IL_0007: ret
	} // end of method ConsoleApplication::.ctor

} // end of class ConsoleApplication

