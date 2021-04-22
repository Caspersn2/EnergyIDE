.class public sequential ansi sealed beforefieldinit System.ReadOnlySpan`1<T>
	extends System.ValueType
{
	.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
		01 00 01 00 00
	)
	.custom instance void System.Runtime.CompilerServices.IsByRefLikeAttribute::.ctor() = (
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
	.custom instance void System.Reflection.DefaultMemberAttribute::.ctor(string) = (
		01 00 04 49 74 65 6d 00 00
	)
	.custom instance void System.Diagnostics.DebuggerTypeProxyAttribute::.ctor(class System.Type) = (
		01 00 16 53 79 73 74 65 6d 2e 53 70 61 6e 44 65
		62 75 67 56 69 65 77 60 31 00 00
	)
	.custom instance void System.Diagnostics.DebuggerDisplayAttribute::.ctor(string) = (
		01 00 10 7b 54 6f 53 74 72 69 6e 67 28 29 2c 72
		61 77 7d 00 00
	)
	.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
		01 00 00 00
	)
	.param type T
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	// Nested Types
	.class nested public sequential ansi sealed beforefieldinit Enumerator<T>
		extends System.ValueType
	{
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.custom instance void System.Runtime.CompilerServices.IsByRefLikeAttribute::.ctor() = (
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
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Fields
		.field private initonly valuetype System.ReadOnlySpan`1<!T> _span
		.field private int32 _index

		// Methods
		.method assembly hidebysig specialname rtspecialname 
			instance void .ctor (
				valuetype System.ReadOnlySpan`1<!T> span
			) cil managed aggressiveinlining 
		{
			// Method begins at RVA 0x7d8c5
			// Code size 15 (0xf)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldarg.1
			IL_0002: stfld valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1/Enumerator<!T>::_span
			IL_0007: ldarg.0
			IL_0008: ldc.i4.m1
			IL_0009: stfld int32 valuetype System.ReadOnlySpan`1/Enumerator<!T>::_index
			IL_000e: ret
		} // end of method Enumerator::.ctor

		.method public hidebysig 
			instance bool MoveNext () cil managed aggressiveinlining 
		{
			// Method begins at RVA 0x7d8d8
			// Code size 34 (0x22)
			.maxstack 2
			.locals (
				[0] int32
			)

			IL_0000: ldarg.0
			IL_0001: ldfld int32 valuetype System.ReadOnlySpan`1/Enumerator<!T>::_index
			IL_0006: ldc.i4.1
			IL_0007: add
			IL_0008: stloc.0
			IL_0009: ldloc.0
			IL_000a: ldarg.0
			IL_000b: ldflda valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1/Enumerator<!T>::_span
			IL_0010: call instance int32 valuetype System.ReadOnlySpan`1<!T>::get_Length()
			IL_0015: bge.s IL_0020

			IL_0017: ldarg.0
			IL_0018: ldloc.0
			IL_0019: stfld int32 valuetype System.ReadOnlySpan`1/Enumerator<!T>::_index
			IL_001e: ldc.i4.1
			IL_001f: ret

			IL_0020: ldc.i4.0
			IL_0021: ret
		} // end of method Enumerator::MoveNext

		.method public hidebysig specialname 
			instance !T& modreq(System.Runtime.InteropServices.InAttribute) get_Current () cil managed aggressiveinlining 
		{
			.param [0]
				.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
					01 00 00 00
				)
			// Method begins at RVA 0x7d906
			// Code size 18 (0x12)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldflda valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1/Enumerator<!T>::_span
			IL_0006: ldarg.0
			IL_0007: ldfld int32 valuetype System.ReadOnlySpan`1/Enumerator<!T>::_index
			IL_000c: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<!T>::get_Item(int32)
			IL_0011: ret
		} // end of method Enumerator::get_Current

		// Properties
		.property instance !T& modreq(System.Runtime.InteropServices.InAttribute) Current()
		{
			.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
				01 00 00 00
			)
			.get instance !0& modreq(System.Runtime.InteropServices.InAttribute) System.ReadOnlySpan`1/Enumerator::get_Current()
		}

	} // end of class Enumerator


	// Fields
	.field assembly initonly valuetype System.ByReference`1<!T> _pointer
	.field private initonly int32 _length

	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			!T[] 'array'
		) cil managed aggressiveinlining 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		// Method begins at RVA 0x7d567
		// Code size 38 (0x26)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000b

		IL_0003: ldarg.0
		IL_0004: initobj valuetype System.ReadOnlySpan`1<!T>
		IL_000a: ret

		IL_000b: ldarg.0
		IL_000c: ldarg.1
		IL_000d: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<!T>(!!0[])
		IL_0012: newobj instance void valuetype System.ByReference`1<!T>::.ctor(!0&)
		IL_0017: stfld valuetype System.ByReference`1<!0> valuetype System.ReadOnlySpan`1<!T>::_pointer
		IL_001c: ldarg.0
		IL_001d: ldarg.1
		IL_001e: ldlen
		IL_001f: conv.i4
		IL_0020: stfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_0025: ret
	} // end of method ReadOnlySpan`1::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			!T[] 'array',
			int32 start,
			int32 length
		) cil managed aggressiveinlining 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		// Method begins at RVA 0x7d590
		// Code size 72 (0x48)
		.maxstack 3

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0016

		IL_0003: ldarg.2
		IL_0004: brtrue.s IL_0009

		IL_0006: ldarg.3
		IL_0007: brfalse.s IL_000e

		IL_0009: call void System.ThrowHelper::ThrowArgumentOutOfRangeException()

		IL_000e: ldarg.0
		IL_000f: initobj valuetype System.ReadOnlySpan`1<!T>
		IL_0015: ret

		IL_0016: ldarg.2
		IL_0017: ldarg.1
		IL_0018: ldlen
		IL_0019: conv.i4
		IL_001a: bgt.un.s IL_0024

		IL_001c: ldarg.3
		IL_001d: ldarg.1
		IL_001e: ldlen
		IL_001f: conv.i4
		IL_0020: ldarg.2
		IL_0021: sub
		IL_0022: ble.un.s IL_0029

		IL_0024: call void System.ThrowHelper::ThrowArgumentOutOfRangeException()

		IL_0029: ldarg.0
		IL_002a: ldarg.1
		IL_002b: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<!T>(!!0[])
		IL_0030: ldarg.2
		IL_0031: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<!T>(!!0&, int32)
		IL_0036: newobj instance void valuetype System.ByReference`1<!T>::.ctor(!0&)
		IL_003b: stfld valuetype System.ByReference`1<!0> valuetype System.ReadOnlySpan`1<!T>::_pointer
		IL_0040: ldarg.0
		IL_0041: ldarg.3
		IL_0042: stfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_0047: ret
	} // end of method ReadOnlySpan`1::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			void* pointer,
			int32 length
		) cil managed aggressiveinlining 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x7d5e4
		// Code size 56 (0x38)
		.maxstack 8

		IL_0000: call bool System.Runtime.CompilerServices.RuntimeHelpers::IsReferenceOrContainsReferences<!T>()
		IL_0005: brfalse.s IL_0016

		IL_0007: ldtoken !T
		IL_000c: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0011: call void System.ThrowHelper::ThrowInvalidTypeWithPointersNotSupported(class System.Type)

		IL_0016: ldarg.2
		IL_0017: ldc.i4.0
		IL_0018: bge.s IL_001f

		IL_001a: call void System.ThrowHelper::ThrowArgumentOutOfRangeException()

		IL_001f: ldarg.0
		IL_0020: ldarg.1
		IL_0021: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<uint8, !T>(!!0&)
		IL_0026: newobj instance void valuetype System.ByReference`1<!T>::.ctor(!0&)
		IL_002b: stfld valuetype System.ByReference`1<!0> valuetype System.ReadOnlySpan`1<!T>::_pointer
		IL_0030: ldarg.0
		IL_0031: ldarg.2
		IL_0032: stfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_0037: ret
	} // end of method ReadOnlySpan`1::.ctor

	.method assembly hidebysig specialname rtspecialname 
		instance void .ctor (
			!T& ptr,
			int32 length
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x7d61d
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: newobj instance void valuetype System.ByReference`1<!T>::.ctor(!0&)
		IL_0007: stfld valuetype System.ByReference`1<!0> valuetype System.ReadOnlySpan`1<!T>::_pointer
		IL_000c: ldarg.0
		IL_000d: ldarg.2
		IL_000e: stfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_0013: ret
	} // end of method ReadOnlySpan`1::.ctor

	.method public hidebysig specialname 
		instance !T& modreq(System.Runtime.InteropServices.InAttribute) get_Item (
			int32 index
		) cil managed aggressiveinlining 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		.custom instance void System.Runtime.CompilerServices.IntrinsicAttribute::.ctor() = (
			01 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x7d632
		// Code size 32 (0x20)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: ldfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_0007: blt.un.s IL_000e

		IL_0009: call void System.ThrowHelper::ThrowIndexOutOfRangeException()

		IL_000e: ldarg.0
		IL_000f: ldflda valuetype System.ByReference`1<!0> valuetype System.ReadOnlySpan`1<!T>::_pointer
		IL_0014: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_0019: ldarg.1
		IL_001a: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<!T>(!!0&, int32)
		IL_001f: ret
	} // end of method ReadOnlySpan`1::get_Item

	.method public hidebysig specialname 
		instance int32 get_Length () cil managed 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x7d653
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_0006: ret
	} // end of method ReadOnlySpan`1::get_Length

	.method public hidebysig specialname 
		instance bool get_IsEmpty () cil managed 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x7d65b
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldc.i4.0
		IL_0001: ldarg.0
		IL_0002: ldfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_0007: clt.un
		IL_0009: ldc.i4.0
		IL_000a: ceq
		IL_000c: ret
	} // end of method ReadOnlySpan`1::get_IsEmpty

	.method public hidebysig specialname static 
		bool op_Inequality (
			valuetype System.ReadOnlySpan`1<!T> left,
			valuetype System.ReadOnlySpan`1<!T> right
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 00 01 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 00 01 00 00
			)
		// Method begins at RVA 0x7d669
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call bool valuetype System.ReadOnlySpan`1<!T>::op_Equality(valuetype System.ReadOnlySpan`1<!0>, valuetype System.ReadOnlySpan`1<!0>)
		IL_0007: ldc.i4.0
		IL_0008: ceq
		IL_000a: ret
	} // end of method ReadOnlySpan`1::op_Inequality

	.method public hidebysig virtual 
		instance bool Equals (
			object obj
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void System.ObsoleteAttribute::.ctor(string) = (
			01 00 48 45 71 75 61 6c 73 28 29 20 6f 6e 20 52
			65 61 64 4f 6e 6c 79 53 70 61 6e 20 77 69 6c 6c
			20 61 6c 77 61 79 73 20 74 68 72 6f 77 20 61 6e
			20 65 78 63 65 70 74 69 6f 6e 2e 20 55 73 65 20
			3d 3d 20 69 6e 73 74 65 61 64 2e 00 00
		)
		.custom instance void System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype System.ComponentModel.EditorBrowsableState) = (
			01 00 01 00 00 00 00 00
		)
		// Method begins at RVA 0x7d675
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_NotSupported_CannotCallEqualsOnSpan()
		IL_0005: newobj instance void System.NotSupportedException::.ctor(string)
		IL_000a: throw
	} // end of method ReadOnlySpan`1::Equals

	.method public hidebysig virtual 
		instance int32 GetHashCode () cil managed 
	{
		.custom instance void System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype System.ComponentModel.EditorBrowsableState) = (
			01 00 01 00 00 00 00 00
		)
		.custom instance void System.ObsoleteAttribute::.ctor(string) = (
			01 00 3d 47 65 74 48 61 73 68 43 6f 64 65 28 29
			20 6f 6e 20 52 65 61 64 4f 6e 6c 79 53 70 61 6e
			20 77 69 6c 6c 20 61 6c 77 61 79 73 20 74 68 72
			6f 77 20 61 6e 20 65 78 63 65 70 74 69 6f 6e 2e
			00 00
		)
		// Method begins at RVA 0x7d681
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_NotSupported_CannotCallGetHashCodeOnSpan()
		IL_0005: newobj instance void System.NotSupportedException::.ctor(string)
		IL_000a: throw
	} // end of method ReadOnlySpan`1::GetHashCode

	.method public hidebysig specialname static 
		valuetype System.ReadOnlySpan`1<!T> op_Implicit (
			!T[] 'array'
		) cil managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 00 01 00 00
			)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		// Method begins at RVA 0x7d68d
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void valuetype System.ReadOnlySpan`1<!T>::.ctor(!0[])
		IL_0006: ret
	} // end of method ReadOnlySpan`1::op_Implicit

	.method public hidebysig specialname static 
		valuetype System.ReadOnlySpan`1<!T> op_Implicit (
			valuetype System.ArraySegment`1<!T> segment
		) cil managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 00 01 00 00
			)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 00 01 00 00
			)
		// Method begins at RVA 0x7d695
		// Code size 27 (0x1b)
		.maxstack 8

		IL_0000: ldarga.s 0
		IL_0002: call instance !0[] valuetype System.ArraySegment`1<!T>::get_Array()
		IL_0007: ldarga.s 0
		IL_0009: call instance int32 valuetype System.ArraySegment`1<!T>::get_Offset()
		IL_000e: ldarga.s 0
		IL_0010: call instance int32 valuetype System.ArraySegment`1<!T>::get_Count()
		IL_0015: newobj instance void valuetype System.ReadOnlySpan`1<!T>::.ctor(!0[], int32, int32)
		IL_001a: ret
	} // end of method ReadOnlySpan`1::op_Implicit

	.method public hidebysig specialname static 
		valuetype System.ReadOnlySpan`1<!T> get_Empty () cil managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 00 01 00 00
			)
		// Method begins at RVA 0x7d6b4
		// Code size 10 (0xa)
		.maxstack 1
		.locals (
			[0] valuetype System.ReadOnlySpan`1<!T>
		)

		IL_0000: ldloca.s 0
		IL_0002: initobj valuetype System.ReadOnlySpan`1<!T>
		IL_0008: ldloc.0
		IL_0009: ret
	} // end of method ReadOnlySpan`1::get_Empty

	.method public hidebysig 
		instance valuetype System.ReadOnlySpan`1/Enumerator<!T> GetEnumerator () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x7d6ca
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj valuetype System.ReadOnlySpan`1<!T>
		IL_0006: newobj instance void valuetype System.ReadOnlySpan`1/Enumerator<!T>::.ctor(valuetype System.ReadOnlySpan`1<!0>)
		IL_000b: ret
	} // end of method ReadOnlySpan`1::GetEnumerator

	.method public hidebysig 
		instance !T& modreq(System.Runtime.InteropServices.InAttribute) GetPinnableReference () cil managed 
	{
		.custom instance void System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype System.ComponentModel.EditorBrowsableState) = (
			01 00 01 00 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x7d6d8
		// Code size 28 (0x1c)
		.maxstack 1
		.locals (
			[0] !T&
		)

		IL_0000: call !!0& Internal.Runtime.CompilerServices.Unsafe::NullRef<!T>()
		IL_0005: stloc.0
		IL_0006: ldarg.0
		IL_0007: ldfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_000c: brfalse.s IL_001a

		IL_000e: ldarg.0
		IL_000f: ldflda valuetype System.ByReference`1<!0> valuetype System.ReadOnlySpan`1<!T>::_pointer
		IL_0014: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_0019: stloc.0

		IL_001a: ldloc.0
		IL_001b: ret
	} // end of method ReadOnlySpan`1::GetPinnableReference

	.method public hidebysig 
		instance void CopyTo (
			valuetype System.Span`1<!T> destination
		) cil managed aggressiveinlining 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 00 01 00 00
			)
		// Method begins at RVA 0x7d700
		// Code size 57 (0x39)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_0006: ldarga.s destination
		IL_0008: call instance int32 valuetype System.Span`1<!T>::get_Length()
		IL_000d: bgt.un.s IL_0033

		IL_000f: ldarga.s destination
		IL_0011: ldflda valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_0016: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_001b: ldarg.0
		IL_001c: ldflda valuetype System.ByReference`1<!0> valuetype System.ReadOnlySpan`1<!T>::_pointer
		IL_0021: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_0026: ldarg.0
		IL_0027: ldfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_002c: conv.i
		IL_002d: call void System.Buffer::Memmove<!T>(!!0&, !!0&, native uint)
		IL_0032: ret

		IL_0033: call void System.ThrowHelper::ThrowArgumentException_DestinationTooShort()
		IL_0038: ret
	} // end of method ReadOnlySpan`1::CopyTo

	.method public hidebysig 
		instance bool TryCopyTo (
			valuetype System.Span`1<!T> destination
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 00 01 00 00
			)
		// Method begins at RVA 0x7d73c
		// Code size 56 (0x38)
		.maxstack 3
		.locals (
			[0] bool
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldarg.0
		IL_0003: ldfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_0008: ldarga.s destination
		IL_000a: call instance int32 valuetype System.Span`1<!T>::get_Length()
		IL_000f: bgt.un.s IL_0036

		IL_0011: ldarga.s destination
		IL_0013: ldflda valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_0018: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_001d: ldarg.0
		IL_001e: ldflda valuetype System.ByReference`1<!0> valuetype System.ReadOnlySpan`1<!T>::_pointer
		IL_0023: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_0028: ldarg.0
		IL_0029: ldfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_002e: conv.i
		IL_002f: call void System.Buffer::Memmove<!T>(!!0&, !!0&, native uint)
		IL_0034: ldc.i4.1
		IL_0035: stloc.0

		IL_0036: ldloc.0
		IL_0037: ret
	} // end of method ReadOnlySpan`1::TryCopyTo

	.method public hidebysig specialname static 
		bool op_Equality (
			valuetype System.ReadOnlySpan`1<!T> left,
			valuetype System.ReadOnlySpan`1<!T> right
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 00 01 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 00 01 00 00
			)
		// Method begins at RVA 0x7d780
		// Code size 46 (0x2e)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_0006: ldarg.1
		IL_0007: ldfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_000c: bne.un.s IL_002c

		IL_000e: ldarga.s left
		IL_0010: ldflda valuetype System.ByReference`1<!0> valuetype System.ReadOnlySpan`1<!T>::_pointer
		IL_0015: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_001a: ldarga.s right
		IL_001c: ldflda valuetype System.ByReference`1<!0> valuetype System.ReadOnlySpan`1<!T>::_pointer
		IL_0021: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_0026: call bool Internal.Runtime.CompilerServices.Unsafe::AreSame<!T>(!!0&, !!0&)
		IL_002b: ret

		IL_002c: ldc.i4.0
		IL_002d: ret
	} // end of method ReadOnlySpan`1::op_Equality

	.method public hidebysig virtual 
		instance string ToString () cil managed 
	{
		// Method begins at RVA 0x7d7b0
		// Code size 97 (0x61)
		.maxstack 3

		IL_0000: ldtoken !T
		IL_0005: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_000a: ldtoken System.Char
		IL_000f: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0014: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0019: brfalse.s IL_003c

		IL_001b: ldarg.0
		IL_001c: ldflda valuetype System.ByReference`1<!0> valuetype System.ReadOnlySpan`1<!T>::_pointer
		IL_0021: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_0026: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<!T, char>(!!0&)
		IL_002b: ldarg.0
		IL_002c: ldfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_0031: newobj instance void valuetype System.ReadOnlySpan`1<char>::.ctor(!0&, int32)
		IL_0036: newobj instance void System.String::.ctor(valuetype System.ReadOnlySpan`1<char>)
		IL_003b: ret

		IL_003c: ldstr "System.ReadOnlySpan<{0}>[{1}]"
		IL_0041: ldtoken !T
		IL_0046: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_004b: callvirt instance string System.Reflection.MemberInfo::get_Name()
		IL_0050: ldarg.0
		IL_0051: ldfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_0056: box System.Int32
		IL_005b: call string System.String::Format(string, object, object)
		IL_0060: ret
	} // end of method ReadOnlySpan`1::ToString

	.method public hidebysig 
		instance valuetype System.ReadOnlySpan`1<!T> Slice (
			int32 start
		) cil managed aggressiveinlining 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 00 01 00 00
			)
		// Method begins at RVA 0x7d81d
		// Code size 45 (0x2d)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: ldfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_0007: ble.un.s IL_000e

		IL_0009: call void System.ThrowHelper::ThrowArgumentOutOfRangeException()

		IL_000e: ldarg.0
		IL_000f: ldflda valuetype System.ByReference`1<!0> valuetype System.ReadOnlySpan`1<!T>::_pointer
		IL_0014: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_0019: ldarg.1
		IL_001a: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<!T>(!!0&, int32)
		IL_001f: ldarg.0
		IL_0020: ldfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_0025: ldarg.1
		IL_0026: sub
		IL_0027: newobj instance void valuetype System.ReadOnlySpan`1<!T>::.ctor(!0&, int32)
		IL_002c: ret
	} // end of method ReadOnlySpan`1::Slice

	.method public hidebysig 
		instance valuetype System.ReadOnlySpan`1<!T> Slice (
			int32 start,
			int32 length
		) cil managed aggressiveinlining 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 00 01 00 00
			)
		// Method begins at RVA 0x7d84b
		// Code size 49 (0x31)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: ldfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_0007: bgt.un.s IL_0014

		IL_0009: ldarg.2
		IL_000a: ldarg.0
		IL_000b: ldfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_0010: ldarg.1
		IL_0011: sub
		IL_0012: ble.un.s IL_0019

		IL_0014: call void System.ThrowHelper::ThrowArgumentOutOfRangeException()

		IL_0019: ldarg.0
		IL_001a: ldflda valuetype System.ByReference`1<!0> valuetype System.ReadOnlySpan`1<!T>::_pointer
		IL_001f: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_0024: ldarg.1
		IL_0025: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<!T>(!!0&, int32)
		IL_002a: ldarg.2
		IL_002b: newobj instance void valuetype System.ReadOnlySpan`1<!T>::.ctor(!0&, int32)
		IL_0030: ret
	} // end of method ReadOnlySpan`1::Slice

	.method public hidebysig 
		instance !T[] ToArray () cil managed 
	{
		// Method begins at RVA 0x7d880
		// Code size 57 (0x39)
		.maxstack 3
		.locals (
			[0] !T[]
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_0006: brtrue.s IL_000e

		IL_0008: call !!0[] System.Array::Empty<!T>()
		IL_000d: ret

		IL_000e: ldarg.0
		IL_000f: ldfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_0014: newarr !T
		IL_0019: stloc.0
		IL_001a: ldloc.0
		IL_001b: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<!T>(!!0[])
		IL_0020: ldarg.0
		IL_0021: ldflda valuetype System.ByReference`1<!0> valuetype System.ReadOnlySpan`1<!T>::_pointer
		IL_0026: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_002b: ldarg.0
		IL_002c: ldfld int32 valuetype System.ReadOnlySpan`1<!T>::_length
		IL_0031: conv.i
		IL_0032: call void System.Buffer::Memmove<!T>(!!0&, !!0&, native uint)
		IL_0037: ldloc.0
		IL_0038: ret
	} // end of method ReadOnlySpan`1::ToArray

	// Properties
	.property instance !T& modreq(System.Runtime.InteropServices.InAttribute) Item(
		int32 index
	)
	{
		.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
			01 00 00 00
		)
		.get instance !0& modreq(System.Runtime.InteropServices.InAttribute) System.ReadOnlySpan`1::get_Item(int32)
	}
	.property instance int32 Length()
	{
		.get instance int32 System.ReadOnlySpan`1::get_Length()
	}
	.property instance bool IsEmpty()
	{
		.get instance bool System.ReadOnlySpan`1::get_IsEmpty()
	}
	.property valuetype System.ReadOnlySpan`1<!T> Empty()
	{
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
			01 00 02 00 00 00 00 01 00 00
		)
		.get valuetype System.ReadOnlySpan`1<!0> System.ReadOnlySpan`1::get_Empty()
	}

} // end of class System.ReadOnlySpan`1