.class public auto ansi serializable beforefieldinit System.Collections.Generic.List`1<T>
	extends System.Object
	implements .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
		01 00 02 00 00 00 00 01 00 00
	)
	class System.Collections.Generic.IList`1<!T>,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
		01 00 02 00 00 00 00 01 00 00
	)
	class System.Collections.Generic.ICollection`1<!T>,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
		01 00 02 00 00 00 00 01 00 00
	)
	class System.Collections.Generic.IEnumerable`1<!T>,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.Collections.IEnumerable,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.Collections.IList,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.Collections.ICollection,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
		01 00 02 00 00 00 00 01 00 00
	)
	class System.Collections.Generic.IReadOnlyList`1<!T>,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
		01 00 02 00 00 00 00 01 00 00
	)
	class System.Collections.Generic.IReadOnlyCollection`1<!T>
{
	.custom instance void System.Reflection.DefaultMemberAttribute::.ctor(string) = (
		01 00 04 49 74 65 6d 00 00
	)
	.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
		01 00 01 00 00
	)
	.custom instance void System.Diagnostics.DebuggerTypeProxyAttribute::.ctor(class System.Type) = (
		01 00 31 53 79 73 74 65 6d 2e 43 6f 6c 6c 65 63
		74 69 6f 6e 73 2e 47 65 6e 65 72 69 63 2e 49 43
		6f 6c 6c 65 63 74 69 6f 6e 44 65 62 75 67 56 69
		65 77 60 31 00 00
	)
	.custom instance void System.Diagnostics.DebuggerDisplayAttribute::.ctor(string) = (
		01 00 0f 43 6f 75 6e 74 20 3d 20 7b 43 6f 75 6e
		74 7d 00 00
	)
	.custom instance void System.Runtime.CompilerServices.TypeForwardedFromAttribute::.ctor(string) = (
		01 00 4b 6d 73 63 6f 72 6c 69 62 2c 20 56 65 72
		73 69 6f 6e 3d 34 2e 30 2e 30 2e 30 2c 20 43 75
		6c 74 75 72 65 3d 6e 65 75 74 72 61 6c 2c 20 50
		75 62 6c 69 63 4b 65 79 54 6f 6b 65 6e 3d 62 37
		37 61 35 63 35 36 31 39 33 34 65 30 38 39 00 00
	)
	.param type T
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	// Nested Types
	.class nested public sequential ansi sealed beforefieldinit Enumerator<T>
		extends System.ValueType
		implements .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
			01 00 02 00 00 00 00 01 00 00
		)
		class System.Collections.Generic.IEnumerator`1<!T>,
		           System.IDisposable,
		           System.Collections.IEnumerator
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Fields
		.field private initonly class System.Collections.Generic.List`1<!T> _list
		.field private int32 _index
		.field private initonly int32 _version
		.field private !T _current

		// Methods
		.method assembly hidebysig specialname rtspecialname 
			instance void .ctor (
				class System.Collections.Generic.List`1<!T> list
			) cil managed 
		{
			// Method begins at RVA 0x168810
			// Code size 39 (0x27)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldarg.1
			IL_0002: stfld class System.Collections.Generic.List`1<!0> valuetype System.Collections.Generic.List`1/Enumerator<!T>::_list
			IL_0007: ldarg.0
			IL_0008: ldc.i4.0
			IL_0009: stfld int32 valuetype System.Collections.Generic.List`1/Enumerator<!T>::_index
			IL_000e: ldarg.0
			IL_000f: ldarg.1
			IL_0010: ldfld int32 class System.Collections.Generic.List`1<!T>::_version
			IL_0015: stfld int32 valuetype System.Collections.Generic.List`1/Enumerator<!T>::_version
			IL_001a: ldarg.0
			IL_001b: ldflda !0 valuetype System.Collections.Generic.List`1/Enumerator<!T>::_current
			IL_0020: initobj !T
			IL_0026: ret
		} // end of method Enumerator::.ctor

		.method public final hidebysig newslot virtual 
			instance void Dispose () cil managed 
		{
			// Method begins at RVA 0x4017b
			// Code size 1 (0x1)
			.maxstack 8

			IL_0000: ret
		} // end of method Enumerator::Dispose

		.method public final hidebysig newslot virtual 
			instance bool MoveNext () cil managed 
		{
			// Method begins at RVA 0x168838
			// Code size 81 (0x51)
			.maxstack 3
			.locals (
				[0] class System.Collections.Generic.List`1<!T>
			)

			IL_0000: ldarg.0
			IL_0001: ldfld class System.Collections.Generic.List`1<!0> valuetype System.Collections.Generic.List`1/Enumerator<!T>::_list
			IL_0006: stloc.0
			IL_0007: ldarg.0
			IL_0008: ldfld int32 valuetype System.Collections.Generic.List`1/Enumerator<!T>::_version
			IL_000d: ldloc.0
			IL_000e: ldfld int32 class System.Collections.Generic.List`1<!T>::_version
			IL_0013: bne.un.s IL_004a

			IL_0015: ldarg.0
			IL_0016: ldfld int32 valuetype System.Collections.Generic.List`1/Enumerator<!T>::_index
			IL_001b: ldloc.0
			IL_001c: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
			IL_0021: bge.un.s IL_004a

			IL_0023: ldarg.0
			IL_0024: ldloc.0
			IL_0025: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
			IL_002a: ldarg.0
			IL_002b: ldfld int32 valuetype System.Collections.Generic.List`1/Enumerator<!T>::_index
			IL_0030: ldelem !T
			IL_0035: stfld !0 valuetype System.Collections.Generic.List`1/Enumerator<!T>::_current
			IL_003a: ldarg.0
			IL_003b: ldarg.0
			IL_003c: ldfld int32 valuetype System.Collections.Generic.List`1/Enumerator<!T>::_index
			IL_0041: ldc.i4.1
			IL_0042: add
			IL_0043: stfld int32 valuetype System.Collections.Generic.List`1/Enumerator<!T>::_index
			IL_0048: ldc.i4.1
			IL_0049: ret

			IL_004a: ldarg.0
			IL_004b: call instance bool valuetype System.Collections.Generic.List`1/Enumerator<!T>::MoveNextRare()
			IL_0050: ret
		} // end of method Enumerator::MoveNext

		.method private hidebysig 
			instance bool MoveNextRare () cil managed 
		{
			// Method begins at RVA 0x168895
			// Code size 57 (0x39)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld int32 valuetype System.Collections.Generic.List`1/Enumerator<!T>::_version
			IL_0006: ldarg.0
			IL_0007: ldfld class System.Collections.Generic.List`1<!0> valuetype System.Collections.Generic.List`1/Enumerator<!T>::_list
			IL_000c: ldfld int32 class System.Collections.Generic.List`1<!T>::_version
			IL_0011: beq.s IL_0018

			IL_0013: call void System.ThrowHelper::ThrowInvalidOperationException_InvalidOperation_EnumFailedVersion()

			IL_0018: ldarg.0
			IL_0019: ldarg.0
			IL_001a: ldfld class System.Collections.Generic.List`1<!0> valuetype System.Collections.Generic.List`1/Enumerator<!T>::_list
			IL_001f: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
			IL_0024: ldc.i4.1
			IL_0025: add
			IL_0026: stfld int32 valuetype System.Collections.Generic.List`1/Enumerator<!T>::_index
			IL_002b: ldarg.0
			IL_002c: ldflda !0 valuetype System.Collections.Generic.List`1/Enumerator<!T>::_current
			IL_0031: initobj !T
			IL_0037: ldc.i4.0
			IL_0038: ret
		} // end of method Enumerator::MoveNextRare

		.method public final hidebysig specialname newslot virtual 
			instance !T get_Current () cil managed 
		{
			.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
			// Method begins at RVA 0x1688cf
			// Code size 7 (0x7)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld !0 valuetype System.Collections.Generic.List`1/Enumerator<!T>::_current
			IL_0006: ret
		} // end of method Enumerator::get_Current

		.method private final hidebysig specialname newslot virtual 
			instance object System.Collections.IEnumerator.get_Current () cil managed 
		{
			.override method instance object System.Collections.IEnumerator::get_Current()
			// Method begins at RVA 0x1688d7
			// Code size 46 (0x2e)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld int32 valuetype System.Collections.Generic.List`1/Enumerator<!T>::_index
			IL_0006: brfalse.s IL_001d

			IL_0008: ldarg.0
			IL_0009: ldfld int32 valuetype System.Collections.Generic.List`1/Enumerator<!T>::_index
			IL_000e: ldarg.0
			IL_000f: ldfld class System.Collections.Generic.List`1<!0> valuetype System.Collections.Generic.List`1/Enumerator<!T>::_list
			IL_0014: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
			IL_0019: ldc.i4.1
			IL_001a: add
			IL_001b: bne.un.s IL_0022

			IL_001d: call void System.ThrowHelper::ThrowInvalidOperationException_InvalidOperation_EnumOpCantHappen()

			IL_0022: ldarg.0
			IL_0023: call instance !0 valuetype System.Collections.Generic.List`1/Enumerator<!T>::get_Current()
			IL_0028: box !T
			IL_002d: ret
		} // end of method Enumerator::System.Collections.IEnumerator.get_Current

		.method private final hidebysig newslot virtual 
			instance void System.Collections.IEnumerator.Reset () cil managed 
		{
			.override method instance void System.Collections.IEnumerator::Reset()
			// Method begins at RVA 0x168906
			// Code size 44 (0x2c)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld int32 valuetype System.Collections.Generic.List`1/Enumerator<!T>::_version
			IL_0006: ldarg.0
			IL_0007: ldfld class System.Collections.Generic.List`1<!0> valuetype System.Collections.Generic.List`1/Enumerator<!T>::_list
			IL_000c: ldfld int32 class System.Collections.Generic.List`1<!T>::_version
			IL_0011: beq.s IL_0018

			IL_0013: call void System.ThrowHelper::ThrowInvalidOperationException_InvalidOperation_EnumFailedVersion()

			IL_0018: ldarg.0
			IL_0019: ldc.i4.0
			IL_001a: stfld int32 valuetype System.Collections.Generic.List`1/Enumerator<!T>::_index
			IL_001f: ldarg.0
			IL_0020: ldflda !0 valuetype System.Collections.Generic.List`1/Enumerator<!T>::_current
			IL_0025: initobj !T
			IL_002b: ret
		} // end of method Enumerator::System.Collections.IEnumerator.Reset

		// Properties
		.property instance !T Current()
		{
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
			.get instance !0 System.Collections.Generic.List`1/Enumerator::get_Current()
		}
		.property instance object System.Collections.IEnumerator.Current()
		{
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
			.get instance object System.Collections.Generic.List`1/Enumerator::System.Collections.IEnumerator.get_Current()
		}

	} // end of class Enumerator


	// Fields
	.field assembly !T[] _items
	.field assembly int32 _size
	.field private int32 _version
	.field private static initonly !T[] s_emptyArray

	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x16790f
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void System.Object::.ctor()
		IL_0006: ldarg.0
		IL_0007: ldsfld !0[] class System.Collections.Generic.List`1<!T>::s_emptyArray
		IL_000c: stfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0011: ret
	} // end of method List`1::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 capacity
		) cil managed 
	{
		// Method begins at RVA 0x167922
		// Code size 47 (0x2f)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void System.Object::.ctor()
		IL_0006: ldarg.1
		IL_0007: ldc.i4.0
		IL_0008: bge.s IL_0013

		IL_000a: ldc.i4.s 22
		IL_000c: ldc.i4.s 11
		IL_000e: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0013: ldarg.1
		IL_0014: brtrue.s IL_0022

		IL_0016: ldarg.0
		IL_0017: ldsfld !0[] class System.Collections.Generic.List`1<!T>::s_emptyArray
		IL_001c: stfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0021: ret

		IL_0022: ldarg.0
		IL_0023: ldarg.1
		IL_0024: newarr !T
		IL_0029: stfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_002e: ret
	} // end of method List`1::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			class System.Collections.Generic.IEnumerable`1<!T> collection
		) cil managed 
	{
		// Method begins at RVA 0x167954
		// Code size 134 (0x86)
		.maxstack 3
		.locals (
			[0] class System.Collections.Generic.ICollection`1<!T>,
			[1] int32,
			[2] class System.Collections.Generic.IEnumerator`1<!T>
		)

		IL_0000: ldarg.0
		IL_0001: call instance void System.Object::.ctor()
		IL_0006: ldarg.1
		IL_0007: brtrue.s IL_0010

		IL_0009: ldc.i4.s 23
		IL_000b: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0010: ldarg.1
		IL_0011: isinst class System.Collections.Generic.ICollection`1<!T>
		IL_0016: stloc.0
		IL_0017: ldloc.0
		IL_0018: brfalse.s IL_0051

		IL_001a: ldloc.0
		IL_001b: callvirt instance int32 class System.Collections.Generic.ICollection`1<!T>::get_Count()
		IL_0020: stloc.1
		IL_0021: ldloc.1
		IL_0022: brtrue.s IL_0030

		IL_0024: ldarg.0
		IL_0025: ldsfld !0[] class System.Collections.Generic.List`1<!T>::s_emptyArray
		IL_002a: stfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_002f: ret

		IL_0030: ldarg.0
		IL_0031: ldloc.1
		IL_0032: newarr !T
		IL_0037: stfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_003c: ldloc.0
		IL_003d: ldarg.0
		IL_003e: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0043: ldc.i4.0
		IL_0044: callvirt instance void class System.Collections.Generic.ICollection`1<!T>::CopyTo(!0[], int32)
		IL_0049: ldarg.0
		IL_004a: ldloc.1
		IL_004b: stfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0050: ret

		IL_0051: ldarg.0
		IL_0052: ldsfld !0[] class System.Collections.Generic.List`1<!T>::s_emptyArray
		IL_0057: stfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_005c: ldarg.1
		IL_005d: callvirt instance class System.Collections.Generic.IEnumerator`1<!0> class System.Collections.Generic.IEnumerable`1<!T>::GetEnumerator()
		IL_0062: stloc.2
		.try
		{
			IL_0063: br.s IL_0071
			// loop start (head: IL_0071)
				IL_0065: ldarg.0
				IL_0066: ldloc.2
				IL_0067: callvirt instance !0 class System.Collections.Generic.IEnumerator`1<!T>::get_Current()
				IL_006c: call instance void class System.Collections.Generic.List`1<!T>::Add(!0)

				IL_0071: ldloc.2
				IL_0072: callvirt instance bool System.Collections.IEnumerator::MoveNext()
				IL_0077: brtrue.s IL_0065
			// end loop

			IL_0079: leave.s IL_0085
		} // end .try
		finally
		{
			IL_007b: ldloc.2
			IL_007c: brfalse.s IL_0084

			IL_007e: ldloc.2
			IL_007f: callvirt instance void System.IDisposable::Dispose()

			IL_0084: endfinally
		} // end handler

		IL_0085: ret
	} // end of method List`1::.ctor

	.method public hidebysig specialname 
		instance int32 get_Capacity () cil managed 
	{
		// Method begins at RVA 0x1679f8
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0006: ldlen
		IL_0007: conv.i4
		IL_0008: ret
	} // end of method List`1::get_Capacity

	.method public hidebysig specialname 
		instance void set_Capacity (
			int32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x167a04
		// Code size 86 (0x56)
		.maxstack 3
		.locals (
			[0] !T[]
		)

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0007: bge.s IL_0011

		IL_0009: ldc.i4.7
		IL_000a: ldc.i4.s 12
		IL_000c: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0011: ldarg.1
		IL_0012: ldarg.0
		IL_0013: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0018: ldlen
		IL_0019: conv.i4
		IL_001a: beq.s IL_0055

		IL_001c: ldarg.1
		IL_001d: ldc.i4.0
		IL_001e: ble.s IL_004a

		IL_0020: ldarg.1
		IL_0021: newarr !T
		IL_0026: stloc.0
		IL_0027: ldarg.0
		IL_0028: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_002d: ldc.i4.0
		IL_002e: ble.s IL_0042

		IL_0030: ldarg.0
		IL_0031: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0036: ldloc.0
		IL_0037: ldarg.0
		IL_0038: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_003d: call void System.Array::Copy(class System.Array, class System.Array, int32)

		IL_0042: ldarg.0
		IL_0043: ldloc.0
		IL_0044: stfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0049: ret

		IL_004a: ldarg.0
		IL_004b: ldsfld !0[] class System.Collections.Generic.List`1<!T>::s_emptyArray
		IL_0050: stfld !0[] class System.Collections.Generic.List`1<!T>::_items

		IL_0055: ret
	} // end of method List`1::set_Capacity

	.method public final hidebysig specialname newslot virtual 
		instance int32 get_Count () cil managed 
	{
		// Method begins at RVA 0x167a66
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0006: ret
	} // end of method List`1::get_Count

	.method private final hidebysig specialname newslot virtual 
		instance bool System.Collections.IList.get_IsFixedSize () cil managed 
	{
		.override method instance bool System.Collections.IList::get_IsFixedSize()
		// Method begins at RVA 0x40f0b
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldc.i4.0
		IL_0001: ret
	} // end of method List`1::System.Collections.IList.get_IsFixedSize

	.method private final hidebysig specialname newslot virtual 
		instance bool 'System.Collections.Generic.ICollection<T>.get_IsReadOnly' () cil managed 
	{
		.override method instance bool class System.Collections.Generic.ICollection`1<!T>::get_IsReadOnly()
		// Method begins at RVA 0x40f0b
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldc.i4.0
		IL_0001: ret
	} // end of method List`1::'System.Collections.Generic.ICollection<T>.get_IsReadOnly'

	.method private final hidebysig specialname newslot virtual 
		instance bool System.Collections.IList.get_IsReadOnly () cil managed 
	{
		.override method instance bool System.Collections.IList::get_IsReadOnly()
		// Method begins at RVA 0x40f0b
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldc.i4.0
		IL_0001: ret
	} // end of method List`1::System.Collections.IList.get_IsReadOnly

	.method private final hidebysig specialname newslot virtual 
		instance bool System.Collections.ICollection.get_IsSynchronized () cil managed 
	{
		.override method instance bool System.Collections.ICollection::get_IsSynchronized()
		// Method begins at RVA 0x40f0b
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldc.i4.0
		IL_0001: ret
	} // end of method List`1::System.Collections.ICollection.get_IsSynchronized

	.method private final hidebysig specialname newslot virtual 
		instance object System.Collections.ICollection.get_SyncRoot () cil managed 
	{
		.override method instance object System.Collections.ICollection::get_SyncRoot()
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method List`1::System.Collections.ICollection.get_SyncRoot

	.method public final hidebysig specialname newslot virtual 
		instance !T get_Item (
			int32 index
		) cil managed 
	{
		// Method begins at RVA 0x167a6e
		// Code size 27 (0x1b)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0007: blt.un.s IL_000e

		IL_0009: call void System.ThrowHelper::ThrowArgumentOutOfRange_IndexException()

		IL_000e: ldarg.0
		IL_000f: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0014: ldarg.1
		IL_0015: ldelem !T
		IL_001a: ret
	} // end of method List`1::get_Item

	.method public final hidebysig specialname newslot virtual 
		instance void set_Item (
			int32 index,
			!T 'value'
		) cil managed 
	{
		// Method begins at RVA 0x167a8a
		// Code size 42 (0x2a)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0007: blt.un.s IL_000e

		IL_0009: call void System.ThrowHelper::ThrowArgumentOutOfRange_IndexException()

		IL_000e: ldarg.0
		IL_000f: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0014: ldarg.1
		IL_0015: ldarg.2
		IL_0016: stelem !T
		IL_001b: ldarg.0
		IL_001c: ldarg.0
		IL_001d: ldfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_0022: ldc.i4.1
		IL_0023: add
		IL_0024: stfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_0029: ret
	} // end of method List`1::set_Item

	.method private hidebysig static 
		bool IsCompatibleObject (
			object 'value'
		) cil managed 
	{
		// Method begins at RVA 0x161688
		// Code size 33 (0x21)
		.maxstack 2
		.locals (
			[0] !T
		)

		IL_0000: ldarg.0
		IL_0001: isinst !T
		IL_0006: brtrue.s IL_001f

		IL_0008: ldarg.0
		IL_0009: brtrue.s IL_001d

		IL_000b: ldloca.s 0
		IL_000d: initobj !T
		IL_0013: ldloc.0
		IL_0014: box !T
		IL_0019: ldnull
		IL_001a: ceq
		IL_001c: ret

		IL_001d: ldc.i4.0
		IL_001e: ret

		IL_001f: ldc.i4.1
		IL_0020: ret
	} // end of method List`1::IsCompatibleObject

	.method private final hidebysig specialname newslot virtual 
		instance object System.Collections.IList.get_Item (
			int32 index
		) cil managed 
	{
		.override method instance object System.Collections.IList::get_Item(int32)
		// Method begins at RVA 0x167ab5
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance !0 class System.Collections.Generic.List`1<!T>::get_Item(int32)
		IL_0007: box !T
		IL_000c: ret
	} // end of method List`1::System.Collections.IList.get_Item

	.method private final hidebysig specialname newslot virtual 
		instance void System.Collections.IList.set_Item (
			int32 index,
			object 'value'
		) cil managed 
	{
		.override method instance void System.Collections.IList::set_Item(int32, object)
		// Method begins at RVA 0x167ac4
		// Code size 42 (0x2a)
		.maxstack 3

		IL_0000: ldarg.2
		IL_0001: ldc.i4.7
		IL_0002: call void System.ThrowHelper::IfNullAndNullsAreIllegalThenThrow<!T>(object, valuetype System.ExceptionArgument)
		.try
		{
			IL_0007: ldarg.0
			IL_0008: ldarg.1
			IL_0009: ldarg.2
			IL_000a: unbox.any !T
			IL_000f: call instance void class System.Collections.Generic.List`1<!T>::set_Item(int32, !0)
			IL_0014: leave.s IL_0029
		} // end .try
		catch System.InvalidCastException
		{
			IL_0016: pop
			IL_0017: ldarg.2
			IL_0018: ldtoken !T
			IL_001d: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
			IL_0022: call void System.ThrowHelper::ThrowWrongValueTypeArgumentException<object>(!!0, class System.Type)
			IL_0027: leave.s IL_0029
		} // end handler

		IL_0029: ret
	} // end of method List`1::System.Collections.IList.set_Item

	.method public final hidebysig newslot virtual 
		instance void Add (
			!T item
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x167b0c
		// Code size 60 (0x3c)
		.maxstack 3
		.locals (
			[0] !T[],
			[1] int32
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.0
		IL_0002: ldfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_0007: ldc.i4.1
		IL_0008: add
		IL_0009: stfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_000e: ldarg.0
		IL_000f: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0014: stloc.0
		IL_0015: ldarg.0
		IL_0016: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_001b: stloc.1
		IL_001c: ldloc.1
		IL_001d: ldloc.0
		IL_001e: ldlen
		IL_001f: conv.i4
		IL_0020: bge.un.s IL_0034

		IL_0022: ldarg.0
		IL_0023: ldloc.1
		IL_0024: ldc.i4.1
		IL_0025: add
		IL_0026: stfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_002b: ldloc.0
		IL_002c: ldloc.1
		IL_002d: ldarg.1
		IL_002e: stelem !T
		IL_0033: ret

		IL_0034: ldarg.0
		IL_0035: ldarg.1
		IL_0036: call instance void class System.Collections.Generic.List`1<!T>::AddWithResize(!0)
		IL_003b: ret
	} // end of method List`1::Add

	.method private hidebysig 
		instance void AddWithResize (
			!T item
		) cil managed noinlining 
	{
		// Method begins at RVA 0x167b54
		// Code size 39 (0x27)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0006: stloc.0
		IL_0007: ldarg.0
		IL_0008: ldloc.0
		IL_0009: ldc.i4.1
		IL_000a: add
		IL_000b: call instance void class System.Collections.Generic.List`1<!T>::EnsureCapacity(int32)
		IL_0010: ldarg.0
		IL_0011: ldloc.0
		IL_0012: ldc.i4.1
		IL_0013: add
		IL_0014: stfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0019: ldarg.0
		IL_001a: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_001f: ldloc.0
		IL_0020: ldarg.1
		IL_0021: stelem !T
		IL_0026: ret
	} // end of method List`1::AddWithResize

	.method private final hidebysig newslot virtual 
		instance int32 System.Collections.IList.Add (
			object item
		) cil managed 
	{
		.override method instance int32 System.Collections.IList::Add(object)
		// Method begins at RVA 0x167b88
		// Code size 50 (0x32)
		.maxstack 2

		IL_0000: ldarg.1
		IL_0001: ldc.i4.s 24
		IL_0003: call void System.ThrowHelper::IfNullAndNullsAreIllegalThenThrow<!T>(object, valuetype System.ExceptionArgument)
		.try
		{
			IL_0008: ldarg.0
			IL_0009: ldarg.1
			IL_000a: unbox.any !T
			IL_000f: call instance void class System.Collections.Generic.List`1<!T>::Add(!0)
			IL_0014: leave.s IL_0029
		} // end .try
		catch System.InvalidCastException
		{
			IL_0016: pop
			IL_0017: ldarg.1
			IL_0018: ldtoken !T
			IL_001d: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
			IL_0022: call void System.ThrowHelper::ThrowWrongValueTypeArgumentException<object>(!!0, class System.Type)
			IL_0027: leave.s IL_0029
		} // end handler

		IL_0029: ldarg.0
		IL_002a: call instance int32 class System.Collections.Generic.List`1<!T>::get_Count()
		IL_002f: ldc.i4.1
		IL_0030: sub
		IL_0031: ret
	} // end of method List`1::System.Collections.IList.Add

	.method public hidebysig 
		instance void AddRange (
			class System.Collections.Generic.IEnumerable`1<!T> collection
		) cil managed 
	{
		// Method begins at RVA 0x167bd8
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.0
		IL_0002: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0007: ldarg.1
		IL_0008: call instance void class System.Collections.Generic.List`1<!T>::InsertRange(int32, class System.Collections.Generic.IEnumerable`1<!0>)
		IL_000d: ret
	} // end of method List`1::AddRange

	.method public hidebysig 
		instance class System.Collections.ObjectModel.ReadOnlyCollection`1<!T> AsReadOnly () cil managed 
	{
		// Method begins at RVA 0x167be7
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void class System.Collections.ObjectModel.ReadOnlyCollection`1<!T>::.ctor(class System.Collections.Generic.IList`1<!0>)
		IL_0006: ret
	} // end of method List`1::AsReadOnly

	.method public hidebysig 
		instance int32 BinarySearch (
			int32 index,
			int32 count,
			!T item,
			class System.Collections.Generic.IComparer`1<!T> comparer
		) cil managed 
	{
		.param [4]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		// Method begins at RVA 0x167bef
		// Code size 57 (0x39)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0009

		IL_0004: call void System.ThrowHelper::ThrowIndexArgumentOutOfRange_NeedNonNegNumException()

		IL_0009: ldarg.2
		IL_000a: ldc.i4.0
		IL_000b: bge.s IL_0016

		IL_000d: ldc.i4.s 27
		IL_000f: ldc.i4.s 11
		IL_0011: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0016: ldarg.0
		IL_0017: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_001c: ldarg.1
		IL_001d: sub
		IL_001e: ldarg.2
		IL_001f: bge.s IL_0028

		IL_0021: ldc.i4.s 13
		IL_0023: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0028: ldarg.0
		IL_0029: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_002e: ldarg.1
		IL_002f: ldarg.2
		IL_0030: ldarg.3
		IL_0031: ldarg.s comparer
		IL_0033: call int32 System.Array::BinarySearch<!T>(!!0[], int32, int32, !!0, class System.Collections.Generic.IComparer`1<!!0>)
		IL_0038: ret
	} // end of method List`1::BinarySearch

	.method public hidebysig 
		instance int32 BinarySearch (
			!T item
		) cil managed 
	{
		// Method begins at RVA 0x167c29
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: ldarg.0
		IL_0003: call instance int32 class System.Collections.Generic.List`1<!T>::get_Count()
		IL_0008: ldarg.1
		IL_0009: ldnull
		IL_000a: call instance int32 class System.Collections.Generic.List`1<!T>::BinarySearch(int32, int32, !0, class System.Collections.Generic.IComparer`1<!0>)
		IL_000f: ret
	} // end of method List`1::BinarySearch

	.method public hidebysig 
		instance int32 BinarySearch (
			!T item,
			class System.Collections.Generic.IComparer`1<!T> comparer
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		// Method begins at RVA 0x167c3a
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: ldarg.0
		IL_0003: call instance int32 class System.Collections.Generic.List`1<!T>::get_Count()
		IL_0008: ldarg.1
		IL_0009: ldarg.2
		IL_000a: call instance int32 class System.Collections.Generic.List`1<!T>::BinarySearch(int32, int32, !0, class System.Collections.Generic.IComparer`1<!0>)
		IL_000f: ret
	} // end of method List`1::BinarySearch

	.method public final hidebysig newslot virtual 
		instance void Clear () cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x167c4c
		// Code size 61 (0x3d)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.0
		IL_0002: ldfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_0007: ldc.i4.1
		IL_0008: add
		IL_0009: stfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_000e: call bool System.Runtime.CompilerServices.RuntimeHelpers::IsReferenceOrContainsReferences<!T>()
		IL_0013: brfalse.s IL_0035

		IL_0015: ldarg.0
		IL_0016: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_001b: stloc.0
		IL_001c: ldarg.0
		IL_001d: ldc.i4.0
		IL_001e: stfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0023: ldloc.0
		IL_0024: ldc.i4.0
		IL_0025: ble.s IL_003c

		IL_0027: ldarg.0
		IL_0028: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_002d: ldc.i4.0
		IL_002e: ldloc.0
		IL_002f: call void System.Array::Clear(class System.Array, int32, int32)
		IL_0034: ret

		IL_0035: ldarg.0
		IL_0036: ldc.i4.0
		IL_0037: stfld int32 class System.Collections.Generic.List`1<!T>::_size

		IL_003c: ret
	} // end of method List`1::Clear

	.method public final hidebysig newslot virtual 
		instance bool Contains (
			!T item
		) cil managed 
	{
		// Method begins at RVA 0x167c95
		// Code size 24 (0x18)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0006: brfalse.s IL_0016

		IL_0008: ldarg.0
		IL_0009: ldarg.1
		IL_000a: call instance int32 class System.Collections.Generic.List`1<!T>::IndexOf(!0)
		IL_000f: ldc.i4.m1
		IL_0010: ceq
		IL_0012: ldc.i4.0
		IL_0013: ceq
		IL_0015: ret

		IL_0016: ldc.i4.0
		IL_0017: ret
	} // end of method List`1::Contains

	.method private final hidebysig newslot virtual 
		instance bool System.Collections.IList.Contains (
			object item
		) cil managed 
	{
		.override method instance bool System.Collections.IList::Contains(object)
		// Method begins at RVA 0x167cae
		// Code size 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call bool class System.Collections.Generic.List`1<!T>::IsCompatibleObject(object)
		IL_0006: brfalse.s IL_0015

		IL_0008: ldarg.0
		IL_0009: ldarg.1
		IL_000a: unbox.any !T
		IL_000f: call instance bool class System.Collections.Generic.List`1<!T>::Contains(!0)
		IL_0014: ret

		IL_0015: ldc.i4.0
		IL_0016: ret
	} // end of method List`1::System.Collections.IList.Contains

	.method public hidebysig 
		instance class System.Collections.Generic.List`1<!!TOutput> ConvertAll<TOutput> (
			class System.Converter`2<!T, !!TOutput> converter
		) cil managed 
	{
		.param type TOutput
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x167cc8
		// Code size 83 (0x53)
		.maxstack 5
		.locals (
			[0] class System.Collections.Generic.List`1<!!TOutput>,
			[1] int32
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 25
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0010: newobj instance void class System.Collections.Generic.List`1<!!TOutput>::.ctor(int32)
		IL_0015: stloc.0
		IL_0016: ldc.i4.0
		IL_0017: stloc.1
		IL_0018: br.s IL_003c
		// loop start (head: IL_003c)
			IL_001a: ldloc.0
			IL_001b: ldfld !0[] class System.Collections.Generic.List`1<!!TOutput>::_items
			IL_0020: ldloc.1
			IL_0021: ldarg.1
			IL_0022: ldarg.0
			IL_0023: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
			IL_0028: ldloc.1
			IL_0029: ldelem !T
			IL_002e: callvirt instance !1 class System.Converter`2<!T, !!TOutput>::Invoke(!0)
			IL_0033: stelem !!TOutput
			IL_0038: ldloc.1
			IL_0039: ldc.i4.1
			IL_003a: add
			IL_003b: stloc.1

			IL_003c: ldloc.1
			IL_003d: ldarg.0
			IL_003e: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
			IL_0043: blt.s IL_001a
		// end loop

		IL_0045: ldloc.0
		IL_0046: ldarg.0
		IL_0047: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_004c: stfld int32 class System.Collections.Generic.List`1<!!TOutput>::_size
		IL_0051: ldloc.0
		IL_0052: ret
	} // end of method List`1::ConvertAll

	.method public hidebysig 
		instance void CopyTo (
			!T[] 'array'
		) cil managed 
	{
		// Method begins at RVA 0x167d27
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.0
		IL_0003: call instance void class System.Collections.Generic.List`1<!T>::CopyTo(!0[], int32)
		IL_0008: ret
	} // end of method List`1::CopyTo

	.method private final hidebysig newslot virtual 
		instance void System.Collections.ICollection.CopyTo (
			class System.Array 'array',
			int32 arrayIndex
		) cil managed 
	{
		.override method instance void System.Collections.ICollection::CopyTo(class System.Array, int32)
		// Method begins at RVA 0x167d34
		// Code size 50 (0x32)
		.maxstack 5

		IL_0000: ldarg.1
		IL_0001: brfalse.s IL_0012

		IL_0003: ldarg.1
		IL_0004: callvirt instance int32 System.Array::get_Rank()
		IL_0009: ldc.i4.1
		IL_000a: beq.s IL_0012

		IL_000c: ldc.i4.7
		IL_000d: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0012: nop
		.try
		{
			IL_0013: ldarg.0
			IL_0014: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
			IL_0019: ldc.i4.0
			IL_001a: ldarg.1
			IL_001b: ldarg.2
			IL_001c: ldarg.0
			IL_001d: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
			IL_0022: call void System.Array::Copy(class System.Array, int32, class System.Array, int32, int32)
			IL_0027: leave.s IL_0031
		} // end .try
		catch System.ArrayTypeMismatchException
		{
			IL_0029: pop
			IL_002a: call void System.ThrowHelper::ThrowArgumentException_Argument_InvalidArrayType()
			IL_002f: leave.s IL_0031
		} // end handler

		IL_0031: ret
	} // end of method List`1::System.Collections.ICollection.CopyTo

	.method public hidebysig 
		instance void CopyTo (
			int32 index,
			!T[] 'array',
			int32 arrayIndex,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0x167d84
		// Code size 36 (0x24)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0006: ldarg.1
		IL_0007: sub
		IL_0008: ldarg.s count
		IL_000a: bge.s IL_0013

		IL_000c: ldc.i4.s 13
		IL_000e: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0013: ldarg.0
		IL_0014: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0019: ldarg.1
		IL_001a: ldarg.2
		IL_001b: ldarg.3
		IL_001c: ldarg.s count
		IL_001e: call void System.Array::Copy(class System.Array, int32, class System.Array, int32, int32)
		IL_0023: ret
	} // end of method List`1::CopyTo

	.method public final hidebysig newslot virtual 
		instance void CopyTo (
			!T[] 'array',
			int32 arrayIndex
		) cil managed 
	{
		// Method begins at RVA 0x167da9
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0006: ldc.i4.0
		IL_0007: ldarg.1
		IL_0008: ldarg.2
		IL_0009: ldarg.0
		IL_000a: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_000f: call void System.Array::Copy(class System.Array, int32, class System.Array, int32, int32)
		IL_0014: ret
	} // end of method List`1::CopyTo

	.method private hidebysig 
		instance void EnsureCapacity (
			int32 min
		) cil managed 
	{
		// Method begins at RVA 0x167dc0
		// Code size 62 (0x3e)
		.maxstack 2
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0006: ldlen
		IL_0007: conv.i4
		IL_0008: ldarg.1
		IL_0009: bge.s IL_003d

		IL_000b: ldarg.0
		IL_000c: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0011: ldlen
		IL_0012: brfalse.s IL_0020

		IL_0014: ldarg.0
		IL_0015: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_001a: ldlen
		IL_001b: conv.i4
		IL_001c: ldc.i4.2
		IL_001d: mul
		IL_001e: br.s IL_0021

		IL_0020: ldc.i4.4

		IL_0021: stloc.0
		IL_0022: ldloc.0
		IL_0023: ldc.i4 2146435071
		IL_0028: ble.un.s IL_0030

		IL_002a: ldc.i4 2146435071
		IL_002f: stloc.0

		IL_0030: ldloc.0
		IL_0031: ldarg.1
		IL_0032: bge.s IL_0036

		IL_0034: ldarg.1
		IL_0035: stloc.0

		IL_0036: ldarg.0
		IL_0037: ldloc.0
		IL_0038: call instance void class System.Collections.Generic.List`1<!T>::set_Capacity(int32)

		IL_003d: ret
	} // end of method List`1::EnsureCapacity

	.method public hidebysig 
		instance bool Exists (
			class System.Predicate`1<!T> match
		) cil managed 
	{
		// Method begins at RVA 0x167e0a
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance int32 class System.Collections.Generic.List`1<!T>::FindIndex(class System.Predicate`1<!0>)
		IL_0007: ldc.i4.m1
		IL_0008: ceq
		IL_000a: ldc.i4.0
		IL_000b: ceq
		IL_000d: ret
	} // end of method List`1::Exists

	.method public hidebysig 
		instance !T Find (
			class System.Predicate`1<!T> match
		) cil managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x167e1c
		// Code size 70 (0x46)
		.maxstack 3
		.locals (
			[0] int32,
			[1] !T
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 26
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldc.i4.0
		IL_000b: stloc.0
		IL_000c: br.s IL_0033
		// loop start (head: IL_0033)
			IL_000e: ldarg.1
			IL_000f: ldarg.0
			IL_0010: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
			IL_0015: ldloc.0
			IL_0016: ldelem !T
			IL_001b: callvirt instance bool class System.Predicate`1<!T>::Invoke(!0)
			IL_0020: brfalse.s IL_002f

			IL_0022: ldarg.0
			IL_0023: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
			IL_0028: ldloc.0
			IL_0029: ldelem !T
			IL_002e: ret

			IL_002f: ldloc.0
			IL_0030: ldc.i4.1
			IL_0031: add
			IL_0032: stloc.0

			IL_0033: ldloc.0
			IL_0034: ldarg.0
			IL_0035: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
			IL_003a: blt.s IL_000e
		// end loop

		IL_003c: ldloca.s 1
		IL_003e: initobj !T
		IL_0044: ldloc.1
		IL_0045: ret
	} // end of method List`1::Find

	.method public hidebysig 
		instance class System.Collections.Generic.List`1<!T> FindAll (
			class System.Predicate`1<!T> match
		) cil managed 
	{
		// Method begins at RVA 0x167e70
		// Code size 73 (0x49)
		.maxstack 3
		.locals (
			[0] class System.Collections.Generic.List`1<!T>,
			[1] int32
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 26
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: newobj instance void class System.Collections.Generic.List`1<!T>::.ctor()
		IL_000f: stloc.0
		IL_0010: ldc.i4.0
		IL_0011: stloc.1
		IL_0012: br.s IL_003e
		// loop start (head: IL_003e)
			IL_0014: ldarg.1
			IL_0015: ldarg.0
			IL_0016: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
			IL_001b: ldloc.1
			IL_001c: ldelem !T
			IL_0021: callvirt instance bool class System.Predicate`1<!T>::Invoke(!0)
			IL_0026: brfalse.s IL_003a

			IL_0028: ldloc.0
			IL_0029: ldarg.0
			IL_002a: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
			IL_002f: ldloc.1
			IL_0030: ldelem !T
			IL_0035: callvirt instance void class System.Collections.Generic.List`1<!T>::Add(!0)

			IL_003a: ldloc.1
			IL_003b: ldc.i4.1
			IL_003c: add
			IL_003d: stloc.1

			IL_003e: ldloc.1
			IL_003f: ldarg.0
			IL_0040: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
			IL_0045: blt.s IL_0014
		// end loop

		IL_0047: ldloc.0
		IL_0048: ret
	} // end of method List`1::FindAll

	.method public hidebysig 
		instance int32 FindIndex (
			class System.Predicate`1<!T> match
		) cil managed 
	{
		// Method begins at RVA 0x167ec5
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: ldarg.0
		IL_0003: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0008: ldarg.1
		IL_0009: call instance int32 class System.Collections.Generic.List`1<!T>::FindIndex(int32, int32, class System.Predicate`1<!0>)
		IL_000e: ret
	} // end of method List`1::FindIndex

	.method public hidebysig 
		instance int32 FindIndex (
			int32 startIndex,
			class System.Predicate`1<!T> match
		) cil managed 
	{
		// Method begins at RVA 0x167ed5
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.0
		IL_0003: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0008: ldarg.1
		IL_0009: sub
		IL_000a: ldarg.2
		IL_000b: call instance int32 class System.Collections.Generic.List`1<!T>::FindIndex(int32, int32, class System.Predicate`1<!0>)
		IL_0010: ret
	} // end of method List`1::FindIndex

	.method public hidebysig 
		instance int32 FindIndex (
			int32 startIndex,
			int32 count,
			class System.Predicate`1<!T> match
		) cil managed 
	{
		// Method begins at RVA 0x167ee8
		// Code size 84 (0x54)
		.maxstack 3
		.locals (
			[0] int32,
			[1] int32
		)

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0007: ble.un.s IL_000e

		IL_0009: call void System.ThrowHelper::ThrowStartIndexArgumentOutOfRange_ArgumentOutOfRange_Index()

		IL_000e: ldarg.2
		IL_000f: ldc.i4.0
		IL_0010: blt.s IL_001d

		IL_0012: ldarg.1
		IL_0013: ldarg.0
		IL_0014: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0019: ldarg.2
		IL_001a: sub
		IL_001b: ble.s IL_0022

		IL_001d: call void System.ThrowHelper::ThrowCountArgumentOutOfRange_ArgumentOutOfRange_Count()

		IL_0022: ldarg.3
		IL_0023: brtrue.s IL_002c

		IL_0025: ldc.i4.s 26
		IL_0027: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_002c: ldarg.1
		IL_002d: ldarg.2
		IL_002e: add
		IL_002f: stloc.0
		IL_0030: ldarg.1
		IL_0031: stloc.1
		IL_0032: br.s IL_004e
		// loop start (head: IL_004e)
			IL_0034: ldarg.3
			IL_0035: ldarg.0
			IL_0036: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
			IL_003b: ldloc.1
			IL_003c: ldelem !T
			IL_0041: callvirt instance bool class System.Predicate`1<!T>::Invoke(!0)
			IL_0046: brfalse.s IL_004a

			IL_0048: ldloc.1
			IL_0049: ret

			IL_004a: ldloc.1
			IL_004b: ldc.i4.1
			IL_004c: add
			IL_004d: stloc.1

			IL_004e: ldloc.1
			IL_004f: ldloc.0
			IL_0050: blt.s IL_0034
		// end loop

		IL_0052: ldc.i4.m1
		IL_0053: ret
	} // end of method List`1::FindIndex

	.method public hidebysig 
		instance !T FindLast (
			class System.Predicate`1<!T> match
		) cil managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x167f48
		// Code size 72 (0x48)
		.maxstack 3
		.locals (
			[0] int32,
			[1] !T
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 26
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0010: ldc.i4.1
		IL_0011: sub
		IL_0012: stloc.0
		IL_0013: br.s IL_003a
		// loop start (head: IL_003a)
			IL_0015: ldarg.1
			IL_0016: ldarg.0
			IL_0017: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
			IL_001c: ldloc.0
			IL_001d: ldelem !T
			IL_0022: callvirt instance bool class System.Predicate`1<!T>::Invoke(!0)
			IL_0027: brfalse.s IL_0036

			IL_0029: ldarg.0
			IL_002a: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
			IL_002f: ldloc.0
			IL_0030: ldelem !T
			IL_0035: ret

			IL_0036: ldloc.0
			IL_0037: ldc.i4.1
			IL_0038: sub
			IL_0039: stloc.0

			IL_003a: ldloc.0
			IL_003b: ldc.i4.0
			IL_003c: bge.s IL_0015
		// end loop

		IL_003e: ldloca.s 1
		IL_0040: initobj !T
		IL_0046: ldloc.1
		IL_0047: ret
	} // end of method List`1::FindLast

	.method public hidebysig 
		instance int32 FindLastIndex (
			class System.Predicate`1<!T> match
		) cil managed 
	{
		// Method begins at RVA 0x167f9c
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.0
		IL_0002: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0007: ldc.i4.1
		IL_0008: sub
		IL_0009: ldarg.0
		IL_000a: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_000f: ldarg.1
		IL_0010: call instance int32 class System.Collections.Generic.List`1<!T>::FindLastIndex(int32, int32, class System.Predicate`1<!0>)
		IL_0015: ret
	} // end of method List`1::FindLastIndex

	.method public hidebysig 
		instance int32 FindLastIndex (
			int32 startIndex,
			class System.Predicate`1<!T> match
		) cil managed 
	{
		// Method begins at RVA 0x167fb3
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.1
		IL_0003: ldc.i4.1
		IL_0004: add
		IL_0005: ldarg.2
		IL_0006: call instance int32 class System.Collections.Generic.List`1<!T>::FindLastIndex(int32, int32, class System.Predicate`1<!0>)
		IL_000b: ret
	} // end of method List`1::FindLastIndex

	.method public hidebysig 
		instance int32 FindLastIndex (
			int32 startIndex,
			int32 count,
			class System.Predicate`1<!T> match
		) cil managed 
	{
		// Method begins at RVA 0x167fc0
		// Code size 100 (0x64)
		.maxstack 3
		.locals (
			[0] int32,
			[1] int32
		)

		IL_0000: ldarg.3
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 26
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0010: brtrue.s IL_001d

		IL_0012: ldarg.1
		IL_0013: ldc.i4.m1
		IL_0014: beq.s IL_002b

		IL_0016: call void System.ThrowHelper::ThrowStartIndexArgumentOutOfRange_ArgumentOutOfRange_Index()
		IL_001b: br.s IL_002b

		IL_001d: ldarg.1
		IL_001e: ldarg.0
		IL_001f: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0024: blt.un.s IL_002b

		IL_0026: call void System.ThrowHelper::ThrowStartIndexArgumentOutOfRange_ArgumentOutOfRange_Index()

		IL_002b: ldarg.2
		IL_002c: ldc.i4.0
		IL_002d: blt.s IL_0037

		IL_002f: ldarg.1
		IL_0030: ldarg.2
		IL_0031: sub
		IL_0032: ldc.i4.1
		IL_0033: add
		IL_0034: ldc.i4.0
		IL_0035: bge.s IL_003c

		IL_0037: call void System.ThrowHelper::ThrowCountArgumentOutOfRange_ArgumentOutOfRange_Count()

		IL_003c: ldarg.1
		IL_003d: ldarg.2
		IL_003e: sub
		IL_003f: stloc.0
		IL_0040: ldarg.1
		IL_0041: stloc.1
		IL_0042: br.s IL_005e
		// loop start (head: IL_005e)
			IL_0044: ldarg.3
			IL_0045: ldarg.0
			IL_0046: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
			IL_004b: ldloc.1
			IL_004c: ldelem !T
			IL_0051: callvirt instance bool class System.Predicate`1<!T>::Invoke(!0)
			IL_0056: brfalse.s IL_005a

			IL_0058: ldloc.1
			IL_0059: ret

			IL_005a: ldloc.1
			IL_005b: ldc.i4.1
			IL_005c: sub
			IL_005d: stloc.1

			IL_005e: ldloc.1
			IL_005f: ldloc.0
			IL_0060: bgt.s IL_0044
		// end loop

		IL_0062: ldc.i4.m1
		IL_0063: ret
	} // end of method List`1::FindLastIndex

	.method public hidebysig 
		instance void ForEach (
			class System.Action`1<!T> action
		) cil managed 
	{
		// Method begins at RVA 0x168030
		// Code size 76 (0x4c)
		.maxstack 3
		.locals (
			[0] int32,
			[1] int32
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 28
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: ldfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_0010: stloc.0
		IL_0011: ldc.i4.0
		IL_0012: stloc.1
		IL_0013: br.s IL_0034
		// loop start (head: IL_0034)
			IL_0015: ldloc.0
			IL_0016: ldarg.0
			IL_0017: ldfld int32 class System.Collections.Generic.List`1<!T>::_version
			IL_001c: bne.un.s IL_003d

			IL_001e: ldarg.1
			IL_001f: ldarg.0
			IL_0020: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
			IL_0025: ldloc.1
			IL_0026: ldelem !T
			IL_002b: callvirt instance void class System.Action`1<!T>::Invoke(!0)
			IL_0030: ldloc.1
			IL_0031: ldc.i4.1
			IL_0032: add
			IL_0033: stloc.1

			IL_0034: ldloc.1
			IL_0035: ldarg.0
			IL_0036: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
			IL_003b: blt.s IL_0015
		// end loop

		IL_003d: ldloc.0
		IL_003e: ldarg.0
		IL_003f: ldfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_0044: beq.s IL_004b

		IL_0046: call void System.ThrowHelper::ThrowInvalidOperationException_InvalidOperation_EnumFailedVersion()

		IL_004b: ret
	} // end of method List`1::ForEach

	.method public hidebysig 
		instance valuetype System.Collections.Generic.List`1/Enumerator<!T> GetEnumerator () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x168088
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void valuetype System.Collections.Generic.List`1/Enumerator<!T>::.ctor(class System.Collections.Generic.List`1<!0>)
		IL_0006: ret
	} // end of method List`1::GetEnumerator

	.method private final hidebysig newslot virtual 
		instance class System.Collections.Generic.IEnumerator`1<!T> 'System.Collections.Generic.IEnumerable<T>.GetEnumerator' () cil managed 
	{
		.override method instance class System.Collections.Generic.IEnumerator`1<!0> class System.Collections.Generic.IEnumerable`1<!T>::GetEnumerator()
		// Method begins at RVA 0x168090
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void valuetype System.Collections.Generic.List`1/Enumerator<!T>::.ctor(class System.Collections.Generic.List`1<!0>)
		IL_0006: box valuetype System.Collections.Generic.List`1/Enumerator<!T>
		IL_000b: ret
	} // end of method List`1::'System.Collections.Generic.IEnumerable<T>.GetEnumerator'

	.method private final hidebysig newslot virtual 
		instance class System.Collections.IEnumerator System.Collections.IEnumerable.GetEnumerator () cil managed 
	{
		.override method instance class System.Collections.IEnumerator System.Collections.IEnumerable::GetEnumerator()
		// Method begins at RVA 0x168090
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void valuetype System.Collections.Generic.List`1/Enumerator<!T>::.ctor(class System.Collections.Generic.List`1<!0>)
		IL_0006: box valuetype System.Collections.Generic.List`1/Enumerator<!T>
		IL_000b: ret
	} // end of method List`1::System.Collections.IEnumerable.GetEnumerator

	.method public hidebysig 
		instance class System.Collections.Generic.List`1<!T> GetRange (
			int32 index,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0x1680a0
		// Code size 76 (0x4c)
		.maxstack 5
		.locals (
			[0] class System.Collections.Generic.List`1<!T>
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0009

		IL_0004: call void System.ThrowHelper::ThrowIndexArgumentOutOfRange_NeedNonNegNumException()

		IL_0009: ldarg.2
		IL_000a: ldc.i4.0
		IL_000b: bge.s IL_0016

		IL_000d: ldc.i4.s 27
		IL_000f: ldc.i4.s 11
		IL_0011: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0016: ldarg.0
		IL_0017: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_001c: ldarg.1
		IL_001d: sub
		IL_001e: ldarg.2
		IL_001f: bge.s IL_0028

		IL_0021: ldc.i4.s 13
		IL_0023: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0028: ldarg.2
		IL_0029: newobj instance void class System.Collections.Generic.List`1<!T>::.ctor(int32)
		IL_002e: stloc.0
		IL_002f: ldarg.0
		IL_0030: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0035: ldarg.1
		IL_0036: ldloc.0
		IL_0037: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_003c: ldc.i4.0
		IL_003d: ldarg.2
		IL_003e: call void System.Array::Copy(class System.Array, int32, class System.Array, int32, int32)
		IL_0043: ldloc.0
		IL_0044: ldarg.2
		IL_0045: stfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_004a: ldloc.0
		IL_004b: ret
	} // end of method List`1::GetRange

	.method public final hidebysig newslot virtual 
		instance int32 IndexOf (
			!T item
		) cil managed 
	{
		// Method begins at RVA 0x1680f8
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0006: ldarg.1
		IL_0007: ldc.i4.0
		IL_0008: ldarg.0
		IL_0009: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_000e: call int32 System.Array::IndexOf<!T>(!!0[], !!0, int32, int32)
		IL_0013: ret
	} // end of method List`1::IndexOf

	.method private final hidebysig newslot virtual 
		instance int32 System.Collections.IList.IndexOf (
			object item
		) cil managed 
	{
		.override method instance int32 System.Collections.IList::IndexOf(object)
		// Method begins at RVA 0x16810d
		// Code size 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call bool class System.Collections.Generic.List`1<!T>::IsCompatibleObject(object)
		IL_0006: brfalse.s IL_0015

		IL_0008: ldarg.0
		IL_0009: ldarg.1
		IL_000a: unbox.any !T
		IL_000f: call instance int32 class System.Collections.Generic.List`1<!T>::IndexOf(!0)
		IL_0014: ret

		IL_0015: ldc.i4.m1
		IL_0016: ret
	} // end of method List`1::System.Collections.IList.IndexOf

	.method public hidebysig 
		instance int32 IndexOf (
			!T item,
			int32 index
		) cil managed 
	{
		// Method begins at RVA 0x168125
		// Code size 36 (0x24)
		.maxstack 8

		IL_0000: ldarg.2
		IL_0001: ldarg.0
		IL_0002: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0007: ble.s IL_000e

		IL_0009: call void System.ThrowHelper::ThrowArgumentOutOfRange_IndexException()

		IL_000e: ldarg.0
		IL_000f: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0014: ldarg.1
		IL_0015: ldarg.2
		IL_0016: ldarg.0
		IL_0017: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_001c: ldarg.2
		IL_001d: sub
		IL_001e: call int32 System.Array::IndexOf<!T>(!!0[], !!0, int32, int32)
		IL_0023: ret
	} // end of method List`1::IndexOf

	.method public hidebysig 
		instance int32 IndexOf (
			!T item,
			int32 index,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0x16814a
		// Code size 49 (0x31)
		.maxstack 8

		IL_0000: ldarg.2
		IL_0001: ldarg.0
		IL_0002: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0007: ble.s IL_000e

		IL_0009: call void System.ThrowHelper::ThrowArgumentOutOfRange_IndexException()

		IL_000e: ldarg.3
		IL_000f: ldc.i4.0
		IL_0010: blt.s IL_001d

		IL_0012: ldarg.2
		IL_0013: ldarg.0
		IL_0014: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0019: ldarg.3
		IL_001a: sub
		IL_001b: ble.s IL_0022

		IL_001d: call void System.ThrowHelper::ThrowCountArgumentOutOfRange_ArgumentOutOfRange_Count()

		IL_0022: ldarg.0
		IL_0023: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0028: ldarg.1
		IL_0029: ldarg.2
		IL_002a: ldarg.3
		IL_002b: call int32 System.Array::IndexOf<!T>(!!0[], !!0, int32, int32)
		IL_0030: ret
	} // end of method List`1::IndexOf

	.method public final hidebysig newslot virtual 
		instance void Insert (
			int32 index,
			!T item
		) cil managed 
	{
		// Method begins at RVA 0x16817c
		// Code size 128 (0x80)
		.maxstack 6

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0007: ble.un.s IL_0012

		IL_0009: ldc.i4.s 21
		IL_000b: ldc.i4.s 10
		IL_000d: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0012: ldarg.0
		IL_0013: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0018: ldarg.0
		IL_0019: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_001e: ldlen
		IL_001f: conv.i4
		IL_0020: bne.un.s IL_0030

		IL_0022: ldarg.0
		IL_0023: ldarg.0
		IL_0024: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0029: ldc.i4.1
		IL_002a: add
		IL_002b: call instance void class System.Collections.Generic.List`1<!T>::EnsureCapacity(int32)

		IL_0030: ldarg.1
		IL_0031: ldarg.0
		IL_0032: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0037: bge.s IL_0056

		IL_0039: ldarg.0
		IL_003a: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_003f: ldarg.1
		IL_0040: ldarg.0
		IL_0041: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0046: ldarg.1
		IL_0047: ldc.i4.1
		IL_0048: add
		IL_0049: ldarg.0
		IL_004a: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_004f: ldarg.1
		IL_0050: sub
		IL_0051: call void System.Array::Copy(class System.Array, int32, class System.Array, int32, int32)

		IL_0056: ldarg.0
		IL_0057: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_005c: ldarg.1
		IL_005d: ldarg.2
		IL_005e: stelem !T
		IL_0063: ldarg.0
		IL_0064: ldarg.0
		IL_0065: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_006a: ldc.i4.1
		IL_006b: add
		IL_006c: stfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0071: ldarg.0
		IL_0072: ldarg.0
		IL_0073: ldfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_0078: ldc.i4.1
		IL_0079: add
		IL_007a: stfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_007f: ret
	} // end of method List`1::Insert

	.method private final hidebysig newslot virtual 
		instance void System.Collections.IList.Insert (
			int32 index,
			object item
		) cil managed 
	{
		.override method instance void System.Collections.IList::Insert(int32, object)
		// Method begins at RVA 0x168208
		// Code size 43 (0x2b)
		.maxstack 3

		IL_0000: ldarg.2
		IL_0001: ldc.i4.s 24
		IL_0003: call void System.ThrowHelper::IfNullAndNullsAreIllegalThenThrow<!T>(object, valuetype System.ExceptionArgument)
		.try
		{
			IL_0008: ldarg.0
			IL_0009: ldarg.1
			IL_000a: ldarg.2
			IL_000b: unbox.any !T
			IL_0010: call instance void class System.Collections.Generic.List`1<!T>::Insert(int32, !0)
			IL_0015: leave.s IL_002a
		} // end .try
		catch System.InvalidCastException
		{
			IL_0017: pop
			IL_0018: ldarg.2
			IL_0019: ldtoken !T
			IL_001e: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
			IL_0023: call void System.ThrowHelper::ThrowWrongValueTypeArgumentException<object>(!!0, class System.Type)
			IL_0028: leave.s IL_002a
		} // end handler

		IL_002a: ret
	} // end of method List`1::System.Collections.IList.Insert

	.method public hidebysig 
		instance void InsertRange (
			int32 index,
			class System.Collections.Generic.IEnumerable`1<!T> collection
		) cil managed 
	{
		// Method begins at RVA 0x168250
		// Code size 251 (0xfb)
		.maxstack 6
		.locals (
			[0] class System.Collections.Generic.ICollection`1<!T>,
			[1] int32,
			[2] class System.Collections.Generic.IEnumerator`1<!T>
		)

		IL_0000: ldarg.2
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 23
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.1
		IL_000b: ldarg.0
		IL_000c: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0011: ble.un.s IL_0018

		IL_0013: call void System.ThrowHelper::ThrowArgumentOutOfRange_IndexException()

		IL_0018: ldarg.2
		IL_0019: isinst class System.Collections.Generic.ICollection`1<!T>
		IL_001e: stloc.0
		IL_001f: ldloc.0
		IL_0020: brfalse IL_00bd

		IL_0025: ldloc.0
		IL_0026: callvirt instance int32 class System.Collections.Generic.ICollection`1<!T>::get_Count()
		IL_002b: stloc.1
		IL_002c: ldloc.1
		IL_002d: ldc.i4.0
		IL_002e: ble IL_00ec

		IL_0033: ldarg.0
		IL_0034: ldarg.0
		IL_0035: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_003a: ldloc.1
		IL_003b: add
		IL_003c: call instance void class System.Collections.Generic.List`1<!T>::EnsureCapacity(int32)
		IL_0041: ldarg.1
		IL_0042: ldarg.0
		IL_0043: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0048: bge.s IL_0067

		IL_004a: ldarg.0
		IL_004b: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0050: ldarg.1
		IL_0051: ldarg.0
		IL_0052: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0057: ldarg.1
		IL_0058: ldloc.1
		IL_0059: add
		IL_005a: ldarg.0
		IL_005b: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0060: ldarg.1
		IL_0061: sub
		IL_0062: call void System.Array::Copy(class System.Array, int32, class System.Array, int32, int32)

		IL_0067: ldarg.0
		IL_0068: ldloc.0
		IL_0069: bne.un.s IL_00a0

		IL_006b: ldarg.0
		IL_006c: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0071: ldc.i4.0
		IL_0072: ldarg.0
		IL_0073: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0078: ldarg.1
		IL_0079: ldarg.1
		IL_007a: call void System.Array::Copy(class System.Array, int32, class System.Array, int32, int32)
		IL_007f: ldarg.0
		IL_0080: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0085: ldarg.1
		IL_0086: ldloc.1
		IL_0087: add
		IL_0088: ldarg.0
		IL_0089: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_008e: ldarg.1
		IL_008f: ldc.i4.2
		IL_0090: mul
		IL_0091: ldarg.0
		IL_0092: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0097: ldarg.1
		IL_0098: sub
		IL_0099: call void System.Array::Copy(class System.Array, int32, class System.Array, int32, int32)
		IL_009e: br.s IL_00ad

		IL_00a0: ldloc.0
		IL_00a1: ldarg.0
		IL_00a2: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_00a7: ldarg.1
		IL_00a8: callvirt instance void class System.Collections.Generic.ICollection`1<!T>::CopyTo(!0[], int32)

		IL_00ad: ldarg.0
		IL_00ae: ldarg.0
		IL_00af: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_00b4: ldloc.1
		IL_00b5: add
		IL_00b6: stfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_00bb: br.s IL_00ec

		IL_00bd: ldarg.2
		IL_00be: callvirt instance class System.Collections.Generic.IEnumerator`1<!0> class System.Collections.Generic.IEnumerable`1<!T>::GetEnumerator()
		IL_00c3: stloc.2
		.try
		{
			IL_00c4: br.s IL_00d8
			// loop start (head: IL_00d8)
				IL_00c6: ldarg.0
				IL_00c7: ldarg.1
				IL_00c8: dup
				IL_00c9: ldc.i4.1
				IL_00ca: add
				IL_00cb: starg.s index
				IL_00cd: ldloc.2
				IL_00ce: callvirt instance !0 class System.Collections.Generic.IEnumerator`1<!T>::get_Current()
				IL_00d3: call instance void class System.Collections.Generic.List`1<!T>::Insert(int32, !0)

				IL_00d8: ldloc.2
				IL_00d9: callvirt instance bool System.Collections.IEnumerator::MoveNext()
				IL_00de: brtrue.s IL_00c6
			// end loop

			IL_00e0: leave.s IL_00ec
		} // end .try
		finally
		{
			IL_00e2: ldloc.2
			IL_00e3: brfalse.s IL_00eb

			IL_00e5: ldloc.2
			IL_00e6: callvirt instance void System.IDisposable::Dispose()

			IL_00eb: endfinally
		} // end handler

		IL_00ec: ldarg.0
		IL_00ed: ldarg.0
		IL_00ee: ldfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_00f3: ldc.i4.1
		IL_00f4: add
		IL_00f5: stfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_00fa: ret
	} // end of method List`1::InsertRange

	.method public hidebysig 
		instance int32 LastIndexOf (
			!T item
		) cil managed 
	{
		// Method begins at RVA 0x168368
		// Code size 32 (0x20)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0006: brtrue.s IL_000a

		IL_0008: ldc.i4.m1
		IL_0009: ret

		IL_000a: ldarg.0
		IL_000b: ldarg.1
		IL_000c: ldarg.0
		IL_000d: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0012: ldc.i4.1
		IL_0013: sub
		IL_0014: ldarg.0
		IL_0015: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_001a: call instance int32 class System.Collections.Generic.List`1<!T>::LastIndexOf(!0, int32, int32)
		IL_001f: ret
	} // end of method List`1::LastIndexOf

	.method public hidebysig 
		instance int32 LastIndexOf (
			!T item,
			int32 index
		) cil managed 
	{
		// Method begins at RVA 0x168389
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: ldarg.2
		IL_0001: ldarg.0
		IL_0002: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0007: blt.s IL_000e

		IL_0009: call void System.ThrowHelper::ThrowArgumentOutOfRange_IndexException()

		IL_000e: ldarg.0
		IL_000f: ldarg.1
		IL_0010: ldarg.2
		IL_0011: ldarg.2
		IL_0012: ldc.i4.1
		IL_0013: add
		IL_0014: call instance int32 class System.Collections.Generic.List`1<!T>::LastIndexOf(!0, int32, int32)
		IL_0019: ret
	} // end of method List`1::LastIndexOf

	.method public hidebysig 
		instance int32 LastIndexOf (
			!T item,
			int32 index,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0x1683a4
		// Code size 96 (0x60)
		.maxstack 4

		IL_0000: ldarg.0
		IL_0001: call instance int32 class System.Collections.Generic.List`1<!T>::get_Count()
		IL_0006: brfalse.s IL_0011

		IL_0008: ldarg.2
		IL_0009: ldc.i4.0
		IL_000a: bge.s IL_0011

		IL_000c: call void System.ThrowHelper::ThrowIndexArgumentOutOfRange_NeedNonNegNumException()

		IL_0011: ldarg.0
		IL_0012: call instance int32 class System.Collections.Generic.List`1<!T>::get_Count()
		IL_0017: brfalse.s IL_0026

		IL_0019: ldarg.3
		IL_001a: ldc.i4.0
		IL_001b: bge.s IL_0026

		IL_001d: ldc.i4.s 27
		IL_001f: ldc.i4.s 11
		IL_0021: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0026: ldarg.0
		IL_0027: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_002c: brtrue.s IL_0030

		IL_002e: ldc.i4.m1
		IL_002f: ret

		IL_0030: ldarg.2
		IL_0031: ldarg.0
		IL_0032: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0037: blt.s IL_0042

		IL_0039: ldc.i4.s 21
		IL_003b: ldc.i4.s 15
		IL_003d: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0042: ldarg.3
		IL_0043: ldarg.2
		IL_0044: ldc.i4.1
		IL_0045: add
		IL_0046: ble.s IL_0051

		IL_0048: ldc.i4.s 27
		IL_004a: ldc.i4.s 15
		IL_004c: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0051: ldarg.0
		IL_0052: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0057: ldarg.1
		IL_0058: ldarg.2
		IL_0059: ldarg.3
		IL_005a: call int32 System.Array::LastIndexOf<!T>(!!0[], !!0, int32, int32)
		IL_005f: ret
	} // end of method List`1::LastIndexOf

	.method public final hidebysig newslot virtual 
		instance bool Remove (
			!T item
		) cil managed 
	{
		// Method begins at RVA 0x168410
		// Code size 23 (0x17)
		.maxstack 2
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance int32 class System.Collections.Generic.List`1<!T>::IndexOf(!0)
		IL_0007: stloc.0
		IL_0008: ldloc.0
		IL_0009: ldc.i4.0
		IL_000a: blt.s IL_0015

		IL_000c: ldarg.0
		IL_000d: ldloc.0
		IL_000e: call instance void class System.Collections.Generic.List`1<!T>::RemoveAt(int32)
		IL_0013: ldc.i4.1
		IL_0014: ret

		IL_0015: ldc.i4.0
		IL_0016: ret
	} // end of method List`1::Remove

	.method private final hidebysig newslot virtual 
		instance void System.Collections.IList.Remove (
			object item
		) cil managed 
	{
		.override method instance void System.Collections.IList::Remove(object)
		// Method begins at RVA 0x168433
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call bool class System.Collections.Generic.List`1<!T>::IsCompatibleObject(object)
		IL_0006: brfalse.s IL_0015

		IL_0008: ldarg.0
		IL_0009: ldarg.1
		IL_000a: unbox.any !T
		IL_000f: call instance bool class System.Collections.Generic.List`1<!T>::Remove(!0)
		IL_0014: pop

		IL_0015: ret
	} // end of method List`1::System.Collections.IList.Remove

	.method public hidebysig 
		instance int32 RemoveAll (
			class System.Predicate`1<!T> match
		) cil managed 
	{
		// Method begins at RVA 0x16844c
		// Code size 206 (0xce)
		.maxstack 6
		.locals (
			[0] int32,
			[1] int32,
			[2] int32
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 26
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldc.i4.0
		IL_000b: stloc.0
		IL_000c: br.s IL_0012
		// loop start (head: IL_0012)
			IL_000e: ldloc.0
			IL_000f: ldc.i4.1
			IL_0010: add
			IL_0011: stloc.0

			IL_0012: ldloc.0
			IL_0013: ldarg.0
			IL_0014: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
			IL_0019: bge.s IL_002f

			IL_001b: ldarg.1
			IL_001c: ldarg.0
			IL_001d: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
			IL_0022: ldloc.0
			IL_0023: ldelem !T
			IL_0028: callvirt instance bool class System.Predicate`1<!T>::Invoke(!0)
			IL_002d: brfalse.s IL_000e
		// end loop

		IL_002f: ldloc.0
		IL_0030: ldarg.0
		IL_0031: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0036: blt.s IL_003a

		IL_0038: ldc.i4.0
		IL_0039: ret

		IL_003a: ldloc.0
		IL_003b: ldc.i4.1
		IL_003c: add
		IL_003d: stloc.1
		IL_003e: br.s IL_008a
		// loop start (head: IL_0044)
			IL_0040: ldloc.1
			IL_0041: ldc.i4.1
			IL_0042: add
			IL_0043: stloc.1

			IL_0044: ldloc.1
			IL_0045: ldarg.0
			IL_0046: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
			IL_004b: bge.s IL_0061

			IL_004d: ldarg.1
			IL_004e: ldarg.0
			IL_004f: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
			IL_0054: ldloc.1
			IL_0055: ldelem !T
			IL_005a: callvirt instance bool class System.Predicate`1<!T>::Invoke(!0)
			IL_005f: brtrue.s IL_0040
		// end loop

		IL_0061: ldloc.1
		IL_0062: ldarg.0
		IL_0063: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0068: bge.s IL_008a

		IL_006a: ldarg.0
		IL_006b: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0070: ldloc.0
		IL_0071: dup
		IL_0072: ldc.i4.1
		IL_0073: add
		IL_0074: stloc.0
		IL_0075: ldarg.0
		IL_0076: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_007b: ldloc.1
		IL_007c: dup
		IL_007d: ldc.i4.1
		IL_007e: add
		IL_007f: stloc.1
		IL_0080: ldelem !T
		IL_0085: stelem !T

		IL_008a: ldloc.1
		IL_008b: ldarg.0
		IL_008c: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0091: blt.s IL_0044

		IL_0093: call bool System.Runtime.CompilerServices.RuntimeHelpers::IsReferenceOrContainsReferences<!T>()
		IL_0098: brfalse.s IL_00ae

		IL_009a: ldarg.0
		IL_009b: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_00a0: ldloc.0
		IL_00a1: ldarg.0
		IL_00a2: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_00a7: ldloc.0
		IL_00a8: sub
		IL_00a9: call void System.Array::Clear(class System.Array, int32, int32)

		IL_00ae: ldarg.0
		IL_00af: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_00b4: ldloc.0
		IL_00b5: sub
		IL_00b6: stloc.2
		IL_00b7: ldarg.0
		IL_00b8: ldloc.0
		IL_00b9: stfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_00be: ldarg.0
		IL_00bf: ldarg.0
		IL_00c0: ldfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_00c5: ldc.i4.1
		IL_00c6: add
		IL_00c7: stfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_00cc: ldloc.2
		IL_00cd: ret
	} // end of method List`1::RemoveAll

	.method public final hidebysig newslot virtual 
		instance void RemoveAt (
			int32 index
		) cil managed 
	{
		// Method begins at RVA 0x168528
		// Code size 114 (0x72)
		.maxstack 6
		.locals (
			[0] !T
		)

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0007: blt.un.s IL_000e

		IL_0009: call void System.ThrowHelper::ThrowArgumentOutOfRange_IndexException()

		IL_000e: ldarg.0
		IL_000f: ldarg.0
		IL_0010: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0015: ldc.i4.1
		IL_0016: sub
		IL_0017: stfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_001c: ldarg.1
		IL_001d: ldarg.0
		IL_001e: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0023: bge.s IL_0042

		IL_0025: ldarg.0
		IL_0026: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_002b: ldarg.1
		IL_002c: ldc.i4.1
		IL_002d: add
		IL_002e: ldarg.0
		IL_002f: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0034: ldarg.1
		IL_0035: ldarg.0
		IL_0036: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_003b: ldarg.1
		IL_003c: sub
		IL_003d: call void System.Array::Copy(class System.Array, int32, class System.Array, int32, int32)

		IL_0042: call bool System.Runtime.CompilerServices.RuntimeHelpers::IsReferenceOrContainsReferences<!T>()
		IL_0047: brfalse.s IL_0063

		IL_0049: ldarg.0
		IL_004a: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_004f: ldarg.0
		IL_0050: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0055: ldloca.s 0
		IL_0057: initobj !T
		IL_005d: ldloc.0
		IL_005e: stelem !T

		IL_0063: ldarg.0
		IL_0064: ldarg.0
		IL_0065: ldfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_006a: ldc.i4.1
		IL_006b: add
		IL_006c: stfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_0071: ret
	} // end of method List`1::RemoveAt

	.method public hidebysig 
		instance void RemoveRange (
			int32 index,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0x1685a8
		// Code size 136 (0x88)
		.maxstack 6

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0009

		IL_0004: call void System.ThrowHelper::ThrowIndexArgumentOutOfRange_NeedNonNegNumException()

		IL_0009: ldarg.2
		IL_000a: ldc.i4.0
		IL_000b: bge.s IL_0016

		IL_000d: ldc.i4.s 27
		IL_000f: ldc.i4.s 11
		IL_0011: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0016: ldarg.0
		IL_0017: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_001c: ldarg.1
		IL_001d: sub
		IL_001e: ldarg.2
		IL_001f: bge.s IL_0028

		IL_0021: ldc.i4.s 13
		IL_0023: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0028: ldarg.2
		IL_0029: ldc.i4.0
		IL_002a: ble.s IL_0087

		IL_002c: ldarg.0
		IL_002d: ldarg.0
		IL_002e: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0033: ldarg.2
		IL_0034: sub
		IL_0035: stfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_003a: ldarg.1
		IL_003b: ldarg.0
		IL_003c: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0041: bge.s IL_0060

		IL_0043: ldarg.0
		IL_0044: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0049: ldarg.1
		IL_004a: ldarg.2
		IL_004b: add
		IL_004c: ldarg.0
		IL_004d: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0052: ldarg.1
		IL_0053: ldarg.0
		IL_0054: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0059: ldarg.1
		IL_005a: sub
		IL_005b: call void System.Array::Copy(class System.Array, int32, class System.Array, int32, int32)

		IL_0060: ldarg.0
		IL_0061: ldarg.0
		IL_0062: ldfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_0067: ldc.i4.1
		IL_0068: add
		IL_0069: stfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_006e: call bool System.Runtime.CompilerServices.RuntimeHelpers::IsReferenceOrContainsReferences<!T>()
		IL_0073: brfalse.s IL_0087

		IL_0075: ldarg.0
		IL_0076: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_007b: ldarg.0
		IL_007c: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0081: ldarg.2
		IL_0082: call void System.Array::Clear(class System.Array, int32, int32)

		IL_0087: ret
	} // end of method List`1::RemoveRange

	.method public hidebysig 
		instance void Reverse () cil managed 
	{
		// Method begins at RVA 0x16863c
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: ldarg.0
		IL_0003: call instance int32 class System.Collections.Generic.List`1<!T>::get_Count()
		IL_0008: call instance void class System.Collections.Generic.List`1<!T>::Reverse(int32, int32)
		IL_000d: ret
	} // end of method List`1::Reverse

	.method public hidebysig 
		instance void Reverse (
			int32 index,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0x16864c
		// Code size 72 (0x48)
		.maxstack 3

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0009

		IL_0004: call void System.ThrowHelper::ThrowIndexArgumentOutOfRange_NeedNonNegNumException()

		IL_0009: ldarg.2
		IL_000a: ldc.i4.0
		IL_000b: bge.s IL_0016

		IL_000d: ldc.i4.s 27
		IL_000f: ldc.i4.s 11
		IL_0011: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0016: ldarg.0
		IL_0017: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_001c: ldarg.1
		IL_001d: sub
		IL_001e: ldarg.2
		IL_001f: bge.s IL_0028

		IL_0021: ldc.i4.s 13
		IL_0023: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0028: ldarg.2
		IL_0029: ldc.i4.1
		IL_002a: ble.s IL_0039

		IL_002c: ldarg.0
		IL_002d: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0032: ldarg.1
		IL_0033: ldarg.2
		IL_0034: call void System.Array::Reverse<!T>(!!0[], int32, int32)

		IL_0039: ldarg.0
		IL_003a: ldarg.0
		IL_003b: ldfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_0040: ldc.i4.1
		IL_0041: add
		IL_0042: stfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_0047: ret
	} // end of method List`1::Reverse

	.method public hidebysig 
		instance void Sort () cil managed 
	{
		// Method begins at RVA 0x1686a0
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: ldarg.0
		IL_0003: call instance int32 class System.Collections.Generic.List`1<!T>::get_Count()
		IL_0008: ldnull
		IL_0009: call instance void class System.Collections.Generic.List`1<!T>::Sort(int32, int32, class System.Collections.Generic.IComparer`1<!0>)
		IL_000e: ret
	} // end of method List`1::Sort

	.method public hidebysig 
		instance void Sort (
			class System.Collections.Generic.IComparer`1<!T> comparer
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		// Method begins at RVA 0x1686b0
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: ldarg.0
		IL_0003: call instance int32 class System.Collections.Generic.List`1<!T>::get_Count()
		IL_0008: ldarg.1
		IL_0009: call instance void class System.Collections.Generic.List`1<!T>::Sort(int32, int32, class System.Collections.Generic.IComparer`1<!0>)
		IL_000e: ret
	} // end of method List`1::Sort

	.method public hidebysig 
		instance void Sort (
			int32 index,
			int32 count,
			class System.Collections.Generic.IComparer`1<!T> comparer
		) cil managed 
	{
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		// Method begins at RVA 0x1686c0
		// Code size 73 (0x49)
		.maxstack 4

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0009

		IL_0004: call void System.ThrowHelper::ThrowIndexArgumentOutOfRange_NeedNonNegNumException()

		IL_0009: ldarg.2
		IL_000a: ldc.i4.0
		IL_000b: bge.s IL_0016

		IL_000d: ldc.i4.s 27
		IL_000f: ldc.i4.s 11
		IL_0011: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0016: ldarg.0
		IL_0017: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_001c: ldarg.1
		IL_001d: sub
		IL_001e: ldarg.2
		IL_001f: bge.s IL_0028

		IL_0021: ldc.i4.s 13
		IL_0023: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0028: ldarg.2
		IL_0029: ldc.i4.1
		IL_002a: ble.s IL_003a

		IL_002c: ldarg.0
		IL_002d: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0032: ldarg.1
		IL_0033: ldarg.2
		IL_0034: ldarg.3
		IL_0035: call void System.Array::Sort<!T>(!!0[], int32, int32, class System.Collections.Generic.IComparer`1<!!0>)

		IL_003a: ldarg.0
		IL_003b: ldarg.0
		IL_003c: ldfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_0041: ldc.i4.1
		IL_0042: add
		IL_0043: stfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_0048: ret
	} // end of method List`1::Sort

	.method public hidebysig 
		instance void Sort (
			class System.Comparison`1<!T> comparison
		) cil managed 
	{
		// Method begins at RVA 0x168715
		// Code size 58 (0x3a)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 29
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0010: ldc.i4.1
		IL_0011: ble.s IL_002b

		IL_0013: ldarg.0
		IL_0014: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0019: ldc.i4.0
		IL_001a: ldarg.0
		IL_001b: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0020: newobj instance void valuetype System.Span`1<!T>::.ctor(!0[], int32, int32)
		IL_0025: ldarg.1
		IL_0026: call void class System.Collections.Generic.ArraySortHelper`1<!T>::Sort(valuetype System.Span`1<!0>, class System.Comparison`1<!0>)

		IL_002b: ldarg.0
		IL_002c: ldarg.0
		IL_002d: ldfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_0032: ldc.i4.1
		IL_0033: add
		IL_0034: stfld int32 class System.Collections.Generic.List`1<!T>::_version
		IL_0039: ret
	} // end of method List`1::Sort

	.method public hidebysig 
		instance !T[] ToArray () cil managed 
	{
		// Method begins at RVA 0x168750
		// Code size 46 (0x2e)
		.maxstack 3
		.locals (
			[0] !T[]
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0006: brtrue.s IL_000e

		IL_0008: ldsfld !0[] class System.Collections.Generic.List`1<!T>::s_emptyArray
		IL_000d: ret

		IL_000e: ldarg.0
		IL_000f: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0014: newarr !T
		IL_0019: stloc.0
		IL_001a: ldarg.0
		IL_001b: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0020: ldloc.0
		IL_0021: ldarg.0
		IL_0022: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0027: call void System.Array::Copy(class System.Array, class System.Array, int32)
		IL_002c: ldloc.0
		IL_002d: ret
	} // end of method List`1::ToArray

	.method public hidebysig 
		instance void TrimExcess () cil managed 
	{
		// Method begins at RVA 0x16878c
		// Code size 43 (0x2b)
		.maxstack 2
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
		IL_0006: ldlen
		IL_0007: conv.i4
		IL_0008: conv.r8
		IL_0009: ldc.r8 0.9
		IL_0012: mul
		IL_0013: conv.i4
		IL_0014: stloc.0
		IL_0015: ldarg.0
		IL_0016: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_001b: ldloc.0
		IL_001c: bge.s IL_002a

		IL_001e: ldarg.0
		IL_001f: ldarg.0
		IL_0020: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
		IL_0025: call instance void class System.Collections.Generic.List`1<!T>::set_Capacity(int32)

		IL_002a: ret
	} // end of method List`1::TrimExcess

	.method public hidebysig 
		instance bool TrueForAll (
			class System.Predicate`1<!T> match
		) cil managed 
	{
		// Method begins at RVA 0x1687c4
		// Code size 51 (0x33)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 26
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldc.i4.0
		IL_000b: stloc.0
		IL_000c: br.s IL_0028
		// loop start (head: IL_0028)
			IL_000e: ldarg.1
			IL_000f: ldarg.0
			IL_0010: ldfld !0[] class System.Collections.Generic.List`1<!T>::_items
			IL_0015: ldloc.0
			IL_0016: ldelem !T
			IL_001b: callvirt instance bool class System.Predicate`1<!T>::Invoke(!0)
			IL_0020: brtrue.s IL_0024

			IL_0022: ldc.i4.0
			IL_0023: ret

			IL_0024: ldloc.0
			IL_0025: ldc.i4.1
			IL_0026: add
			IL_0027: stloc.0

			IL_0028: ldloc.0
			IL_0029: ldarg.0
			IL_002a: ldfld int32 class System.Collections.Generic.List`1<!T>::_size
			IL_002f: blt.s IL_000e
		// end loop

		IL_0031: ldc.i4.1
		IL_0032: ret
	} // end of method List`1::TrueForAll

	.method private hidebysig specialname rtspecialname static 
		void .cctor () cil managed 
	{
		// Method begins at RVA 0x168803
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldc.i4.0
		IL_0001: newarr !T
		IL_0006: stsfld !0[] class System.Collections.Generic.List`1<!T>::s_emptyArray
		IL_000b: ret
	} // end of method List`1::.cctor

	// Properties
	.property instance int32 Capacity()
	{
		.get instance int32 System.Collections.Generic.List`1::get_Capacity()
		.set instance void System.Collections.Generic.List`1::set_Capacity(int32)
	}
	.property instance int32 Count()
	{
		.get instance int32 System.Collections.Generic.List`1::get_Count()
	}
	.property instance bool System.Collections.IList.IsFixedSize()
	{
		.get instance bool System.Collections.Generic.List`1::System.Collections.IList.get_IsFixedSize()
	}
	.property instance bool 'System.Collections.Generic.ICollection<T>.IsReadOnly'()
	{
		.get instance bool System.Collections.Generic.List`1::'System.Collections.Generic.ICollection<T>.get_IsReadOnly'()
	}
	.property instance bool System.Collections.IList.IsReadOnly()
	{
		.get instance bool System.Collections.Generic.List`1::System.Collections.IList.get_IsReadOnly()
	}
	.property instance bool System.Collections.ICollection.IsSynchronized()
	{
		.get instance bool System.Collections.Generic.List`1::System.Collections.ICollection.get_IsSynchronized()
	}
	.property instance object System.Collections.ICollection.SyncRoot()
	{
		.get instance object System.Collections.Generic.List`1::System.Collections.ICollection.get_SyncRoot()
	}
	.property instance !T Item(
		int32 index
	)
	{
		.get instance !0 System.Collections.Generic.List`1::get_Item(int32)
		.set instance void System.Collections.Generic.List`1::set_Item(int32, !0)
	}
	.property instance object System.Collections.IList.Item(
		int32 index
	)
	{
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.get instance object System.Collections.Generic.List`1::System.Collections.IList.get_Item(int32)
		.set instance void System.Collections.Generic.List`1::System.Collections.IList.set_Item(int32, object)
	}

} // end of class System.Collections.Generic.List`1