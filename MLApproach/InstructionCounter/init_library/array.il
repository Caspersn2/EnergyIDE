.class public auto ansi abstract serializable beforefieldinit System.Array
	extends System.Object
	implements .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.ICloneable,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.Collections.IList,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.Collections.ICollection,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.Collections.IEnumerable,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.Collections.IStructuralComparable,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.Collections.IStructuralEquatable
{
	.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
		01 00 01 00 00
	)
	.custom instance void System.Runtime.CompilerServices.TypeForwardedFromAttribute::.ctor(string) = (
		01 00 4b 6d 73 63 6f 72 6c 69 62 2c 20 56 65 72
		73 69 6f 6e 3d 34 2e 30 2e 30 2e 30 2c 20 43 75
		6c 74 75 72 65 3d 6e 65 75 74 72 61 6c 2c 20 50
		75 62 6c 69 63 4b 65 79 54 6f 6b 65 6e 3d 62 37
		37 61 35 63 35 36 31 39 33 34 65 30 38 39 00 00
	)
	// Nested Types
	.class nested private auto ansi abstract sealed beforefieldinit EmptyArray`1<T>
		extends System.Object
	{
		// Fields
		.field assembly static initonly !T[] Value

		// Methods
		.method private hidebysig specialname rtspecialname static 
			void .cctor () cil managed 
		{
			// Method begins at RVA 0x42626
			// Code size 12 (0xc)
			.maxstack 8

			IL_0000: ldc.i4.0
			IL_0001: newarr !T
			IL_0006: stsfld !0[] class System.Array/EmptyArray`1<!T>::Value
			IL_000b: ret
		} // end of method EmptyArray`1::.cctor

	} // end of class EmptyArray`1

	.class nested private sequential ansi sealed beforefieldinit SorterObjectArray
		extends System.ValueType
	{
		.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
			01 00 00 00
		)
		// Fields
		.field private initonly object[] keys
		.field private initonly object[] items
		.field private initonly class System.Collections.IComparer comparer

		// Methods
		.method assembly hidebysig specialname rtspecialname 
			instance void .ctor (
				object[] keys,
				object[] items,
				class System.Collections.IComparer comparer
			) cil managed 
		{
			// Method begins at RVA 0x42633
			// Code size 22 (0x16)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldarg.1
			IL_0002: stfld object[] System.Array/SorterObjectArray::keys
			IL_0007: ldarg.0
			IL_0008: ldarg.2
			IL_0009: stfld object[] System.Array/SorterObjectArray::items
			IL_000e: ldarg.0
			IL_000f: ldarg.3
			IL_0010: stfld class System.Collections.IComparer System.Array/SorterObjectArray::comparer
			IL_0015: ret
		} // end of method SorterObjectArray::.ctor

		.method assembly hidebysig 
			instance void SwapIfGreater (
				int32 a,
				int32 b
			) cil managed 
		{
			// Method begins at RVA 0x4264c
			// Code size 111 (0x6f)
			.maxstack 4
			.locals (
				[0] object,
				[1] object
			)

			IL_0000: ldarg.1
			IL_0001: ldarg.2
			IL_0002: beq.s IL_006e

			IL_0004: ldarg.0
			IL_0005: ldfld class System.Collections.IComparer System.Array/SorterObjectArray::comparer
			IL_000a: ldarg.0
			IL_000b: ldfld object[] System.Array/SorterObjectArray::keys
			IL_0010: ldarg.1
			IL_0011: ldelem.ref
			IL_0012: ldarg.0
			IL_0013: ldfld object[] System.Array/SorterObjectArray::keys
			IL_0018: ldarg.2
			IL_0019: ldelem.ref
			IL_001a: callvirt instance int32 System.Collections.IComparer::Compare(object, object)
			IL_001f: ldc.i4.0
			IL_0020: ble.s IL_006e

			IL_0022: ldarg.0
			IL_0023: ldfld object[] System.Array/SorterObjectArray::keys
			IL_0028: ldarg.1
			IL_0029: ldelem.ref
			IL_002a: stloc.0
			IL_002b: ldarg.0
			IL_002c: ldfld object[] System.Array/SorterObjectArray::keys
			IL_0031: ldarg.1
			IL_0032: ldarg.0
			IL_0033: ldfld object[] System.Array/SorterObjectArray::keys
			IL_0038: ldarg.2
			IL_0039: ldelem.ref
			IL_003a: stelem.ref
			IL_003b: ldarg.0
			IL_003c: ldfld object[] System.Array/SorterObjectArray::keys
			IL_0041: ldarg.2
			IL_0042: ldloc.0
			IL_0043: stelem.ref
			IL_0044: ldarg.0
			IL_0045: ldfld object[] System.Array/SorterObjectArray::items
			IL_004a: brfalse.s IL_006e

			IL_004c: ldarg.0
			IL_004d: ldfld object[] System.Array/SorterObjectArray::items
			IL_0052: ldarg.1
			IL_0053: ldelem.ref
			IL_0054: stloc.1
			IL_0055: ldarg.0
			IL_0056: ldfld object[] System.Array/SorterObjectArray::items
			IL_005b: ldarg.1
			IL_005c: ldarg.0
			IL_005d: ldfld object[] System.Array/SorterObjectArray::items
			IL_0062: ldarg.2
			IL_0063: ldelem.ref
			IL_0064: stelem.ref
			IL_0065: ldarg.0
			IL_0066: ldfld object[] System.Array/SorterObjectArray::items
			IL_006b: ldarg.2
			IL_006c: ldloc.1
			IL_006d: stelem.ref

			IL_006e: ret
		} // end of method SorterObjectArray::SwapIfGreater

		.method private hidebysig 
			instance void Swap (
				int32 i,
				int32 j
			) cil managed 
		{
			// Method begins at RVA 0x426c8
			// Code size 77 (0x4d)
			.maxstack 4
			.locals (
				[0] object,
				[1] object
			)

			IL_0000: ldarg.0
			IL_0001: ldfld object[] System.Array/SorterObjectArray::keys
			IL_0006: ldarg.1
			IL_0007: ldelem.ref
			IL_0008: stloc.0
			IL_0009: ldarg.0
			IL_000a: ldfld object[] System.Array/SorterObjectArray::keys
			IL_000f: ldarg.1
			IL_0010: ldarg.0
			IL_0011: ldfld object[] System.Array/SorterObjectArray::keys
			IL_0016: ldarg.2
			IL_0017: ldelem.ref
			IL_0018: stelem.ref
			IL_0019: ldarg.0
			IL_001a: ldfld object[] System.Array/SorterObjectArray::keys
			IL_001f: ldarg.2
			IL_0020: ldloc.0
			IL_0021: stelem.ref
			IL_0022: ldarg.0
			IL_0023: ldfld object[] System.Array/SorterObjectArray::items
			IL_0028: brfalse.s IL_004c

			IL_002a: ldarg.0
			IL_002b: ldfld object[] System.Array/SorterObjectArray::items
			IL_0030: ldarg.1
			IL_0031: ldelem.ref
			IL_0032: stloc.1
			IL_0033: ldarg.0
			IL_0034: ldfld object[] System.Array/SorterObjectArray::items
			IL_0039: ldarg.1
			IL_003a: ldarg.0
			IL_003b: ldfld object[] System.Array/SorterObjectArray::items
			IL_0040: ldarg.2
			IL_0041: ldelem.ref
			IL_0042: stelem.ref
			IL_0043: ldarg.0
			IL_0044: ldfld object[] System.Array/SorterObjectArray::items
			IL_0049: ldarg.2
			IL_004a: ldloc.1
			IL_004b: stelem.ref

			IL_004c: ret
		} // end of method SorterObjectArray::Swap

		.method assembly hidebysig 
			instance void Sort (
				int32 left,
				int32 length
			) cil managed 
		{
			// Method begins at RVA 0x42721
			// Code size 9 (0x9)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldarg.1
			IL_0002: ldarg.2
			IL_0003: call instance void System.Array/SorterObjectArray::IntrospectiveSort(int32, int32)
			IL_0008: ret
		} // end of method SorterObjectArray::Sort

		.method private hidebysig 
			instance void IntrospectiveSort (
				int32 left,
				int32 length
			) cil managed 
		{
			// Method begins at RVA 0x4272c
			// Code size 56 (0x38)
			.maxstack 6
			.locals (
				[0] class System.Exception
			)

			IL_0000: ldarg.2
			IL_0001: ldc.i4.2
			IL_0002: bge.s IL_0005

			IL_0004: ret

			IL_0005: nop
			.try
			{
				IL_0006: ldarg.0
				IL_0007: ldarg.1
				IL_0008: ldarg.2
				IL_0009: ldarg.1
				IL_000a: add
				IL_000b: ldc.i4.1
				IL_000c: sub
				IL_000d: ldc.i4.2
				IL_000e: ldarg.2
				IL_000f: call int32 System.Numerics.BitOperations::Log2(uint32)
				IL_0014: ldc.i4.1
				IL_0015: add
				IL_0016: mul
				IL_0017: call instance void System.Array/SorterObjectArray::IntroSort(int32, int32, int32)
				IL_001c: leave.s IL_0037
			} // end .try
			catch System.IndexOutOfRangeException
			{
				IL_001e: pop
				IL_001f: ldarg.0
				IL_0020: ldfld class System.Collections.IComparer System.Array/SorterObjectArray::comparer
				IL_0025: call void System.ThrowHelper::ThrowArgumentException_BadComparer(object)
				IL_002a: leave.s IL_0037
			} // end handler
			catch System.Exception
			{
				IL_002c: stloc.0
				IL_002d: ldc.i4.s 61
				IL_002f: ldloc.0
				IL_0030: call void System.ThrowHelper::ThrowInvalidOperationException(valuetype System.ExceptionResource, class System.Exception)
				IL_0035: leave.s IL_0037
			} // end handler

			IL_0037: ret
		} // end of method SorterObjectArray::IntrospectiveSort

		.method private hidebysig 
			instance void IntroSort (
				int32 lo,
				int32 hi,
				int32 depthLimit
			) cil managed 
		{
			// Method begins at RVA 0x4278c
			// Code size 115 (0x73)
			.maxstack 4
			.locals (
				[0] int32,
				[1] int32
			)

			IL_0000: br.s IL_006e
			// loop start (head: IL_006e)
				IL_0002: ldarg.2
				IL_0003: ldarg.1
				IL_0004: sub
				IL_0005: ldc.i4.1
				IL_0006: add
				IL_0007: stloc.0
				IL_0008: ldloc.0
				IL_0009: ldc.i4.s 16
				IL_000b: bgt.s IL_0044

				IL_000d: ldloc.0
				IL_000e: ldc.i4.2
				IL_000f: bne.un.s IL_001a

				IL_0011: ldarg.0
				IL_0012: ldarg.1
				IL_0013: ldarg.2
				IL_0014: call instance void System.Array/SorterObjectArray::SwapIfGreater(int32, int32)
				IL_0019: ret

				IL_001a: ldloc.0
				IL_001b: ldc.i4.3
				IL_001c: bne.un.s IL_003b

				IL_001e: ldarg.0
				IL_001f: ldarg.1
				IL_0020: ldarg.2
				IL_0021: ldc.i4.1
				IL_0022: sub
				IL_0023: call instance void System.Array/SorterObjectArray::SwapIfGreater(int32, int32)
				IL_0028: ldarg.0
				IL_0029: ldarg.1
				IL_002a: ldarg.2
				IL_002b: call instance void System.Array/SorterObjectArray::SwapIfGreater(int32, int32)
				IL_0030: ldarg.0
				IL_0031: ldarg.2
				IL_0032: ldc.i4.1
				IL_0033: sub
				IL_0034: ldarg.2
				IL_0035: call instance void System.Array/SorterObjectArray::SwapIfGreater(int32, int32)
				IL_003a: ret

				IL_003b: ldarg.0
				IL_003c: ldarg.1
				IL_003d: ldarg.2
				IL_003e: call instance void System.Array/SorterObjectArray::InsertionSort(int32, int32)
				IL_0043: ret

				IL_0044: ldarg.3
				IL_0045: brtrue.s IL_0050

				IL_0047: ldarg.0
				IL_0048: ldarg.1
				IL_0049: ldarg.2
				IL_004a: call instance void System.Array/SorterObjectArray::Heapsort(int32, int32)
				IL_004f: ret

				IL_0050: ldarg.3
				IL_0051: ldc.i4.1
				IL_0052: sub
				IL_0053: starg.s depthLimit
				IL_0055: ldarg.0
				IL_0056: ldarg.1
				IL_0057: ldarg.2
				IL_0058: call instance int32 System.Array/SorterObjectArray::PickPivotAndPartition(int32, int32)
				IL_005d: stloc.1
				IL_005e: ldarg.0
				IL_005f: ldloc.1
				IL_0060: ldc.i4.1
				IL_0061: add
				IL_0062: ldarg.2
				IL_0063: ldarg.3
				IL_0064: call instance void System.Array/SorterObjectArray::IntroSort(int32, int32, int32)
				IL_0069: ldloc.1
				IL_006a: ldc.i4.1
				IL_006b: sub
				IL_006c: starg.s hi

				IL_006e: ldarg.2
				IL_006f: ldarg.1
				IL_0070: bgt.s IL_0002
			// end loop

			IL_0072: ret
		} // end of method SorterObjectArray::IntroSort

		.method private hidebysig 
			instance int32 PickPivotAndPartition (
				int32 lo,
				int32 hi
			) cil managed 
		{
			// Method begins at RVA 0x4280c
			// Code size 147 (0x93)
			.maxstack 5
			.locals (
				[0] int32,
				[1] object,
				[2] int32,
				[3] int32
			)

			IL_0000: ldarg.1
			IL_0001: ldarg.2
			IL_0002: ldarg.1
			IL_0003: sub
			IL_0004: ldc.i4.2
			IL_0005: div
			IL_0006: add
			IL_0007: stloc.0
			IL_0008: ldarg.0
			IL_0009: ldarg.1
			IL_000a: ldloc.0
			IL_000b: call instance void System.Array/SorterObjectArray::SwapIfGreater(int32, int32)
			IL_0010: ldarg.0
			IL_0011: ldarg.1
			IL_0012: ldarg.2
			IL_0013: call instance void System.Array/SorterObjectArray::SwapIfGreater(int32, int32)
			IL_0018: ldarg.0
			IL_0019: ldloc.0
			IL_001a: ldarg.2
			IL_001b: call instance void System.Array/SorterObjectArray::SwapIfGreater(int32, int32)
			IL_0020: ldarg.0
			IL_0021: ldfld object[] System.Array/SorterObjectArray::keys
			IL_0026: ldloc.0
			IL_0027: ldelem.ref
			IL_0028: stloc.1
			IL_0029: ldarg.0
			IL_002a: ldloc.0
			IL_002b: ldarg.2
			IL_002c: ldc.i4.1
			IL_002d: sub
			IL_002e: call instance void System.Array/SorterObjectArray::Swap(int32, int32)
			IL_0033: ldarg.1
			IL_0034: stloc.2
			IL_0035: ldarg.2
			IL_0036: ldc.i4.1
			IL_0037: sub
			IL_0038: stloc.3
			IL_0039: br.s IL_007d
			// loop start (head: IL_007d)
				IL_003b: ldarg.0
				IL_003c: ldfld class System.Collections.IComparer System.Array/SorterObjectArray::comparer
				IL_0041: ldarg.0
				IL_0042: ldfld object[] System.Array/SorterObjectArray::keys
				IL_0047: ldloc.2
				IL_0048: ldc.i4.1
				IL_0049: add
				IL_004a: dup
				IL_004b: stloc.2
				IL_004c: ldelem.ref
				IL_004d: ldloc.1
				IL_004e: callvirt instance int32 System.Collections.IComparer::Compare(object, object)
				IL_0053: ldc.i4.0
				IL_0054: blt.s IL_003b
				// loop start (head: IL_0056)
					IL_0056: ldarg.0
					IL_0057: ldfld class System.Collections.IComparer System.Array/SorterObjectArray::comparer
					IL_005c: ldloc.1
					IL_005d: ldarg.0
					IL_005e: ldfld object[] System.Array/SorterObjectArray::keys
					IL_0063: ldloc.3
					IL_0064: ldc.i4.1
					IL_0065: sub
					IL_0066: dup
					IL_0067: stloc.3
					IL_0068: ldelem.ref
					IL_0069: callvirt instance int32 System.Collections.IComparer::Compare(object, object)
					IL_006e: ldc.i4.0
					IL_006f: blt.s IL_0056
				// end loop

				IL_0071: ldloc.2
				IL_0072: ldloc.3
				IL_0073: bge.s IL_0081

				IL_0075: ldarg.0
				IL_0076: ldloc.2
				IL_0077: ldloc.3
				IL_0078: call instance void System.Array/SorterObjectArray::Swap(int32, int32)

				IL_007d: ldloc.2
				IL_007e: ldloc.3
				IL_007f: blt.s IL_003b
			// end loop

			IL_0081: ldloc.2
			IL_0082: ldarg.2
			IL_0083: ldc.i4.1
			IL_0084: sub
			IL_0085: beq.s IL_0091

			IL_0087: ldarg.0
			IL_0088: ldloc.2
			IL_0089: ldarg.2
			IL_008a: ldc.i4.1
			IL_008b: sub
			IL_008c: call instance void System.Array/SorterObjectArray::Swap(int32, int32)

			IL_0091: ldloc.2
			IL_0092: ret
		} // end of method SorterObjectArray::PickPivotAndPartition

		.method private hidebysig 
			instance void Heapsort (
				int32 lo,
				int32 hi
			) cil managed 
		{
			// Method begins at RVA 0x428ac
			// Code size 65 (0x41)
			.maxstack 4
			.locals (
				[0] int32,
				[1] int32,
				[2] int32
			)

			IL_0000: ldarg.2
			IL_0001: ldarg.1
			IL_0002: sub
			IL_0003: ldc.i4.1
			IL_0004: add
			IL_0005: stloc.0
			IL_0006: ldloc.0
			IL_0007: ldc.i4.2
			IL_0008: div
			IL_0009: stloc.1
			IL_000a: br.s IL_0019
			// loop start (head: IL_0019)
				IL_000c: ldarg.0
				IL_000d: ldloc.1
				IL_000e: ldloc.0
				IL_000f: ldarg.1
				IL_0010: call instance void System.Array/SorterObjectArray::DownHeap(int32, int32, int32)
				IL_0015: ldloc.1
				IL_0016: ldc.i4.1
				IL_0017: sub
				IL_0018: stloc.1

				IL_0019: ldloc.1
				IL_001a: ldc.i4.1
				IL_001b: bge.s IL_000c
			// end loop

			IL_001d: ldloc.0
			IL_001e: stloc.2
			IL_001f: br.s IL_003c
			// loop start (head: IL_003c)
				IL_0021: ldarg.0
				IL_0022: ldarg.1
				IL_0023: ldarg.1
				IL_0024: ldloc.2
				IL_0025: add
				IL_0026: ldc.i4.1
				IL_0027: sub
				IL_0028: call instance void System.Array/SorterObjectArray::Swap(int32, int32)
				IL_002d: ldarg.0
				IL_002e: ldc.i4.1
				IL_002f: ldloc.2
				IL_0030: ldc.i4.1
				IL_0031: sub
				IL_0032: ldarg.1
				IL_0033: call instance void System.Array/SorterObjectArray::DownHeap(int32, int32, int32)
				IL_0038: ldloc.2
				IL_0039: ldc.i4.1
				IL_003a: sub
				IL_003b: stloc.2

				IL_003c: ldloc.2
				IL_003d: ldc.i4.1
				IL_003e: bgt.s IL_0021
			// end loop

			IL_0040: ret
		} // end of method SorterObjectArray::Heapsort

		.method private hidebysig 
			instance void DownHeap (
				int32 i,
				int32 n,
				int32 lo
			) cil managed 
		{
			// Method begins at RVA 0x428fc
			// Code size 216 (0xd8)
			.maxstack 5
			.locals (
				[0] object,
				[1] object,
				[2] int32
			)

			IL_0000: ldarg.0
			IL_0001: ldfld object[] System.Array/SorterObjectArray::keys
			IL_0006: ldarg.3
			IL_0007: ldarg.1
			IL_0008: add
			IL_0009: ldc.i4.1
			IL_000a: sub
			IL_000b: ldelem.ref
			IL_000c: stloc.0
			IL_000d: ldarg.0
			IL_000e: ldfld object[] System.Array/SorterObjectArray::items
			IL_0013: dup
			IL_0014: brtrue.s IL_001a

			IL_0016: pop
			IL_0017: ldnull
			IL_0018: br.s IL_0020

			IL_001a: ldarg.3
			IL_001b: ldarg.1
			IL_001c: add
			IL_001d: ldc.i4.1
			IL_001e: sub
			IL_001f: ldelem.ref

			IL_0020: stloc.1
			IL_0021: br IL_00ac
			// loop start (head: IL_00ac)
				IL_0026: ldc.i4.2
				IL_0027: ldarg.1
				IL_0028: mul
				IL_0029: stloc.2
				IL_002a: ldloc.2
				IL_002b: ldarg.2
				IL_002c: bge.s IL_0056

				IL_002e: ldarg.0
				IL_002f: ldfld class System.Collections.IComparer System.Array/SorterObjectArray::comparer
				IL_0034: ldarg.0
				IL_0035: ldfld object[] System.Array/SorterObjectArray::keys
				IL_003a: ldarg.3
				IL_003b: ldloc.2
				IL_003c: add
				IL_003d: ldc.i4.1
				IL_003e: sub
				IL_003f: ldelem.ref
				IL_0040: ldarg.0
				IL_0041: ldfld object[] System.Array/SorterObjectArray::keys
				IL_0046: ldarg.3
				IL_0047: ldloc.2
				IL_0048: add
				IL_0049: ldelem.ref
				IL_004a: callvirt instance int32 System.Collections.IComparer::Compare(object, object)
				IL_004f: ldc.i4.0
				IL_0050: bge.s IL_0056

				IL_0052: ldloc.2
				IL_0053: ldc.i4.1
				IL_0054: add
				IL_0055: stloc.2

				IL_0056: ldarg.0
				IL_0057: ldfld class System.Collections.IComparer System.Array/SorterObjectArray::comparer
				IL_005c: ldloc.0
				IL_005d: ldarg.0
				IL_005e: ldfld object[] System.Array/SorterObjectArray::keys
				IL_0063: ldarg.3
				IL_0064: ldloc.2
				IL_0065: add
				IL_0066: ldc.i4.1
				IL_0067: sub
				IL_0068: ldelem.ref
				IL_0069: callvirt instance int32 System.Collections.IComparer::Compare(object, object)
				IL_006e: ldc.i4.0
				IL_006f: bge.s IL_00b5

				IL_0071: ldarg.0
				IL_0072: ldfld object[] System.Array/SorterObjectArray::keys
				IL_0077: ldarg.3
				IL_0078: ldarg.1
				IL_0079: add
				IL_007a: ldc.i4.1
				IL_007b: sub
				IL_007c: ldarg.0
				IL_007d: ldfld object[] System.Array/SorterObjectArray::keys
				IL_0082: ldarg.3
				IL_0083: ldloc.2
				IL_0084: add
				IL_0085: ldc.i4.1
				IL_0086: sub
				IL_0087: ldelem.ref
				IL_0088: stelem.ref
				IL_0089: ldarg.0
				IL_008a: ldfld object[] System.Array/SorterObjectArray::items
				IL_008f: brfalse.s IL_00a9

				IL_0091: ldarg.0
				IL_0092: ldfld object[] System.Array/SorterObjectArray::items
				IL_0097: ldarg.3
				IL_0098: ldarg.1
				IL_0099: add
				IL_009a: ldc.i4.1
				IL_009b: sub
				IL_009c: ldarg.0
				IL_009d: ldfld object[] System.Array/SorterObjectArray::items
				IL_00a2: ldarg.3
				IL_00a3: ldloc.2
				IL_00a4: add
				IL_00a5: ldc.i4.1
				IL_00a6: sub
				IL_00a7: ldelem.ref
				IL_00a8: stelem.ref

				IL_00a9: ldloc.2
				IL_00aa: starg.s i

				IL_00ac: ldarg.1
				IL_00ad: ldarg.2
				IL_00ae: ldc.i4.2
				IL_00af: div
				IL_00b0: ble IL_0026
			// end loop

			IL_00b5: ldarg.0
			IL_00b6: ldfld object[] System.Array/SorterObjectArray::keys
			IL_00bb: ldarg.3
			IL_00bc: ldarg.1
			IL_00bd: add
			IL_00be: ldc.i4.1
			IL_00bf: sub
			IL_00c0: ldloc.0
			IL_00c1: stelem.ref
			IL_00c2: ldarg.0
			IL_00c3: ldfld object[] System.Array/SorterObjectArray::items
			IL_00c8: brfalse.s IL_00d7

			IL_00ca: ldarg.0
			IL_00cb: ldfld object[] System.Array/SorterObjectArray::items
			IL_00d0: ldarg.3
			IL_00d1: ldarg.1
			IL_00d2: add
			IL_00d3: ldc.i4.1
			IL_00d4: sub
			IL_00d5: ldloc.1
			IL_00d6: stelem.ref

			IL_00d7: ret
		} // end of method SorterObjectArray::DownHeap

		.method private hidebysig 
			instance void InsertionSort (
				int32 lo,
				int32 hi
			) cil managed 
		{
			// Method begins at RVA 0x429e0
			// Code size 157 (0x9d)
			.maxstack 4
			.locals (
				[0] int32,
				[1] int32,
				[2] object,
				[3] object
			)

			IL_0000: ldarg.1
			IL_0001: stloc.0
			IL_0002: br IL_0095
			// loop start (head: IL_0095)
				IL_0007: ldloc.0
				IL_0008: stloc.1
				IL_0009: ldarg.0
				IL_000a: ldfld object[] System.Array/SorterObjectArray::keys
				IL_000f: ldloc.0
				IL_0010: ldc.i4.1
				IL_0011: add
				IL_0012: ldelem.ref
				IL_0013: stloc.2
				IL_0014: ldarg.0
				IL_0015: ldfld object[] System.Array/SorterObjectArray::items
				IL_001a: dup
				IL_001b: brtrue.s IL_0021

				IL_001d: pop
				IL_001e: ldnull
				IL_001f: br.s IL_0025

				IL_0021: ldloc.0
				IL_0022: ldc.i4.1
				IL_0023: add
				IL_0024: ldelem.ref

				IL_0025: stloc.3
				IL_0026: br.s IL_0058
				// loop start (head: IL_0058)
					IL_0028: ldarg.0
					IL_0029: ldfld object[] System.Array/SorterObjectArray::keys
					IL_002e: ldloc.1
					IL_002f: ldc.i4.1
					IL_0030: add
					IL_0031: ldarg.0
					IL_0032: ldfld object[] System.Array/SorterObjectArray::keys
					IL_0037: ldloc.1
					IL_0038: ldelem.ref
					IL_0039: stelem.ref
					IL_003a: ldarg.0
					IL_003b: ldfld object[] System.Array/SorterObjectArray::items
					IL_0040: brfalse.s IL_0054

					IL_0042: ldarg.0
					IL_0043: ldfld object[] System.Array/SorterObjectArray::items
					IL_0048: ldloc.1
					IL_0049: ldc.i4.1
					IL_004a: add
					IL_004b: ldarg.0
					IL_004c: ldfld object[] System.Array/SorterObjectArray::items
					IL_0051: ldloc.1
					IL_0052: ldelem.ref
					IL_0053: stelem.ref

					IL_0054: ldloc.1
					IL_0055: ldc.i4.1
					IL_0056: sub
					IL_0057: stloc.1

					IL_0058: ldloc.1
					IL_0059: ldarg.1
					IL_005a: blt.s IL_0073

					IL_005c: ldarg.0
					IL_005d: ldfld class System.Collections.IComparer System.Array/SorterObjectArray::comparer
					IL_0062: ldloc.2
					IL_0063: ldarg.0
					IL_0064: ldfld object[] System.Array/SorterObjectArray::keys
					IL_0069: ldloc.1
					IL_006a: ldelem.ref
					IL_006b: callvirt instance int32 System.Collections.IComparer::Compare(object, object)
					IL_0070: ldc.i4.0
					IL_0071: blt.s IL_0028
				// end loop

				IL_0073: ldarg.0
				IL_0074: ldfld object[] System.Array/SorterObjectArray::keys
				IL_0079: ldloc.1
				IL_007a: ldc.i4.1
				IL_007b: add
				IL_007c: ldloc.2
				IL_007d: stelem.ref
				IL_007e: ldarg.0
				IL_007f: ldfld object[] System.Array/SorterObjectArray::items
				IL_0084: brfalse.s IL_0091

				IL_0086: ldarg.0
				IL_0087: ldfld object[] System.Array/SorterObjectArray::items
				IL_008c: ldloc.1
				IL_008d: ldc.i4.1
				IL_008e: add
				IL_008f: ldloc.3
				IL_0090: stelem.ref

				IL_0091: ldloc.0
				IL_0092: ldc.i4.1
				IL_0093: add
				IL_0094: stloc.0

				IL_0095: ldloc.0
				IL_0096: ldarg.2
				IL_0097: blt IL_0007
			// end loop

			IL_009c: ret
		} // end of method SorterObjectArray::InsertionSort

	} // end of class SorterObjectArray

	.class nested private sequential ansi sealed beforefieldinit SorterGenericArray
		extends System.ValueType
	{
		.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
			01 00 00 00
		)
		// Fields
		.field private initonly class System.Array keys
		.field private initonly class System.Array items
		.field private initonly class System.Collections.IComparer comparer

		// Methods
		.method assembly hidebysig specialname rtspecialname 
			instance void .ctor (
				class System.Array keys,
				class System.Array items,
				class System.Collections.IComparer comparer
			) cil managed 
		{
			// Method begins at RVA 0x42a89
			// Code size 22 (0x16)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldarg.1
			IL_0002: stfld class System.Array System.Array/SorterGenericArray::keys
			IL_0007: ldarg.0
			IL_0008: ldarg.2
			IL_0009: stfld class System.Array System.Array/SorterGenericArray::items
			IL_000e: ldarg.0
			IL_000f: ldarg.3
			IL_0010: stfld class System.Collections.IComparer System.Array/SorterGenericArray::comparer
			IL_0015: ret
		} // end of method SorterGenericArray::.ctor

		.method assembly hidebysig 
			instance void SwapIfGreater (
				int32 a,
				int32 b
			) cil managed 
		{
			// Method begins at RVA 0x42aa0
			// Code size 154 (0x9a)
			.maxstack 4
			.locals (
				[0] object,
				[1] object
			)

			IL_0000: ldarg.1
			IL_0001: ldarg.2
			IL_0002: beq IL_0099

			IL_0007: ldarg.0
			IL_0008: ldfld class System.Collections.IComparer System.Array/SorterGenericArray::comparer
			IL_000d: ldarg.0
			IL_000e: ldfld class System.Array System.Array/SorterGenericArray::keys
			IL_0013: ldarg.1
			IL_0014: callvirt instance object System.Array::GetValue(int32)
			IL_0019: ldarg.0
			IL_001a: ldfld class System.Array System.Array/SorterGenericArray::keys
			IL_001f: ldarg.2
			IL_0020: callvirt instance object System.Array::GetValue(int32)
			IL_0025: callvirt instance int32 System.Collections.IComparer::Compare(object, object)
			IL_002a: ldc.i4.0
			IL_002b: ble.s IL_0099

			IL_002d: ldarg.0
			IL_002e: ldfld class System.Array System.Array/SorterGenericArray::keys
			IL_0033: ldarg.1
			IL_0034: callvirt instance object System.Array::GetValue(int32)
			IL_0039: stloc.0
			IL_003a: ldarg.0
			IL_003b: ldfld class System.Array System.Array/SorterGenericArray::keys
			IL_0040: ldarg.0
			IL_0041: ldfld class System.Array System.Array/SorterGenericArray::keys
			IL_0046: ldarg.2
			IL_0047: callvirt instance object System.Array::GetValue(int32)
			IL_004c: ldarg.1
			IL_004d: callvirt instance void System.Array::SetValue(object, int32)
			IL_0052: ldarg.0
			IL_0053: ldfld class System.Array System.Array/SorterGenericArray::keys
			IL_0058: ldloc.0
			IL_0059: ldarg.2
			IL_005a: callvirt instance void System.Array::SetValue(object, int32)
			IL_005f: ldarg.0
			IL_0060: ldfld class System.Array System.Array/SorterGenericArray::items
			IL_0065: brfalse.s IL_0099

			IL_0067: ldarg.0
			IL_0068: ldfld class System.Array System.Array/SorterGenericArray::items
			IL_006d: ldarg.1
			IL_006e: callvirt instance object System.Array::GetValue(int32)
			IL_0073: stloc.1
			IL_0074: ldarg.0
			IL_0075: ldfld class System.Array System.Array/SorterGenericArray::items
			IL_007a: ldarg.0
			IL_007b: ldfld class System.Array System.Array/SorterGenericArray::items
			IL_0080: ldarg.2
			IL_0081: callvirt instance object System.Array::GetValue(int32)
			IL_0086: ldarg.1
			IL_0087: callvirt instance void System.Array::SetValue(object, int32)
			IL_008c: ldarg.0
			IL_008d: ldfld class System.Array System.Array/SorterGenericArray::items
			IL_0092: ldloc.1
			IL_0093: ldarg.2
			IL_0094: callvirt instance void System.Array::SetValue(object, int32)

			IL_0099: ret
		} // end of method SorterGenericArray::SwapIfGreater

		.method private hidebysig 
			instance void Swap (
				int32 i,
				int32 j
			) cil managed 
		{
			// Method begins at RVA 0x42b48
			// Code size 109 (0x6d)
			.maxstack 3
			.locals (
				[0] object,
				[1] object
			)

			IL_0000: ldarg.0
			IL_0001: ldfld class System.Array System.Array/SorterGenericArray::keys
			IL_0006: ldarg.1
			IL_0007: callvirt instance object System.Array::GetValue(int32)
			IL_000c: stloc.0
			IL_000d: ldarg.0
			IL_000e: ldfld class System.Array System.Array/SorterGenericArray::keys
			IL_0013: ldarg.0
			IL_0014: ldfld class System.Array System.Array/SorterGenericArray::keys
			IL_0019: ldarg.2
			IL_001a: callvirt instance object System.Array::GetValue(int32)
			IL_001f: ldarg.1
			IL_0020: callvirt instance void System.Array::SetValue(object, int32)
			IL_0025: ldarg.0
			IL_0026: ldfld class System.Array System.Array/SorterGenericArray::keys
			IL_002b: ldloc.0
			IL_002c: ldarg.2
			IL_002d: callvirt instance void System.Array::SetValue(object, int32)
			IL_0032: ldarg.0
			IL_0033: ldfld class System.Array System.Array/SorterGenericArray::items
			IL_0038: brfalse.s IL_006c

			IL_003a: ldarg.0
			IL_003b: ldfld class System.Array System.Array/SorterGenericArray::items
			IL_0040: ldarg.1
			IL_0041: callvirt instance object System.Array::GetValue(int32)
			IL_0046: stloc.1
			IL_0047: ldarg.0
			IL_0048: ldfld class System.Array System.Array/SorterGenericArray::items
			IL_004d: ldarg.0
			IL_004e: ldfld class System.Array System.Array/SorterGenericArray::items
			IL_0053: ldarg.2
			IL_0054: callvirt instance object System.Array::GetValue(int32)
			IL_0059: ldarg.1
			IL_005a: callvirt instance void System.Array::SetValue(object, int32)
			IL_005f: ldarg.0
			IL_0060: ldfld class System.Array System.Array/SorterGenericArray::items
			IL_0065: ldloc.1
			IL_0066: ldarg.2
			IL_0067: callvirt instance void System.Array::SetValue(object, int32)

			IL_006c: ret
		} // end of method SorterGenericArray::Swap

		.method assembly hidebysig 
			instance void Sort (
				int32 left,
				int32 length
			) cil managed 
		{
			// Method begins at RVA 0x42bc1
			// Code size 9 (0x9)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldarg.1
			IL_0002: ldarg.2
			IL_0003: call instance void System.Array/SorterGenericArray::IntrospectiveSort(int32, int32)
			IL_0008: ret
		} // end of method SorterGenericArray::Sort

		.method private hidebysig 
			instance void IntrospectiveSort (
				int32 left,
				int32 length
			) cil managed 
		{
			// Method begins at RVA 0x42bcc
			// Code size 56 (0x38)
			.maxstack 6
			.locals (
				[0] class System.Exception
			)

			IL_0000: ldarg.2
			IL_0001: ldc.i4.2
			IL_0002: bge.s IL_0005

			IL_0004: ret

			IL_0005: nop
			.try
			{
				IL_0006: ldarg.0
				IL_0007: ldarg.1
				IL_0008: ldarg.2
				IL_0009: ldarg.1
				IL_000a: add
				IL_000b: ldc.i4.1
				IL_000c: sub
				IL_000d: ldc.i4.2
				IL_000e: ldarg.2
				IL_000f: call int32 System.Numerics.BitOperations::Log2(uint32)
				IL_0014: ldc.i4.1
				IL_0015: add
				IL_0016: mul
				IL_0017: call instance void System.Array/SorterGenericArray::IntroSort(int32, int32, int32)
				IL_001c: leave.s IL_0037
			} // end .try
			catch System.IndexOutOfRangeException
			{
				IL_001e: pop
				IL_001f: ldarg.0
				IL_0020: ldfld class System.Collections.IComparer System.Array/SorterGenericArray::comparer
				IL_0025: call void System.ThrowHelper::ThrowArgumentException_BadComparer(object)
				IL_002a: leave.s IL_0037
			} // end handler
			catch System.Exception
			{
				IL_002c: stloc.0
				IL_002d: ldc.i4.s 61
				IL_002f: ldloc.0
				IL_0030: call void System.ThrowHelper::ThrowInvalidOperationException(valuetype System.ExceptionResource, class System.Exception)
				IL_0035: leave.s IL_0037
			} // end handler

			IL_0037: ret
		} // end of method SorterGenericArray::IntrospectiveSort

		.method private hidebysig 
			instance void IntroSort (
				int32 lo,
				int32 hi,
				int32 depthLimit
			) cil managed 
		{
			// Method begins at RVA 0x42c2c
			// Code size 115 (0x73)
			.maxstack 4
			.locals (
				[0] int32,
				[1] int32
			)

			IL_0000: br.s IL_006e
			// loop start (head: IL_006e)
				IL_0002: ldarg.2
				IL_0003: ldarg.1
				IL_0004: sub
				IL_0005: ldc.i4.1
				IL_0006: add
				IL_0007: stloc.0
				IL_0008: ldloc.0
				IL_0009: ldc.i4.s 16
				IL_000b: bgt.s IL_0044

				IL_000d: ldloc.0
				IL_000e: ldc.i4.2
				IL_000f: bne.un.s IL_001a

				IL_0011: ldarg.0
				IL_0012: ldarg.1
				IL_0013: ldarg.2
				IL_0014: call instance void System.Array/SorterGenericArray::SwapIfGreater(int32, int32)
				IL_0019: ret

				IL_001a: ldloc.0
				IL_001b: ldc.i4.3
				IL_001c: bne.un.s IL_003b

				IL_001e: ldarg.0
				IL_001f: ldarg.1
				IL_0020: ldarg.2
				IL_0021: ldc.i4.1
				IL_0022: sub
				IL_0023: call instance void System.Array/SorterGenericArray::SwapIfGreater(int32, int32)
				IL_0028: ldarg.0
				IL_0029: ldarg.1
				IL_002a: ldarg.2
				IL_002b: call instance void System.Array/SorterGenericArray::SwapIfGreater(int32, int32)
				IL_0030: ldarg.0
				IL_0031: ldarg.2
				IL_0032: ldc.i4.1
				IL_0033: sub
				IL_0034: ldarg.2
				IL_0035: call instance void System.Array/SorterGenericArray::SwapIfGreater(int32, int32)
				IL_003a: ret

				IL_003b: ldarg.0
				IL_003c: ldarg.1
				IL_003d: ldarg.2
				IL_003e: call instance void System.Array/SorterGenericArray::InsertionSort(int32, int32)
				IL_0043: ret

				IL_0044: ldarg.3
				IL_0045: brtrue.s IL_0050

				IL_0047: ldarg.0
				IL_0048: ldarg.1
				IL_0049: ldarg.2
				IL_004a: call instance void System.Array/SorterGenericArray::Heapsort(int32, int32)
				IL_004f: ret

				IL_0050: ldarg.3
				IL_0051: ldc.i4.1
				IL_0052: sub
				IL_0053: starg.s depthLimit
				IL_0055: ldarg.0
				IL_0056: ldarg.1
				IL_0057: ldarg.2
				IL_0058: call instance int32 System.Array/SorterGenericArray::PickPivotAndPartition(int32, int32)
				IL_005d: stloc.1
				IL_005e: ldarg.0
				IL_005f: ldloc.1
				IL_0060: ldc.i4.1
				IL_0061: add
				IL_0062: ldarg.2
				IL_0063: ldarg.3
				IL_0064: call instance void System.Array/SorterGenericArray::IntroSort(int32, int32, int32)
				IL_0069: ldloc.1
				IL_006a: ldc.i4.1
				IL_006b: sub
				IL_006c: starg.s hi

				IL_006e: ldarg.2
				IL_006f: ldarg.1
				IL_0070: bgt.s IL_0002
			// end loop

			IL_0072: ret
		} // end of method SorterGenericArray::IntroSort

		.method private hidebysig 
			instance int32 PickPivotAndPartition (
				int32 lo,
				int32 hi
			) cil managed 
		{
			// Method begins at RVA 0x42cac
			// Code size 159 (0x9f)
			.maxstack 5
			.locals (
				[0] int32,
				[1] object,
				[2] int32,
				[3] int32
			)

			IL_0000: ldarg.1
			IL_0001: ldarg.2
			IL_0002: ldarg.1
			IL_0003: sub
			IL_0004: ldc.i4.2
			IL_0005: div
			IL_0006: add
			IL_0007: stloc.0
			IL_0008: ldarg.0
			IL_0009: ldarg.1
			IL_000a: ldloc.0
			IL_000b: call instance void System.Array/SorterGenericArray::SwapIfGreater(int32, int32)
			IL_0010: ldarg.0
			IL_0011: ldarg.1
			IL_0012: ldarg.2
			IL_0013: call instance void System.Array/SorterGenericArray::SwapIfGreater(int32, int32)
			IL_0018: ldarg.0
			IL_0019: ldloc.0
			IL_001a: ldarg.2
			IL_001b: call instance void System.Array/SorterGenericArray::SwapIfGreater(int32, int32)
			IL_0020: ldarg.0
			IL_0021: ldfld class System.Array System.Array/SorterGenericArray::keys
			IL_0026: ldloc.0
			IL_0027: callvirt instance object System.Array::GetValue(int32)
			IL_002c: stloc.1
			IL_002d: ldarg.0
			IL_002e: ldloc.0
			IL_002f: ldarg.2
			IL_0030: ldc.i4.1
			IL_0031: sub
			IL_0032: call instance void System.Array/SorterGenericArray::Swap(int32, int32)
			IL_0037: ldarg.1
			IL_0038: stloc.2
			IL_0039: ldarg.2
			IL_003a: ldc.i4.1
			IL_003b: sub
			IL_003c: stloc.3
			IL_003d: br.s IL_0089
			// loop start (head: IL_0089)
				IL_003f: ldarg.0
				IL_0040: ldfld class System.Collections.IComparer System.Array/SorterGenericArray::comparer
				IL_0045: ldarg.0
				IL_0046: ldfld class System.Array System.Array/SorterGenericArray::keys
				IL_004b: ldloc.2
				IL_004c: ldc.i4.1
				IL_004d: add
				IL_004e: dup
				IL_004f: stloc.2
				IL_0050: callvirt instance object System.Array::GetValue(int32)
				IL_0055: ldloc.1
				IL_0056: callvirt instance int32 System.Collections.IComparer::Compare(object, object)
				IL_005b: ldc.i4.0
				IL_005c: blt.s IL_003f
				// loop start (head: IL_005e)
					IL_005e: ldarg.0
					IL_005f: ldfld class System.Collections.IComparer System.Array/SorterGenericArray::comparer
					IL_0064: ldloc.1
					IL_0065: ldarg.0
					IL_0066: ldfld class System.Array System.Array/SorterGenericArray::keys
					IL_006b: ldloc.3
					IL_006c: ldc.i4.1
					IL_006d: sub
					IL_006e: dup
					IL_006f: stloc.3
					IL_0070: callvirt instance object System.Array::GetValue(int32)
					IL_0075: callvirt instance int32 System.Collections.IComparer::Compare(object, object)
					IL_007a: ldc.i4.0
					IL_007b: blt.s IL_005e
				// end loop

				IL_007d: ldloc.2
				IL_007e: ldloc.3
				IL_007f: bge.s IL_008d

				IL_0081: ldarg.0
				IL_0082: ldloc.2
				IL_0083: ldloc.3
				IL_0084: call instance void System.Array/SorterGenericArray::Swap(int32, int32)

				IL_0089: ldloc.2
				IL_008a: ldloc.3
				IL_008b: blt.s IL_003f
			// end loop

			IL_008d: ldloc.2
			IL_008e: ldarg.2
			IL_008f: ldc.i4.1
			IL_0090: sub
			IL_0091: beq.s IL_009d

			IL_0093: ldarg.0
			IL_0094: ldloc.2
			IL_0095: ldarg.2
			IL_0096: ldc.i4.1
			IL_0097: sub
			IL_0098: call instance void System.Array/SorterGenericArray::Swap(int32, int32)

			IL_009d: ldloc.2
			IL_009e: ret
		} // end of method SorterGenericArray::PickPivotAndPartition

		.method private hidebysig 
			instance void Heapsort (
				int32 lo,
				int32 hi
			) cil managed 
		{
			// Method begins at RVA 0x42d58
			// Code size 65 (0x41)
			.maxstack 4
			.locals (
				[0] int32,
				[1] int32,
				[2] int32
			)

			IL_0000: ldarg.2
			IL_0001: ldarg.1
			IL_0002: sub
			IL_0003: ldc.i4.1
			IL_0004: add
			IL_0005: stloc.0
			IL_0006: ldloc.0
			IL_0007: ldc.i4.2
			IL_0008: div
			IL_0009: stloc.1
			IL_000a: br.s IL_0019
			// loop start (head: IL_0019)
				IL_000c: ldarg.0
				IL_000d: ldloc.1
				IL_000e: ldloc.0
				IL_000f: ldarg.1
				IL_0010: call instance void System.Array/SorterGenericArray::DownHeap(int32, int32, int32)
				IL_0015: ldloc.1
				IL_0016: ldc.i4.1
				IL_0017: sub
				IL_0018: stloc.1

				IL_0019: ldloc.1
				IL_001a: ldc.i4.1
				IL_001b: bge.s IL_000c
			// end loop

			IL_001d: ldloc.0
			IL_001e: stloc.2
			IL_001f: br.s IL_003c
			// loop start (head: IL_003c)
				IL_0021: ldarg.0
				IL_0022: ldarg.1
				IL_0023: ldarg.1
				IL_0024: ldloc.2
				IL_0025: add
				IL_0026: ldc.i4.1
				IL_0027: sub
				IL_0028: call instance void System.Array/SorterGenericArray::Swap(int32, int32)
				IL_002d: ldarg.0
				IL_002e: ldc.i4.1
				IL_002f: ldloc.2
				IL_0030: ldc.i4.1
				IL_0031: sub
				IL_0032: ldarg.1
				IL_0033: call instance void System.Array/SorterGenericArray::DownHeap(int32, int32, int32)
				IL_0038: ldloc.2
				IL_0039: ldc.i4.1
				IL_003a: sub
				IL_003b: stloc.2

				IL_003c: ldloc.2
				IL_003d: ldc.i4.1
				IL_003e: bgt.s IL_0021
			// end loop

			IL_0040: ret
		} // end of method SorterGenericArray::Heapsort

		.method private hidebysig 
			instance void DownHeap (
				int32 i,
				int32 n,
				int32 lo
			) cil managed 
		{
			// Method begins at RVA 0x42da8
			// Code size 260 (0x104)
			.maxstack 5
			.locals (
				[0] object,
				[1] object,
				[2] int32
			)

			IL_0000: ldarg.0
			IL_0001: ldfld class System.Array System.Array/SorterGenericArray::keys
			IL_0006: ldarg.3
			IL_0007: ldarg.1
			IL_0008: add
			IL_0009: ldc.i4.1
			IL_000a: sub
			IL_000b: callvirt instance object System.Array::GetValue(int32)
			IL_0010: stloc.0
			IL_0011: ldarg.0
			IL_0012: ldfld class System.Array System.Array/SorterGenericArray::items
			IL_0017: dup
			IL_0018: brtrue.s IL_001e

			IL_001a: pop
			IL_001b: ldnull
			IL_001c: br.s IL_0028

			IL_001e: ldarg.3
			IL_001f: ldarg.1
			IL_0020: add
			IL_0021: ldc.i4.1
			IL_0022: sub
			IL_0023: call instance object System.Array::GetValue(int32)

			IL_0028: stloc.1
			IL_0029: br IL_00d0
			// loop start (head: IL_00d0)
				IL_002e: ldc.i4.2
				IL_002f: ldarg.1
				IL_0030: mul
				IL_0031: stloc.2
				IL_0032: ldloc.2
				IL_0033: ldarg.2
				IL_0034: bge.s IL_0066

				IL_0036: ldarg.0
				IL_0037: ldfld class System.Collections.IComparer System.Array/SorterGenericArray::comparer
				IL_003c: ldarg.0
				IL_003d: ldfld class System.Array System.Array/SorterGenericArray::keys
				IL_0042: ldarg.3
				IL_0043: ldloc.2
				IL_0044: add
				IL_0045: ldc.i4.1
				IL_0046: sub
				IL_0047: callvirt instance object System.Array::GetValue(int32)
				IL_004c: ldarg.0
				IL_004d: ldfld class System.Array System.Array/SorterGenericArray::keys
				IL_0052: ldarg.3
				IL_0053: ldloc.2
				IL_0054: add
				IL_0055: callvirt instance object System.Array::GetValue(int32)
				IL_005a: callvirt instance int32 System.Collections.IComparer::Compare(object, object)
				IL_005f: ldc.i4.0
				IL_0060: bge.s IL_0066

				IL_0062: ldloc.2
				IL_0063: ldc.i4.1
				IL_0064: add
				IL_0065: stloc.2

				IL_0066: ldarg.0
				IL_0067: ldfld class System.Collections.IComparer System.Array/SorterGenericArray::comparer
				IL_006c: ldloc.0
				IL_006d: ldarg.0
				IL_006e: ldfld class System.Array System.Array/SorterGenericArray::keys
				IL_0073: ldarg.3
				IL_0074: ldloc.2
				IL_0075: add
				IL_0076: ldc.i4.1
				IL_0077: sub
				IL_0078: callvirt instance object System.Array::GetValue(int32)
				IL_007d: callvirt instance int32 System.Collections.IComparer::Compare(object, object)
				IL_0082: ldc.i4.0
				IL_0083: bge.s IL_00d9

				IL_0085: ldarg.0
				IL_0086: ldfld class System.Array System.Array/SorterGenericArray::keys
				IL_008b: ldarg.0
				IL_008c: ldfld class System.Array System.Array/SorterGenericArray::keys
				IL_0091: ldarg.3
				IL_0092: ldloc.2
				IL_0093: add
				IL_0094: ldc.i4.1
				IL_0095: sub
				IL_0096: callvirt instance object System.Array::GetValue(int32)
				IL_009b: ldarg.3
				IL_009c: ldarg.1
				IL_009d: add
				IL_009e: ldc.i4.1
				IL_009f: sub
				IL_00a0: callvirt instance void System.Array::SetValue(object, int32)
				IL_00a5: ldarg.0
				IL_00a6: ldfld class System.Array System.Array/SorterGenericArray::items
				IL_00ab: brfalse.s IL_00cd

				IL_00ad: ldarg.0
				IL_00ae: ldfld class System.Array System.Array/SorterGenericArray::items
				IL_00b3: ldarg.0
				IL_00b4: ldfld class System.Array System.Array/SorterGenericArray::items
				IL_00b9: ldarg.3
				IL_00ba: ldloc.2
				IL_00bb: add
				IL_00bc: ldc.i4.1
				IL_00bd: sub
				IL_00be: callvirt instance object System.Array::GetValue(int32)
				IL_00c3: ldarg.3
				IL_00c4: ldarg.1
				IL_00c5: add
				IL_00c6: ldc.i4.1
				IL_00c7: sub
				IL_00c8: callvirt instance void System.Array::SetValue(object, int32)

				IL_00cd: ldloc.2
				IL_00ce: starg.s i

				IL_00d0: ldarg.1
				IL_00d1: ldarg.2
				IL_00d2: ldc.i4.2
				IL_00d3: div
				IL_00d4: ble IL_002e
			// end loop

			IL_00d9: ldarg.0
			IL_00da: ldfld class System.Array System.Array/SorterGenericArray::keys
			IL_00df: ldloc.0
			IL_00e0: ldarg.3
			IL_00e1: ldarg.1
			IL_00e2: add
			IL_00e3: ldc.i4.1
			IL_00e4: sub
			IL_00e5: callvirt instance void System.Array::SetValue(object, int32)
			IL_00ea: ldarg.0
			IL_00eb: ldfld class System.Array System.Array/SorterGenericArray::items
			IL_00f0: brfalse.s IL_0103

			IL_00f2: ldarg.0
			IL_00f3: ldfld class System.Array System.Array/SorterGenericArray::items
			IL_00f8: ldloc.1
			IL_00f9: ldarg.3
			IL_00fa: ldarg.1
			IL_00fb: add
			IL_00fc: ldc.i4.1
			IL_00fd: sub
			IL_00fe: callvirt instance void System.Array::SetValue(object, int32)

			IL_0103: ret
		} // end of method SorterGenericArray::DownHeap

		.method private hidebysig 
			instance void InsertionSort (
				int32 lo,
				int32 hi
			) cil managed 
		{
			// Method begins at RVA 0x42eb8
			// Code size 193 (0xc1)
			.maxstack 4
			.locals (
				[0] int32,
				[1] int32,
				[2] object,
				[3] object
			)

			IL_0000: ldarg.1
			IL_0001: stloc.0
			IL_0002: br IL_00b9
			// loop start (head: IL_00b9)
				IL_0007: ldloc.0
				IL_0008: stloc.1
				IL_0009: ldarg.0
				IL_000a: ldfld class System.Array System.Array/SorterGenericArray::keys
				IL_000f: ldloc.0
				IL_0010: ldc.i4.1
				IL_0011: add
				IL_0012: callvirt instance object System.Array::GetValue(int32)
				IL_0017: stloc.2
				IL_0018: ldarg.0
				IL_0019: ldfld class System.Array System.Array/SorterGenericArray::items
				IL_001e: dup
				IL_001f: brtrue.s IL_0025

				IL_0021: pop
				IL_0022: ldnull
				IL_0023: br.s IL_002d

				IL_0025: ldloc.0
				IL_0026: ldc.i4.1
				IL_0027: add
				IL_0028: call instance object System.Array::GetValue(int32)

				IL_002d: stloc.3
				IL_002e: br.s IL_0070
				// loop start (head: IL_0070)
					IL_0030: ldarg.0
					IL_0031: ldfld class System.Array System.Array/SorterGenericArray::keys
					IL_0036: ldarg.0
					IL_0037: ldfld class System.Array System.Array/SorterGenericArray::keys
					IL_003c: ldloc.1
					IL_003d: callvirt instance object System.Array::GetValue(int32)
					IL_0042: ldloc.1
					IL_0043: ldc.i4.1
					IL_0044: add
					IL_0045: callvirt instance void System.Array::SetValue(object, int32)
					IL_004a: ldarg.0
					IL_004b: ldfld class System.Array System.Array/SorterGenericArray::items
					IL_0050: brfalse.s IL_006c

					IL_0052: ldarg.0
					IL_0053: ldfld class System.Array System.Array/SorterGenericArray::items
					IL_0058: ldarg.0
					IL_0059: ldfld class System.Array System.Array/SorterGenericArray::items
					IL_005e: ldloc.1
					IL_005f: callvirt instance object System.Array::GetValue(int32)
					IL_0064: ldloc.1
					IL_0065: ldc.i4.1
					IL_0066: add
					IL_0067: callvirt instance void System.Array::SetValue(object, int32)

					IL_006c: ldloc.1
					IL_006d: ldc.i4.1
					IL_006e: sub
					IL_006f: stloc.1

					IL_0070: ldloc.1
					IL_0071: ldarg.1
					IL_0072: blt.s IL_008f

					IL_0074: ldarg.0
					IL_0075: ldfld class System.Collections.IComparer System.Array/SorterGenericArray::comparer
					IL_007a: ldloc.2
					IL_007b: ldarg.0
					IL_007c: ldfld class System.Array System.Array/SorterGenericArray::keys
					IL_0081: ldloc.1
					IL_0082: callvirt instance object System.Array::GetValue(int32)
					IL_0087: callvirt instance int32 System.Collections.IComparer::Compare(object, object)
					IL_008c: ldc.i4.0
					IL_008d: blt.s IL_0030
				// end loop

				IL_008f: ldarg.0
				IL_0090: ldfld class System.Array System.Array/SorterGenericArray::keys
				IL_0095: ldloc.2
				IL_0096: ldloc.1
				IL_0097: ldc.i4.1
				IL_0098: add
				IL_0099: callvirt instance void System.Array::SetValue(object, int32)
				IL_009e: ldarg.0
				IL_009f: ldfld class System.Array System.Array/SorterGenericArray::items
				IL_00a4: brfalse.s IL_00b5

				IL_00a6: ldarg.0
				IL_00a7: ldfld class System.Array System.Array/SorterGenericArray::items
				IL_00ac: ldloc.3
				IL_00ad: ldloc.1
				IL_00ae: ldc.i4.1
				IL_00af: add
				IL_00b0: callvirt instance void System.Array::SetValue(object, int32)

				IL_00b5: ldloc.0
				IL_00b6: ldc.i4.1
				IL_00b7: add
				IL_00b8: stloc.0

				IL_00b9: ldloc.0
				IL_00ba: ldarg.2
				IL_00bb: blt IL_0007
			// end loop

			IL_00c0: ret
		} // end of method SorterGenericArray::InsertionSort

	} // end of class SorterGenericArray


	// Methods
	.method public hidebysig static 
		class System.Array CreateInstance (
			class System.Type elementType,
			int32 length
		) cil managed 
	{
		// Method begins at RVA 0x401b0
		// Code size 80 (0x50)
		.maxstack 4
		.locals (
			[0] class System.RuntimeType,
			[1] valuetype System.RuntimeTypeHandle
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 82
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.1
		IL_000b: ldc.i4.0
		IL_000c: bge.s IL_0013

		IL_000e: call void System.ThrowHelper::ThrowLengthArgumentOutOfRange_ArgumentOutOfRange_NeedNonNegNum()

		IL_0013: ldarg.0
		IL_0014: callvirt instance class System.Type System.Type::get_UnderlyingSystemType()
		IL_0019: isinst System.RuntimeType
		IL_001e: stloc.0
		IL_001f: ldloc.0
		IL_0020: ldnull
		IL_0021: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0026: brfalse.s IL_0031

		IL_0028: ldc.i4.s 54
		IL_002a: ldc.i4.s 82
		IL_002c: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource, valuetype System.ExceptionArgument)

		IL_0031: ldloc.0
		IL_0032: callvirt instance valuetype System.RuntimeTypeHandle System.Type::get_TypeHandle()
		IL_0037: stloc.1
		IL_0038: ldloca.s 1
		IL_003a: call instance native int System.RuntimeTypeHandle::get_Value()
		IL_003f: call void* System.IntPtr::op_Explicit(native int)
		IL_0044: ldc.i4.1
		IL_0045: ldarga.s length
		IL_0047: conv.u
		IL_0048: ldc.i4.0
		IL_0049: conv.u
		IL_004a: call class System.Array System.Array::InternalCreate(void*, int32, int32*, int32*)
		IL_004f: ret
	} // end of method Array::CreateInstance

	.method public hidebysig static 
		class System.Array CreateInstance (
			class System.Type elementType,
			int32 length1,
			int32 length2
		) cil managed 
	{
		// Method begins at RVA 0x4020c
		// Code size 108 (0x6c)
		.maxstack 4
		.locals (
			[0] class System.RuntimeType,
			[1] int32*,
			[2] valuetype System.RuntimeTypeHandle
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 82
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.1
		IL_000b: ldc.i4.0
		IL_000c: bge.s IL_0017

		IL_000e: ldc.i4.s 78
		IL_0010: ldc.i4.s 11
		IL_0012: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0017: ldarg.2
		IL_0018: ldc.i4.0
		IL_0019: bge.s IL_0024

		IL_001b: ldc.i4.s 79
		IL_001d: ldc.i4.s 11
		IL_001f: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0024: ldarg.0
		IL_0025: callvirt instance class System.Type System.Type::get_UnderlyingSystemType()
		IL_002a: isinst System.RuntimeType
		IL_002f: stloc.0
		IL_0030: ldloc.0
		IL_0031: ldnull
		IL_0032: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0037: brfalse.s IL_0042

		IL_0039: ldc.i4.s 54
		IL_003b: ldc.i4.s 82
		IL_003d: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource, valuetype System.ExceptionArgument)

		IL_0042: ldc.i4.8
		IL_0043: conv.u
		IL_0044: localloc
		IL_0046: stloc.1
		IL_0047: ldloc.1
		IL_0048: ldarg.1
		IL_0049: stind.i4
		IL_004a: ldloc.1
		IL_004b: ldc.i4.4
		IL_004c: add
		IL_004d: ldarg.2
		IL_004e: stind.i4
		IL_004f: ldloc.0
		IL_0050: callvirt instance valuetype System.RuntimeTypeHandle System.Type::get_TypeHandle()
		IL_0055: stloc.2
		IL_0056: ldloca.s 2
		IL_0058: call instance native int System.RuntimeTypeHandle::get_Value()
		IL_005d: call void* System.IntPtr::op_Explicit(native int)
		IL_0062: ldc.i4.2
		IL_0063: ldloc.1
		IL_0064: ldc.i4.0
		IL_0065: conv.u
		IL_0066: call class System.Array System.Array::InternalCreate(void*, int32, int32*, int32*)
		IL_006b: ret
	} // end of method Array::CreateInstance

	.method public hidebysig static 
		class System.Array CreateInstance (
			class System.Type elementType,
			int32 length1,
			int32 length2,
			int32 length3
		) cil managed 
	{
		// Method begins at RVA 0x40284
		// Code size 130 (0x82)
		.maxstack 4
		.locals (
			[0] class System.RuntimeType,
			[1] int32*,
			[2] valuetype System.RuntimeTypeHandle
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 82
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.1
		IL_000b: ldc.i4.0
		IL_000c: bge.s IL_0017

		IL_000e: ldc.i4.s 78
		IL_0010: ldc.i4.s 11
		IL_0012: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0017: ldarg.2
		IL_0018: ldc.i4.0
		IL_0019: bge.s IL_0024

		IL_001b: ldc.i4.s 79
		IL_001d: ldc.i4.s 11
		IL_001f: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0024: ldarg.3
		IL_0025: ldc.i4.0
		IL_0026: bge.s IL_0031

		IL_0028: ldc.i4.s 80
		IL_002a: ldc.i4.s 11
		IL_002c: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0031: ldarg.0
		IL_0032: callvirt instance class System.Type System.Type::get_UnderlyingSystemType()
		IL_0037: isinst System.RuntimeType
		IL_003c: stloc.0
		IL_003d: ldloc.0
		IL_003e: ldnull
		IL_003f: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0044: brfalse.s IL_004f

		IL_0046: ldc.i4.s 54
		IL_0048: ldc.i4.s 82
		IL_004a: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource, valuetype System.ExceptionArgument)

		IL_004f: ldc.i4.s 12
		IL_0051: conv.u
		IL_0052: localloc
		IL_0054: stloc.1
		IL_0055: ldloc.1
		IL_0056: ldarg.1
		IL_0057: stind.i4
		IL_0058: ldloc.1
		IL_0059: ldc.i4.4
		IL_005a: add
		IL_005b: ldarg.2
		IL_005c: stind.i4
		IL_005d: ldloc.1
		IL_005e: ldc.i4.2
		IL_005f: conv.i
		IL_0060: ldc.i4.4
		IL_0061: mul
		IL_0062: add
		IL_0063: ldarg.3
		IL_0064: stind.i4
		IL_0065: ldloc.0
		IL_0066: callvirt instance valuetype System.RuntimeTypeHandle System.Type::get_TypeHandle()
		IL_006b: stloc.2
		IL_006c: ldloca.s 2
		IL_006e: call instance native int System.RuntimeTypeHandle::get_Value()
		IL_0073: call void* System.IntPtr::op_Explicit(native int)
		IL_0078: ldc.i4.3
		IL_0079: ldloc.1
		IL_007a: ldc.i4.0
		IL_007b: conv.u
		IL_007c: call class System.Array System.Array::InternalCreate(void*, int32, int32*, int32*)
		IL_0081: ret
	} // end of method Array::CreateInstance

	.method public hidebysig static 
		class System.Array CreateInstance (
			class System.Type elementType,
			int32[] lengths
		) cil managed 
	{
		.param [2]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x40314
		// Code size 134 (0x86)
		.maxstack 4
		.locals (
			[0] class System.RuntimeType,
			[1] int32,
			[2] int32*,
			[3] int32& pinned,
			[4] valuetype System.RuntimeTypeHandle
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 82
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.1
		IL_000b: brtrue.s IL_0014

		IL_000d: ldc.i4.s 71
		IL_000f: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0014: ldarg.1
		IL_0015: ldlen
		IL_0016: brtrue.s IL_001f

		IL_0018: ldc.i4.s 58
		IL_001a: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_001f: ldarg.0
		IL_0020: callvirt instance class System.Type System.Type::get_UnderlyingSystemType()
		IL_0025: isinst System.RuntimeType
		IL_002a: stloc.0
		IL_002b: ldloc.0
		IL_002c: ldnull
		IL_002d: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0032: brfalse.s IL_003d

		IL_0034: ldc.i4.s 54
		IL_0036: ldc.i4.s 82
		IL_0038: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource, valuetype System.ExceptionArgument)

		IL_003d: ldc.i4.0
		IL_003e: stloc.1
		IL_003f: br.s IL_0055
		// loop start (head: IL_0055)
			IL_0041: ldarg.1
			IL_0042: ldloc.1
			IL_0043: ldelem.i4
			IL_0044: ldc.i4.0
			IL_0045: bge.s IL_0051

			IL_0047: ldc.i4.s 71
			IL_0049: ldloc.1
			IL_004a: ldc.i4.s 11
			IL_004c: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, int32, valuetype System.ExceptionResource)

			IL_0051: ldloc.1
			IL_0052: ldc.i4.1
			IL_0053: add
			IL_0054: stloc.1

			IL_0055: ldloc.1
			IL_0056: ldarg.1
			IL_0057: ldlen
			IL_0058: conv.i4
			IL_0059: blt.s IL_0041
		// end loop

		IL_005b: ldarg.1
		IL_005c: ldc.i4.0
		IL_005d: ldelema System.Int32
		IL_0062: stloc.3
		IL_0063: ldloc.3
		IL_0064: conv.u
		IL_0065: stloc.2
		IL_0066: ldloc.0
		IL_0067: callvirt instance valuetype System.RuntimeTypeHandle System.Type::get_TypeHandle()
		IL_006c: stloc.s 4
		IL_006e: ldloca.s 4
		IL_0070: call instance native int System.RuntimeTypeHandle::get_Value()
		IL_0075: call void* System.IntPtr::op_Explicit(native int)
		IL_007a: ldarg.1
		IL_007b: ldlen
		IL_007c: conv.i4
		IL_007d: ldloc.2
		IL_007e: ldc.i4.0
		IL_007f: conv.u
		IL_0080: call class System.Array System.Array::InternalCreate(void*, int32, int32*, int32*)
		IL_0085: ret
	} // end of method Array::CreateInstance

	.method public hidebysig static 
		class System.Array CreateInstance (
			class System.Type elementType,
			int32[] lengths,
			int32[] lowerBounds
		) cil managed 
	{
		// Method begins at RVA 0x403a8
		// Code size 179 (0xb3)
		.maxstack 4
		.locals (
			[0] class System.RuntimeType,
			[1] int32,
			[2] int32*,
			[3] int32& pinned,
			[4] int32*,
			[5] int32& pinned,
			[6] valuetype System.RuntimeTypeHandle
		)

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0007: brfalse.s IL_0010

		IL_0009: ldc.i4.s 82
		IL_000b: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0010: ldarg.1
		IL_0011: brtrue.s IL_001a

		IL_0013: ldc.i4.s 71
		IL_0015: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_001a: ldarg.2
		IL_001b: brtrue.s IL_0024

		IL_001d: ldc.i4.s 70
		IL_001f: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0024: ldarg.1
		IL_0025: ldlen
		IL_0026: conv.i4
		IL_0027: ldarg.2
		IL_0028: ldlen
		IL_0029: conv.i4
		IL_002a: beq.s IL_0033

		IL_002c: ldc.i4.s 60
		IL_002e: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0033: ldarg.1
		IL_0034: ldlen
		IL_0035: brtrue.s IL_003e

		IL_0037: ldc.i4.s 58
		IL_0039: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_003e: ldarg.0
		IL_003f: callvirt instance class System.Type System.Type::get_UnderlyingSystemType()
		IL_0044: isinst System.RuntimeType
		IL_0049: stloc.0
		IL_004a: ldloc.0
		IL_004b: ldnull
		IL_004c: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0051: brfalse.s IL_005c

		IL_0053: ldc.i4.s 54
		IL_0055: ldc.i4.s 82
		IL_0057: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource, valuetype System.ExceptionArgument)

		IL_005c: ldc.i4.0
		IL_005d: stloc.1
		IL_005e: br.s IL_0074
		// loop start (head: IL_0074)
			IL_0060: ldarg.1
			IL_0061: ldloc.1
			IL_0062: ldelem.i4
			IL_0063: ldc.i4.0
			IL_0064: bge.s IL_0070

			IL_0066: ldc.i4.s 71
			IL_0068: ldloc.1
			IL_0069: ldc.i4.s 11
			IL_006b: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, int32, valuetype System.ExceptionResource)

			IL_0070: ldloc.1
			IL_0071: ldc.i4.1
			IL_0072: add
			IL_0073: stloc.1

			IL_0074: ldloc.1
			IL_0075: ldarg.1
			IL_0076: ldlen
			IL_0077: conv.i4
			IL_0078: blt.s IL_0060
		// end loop

		IL_007a: ldarg.1
		IL_007b: ldc.i4.0
		IL_007c: ldelema System.Int32
		IL_0081: stloc.3
		IL_0082: ldloc.3
		IL_0083: conv.u
		IL_0084: stloc.2
		IL_0085: ldarg.2
		IL_0086: ldc.i4.0
		IL_0087: ldelema System.Int32
		IL_008c: stloc.s 5
		IL_008e: ldloc.s 5
		IL_0090: conv.u
		IL_0091: stloc.s 4
		IL_0093: ldloc.0
		IL_0094: callvirt instance valuetype System.RuntimeTypeHandle System.Type::get_TypeHandle()
		IL_0099: stloc.s 6
		IL_009b: ldloca.s 6
		IL_009d: call instance native int System.RuntimeTypeHandle::get_Value()
		IL_00a2: call void* System.IntPtr::op_Explicit(native int)
		IL_00a7: ldarg.1
		IL_00a8: ldlen
		IL_00a9: conv.i4
		IL_00aa: ldloc.2
		IL_00ab: ldloc.s 4
		IL_00ad: call class System.Array System.Array::InternalCreate(void*, int32, int32*, int32*)
		IL_00b2: ret
	} // end of method Array::CreateInstance

	.method private hidebysig static 
		class System.Array InternalCreate (
			void* elementType,
			int32 rank,
			int32* pLengths,
			int32* pLowerBounds
		) cil managed internalcall 
	{
	} // end of method Array::InternalCreate

	.method public hidebysig static 
		void Copy (
			class System.Array sourceArray,
			class System.Array destinationArray,
			int32 length
		) cil managed 
	{
		// Method begins at RVA 0x40468
		// Code size 151 (0x97)
		.maxstack 6
		.locals (
			[0] valuetype System.Runtime.CompilerServices.MethodTable*,
			[1] native uint,
			[2] uint8&,
			[3] uint8&
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 64
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.1
		IL_000b: brtrue.s IL_0014

		IL_000d: ldc.i4.s 66
		IL_000f: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0014: ldarg.0
		IL_0015: call valuetype System.Runtime.CompilerServices.MethodTable* System.Runtime.CompilerServices.RuntimeHelpers::GetMethodTable(object)
		IL_001a: stloc.0
		IL_001b: ldloc.0
		IL_001c: ldarg.1
		IL_001d: call valuetype System.Runtime.CompilerServices.MethodTable* System.Runtime.CompilerServices.RuntimeHelpers::GetMethodTable(object)
		IL_0022: bne.un.s IL_007f

		IL_0024: ldloc.0
		IL_0025: call instance bool System.Runtime.CompilerServices.MethodTable::get_IsMultiDimensionalArray()
		IL_002a: brtrue.s IL_007f

		IL_002c: ldarg.2
		IL_002d: conv.u
		IL_002e: ldarg.0
		IL_002f: callvirt instance int64 System.Array::get_LongLength()
		IL_0034: conv.u
		IL_0035: bgt.un.s IL_007f

		IL_0037: ldarg.2
		IL_0038: conv.u
		IL_0039: ldarg.1
		IL_003a: callvirt instance int64 System.Array::get_LongLength()
		IL_003f: conv.u
		IL_0040: bgt.un.s IL_007f

		IL_0042: ldarg.2
		IL_0043: conv.u
		IL_0044: ldloc.0
		IL_0045: ldfld uint16 System.Runtime.CompilerServices.MethodTable::ComponentSize
		IL_004a: conv.u
		IL_004b: mul
		IL_004c: stloc.1
		IL_004d: ldarg.0
		IL_004e: call !!0 Internal.Runtime.CompilerServices.Unsafe::As<class System.Runtime.CompilerServices.RawArrayData>(object)
		IL_0053: ldflda uint8 System.Runtime.CompilerServices.RawArrayData::Data
		IL_0058: stloc.2
		IL_0059: ldarg.1
		IL_005a: call !!0 Internal.Runtime.CompilerServices.Unsafe::As<class System.Runtime.CompilerServices.RawArrayData>(object)
		IL_005f: ldflda uint8 System.Runtime.CompilerServices.RawArrayData::Data
		IL_0064: stloc.3
		IL_0065: ldloc.0
		IL_0066: call instance bool System.Runtime.CompilerServices.MethodTable::get_ContainsGCPointers()
		IL_006b: brfalse.s IL_0076

		IL_006d: ldloc.3
		IL_006e: ldloc.2
		IL_006f: ldloc.1
		IL_0070: call void System.Buffer::BulkMoveWithWriteBarrier(uint8&, uint8&, native uint)
		IL_0075: ret

		IL_0076: ldloc.3
		IL_0077: ldloc.2
		IL_0078: ldloc.1
		IL_0079: call void System.Buffer::Memmove<uint8>(!!0&, !!0&, native uint)
		IL_007e: ret

		IL_007f: ldarg.0
		IL_0080: ldarg.0
		IL_0081: ldc.i4.0
		IL_0082: callvirt instance int32 System.Array::GetLowerBound(int32)
		IL_0087: ldarg.1
		IL_0088: ldarg.1
		IL_0089: ldc.i4.0
		IL_008a: callvirt instance int32 System.Array::GetLowerBound(int32)
		IL_008f: ldarg.2
		IL_0090: ldc.i4.0
		IL_0091: call void System.Array::Copy(class System.Array, int32, class System.Array, int32, int32, bool)
		IL_0096: ret
	} // end of method Array::Copy

	.method public hidebysig static 
		void Copy (
			class System.Array sourceArray,
			int32 sourceIndex,
			class System.Array destinationArray,
			int32 destinationIndex,
			int32 length
		) cil managed 
	{
		// Method begins at RVA 0x4050c
		// Code size 178 (0xb2)
		.maxstack 6
		.locals (
			[0] valuetype System.Runtime.CompilerServices.MethodTable*,
			[1] native uint,
			[2] native uint,
			[3] uint8&,
			[4] uint8&
		)

		IL_0000: ldarg.0
		IL_0001: brfalse IL_00a5

		IL_0006: ldarg.2
		IL_0007: brfalse IL_00a5

		IL_000c: ldarg.0
		IL_000d: call valuetype System.Runtime.CompilerServices.MethodTable* System.Runtime.CompilerServices.RuntimeHelpers::GetMethodTable(object)
		IL_0012: stloc.0
		IL_0013: ldloc.0
		IL_0014: ldarg.2
		IL_0015: call valuetype System.Runtime.CompilerServices.MethodTable* System.Runtime.CompilerServices.RuntimeHelpers::GetMethodTable(object)
		IL_001a: bne.un IL_00a5

		IL_001f: ldloc.0
		IL_0020: call instance bool System.Runtime.CompilerServices.MethodTable::get_IsMultiDimensionalArray()
		IL_0025: brtrue.s IL_00a5

		IL_0027: ldarg.s length
		IL_0029: ldc.i4.0
		IL_002a: blt.s IL_00a5

		IL_002c: ldarg.1
		IL_002d: ldc.i4.0
		IL_002e: blt.s IL_00a5

		IL_0030: ldarg.3
		IL_0031: ldc.i4.0
		IL_0032: blt.s IL_00a5

		IL_0034: ldarg.1
		IL_0035: ldarg.s length
		IL_0037: add
		IL_0038: conv.u
		IL_0039: ldarg.0
		IL_003a: callvirt instance int64 System.Array::get_LongLength()
		IL_003f: conv.u
		IL_0040: bgt.un.s IL_00a5

		IL_0042: ldarg.3
		IL_0043: ldarg.s length
		IL_0045: add
		IL_0046: conv.u
		IL_0047: ldarg.2
		IL_0048: callvirt instance int64 System.Array::get_LongLength()
		IL_004d: conv.u
		IL_004e: bgt.un.s IL_00a5

		IL_0050: ldloc.0
		IL_0051: ldfld uint16 System.Runtime.CompilerServices.MethodTable::ComponentSize
		IL_0056: conv.u
		IL_0057: stloc.1
		IL_0058: ldarg.s length
		IL_005a: conv.u
		IL_005b: ldloc.1
		IL_005c: mul
		IL_005d: stloc.2
		IL_005e: ldarg.0
		IL_005f: call !!0 Internal.Runtime.CompilerServices.Unsafe::As<class System.Runtime.CompilerServices.RawArrayData>(object)
		IL_0064: ldflda uint8 System.Runtime.CompilerServices.RawArrayData::Data
		IL_0069: ldarg.1
		IL_006a: conv.u
		IL_006b: ldloc.1
		IL_006c: mul
		IL_006d: call !!0& Internal.Runtime.CompilerServices.Unsafe::AddByteOffset<uint8>(!!0&, native uint)
		IL_0072: stloc.3
		IL_0073: ldarg.2
		IL_0074: call !!0 Internal.Runtime.CompilerServices.Unsafe::As<class System.Runtime.CompilerServices.RawArrayData>(object)
		IL_0079: ldflda uint8 System.Runtime.CompilerServices.RawArrayData::Data
		IL_007e: ldarg.3
		IL_007f: conv.u
		IL_0080: ldloc.1
		IL_0081: mul
		IL_0082: call !!0& Internal.Runtime.CompilerServices.Unsafe::AddByteOffset<uint8>(!!0&, native uint)
		IL_0087: stloc.s 4
		IL_0089: ldloc.0
		IL_008a: call instance bool System.Runtime.CompilerServices.MethodTable::get_ContainsGCPointers()
		IL_008f: brfalse.s IL_009b

		IL_0091: ldloc.s 4
		IL_0093: ldloc.3
		IL_0094: ldloc.2
		IL_0095: call void System.Buffer::BulkMoveWithWriteBarrier(uint8&, uint8&, native uint)
		IL_009a: ret

		IL_009b: ldloc.s 4
		IL_009d: ldloc.3
		IL_009e: ldloc.2
		IL_009f: call void System.Buffer::Memmove<uint8>(!!0&, !!0&, native uint)
		IL_00a4: ret

		IL_00a5: ldarg.0
		IL_00a6: ldarg.1
		IL_00a7: ldarg.2
		IL_00a8: ldarg.3
		IL_00a9: ldarg.s length
		IL_00ab: ldc.i4.0
		IL_00ac: call void System.Array::Copy(class System.Array, int32, class System.Array, int32, int32, bool)
		IL_00b1: ret
	} // end of method Array::Copy

	.method private hidebysig static 
		void Copy (
			class System.Array sourceArray,
			int32 sourceIndex,
			class System.Array destinationArray,
			int32 destinationIndex,
			int32 length,
			bool reliable
		) cil managed 
	{
		// Method begins at RVA 0x405cc
		// Code size 366 (0x16e)
		.maxstack 5
		.locals (
			[0] int32,
			[1] int32,
			[2] valuetype System.Runtime.CompilerServices.MethodTable*,
			[3] native uint,
			[4] native uint,
			[5] uint8&,
			[6] uint8&
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 64
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.2
		IL_000b: brtrue.s IL_0014

		IL_000d: ldc.i4.s 66
		IL_000f: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0014: ldarg.0
		IL_0015: callvirt instance class System.Type System.Object::GetType()
		IL_001a: ldarg.2
		IL_001b: callvirt instance class System.Type System.Object::GetType()
		IL_0020: call bool System.Type::op_Inequality(class System.Type, class System.Type)
		IL_0025: brfalse.s IL_0040

		IL_0027: ldarg.0
		IL_0028: callvirt instance int32 System.Array::get_Rank()
		IL_002d: ldarg.2
		IL_002e: callvirt instance int32 System.Array::get_Rank()
		IL_0033: beq.s IL_0040

		IL_0035: call string System.SR::get_Rank_MustMatch()
		IL_003a: newobj instance void System.RankException::.ctor(string)
		IL_003f: throw

		IL_0040: ldarg.s length
		IL_0042: ldc.i4.0
		IL_0043: bge.s IL_0055

		IL_0045: ldstr "length"
		IL_004a: call string System.SR::get_ArgumentOutOfRange_NeedNonNegNum()
		IL_004f: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0054: throw

		IL_0055: ldarg.0
		IL_0056: ldc.i4.0
		IL_0057: callvirt instance int32 System.Array::GetLowerBound(int32)
		IL_005c: stloc.0
		IL_005d: ldarg.1
		IL_005e: ldloc.0
		IL_005f: blt.s IL_0067

		IL_0061: ldarg.1
		IL_0062: ldloc.0
		IL_0063: sub
		IL_0064: ldc.i4.0
		IL_0065: bge.s IL_0077

		IL_0067: ldstr "sourceIndex"
		IL_006c: call string System.SR::get_ArgumentOutOfRange_ArrayLB()
		IL_0071: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0076: throw

		IL_0077: ldarg.1
		IL_0078: ldloc.0
		IL_0079: sub
		IL_007a: starg.s sourceIndex
		IL_007c: ldarg.2
		IL_007d: ldc.i4.0
		IL_007e: callvirt instance int32 System.Array::GetLowerBound(int32)
		IL_0083: stloc.1
		IL_0084: ldarg.3
		IL_0085: ldloc.1
		IL_0086: blt.s IL_008e

		IL_0088: ldarg.3
		IL_0089: ldloc.1
		IL_008a: sub
		IL_008b: ldc.i4.0
		IL_008c: bge.s IL_009e

		IL_008e: ldstr "destinationIndex"
		IL_0093: call string System.SR::get_ArgumentOutOfRange_ArrayLB()
		IL_0098: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_009d: throw

		IL_009e: ldarg.3
		IL_009f: ldloc.1
		IL_00a0: sub
		IL_00a1: starg.s destinationIndex
		IL_00a3: ldarg.1
		IL_00a4: ldarg.s length
		IL_00a6: add
		IL_00a7: conv.u
		IL_00a8: ldarg.0
		IL_00a9: callvirt instance int64 System.Array::get_LongLength()
		IL_00ae: conv.u
		IL_00af: ble.un.s IL_00c1

		IL_00b1: call string System.SR::get_Arg_LongerThanSrcArray()
		IL_00b6: ldstr "sourceArray"
		IL_00bb: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_00c0: throw

		IL_00c1: ldarg.3
		IL_00c2: ldarg.s length
		IL_00c4: add
		IL_00c5: conv.u
		IL_00c6: ldarg.2
		IL_00c7: callvirt instance int64 System.Array::get_LongLength()
		IL_00cc: conv.u
		IL_00cd: ble.un.s IL_00df

		IL_00cf: call string System.SR::get_Arg_LongerThanDestArray()
		IL_00d4: ldstr "destinationArray"
		IL_00d9: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_00de: throw

		IL_00df: ldarg.0
		IL_00e0: callvirt instance class System.Type System.Object::GetType()
		IL_00e5: ldarg.2
		IL_00e6: callvirt instance class System.Type System.Object::GetType()
		IL_00eb: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_00f0: brtrue.s IL_00fb

		IL_00f2: ldarg.0
		IL_00f3: ldarg.2
		IL_00f4: call bool System.Array::IsSimpleCopy(class System.Array, class System.Array)
		IL_00f9: brfalse.s IL_0153

		IL_00fb: ldarg.0
		IL_00fc: call valuetype System.Runtime.CompilerServices.MethodTable* System.Runtime.CompilerServices.RuntimeHelpers::GetMethodTable(object)
		IL_0101: stloc.2
		IL_0102: ldloc.2
		IL_0103: ldfld uint16 System.Runtime.CompilerServices.MethodTable::ComponentSize
		IL_0108: conv.u
		IL_0109: stloc.3
		IL_010a: ldarg.s length
		IL_010c: conv.u
		IL_010d: ldloc.3
		IL_010e: mul
		IL_010f: stloc.s 4
		IL_0111: ldarg.0
		IL_0112: call uint8& System.Runtime.CompilerServices.RuntimeHelpers::GetRawArrayData(class System.Array)
		IL_0117: ldarg.1
		IL_0118: conv.u
		IL_0119: ldloc.3
		IL_011a: mul
		IL_011b: call !!0& Internal.Runtime.CompilerServices.Unsafe::AddByteOffset<uint8>(!!0&, native uint)
		IL_0120: stloc.s 5
		IL_0122: ldarg.2
		IL_0123: call uint8& System.Runtime.CompilerServices.RuntimeHelpers::GetRawArrayData(class System.Array)
		IL_0128: ldarg.3
		IL_0129: conv.u
		IL_012a: ldloc.3
		IL_012b: mul
		IL_012c: call !!0& Internal.Runtime.CompilerServices.Unsafe::AddByteOffset<uint8>(!!0&, native uint)
		IL_0131: stloc.s 6
		IL_0133: ldloc.2
		IL_0134: call instance bool System.Runtime.CompilerServices.MethodTable::get_ContainsGCPointers()
		IL_0139: brfalse.s IL_0147

		IL_013b: ldloc.s 6
		IL_013d: ldloc.s 5
		IL_013f: ldloc.s 4
		IL_0141: call void System.Buffer::BulkMoveWithWriteBarrier(uint8&, uint8&, native uint)
		IL_0146: ret

		IL_0147: ldloc.s 6
		IL_0149: ldloc.s 5
		IL_014b: ldloc.s 4
		IL_014d: call void System.Buffer::Memmove<uint8>(!!0&, !!0&, native uint)
		IL_0152: ret

		IL_0153: ldarg.s reliable
		IL_0155: brfalse.s IL_0162

		IL_0157: call string System.SR::get_ArrayTypeMismatch_ConstrainedCopy()
		IL_015c: newobj instance void System.ArrayTypeMismatchException::.ctor(string)
		IL_0161: throw

		IL_0162: ldarg.0
		IL_0163: ldarg.1
		IL_0164: ldarg.2
		IL_0165: ldarg.3
		IL_0166: ldarg.s length
		IL_0168: call void System.Array::CopySlow(class System.Array, int32, class System.Array, int32, int32)
		IL_016d: ret
	} // end of method Array::Copy

	.method private hidebysig static 
		bool IsSimpleCopy (
			class System.Array sourceArray,
			class System.Array destinationArray
		) cil managed internalcall 
	{
	} // end of method Array::IsSimpleCopy

	.method private hidebysig static 
		void CopySlow (
			class System.Array sourceArray,
			int32 sourceIndex,
			class System.Array destinationArray,
			int32 destinationIndex,
			int32 length
		) cil managed internalcall 
	{
	} // end of method Array::CopySlow

	.method public hidebysig static 
		void ConstrainedCopy (
			class System.Array sourceArray,
			int32 sourceIndex,
			class System.Array destinationArray,
			int32 destinationIndex,
			int32 length
		) cil managed 
	{
		// Method begins at RVA 0x40746
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: ldarg.s length
		IL_0006: ldc.i4.1
		IL_0007: call void System.Array::Copy(class System.Array, int32, class System.Array, int32, int32, bool)
		IL_000c: ret
	} // end of method Array::ConstrainedCopy

	.method public hidebysig static 
		void Clear (
			class System.Array 'array',
			int32 index,
			int32 length
		) cil managed 
	{
		// Method begins at RVA 0x40754
		// Code size 176 (0xb0)
		.maxstack 3
		.locals (
			[0] uint8&,
			[1] int32,
			[2] valuetype System.Runtime.CompilerServices.MethodTable*,
			[3] int32,
			[4] native uint,
			[5] uint8&,
			[6] native uint,
			[7] int32
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: call !!0 Internal.Runtime.CompilerServices.Unsafe::As<class System.Runtime.CompilerServices.RawArrayData>(object)
		IL_000f: ldflda uint8 System.Runtime.CompilerServices.RawArrayData::Data
		IL_0014: stloc.0
		IL_0015: ldc.i4.0
		IL_0016: stloc.1
		IL_0017: ldarg.0
		IL_0018: call valuetype System.Runtime.CompilerServices.MethodTable* System.Runtime.CompilerServices.RuntimeHelpers::GetMethodTable(object)
		IL_001d: stloc.2
		IL_001e: ldloc.2
		IL_001f: call instance bool System.Runtime.CompilerServices.MethodTable::get_IsMultiDimensionalArray()
		IL_0024: brfalse.s IL_0048

		IL_0026: ldloc.2
		IL_0027: call instance int32 System.Runtime.CompilerServices.MethodTable::get_MultiDimensionalArrayRank()
		IL_002c: stloc.s 7
		IL_002e: ldloc.0
		IL_002f: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<uint8, int32>(!!0&)
		IL_0034: ldloc.s 7
		IL_0036: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<int32>(!!0&, int32)
		IL_003b: ldind.i4
		IL_003c: stloc.1
		IL_003d: ldloc.0
		IL_003e: ldc.i4.8
		IL_003f: ldloc.s 7
		IL_0041: mul
		IL_0042: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<uint8>(!!0&, int32)
		IL_0047: stloc.0

		IL_0048: ldarg.1
		IL_0049: ldloc.1
		IL_004a: sub
		IL_004b: stloc.3
		IL_004c: ldarg.1
		IL_004d: ldloc.1
		IL_004e: blt.s IL_0065

		IL_0050: ldloc.3
		IL_0051: ldc.i4.0
		IL_0052: blt.s IL_0065

		IL_0054: ldarg.2
		IL_0055: ldc.i4.0
		IL_0056: blt.s IL_0065

		IL_0058: ldloc.3
		IL_0059: ldarg.2
		IL_005a: add
		IL_005b: conv.u
		IL_005c: ldarg.0
		IL_005d: callvirt instance int64 System.Array::get_LongLength()
		IL_0062: conv.u
		IL_0063: ble.un.s IL_006a

		IL_0065: call void System.ThrowHelper::ThrowIndexOutOfRangeException()

		IL_006a: ldloc.2
		IL_006b: ldfld uint16 System.Runtime.CompilerServices.MethodTable::ComponentSize
		IL_0070: conv.u
		IL_0071: stloc.s 4
		IL_0073: ldloc.0
		IL_0074: ldloc.3
		IL_0075: conv.u
		IL_0076: ldloc.s 4
		IL_0078: mul
		IL_0079: call !!0& Internal.Runtime.CompilerServices.Unsafe::AddByteOffset<uint8>(!!0&, native uint)
		IL_007e: stloc.s 5
		IL_0080: ldarg.2
		IL_0081: conv.u
		IL_0082: ldloc.s 4
		IL_0084: mul
		IL_0085: stloc.s 6
		IL_0087: ldloc.2
		IL_0088: call instance bool System.Runtime.CompilerServices.MethodTable::get_ContainsGCPointers()
		IL_008d: brfalse.s IL_00a6

		IL_008f: ldloc.s 5
		IL_0091: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<uint8, native int>(!!0&)
		IL_0096: ldloc.s 6
		IL_0098: sizeof System.IntPtr
		IL_009e: conv.u
		IL_009f: div.un
		IL_00a0: call void System.SpanHelpers::ClearWithReferences(native int&, native uint)
		IL_00a5: ret

		IL_00a6: ldloc.s 5
		IL_00a8: ldloc.s 6
		IL_00aa: call void System.SpanHelpers::ClearWithoutReferences(uint8&, native uint)
		IL_00af: ret
	} // end of method Array::Clear

	.method public hidebysig 
		instance object GetValue (
			int32[] indices
		) cil managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [1]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x40810
		// Code size 72 (0x48)
		.maxstack 4
		.locals (
			[0] typedref,
			[1] int32*,
			[2] int32& pinned
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 74
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: call instance int32 System.Array::get_Rank()
		IL_0010: ldarg.1
		IL_0011: ldlen
		IL_0012: conv.i4
		IL_0013: beq.s IL_001c

		IL_0015: ldc.i4.s 59
		IL_0017: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_001c: ldloca.s 0
		IL_001e: initobj System.TypedReference
		IL_0024: ldarg.1
		IL_0025: ldc.i4.0
		IL_0026: ldelema System.Int32
		IL_002b: stloc.2
		IL_002c: ldloc.2
		IL_002d: conv.u
		IL_002e: stloc.1
		IL_002f: ldarg.0
		IL_0030: ldloca.s 0
		IL_0032: conv.u
		IL_0033: ldarg.1
		IL_0034: ldlen
		IL_0035: conv.i4
		IL_0036: ldloc.1
		IL_0037: call instance void System.Array::InternalGetReference(void*, int32, int32*)
		IL_003c: ldc.i4.0
		IL_003d: conv.u
		IL_003e: stloc.2
		IL_003f: ldloca.s 0
		IL_0041: conv.u
		IL_0042: call object System.TypedReference::InternalToObject(void*)
		IL_0047: ret
	} // end of method Array::GetValue

	.method public hidebysig 
		instance object GetValue (
			int32 index
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x40864
		// Code size 46 (0x2e)
		.maxstack 4
		.locals (
			[0] typedref
		)

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.Array::get_Rank()
		IL_0006: ldc.i4.1
		IL_0007: beq.s IL_0010

		IL_0009: ldc.i4.s 55
		IL_000b: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0010: ldloca.s 0
		IL_0012: initobj System.TypedReference
		IL_0018: ldarg.0
		IL_0019: ldloca.s 0
		IL_001b: conv.u
		IL_001c: ldc.i4.1
		IL_001d: ldarga.s index
		IL_001f: conv.u
		IL_0020: call instance void System.Array::InternalGetReference(void*, int32, int32*)
		IL_0025: ldloca.s 0
		IL_0027: conv.u
		IL_0028: call object System.TypedReference::InternalToObject(void*)
		IL_002d: ret
	} // end of method Array::GetValue

	.method public hidebysig 
		instance object GetValue (
			int32 index1,
			int32 index2
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x408a0
		// Code size 57 (0x39)
		.maxstack 4
		.locals (
			[0] int32*,
			[1] typedref
		)

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.Array::get_Rank()
		IL_0006: ldc.i4.2
		IL_0007: beq.s IL_0010

		IL_0009: ldc.i4.s 56
		IL_000b: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0010: ldc.i4.8
		IL_0011: conv.u
		IL_0012: localloc
		IL_0014: stloc.0
		IL_0015: ldloc.0
		IL_0016: ldarg.1
		IL_0017: stind.i4
		IL_0018: ldloc.0
		IL_0019: ldc.i4.4
		IL_001a: add
		IL_001b: ldarg.2
		IL_001c: stind.i4
		IL_001d: ldloca.s 1
		IL_001f: initobj System.TypedReference
		IL_0025: ldarg.0
		IL_0026: ldloca.s 1
		IL_0028: conv.u
		IL_0029: ldc.i4.2
		IL_002a: ldloc.0
		IL_002b: call instance void System.Array::InternalGetReference(void*, int32, int32*)
		IL_0030: ldloca.s 1
		IL_0032: conv.u
		IL_0033: call object System.TypedReference::InternalToObject(void*)
		IL_0038: ret
	} // end of method Array::GetValue

	.method public hidebysig 
		instance object GetValue (
			int32 index1,
			int32 index2,
			int32 index3
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x408e8
		// Code size 66 (0x42)
		.maxstack 4
		.locals (
			[0] int32*,
			[1] typedref
		)

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.Array::get_Rank()
		IL_0006: ldc.i4.3
		IL_0007: beq.s IL_0010

		IL_0009: ldc.i4.s 57
		IL_000b: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0010: ldc.i4.s 12
		IL_0012: conv.u
		IL_0013: localloc
		IL_0015: stloc.0
		IL_0016: ldloc.0
		IL_0017: ldarg.1
		IL_0018: stind.i4
		IL_0019: ldloc.0
		IL_001a: ldc.i4.4
		IL_001b: add
		IL_001c: ldarg.2
		IL_001d: stind.i4
		IL_001e: ldloc.0
		IL_001f: ldc.i4.2
		IL_0020: conv.i
		IL_0021: ldc.i4.4
		IL_0022: mul
		IL_0023: add
		IL_0024: ldarg.3
		IL_0025: stind.i4
		IL_0026: ldloca.s 1
		IL_0028: initobj System.TypedReference
		IL_002e: ldarg.0
		IL_002f: ldloca.s 1
		IL_0031: conv.u
		IL_0032: ldc.i4.3
		IL_0033: ldloc.0
		IL_0034: call instance void System.Array::InternalGetReference(void*, int32, int32*)
		IL_0039: ldloca.s 1
		IL_003b: conv.u
		IL_003c: call object System.TypedReference::InternalToObject(void*)
		IL_0041: ret
	} // end of method Array::GetValue

	.method public hidebysig 
		instance void SetValue (
			object 'value',
			int32 index
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x40938
		// Code size 47 (0x2f)
		.maxstack 4
		.locals (
			[0] typedref
		)

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.Array::get_Rank()
		IL_0006: ldc.i4.1
		IL_0007: beq.s IL_0010

		IL_0009: ldc.i4.s 55
		IL_000b: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0010: ldloca.s 0
		IL_0012: initobj System.TypedReference
		IL_0018: ldarg.0
		IL_0019: ldloca.s 0
		IL_001b: conv.u
		IL_001c: ldc.i4.1
		IL_001d: ldarga.s index
		IL_001f: conv.u
		IL_0020: call instance void System.Array::InternalGetReference(void*, int32, int32*)
		IL_0025: ldloca.s 0
		IL_0027: conv.u
		IL_0028: ldarg.1
		IL_0029: call void System.Array::InternalSetValue(void*, object)
		IL_002e: ret
	} // end of method Array::SetValue

	.method public hidebysig 
		instance void SetValue (
			object 'value',
			int32 index1,
			int32 index2
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x40974
		// Code size 58 (0x3a)
		.maxstack 4
		.locals (
			[0] int32*,
			[1] typedref
		)

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.Array::get_Rank()
		IL_0006: ldc.i4.2
		IL_0007: beq.s IL_0010

		IL_0009: ldc.i4.s 56
		IL_000b: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0010: ldc.i4.8
		IL_0011: conv.u
		IL_0012: localloc
		IL_0014: stloc.0
		IL_0015: ldloc.0
		IL_0016: ldarg.2
		IL_0017: stind.i4
		IL_0018: ldloc.0
		IL_0019: ldc.i4.4
		IL_001a: add
		IL_001b: ldarg.3
		IL_001c: stind.i4
		IL_001d: ldloca.s 1
		IL_001f: initobj System.TypedReference
		IL_0025: ldarg.0
		IL_0026: ldloca.s 1
		IL_0028: conv.u
		IL_0029: ldc.i4.2
		IL_002a: ldloc.0
		IL_002b: call instance void System.Array::InternalGetReference(void*, int32, int32*)
		IL_0030: ldloca.s 1
		IL_0032: conv.u
		IL_0033: ldarg.1
		IL_0034: call void System.Array::InternalSetValue(void*, object)
		IL_0039: ret
	} // end of method Array::SetValue

	.method public hidebysig 
		instance void SetValue (
			object 'value',
			int32 index1,
			int32 index2,
			int32 index3
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x409bc
		// Code size 68 (0x44)
		.maxstack 4
		.locals (
			[0] int32*,
			[1] typedref
		)

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.Array::get_Rank()
		IL_0006: ldc.i4.3
		IL_0007: beq.s IL_0010

		IL_0009: ldc.i4.s 57
		IL_000b: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0010: ldc.i4.s 12
		IL_0012: conv.u
		IL_0013: localloc
		IL_0015: stloc.0
		IL_0016: ldloc.0
		IL_0017: ldarg.2
		IL_0018: stind.i4
		IL_0019: ldloc.0
		IL_001a: ldc.i4.4
		IL_001b: add
		IL_001c: ldarg.3
		IL_001d: stind.i4
		IL_001e: ldloc.0
		IL_001f: ldc.i4.2
		IL_0020: conv.i
		IL_0021: ldc.i4.4
		IL_0022: mul
		IL_0023: add
		IL_0024: ldarg.s index3
		IL_0026: stind.i4
		IL_0027: ldloca.s 1
		IL_0029: initobj System.TypedReference
		IL_002f: ldarg.0
		IL_0030: ldloca.s 1
		IL_0032: conv.u
		IL_0033: ldc.i4.3
		IL_0034: ldloc.0
		IL_0035: call instance void System.Array::InternalGetReference(void*, int32, int32*)
		IL_003a: ldloca.s 1
		IL_003c: conv.u
		IL_003d: ldarg.1
		IL_003e: call void System.Array::InternalSetValue(void*, object)
		IL_0043: ret
	} // end of method Array::SetValue

	.method public hidebysig 
		instance void SetValue (
			object 'value',
			int32[] indices
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [2]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x40a0c
		// Code size 73 (0x49)
		.maxstack 4
		.locals (
			[0] typedref,
			[1] int32*,
			[2] int32& pinned
		)

		IL_0000: ldarg.2
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 74
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: call instance int32 System.Array::get_Rank()
		IL_0010: ldarg.2
		IL_0011: ldlen
		IL_0012: conv.i4
		IL_0013: beq.s IL_001c

		IL_0015: ldc.i4.s 59
		IL_0017: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_001c: ldloca.s 0
		IL_001e: initobj System.TypedReference
		IL_0024: ldarg.2
		IL_0025: ldc.i4.0
		IL_0026: ldelema System.Int32
		IL_002b: stloc.2
		IL_002c: ldloc.2
		IL_002d: conv.u
		IL_002e: stloc.1
		IL_002f: ldarg.0
		IL_0030: ldloca.s 0
		IL_0032: conv.u
		IL_0033: ldarg.2
		IL_0034: ldlen
		IL_0035: conv.i4
		IL_0036: ldloc.1
		IL_0037: call instance void System.Array::InternalGetReference(void*, int32, int32*)
		IL_003c: ldc.i4.0
		IL_003d: conv.u
		IL_003e: stloc.2
		IL_003f: ldloca.s 0
		IL_0041: conv.u
		IL_0042: ldarg.1
		IL_0043: call void System.Array::InternalSetValue(void*, object)
		IL_0048: ret
	} // end of method Array::SetValue

	.method private hidebysig 
		instance void InternalGetReference (
			void* elemRef,
			int32 rank,
			int32* pIndices
		) cil managed internalcall 
	{
	} // end of method Array::InternalGetReference

	.method private hidebysig static 
		void InternalSetValue (
			void* target,
			object 'value'
		) cil managed internalcall 
	{
	} // end of method Array::InternalSetValue

	.method public hidebysig specialname 
		instance int32 get_Length () cil managed 
	{
		// Method begins at RVA 0x40a61
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call !!0 Internal.Runtime.CompilerServices.Unsafe::As<class System.Runtime.CompilerServices.RawArrayData>(object)
		IL_0006: ldfld uint32 System.Runtime.CompilerServices.RawArrayData::Length
		IL_000b: conv.ovf.i4.un
		IL_000c: ret
	} // end of method Array::get_Length

	.method public hidebysig specialname 
		instance int64 get_LongLength () cil managed 
	{
		// Method begins at RVA 0x40a6f
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call !!0 Internal.Runtime.CompilerServices.Unsafe::As<class System.Runtime.CompilerServices.RawArrayData>(object)
		IL_0006: ldfld uint32 System.Runtime.CompilerServices.RawArrayData::Length
		IL_000b: conv.u8
		IL_000c: ret
	} // end of method Array::get_LongLength

	.method public hidebysig specialname 
		instance int32 get_Rank () cil managed 
	{
		// Method begins at RVA 0x40a80
		// Code size 14 (0xe)
		.maxstack 1
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: call int32 System.Runtime.CompilerServices.RuntimeHelpers::GetMultiDimensionalArrayRank(class System.Array)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: brtrue.s IL_000c

		IL_000a: ldc.i4.1
		IL_000b: ret

		IL_000c: ldloc.0
		IL_000d: ret
	} // end of method Array::get_Rank

	.method public hidebysig 
		instance int32 GetLength (
			int32 dimension
		) cil managed 
	{
		// Method begins at RVA 0x40a9c
		// Code size 49 (0x31)
		.maxstack 2
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: call int32 System.Runtime.CompilerServices.RuntimeHelpers::GetMultiDimensionalArrayRank(class System.Array)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: brtrue.s IL_0014

		IL_000a: ldarg.1
		IL_000b: brtrue.s IL_0014

		IL_000d: ldarg.0
		IL_000e: call instance int32 System.Array::get_Length()
		IL_0013: ret

		IL_0014: ldarg.1
		IL_0015: ldloc.0
		IL_0016: blt.un.s IL_0023

		IL_0018: call string System.SR::get_IndexOutOfRange_ArrayRankIndex()
		IL_001d: newobj instance void System.IndexOutOfRangeException::.ctor(string)
		IL_0022: throw

		IL_0023: ldarg.0
		IL_0024: call int32& System.Runtime.CompilerServices.RuntimeHelpers::GetMultiDimensionalArrayBounds(class System.Array)
		IL_0029: ldarg.1
		IL_002a: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<int32>(!!0&, int32)
		IL_002f: ldind.i4
		IL_0030: ret
	} // end of method Array::GetLength

	.method public hidebysig 
		instance int32 GetUpperBound (
			int32 dimension
		) cil managed 
	{
		// Method begins at RVA 0x40adc
		// Code size 66 (0x42)
		.maxstack 4
		.locals (
			[0] int32,
			[1] int32&
		)

		IL_0000: ldarg.0
		IL_0001: call int32 System.Runtime.CompilerServices.RuntimeHelpers::GetMultiDimensionalArrayRank(class System.Array)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: brtrue.s IL_0016

		IL_000a: ldarg.1
		IL_000b: brtrue.s IL_0016

		IL_000d: ldarg.0
		IL_000e: call instance int32 System.Array::get_Length()
		IL_0013: ldc.i4.1
		IL_0014: sub
		IL_0015: ret

		IL_0016: ldarg.1
		IL_0017: ldloc.0
		IL_0018: blt.un.s IL_0025

		IL_001a: call string System.SR::get_IndexOutOfRange_ArrayRankIndex()
		IL_001f: newobj instance void System.IndexOutOfRangeException::.ctor(string)
		IL_0024: throw

		IL_0025: ldarg.0
		IL_0026: call int32& System.Runtime.CompilerServices.RuntimeHelpers::GetMultiDimensionalArrayBounds(class System.Array)
		IL_002b: stloc.1
		IL_002c: ldloc.1
		IL_002d: ldarg.1
		IL_002e: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<int32>(!!0&, int32)
		IL_0033: ldind.i4
		IL_0034: ldloc.1
		IL_0035: ldloc.0
		IL_0036: ldarg.1
		IL_0037: add
		IL_0038: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<int32>(!!0&, int32)
		IL_003d: ldind.i4
		IL_003e: add
		IL_003f: ldc.i4.1
		IL_0040: sub
		IL_0041: ret
	} // end of method Array::GetUpperBound

	.method public hidebysig 
		instance int32 GetLowerBound (
			int32 dimension
		) cil managed 
	{
		// Method begins at RVA 0x40b2c
		// Code size 46 (0x2e)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: call int32 System.Runtime.CompilerServices.RuntimeHelpers::GetMultiDimensionalArrayRank(class System.Array)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: brtrue.s IL_000f

		IL_000a: ldarg.1
		IL_000b: brtrue.s IL_000f

		IL_000d: ldc.i4.0
		IL_000e: ret

		IL_000f: ldarg.1
		IL_0010: ldloc.0
		IL_0011: blt.un.s IL_001e

		IL_0013: call string System.SR::get_IndexOutOfRange_ArrayRankIndex()
		IL_0018: newobj instance void System.IndexOutOfRangeException::.ctor(string)
		IL_001d: throw

		IL_001e: ldarg.0
		IL_001f: call int32& System.Runtime.CompilerServices.RuntimeHelpers::GetMultiDimensionalArrayBounds(class System.Array)
		IL_0024: ldloc.0
		IL_0025: ldarg.1
		IL_0026: add
		IL_0027: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<int32>(!!0&, int32)
		IL_002c: ldind.i4
		IL_002d: ret
	} // end of method Array::GetLowerBound

	.method assembly hidebysig 
		instance valuetype System.Reflection.CorElementType GetCorElementTypeOfElementType () cil managed internalcall 
	{
	} // end of method Array::GetCorElementTypeOfElementType

	.method private hidebysig 
		instance bool IsValueOfElementType (
			object 'value'
		) cil managed 
	{
		// Method begins at RVA 0x40b68
		// Code size 35 (0x23)
		.maxstack 2
		.locals (
			[0] valuetype System.Runtime.CompilerServices.MethodTable*
		)

		IL_0000: ldarg.0
		IL_0001: call valuetype System.Runtime.CompilerServices.MethodTable* System.Runtime.CompilerServices.RuntimeHelpers::GetMethodTable(object)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldfld void* System.Runtime.CompilerServices.MethodTable::ElementType
		IL_000d: call native int System.IntPtr::op_Explicit(void*)
		IL_0012: ldarg.1
		IL_0013: call valuetype System.Runtime.CompilerServices.MethodTable* System.Runtime.CompilerServices.RuntimeHelpers::GetMethodTable(object)
		IL_0018: call native int System.IntPtr::op_Explicit(void*)
		IL_001d: call bool System.IntPtr::op_Equality(native int, native int)
		IL_0022: ret
	} // end of method Array::IsValueOfElementType

	.method public hidebysig 
		instance void Initialize () cil managed internalcall 
	{
	} // end of method Array::Initialize

	.method famandassem hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x40b97
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void System.Object::.ctor()
		IL_0006: ret
	} // end of method Array::.ctor

	.method public hidebysig static 
		class System.Collections.ObjectModel.ReadOnlyCollection`1<!!T> AsReadOnly<T> (
			!!T[] 'array'
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x40b9f
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: newobj instance void class System.Collections.ObjectModel.ReadOnlyCollection`1<!!T>::.ctor(class System.Collections.Generic.IList`1<!0>)
		IL_000f: ret
	} // end of method Array::AsReadOnly

	.method public hidebysig static 
		void Resize<T> (
			!!T[]& 'array',
			int32 newSize
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x40bb0
		// Code size 72 (0x48)
		.maxstack 4
		.locals (
			[0] !!T[],
			[1] !!T[]
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_000d

		IL_0004: ldc.i4.s 69
		IL_0006: ldc.i4.s 11
		IL_0008: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_000d: ldarg.0
		IL_000e: ldind.ref
		IL_000f: stloc.0
		IL_0010: ldloc.0
		IL_0011: brtrue.s IL_001c

		IL_0013: ldarg.0
		IL_0014: ldarg.1
		IL_0015: newarr !!T
		IL_001a: stind.ref
		IL_001b: ret

		IL_001c: ldloc.0
		IL_001d: ldlen
		IL_001e: conv.i4
		IL_001f: ldarg.1
		IL_0020: beq.s IL_0047

		IL_0022: ldarg.1
		IL_0023: newarr !!T
		IL_0028: stloc.1
		IL_0029: ldloc.1
		IL_002a: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<!!T>(!!0[])
		IL_002f: ldloc.0
		IL_0030: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<!!T>(!!0[])
		IL_0035: ldarg.1
		IL_0036: ldloc.0
		IL_0037: ldlen
		IL_0038: conv.i4
		IL_0039: call int32 System.Math::Min(int32, int32)
		IL_003e: conv.u
		IL_003f: call void System.Buffer::Memmove<!!T>(!!0&, !!0&, native uint)
		IL_0044: ldarg.0
		IL_0045: ldloc.1
		IL_0046: stind.ref

		IL_0047: ret
	} // end of method Array::Resize

	.method public hidebysig static 
		class System.Array CreateInstance (
			class System.Type elementType,
			int64[] lengths
		) cil managed 
	{
		.param [2]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x40c04
		// Code size 77 (0x4d)
		.maxstack 3
		.locals (
			[0] int32[],
			[1] int32,
			[2] int64,
			[3] int32
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 71
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.1
		IL_000b: ldlen
		IL_000c: brtrue.s IL_0015

		IL_000e: ldc.i4.s 58
		IL_0010: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0015: ldarg.1
		IL_0016: ldlen
		IL_0017: conv.i4
		IL_0018: newarr System.Int32
		IL_001d: stloc.0
		IL_001e: ldc.i4.0
		IL_001f: stloc.1
		IL_0020: br.s IL_003f
		// loop start (head: IL_003f)
			IL_0022: ldarg.1
			IL_0023: ldloc.1
			IL_0024: ldelem.i8
			IL_0025: stloc.2
			IL_0026: ldloc.2
			IL_0027: conv.i4
			IL_0028: stloc.3
			IL_0029: ldloc.2
			IL_002a: ldloc.3
			IL_002b: conv.i8
			IL_002c: beq.s IL_0037

			IL_002e: ldc.i4.s 72
			IL_0030: ldc.i4.s 50
			IL_0032: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

			IL_0037: ldloc.0
			IL_0038: ldloc.1
			IL_0039: ldloc.3
			IL_003a: stelem.i4
			IL_003b: ldloc.1
			IL_003c: ldc.i4.1
			IL_003d: add
			IL_003e: stloc.1

			IL_003f: ldloc.1
			IL_0040: ldarg.1
			IL_0041: ldlen
			IL_0042: conv.i4
			IL_0043: blt.s IL_0022
		// end loop

		IL_0045: ldarg.0
		IL_0046: ldloc.0
		IL_0047: call class System.Array System.Array::CreateInstance(class System.Type, int32[])
		IL_004c: ret
	} // end of method Array::CreateInstance

	.method public hidebysig static 
		void Copy (
			class System.Array sourceArray,
			class System.Array destinationArray,
			int64 length
		) cil managed 
	{
		// Method begins at RVA 0x40c60
		// Code size 26 (0x1a)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.2
		IL_0001: conv.i4
		IL_0002: stloc.0
		IL_0003: ldarg.2
		IL_0004: ldloc.0
		IL_0005: conv.i8
		IL_0006: beq.s IL_0011

		IL_0008: ldc.i4.s 40
		IL_000a: ldc.i4.s 50
		IL_000c: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0011: ldarg.0
		IL_0012: ldarg.1
		IL_0013: ldloc.0
		IL_0014: call void System.Array::Copy(class System.Array, class System.Array, int32)
		IL_0019: ret
	} // end of method Array::Copy

	.method public hidebysig static 
		void Copy (
			class System.Array sourceArray,
			int64 sourceIndex,
			class System.Array destinationArray,
			int64 destinationIndex,
			int64 length
		) cil managed 
	{
		// Method begins at RVA 0x40c88
		// Code size 64 (0x40)
		.maxstack 5
		.locals (
			[0] int32,
			[1] int32,
			[2] int32
		)

		IL_0000: ldarg.1
		IL_0001: conv.i4
		IL_0002: stloc.0
		IL_0003: ldarg.3
		IL_0004: conv.i4
		IL_0005: stloc.1
		IL_0006: ldarg.s length
		IL_0008: conv.i4
		IL_0009: stloc.2
		IL_000a: ldarg.1
		IL_000b: ldloc.0
		IL_000c: conv.i8
		IL_000d: beq.s IL_0018

		IL_000f: ldc.i4.s 63
		IL_0011: ldc.i4.s 50
		IL_0013: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0018: ldarg.3
		IL_0019: ldloc.1
		IL_001a: conv.i8
		IL_001b: beq.s IL_0026

		IL_001d: ldc.i4.s 65
		IL_001f: ldc.i4.s 50
		IL_0021: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0026: ldarg.s length
		IL_0028: ldloc.2
		IL_0029: conv.i8
		IL_002a: beq.s IL_0035

		IL_002c: ldc.i4.s 40
		IL_002e: ldc.i4.s 50
		IL_0030: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0035: ldarg.0
		IL_0036: ldloc.0
		IL_0037: ldarg.2
		IL_0038: ldloc.1
		IL_0039: ldloc.2
		IL_003a: call void System.Array::Copy(class System.Array, int32, class System.Array, int32, int32)
		IL_003f: ret
	} // end of method Array::Copy

	.method public hidebysig 
		instance object GetValue (
			int64 index
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x40cd4
		// Code size 25 (0x19)
		.maxstack 2
		.locals (
			[0] int32
		)

		IL_0000: ldarg.1
		IL_0001: conv.i4
		IL_0002: stloc.0
		IL_0003: ldarg.1
		IL_0004: ldloc.0
		IL_0005: conv.i8
		IL_0006: beq.s IL_0011

		IL_0008: ldc.i4.s 21
		IL_000a: ldc.i4.s 50
		IL_000c: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0011: ldarg.0
		IL_0012: ldloc.0
		IL_0013: call instance object System.Array::GetValue(int32)
		IL_0018: ret
	} // end of method Array::GetValue

	.method public hidebysig 
		instance object GetValue (
			int64 index1,
			int64 index2
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x40cfc
		// Code size 43 (0x2b)
		.maxstack 3
		.locals (
			[0] int32,
			[1] int32
		)

		IL_0000: ldarg.1
		IL_0001: conv.i4
		IL_0002: stloc.0
		IL_0003: ldarg.2
		IL_0004: conv.i4
		IL_0005: stloc.1
		IL_0006: ldarg.1
		IL_0007: ldloc.0
		IL_0008: conv.i8
		IL_0009: beq.s IL_0014

		IL_000b: ldc.i4.s 75
		IL_000d: ldc.i4.s 50
		IL_000f: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0014: ldarg.2
		IL_0015: ldloc.1
		IL_0016: conv.i8
		IL_0017: beq.s IL_0022

		IL_0019: ldc.i4.s 76
		IL_001b: ldc.i4.s 50
		IL_001d: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0022: ldarg.0
		IL_0023: ldloc.0
		IL_0024: ldloc.1
		IL_0025: call instance object System.Array::GetValue(int32, int32)
		IL_002a: ret
	} // end of method Array::GetValue

	.method public hidebysig 
		instance object GetValue (
			int64 index1,
			int64 index2,
			int64 index3
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x40d34
		// Code size 61 (0x3d)
		.maxstack 4
		.locals (
			[0] int32,
			[1] int32,
			[2] int32
		)

		IL_0000: ldarg.1
		IL_0001: conv.i4
		IL_0002: stloc.0
		IL_0003: ldarg.2
		IL_0004: conv.i4
		IL_0005: stloc.1
		IL_0006: ldarg.3
		IL_0007: conv.i4
		IL_0008: stloc.2
		IL_0009: ldarg.1
		IL_000a: ldloc.0
		IL_000b: conv.i8
		IL_000c: beq.s IL_0017

		IL_000e: ldc.i4.s 75
		IL_0010: ldc.i4.s 50
		IL_0012: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0017: ldarg.2
		IL_0018: ldloc.1
		IL_0019: conv.i8
		IL_001a: beq.s IL_0025

		IL_001c: ldc.i4.s 76
		IL_001e: ldc.i4.s 50
		IL_0020: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0025: ldarg.3
		IL_0026: ldloc.2
		IL_0027: conv.i8
		IL_0028: beq.s IL_0033

		IL_002a: ldc.i4.s 77
		IL_002c: ldc.i4.s 50
		IL_002e: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0033: ldarg.0
		IL_0034: ldloc.0
		IL_0035: ldloc.1
		IL_0036: ldloc.2
		IL_0037: call instance object System.Array::GetValue(int32, int32, int32)
		IL_003c: ret
	} // end of method Array::GetValue

	.method public hidebysig 
		instance object GetValue (
			int64[] indices
		) cil managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [1]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x40d80
		// Code size 84 (0x54)
		.maxstack 3
		.locals (
			[0] int32[],
			[1] int32,
			[2] int64,
			[3] int32
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 74
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: call instance int32 System.Array::get_Rank()
		IL_0010: ldarg.1
		IL_0011: ldlen
		IL_0012: conv.i4
		IL_0013: beq.s IL_001c

		IL_0015: ldc.i4.s 59
		IL_0017: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_001c: ldarg.1
		IL_001d: ldlen
		IL_001e: conv.i4
		IL_001f: newarr System.Int32
		IL_0024: stloc.0
		IL_0025: ldc.i4.0
		IL_0026: stloc.1
		IL_0027: br.s IL_0046
		// loop start (head: IL_0046)
			IL_0029: ldarg.1
			IL_002a: ldloc.1
			IL_002b: ldelem.i8
			IL_002c: stloc.2
			IL_002d: ldloc.2
			IL_002e: conv.i4
			IL_002f: stloc.3
			IL_0030: ldloc.2
			IL_0031: ldloc.3
			IL_0032: conv.i8
			IL_0033: beq.s IL_003e

			IL_0035: ldc.i4.s 21
			IL_0037: ldc.i4.s 50
			IL_0039: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

			IL_003e: ldloc.0
			IL_003f: ldloc.1
			IL_0040: ldloc.3
			IL_0041: stelem.i4
			IL_0042: ldloc.1
			IL_0043: ldc.i4.1
			IL_0044: add
			IL_0045: stloc.1

			IL_0046: ldloc.1
			IL_0047: ldarg.1
			IL_0048: ldlen
			IL_0049: conv.i4
			IL_004a: blt.s IL_0029
		// end loop

		IL_004c: ldarg.0
		IL_004d: ldloc.0
		IL_004e: call instance object System.Array::GetValue(int32[])
		IL_0053: ret
	} // end of method Array::GetValue

	.method public hidebysig 
		instance void SetValue (
			object 'value',
			int64 index
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x40de0
		// Code size 26 (0x1a)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.2
		IL_0001: conv.i4
		IL_0002: stloc.0
		IL_0003: ldarg.2
		IL_0004: ldloc.0
		IL_0005: conv.i8
		IL_0006: beq.s IL_0011

		IL_0008: ldc.i4.s 21
		IL_000a: ldc.i4.s 50
		IL_000c: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0011: ldarg.0
		IL_0012: ldarg.1
		IL_0013: ldloc.0
		IL_0014: call instance void System.Array::SetValue(object, int32)
		IL_0019: ret
	} // end of method Array::SetValue

	.method public hidebysig 
		instance void SetValue (
			object 'value',
			int64 index1,
			int64 index2
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x40e08
		// Code size 44 (0x2c)
		.maxstack 4
		.locals (
			[0] int32,
			[1] int32
		)

		IL_0000: ldarg.2
		IL_0001: conv.i4
		IL_0002: stloc.0
		IL_0003: ldarg.3
		IL_0004: conv.i4
		IL_0005: stloc.1
		IL_0006: ldarg.2
		IL_0007: ldloc.0
		IL_0008: conv.i8
		IL_0009: beq.s IL_0014

		IL_000b: ldc.i4.s 75
		IL_000d: ldc.i4.s 50
		IL_000f: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0014: ldarg.3
		IL_0015: ldloc.1
		IL_0016: conv.i8
		IL_0017: beq.s IL_0022

		IL_0019: ldc.i4.s 76
		IL_001b: ldc.i4.s 50
		IL_001d: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0022: ldarg.0
		IL_0023: ldarg.1
		IL_0024: ldloc.0
		IL_0025: ldloc.1
		IL_0026: call instance void System.Array::SetValue(object, int32, int32)
		IL_002b: ret
	} // end of method Array::SetValue

	.method public hidebysig 
		instance void SetValue (
			object 'value',
			int64 index1,
			int64 index2,
			int64 index3
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x40e40
		// Code size 64 (0x40)
		.maxstack 5
		.locals (
			[0] int32,
			[1] int32,
			[2] int32
		)

		IL_0000: ldarg.2
		IL_0001: conv.i4
		IL_0002: stloc.0
		IL_0003: ldarg.3
		IL_0004: conv.i4
		IL_0005: stloc.1
		IL_0006: ldarg.s index3
		IL_0008: conv.i4
		IL_0009: stloc.2
		IL_000a: ldarg.2
		IL_000b: ldloc.0
		IL_000c: conv.i8
		IL_000d: beq.s IL_0018

		IL_000f: ldc.i4.s 75
		IL_0011: ldc.i4.s 50
		IL_0013: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0018: ldarg.3
		IL_0019: ldloc.1
		IL_001a: conv.i8
		IL_001b: beq.s IL_0026

		IL_001d: ldc.i4.s 76
		IL_001f: ldc.i4.s 50
		IL_0021: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0026: ldarg.s index3
		IL_0028: ldloc.2
		IL_0029: conv.i8
		IL_002a: beq.s IL_0035

		IL_002c: ldc.i4.s 77
		IL_002e: ldc.i4.s 50
		IL_0030: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0035: ldarg.0
		IL_0036: ldarg.1
		IL_0037: ldloc.0
		IL_0038: ldloc.1
		IL_0039: ldloc.2
		IL_003a: call instance void System.Array::SetValue(object, int32, int32, int32)
		IL_003f: ret
	} // end of method Array::SetValue

	.method public hidebysig 
		instance void SetValue (
			object 'value',
			int64[] indices
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [2]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x40e8c
		// Code size 85 (0x55)
		.maxstack 3
		.locals (
			[0] int32[],
			[1] int32,
			[2] int64,
			[3] int32
		)

		IL_0000: ldarg.2
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 74
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: call instance int32 System.Array::get_Rank()
		IL_0010: ldarg.2
		IL_0011: ldlen
		IL_0012: conv.i4
		IL_0013: beq.s IL_001c

		IL_0015: ldc.i4.s 59
		IL_0017: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_001c: ldarg.2
		IL_001d: ldlen
		IL_001e: conv.i4
		IL_001f: newarr System.Int32
		IL_0024: stloc.0
		IL_0025: ldc.i4.0
		IL_0026: stloc.1
		IL_0027: br.s IL_0046
		// loop start (head: IL_0046)
			IL_0029: ldarg.2
			IL_002a: ldloc.1
			IL_002b: ldelem.i8
			IL_002c: stloc.2
			IL_002d: ldloc.2
			IL_002e: conv.i4
			IL_002f: stloc.3
			IL_0030: ldloc.2
			IL_0031: ldloc.3
			IL_0032: conv.i8
			IL_0033: beq.s IL_003e

			IL_0035: ldc.i4.s 21
			IL_0037: ldc.i4.s 50
			IL_0039: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

			IL_003e: ldloc.0
			IL_003f: ldloc.1
			IL_0040: ldloc.3
			IL_0041: stelem.i4
			IL_0042: ldloc.1
			IL_0043: ldc.i4.1
			IL_0044: add
			IL_0045: stloc.1

			IL_0046: ldloc.1
			IL_0047: ldarg.2
			IL_0048: ldlen
			IL_0049: conv.i4
			IL_004a: blt.s IL_0029
		// end loop

		IL_004c: ldarg.0
		IL_004d: ldarg.1
		IL_004e: ldloc.0
		IL_004f: call instance void System.Array::SetValue(object, int32[])
		IL_0054: ret
	} // end of method Array::SetValue

	.method private hidebysig static 
		int32 GetMedian (
			int32 low,
			int32 hi
		) cil managed 
	{
		// Method begins at RVA 0x40eed
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.0
		IL_0003: sub
		IL_0004: ldc.i4.1
		IL_0005: shr
		IL_0006: add
		IL_0007: ret
	} // end of method Array::GetMedian

	.method public hidebysig 
		instance int64 GetLongLength (
			int32 dimension
		) cil managed 
	{
		// Method begins at RVA 0x40ef6
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance int32 System.Array::GetLength(int32)
		IL_0007: conv.i8
		IL_0008: ret
	} // end of method Array::GetLongLength

	.method private final hidebysig specialname newslot virtual 
		instance int32 System.Collections.ICollection.get_Count () cil managed 
	{
		.override method instance int32 System.Collections.ICollection::get_Count()
		// Method begins at RVA 0x40f00
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.Array::get_Length()
		IL_0006: ret
	} // end of method Array::System.Collections.ICollection.get_Count

	.method public final hidebysig specialname newslot virtual 
		instance object get_SyncRoot () cil managed 
	{
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Array::get_SyncRoot

	.method public final hidebysig specialname newslot virtual 
		instance bool get_IsReadOnly () cil managed 
	{
		// Method begins at RVA 0x40f0b
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldc.i4.0
		IL_0001: ret
	} // end of method Array::get_IsReadOnly

	.method public final hidebysig specialname newslot virtual 
		instance bool get_IsFixedSize () cil managed 
	{
		// Method begins at RVA 0x40f0e
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldc.i4.1
		IL_0001: ret
	} // end of method Array::get_IsFixedSize

	.method public final hidebysig specialname newslot virtual 
		instance bool get_IsSynchronized () cil managed 
	{
		// Method begins at RVA 0x40f0b
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldc.i4.0
		IL_0001: ret
	} // end of method Array::get_IsSynchronized

	.method private final hidebysig specialname newslot virtual 
		instance object System.Collections.IList.get_Item (
			int32 index
		) cil managed 
	{
		.override method instance object System.Collections.IList::get_Item(int32)
		// Method begins at RVA 0x40f11
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance object System.Array::GetValue(int32)
		IL_0007: ret
	} // end of method Array::System.Collections.IList.get_Item

	.method private final hidebysig specialname newslot virtual 
		instance void System.Collections.IList.set_Item (
			int32 index,
			object 'value'
		) cil managed 
	{
		.override method instance void System.Collections.IList::set_Item(int32, object)
		// Method begins at RVA 0x40f1a
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.2
		IL_0002: ldarg.1
		IL_0003: call instance void System.Array::SetValue(object, int32)
		IL_0008: ret
	} // end of method Array::System.Collections.IList.set_Item

	.method private final hidebysig newslot virtual 
		instance int32 System.Collections.IList.Add (
			object 'value'
		) cil managed 
	{
		.override method instance int32 System.Collections.IList::Add(object)
		// Method begins at RVA 0x40f24
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldc.i4.s 62
		IL_0002: call void System.ThrowHelper::ThrowNotSupportedException(valuetype System.ExceptionResource)
		IL_0007: ldc.i4.0
		IL_0008: ret
	} // end of method Array::System.Collections.IList.Add

	.method private final hidebysig newslot virtual 
		instance bool System.Collections.IList.Contains (
			object 'value'
		) cil managed 
	{
		.override method instance bool System.Collections.IList::Contains(object)
		// Method begins at RVA 0x40f2e
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call int32 System.Array::IndexOf(class System.Array, object)
		IL_0007: ldarg.0
		IL_0008: ldc.i4.0
		IL_0009: call instance int32 System.Array::GetLowerBound(int32)
		IL_000e: clt
		IL_0010: ldc.i4.0
		IL_0011: ceq
		IL_0013: ret
	} // end of method Array::System.Collections.IList.Contains

	.method private final hidebysig newslot virtual 
		instance void System.Collections.IList.Clear () cil managed 
	{
		.override method instance void System.Collections.IList::Clear()
		// Method begins at RVA 0x40f43
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.0
		IL_0002: ldc.i4.0
		IL_0003: call instance int32 System.Array::GetLowerBound(int32)
		IL_0008: ldarg.0
		IL_0009: call instance int32 System.Array::get_Length()
		IL_000e: call void System.Array::Clear(class System.Array, int32, int32)
		IL_0013: ret
	} // end of method Array::System.Collections.IList.Clear

	.method private final hidebysig newslot virtual 
		instance int32 System.Collections.IList.IndexOf (
			object 'value'
		) cil managed 
	{
		.override method instance int32 System.Collections.IList::IndexOf(object)
		// Method begins at RVA 0x40f58
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call int32 System.Array::IndexOf(class System.Array, object)
		IL_0007: ret
	} // end of method Array::System.Collections.IList.IndexOf

	.method private final hidebysig newslot virtual 
		instance void System.Collections.IList.Insert (
			int32 index,
			object 'value'
		) cil managed 
	{
		.override method instance void System.Collections.IList::Insert(int32, object)
		// Method begins at RVA 0x40f61
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldc.i4.s 62
		IL_0002: call void System.ThrowHelper::ThrowNotSupportedException(valuetype System.ExceptionResource)
		IL_0007: ret
	} // end of method Array::System.Collections.IList.Insert

	.method private final hidebysig newslot virtual 
		instance void System.Collections.IList.Remove (
			object 'value'
		) cil managed 
	{
		.override method instance void System.Collections.IList::Remove(object)
		// Method begins at RVA 0x40f61
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldc.i4.s 62
		IL_0002: call void System.ThrowHelper::ThrowNotSupportedException(valuetype System.ExceptionResource)
		IL_0007: ret
	} // end of method Array::System.Collections.IList.Remove

	.method private final hidebysig newslot virtual 
		instance void System.Collections.IList.RemoveAt (
			int32 index
		) cil managed 
	{
		.override method instance void System.Collections.IList::RemoveAt(int32)
		// Method begins at RVA 0x40f61
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldc.i4.s 62
		IL_0002: call void System.ThrowHelper::ThrowNotSupportedException(valuetype System.ExceptionResource)
		IL_0007: ret
	} // end of method Array::System.Collections.IList.RemoveAt

	.method public final hidebysig newslot virtual 
		instance object Clone () cil managed 
	{
		// Method begins at RVA 0x40f6a
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance object System.Object::MemberwiseClone()
		IL_0006: ret
	} // end of method Array::Clone

	.method private final hidebysig newslot virtual 
		instance int32 System.Collections.IStructuralComparable.CompareTo (
			object other,
			class System.Collections.IComparer comparer
		) cil managed 
	{
		.override method instance int32 System.Collections.IStructuralComparable::CompareTo(object, class System.Collections.IComparer)
		// Method begins at RVA 0x40f74
		// Code size 89 (0x59)
		.maxstack 3
		.locals (
			[0] class System.Array,
			[1] int32,
			[2] int32,
			[3] object,
			[4] object
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.1
		IL_0004: ret

		IL_0005: ldarg.1
		IL_0006: isinst System.Array
		IL_000b: stloc.0
		IL_000c: ldloc.0
		IL_000d: brfalse.s IL_001d

		IL_000f: ldarg.0
		IL_0010: call instance int32 System.Array::get_Length()
		IL_0015: ldloc.0
		IL_0016: callvirt instance int32 System.Array::get_Length()
		IL_001b: beq.s IL_0026

		IL_001d: ldc.i4.s 45
		IL_001f: ldc.i4.s 68
		IL_0021: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource, valuetype System.ExceptionArgument)

		IL_0026: ldc.i4.0
		IL_0027: stloc.1
		IL_0028: ldc.i4.0
		IL_0029: stloc.2
		IL_002a: br.s IL_004b
		// loop start (head: IL_004b)
			IL_002c: ldarg.0
			IL_002d: ldloc.1
			IL_002e: call instance object System.Array::GetValue(int32)
			IL_0033: stloc.3
			IL_0034: ldloc.0
			IL_0035: ldloc.1
			IL_0036: callvirt instance object System.Array::GetValue(int32)
			IL_003b: stloc.s 4
			IL_003d: ldarg.2
			IL_003e: ldloc.3
			IL_003f: ldloc.s 4
			IL_0041: callvirt instance int32 System.Collections.IComparer::Compare(object, object)
			IL_0046: stloc.2
			IL_0047: ldloc.1
			IL_0048: ldc.i4.1
			IL_0049: add
			IL_004a: stloc.1

			IL_004b: ldloc.1
			IL_004c: ldloc.0
			IL_004d: callvirt instance int32 System.Array::get_Length()
			IL_0052: bge.s IL_0057

			IL_0054: ldloc.2
			IL_0055: brfalse.s IL_002c
		// end loop

		IL_0057: ldloc.2
		IL_0058: ret
	} // end of method Array::System.Collections.IStructuralComparable.CompareTo

	.method private final hidebysig newslot virtual 
		instance bool System.Collections.IStructuralEquatable.Equals (
			object other,
			class System.Collections.IEqualityComparer comparer
		) cil managed 
	{
		.override method instance bool System.Collections.IStructuralEquatable::Equals(object, class System.Collections.IEqualityComparer)
		// Method begins at RVA 0x40fdc
		// Code size 84 (0x54)
		.maxstack 3
		.locals (
			[0] class System.Array,
			[1] int32,
			[2] object,
			[3] object
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldarg.0
		IL_0006: ldarg.1
		IL_0007: bne.un.s IL_000b

		IL_0009: ldc.i4.1
		IL_000a: ret

		IL_000b: ldarg.1
		IL_000c: isinst System.Array
		IL_0011: stloc.0
		IL_0012: ldloc.0
		IL_0013: brfalse.s IL_0023

		IL_0015: ldloc.0
		IL_0016: callvirt instance int32 System.Array::get_Length()
		IL_001b: ldarg.0
		IL_001c: call instance int32 System.Array::get_Length()
		IL_0021: beq.s IL_0025

		IL_0023: ldc.i4.0
		IL_0024: ret

		IL_0025: ldc.i4.0
		IL_0026: stloc.1
		IL_0027: br.s IL_0049
		// loop start (head: IL_0049)
			IL_0029: ldarg.0
			IL_002a: ldloc.1
			IL_002b: call instance object System.Array::GetValue(int32)
			IL_0030: stloc.2
			IL_0031: ldloc.0
			IL_0032: ldloc.1
			IL_0033: callvirt instance object System.Array::GetValue(int32)
			IL_0038: stloc.3
			IL_0039: ldarg.2
			IL_003a: ldloc.2
			IL_003b: ldloc.3
			IL_003c: callvirt instance bool System.Collections.IEqualityComparer::Equals(object, object)
			IL_0041: brtrue.s IL_0045

			IL_0043: ldc.i4.0
			IL_0044: ret

			IL_0045: ldloc.1
			IL_0046: ldc.i4.1
			IL_0047: add
			IL_0048: stloc.1

			IL_0049: ldloc.1
			IL_004a: ldloc.0
			IL_004b: callvirt instance int32 System.Array::get_Length()
			IL_0050: blt.s IL_0029
		// end loop

		IL_0052: ldc.i4.1
		IL_0053: ret
	} // end of method Array::System.Collections.IStructuralEquatable.Equals

	.method private final hidebysig newslot virtual 
		instance int32 System.Collections.IStructuralEquatable.GetHashCode (
			class System.Collections.IEqualityComparer comparer
		) cil managed 
	{
		.override method instance int32 System.Collections.IStructuralEquatable::GetHashCode(class System.Collections.IEqualityComparer)
		// Method begins at RVA 0x4103c
		// Code size 82 (0x52)
		.maxstack 4
		.locals (
			[0] valuetype System.HashCode,
			[1] int32
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 36
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldloca.s 0
		IL_000c: initobj System.HashCode
		IL_0012: ldarg.0
		IL_0013: call instance int32 System.Array::get_Length()
		IL_0018: ldc.i4.8
		IL_0019: bge.s IL_001e

		IL_001b: ldc.i4.0
		IL_001c: br.s IL_0026

		IL_001e: ldarg.0
		IL_001f: call instance int32 System.Array::get_Length()
		IL_0024: ldc.i4.8
		IL_0025: sub

		IL_0026: stloc.1
		IL_0027: br.s IL_0041
		// loop start (head: IL_0041)
			IL_0029: ldloca.s 0
			IL_002b: ldarg.1
			IL_002c: ldarg.0
			IL_002d: ldloc.1
			IL_002e: call instance object System.Array::GetValue(int32)
			IL_0033: callvirt instance int32 System.Collections.IEqualityComparer::GetHashCode(object)
			IL_0038: call instance void System.HashCode::Add<int32>(!!0)
			IL_003d: ldloc.1
			IL_003e: ldc.i4.1
			IL_003f: add
			IL_0040: stloc.1

			IL_0041: ldloc.1
			IL_0042: ldarg.0
			IL_0043: call instance int32 System.Array::get_Length()
			IL_0048: blt.s IL_0029
		// end loop

		IL_004a: ldloca.s 0
		IL_004c: call instance int32 System.HashCode::ToHashCode()
		IL_0051: ret
	} // end of method Array::System.Collections.IStructuralEquatable.GetHashCode

	.method public hidebysig static 
		int32 BinarySearch (
			class System.Array 'array',
			object 'value'
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x4109a
		// Code size 31 (0x1f)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldarg.0
		IL_000b: ldc.i4.0
		IL_000c: callvirt instance int32 System.Array::GetLowerBound(int32)
		IL_0011: ldarg.0
		IL_0012: callvirt instance int32 System.Array::get_Length()
		IL_0017: ldarg.1
		IL_0018: ldnull
		IL_0019: call int32 System.Array::BinarySearch(class System.Array, int32, int32, object, class System.Collections.IComparer)
		IL_001e: ret
	} // end of method Array::BinarySearch

	.method public hidebysig static 
		int32 BinarySearch (
			class System.Array 'array',
			int32 index,
			int32 length,
			object 'value'
		) cil managed 
	{
		.param [4]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x410ba
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: ldnull
		IL_0005: call int32 System.Array::BinarySearch(class System.Array, int32, int32, object, class System.Collections.IComparer)
		IL_000a: ret
	} // end of method Array::BinarySearch

	.method public hidebysig static 
		int32 BinarySearch (
			class System.Array 'array',
			object 'value',
			class System.Collections.IComparer comparer
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x410c6
		// Code size 31 (0x1f)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldarg.0
		IL_000b: ldc.i4.0
		IL_000c: callvirt instance int32 System.Array::GetLowerBound(int32)
		IL_0011: ldarg.0
		IL_0012: callvirt instance int32 System.Array::get_Length()
		IL_0017: ldarg.1
		IL_0018: ldarg.2
		IL_0019: call int32 System.Array::BinarySearch(class System.Array, int32, int32, object, class System.Collections.IComparer)
		IL_001e: ret
	} // end of method Array::BinarySearch

	.method public hidebysig static 
		int32 BinarySearch (
			class System.Array 'array',
			int32 index,
			int32 length,
			object 'value',
			class System.Collections.IComparer comparer
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x410e8
		// Code size 579 (0x243)
		.maxstack 4
		.locals (
			[0] int32,
			[1] int32,
			[2] int32,
			[3] object[],
			[4] int32,
			[5] int32,
			[6] class System.Exception,
			[7] int32,
			[8] valuetype System.Reflection.CorElementType,
			[9] int32,
			[10] int32,
			[11] int32,
			[12] int32,
			[13] class System.Exception
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldc.i4.0
		IL_000b: callvirt instance int32 System.Array::GetLowerBound(int32)
		IL_0010: stloc.0
		IL_0011: ldarg.1
		IL_0012: ldloc.0
		IL_0013: bge.s IL_001a

		IL_0015: call void System.ThrowHelper::ThrowIndexArgumentOutOfRange_NeedNonNegNumException()

		IL_001a: ldarg.2
		IL_001b: ldc.i4.0
		IL_001c: bge.s IL_0023

		IL_001e: call void System.ThrowHelper::ThrowLengthArgumentOutOfRange_ArgumentOutOfRange_NeedNonNegNum()

		IL_0023: ldarg.0
		IL_0024: callvirt instance int32 System.Array::get_Length()
		IL_0029: ldarg.1
		IL_002a: ldloc.0
		IL_002b: sub
		IL_002c: sub
		IL_002d: ldarg.2
		IL_002e: bge.s IL_0037

		IL_0030: ldc.i4.s 13
		IL_0032: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0037: ldarg.0
		IL_0038: callvirt instance int32 System.Array::get_Rank()
		IL_003d: ldc.i4.1
		IL_003e: beq.s IL_0047

		IL_0040: ldc.i4.s 63
		IL_0042: call void System.ThrowHelper::ThrowRankException(valuetype System.ExceptionResource)

		IL_0047: ldarg.s comparer
		IL_0049: brtrue.s IL_0052

		IL_004b: ldsfld class System.Collections.Comparer System.Collections.Comparer::Default
		IL_0050: starg.s comparer

		IL_0052: ldarg.1
		IL_0053: stloc.1
		IL_0054: ldarg.1
		IL_0055: ldarg.2
		IL_0056: add
		IL_0057: ldc.i4.1
		IL_0058: sub
		IL_0059: stloc.2
		IL_005a: ldarg.0
		IL_005b: isinst object[]
		IL_0060: stloc.3
		IL_0061: ldloc.3
		IL_0062: brfalse.s IL_00b1

		IL_0064: br.s IL_00aa
		// loop start (head: IL_00aa)
			IL_0066: ldloc.1
			IL_0067: ldloc.2
			IL_0068: call int32 System.Array::GetMedian(int32, int32)
			IL_006d: stloc.s 4
			.try
			{
				IL_006f: ldarg.s comparer
				IL_0071: ldloc.3
				IL_0072: ldloc.s 4
				IL_0074: ldelem.ref
				IL_0075: ldarg.3
				IL_0076: callvirt instance int32 System.Collections.IComparer::Compare(object, object)
				IL_007b: stloc.s 5
				IL_007d: leave.s IL_0092
			} // end .try
			catch System.Exception
			{
				IL_007f: stloc.s 6
				IL_0081: ldc.i4.s 61
				IL_0083: ldloc.s 6
				IL_0085: call void System.ThrowHelper::ThrowInvalidOperationException(valuetype System.ExceptionResource, class System.Exception)
				IL_008a: ldc.i4.0
				IL_008b: stloc.s 7
				IL_008d: leave IL_0240
			} // end handler

			IL_0092: ldloc.s 5
			IL_0094: brtrue.s IL_0099

			IL_0096: ldloc.s 4
			IL_0098: ret

			IL_0099: ldloc.s 5
			IL_009b: ldc.i4.0
			IL_009c: bge.s IL_00a5

			IL_009e: ldloc.s 4
			IL_00a0: ldc.i4.1
			IL_00a1: add
			IL_00a2: stloc.1
			IL_00a3: br.s IL_00aa

			IL_00a5: ldloc.s 4
			IL_00a7: ldc.i4.1
			IL_00a8: sub
			IL_00a9: stloc.2

			IL_00aa: ldloc.1
			IL_00ab: ldloc.2
			IL_00ac: ble.s IL_0066
		// end loop

		IL_00ae: ldloc.1
		IL_00af: not
		IL_00b0: ret

		IL_00b1: ldarg.s comparer
		IL_00b3: ldsfld class System.Collections.Comparer System.Collections.Comparer::Default
		IL_00b8: bne.un IL_0239

		IL_00bd: ldarg.0
		IL_00be: callvirt instance valuetype System.Reflection.CorElementType System.Array::GetCorElementTypeOfElementType()
		IL_00c3: stloc.s 8
		IL_00c5: ldloc.s 8
		IL_00c7: call bool System.Runtime.CompilerServices.RuntimeHelpers::IsPrimitiveType(valuetype System.Reflection.CorElementType)
		IL_00cc: brfalse IL_0239

		IL_00d1: ldarg.3
		IL_00d2: brtrue.s IL_00d7

		IL_00d4: ldarg.1
		IL_00d5: not
		IL_00d6: ret

		IL_00d7: ldarg.0
		IL_00d8: ldarg.3
		IL_00d9: callvirt instance bool System.Array::IsValueOfElementType(object)
		IL_00de: brfalse IL_0239

		IL_00e3: ldarg.1
		IL_00e4: ldloc.0
		IL_00e5: sub
		IL_00e6: stloc.s 9
		IL_00e8: ldc.i4.m1
		IL_00e9: stloc.s 10
		IL_00eb: ldloc.s 8
		IL_00ed: ldc.i4.2
		IL_00ee: sub
		IL_00ef: switch (IL_0167, IL_0183, IL_0159, IL_0167, IL_0175, IL_0183, IL_0191, IL_019f, IL_01ad, IL_01bb, IL_01c9, IL_01d7, IL_01e3, IL_01e3, IL_01e3, IL_01e3, IL_01e3, IL_01e3, IL_01e3, IL_01e3, IL_01e3, IL_01e3, IL_0191, IL_019f)

		IL_0154: br IL_01e3

		IL_0159: ldarg.0
		IL_015a: ldloc.s 9
		IL_015c: ldarg.2
		IL_015d: ldarg.3
		IL_015e: call int32 System.Array::'<BinarySearch>g__GenericBinarySearch|81_0'<int8>(class System.Array, int32, int32, object)
		IL_0163: stloc.s 10
		IL_0165: br.s IL_01e3

		IL_0167: ldarg.0
		IL_0168: ldloc.s 9
		IL_016a: ldarg.2
		IL_016b: ldarg.3
		IL_016c: call int32 System.Array::'<BinarySearch>g__GenericBinarySearch|81_0'<uint8>(class System.Array, int32, int32, object)
		IL_0171: stloc.s 10
		IL_0173: br.s IL_01e3

		IL_0175: ldarg.0
		IL_0176: ldloc.s 9
		IL_0178: ldarg.2
		IL_0179: ldarg.3
		IL_017a: call int32 System.Array::'<BinarySearch>g__GenericBinarySearch|81_0'<int16>(class System.Array, int32, int32, object)
		IL_017f: stloc.s 10
		IL_0181: br.s IL_01e3

		IL_0183: ldarg.0
		IL_0184: ldloc.s 9
		IL_0186: ldarg.2
		IL_0187: ldarg.3
		IL_0188: call int32 System.Array::'<BinarySearch>g__GenericBinarySearch|81_0'<uint16>(class System.Array, int32, int32, object)
		IL_018d: stloc.s 10
		IL_018f: br.s IL_01e3

		IL_0191: ldarg.0
		IL_0192: ldloc.s 9
		IL_0194: ldarg.2
		IL_0195: ldarg.3
		IL_0196: call int32 System.Array::'<BinarySearch>g__GenericBinarySearch|81_0'<int32>(class System.Array, int32, int32, object)
		IL_019b: stloc.s 10
		IL_019d: br.s IL_01e3

		IL_019f: ldarg.0
		IL_01a0: ldloc.s 9
		IL_01a2: ldarg.2
		IL_01a3: ldarg.3
		IL_01a4: call int32 System.Array::'<BinarySearch>g__GenericBinarySearch|81_0'<uint32>(class System.Array, int32, int32, object)
		IL_01a9: stloc.s 10
		IL_01ab: br.s IL_01e3

		IL_01ad: ldarg.0
		IL_01ae: ldloc.s 9
		IL_01b0: ldarg.2
		IL_01b1: ldarg.3
		IL_01b2: call int32 System.Array::'<BinarySearch>g__GenericBinarySearch|81_0'<int64>(class System.Array, int32, int32, object)
		IL_01b7: stloc.s 10
		IL_01b9: br.s IL_01e3

		IL_01bb: ldarg.0
		IL_01bc: ldloc.s 9
		IL_01be: ldarg.2
		IL_01bf: ldarg.3
		IL_01c0: call int32 System.Array::'<BinarySearch>g__GenericBinarySearch|81_0'<uint64>(class System.Array, int32, int32, object)
		IL_01c5: stloc.s 10
		IL_01c7: br.s IL_01e3

		IL_01c9: ldarg.0
		IL_01ca: ldloc.s 9
		IL_01cc: ldarg.2
		IL_01cd: ldarg.3
		IL_01ce: call int32 System.Array::'<BinarySearch>g__GenericBinarySearch|81_0'<float32>(class System.Array, int32, int32, object)
		IL_01d3: stloc.s 10
		IL_01d5: br.s IL_01e3

		IL_01d7: ldarg.0
		IL_01d8: ldloc.s 9
		IL_01da: ldarg.2
		IL_01db: ldarg.3
		IL_01dc: call int32 System.Array::'<BinarySearch>g__GenericBinarySearch|81_0'<float64>(class System.Array, int32, int32, object)
		IL_01e1: stloc.s 10

		IL_01e3: ldloc.s 10
		IL_01e5: ldc.i4.0
		IL_01e6: bge.s IL_01ef

		IL_01e8: ldarg.1
		IL_01e9: ldloc.s 10
		IL_01eb: not
		IL_01ec: add
		IL_01ed: not
		IL_01ee: ret

		IL_01ef: ldarg.1
		IL_01f0: ldloc.s 10
		IL_01f2: add
		IL_01f3: ret
		// loop start (head: IL_0239)
			IL_01f4: ldloc.1
			IL_01f5: ldloc.2
			IL_01f6: call int32 System.Array::GetMedian(int32, int32)
			IL_01fb: stloc.s 11
			.try
			{
				IL_01fd: ldarg.s comparer
				IL_01ff: ldarg.0
				IL_0200: ldloc.s 11
				IL_0202: callvirt instance object System.Array::GetValue(int32)
				IL_0207: ldarg.3
				IL_0208: callvirt instance int32 System.Collections.IComparer::Compare(object, object)
				IL_020d: stloc.s 12
				IL_020f: leave.s IL_0221
			} // end .try
			catch System.Exception
			{
				IL_0211: stloc.s 13
				IL_0213: ldc.i4.s 61
				IL_0215: ldloc.s 13
				IL_0217: call void System.ThrowHelper::ThrowInvalidOperationException(valuetype System.ExceptionResource, class System.Exception)
				IL_021c: ldc.i4.0
				IL_021d: stloc.s 7
				IL_021f: leave.s IL_0240
			} // end handler

			IL_0221: ldloc.s 12
			IL_0223: brtrue.s IL_0228

			IL_0225: ldloc.s 11
			IL_0227: ret

			IL_0228: ldloc.s 12
			IL_022a: ldc.i4.0
			IL_022b: bge.s IL_0234

			IL_022d: ldloc.s 11
			IL_022f: ldc.i4.1
			IL_0230: add
			IL_0231: stloc.1
			IL_0232: br.s IL_0239

			IL_0234: ldloc.s 11
			IL_0236: ldc.i4.1
			IL_0237: sub
			IL_0238: stloc.2

			IL_0239: ldloc.1
			IL_023a: ldloc.2
			IL_023b: ble.s IL_01f4
		// end loop

		IL_023d: ldloc.1
		IL_023e: not
		IL_023f: ret

		IL_0240: ldloc.s 7
		IL_0242: ret
	} // end of method Array::BinarySearch

	.method public hidebysig static 
		int32 BinarySearch<T> (
			!!T[] 'array',
			!!T 'value'
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x41354
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldc.i4.0
		IL_000b: ldarg.0
		IL_000c: ldlen
		IL_000d: conv.i4
		IL_000e: ldarg.1
		IL_000f: ldnull
		IL_0010: call int32 System.Array::BinarySearch<!!T>(!!0[], int32, int32, !!0, class System.Collections.Generic.IComparer`1<!!0>)
		IL_0015: ret
	} // end of method Array::BinarySearch

	.method public hidebysig static 
		int32 BinarySearch<T> (
			!!T[] 'array',
			!!T 'value',
			class System.Collections.Generic.IComparer`1<!!T> comparer
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		// Method begins at RVA 0x4136b
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldc.i4.0
		IL_000b: ldarg.0
		IL_000c: ldlen
		IL_000d: conv.i4
		IL_000e: ldarg.1
		IL_000f: ldarg.2
		IL_0010: call int32 System.Array::BinarySearch<!!T>(!!0[], int32, int32, !!0, class System.Collections.Generic.IComparer`1<!!0>)
		IL_0015: ret
	} // end of method Array::BinarySearch

	.method public hidebysig static 
		int32 BinarySearch<T> (
			!!T[] 'array',
			int32 index,
			int32 length,
			!!T 'value'
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x41382
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: ldnull
		IL_0005: call int32 System.Array::BinarySearch<!!T>(!!0[], int32, int32, !!0, class System.Collections.Generic.IComparer`1<!!0>)
		IL_000a: ret
	} // end of method Array::BinarySearch

	.method public hidebysig static 
		int32 BinarySearch<T> (
			!!T[] 'array',
			int32 index,
			int32 length,
			!!T 'value',
			class System.Collections.Generic.IComparer`1<!!T> comparer
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [5]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		// Method begins at RVA 0x4138e
		// Code size 59 (0x3b)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.1
		IL_000a: ldc.i4.0
		IL_000b: bge.s IL_0012

		IL_000d: call void System.ThrowHelper::ThrowIndexArgumentOutOfRange_NeedNonNegNumException()

		IL_0012: ldarg.2
		IL_0013: ldc.i4.0
		IL_0014: bge.s IL_001b

		IL_0016: call void System.ThrowHelper::ThrowLengthArgumentOutOfRange_ArgumentOutOfRange_NeedNonNegNum()

		IL_001b: ldarg.0
		IL_001c: ldlen
		IL_001d: conv.i4
		IL_001e: ldarg.1
		IL_001f: sub
		IL_0020: ldarg.2
		IL_0021: bge.s IL_002a

		IL_0023: ldc.i4.s 13
		IL_0025: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_002a: call class System.Collections.Generic.IArraySortHelper`1<!0> class System.Collections.Generic.ArraySortHelper`1<!!T>::get_Default()
		IL_002f: ldarg.0
		IL_0030: ldarg.1
		IL_0031: ldarg.2
		IL_0032: ldarg.3
		IL_0033: ldarg.s comparer
		IL_0035: callvirt instance int32 class System.Collections.Generic.IArraySortHelper`1<!!T>::BinarySearch(!0[], int32, int32, !0, class System.Collections.Generic.IComparer`1<!0>)
		IL_003a: ret
	} // end of method Array::BinarySearch

	.method public hidebysig static 
		!!TOutput[] ConvertAll<TInput, TOutput> (
			!!TInput[] 'array',
			class System.Converter`2<!!TInput, !!TOutput> converter
		) cil managed 
	{
		.param type TInput
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param type TOutput
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x413cc
		// Code size 64 (0x40)
		.maxstack 5
		.locals (
			[0] !!TOutput[],
			[1] int32
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.1
		IL_000a: brtrue.s IL_0013

		IL_000c: ldc.i4.s 25
		IL_000e: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0013: ldarg.0
		IL_0014: ldlen
		IL_0015: conv.i4
		IL_0016: newarr !!TOutput
		IL_001b: stloc.0
		IL_001c: ldc.i4.0
		IL_001d: stloc.1
		IL_001e: br.s IL_0038
		// loop start (head: IL_0038)
			IL_0020: ldloc.0
			IL_0021: ldloc.1
			IL_0022: ldarg.1
			IL_0023: ldarg.0
			IL_0024: ldloc.1
			IL_0025: ldelem !!TInput
			IL_002a: callvirt instance !1 class System.Converter`2<!!TInput, !!TOutput>::Invoke(!0)
			IL_002f: stelem !!TOutput
			IL_0034: ldloc.1
			IL_0035: ldc.i4.1
			IL_0036: add
			IL_0037: stloc.1

			IL_0038: ldloc.1
			IL_0039: ldarg.0
			IL_003a: ldlen
			IL_003b: conv.i4
			IL_003c: blt.s IL_0020
		// end loop

		IL_003e: ldloc.0
		IL_003f: ret
	} // end of method Array::ConvertAll

	.method public final hidebysig newslot virtual 
		instance void CopyTo (
			class System.Array 'array',
			int32 index
		) cil managed 
	{
		// Method begins at RVA 0x41418
		// Code size 40 (0x28)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brfalse.s IL_0012

		IL_0003: ldarg.1
		IL_0004: callvirt instance int32 System.Array::get_Rank()
		IL_0009: ldc.i4.1
		IL_000a: beq.s IL_0012

		IL_000c: ldc.i4.7
		IL_000d: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0012: ldarg.0
		IL_0013: ldarg.0
		IL_0014: ldc.i4.0
		IL_0015: call instance int32 System.Array::GetLowerBound(int32)
		IL_001a: ldarg.1
		IL_001b: ldarg.2
		IL_001c: ldarg.0
		IL_001d: call instance int32 System.Array::get_Length()
		IL_0022: call void System.Array::Copy(class System.Array, int32, class System.Array, int32, int32)
		IL_0027: ret
	} // end of method Array::CopyTo

	.method public hidebysig 
		instance void CopyTo (
			class System.Array 'array',
			int64 index
		) cil managed 
	{
		// Method begins at RVA 0x41444
		// Code size 26 (0x1a)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.2
		IL_0001: conv.i4
		IL_0002: stloc.0
		IL_0003: ldarg.2
		IL_0004: ldloc.0
		IL_0005: conv.i8
		IL_0006: beq.s IL_0011

		IL_0008: ldc.i4.s 21
		IL_000a: ldc.i4.s 50
		IL_000c: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_0011: ldarg.0
		IL_0012: ldarg.1
		IL_0013: ldloc.0
		IL_0014: call instance void System.Array::CopyTo(class System.Array, int32)
		IL_0019: ret
	} // end of method Array::CopyTo

	.method public hidebysig static 
		!!T[] Empty<T> () cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x4146a
		// Code size 6 (0x6)
		.maxstack 8

		IL_0000: ldsfld !0[] class System.Array/EmptyArray`1<!!T>::Value
		IL_0005: ret
	} // end of method Array::Empty

	.method public hidebysig static 
		bool Exists<T> (
			!!T[] 'array',
			class System.Predicate`1<!!T> match
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x41471
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call int32 System.Array::FindIndex<!!T>(!!0[], class System.Predicate`1<!!0>)
		IL_0007: ldc.i4.m1
		IL_0008: ceq
		IL_000a: ldc.i4.0
		IL_000b: ceq
		IL_000d: ret
	} // end of method Array::Exists

	.method public hidebysig static 
		void Fill<T> (
			!!T[] 'array',
			!!T 'value'
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x41480
		// Code size 32 (0x20)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldc.i4.0
		IL_000a: stloc.0
		IL_000b: br.s IL_0019
		// loop start (head: IL_0019)
			IL_000d: ldarg.0
			IL_000e: ldloc.0
			IL_000f: ldarg.1
			IL_0010: stelem !!T
			IL_0015: ldloc.0
			IL_0016: ldc.i4.1
			IL_0017: add
			IL_0018: stloc.0

			IL_0019: ldloc.0
			IL_001a: ldarg.0
			IL_001b: ldlen
			IL_001c: conv.i4
			IL_001d: blt.s IL_000d
		// end loop

		IL_001f: ret
	} // end of method Array::Fill

	.method public hidebysig static 
		void Fill<T> (
			!!T[] 'array',
			!!T 'value',
			int32 startIndex,
			int32 count
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x414ac
		// Code size 64 (0x40)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.2
		IL_000a: ldc.i4.0
		IL_000b: blt.s IL_0013

		IL_000d: ldarg.2
		IL_000e: ldarg.0
		IL_000f: ldlen
		IL_0010: conv.i4
		IL_0011: ble.s IL_0018

		IL_0013: call void System.ThrowHelper::ThrowStartIndexArgumentOutOfRange_ArgumentOutOfRange_Index()

		IL_0018: ldarg.3
		IL_0019: ldc.i4.0
		IL_001a: blt.s IL_0024

		IL_001c: ldarg.2
		IL_001d: ldarg.0
		IL_001e: ldlen
		IL_001f: conv.i4
		IL_0020: ldarg.3
		IL_0021: sub
		IL_0022: ble.s IL_0029

		IL_0024: call void System.ThrowHelper::ThrowCountArgumentOutOfRange_ArgumentOutOfRange_Count()

		IL_0029: ldarg.2
		IL_002a: stloc.0
		IL_002b: br.s IL_0039
		// loop start (head: IL_0039)
			IL_002d: ldarg.0
			IL_002e: ldloc.0
			IL_002f: ldarg.1
			IL_0030: stelem !!T
			IL_0035: ldloc.0
			IL_0036: ldc.i4.1
			IL_0037: add
			IL_0038: stloc.0

			IL_0039: ldloc.0
			IL_003a: ldarg.2
			IL_003b: ldarg.3
			IL_003c: add
			IL_003d: blt.s IL_002d
		// end loop

		IL_003f: ret
	} // end of method Array::Fill

	.method public hidebysig static 
		!!T Find<T> (
			!!T[] 'array',
			class System.Predicate`1<!!T> match
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x414f8
		// Code size 66 (0x42)
		.maxstack 3
		.locals (
			[0] int32,
			[1] !!T
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.1
		IL_000a: brtrue.s IL_0013

		IL_000c: ldc.i4.s 26
		IL_000e: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0013: ldc.i4.0
		IL_0014: stloc.0
		IL_0015: br.s IL_0032
		// loop start (head: IL_0032)
			IL_0017: ldarg.1
			IL_0018: ldarg.0
			IL_0019: ldloc.0
			IL_001a: ldelem !!T
			IL_001f: callvirt instance bool class System.Predicate`1<!!T>::Invoke(!0)
			IL_0024: brfalse.s IL_002e

			IL_0026: ldarg.0
			IL_0027: ldloc.0
			IL_0028: ldelem !!T
			IL_002d: ret

			IL_002e: ldloc.0
			IL_002f: ldc.i4.1
			IL_0030: add
			IL_0031: stloc.0

			IL_0032: ldloc.0
			IL_0033: ldarg.0
			IL_0034: ldlen
			IL_0035: conv.i4
			IL_0036: blt.s IL_0017
		// end loop

		IL_0038: ldloca.s 1
		IL_003a: initobj !!T
		IL_0040: ldloc.1
		IL_0041: ret
	} // end of method Array::Find

	.method public hidebysig static 
		!!T[] FindAll<T> (
			!!T[] 'array',
			class System.Predicate`1<!!T> match
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x41548
		// Code size 74 (0x4a)
		.maxstack 3
		.locals (
			[0] class System.Collections.Generic.List`1<!!T>,
			[1] int32
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.1
		IL_000a: brtrue.s IL_0013

		IL_000c: ldc.i4.s 26
		IL_000e: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0013: newobj instance void class System.Collections.Generic.List`1<!!T>::.ctor()
		IL_0018: stloc.0
		IL_0019: ldc.i4.0
		IL_001a: stloc.1
		IL_001b: br.s IL_003d
		// loop start (head: IL_003d)
			IL_001d: ldarg.1
			IL_001e: ldarg.0
			IL_001f: ldloc.1
			IL_0020: ldelem !!T
			IL_0025: callvirt instance bool class System.Predicate`1<!!T>::Invoke(!0)
			IL_002a: brfalse.s IL_0039

			IL_002c: ldloc.0
			IL_002d: ldarg.0
			IL_002e: ldloc.1
			IL_002f: ldelem !!T
			IL_0034: callvirt instance void class System.Collections.Generic.List`1<!!T>::Add(!0)

			IL_0039: ldloc.1
			IL_003a: ldc.i4.1
			IL_003b: add
			IL_003c: stloc.1

			IL_003d: ldloc.1
			IL_003e: ldarg.0
			IL_003f: ldlen
			IL_0040: conv.i4
			IL_0041: blt.s IL_001d
		// end loop

		IL_0043: ldloc.0
		IL_0044: callvirt instance !0[] class System.Collections.Generic.List`1<!!T>::ToArray()
		IL_0049: ret
	} // end of method Array::FindAll

	.method public hidebysig static 
		int32 FindIndex<T> (
			!!T[] 'array',
			class System.Predicate`1<!!T> match
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x4159e
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldc.i4.0
		IL_000b: ldarg.0
		IL_000c: ldlen
		IL_000d: conv.i4
		IL_000e: ldarg.1
		IL_000f: call int32 System.Array::FindIndex<!!T>(!!0[], int32, int32, class System.Predicate`1<!!0>)
		IL_0014: ret
	} // end of method Array::FindIndex

	.method public hidebysig static 
		int32 FindIndex<T> (
			!!T[] 'array',
			int32 startIndex,
			class System.Predicate`1<!!T> match
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x415b4
		// Code size 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldarg.1
		IL_000b: ldarg.0
		IL_000c: ldlen
		IL_000d: conv.i4
		IL_000e: ldarg.1
		IL_000f: sub
		IL_0010: ldarg.2
		IL_0011: call int32 System.Array::FindIndex<!!T>(!!0[], int32, int32, class System.Predicate`1<!!0>)
		IL_0016: ret
	} // end of method Array::FindIndex

	.method public hidebysig static 
		int32 FindIndex<T> (
			!!T[] 'array',
			int32 startIndex,
			int32 count,
			class System.Predicate`1<!!T> match
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x415cc
		// Code size 86 (0x56)
		.maxstack 3
		.locals (
			[0] int32,
			[1] int32
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.1
		IL_000a: ldc.i4.0
		IL_000b: blt.s IL_0013

		IL_000d: ldarg.1
		IL_000e: ldarg.0
		IL_000f: ldlen
		IL_0010: conv.i4
		IL_0011: ble.s IL_0018

		IL_0013: call void System.ThrowHelper::ThrowStartIndexArgumentOutOfRange_ArgumentOutOfRange_Index()

		IL_0018: ldarg.2
		IL_0019: ldc.i4.0
		IL_001a: blt.s IL_0024

		IL_001c: ldarg.1
		IL_001d: ldarg.0
		IL_001e: ldlen
		IL_001f: conv.i4
		IL_0020: ldarg.2
		IL_0021: sub
		IL_0022: ble.s IL_0029

		IL_0024: call void System.ThrowHelper::ThrowCountArgumentOutOfRange_ArgumentOutOfRange_Count()

		IL_0029: ldarg.3
		IL_002a: brtrue.s IL_0033

		IL_002c: ldc.i4.s 26
		IL_002e: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0033: ldarg.1
		IL_0034: ldarg.2
		IL_0035: add
		IL_0036: stloc.0
		IL_0037: ldarg.1
		IL_0038: stloc.1
		IL_0039: br.s IL_0050
		// loop start (head: IL_0050)
			IL_003b: ldarg.3
			IL_003c: ldarg.0
			IL_003d: ldloc.1
			IL_003e: ldelem !!T
			IL_0043: callvirt instance bool class System.Predicate`1<!!T>::Invoke(!0)
			IL_0048: brfalse.s IL_004c

			IL_004a: ldloc.1
			IL_004b: ret

			IL_004c: ldloc.1
			IL_004d: ldc.i4.1
			IL_004e: add
			IL_004f: stloc.1

			IL_0050: ldloc.1
			IL_0051: ldloc.0
			IL_0052: blt.s IL_003b
		// end loop

		IL_0054: ldc.i4.m1
		IL_0055: ret
	} // end of method Array::FindIndex

	.method public hidebysig static 
		!!T FindLast<T> (
			!!T[] 'array',
			class System.Predicate`1<!!T> match
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x41630
		// Code size 68 (0x44)
		.maxstack 3
		.locals (
			[0] int32,
			[1] !!T
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.1
		IL_000a: brtrue.s IL_0013

		IL_000c: ldc.i4.s 26
		IL_000e: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0013: ldarg.0
		IL_0014: ldlen
		IL_0015: conv.i4
		IL_0016: ldc.i4.1
		IL_0017: sub
		IL_0018: stloc.0
		IL_0019: br.s IL_0036
		// loop start (head: IL_0036)
			IL_001b: ldarg.1
			IL_001c: ldarg.0
			IL_001d: ldloc.0
			IL_001e: ldelem !!T
			IL_0023: callvirt instance bool class System.Predicate`1<!!T>::Invoke(!0)
			IL_0028: brfalse.s IL_0032

			IL_002a: ldarg.0
			IL_002b: ldloc.0
			IL_002c: ldelem !!T
			IL_0031: ret

			IL_0032: ldloc.0
			IL_0033: ldc.i4.1
			IL_0034: sub
			IL_0035: stloc.0

			IL_0036: ldloc.0
			IL_0037: ldc.i4.0
			IL_0038: bge.s IL_001b
		// end loop

		IL_003a: ldloca.s 1
		IL_003c: initobj !!T
		IL_0042: ldloc.1
		IL_0043: ret
	} // end of method Array::FindLast

	.method public hidebysig static 
		int32 FindLastIndex<T> (
			!!T[] 'array',
			class System.Predicate`1<!!T> match
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x41680
		// Code size 25 (0x19)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldarg.0
		IL_000b: ldlen
		IL_000c: conv.i4
		IL_000d: ldc.i4.1
		IL_000e: sub
		IL_000f: ldarg.0
		IL_0010: ldlen
		IL_0011: conv.i4
		IL_0012: ldarg.1
		IL_0013: call int32 System.Array::FindLastIndex<!!T>(!!0[], int32, int32, class System.Predicate`1<!!0>)
		IL_0018: ret
	} // end of method Array::FindLastIndex

	.method public hidebysig static 
		int32 FindLastIndex<T> (
			!!T[] 'array',
			int32 startIndex,
			class System.Predicate`1<!!T> match
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x4169a
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldarg.1
		IL_000b: ldarg.1
		IL_000c: ldc.i4.1
		IL_000d: add
		IL_000e: ldarg.2
		IL_000f: call int32 System.Array::FindLastIndex<!!T>(!!0[], int32, int32, class System.Predicate`1<!!0>)
		IL_0014: ret
	} // end of method Array::FindLastIndex

	.method public hidebysig static 
		int32 FindLastIndex<T> (
			!!T[] 'array',
			int32 startIndex,
			int32 count,
			class System.Predicate`1<!!T> match
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x416b0
		// Code size 101 (0x65)
		.maxstack 3
		.locals (
			[0] int32,
			[1] int32
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.3
		IL_000a: brtrue.s IL_0013

		IL_000c: ldc.i4.s 26
		IL_000e: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0013: ldarg.0
		IL_0014: ldlen
		IL_0015: brtrue.s IL_0022

		IL_0017: ldarg.1
		IL_0018: ldc.i4.m1
		IL_0019: beq.s IL_0031

		IL_001b: call void System.ThrowHelper::ThrowStartIndexArgumentOutOfRange_ArgumentOutOfRange_Index()
		IL_0020: br.s IL_0031

		IL_0022: ldarg.1
		IL_0023: ldc.i4.0
		IL_0024: blt.s IL_002c

		IL_0026: ldarg.1
		IL_0027: ldarg.0
		IL_0028: ldlen
		IL_0029: conv.i4
		IL_002a: blt.s IL_0031

		IL_002c: call void System.ThrowHelper::ThrowStartIndexArgumentOutOfRange_ArgumentOutOfRange_Index()

		IL_0031: ldarg.2
		IL_0032: ldc.i4.0
		IL_0033: blt.s IL_003d

		IL_0035: ldarg.1
		IL_0036: ldarg.2
		IL_0037: sub
		IL_0038: ldc.i4.1
		IL_0039: add
		IL_003a: ldc.i4.0
		IL_003b: bge.s IL_0042

		IL_003d: call void System.ThrowHelper::ThrowCountArgumentOutOfRange_ArgumentOutOfRange_Count()

		IL_0042: ldarg.1
		IL_0043: ldarg.2
		IL_0044: sub
		IL_0045: stloc.0
		IL_0046: ldarg.1
		IL_0047: stloc.1
		IL_0048: br.s IL_005f
		// loop start (head: IL_005f)
			IL_004a: ldarg.3
			IL_004b: ldarg.0
			IL_004c: ldloc.1
			IL_004d: ldelem !!T
			IL_0052: callvirt instance bool class System.Predicate`1<!!T>::Invoke(!0)
			IL_0057: brfalse.s IL_005b

			IL_0059: ldloc.1
			IL_005a: ret

			IL_005b: ldloc.1
			IL_005c: ldc.i4.1
			IL_005d: sub
			IL_005e: stloc.1

			IL_005f: ldloc.1
			IL_0060: ldloc.0
			IL_0061: bgt.s IL_004a
		// end loop

		IL_0063: ldc.i4.m1
		IL_0064: ret
	} // end of method Array::FindLastIndex

	.method public hidebysig static 
		void ForEach<T> (
			!!T[] 'array',
			class System.Action`1<!!T> action
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x41724
		// Code size 47 (0x2f)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.1
		IL_000a: brtrue.s IL_0013

		IL_000c: ldc.i4.s 28
		IL_000e: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0013: ldc.i4.0
		IL_0014: stloc.0
		IL_0015: br.s IL_0028
		// loop start (head: IL_0028)
			IL_0017: ldarg.1
			IL_0018: ldarg.0
			IL_0019: ldloc.0
			IL_001a: ldelem !!T
			IL_001f: callvirt instance void class System.Action`1<!!T>::Invoke(!0)
			IL_0024: ldloc.0
			IL_0025: ldc.i4.1
			IL_0026: add
			IL_0027: stloc.0

			IL_0028: ldloc.0
			IL_0029: ldarg.0
			IL_002a: ldlen
			IL_002b: conv.i4
			IL_002c: blt.s IL_0017
		// end loop

		IL_002e: ret
	} // end of method Array::ForEach

	.method public hidebysig static 
		int32 IndexOf (
			class System.Array 'array',
			object 'value'
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x4175f
		// Code size 30 (0x1e)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldarg.1
		IL_000b: ldarg.0
		IL_000c: ldc.i4.0
		IL_000d: callvirt instance int32 System.Array::GetLowerBound(int32)
		IL_0012: ldarg.0
		IL_0013: callvirt instance int32 System.Array::get_Length()
		IL_0018: call int32 System.Array::IndexOf(class System.Array, object, int32, int32)
		IL_001d: ret
	} // end of method Array::IndexOf

	.method public hidebysig static 
		int32 IndexOf (
			class System.Array 'array',
			object 'value',
			int32 startIndex
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x41780
		// Code size 36 (0x24)
		.maxstack 5
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldc.i4.0
		IL_000b: callvirt instance int32 System.Array::GetLowerBound(int32)
		IL_0010: stloc.0
		IL_0011: ldarg.0
		IL_0012: ldarg.1
		IL_0013: ldarg.2
		IL_0014: ldarg.0
		IL_0015: callvirt instance int32 System.Array::get_Length()
		IL_001a: ldarg.2
		IL_001b: sub
		IL_001c: ldloc.0
		IL_001d: add
		IL_001e: call int32 System.Array::IndexOf(class System.Array, object, int32, int32)
		IL_0023: ret
	} // end of method Array::IndexOf

	.method public hidebysig static 
		int32 IndexOf (
			class System.Array 'array',
			object 'value',
			int32 startIndex,
			int32 count
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x417b0
		// Code size 459 (0x1cb)
		.maxstack 4
		.locals (
			[0] int32,
			[1] int32,
			[2] object[],
			[3] valuetype System.Reflection.CorElementType,
			[4] int32,
			[5] int32,
			[6] object,
			[7] int32,
			[8] int32,
			[9] int32,
			[10] object
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: callvirt instance int32 System.Array::get_Rank()
		IL_000f: ldc.i4.1
		IL_0010: beq.s IL_0019

		IL_0012: ldc.i4.s 63
		IL_0014: call void System.ThrowHelper::ThrowRankException(valuetype System.ExceptionResource)

		IL_0019: ldarg.0
		IL_001a: ldc.i4.0
		IL_001b: callvirt instance int32 System.Array::GetLowerBound(int32)
		IL_0020: stloc.0
		IL_0021: ldarg.2
		IL_0022: ldloc.0
		IL_0023: blt.s IL_0030

		IL_0025: ldarg.2
		IL_0026: ldarg.0
		IL_0027: callvirt instance int32 System.Array::get_Length()
		IL_002c: ldloc.0
		IL_002d: add
		IL_002e: ble.s IL_0035

		IL_0030: call void System.ThrowHelper::ThrowStartIndexArgumentOutOfRange_ArgumentOutOfRange_Index()

		IL_0035: ldarg.3
		IL_0036: ldc.i4.0
		IL_0037: blt.s IL_0046

		IL_0039: ldarg.3
		IL_003a: ldarg.0
		IL_003b: callvirt instance int32 System.Array::get_Length()
		IL_0040: ldarg.2
		IL_0041: sub
		IL_0042: ldloc.0
		IL_0043: add
		IL_0044: ble.s IL_004b

		IL_0046: call void System.ThrowHelper::ThrowCountArgumentOutOfRange_ArgumentOutOfRange_Count()

		IL_004b: ldarg.2
		IL_004c: ldarg.3
		IL_004d: add
		IL_004e: stloc.1
		IL_004f: ldarg.0
		IL_0050: isinst object[]
		IL_0055: stloc.2
		IL_0056: ldloc.2
		IL_0057: brfalse.s IL_00a0

		IL_0059: ldarg.1
		IL_005a: brtrue.s IL_0077

		IL_005c: ldarg.2
		IL_005d: stloc.s 4
		IL_005f: br.s IL_0070
		// loop start (head: IL_0070)
			IL_0061: ldloc.2
			IL_0062: ldloc.s 4
			IL_0064: ldelem.ref
			IL_0065: brtrue.s IL_006a

			IL_0067: ldloc.s 4
			IL_0069: ret

			IL_006a: ldloc.s 4
			IL_006c: ldc.i4.1
			IL_006d: add
			IL_006e: stloc.s 4

			IL_0070: ldloc.s 4
			IL_0072: ldloc.1
			IL_0073: blt.s IL_0061
		// end loop

		IL_0075: br.s IL_009e

		IL_0077: ldarg.2
		IL_0078: stloc.s 5
		IL_007a: br.s IL_0099
		// loop start (head: IL_0099)
			IL_007c: ldloc.2
			IL_007d: ldloc.s 5
			IL_007f: ldelem.ref
			IL_0080: stloc.s 6
			IL_0082: ldloc.s 6
			IL_0084: brfalse.s IL_0093

			IL_0086: ldloc.s 6
			IL_0088: ldarg.1
			IL_0089: callvirt instance bool System.Object::Equals(object)
			IL_008e: brfalse.s IL_0093

			IL_0090: ldloc.s 5
			IL_0092: ret

			IL_0093: ldloc.s 5
			IL_0095: ldc.i4.1
			IL_0096: add
			IL_0097: stloc.s 5

			IL_0099: ldloc.s 5
			IL_009b: ldloc.1
			IL_009c: blt.s IL_007c
		// end loop

		IL_009e: ldc.i4.m1
		IL_009f: ret

		IL_00a0: ldarg.0
		IL_00a1: callvirt instance valuetype System.Reflection.CorElementType System.Array::GetCorElementTypeOfElementType()
		IL_00a6: stloc.3
		IL_00a7: ldloc.3
		IL_00a8: call bool System.Runtime.CompilerServices.RuntimeHelpers::IsPrimitiveType(valuetype System.Reflection.CorElementType)
		IL_00ad: brfalse IL_0196

		IL_00b2: ldarg.1
		IL_00b3: brtrue.s IL_00b9

		IL_00b5: ldloc.0
		IL_00b6: ldc.i4.1
		IL_00b7: sub
		IL_00b8: ret

		IL_00b9: ldarg.0
		IL_00ba: ldarg.1
		IL_00bb: callvirt instance bool System.Array::IsValueOfElementType(object)
		IL_00c0: brfalse IL_0196

		IL_00c5: ldarg.2
		IL_00c6: ldloc.0
		IL_00c7: sub
		IL_00c8: stloc.s 7
		IL_00ca: ldc.i4.m1
		IL_00cb: stloc.s 8
		IL_00cd: ldloc.3
		IL_00ce: ldc.i4.2
		IL_00cf: sub
		IL_00d0: switch (IL_0137, IL_0145, IL_0137, IL_0137, IL_0145, IL_0145, IL_0153, IL_0153, IL_0161, IL_0161, IL_016f, IL_017d, IL_0189, IL_0189, IL_0189, IL_0189, IL_0189, IL_0189, IL_0189, IL_0189, IL_0189, IL_0189, IL_0153, IL_0153)

		IL_0135: br.s IL_0189

		IL_0137: ldarg.0
		IL_0138: ldarg.1
		IL_0139: ldloc.s 7
		IL_013b: ldarg.3
		IL_013c: call int32 System.Array::'<IndexOf>g__GenericIndexOf|106_0'<uint8>(class System.Array, object, int32, int32)
		IL_0141: stloc.s 8
		IL_0143: br.s IL_0189

		IL_0145: ldarg.0
		IL_0146: ldarg.1
		IL_0147: ldloc.s 7
		IL_0149: ldarg.3
		IL_014a: call int32 System.Array::'<IndexOf>g__GenericIndexOf|106_0'<char>(class System.Array, object, int32, int32)
		IL_014f: stloc.s 8
		IL_0151: br.s IL_0189

		IL_0153: ldarg.0
		IL_0154: ldarg.1
		IL_0155: ldloc.s 7
		IL_0157: ldarg.3
		IL_0158: call int32 System.Array::'<IndexOf>g__GenericIndexOf|106_0'<int32>(class System.Array, object, int32, int32)
		IL_015d: stloc.s 8
		IL_015f: br.s IL_0189

		IL_0161: ldarg.0
		IL_0162: ldarg.1
		IL_0163: ldloc.s 7
		IL_0165: ldarg.3
		IL_0166: call int32 System.Array::'<IndexOf>g__GenericIndexOf|106_0'<int64>(class System.Array, object, int32, int32)
		IL_016b: stloc.s 8
		IL_016d: br.s IL_0189

		IL_016f: ldarg.0
		IL_0170: ldarg.1
		IL_0171: ldloc.s 7
		IL_0173: ldarg.3
		IL_0174: call int32 System.Array::'<IndexOf>g__GenericIndexOf|106_0'<float32>(class System.Array, object, int32, int32)
		IL_0179: stloc.s 8
		IL_017b: br.s IL_0189

		IL_017d: ldarg.0
		IL_017e: ldarg.1
		IL_017f: ldloc.s 7
		IL_0181: ldarg.3
		IL_0182: call int32 System.Array::'<IndexOf>g__GenericIndexOf|106_0'<float64>(class System.Array, object, int32, int32)
		IL_0187: stloc.s 8

		IL_0189: ldloc.s 8
		IL_018b: ldc.i4.0
		IL_018c: bge.s IL_0191

		IL_018e: ldloc.0
		IL_018f: br.s IL_0192

		IL_0191: ldarg.2

		IL_0192: ldloc.s 8
		IL_0194: add
		IL_0195: ret

		IL_0196: ldarg.2
		IL_0197: stloc.s 9
		IL_0199: br.s IL_01c2
		// loop start (head: IL_01c2)
			IL_019b: ldarg.0
			IL_019c: ldloc.s 9
			IL_019e: callvirt instance object System.Array::GetValue(int32)
			IL_01a3: stloc.s 10
			IL_01a5: ldloc.s 10
			IL_01a7: brtrue.s IL_01af

			IL_01a9: ldarg.1
			IL_01aa: brtrue.s IL_01bc

			IL_01ac: ldloc.s 9
			IL_01ae: ret

			IL_01af: ldloc.s 10
			IL_01b1: ldarg.1
			IL_01b2: callvirt instance bool System.Object::Equals(object)
			IL_01b7: brfalse.s IL_01bc

			IL_01b9: ldloc.s 9
			IL_01bb: ret

			IL_01bc: ldloc.s 9
			IL_01be: ldc.i4.1
			IL_01bf: add
			IL_01c0: stloc.s 9

			IL_01c2: ldloc.s 9
			IL_01c4: ldloc.1
			IL_01c5: blt.s IL_019b
		// end loop

		IL_01c7: ldloc.0
		IL_01c8: ldc.i4.1
		IL_01c9: sub
		IL_01ca: ret
	} // end of method Array::IndexOf

	.method public hidebysig static 
		int32 IndexOf<T> (
			!!T[] 'array',
			!!T 'value'
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x41987
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldarg.1
		IL_000b: ldc.i4.0
		IL_000c: ldarg.0
		IL_000d: ldlen
		IL_000e: conv.i4
		IL_000f: call int32 System.Array::IndexOf<!!T>(!!0[], !!0, int32, int32)
		IL_0014: ret
	} // end of method Array::IndexOf

	.method public hidebysig static 
		int32 IndexOf<T> (
			!!T[] 'array',
			!!T 'value',
			int32 startIndex
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x4199d
		// Code size 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldarg.1
		IL_000b: ldarg.2
		IL_000c: ldarg.0
		IL_000d: ldlen
		IL_000e: conv.i4
		IL_000f: ldarg.2
		IL_0010: sub
		IL_0011: call int32 System.Array::IndexOf<!!T>(!!0[], !!0, int32, int32)
		IL_0016: ret
	} // end of method Array::IndexOf

	.method public hidebysig static 
		int32 IndexOf<T> (
			!!T[] 'array',
			!!T 'value',
			int32 startIndex,
			int32 count
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x419b8
		// Code size 262 (0x106)
		.maxstack 5
		.locals (
			[0] int32,
			[1] int32,
			[2] int32,
			[3] int32
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.2
		IL_000a: ldarg.0
		IL_000b: ldlen
		IL_000c: conv.i4
		IL_000d: ble.un.s IL_0014

		IL_000f: call void System.ThrowHelper::ThrowStartIndexArgumentOutOfRange_ArgumentOutOfRange_Index()

		IL_0014: ldarg.3
		IL_0015: ldarg.0
		IL_0016: ldlen
		IL_0017: conv.i4
		IL_0018: ldarg.2
		IL_0019: sub
		IL_001a: ble.un.s IL_0021

		IL_001c: call void System.ThrowHelper::ThrowCountArgumentOutOfRange_ArgumentOutOfRange_Count()

		IL_0021: call bool System.Runtime.CompilerServices.RuntimeHelpers::IsBitwiseEquatable<!!T>()
		IL_0026: brfalse IL_00f7

		IL_002b: call int32 Internal.Runtime.CompilerServices.Unsafe::SizeOf<!!T>()
		IL_0030: ldc.i4.1
		IL_0031: bne.un.s IL_005e

		IL_0033: ldarg.0
		IL_0034: call !!0 Internal.Runtime.CompilerServices.Unsafe::As<uint8[]>(object)
		IL_0039: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<uint8>(!!0[])
		IL_003e: ldarg.2
		IL_003f: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<uint8>(!!0&, int32)
		IL_0044: ldarga.s 'value'
		IL_0046: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<!!T, uint8>(!!0&)
		IL_004b: ldind.u1
		IL_004c: ldarg.3
		IL_004d: call int32 System.SpanHelpers::IndexOf(uint8&, uint8, int32)
		IL_0052: stloc.0
		IL_0053: ldloc.0
		IL_0054: ldc.i4.0
		IL_0055: bge.s IL_005a

		IL_0057: ldc.i4.0
		IL_0058: br.s IL_005b

		IL_005a: ldarg.2

		IL_005b: ldloc.0
		IL_005c: add
		IL_005d: ret

		IL_005e: call int32 Internal.Runtime.CompilerServices.Unsafe::SizeOf<!!T>()
		IL_0063: ldc.i4.2
		IL_0064: bne.un.s IL_0091

		IL_0066: ldarg.0
		IL_0067: call !!0 Internal.Runtime.CompilerServices.Unsafe::As<char[]>(object)
		IL_006c: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<char>(!!0[])
		IL_0071: ldarg.2
		IL_0072: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_0077: ldarga.s 'value'
		IL_0079: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<!!T, char>(!!0&)
		IL_007e: ldind.u2
		IL_007f: ldarg.3
		IL_0080: call int32 System.SpanHelpers::IndexOf(char&, char, int32)
		IL_0085: stloc.1
		IL_0086: ldloc.1
		IL_0087: ldc.i4.0
		IL_0088: bge.s IL_008d

		IL_008a: ldc.i4.0
		IL_008b: br.s IL_008e

		IL_008d: ldarg.2

		IL_008e: ldloc.1
		IL_008f: add
		IL_0090: ret

		IL_0091: call int32 Internal.Runtime.CompilerServices.Unsafe::SizeOf<!!T>()
		IL_0096: ldc.i4.4
		IL_0097: bne.un.s IL_00c4

		IL_0099: ldarg.0
		IL_009a: call !!0 Internal.Runtime.CompilerServices.Unsafe::As<int32[]>(object)
		IL_009f: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<int32>(!!0[])
		IL_00a4: ldarg.2
		IL_00a5: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<int32>(!!0&, int32)
		IL_00aa: ldarga.s 'value'
		IL_00ac: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<!!T, int32>(!!0&)
		IL_00b1: ldind.i4
		IL_00b2: ldarg.3
		IL_00b3: call int32 System.SpanHelpers::IndexOf<int32>(!!0&, !!0, int32)
		IL_00b8: stloc.2
		IL_00b9: ldloc.2
		IL_00ba: ldc.i4.0
		IL_00bb: bge.s IL_00c0

		IL_00bd: ldc.i4.0
		IL_00be: br.s IL_00c1

		IL_00c0: ldarg.2

		IL_00c1: ldloc.2
		IL_00c2: add
		IL_00c3: ret

		IL_00c4: call int32 Internal.Runtime.CompilerServices.Unsafe::SizeOf<!!T>()
		IL_00c9: ldc.i4.8
		IL_00ca: bne.un.s IL_00f7

		IL_00cc: ldarg.0
		IL_00cd: call !!0 Internal.Runtime.CompilerServices.Unsafe::As<int64[]>(object)
		IL_00d2: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<int64>(!!0[])
		IL_00d7: ldarg.2
		IL_00d8: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<int64>(!!0&, int32)
		IL_00dd: ldarga.s 'value'
		IL_00df: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<!!T, int64>(!!0&)
		IL_00e4: ldind.i8
		IL_00e5: ldarg.3
		IL_00e6: call int32 System.SpanHelpers::IndexOf<int64>(!!0&, !!0, int32)
		IL_00eb: stloc.3
		IL_00ec: ldloc.3
		IL_00ed: ldc.i4.0
		IL_00ee: bge.s IL_00f3

		IL_00f0: ldc.i4.0
		IL_00f1: br.s IL_00f4

		IL_00f3: ldarg.2

		IL_00f4: ldloc.3
		IL_00f5: add
		IL_00f6: ret

		IL_00f7: call class System.Collections.Generic.EqualityComparer`1<!0> class System.Collections.Generic.EqualityComparer`1<!!T>::get_Default()
		IL_00fc: ldarg.0
		IL_00fd: ldarg.1
		IL_00fe: ldarg.2
		IL_00ff: ldarg.3
		IL_0100: callvirt instance int32 class System.Collections.Generic.EqualityComparer`1<!!T>::IndexOf(!0[], !0, int32, int32)
		IL_0105: ret
	} // end of method Array::IndexOf

	.method public hidebysig static 
		int32 LastIndexOf (
			class System.Array 'array',
			object 'value'
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x41acc
		// Code size 41 (0x29)
		.maxstack 4
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldc.i4.0
		IL_000b: callvirt instance int32 System.Array::GetLowerBound(int32)
		IL_0010: stloc.0
		IL_0011: ldarg.0
		IL_0012: ldarg.1
		IL_0013: ldarg.0
		IL_0014: callvirt instance int32 System.Array::get_Length()
		IL_0019: ldc.i4.1
		IL_001a: sub
		IL_001b: ldloc.0
		IL_001c: add
		IL_001d: ldarg.0
		IL_001e: callvirt instance int32 System.Array::get_Length()
		IL_0023: call int32 System.Array::LastIndexOf(class System.Array, object, int32, int32)
		IL_0028: ret
	} // end of method Array::LastIndexOf

	.method public hidebysig static 
		int32 LastIndexOf (
			class System.Array 'array',
			object 'value',
			int32 startIndex
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x41b04
		// Code size 31 (0x1f)
		.maxstack 5
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldc.i4.0
		IL_000b: callvirt instance int32 System.Array::GetLowerBound(int32)
		IL_0010: stloc.0
		IL_0011: ldarg.0
		IL_0012: ldarg.1
		IL_0013: ldarg.2
		IL_0014: ldarg.2
		IL_0015: ldc.i4.1
		IL_0016: add
		IL_0017: ldloc.0
		IL_0018: sub
		IL_0019: call int32 System.Array::LastIndexOf(class System.Array, object, int32, int32)
		IL_001e: ret
	} // end of method Array::LastIndexOf

	.method public hidebysig static 
		int32 LastIndexOf (
			class System.Array 'array',
			object 'value',
			int32 startIndex,
			int32 count
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x41b30
		// Code size 477 (0x1dd)
		.maxstack 4
		.locals (
			[0] int32,
			[1] int32,
			[2] object[],
			[3] valuetype System.Reflection.CorElementType,
			[4] int32,
			[5] int32,
			[6] object,
			[7] int32,
			[8] int32,
			[9] int32,
			[10] object
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldc.i4.0
		IL_000b: callvirt instance int32 System.Array::GetLowerBound(int32)
		IL_0010: stloc.0
		IL_0011: ldarg.0
		IL_0012: callvirt instance int32 System.Array::get_Length()
		IL_0017: brtrue.s IL_001d

		IL_0019: ldloc.0
		IL_001a: ldc.i4.1
		IL_001b: sub
		IL_001c: ret

		IL_001d: ldarg.2
		IL_001e: ldloc.0
		IL_001f: blt.s IL_002c

		IL_0021: ldarg.2
		IL_0022: ldarg.0
		IL_0023: callvirt instance int32 System.Array::get_Length()
		IL_0028: ldloc.0
		IL_0029: add
		IL_002a: blt.s IL_0031

		IL_002c: call void System.ThrowHelper::ThrowStartIndexArgumentOutOfRange_ArgumentOutOfRange_Index()

		IL_0031: ldarg.3
		IL_0032: ldc.i4.0
		IL_0033: bge.s IL_003a

		IL_0035: call void System.ThrowHelper::ThrowCountArgumentOutOfRange_ArgumentOutOfRange_Count()

		IL_003a: ldarg.3
		IL_003b: ldarg.2
		IL_003c: ldloc.0
		IL_003d: sub
		IL_003e: ldc.i4.1
		IL_003f: add
		IL_0040: ble.s IL_004b

		IL_0042: ldc.i4.s 81
		IL_0044: ldc.i4.s 48
		IL_0046: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument, valuetype System.ExceptionResource)

		IL_004b: ldarg.0
		IL_004c: callvirt instance int32 System.Array::get_Rank()
		IL_0051: ldc.i4.1
		IL_0052: beq.s IL_005b

		IL_0054: ldc.i4.s 63
		IL_0056: call void System.ThrowHelper::ThrowRankException(valuetype System.ExceptionResource)

		IL_005b: ldarg.2
		IL_005c: ldarg.3
		IL_005d: sub
		IL_005e: ldc.i4.1
		IL_005f: add
		IL_0060: stloc.1
		IL_0061: ldarg.0
		IL_0062: isinst object[]
		IL_0067: stloc.2
		IL_0068: ldloc.2
		IL_0069: brfalse.s IL_00b2

		IL_006b: ldarg.1
		IL_006c: brtrue.s IL_0089

		IL_006e: ldarg.2
		IL_006f: stloc.s 4
		IL_0071: br.s IL_0082
		// loop start (head: IL_0082)
			IL_0073: ldloc.2
			IL_0074: ldloc.s 4
			IL_0076: ldelem.ref
			IL_0077: brtrue.s IL_007c

			IL_0079: ldloc.s 4
			IL_007b: ret

			IL_007c: ldloc.s 4
			IL_007e: ldc.i4.1
			IL_007f: sub
			IL_0080: stloc.s 4

			IL_0082: ldloc.s 4
			IL_0084: ldloc.1
			IL_0085: bge.s IL_0073
		// end loop

		IL_0087: br.s IL_00b0

		IL_0089: ldarg.2
		IL_008a: stloc.s 5
		IL_008c: br.s IL_00ab
		// loop start (head: IL_00ab)
			IL_008e: ldloc.2
			IL_008f: ldloc.s 5
			IL_0091: ldelem.ref
			IL_0092: stloc.s 6
			IL_0094: ldloc.s 6
			IL_0096: brfalse.s IL_00a5

			IL_0098: ldloc.s 6
			IL_009a: ldarg.1
			IL_009b: callvirt instance bool System.Object::Equals(object)
			IL_00a0: brfalse.s IL_00a5

			IL_00a2: ldloc.s 5
			IL_00a4: ret

			IL_00a5: ldloc.s 5
			IL_00a7: ldc.i4.1
			IL_00a8: sub
			IL_00a9: stloc.s 5

			IL_00ab: ldloc.s 5
			IL_00ad: ldloc.1
			IL_00ae: bge.s IL_008e
		// end loop

		IL_00b0: ldc.i4.m1
		IL_00b1: ret

		IL_00b2: ldarg.0
		IL_00b3: callvirt instance valuetype System.Reflection.CorElementType System.Array::GetCorElementTypeOfElementType()
		IL_00b8: stloc.3
		IL_00b9: ldloc.3
		IL_00ba: call bool System.Runtime.CompilerServices.RuntimeHelpers::IsPrimitiveType(valuetype System.Reflection.CorElementType)
		IL_00bf: brfalse IL_01a8

		IL_00c4: ldarg.1
		IL_00c5: brtrue.s IL_00cb

		IL_00c7: ldloc.0
		IL_00c8: ldc.i4.1
		IL_00c9: sub
		IL_00ca: ret

		IL_00cb: ldarg.0
		IL_00cc: ldarg.1
		IL_00cd: callvirt instance bool System.Array::IsValueOfElementType(object)
		IL_00d2: brfalse IL_01a8

		IL_00d7: ldloc.1
		IL_00d8: ldloc.0
		IL_00d9: sub
		IL_00da: stloc.s 7
		IL_00dc: ldc.i4.m1
		IL_00dd: stloc.s 8
		IL_00df: ldloc.3
		IL_00e0: ldc.i4.2
		IL_00e1: sub
		IL_00e2: switch (IL_0149, IL_0157, IL_0149, IL_0149, IL_0157, IL_0157, IL_0165, IL_0165, IL_0173, IL_0173, IL_0181, IL_018f, IL_019b, IL_019b, IL_019b, IL_019b, IL_019b, IL_019b, IL_019b, IL_019b, IL_019b, IL_019b, IL_0165, IL_0165)

		IL_0147: br.s IL_019b

		IL_0149: ldarg.0
		IL_014a: ldarg.1
		IL_014b: ldloc.s 7
		IL_014d: ldarg.3
		IL_014e: call int32 System.Array::'<LastIndexOf>g__GenericLastIndexOf|112_0'<uint8>(class System.Array, object, int32, int32)
		IL_0153: stloc.s 8
		IL_0155: br.s IL_019b

		IL_0157: ldarg.0
		IL_0158: ldarg.1
		IL_0159: ldloc.s 7
		IL_015b: ldarg.3
		IL_015c: call int32 System.Array::'<LastIndexOf>g__GenericLastIndexOf|112_0'<char>(class System.Array, object, int32, int32)
		IL_0161: stloc.s 8
		IL_0163: br.s IL_019b

		IL_0165: ldarg.0
		IL_0166: ldarg.1
		IL_0167: ldloc.s 7
		IL_0169: ldarg.3
		IL_016a: call int32 System.Array::'<LastIndexOf>g__GenericLastIndexOf|112_0'<int32>(class System.Array, object, int32, int32)
		IL_016f: stloc.s 8
		IL_0171: br.s IL_019b

		IL_0173: ldarg.0
		IL_0174: ldarg.1
		IL_0175: ldloc.s 7
		IL_0177: ldarg.3
		IL_0178: call int32 System.Array::'<LastIndexOf>g__GenericLastIndexOf|112_0'<int64>(class System.Array, object, int32, int32)
		IL_017d: stloc.s 8
		IL_017f: br.s IL_019b

		IL_0181: ldarg.0
		IL_0182: ldarg.1
		IL_0183: ldloc.s 7
		IL_0185: ldarg.3
		IL_0186: call int32 System.Array::'<LastIndexOf>g__GenericLastIndexOf|112_0'<float32>(class System.Array, object, int32, int32)
		IL_018b: stloc.s 8
		IL_018d: br.s IL_019b

		IL_018f: ldarg.0
		IL_0190: ldarg.1
		IL_0191: ldloc.s 7
		IL_0193: ldarg.3
		IL_0194: call int32 System.Array::'<LastIndexOf>g__GenericLastIndexOf|112_0'<float64>(class System.Array, object, int32, int32)
		IL_0199: stloc.s 8

		IL_019b: ldloc.s 8
		IL_019d: ldc.i4.0
		IL_019e: bge.s IL_01a3

		IL_01a0: ldloc.0
		IL_01a1: br.s IL_01a4

		IL_01a3: ldloc.1

		IL_01a4: ldloc.s 8
		IL_01a6: add
		IL_01a7: ret

		IL_01a8: ldarg.2
		IL_01a9: stloc.s 9
		IL_01ab: br.s IL_01d4
		// loop start (head: IL_01d4)
			IL_01ad: ldarg.0
			IL_01ae: ldloc.s 9
			IL_01b0: callvirt instance object System.Array::GetValue(int32)
			IL_01b5: stloc.s 10
			IL_01b7: ldloc.s 10
			IL_01b9: brtrue.s IL_01c1

			IL_01bb: ldarg.1
			IL_01bc: brtrue.s IL_01ce

			IL_01be: ldloc.s 9
			IL_01c0: ret

			IL_01c1: ldloc.s 10
			IL_01c3: ldarg.1
			IL_01c4: callvirt instance bool System.Object::Equals(object)
			IL_01c9: brfalse.s IL_01ce

			IL_01cb: ldloc.s 9
			IL_01cd: ret

			IL_01ce: ldloc.s 9
			IL_01d0: ldc.i4.1
			IL_01d1: sub
			IL_01d2: stloc.s 9

			IL_01d4: ldloc.s 9
			IL_01d6: ldloc.1
			IL_01d7: bge.s IL_01ad
		// end loop

		IL_01d9: ldloc.0
		IL_01da: ldc.i4.1
		IL_01db: sub
		IL_01dc: ret
	} // end of method Array::LastIndexOf

	.method public hidebysig static 
		int32 LastIndexOf<T> (
			!!T[] 'array',
			!!T 'value'
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x41d19
		// Code size 25 (0x19)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldarg.1
		IL_000b: ldarg.0
		IL_000c: ldlen
		IL_000d: conv.i4
		IL_000e: ldc.i4.1
		IL_000f: sub
		IL_0010: ldarg.0
		IL_0011: ldlen
		IL_0012: conv.i4
		IL_0013: call int32 System.Array::LastIndexOf<!!T>(!!0[], !!0, int32, int32)
		IL_0018: ret
	} // end of method Array::LastIndexOf

	.method public hidebysig static 
		int32 LastIndexOf<T> (
			!!T[] 'array',
			!!T 'value',
			int32 startIndex
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x41d33
		// Code size 28 (0x1c)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldarg.1
		IL_000b: ldarg.2
		IL_000c: ldarg.0
		IL_000d: ldlen
		IL_000e: brfalse.s IL_0015

		IL_0010: ldarg.2
		IL_0011: ldc.i4.1
		IL_0012: add
		IL_0013: br.s IL_0016

		IL_0015: ldc.i4.0

		IL_0016: call int32 System.Array::LastIndexOf<!!T>(!!0[], !!0, int32, int32)
		IL_001b: ret
	} // end of method Array::LastIndexOf

	.method public hidebysig static 
		int32 LastIndexOf<T> (
			!!T[] 'array',
			!!T 'value',
			int32 startIndex,
			int32 count
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x41d50
		// Code size 328 (0x148)
		.maxstack 5
		.locals (
			[0] int32,
			[1] int32,
			[2] int32,
			[3] int32,
			[4] int32,
			[5] int32,
			[6] int32,
			[7] int32
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldlen
		IL_000b: brtrue.s IL_0023

		IL_000d: ldarg.2
		IL_000e: ldc.i4.m1
		IL_000f: beq.s IL_0019

		IL_0011: ldarg.2
		IL_0012: brfalse.s IL_0019

		IL_0014: call void System.ThrowHelper::ThrowStartIndexArgumentOutOfRange_ArgumentOutOfRange_Index()

		IL_0019: ldarg.3
		IL_001a: brfalse.s IL_0021

		IL_001c: call void System.ThrowHelper::ThrowCountArgumentOutOfRange_ArgumentOutOfRange_Count()

		IL_0021: ldc.i4.m1
		IL_0022: ret

		IL_0023: ldarg.2
		IL_0024: ldarg.0
		IL_0025: ldlen
		IL_0026: conv.i4
		IL_0027: blt.un.s IL_002e

		IL_0029: call void System.ThrowHelper::ThrowStartIndexArgumentOutOfRange_ArgumentOutOfRange_Index()

		IL_002e: ldarg.3
		IL_002f: ldc.i4.0
		IL_0030: blt.s IL_003a

		IL_0032: ldarg.2
		IL_0033: ldarg.3
		IL_0034: sub
		IL_0035: ldc.i4.1
		IL_0036: add
		IL_0037: ldc.i4.0
		IL_0038: bge.s IL_003f

		IL_003a: call void System.ThrowHelper::ThrowCountArgumentOutOfRange_ArgumentOutOfRange_Count()

		IL_003f: call bool System.Runtime.CompilerServices.RuntimeHelpers::IsBitwiseEquatable<!!T>()
		IL_0044: brfalse IL_0139

		IL_0049: call int32 Internal.Runtime.CompilerServices.Unsafe::SizeOf<!!T>()
		IL_004e: ldc.i4.1
		IL_004f: bne.un.s IL_0082

		IL_0051: ldarg.2
		IL_0052: ldarg.3
		IL_0053: sub
		IL_0054: ldc.i4.1
		IL_0055: add
		IL_0056: stloc.0
		IL_0057: ldarg.0
		IL_0058: call !!0 Internal.Runtime.CompilerServices.Unsafe::As<uint8[]>(object)
		IL_005d: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<uint8>(!!0[])
		IL_0062: ldloc.0
		IL_0063: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<uint8>(!!0&, int32)
		IL_0068: ldarga.s 'value'
		IL_006a: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<!!T, uint8>(!!0&)
		IL_006f: ldind.u1
		IL_0070: ldarg.3
		IL_0071: call int32 System.SpanHelpers::LastIndexOf(uint8&, uint8, int32)
		IL_0076: stloc.1
		IL_0077: ldloc.1
		IL_0078: ldc.i4.0
		IL_0079: bge.s IL_007e

		IL_007b: ldc.i4.0
		IL_007c: br.s IL_007f

		IL_007e: ldloc.0

		IL_007f: ldloc.1
		IL_0080: add
		IL_0081: ret

		IL_0082: call int32 Internal.Runtime.CompilerServices.Unsafe::SizeOf<!!T>()
		IL_0087: ldc.i4.2
		IL_0088: bne.un.s IL_00bb

		IL_008a: ldarg.2
		IL_008b: ldarg.3
		IL_008c: sub
		IL_008d: ldc.i4.1
		IL_008e: add
		IL_008f: stloc.2
		IL_0090: ldarg.0
		IL_0091: call !!0 Internal.Runtime.CompilerServices.Unsafe::As<char[]>(object)
		IL_0096: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<char>(!!0[])
		IL_009b: ldloc.2
		IL_009c: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<char>(!!0&, int32)
		IL_00a1: ldarga.s 'value'
		IL_00a3: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<!!T, char>(!!0&)
		IL_00a8: ldind.u2
		IL_00a9: ldarg.3
		IL_00aa: call int32 System.SpanHelpers::LastIndexOf(char&, char, int32)
		IL_00af: stloc.3
		IL_00b0: ldloc.3
		IL_00b1: ldc.i4.0
		IL_00b2: bge.s IL_00b7

		IL_00b4: ldc.i4.0
		IL_00b5: br.s IL_00b8

		IL_00b7: ldloc.2

		IL_00b8: ldloc.3
		IL_00b9: add
		IL_00ba: ret

		IL_00bb: call int32 Internal.Runtime.CompilerServices.Unsafe::SizeOf<!!T>()
		IL_00c0: ldc.i4.4
		IL_00c1: bne.un.s IL_00fa

		IL_00c3: ldarg.2
		IL_00c4: ldarg.3
		IL_00c5: sub
		IL_00c6: ldc.i4.1
		IL_00c7: add
		IL_00c8: stloc.s 4
		IL_00ca: ldarg.0
		IL_00cb: call !!0 Internal.Runtime.CompilerServices.Unsafe::As<int32[]>(object)
		IL_00d0: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<int32>(!!0[])
		IL_00d5: ldloc.s 4
		IL_00d7: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<int32>(!!0&, int32)
		IL_00dc: ldarga.s 'value'
		IL_00de: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<!!T, int32>(!!0&)
		IL_00e3: ldind.i4
		IL_00e4: ldarg.3
		IL_00e5: call int32 System.SpanHelpers::LastIndexOf<int32>(!!0&, !!0, int32)
		IL_00ea: stloc.s 5
		IL_00ec: ldloc.s 5
		IL_00ee: ldc.i4.0
		IL_00ef: bge.s IL_00f4

		IL_00f1: ldc.i4.0
		IL_00f2: br.s IL_00f6

		IL_00f4: ldloc.s 4

		IL_00f6: ldloc.s 5
		IL_00f8: add
		IL_00f9: ret

		IL_00fa: call int32 Internal.Runtime.CompilerServices.Unsafe::SizeOf<!!T>()
		IL_00ff: ldc.i4.8
		IL_0100: bne.un.s IL_0139

		IL_0102: ldarg.2
		IL_0103: ldarg.3
		IL_0104: sub
		IL_0105: ldc.i4.1
		IL_0106: add
		IL_0107: stloc.s 6
		IL_0109: ldarg.0
		IL_010a: call !!0 Internal.Runtime.CompilerServices.Unsafe::As<int64[]>(object)
		IL_010f: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<int64>(!!0[])
		IL_0114: ldloc.s 6
		IL_0116: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<int64>(!!0&, int32)
		IL_011b: ldarga.s 'value'
		IL_011d: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<!!T, int64>(!!0&)
		IL_0122: ldind.i8
		IL_0123: ldarg.3
		IL_0124: call int32 System.SpanHelpers::LastIndexOf<int64>(!!0&, !!0, int32)
		IL_0129: stloc.s 7
		IL_012b: ldloc.s 7
		IL_012d: ldc.i4.0
		IL_012e: bge.s IL_0133

		IL_0130: ldc.i4.0
		IL_0131: br.s IL_0135

		IL_0133: ldloc.s 6

		IL_0135: ldloc.s 7
		IL_0137: add
		IL_0138: ret

		IL_0139: call class System.Collections.Generic.EqualityComparer`1<!0> class System.Collections.Generic.EqualityComparer`1<!!T>::get_Default()
		IL_013e: ldarg.0
		IL_013f: ldarg.1
		IL_0140: ldarg.2
		IL_0141: ldarg.3
		IL_0142: callvirt instance int32 class System.Collections.Generic.EqualityComparer`1<!!T>::LastIndexOf(!0[], !0, int32, int32)
		IL_0147: ret
	} // end of method Array::LastIndexOf

	.method public hidebysig static 
		void Reverse (
			class System.Array 'array'
		) cil managed 
	{
		// Method begins at RVA 0x41ea4
		// Code size 29 (0x1d)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldarg.0
		IL_000b: ldc.i4.0
		IL_000c: callvirt instance int32 System.Array::GetLowerBound(int32)
		IL_0011: ldarg.0
		IL_0012: callvirt instance int32 System.Array::get_Length()
		IL_0017: call void System.Array::Reverse(class System.Array, int32, int32)
		IL_001c: ret
	} // end of method Array::Reverse

	.method public hidebysig static 
		void Reverse (
			class System.Array 'array',
			int32 index,
			int32 length
		) cil managed 
	{
		// Method begins at RVA 0x41ec4
		// Code size 336 (0x150)
		.maxstack 3
		.locals (
			[0] int32,
			[1] int32,
			[2] int32,
			[3] int32,
			[4] valuetype System.Reflection.CorElementType,
			[5] object
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldc.i4.0
		IL_000b: callvirt instance int32 System.Array::GetLowerBound(int32)
		IL_0010: stloc.0
		IL_0011: ldarg.1
		IL_0012: ldloc.0
		IL_0013: bge.s IL_001a

		IL_0015: call void System.ThrowHelper::ThrowIndexArgumentOutOfRange_NeedNonNegNumException()

		IL_001a: ldarg.2
		IL_001b: ldc.i4.0
		IL_001c: bge.s IL_0023

		IL_001e: call void System.ThrowHelper::ThrowLengthArgumentOutOfRange_ArgumentOutOfRange_NeedNonNegNum()

		IL_0023: ldarg.0
		IL_0024: callvirt instance int32 System.Array::get_Length()
		IL_0029: ldarg.1
		IL_002a: ldloc.0
		IL_002b: sub
		IL_002c: sub
		IL_002d: ldarg.2
		IL_002e: bge.s IL_0037

		IL_0030: ldc.i4.s 13
		IL_0032: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0037: ldarg.0
		IL_0038: callvirt instance int32 System.Array::get_Rank()
		IL_003d: ldc.i4.1
		IL_003e: beq.s IL_0047

		IL_0040: ldc.i4.s 63
		IL_0042: call void System.ThrowHelper::ThrowRankException(valuetype System.ExceptionResource)

		IL_0047: ldarg.2
		IL_0048: ldc.i4.1
		IL_0049: bgt.s IL_004c

		IL_004b: ret

		IL_004c: ldarg.1
		IL_004d: ldloc.0
		IL_004e: sub
		IL_004f: stloc.1
		IL_0050: ldarg.0
		IL_0051: callvirt instance valuetype System.Reflection.CorElementType System.Array::GetCorElementTypeOfElementType()
		IL_0056: stloc.s 4
		IL_0058: ldloc.s 4
		IL_005a: ldc.i4.2
		IL_005b: sub
		IL_005c: switch (IL_00d3, IL_00e1, IL_00d3, IL_00d3, IL_00e1, IL_00e1, IL_00ef, IL_00ef, IL_00fd, IL_00fd, IL_00ef, IL_00fd, IL_0119, IL_0119, IL_0119, IL_0119, IL_0119, IL_0119, IL_010b, IL_0119, IL_0119, IL_0119, IL_00ef, IL_00ef, IL_0119, IL_0119, IL_010b, IL_010b)

		IL_00d1: br.s IL_0119

		IL_00d3: ldarg.0
		IL_00d4: ldloc.1
		IL_00d5: ldarg.2
		IL_00d6: call valuetype System.Span`1<!!0> System.Array::UnsafeArrayAsSpan<uint8>(class System.Array, int32, int32)
		IL_00db: call void System.MemoryExtensions::Reverse<uint8>(valuetype System.Span`1<!!0>)
		IL_00e0: ret

		IL_00e1: ldarg.0
		IL_00e2: ldloc.1
		IL_00e3: ldarg.2
		IL_00e4: call valuetype System.Span`1<!!0> System.Array::UnsafeArrayAsSpan<int16>(class System.Array, int32, int32)
		IL_00e9: call void System.MemoryExtensions::Reverse<int16>(valuetype System.Span`1<!!0>)
		IL_00ee: ret

		IL_00ef: ldarg.0
		IL_00f0: ldloc.1
		IL_00f1: ldarg.2
		IL_00f2: call valuetype System.Span`1<!!0> System.Array::UnsafeArrayAsSpan<int32>(class System.Array, int32, int32)
		IL_00f7: call void System.MemoryExtensions::Reverse<int32>(valuetype System.Span`1<!!0>)
		IL_00fc: ret

		IL_00fd: ldarg.0
		IL_00fe: ldloc.1
		IL_00ff: ldarg.2
		IL_0100: call valuetype System.Span`1<!!0> System.Array::UnsafeArrayAsSpan<int64>(class System.Array, int32, int32)
		IL_0105: call void System.MemoryExtensions::Reverse<int64>(valuetype System.Span`1<!!0>)
		IL_010a: ret

		IL_010b: ldarg.0
		IL_010c: ldloc.1
		IL_010d: ldarg.2
		IL_010e: call valuetype System.Span`1<!!0> System.Array::UnsafeArrayAsSpan<object>(class System.Array, int32, int32)
		IL_0113: call void System.MemoryExtensions::Reverse<object>(valuetype System.Span`1<!!0>)
		IL_0118: ret

		IL_0119: ldarg.1
		IL_011a: stloc.2
		IL_011b: ldarg.1
		IL_011c: ldarg.2
		IL_011d: add
		IL_011e: ldc.i4.1
		IL_011f: sub
		IL_0120: stloc.3
		IL_0121: br.s IL_014b
		// loop start (head: IL_014b)
			IL_0123: ldarg.0
			IL_0124: ldloc.2
			IL_0125: callvirt instance object System.Array::GetValue(int32)
			IL_012a: stloc.s 5
			IL_012c: ldarg.0
			IL_012d: ldarg.0
			IL_012e: ldloc.3
			IL_012f: callvirt instance object System.Array::GetValue(int32)
			IL_0134: ldloc.2
			IL_0135: callvirt instance void System.Array::SetValue(object, int32)
			IL_013a: ldarg.0
			IL_013b: ldloc.s 5
			IL_013d: ldloc.3
			IL_013e: callvirt instance void System.Array::SetValue(object, int32)
			IL_0143: ldloc.2
			IL_0144: ldc.i4.1
			IL_0145: add
			IL_0146: stloc.2
			IL_0147: ldloc.3
			IL_0148: ldc.i4.1
			IL_0149: sub
			IL_014a: stloc.3

			IL_014b: ldloc.2
			IL_014c: ldloc.3
			IL_014d: blt.s IL_0123
		// end loop

		IL_014f: ret
	} // end of method Array::Reverse

	.method public hidebysig static 
		void Reverse<T> (
			!!T[] 'array'
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x42020
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldc.i4.0
		IL_000b: ldarg.0
		IL_000c: ldlen
		IL_000d: conv.i4
		IL_000e: call void System.Array::Reverse<!!T>(!!0[], int32, int32)
		IL_0013: ret
	} // end of method Array::Reverse

	.method public hidebysig static 
		void Reverse<T> (
			!!T[] 'array',
			int32 index,
			int32 length
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x42038
		// Code size 126 (0x7e)
		.maxstack 2
		.locals (
			[0] !!T&,
			[1] !!T&,
			[2] !!T
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.1
		IL_000a: ldc.i4.0
		IL_000b: bge.s IL_0012

		IL_000d: call void System.ThrowHelper::ThrowIndexArgumentOutOfRange_NeedNonNegNumException()

		IL_0012: ldarg.2
		IL_0013: ldc.i4.0
		IL_0014: bge.s IL_001b

		IL_0016: call void System.ThrowHelper::ThrowLengthArgumentOutOfRange_ArgumentOutOfRange_NeedNonNegNum()

		IL_001b: ldarg.0
		IL_001c: ldlen
		IL_001d: conv.i4
		IL_001e: ldarg.1
		IL_001f: sub
		IL_0020: ldarg.2
		IL_0021: bge.s IL_002a

		IL_0023: ldc.i4.s 13
		IL_0025: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_002a: ldarg.2
		IL_002b: ldc.i4.1
		IL_002c: bgt.s IL_002f

		IL_002e: ret

		IL_002f: ldarg.0
		IL_0030: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<!!T>(!!0[])
		IL_0035: ldarg.1
		IL_0036: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<!!T>(!!0&, int32)
		IL_003b: stloc.0
		IL_003c: ldloc.0
		IL_003d: ldarg.2
		IL_003e: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<!!T>(!!0&, int32)
		IL_0043: ldc.i4.m1
		IL_0044: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<!!T>(!!0&, int32)
		IL_0049: stloc.1
		// loop start (head: IL_004a)
			IL_004a: ldloc.0
			IL_004b: ldobj !!T
			IL_0050: stloc.2
			IL_0051: ldloc.0
			IL_0052: ldloc.1
			IL_0053: ldobj !!T
			IL_0058: stobj !!T
			IL_005d: ldloc.1
			IL_005e: ldloc.2
			IL_005f: stobj !!T
			IL_0064: ldloc.0
			IL_0065: ldc.i4.1
			IL_0066: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<!!T>(!!0&, int32)
			IL_006b: stloc.0
			IL_006c: ldloc.1
			IL_006d: ldc.i4.m1
			IL_006e: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<!!T>(!!0&, int32)
			IL_0073: stloc.1
			IL_0074: ldloc.0
			IL_0075: ldloc.1
			IL_0076: call bool Internal.Runtime.CompilerServices.Unsafe::IsAddressLessThan<!!T>(!!0&, !!0&)
			IL_007b: brtrue.s IL_004a
		// end loop
		IL_007d: ret
	} // end of method Array::Reverse

	.method public hidebysig static 
		void Sort (
			class System.Array 'array'
		) cil managed 
	{
		// Method begins at RVA 0x420c2
		// Code size 31 (0x1f)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldnull
		IL_000b: ldarg.0
		IL_000c: ldc.i4.0
		IL_000d: callvirt instance int32 System.Array::GetLowerBound(int32)
		IL_0012: ldarg.0
		IL_0013: callvirt instance int32 System.Array::get_Length()
		IL_0018: ldnull
		IL_0019: call void System.Array::Sort(class System.Array, class System.Array, int32, int32, class System.Collections.IComparer)
		IL_001e: ret
	} // end of method Array::Sort

	.method public hidebysig static 
		void Sort (
			class System.Array keys,
			class System.Array items
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x420e2
		// Code size 32 (0x20)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 73
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: ldarg.1
		IL_000c: ldarg.0
		IL_000d: ldc.i4.0
		IL_000e: callvirt instance int32 System.Array::GetLowerBound(int32)
		IL_0013: ldarg.0
		IL_0014: callvirt instance int32 System.Array::get_Length()
		IL_0019: ldnull
		IL_001a: call void System.Array::Sort(class System.Array, class System.Array, int32, int32, class System.Collections.IComparer)
		IL_001f: ret
	} // end of method Array::Sort

	.method public hidebysig static 
		void Sort (
			class System.Array 'array',
			int32 index,
			int32 length
		) cil managed 
	{
		// Method begins at RVA 0x42103
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: ldarg.1
		IL_0003: ldarg.2
		IL_0004: ldnull
		IL_0005: call void System.Array::Sort(class System.Array, class System.Array, int32, int32, class System.Collections.IComparer)
		IL_000a: ret
	} // end of method Array::Sort

	.method public hidebysig static 
		void Sort (
			class System.Array keys,
			class System.Array items,
			int32 index,
			int32 length
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x4210f
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: ldnull
		IL_0005: call void System.Array::Sort(class System.Array, class System.Array, int32, int32, class System.Collections.IComparer)
		IL_000a: ret
	} // end of method Array::Sort

	.method public hidebysig static 
		void Sort (
			class System.Array 'array',
			class System.Collections.IComparer comparer
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x4211b
		// Code size 31 (0x1f)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldnull
		IL_000b: ldarg.0
		IL_000c: ldc.i4.0
		IL_000d: callvirt instance int32 System.Array::GetLowerBound(int32)
		IL_0012: ldarg.0
		IL_0013: callvirt instance int32 System.Array::get_Length()
		IL_0018: ldarg.1
		IL_0019: call void System.Array::Sort(class System.Array, class System.Array, int32, int32, class System.Collections.IComparer)
		IL_001e: ret
	} // end of method Array::Sort

	.method public hidebysig static 
		void Sort (
			class System.Array keys,
			class System.Array items,
			class System.Collections.IComparer comparer
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x4213b
		// Code size 32 (0x20)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 73
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: ldarg.1
		IL_000c: ldarg.0
		IL_000d: ldc.i4.0
		IL_000e: callvirt instance int32 System.Array::GetLowerBound(int32)
		IL_0013: ldarg.0
		IL_0014: callvirt instance int32 System.Array::get_Length()
		IL_0019: ldarg.2
		IL_001a: call void System.Array::Sort(class System.Array, class System.Array, int32, int32, class System.Collections.IComparer)
		IL_001f: ret
	} // end of method Array::Sort

	.method public hidebysig static 
		void Sort (
			class System.Array 'array',
			int32 index,
			int32 length,
			class System.Collections.IComparer comparer
		) cil managed 
	{
		.param [4]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x4215c
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: ldarg.1
		IL_0003: ldarg.2
		IL_0004: ldarg.3
		IL_0005: call void System.Array::Sort(class System.Array, class System.Array, int32, int32, class System.Collections.IComparer)
		IL_000a: ret
	} // end of method Array::Sort

	.method public hidebysig static 
		void Sort (
			class System.Array keys,
			class System.Array items,
			int32 index,
			int32 length,
			class System.Collections.IComparer comparer
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x42168
		// Code size 458 (0x1ca)
		.maxstack 4
		.locals (
			[0] int32,
			[1] object[],
			[2] object[],
			[3] valuetype System.Array/SorterObjectArray,
			[4] valuetype System.Reflection.CorElementType,
			[5] int32,
			[6] valuetype System.Array/SorterGenericArray
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 73
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: callvirt instance int32 System.Array::get_Rank()
		IL_0010: ldc.i4.1
		IL_0011: bne.un.s IL_001f

		IL_0013: ldarg.1
		IL_0014: brfalse.s IL_0026

		IL_0016: ldarg.1
		IL_0017: callvirt instance int32 System.Array::get_Rank()
		IL_001c: ldc.i4.1
		IL_001d: beq.s IL_0026

		IL_001f: ldc.i4.s 63
		IL_0021: call void System.ThrowHelper::ThrowRankException(valuetype System.ExceptionResource)

		IL_0026: ldarg.0
		IL_0027: ldc.i4.0
		IL_0028: callvirt instance int32 System.Array::GetLowerBound(int32)
		IL_002d: stloc.0
		IL_002e: ldarg.1
		IL_002f: brfalse.s IL_0042

		IL_0031: ldloc.0
		IL_0032: ldarg.1
		IL_0033: ldc.i4.0
		IL_0034: callvirt instance int32 System.Array::GetLowerBound(int32)
		IL_0039: beq.s IL_0042

		IL_003b: ldc.i4.s 53
		IL_003d: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0042: ldarg.2
		IL_0043: ldloc.0
		IL_0044: bge.s IL_004b

		IL_0046: call void System.ThrowHelper::ThrowIndexArgumentOutOfRange_NeedNonNegNumException()

		IL_004b: ldarg.3
		IL_004c: ldc.i4.0
		IL_004d: bge.s IL_0054

		IL_004f: call void System.ThrowHelper::ThrowLengthArgumentOutOfRange_ArgumentOutOfRange_NeedNonNegNum()

		IL_0054: ldarg.0
		IL_0055: callvirt instance int32 System.Array::get_Length()
		IL_005a: ldarg.2
		IL_005b: ldloc.0
		IL_005c: sub
		IL_005d: sub
		IL_005e: ldarg.3
		IL_005f: blt.s IL_0071

		IL_0061: ldarg.1
		IL_0062: brfalse.s IL_0078

		IL_0064: ldarg.2
		IL_0065: ldloc.0
		IL_0066: sub
		IL_0067: ldarg.1
		IL_0068: callvirt instance int32 System.Array::get_Length()
		IL_006d: ldarg.3
		IL_006e: sub
		IL_006f: ble.s IL_0078

		IL_0071: ldc.i4.s 13
		IL_0073: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0078: ldarg.3
		IL_0079: ldc.i4.1
		IL_007a: bgt.s IL_007d

		IL_007c: ret

		IL_007d: ldarg.s comparer
		IL_007f: brtrue.s IL_0088

		IL_0081: ldsfld class System.Collections.Comparer System.Collections.Comparer::Default
		IL_0086: starg.s comparer

		IL_0088: ldarg.0
		IL_0089: isinst object[]
		IL_008e: stloc.1
		IL_008f: ldloc.1
		IL_0090: brfalse.s IL_00b3

		IL_0092: ldarg.1
		IL_0093: isinst object[]
		IL_0098: stloc.2
		IL_0099: ldarg.1
		IL_009a: brfalse.s IL_009f

		IL_009c: ldloc.2
		IL_009d: brfalse.s IL_00b3

		IL_009f: ldloc.1
		IL_00a0: ldloc.2
		IL_00a1: ldarg.s comparer
		IL_00a3: newobj instance void System.Array/SorterObjectArray::.ctor(object[], object[], class System.Collections.IComparer)
		IL_00a8: stloc.3
		IL_00a9: ldloca.s 3
		IL_00ab: ldarg.2
		IL_00ac: ldarg.3
		IL_00ad: call instance void System.Array/SorterObjectArray::Sort(int32, int32)
		IL_00b2: ret

		IL_00b3: ldarg.s comparer
		IL_00b5: ldsfld class System.Collections.Comparer System.Collections.Comparer::Default
		IL_00ba: bne.un IL_01b5

		IL_00bf: ldarg.0
		IL_00c0: callvirt instance valuetype System.Reflection.CorElementType System.Array::GetCorElementTypeOfElementType()
		IL_00c5: stloc.s 4
		IL_00c7: ldarg.1
		IL_00c8: brfalse.s IL_00d7

		IL_00ca: ldarg.1
		IL_00cb: callvirt instance valuetype System.Reflection.CorElementType System.Array::GetCorElementTypeOfElementType()
		IL_00d0: ldloc.s 4
		IL_00d2: bne.un IL_01b5

		IL_00d7: ldarg.2
		IL_00d8: ldloc.0
		IL_00d9: sub
		IL_00da: stloc.s 5
		IL_00dc: ldloc.s 4
		IL_00de: ldc.i4.2
		IL_00df: sub
		IL_00e0: switch (IL_0152, IL_0168, IL_0147, IL_0152, IL_015d, IL_0168, IL_0173, IL_017e, IL_0189, IL_0194, IL_019f, IL_01aa, IL_01b5, IL_01b5, IL_01b5, IL_01b5, IL_01b5, IL_01b5, IL_01b5, IL_01b5, IL_01b5, IL_01b5, IL_0173, IL_017e)

		IL_0145: br.s IL_01b5

		IL_0147: ldarg.0
		IL_0148: ldarg.1
		IL_0149: ldloc.s 5
		IL_014b: ldarg.3
		IL_014c: call void System.Array::'<Sort>g__GenericSort|127_0'<int8>(class System.Array, class System.Array, int32, int32)
		IL_0151: ret

		IL_0152: ldarg.0
		IL_0153: ldarg.1
		IL_0154: ldloc.s 5
		IL_0156: ldarg.3
		IL_0157: call void System.Array::'<Sort>g__GenericSort|127_0'<uint8>(class System.Array, class System.Array, int32, int32)
		IL_015c: ret

		IL_015d: ldarg.0
		IL_015e: ldarg.1
		IL_015f: ldloc.s 5
		IL_0161: ldarg.3
		IL_0162: call void System.Array::'<Sort>g__GenericSort|127_0'<int16>(class System.Array, class System.Array, int32, int32)
		IL_0167: ret

		IL_0168: ldarg.0
		IL_0169: ldarg.1
		IL_016a: ldloc.s 5
		IL_016c: ldarg.3
		IL_016d: call void System.Array::'<Sort>g__GenericSort|127_0'<uint16>(class System.Array, class System.Array, int32, int32)
		IL_0172: ret

		IL_0173: ldarg.0
		IL_0174: ldarg.1
		IL_0175: ldloc.s 5
		IL_0177: ldarg.3
		IL_0178: call void System.Array::'<Sort>g__GenericSort|127_0'<int32>(class System.Array, class System.Array, int32, int32)
		IL_017d: ret

		IL_017e: ldarg.0
		IL_017f: ldarg.1
		IL_0180: ldloc.s 5
		IL_0182: ldarg.3
		IL_0183: call void System.Array::'<Sort>g__GenericSort|127_0'<uint32>(class System.Array, class System.Array, int32, int32)
		IL_0188: ret

		IL_0189: ldarg.0
		IL_018a: ldarg.1
		IL_018b: ldloc.s 5
		IL_018d: ldarg.3
		IL_018e: call void System.Array::'<Sort>g__GenericSort|127_0'<int64>(class System.Array, class System.Array, int32, int32)
		IL_0193: ret

		IL_0194: ldarg.0
		IL_0195: ldarg.1
		IL_0196: ldloc.s 5
		IL_0198: ldarg.3
		IL_0199: call void System.Array::'<Sort>g__GenericSort|127_0'<uint64>(class System.Array, class System.Array, int32, int32)
		IL_019e: ret

		IL_019f: ldarg.0
		IL_01a0: ldarg.1
		IL_01a1: ldloc.s 5
		IL_01a3: ldarg.3
		IL_01a4: call void System.Array::'<Sort>g__GenericSort|127_0'<float32>(class System.Array, class System.Array, int32, int32)
		IL_01a9: ret

		IL_01aa: ldarg.0
		IL_01ab: ldarg.1
		IL_01ac: ldloc.s 5
		IL_01ae: ldarg.3
		IL_01af: call void System.Array::'<Sort>g__GenericSort|127_0'<float64>(class System.Array, class System.Array, int32, int32)
		IL_01b4: ret

		IL_01b5: ldarg.0
		IL_01b6: ldarg.1
		IL_01b7: ldarg.s comparer
		IL_01b9: newobj instance void System.Array/SorterGenericArray::.ctor(class System.Array, class System.Array, class System.Collections.IComparer)
		IL_01be: stloc.s 6
		IL_01c0: ldloca.s 6
		IL_01c2: ldarg.2
		IL_01c3: ldarg.3
		IL_01c4: call instance void System.Array/SorterGenericArray::Sort(int32, int32)
		IL_01c9: ret
	} // end of method Array::Sort

	.method public hidebysig static 
		void Sort<T> (
			!!T[] 'array'
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x42340
		// Code size 43 (0x2b)
		.maxstack 3
		.locals (
			[0] valuetype System.Span`1<!!T>
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldlen
		IL_000b: conv.i4
		IL_000c: ldc.i4.1
		IL_000d: ble.s IL_002a

		IL_000f: ldarg.0
		IL_0010: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<!!T>(!!0[])
		IL_0015: ldarg.0
		IL_0016: ldlen
		IL_0017: conv.i4
		IL_0018: newobj instance void valuetype System.Span`1<!!T>::.ctor(!0&, int32)
		IL_001d: stloc.0
		IL_001e: call class System.Collections.Generic.IArraySortHelper`1<!0> class System.Collections.Generic.ArraySortHelper`1<!!T>::get_Default()
		IL_0023: ldloc.0
		IL_0024: ldnull
		IL_0025: callvirt instance void class System.Collections.Generic.IArraySortHelper`1<!!T>::Sort(valuetype System.Span`1<!0>, class System.Collections.Generic.IComparer`1<!0>)

		IL_002a: ret
	} // end of method Array::Sort

	.method public hidebysig static 
		void Sort<TKey, TValue> (
			!!TKey[] keys,
			!!TValue[] items
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		// Method begins at RVA 0x42377
		// Code size 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 73
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: ldarg.1
		IL_000c: ldc.i4.0
		IL_000d: ldarg.0
		IL_000e: ldlen
		IL_000f: conv.i4
		IL_0010: ldnull
		IL_0011: call void System.Array::Sort<!!TKey, !!TValue>(!!0[], !!1[], int32, int32, class System.Collections.Generic.IComparer`1<!!0>)
		IL_0016: ret
	} // end of method Array::Sort

	.method public hidebysig static 
		void Sort<T> (
			!!T[] 'array',
			int32 index,
			int32 length
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x4238f
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldnull
		IL_0004: call void System.Array::Sort<!!T>(!!0[], int32, int32, class System.Collections.Generic.IComparer`1<!!0>)
		IL_0009: ret
	} // end of method Array::Sort

	.method public hidebysig static 
		void Sort<TKey, TValue> (
			!!TKey[] keys,
			!!TValue[] items,
			int32 index,
			int32 length
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		// Method begins at RVA 0x4239a
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: ldnull
		IL_0005: call void System.Array::Sort<!!TKey, !!TValue>(!!0[], !!1[], int32, int32, class System.Collections.Generic.IComparer`1<!!0>)
		IL_000a: ret
	} // end of method Array::Sort

	.method public hidebysig static 
		void Sort<T> (
			!!T[] 'array',
			class System.Collections.Generic.IComparer`1<!!T> comparer
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		// Method begins at RVA 0x423a6
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: ldc.i4.0
		IL_000b: ldarg.0
		IL_000c: ldlen
		IL_000d: conv.i4
		IL_000e: ldarg.1
		IL_000f: call void System.Array::Sort<!!T>(!!0[], int32, int32, class System.Collections.Generic.IComparer`1<!!0>)
		IL_0014: ret
	} // end of method Array::Sort

	.method public hidebysig static 
		void Sort<TKey, TValue> (
			!!TKey[] keys,
			!!TValue[] items,
			class System.Collections.Generic.IComparer`1<!!TKey> comparer
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		// Method begins at RVA 0x423bc
		// Code size 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 73
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: ldarg.1
		IL_000c: ldc.i4.0
		IL_000d: ldarg.0
		IL_000e: ldlen
		IL_000f: conv.i4
		IL_0010: ldarg.2
		IL_0011: call void System.Array::Sort<!!TKey, !!TValue>(!!0[], !!1[], int32, int32, class System.Collections.Generic.IComparer`1<!!0>)
		IL_0016: ret
	} // end of method Array::Sort

	.method public hidebysig static 
		void Sort<T> (
			!!T[] 'array',
			int32 index,
			int32 length,
			class System.Collections.Generic.IComparer`1<!!T> comparer
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [4]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		// Method begins at RVA 0x423d4
		// Code size 78 (0x4e)
		.maxstack 3
		.locals (
			[0] valuetype System.Span`1<!!T>
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.1
		IL_000a: ldc.i4.0
		IL_000b: bge.s IL_0012

		IL_000d: call void System.ThrowHelper::ThrowIndexArgumentOutOfRange_NeedNonNegNumException()

		IL_0012: ldarg.2
		IL_0013: ldc.i4.0
		IL_0014: bge.s IL_001b

		IL_0016: call void System.ThrowHelper::ThrowLengthArgumentOutOfRange_ArgumentOutOfRange_NeedNonNegNum()

		IL_001b: ldarg.0
		IL_001c: ldlen
		IL_001d: conv.i4
		IL_001e: ldarg.1
		IL_001f: sub
		IL_0020: ldarg.2
		IL_0021: bge.s IL_002a

		IL_0023: ldc.i4.s 13
		IL_0025: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_002a: ldarg.2
		IL_002b: ldc.i4.1
		IL_002c: ble.s IL_004d

		IL_002e: ldarg.0
		IL_002f: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<!!T>(!!0[])
		IL_0034: ldarg.1
		IL_0035: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<!!T>(!!0&, int32)
		IL_003a: ldarg.2
		IL_003b: newobj instance void valuetype System.Span`1<!!T>::.ctor(!0&, int32)
		IL_0040: stloc.0
		IL_0041: call class System.Collections.Generic.IArraySortHelper`1<!0> class System.Collections.Generic.ArraySortHelper`1<!!T>::get_Default()
		IL_0046: ldloc.0
		IL_0047: ldarg.3
		IL_0048: callvirt instance void class System.Collections.Generic.IArraySortHelper`1<!!T>::Sort(valuetype System.Span`1<!0>, class System.Collections.Generic.IComparer`1<!0>)

		IL_004d: ret
	} // end of method Array::Sort

	.method public hidebysig static 
		void Sort<TKey, TValue> (
			!!TKey[] keys,
			!!TValue[] items,
			int32 index,
			int32 length,
			class System.Collections.Generic.IComparer`1<!!TKey> comparer
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		.param [5]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		// Method begins at RVA 0x42430
		// Code size 125 (0x7d)
		.maxstack 4
		.locals (
			[0] valuetype System.Span`1<!!TKey>,
			[1] valuetype System.Span`1<!!TValue>
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 73
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.2
		IL_000b: ldc.i4.0
		IL_000c: bge.s IL_0013

		IL_000e: call void System.ThrowHelper::ThrowIndexArgumentOutOfRange_NeedNonNegNumException()

		IL_0013: ldarg.3
		IL_0014: ldc.i4.0
		IL_0015: bge.s IL_001c

		IL_0017: call void System.ThrowHelper::ThrowLengthArgumentOutOfRange_ArgumentOutOfRange_NeedNonNegNum()

		IL_001c: ldarg.0
		IL_001d: ldlen
		IL_001e: conv.i4
		IL_001f: ldarg.2
		IL_0020: sub
		IL_0021: ldarg.3
		IL_0022: blt.s IL_002f

		IL_0024: ldarg.1
		IL_0025: brfalse.s IL_0036

		IL_0027: ldarg.2
		IL_0028: ldarg.1
		IL_0029: ldlen
		IL_002a: conv.i4
		IL_002b: ldarg.3
		IL_002c: sub
		IL_002d: ble.s IL_0036

		IL_002f: ldc.i4.s 13
		IL_0031: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0036: ldarg.3
		IL_0037: ldc.i4.1
		IL_0038: ble.s IL_007c

		IL_003a: ldarg.1
		IL_003b: brtrue.s IL_0048

		IL_003d: ldarg.0
		IL_003e: ldarg.2
		IL_003f: ldarg.3
		IL_0040: ldarg.s comparer
		IL_0042: call void System.Array::Sort<!!TKey>(!!0[], int32, int32, class System.Collections.Generic.IComparer`1<!!0>)
		IL_0047: ret

		IL_0048: ldarg.0
		IL_0049: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<!!TKey>(!!0[])
		IL_004e: ldarg.2
		IL_004f: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<!!TKey>(!!0&, int32)
		IL_0054: ldarg.3
		IL_0055: newobj instance void valuetype System.Span`1<!!TKey>::.ctor(!0&, int32)
		IL_005a: stloc.0
		IL_005b: ldarg.1
		IL_005c: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<!!TValue>(!!0[])
		IL_0061: ldarg.2
		IL_0062: call !!0& Internal.Runtime.CompilerServices.Unsafe::Add<!!TValue>(!!0&, int32)
		IL_0067: ldarg.3
		IL_0068: newobj instance void valuetype System.Span`1<!!TValue>::.ctor(!0&, int32)
		IL_006d: stloc.1
		IL_006e: call class System.Collections.Generic.IArraySortHelper`2<!0, !1> class System.Collections.Generic.ArraySortHelper`2<!!TKey, !!TValue>::get_Default()
		IL_0073: ldloc.0
		IL_0074: ldloc.1
		IL_0075: ldarg.s comparer
		IL_0077: callvirt instance void class System.Collections.Generic.IArraySortHelper`2<!!TKey, !!TValue>::Sort(valuetype System.Span`1<!0>, valuetype System.Span`1<!1>, class System.Collections.Generic.IComparer`1<!0>)

		IL_007c: ret
	} // end of method Array::Sort

	.method public hidebysig static 
		void Sort<T> (
			!!T[] 'array',
			class System.Comparison`1<!!T> comparison
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x424bc
		// Code size 42 (0x2a)
		.maxstack 2
		.locals (
			[0] valuetype System.Span`1<!!T>
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.1
		IL_000a: brtrue.s IL_0013

		IL_000c: ldc.i4.s 29
		IL_000e: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0013: ldarg.0
		IL_0014: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetArrayDataReference<!!T>(!!0[])
		IL_0019: ldarg.0
		IL_001a: ldlen
		IL_001b: conv.i4
		IL_001c: newobj instance void valuetype System.Span`1<!!T>::.ctor(!0&, int32)
		IL_0021: stloc.0
		IL_0022: ldloc.0
		IL_0023: ldarg.1
		IL_0024: call void class System.Collections.Generic.ArraySortHelper`1<!!T>::Sort(valuetype System.Span`1<!0>, class System.Comparison`1<!0>)
		IL_0029: ret
	} // end of method Array::Sort

	.method public hidebysig static 
		bool TrueForAll<T> (
			!!T[] 'array',
			class System.Predicate`1<!!T> match
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x424f4
		// Code size 52 (0x34)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.1
		IL_000a: brtrue.s IL_0013

		IL_000c: ldc.i4.s 26
		IL_000e: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0013: ldc.i4.0
		IL_0014: stloc.0
		IL_0015: br.s IL_002c
		// loop start (head: IL_002c)
			IL_0017: ldarg.1
			IL_0018: ldarg.0
			IL_0019: ldloc.0
			IL_001a: ldelem !!T
			IL_001f: callvirt instance bool class System.Predicate`1<!!T>::Invoke(!0)
			IL_0024: brtrue.s IL_0028

			IL_0026: ldc.i4.0
			IL_0027: ret

			IL_0028: ldloc.0
			IL_0029: ldc.i4.1
			IL_002a: add
			IL_002b: stloc.0

			IL_002c: ldloc.0
			IL_002d: ldarg.0
			IL_002e: ldlen
			IL_002f: conv.i4
			IL_0030: blt.s IL_0017
		// end loop

		IL_0032: ldc.i4.1
		IL_0033: ret
	} // end of method Array::TrueForAll

	.method private hidebysig static 
		valuetype System.Span`1<!!T> UnsafeArrayAsSpan<T> (
			class System.Array 'array',
			int32 adjustedIndex,
			int32 length
		) cil managed 
	{
		// Method begins at RVA 0x42534
		// Code size 33 (0x21)
		.maxstack 3
		.locals (
			[0] valuetype System.Span`1<!!T>
		)

		IL_0000: ldarg.0
		IL_0001: call uint8& System.Runtime.CompilerServices.RuntimeHelpers::GetRawArrayData(class System.Array)
		IL_0006: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<uint8, !!T>(!!0&)
		IL_000b: ldarg.0
		IL_000c: callvirt instance int32 System.Array::get_Length()
		IL_0011: newobj instance void valuetype System.Span`1<!!T>::.ctor(!0&, int32)
		IL_0016: stloc.0
		IL_0017: ldloca.s 0
		IL_0019: ldarg.1
		IL_001a: ldarg.2
		IL_001b: call instance valuetype System.Span`1<!0> valuetype System.Span`1<!!T>::Slice(int32, int32)
		IL_0020: ret
	} // end of method Array::UnsafeArrayAsSpan

	.method public final hidebysig newslot virtual 
		instance class System.Collections.IEnumerator GetEnumerator () cil managed 
	{
		// Method begins at RVA 0x42564
		// Code size 41 (0x29)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: call instance int32 System.Array::GetLowerBound(int32)
		IL_0007: stloc.0
		IL_0008: ldarg.0
		IL_0009: call instance int32 System.Array::get_Rank()
		IL_000e: ldc.i4.1
		IL_000f: bne.un.s IL_001b

		IL_0011: ldloc.0
		IL_0012: brtrue.s IL_001b

		IL_0014: ldarg.0
		IL_0015: newobj instance void System.SZArrayEnumerator::.ctor(class System.Array)
		IL_001a: ret

		IL_001b: ldarg.0
		IL_001c: ldloc.0
		IL_001d: ldarg.0
		IL_001e: call instance int32 System.Array::get_Length()
		IL_0023: newobj instance void System.ArrayEnumerator::.ctor(class System.Array, int32, int32)
		IL_0028: ret
	} // end of method Array::GetEnumerator

	.method assembly hidebysig static 
		int32 '<BinarySearch>g__GenericBinarySearch|81_0'<valuetype .ctor (class System.IComparable`1<!!T>, System.ValueType) T> (
			class System.Array 'array',
			int32 adjustedIndex,
			int32 length,
			object 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x42599
		// Code size 30 (0x1e)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: call valuetype System.Span`1<!!0> System.Array::UnsafeArrayAsSpan<!!T>(class System.Array, int32, int32)
		IL_0008: ldarg.3
		IL_0009: call uint8& System.Runtime.CompilerServices.RuntimeHelpers::GetRawData(object)
		IL_000e: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<uint8, !!T>(!!0&)
		IL_0013: ldobj !!T
		IL_0018: call int32 System.MemoryExtensions::BinarySearch<!!T, !!T>(valuetype System.Span`1<!!0>, !!1)
		IL_001d: ret
	} // end of method Array::'<BinarySearch>g__GenericBinarySearch|81_0'

	.method assembly hidebysig static 
		int32 '<IndexOf>g__GenericIndexOf|106_0'<valuetype .ctor (class System.IEquatable`1<!!T>, System.ValueType) T> (
			class System.Array 'array',
			object 'value',
			int32 adjustedIndex,
			int32 length
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x425b8
		// Code size 30 (0x1e)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.2
		IL_0002: ldarg.3
		IL_0003: call valuetype System.Span`1<!!0> System.Array::UnsafeArrayAsSpan<!!T>(class System.Array, int32, int32)
		IL_0008: ldarg.1
		IL_0009: call uint8& System.Runtime.CompilerServices.RuntimeHelpers::GetRawData(object)
		IL_000e: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<uint8, !!T>(!!0&)
		IL_0013: ldobj !!T
		IL_0018: call int32 System.MemoryExtensions::IndexOf<!!T>(valuetype System.Span`1<!!0>, !!0)
		IL_001d: ret
	} // end of method Array::'<IndexOf>g__GenericIndexOf|106_0'

	.method assembly hidebysig static 
		int32 '<LastIndexOf>g__GenericLastIndexOf|112_0'<valuetype .ctor (class System.IEquatable`1<!!T>, System.ValueType) T> (
			class System.Array 'array',
			object 'value',
			int32 adjustedIndex,
			int32 length
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x425d7
		// Code size 30 (0x1e)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.2
		IL_0002: ldarg.3
		IL_0003: call valuetype System.Span`1<!!0> System.Array::UnsafeArrayAsSpan<!!T>(class System.Array, int32, int32)
		IL_0008: ldarg.1
		IL_0009: call uint8& System.Runtime.CompilerServices.RuntimeHelpers::GetRawData(object)
		IL_000e: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<uint8, !!T>(!!0&)
		IL_0013: ldobj !!T
		IL_0018: call int32 System.MemoryExtensions::LastIndexOf<!!T>(valuetype System.Span`1<!!0>, !!0)
		IL_001d: ret
	} // end of method Array::'<LastIndexOf>g__GenericLastIndexOf|112_0'

	.method assembly hidebysig static 
		void '<Sort>g__GenericSort|127_0'<valuetype .ctor (System.ValueType) T> (
			class System.Array keys,
			class System.Array items,
			int32 adjustedIndex,
			int32 length
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x425f8
		// Code size 34 (0x22)
		.maxstack 4
		.locals (
			[0] valuetype System.Span`1<!!T>
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.2
		IL_0002: ldarg.3
		IL_0003: call valuetype System.Span`1<!!0> System.Array::UnsafeArrayAsSpan<!!T>(class System.Array, int32, int32)
		IL_0008: stloc.0
		IL_0009: ldarg.1
		IL_000a: brfalse.s IL_001b

		IL_000c: ldloc.0
		IL_000d: ldarg.1
		IL_000e: ldarg.2
		IL_000f: ldarg.3
		IL_0010: call valuetype System.Span`1<!!0> System.Array::UnsafeArrayAsSpan<!!T>(class System.Array, int32, int32)
		IL_0015: call void System.MemoryExtensions::Sort<!!T, !!T>(valuetype System.Span`1<!!0>, valuetype System.Span`1<!!1>)
		IL_001a: ret

		IL_001b: ldloc.0
		IL_001c: call void System.MemoryExtensions::Sort<!!T>(valuetype System.Span`1<!!0>)
		IL_0021: ret
	} // end of method Array::'<Sort>g__GenericSort|127_0'

	// Properties
	.property instance int32 Length()
	{
		.get instance int32 System.Array::get_Length()
	}
	.property instance int64 LongLength()
	{
		.get instance int64 System.Array::get_LongLength()
	}
	.property instance int32 Rank()
	{
		.get instance int32 System.Array::get_Rank()
	}
	.property instance int32 System.Collections.ICollection.Count()
	{
		.get instance int32 System.Array::System.Collections.ICollection.get_Count()
	}
	.property instance object SyncRoot()
	{
		.get instance object System.Array::get_SyncRoot()
	}
	.property instance bool IsReadOnly()
	{
		.get instance bool System.Array::get_IsReadOnly()
	}
	.property instance bool IsFixedSize()
	{
		.get instance bool System.Array::get_IsFixedSize()
	}
	.property instance bool IsSynchronized()
	{
		.get instance bool System.Array::get_IsSynchronized()
	}
	.property instance object System.Collections.IList.Item(
		int32 index
	)
	{
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.get instance object System.Array::System.Collections.IList.get_Item(int32)
		.set instance void System.Array::System.Collections.IList.set_Item(int32, object)
	}

} // end of class System.Array