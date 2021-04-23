.class private sequential ansi sealed beforefieldinit System.ByReference`1<T>
	extends System.ValueType
{
	.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
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
	.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
		01 00 00 00
	)
	.custom instance void System.Runtime.CompilerServices.IsByRefLikeAttribute::.ctor() = (
		01 00 00 00
	)
	// Fields
	.field private initonly native int _value

	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			!T& 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.IntrinsicAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x484f7
		// Code size 6 (0x6)
		.maxstack 8

		IL_0000: newobj instance void System.PlatformNotSupportedException::.ctor()
		IL_0005: throw
	} // end of method ByReference`1::.ctor

	.method public hidebysig specialname 
		instance !T& get_Value () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.IntrinsicAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x5eea8
		// Code size 6 (0x6)
		.maxstack 1
		.locals (
			[0] !T
		)

		IL_0000: newobj instance void System.PlatformNotSupportedException::.ctor()
		IL_0005: throw
	} // end of method ByReference`1::get_Value

	// Properties
	.property instance !T& Value()
	{
		.get instance !0& System.ByReference`1::get_Value()
	}

} // end of class System.ByReference`1