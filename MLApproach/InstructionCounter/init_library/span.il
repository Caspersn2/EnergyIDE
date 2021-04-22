.class public sequential ansi sealed beforefieldinit System.Span`1<T>
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
		.field private initonly valuetype System.Span`1<!T> _span
		.field private int32 _index

		// Methods
		.method assembly hidebysig specialname rtspecialname 
			instance void .ctor (
				valuetype System.Span`1<!T> span
			) cil managed aggressiveinlining 
		{
			// Method begins at RVA 0x7e5b5
			// Code size 15 (0xf)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldarg.1
			IL_0002: stfld valuetype System.Span`1<!0> valuetype System.Span`1/Enumerator<!T>::_span
			IL_0007: ldarg.0
			IL_0008: ldc.i4.m1
			IL_0009: stfld int32 valuetype System.Span`1/Enumerator<!T>::_index
			IL_000e: ret
		} // end of method Enumerator::.ctor

		.method public hidebysig 
			instance bool MoveNext () cil managed aggressiveinlining 
		{
			// Method begins at RVA 0x7e5c8
			// Code size 34 (0x22)
			.maxstack 2
			.locals (
				[0] int32
			)

			IL_0000: ldarg.0
			IL_0001: ldfld int32 valuetype System.Span`1/Enumerator<!T>::_index
			IL_0006: ldc.i4.1
			IL_0007: add
			IL_0008: stloc.0
			IL_0009: ldloc.0
			IL_000a: ldarg.0
			IL_000b: ldflda valuetype System.Span`1<!0> valuetype System.Span`1/Enumerator<!T>::_span
			IL_0010: call instance int32 valuetype System.Span`1<!T>::get_Length()
			IL_0015: bge.s IL_0020

			IL_0017: ldarg.0
			IL_0018: ldloc.0
			IL_0019: stfld int32 valuetype System.Span`1/Enumerator<!T>::_index
			IL_001e: ldc.i4.1
			IL_001f: ret

			IL_0020: ldc.i4.0
			IL_0021: ret
		} // end of method Enumerator::MoveNext

		.method public hidebysig specialname 
			instance !T& get_Current () cil managed aggressiveinlining 
		{
			// Method begins at RVA 0x7e5f6
			// Code size 18 (0x12)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldflda valuetype System.Span`1<!0> valuetype System.Span`1/Enumerator<!T>::_span
			IL_0006: ldarg.0
			IL_0007: ldfld int32 valuetype System.Span`1/Enumerator<!T>::_index
			IL_000c: call instance !0& valuetype System.Span`1<!T>::get_Item(int32)
			IL_0011: ret
		} // end of method Enumerator::get_Current

		// Properties
		.property instance !T& Current()
		{
			.get instance !0& System.Span`1/Enumerator::get_Current()
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
		// Method begins at RVA 0x7dff4
		// Code size 83 (0x53)
		.maxstack 2

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000b

		IL_0003: ldarg.0
		IL_0004: initobj valuetype System.Span`1<!T>
		IL_000a: ret

		IL_000b: ldtoken !T
		IL_0010: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0015: call instance bool System.Type::get_IsValueType()
		IL_001a: brtrue.s IL_0038

		IL_001c: ldarg.1
		IL_001d: callvirt instance class System.Type System.Object::GetType()
		IL_0022: ldtoken !T[]
		IL_0027: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_002c: call bool System.Type::op_Inequality(class System.Type, class System.Type)
		IL_0031: brfalse.s IL_0038

		IL_0033: call void System.ThrowHelper::ThrowArrayTypeMismatchException()

		IL_0038: ldarg.0
		IL_0039: ldarg.1
		IL_003a: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<!T>(!!0[])
		IL_003f: newobj instance void valuetype System.ByReference`1<!T>::.ctor(!0&)
		IL_0044: stfld valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_0049: ldarg.0
		IL_004a: ldarg.1
		IL_004b: ldlen
		IL_004c: conv.i4
		IL_004d: stfld int32 valuetype System.Span`1<!T>::_length
		IL_0052: ret
	} // end of method Span`1::.ctor

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
		// Method begins at RVA 0x7e054
		// Code size 117 (0x75)
		.maxstack 3

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0016

		IL_0003: ldarg.2
		IL_0004: brtrue.s IL_0009

		IL_0006: ldarg.3
		IL_0007: brfalse.s IL_000e

		IL_0009: call void System.ThrowHelper::ThrowArgumentOutOfRangeException()

		IL_000e: ldarg.0
		IL_000f: initobj valuetype System.Span`1<!T>
		IL_0015: ret

		IL_0016: ldtoken !T
		IL_001b: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0020: call instance bool System.Type::get_IsValueType()
		IL_0025: brtrue.s IL_0043

		IL_0027: ldarg.1
		IL_0028: callvirt instance class System.Type System.Object::GetType()
		IL_002d: ldtoken !T[]
		IL_0032: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0037: call bool System.Type::op_Inequality(class System.Type, class System.Type)
		IL_003c: brfalse.s IL_0043

		IL_003e: call void System.ThrowHelper::ThrowArrayTypeMismatchException()

		IL_0043: ldarg.2
		IL_0044: ldarg.1
		IL_0045: ldlen
		IL_0046: conv.i4
		IL_0047: bgt.un.s IL_0051

		IL_0049: ldarg.3
		IL_004a: ldarg.1
		IL_004b: ldlen
		IL_004c: conv.i4
		IL_004d: ldarg.2
		IL_004e: sub
		IL_004f: ble.un.s IL_0056

		IL_0051: call void System.ThrowHelper::ThrowArgumentOutOfRangeException()

		IL_0056: ldarg.0
		IL_0057: ldarg.1
		IL_0058: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<!T>(!!0[])
		IL_005d: ldarg.2
		IL_005e: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<!T>(!!0&, int32)
		IL_0063: newobj instance void valuetype System.ByReference`1<!T>::.ctor(!0&)
		IL_0068: stfld valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_006d: ldarg.0
		IL_006e: ldarg.3
		IL_006f: stfld int32 valuetype System.Span`1<!T>::_length
		IL_0074: ret
	} // end of method Span`1::.ctor

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
		// Method begins at RVA 0x7e0d5
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
		IL_002b: stfld valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_0030: ldarg.0
		IL_0031: ldarg.2
		IL_0032: stfld int32 valuetype System.Span`1<!T>::_length
		IL_0037: ret
	} // end of method Span`1::.ctor

	.method assembly hidebysig specialname rtspecialname 
		instance void .ctor (
			!T& ptr,
			int32 length
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x7e10e
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: newobj instance void valuetype System.ByReference`1<!T>::.ctor(!0&)
		IL_0007: stfld valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_000c: ldarg.0
		IL_000d: ldarg.2
		IL_000e: stfld int32 valuetype System.Span`1<!T>::_length
		IL_0013: ret
	} // end of method Span`1::.ctor

	.method public hidebysig specialname 
		instance !T& get_Item (
			int32 index
		) cil managed aggressiveinlining 
	{
		.custom instance void System.Runtime.CompilerServices.IntrinsicAttribute::.ctor() = (
			01 00 00 00
		)
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x7e123
		// Code size 32 (0x20)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_0007: blt.un.s IL_000e

		IL_0009: call void System.ThrowHelper::ThrowIndexOutOfRangeException()

		IL_000e: ldarg.0
		IL_000f: ldflda valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_0014: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_0019: ldarg.1
		IL_001a: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<!T>(!!0&, int32)
		IL_001f: ret
	} // end of method Span`1::get_Item

	.method public hidebysig specialname 
		instance int32 get_Length () cil managed 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x7e144
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_0006: ret
	} // end of method Span`1::get_Length

	.method public hidebysig specialname 
		instance bool get_IsEmpty () cil managed 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x7e14c
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldc.i4.0
		IL_0001: ldarg.0
		IL_0002: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_0007: clt.un
		IL_0009: ldc.i4.0
		IL_000a: ceq
		IL_000c: ret
	} // end of method Span`1::get_IsEmpty

	.method public hidebysig specialname static 
		bool op_Inequality (
			valuetype System.Span`1<!T> left,
			valuetype System.Span`1<!T> right
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
		// Method begins at RVA 0x7e15a
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call bool valuetype System.Span`1<!T>::op_Equality(valuetype System.Span`1<!0>, valuetype System.Span`1<!0>)
		IL_0007: ldc.i4.0
		IL_0008: ceq
		IL_000a: ret
	} // end of method Span`1::op_Inequality

	.method public hidebysig virtual 
		instance bool Equals (
			object obj
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void System.ObsoleteAttribute::.ctor(string) = (
			01 00 40 45 71 75 61 6c 73 28 29 20 6f 6e 20 53
			70 61 6e 20 77 69 6c 6c 20 61 6c 77 61 79 73 20
			74 68 72 6f 77 20 61 6e 20 65 78 63 65 70 74 69
			6f 6e 2e 20 55 73 65 20 3d 3d 20 69 6e 73 74 65
			61 64 2e 00 00
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
	} // end of method Span`1::Equals

	.method public hidebysig virtual 
		instance int32 GetHashCode () cil managed 
	{
		.custom instance void System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype System.ComponentModel.EditorBrowsableState) = (
			01 00 01 00 00 00 00 00
		)
		.custom instance void System.ObsoleteAttribute::.ctor(string) = (
			01 00 35 47 65 74 48 61 73 68 43 6f 64 65 28 29
			20 6f 6e 20 53 70 61 6e 20 77 69 6c 6c 20 61 6c
			77 61 79 73 20 74 68 72 6f 77 20 61 6e 20 65 78
			63 65 70 74 69 6f 6e 2e 00 00
		)
		// Method begins at RVA 0x7d681
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_NotSupported_CannotCallGetHashCodeOnSpan()
		IL_0005: newobj instance void System.NotSupportedException::.ctor(string)
		IL_000a: throw
	} // end of method Span`1::GetHashCode

	.method public hidebysig specialname static 
		valuetype System.Span`1<!T> op_Implicit (
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
		// Method begins at RVA 0x7e166
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void valuetype System.Span`1<!T>::.ctor(!0[])
		IL_0006: ret
	} // end of method Span`1::op_Implicit

	.method public hidebysig specialname static 
		valuetype System.Span`1<!T> op_Implicit (
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
		// Method begins at RVA 0x7e16e
		// Code size 27 (0x1b)
		.maxstack 8

		IL_0000: ldarga.s 0
		IL_0002: call instance !0[] valuetype System.ArraySegment`1<!T>::get_Array()
		IL_0007: ldarga.s 0
		IL_0009: call instance int32 valuetype System.ArraySegment`1<!T>::get_Offset()
		IL_000e: ldarga.s 0
		IL_0010: call instance int32 valuetype System.ArraySegment`1<!T>::get_Count()
		IL_0015: newobj instance void valuetype System.Span`1<!T>::.ctor(!0[], int32, int32)
		IL_001a: ret
	} // end of method Span`1::op_Implicit

	.method public hidebysig specialname static 
		valuetype System.Span`1<!T> get_Empty () cil managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 00 01 00 00
			)
		// Method begins at RVA 0x7e18c
		// Code size 10 (0xa)
		.maxstack 1
		.locals (
			[0] valuetype System.Span`1<!T>
		)

		IL_0000: ldloca.s 0
		IL_0002: initobj valuetype System.Span`1<!T>
		IL_0008: ldloc.0
		IL_0009: ret
	} // end of method Span`1::get_Empty

	.method public hidebysig 
		instance valuetype System.Span`1/Enumerator<!T> GetEnumerator () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x7e1a2
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj valuetype System.Span`1<!T>
		IL_0006: newobj instance void valuetype System.Span`1/Enumerator<!T>::.ctor(valuetype System.Span`1<!0>)
		IL_000b: ret
	} // end of method Span`1::GetEnumerator

	.method public hidebysig 
		instance !T& GetPinnableReference () cil managed 
	{
		.custom instance void System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype System.ComponentModel.EditorBrowsableState) = (
			01 00 01 00 00 00 00 00
		)
		// Method begins at RVA 0x7e1b0
		// Code size 28 (0x1c)
		.maxstack 1
		.locals (
			[0] !T&
		)

		IL_0000: call !!0& Internal.Runtime.CompilerServices.Unsafe::NullRef<!T>()
		IL_0005: stloc.0
		IL_0006: ldarg.0
		IL_0007: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_000c: brfalse.s IL_001a

		IL_000e: ldarg.0
		IL_000f: ldflda valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_0014: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_0019: stloc.0

		IL_001a: ldloc.0
		IL_001b: ret
	} // end of method Span`1::GetPinnableReference

	.method public hidebysig 
		instance void Clear () cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x7e1d8
		// Code size 86 (0x56)
		.maxstack 4

		IL_0000: call bool System.Runtime.CompilerServices.RuntimeHelpers::IsReferenceOrContainsReferences<!T>()
		IL_0005: brfalse.s IL_0032

		IL_0007: ldarg.0
		IL_0008: ldflda valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_000d: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_0012: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<!T, native int>(!!0&)
		IL_0017: ldarg.0
		IL_0018: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_001d: conv.i
		IL_001e: call int32 Internal.Runtime.CompilerServices.Unsafe::SizeOf<!T>()
		IL_0023: sizeof System.UIntPtr
		IL_0029: div
		IL_002a: conv.i
		IL_002b: mul
		IL_002c: call void System.SpanHelpers::ClearWithReferences(native int&, native uint)
		IL_0031: ret

		IL_0032: ldarg.0
		IL_0033: ldflda valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_0038: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_003d: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<!T, uint8>(!!0&)
		IL_0042: ldarg.0
		IL_0043: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_0048: conv.i
		IL_0049: call int32 Internal.Runtime.CompilerServices.Unsafe::SizeOf<!T>()
		IL_004e: conv.i
		IL_004f: mul
		IL_0050: call void System.SpanHelpers::ClearWithoutReferences(uint8&, native uint)
		IL_0055: ret
	} // end of method Span`1::Clear

	.method public hidebysig 
		instance void Fill (
			!T 'value'
		) cil managed 
	{
		// Method begins at RVA 0x7e23c
		// Code size 399 (0x18f)
		.maxstack 3
		.locals (
			[0] uint32,
			[1] !T,
			[2] native uint,
			[3] !T&,
			[4] native uint,
			[5] native uint
		)

		IL_0000: call int32 Internal.Runtime.CompilerServices.Unsafe::SizeOf<!T>()
		IL_0005: ldc.i4.1
		IL_0006: bne.un.s IL_0034

		IL_0008: ldarg.0
		IL_0009: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_000e: stloc.0
		IL_000f: ldloc.0
		IL_0010: brtrue.s IL_0013

		IL_0012: ret

		IL_0013: ldarg.1
		IL_0014: stloc.1
		IL_0015: ldarg.0
		IL_0016: ldflda valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_001b: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_0020: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<!T, uint8>(!!0&)
		IL_0025: ldloca.s 1
		IL_0027: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<!T, uint8>(!!0&)
		IL_002c: ldind.u1
		IL_002d: ldloc.0
		IL_002e: call void Internal.Runtime.CompilerServices.Unsafe::InitBlockUnaligned(uint8&, uint8, uint32)
		IL_0033: ret

		IL_0034: ldarg.0
		IL_0035: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_003a: conv.u
		IL_003b: stloc.2
		IL_003c: ldloc.2
		IL_003d: brtrue.s IL_0040

		IL_003f: ret

		IL_0040: ldarg.0
		IL_0041: ldflda valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_0046: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_004b: stloc.3
		IL_004c: call int32 Internal.Runtime.CompilerServices.Unsafe::SizeOf<!T>()
		IL_0051: conv.u
		IL_0052: stloc.s 4
		IL_0054: ldc.i4.0
		IL_0055: conv.i
		IL_0056: stloc.s 5
		IL_0058: br IL_0104
		// loop start (head: IL_0104)
			IL_005d: ldloc.3
			IL_005e: ldloc.s 5
			IL_0060: ldc.i4.0
			IL_0061: conv.i
			IL_0062: add
			IL_0063: ldloc.s 4
			IL_0065: mul
			IL_0066: call !!0& Internal.Runtime.CompilerServices.Unsafe::AddByteOffset<!T>(!!0&, native uint)
			IL_006b: ldarg.1
			IL_006c: stobj !T
			IL_0071: ldloc.3
			IL_0072: ldloc.s 5
			IL_0074: ldc.i4.1
			IL_0075: conv.i
			IL_0076: add
			IL_0077: ldloc.s 4
			IL_0079: mul
			IL_007a: call !!0& Internal.Runtime.CompilerServices.Unsafe::AddByteOffset<!T>(!!0&, native uint)
			IL_007f: ldarg.1
			IL_0080: stobj !T
			IL_0085: ldloc.3
			IL_0086: ldloc.s 5
			IL_0088: ldc.i4.2
			IL_0089: conv.i
			IL_008a: add
			IL_008b: ldloc.s 4
			IL_008d: mul
			IL_008e: call !!0& Internal.Runtime.CompilerServices.Unsafe::AddByteOffset<!T>(!!0&, native uint)
			IL_0093: ldarg.1
			IL_0094: stobj !T
			IL_0099: ldloc.3
			IL_009a: ldloc.s 5
			IL_009c: ldc.i4.3
			IL_009d: conv.i
			IL_009e: add
			IL_009f: ldloc.s 4
			IL_00a1: mul
			IL_00a2: call !!0& Internal.Runtime.CompilerServices.Unsafe::AddByteOffset<!T>(!!0&, native uint)
			IL_00a7: ldarg.1
			IL_00a8: stobj !T
			IL_00ad: ldloc.3
			IL_00ae: ldloc.s 5
			IL_00b0: ldc.i4.4
			IL_00b1: conv.i
			IL_00b2: add
			IL_00b3: ldloc.s 4
			IL_00b5: mul
			IL_00b6: call !!0& Internal.Runtime.CompilerServices.Unsafe::AddByteOffset<!T>(!!0&, native uint)
			IL_00bb: ldarg.1
			IL_00bc: stobj !T
			IL_00c1: ldloc.3
			IL_00c2: ldloc.s 5
			IL_00c4: ldc.i4.5
			IL_00c5: conv.i
			IL_00c6: add
			IL_00c7: ldloc.s 4
			IL_00c9: mul
			IL_00ca: call !!0& Internal.Runtime.CompilerServices.Unsafe::AddByteOffset<!T>(!!0&, native uint)
			IL_00cf: ldarg.1
			IL_00d0: stobj !T
			IL_00d5: ldloc.3
			IL_00d6: ldloc.s 5
			IL_00d8: ldc.i4.6
			IL_00d9: conv.i
			IL_00da: add
			IL_00db: ldloc.s 4
			IL_00dd: mul
			IL_00de: call !!0& Internal.Runtime.CompilerServices.Unsafe::AddByteOffset<!T>(!!0&, native uint)
			IL_00e3: ldarg.1
			IL_00e4: stobj !T
			IL_00e9: ldloc.3
			IL_00ea: ldloc.s 5
			IL_00ec: ldc.i4.7
			IL_00ed: conv.i
			IL_00ee: add
			IL_00ef: ldloc.s 4
			IL_00f1: mul
			IL_00f2: call !!0& Internal.Runtime.CompilerServices.Unsafe::AddByteOffset<!T>(!!0&, native uint)
			IL_00f7: ldarg.1
			IL_00f8: stobj !T
			IL_00fd: ldloc.s 5
			IL_00ff: ldc.i4.8
			IL_0100: conv.i
			IL_0101: add
			IL_0102: stloc.s 5

			IL_0104: ldloc.s 5
			IL_0106: ldloc.2
			IL_0107: ldc.i4.7
			IL_0108: conv.i
			IL_0109: not
			IL_010a: and
			IL_010b: blt.un IL_005d
		// end loop

		IL_0110: ldloc.s 5
		IL_0112: ldloc.2
		IL_0113: ldc.i4.3
		IL_0114: conv.i
		IL_0115: not
		IL_0116: and
		IL_0117: bge.un.s IL_0189

		IL_0119: ldloc.3
		IL_011a: ldloc.s 5
		IL_011c: ldc.i4.0
		IL_011d: conv.i
		IL_011e: add
		IL_011f: ldloc.s 4
		IL_0121: mul
		IL_0122: call !!0& Internal.Runtime.CompilerServices.Unsafe::AddByteOffset<!T>(!!0&, native uint)
		IL_0127: ldarg.1
		IL_0128: stobj !T
		IL_012d: ldloc.3
		IL_012e: ldloc.s 5
		IL_0130: ldc.i4.1
		IL_0131: conv.i
		IL_0132: add
		IL_0133: ldloc.s 4
		IL_0135: mul
		IL_0136: call !!0& Internal.Runtime.CompilerServices.Unsafe::AddByteOffset<!T>(!!0&, native uint)
		IL_013b: ldarg.1
		IL_013c: stobj !T
		IL_0141: ldloc.3
		IL_0142: ldloc.s 5
		IL_0144: ldc.i4.2
		IL_0145: conv.i
		IL_0146: add
		IL_0147: ldloc.s 4
		IL_0149: mul
		IL_014a: call !!0& Internal.Runtime.CompilerServices.Unsafe::AddByteOffset<!T>(!!0&, native uint)
		IL_014f: ldarg.1
		IL_0150: stobj !T
		IL_0155: ldloc.3
		IL_0156: ldloc.s 5
		IL_0158: ldc.i4.3
		IL_0159: conv.i
		IL_015a: add
		IL_015b: ldloc.s 4
		IL_015d: mul
		IL_015e: call !!0& Internal.Runtime.CompilerServices.Unsafe::AddByteOffset<!T>(!!0&, native uint)
		IL_0163: ldarg.1
		IL_0164: stobj !T
		IL_0169: ldloc.s 5
		IL_016b: ldc.i4.4
		IL_016c: conv.i
		IL_016d: add
		IL_016e: stloc.s 5
		IL_0170: br.s IL_0189
		// loop start (head: IL_0189)
			IL_0172: ldloc.3
			IL_0173: ldloc.s 5
			IL_0175: ldloc.s 4
			IL_0177: mul
			IL_0178: call !!0& Internal.Runtime.CompilerServices.Unsafe::AddByteOffset<!T>(!!0&, native uint)
			IL_017d: ldarg.1
			IL_017e: stobj !T
			IL_0183: ldloc.s 5
			IL_0185: ldc.i4.1
			IL_0186: add
			IL_0187: stloc.s 5

			IL_0189: ldloc.s 5
			IL_018b: ldloc.2
			IL_018c: blt.un.s IL_0172
		// end loop

		IL_018e: ret
	} // end of method Span`1::Fill

	.method public hidebysig 
		instance void CopyTo (
			valuetype System.Span`1<!T> destination
		) cil managed aggressiveinlining 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 00 01 00 00
			)
		// Method begins at RVA 0x7e3d7
		// Code size 57 (0x39)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_0006: ldarga.s destination
		IL_0008: call instance int32 valuetype System.Span`1<!T>::get_Length()
		IL_000d: bgt.un.s IL_0033

		IL_000f: ldarga.s destination
		IL_0011: ldflda valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_0016: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_001b: ldarg.0
		IL_001c: ldflda valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_0021: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_0026: ldarg.0
		IL_0027: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_002c: conv.i
		IL_002d: call void System.Buffer::Memmove<!T>(!!0&, !!0&, native uint)
		IL_0032: ret

		IL_0033: call void System.ThrowHelper::ThrowArgumentException_DestinationTooShort()
		IL_0038: ret
	} // end of method Span`1::CopyTo

	.method public hidebysig 
		instance bool TryCopyTo (
			valuetype System.Span`1<!T> destination
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 00 01 00 00
			)
		// Method begins at RVA 0x7e414
		// Code size 56 (0x38)
		.maxstack 3
		.locals (
			[0] bool
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: ldarg.0
		IL_0003: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_0008: ldarga.s destination
		IL_000a: call instance int32 valuetype System.Span`1<!T>::get_Length()
		IL_000f: bgt.un.s IL_0036

		IL_0011: ldarga.s destination
		IL_0013: ldflda valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_0018: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_001d: ldarg.0
		IL_001e: ldflda valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_0023: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_0028: ldarg.0
		IL_0029: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_002e: conv.i
		IL_002f: call void System.Buffer::Memmove<!T>(!!0&, !!0&, native uint)
		IL_0034: ldc.i4.1
		IL_0035: stloc.0

		IL_0036: ldloc.0
		IL_0037: ret
	} // end of method Span`1::TryCopyTo

	.method public hidebysig specialname static 
		bool op_Equality (
			valuetype System.Span`1<!T> left,
			valuetype System.Span`1<!T> right
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
		// Method begins at RVA 0x7e458
		// Code size 46 (0x2e)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_0006: ldarg.1
		IL_0007: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_000c: bne.un.s IL_002c

		IL_000e: ldarga.s left
		IL_0010: ldflda valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_0015: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_001a: ldarga.s right
		IL_001c: ldflda valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_0021: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_0026: call bool Internal.Runtime.CompilerServices.Unsafe::AreSame<!T>(!!0&, !!0&)
		IL_002b: ret

		IL_002c: ldc.i4.0
		IL_002d: ret
	} // end of method Span`1::op_Equality

	.method public hidebysig specialname static 
		valuetype System.ReadOnlySpan`1<!T> op_Implicit (
			valuetype System.Span`1<!T> span
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
		// Method begins at RVA 0x7e487
		// Code size 24 (0x18)
		.maxstack 8

		IL_0000: ldarga.s 0
		IL_0002: ldflda valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_0007: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_000c: ldarg.0
		IL_000d: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_0012: newobj instance void valuetype System.ReadOnlySpan`1<!T>::.ctor(!0&, int32)
		IL_0017: ret
	} // end of method Span`1::op_Implicit

	.method public hidebysig virtual 
		instance string ToString () cil managed 
	{
		// Method begins at RVA 0x7e4a0
		// Code size 97 (0x61)
		.maxstack 3

		IL_0000: ldtoken !T
		IL_0005: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_000a: ldtoken System.Char
		IL_000f: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0014: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0019: brfalse.s IL_003c

		IL_001b: ldarg.0
		IL_001c: ldflda valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_0021: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_0026: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<!T, char>(!!0&)
		IL_002b: ldarg.0
		IL_002c: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_0031: newobj instance void valuetype System.ReadOnlySpan`1<char>::.ctor(!0&, int32)
		IL_0036: newobj instance void System.String::.ctor(valuetype System.ReadOnlySpan`1<char>)
		IL_003b: ret

		IL_003c: ldstr "System.Span<{0}>[{1}]"
		IL_0041: ldtoken !T
		IL_0046: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_004b: callvirt instance string System.Reflection.MemberInfo::get_Name()
		IL_0050: ldarg.0
		IL_0051: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_0056: box System.Int32
		IL_005b: call string System.String::Format(string, object, object)
		IL_0060: ret
	} // end of method Span`1::ToString

	.method public hidebysig 
		instance valuetype System.Span`1<!T> Slice (
			int32 start
		) cil managed aggressiveinlining 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 00 01 00 00
			)
		// Method begins at RVA 0x7e50d
		// Code size 45 (0x2d)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_0007: ble.un.s IL_000e

		IL_0009: call void System.ThrowHelper::ThrowArgumentOutOfRangeException()

		IL_000e: ldarg.0
		IL_000f: ldflda valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_0014: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_0019: ldarg.1
		IL_001a: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<!T>(!!0&, int32)
		IL_001f: ldarg.0
		IL_0020: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_0025: ldarg.1
		IL_0026: sub
		IL_0027: newobj instance void valuetype System.Span`1<!T>::.ctor(!0&, int32)
		IL_002c: ret
	} // end of method Span`1::Slice

	.method public hidebysig 
		instance valuetype System.Span`1<!T> Slice (
			int32 start,
			int32 length
		) cil managed aggressiveinlining 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 00 01 00 00
			)
		// Method begins at RVA 0x7e53b
		// Code size 49 (0x31)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_0007: bgt.un.s IL_0014

		IL_0009: ldarg.2
		IL_000a: ldarg.0
		IL_000b: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_0010: ldarg.1
		IL_0011: sub
		IL_0012: ble.un.s IL_0019

		IL_0014: call void System.ThrowHelper::ThrowArgumentOutOfRangeException()

		IL_0019: ldarg.0
		IL_001a: ldflda valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_001f: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_0024: ldarg.1
		IL_0025: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<!T>(!!0&, int32)
		IL_002a: ldarg.2
		IL_002b: newobj instance void valuetype System.Span`1<!T>::.ctor(!0&, int32)
		IL_0030: ret
	} // end of method Span`1::Slice

	.method public hidebysig 
		instance !T[] ToArray () cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x7e570
		// Code size 57 (0x39)
		.maxstack 3
		.locals (
			[0] !T[]
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_0006: brtrue.s IL_000e

		IL_0008: call !!0[] System.Array::Empty<!T>()
		IL_000d: ret

		IL_000e: ldarg.0
		IL_000f: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_0014: newarr !T
		IL_0019: stloc.0
		IL_001a: ldloc.0
		IL_001b: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<!T>(!!0[])
		IL_0020: ldarg.0
		IL_0021: ldflda valuetype System.ByReference`1<!0> valuetype System.Span`1<!T>::_pointer
		IL_0026: call instance !0& valuetype System.ByReference`1<!T>::get_Value()
		IL_002b: ldarg.0
		IL_002c: ldfld int32 valuetype System.Span`1<!T>::_length
		IL_0031: conv.i
		IL_0032: call void System.Buffer::Memmove<!T>(!!0&, !!0&, native uint)
		IL_0037: ldloc.0
		IL_0038: ret
	} // end of method Span`1::ToArray

	// Properties
	.property instance !T& Item(
		int32 index
	)
	{
		.get instance !0& System.Span`1::get_Item(int32)
	}
	.property instance int32 Length()
	{
		.get instance int32 System.Span`1::get_Length()
	}
	.property instance bool IsEmpty()
	{
		.get instance bool System.Span`1::get_IsEmpty()
	}
	.property valuetype System.Span`1<!T> Empty()
	{
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
			01 00 02 00 00 00 00 01 00 00
		)
		.get valuetype System.Span`1<!0> System.Span`1::get_Empty()
	}

} // end of class System.Span`1
