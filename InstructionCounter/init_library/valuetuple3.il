.class public auto ansi sealed serializable beforefieldinit System.ValueTuple`3<T1, T2, T3>
	extends System.ValueType
	implements .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
		01 00 05 00 00 00 00 00 01 01 01 00 00
	)
	class System.IEquatable`1<valuetype System.ValueTuple`3<!T1, !T2, !T3>>,
	           System.Collections.IStructuralEquatable,
	           System.Collections.IStructuralComparable,
	           System.IComparable,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
		01 00 05 00 00 00 00 00 01 01 01 00 00
	)
	class System.IComparable`1<valuetype System.ValueTuple`3<!T1, !T2, !T3>>,
	           System.IValueTupleInternal,
	           System.Runtime.CompilerServices.ITuple
{
	.custom instance void System.Runtime.CompilerServices.TypeForwardedFromAttribute::.ctor(string) = (
		01 00 4b 6d 73 63 6f 72 6c 69 62 2c 20 56 65 72
		73 69 6f 6e 3d 34 2e 30 2e 30 2e 30 2c 20 43 75
		6c 74 75 72 65 3d 6e 65 75 74 72 61 6c 2c 20 50
		75 62 6c 69 63 4b 65 79 54 6f 6b 65 6e 3d 62 37
		37 61 35 63 35 36 31 39 33 34 65 30 38 39 00 00
	)
	.param type T1
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	.param type T2
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	.param type T3
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	// Fields
	.field public !T1 Item1
	.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 01 00 00
	)
	.field public !T2 Item2
	.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 01 00 00
	)
	.field public !T3 Item3
	.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 01 00 00
	)

	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			!T1 item1,
			!T2 item2,
			!T3 item3
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x92c45
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: stfld !0 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item1
		IL_0007: ldarg.0
		IL_0008: ldarg.2
		IL_0009: stfld !1 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item2
		IL_000e: ldarg.0
		IL_000f: ldarg.3
		IL_0010: stfld !2 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item3
		IL_0015: ret
	} // end of method ValueTuple`3::.ctor

	.method public hidebysig virtual 
		instance bool Equals (
			object obj
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x92c5c
		// Code size 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: isinst valuetype System.ValueTuple`3<!T1, !T2, !T3>
		IL_0006: brfalse.s IL_0015

		IL_0008: ldarg.0
		IL_0009: ldarg.1
		IL_000a: unbox.any valuetype System.ValueTuple`3<!T1, !T2, !T3>
		IL_000f: call instance bool valuetype System.ValueTuple`3<!T1, !T2, !T3>::Equals(valuetype System.ValueTuple`3<!0, !1, !2>)
		IL_0014: ret

		IL_0015: ldc.i4.0
		IL_0016: ret
	} // end of method ValueTuple`3::Equals

	.method public final hidebysig newslot virtual 
		instance bool Equals (
			valuetype System.ValueTuple`3<!T1, !T2, !T3> other
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 04 00 00 00 00 01 01 01 00 00
			)
		// Method begins at RVA 0x92c74
		// Code size 73 (0x49)
		.maxstack 3

		IL_0000: call class System.Collections.Generic.EqualityComparer`1<!0> class System.Collections.Generic.EqualityComparer`1<!T1>::get_Default()
		IL_0005: ldarg.0
		IL_0006: ldfld !0 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item1
		IL_000b: ldarg.1
		IL_000c: ldfld !0 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item1
		IL_0011: callvirt instance bool class System.Collections.Generic.EqualityComparer`1<!T1>::Equals(!0, !0)
		IL_0016: brfalse.s IL_0047

		IL_0018: call class System.Collections.Generic.EqualityComparer`1<!0> class System.Collections.Generic.EqualityComparer`1<!T2>::get_Default()
		IL_001d: ldarg.0
		IL_001e: ldfld !1 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item2
		IL_0023: ldarg.1
		IL_0024: ldfld !1 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item2
		IL_0029: callvirt instance bool class System.Collections.Generic.EqualityComparer`1<!T2>::Equals(!0, !0)
		IL_002e: brfalse.s IL_0047

		IL_0030: call class System.Collections.Generic.EqualityComparer`1<!0> class System.Collections.Generic.EqualityComparer`1<!T3>::get_Default()
		IL_0035: ldarg.0
		IL_0036: ldfld !2 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item3
		IL_003b: ldarg.1
		IL_003c: ldfld !2 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item3
		IL_0041: callvirt instance bool class System.Collections.Generic.EqualityComparer`1<!T3>::Equals(!0, !0)
		IL_0046: ret

		IL_0047: ldc.i4.0
		IL_0048: ret
	} // end of method ValueTuple`3::Equals

	.method private final hidebysig newslot virtual 
		instance bool System.Collections.IStructuralEquatable.Equals (
			object other,
			class System.Collections.IEqualityComparer comparer
		) cil managed 
	{
		.override method instance bool System.Collections.IStructuralEquatable::Equals(object, class System.Collections.IEqualityComparer)
		// Method begins at RVA 0x92ccc
		// Code size 111 (0x6f)
		.maxstack 3
		.locals (
			[0] valuetype System.ValueTuple`3<!T1, !T2, !T3>
		)

		IL_0000: ldarg.1
		IL_0001: brfalse.s IL_000b

		IL_0003: ldarg.1
		IL_0004: isinst valuetype System.ValueTuple`3<!T1, !T2, !T3>
		IL_0009: brtrue.s IL_000d

		IL_000b: ldc.i4.0
		IL_000c: ret

		IL_000d: ldarg.1
		IL_000e: unbox.any valuetype System.ValueTuple`3<!T1, !T2, !T3>
		IL_0013: stloc.0
		IL_0014: ldarg.2
		IL_0015: ldarg.0
		IL_0016: ldfld !0 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item1
		IL_001b: box !T1
		IL_0020: ldloc.0
		IL_0021: ldfld !0 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item1
		IL_0026: box !T1
		IL_002b: callvirt instance bool System.Collections.IEqualityComparer::Equals(object, object)
		IL_0030: brfalse.s IL_006d

		IL_0032: ldarg.2
		IL_0033: ldarg.0
		IL_0034: ldfld !1 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item2
		IL_0039: box !T2
		IL_003e: ldloc.0
		IL_003f: ldfld !1 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item2
		IL_0044: box !T2
		IL_0049: callvirt instance bool System.Collections.IEqualityComparer::Equals(object, object)
		IL_004e: brfalse.s IL_006d

		IL_0050: ldarg.2
		IL_0051: ldarg.0
		IL_0052: ldfld !2 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item3
		IL_0057: box !T3
		IL_005c: ldloc.0
		IL_005d: ldfld !2 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item3
		IL_0062: box !T3
		IL_0067: callvirt instance bool System.Collections.IEqualityComparer::Equals(object, object)
		IL_006c: ret

		IL_006d: ldc.i4.0
		IL_006e: ret
	} // end of method ValueTuple`3::System.Collections.IStructuralEquatable.Equals

	.method private final hidebysig newslot virtual 
		instance int32 System.IComparable.CompareTo (
			object other
		) cil managed 
	{
		.override method instance int32 System.IComparable::CompareTo(object)
		// Method begins at RVA 0x92d47
		// Code size 63 (0x3f)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.1
		IL_0004: ret

		IL_0005: ldarg.1
		IL_0006: isinst valuetype System.ValueTuple`3<!T1, !T2, !T3>
		IL_000b: brtrue.s IL_0032

		IL_000d: call string System.SR::get_ArgumentException_ValueTupleIncorrectType()
		IL_0012: ldarg.0
		IL_0013: ldobj valuetype System.ValueTuple`3<!T1, !T2, !T3>
		IL_0018: box valuetype System.ValueTuple`3<!T1, !T2, !T3>
		IL_001d: call instance class System.Type System.Object::GetType()
		IL_0022: call string System.SR::Format(string, object)
		IL_0027: ldstr "other"
		IL_002c: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0031: throw

		IL_0032: ldarg.0
		IL_0033: ldarg.1
		IL_0034: unbox.any valuetype System.ValueTuple`3<!T1, !T2, !T3>
		IL_0039: call instance int32 valuetype System.ValueTuple`3<!T1, !T2, !T3>::CompareTo(valuetype System.ValueTuple`3<!0, !1, !2>)
		IL_003e: ret
	} // end of method ValueTuple`3::System.IComparable.CompareTo

	.method public final hidebysig newslot virtual 
		instance int32 CompareTo (
			valuetype System.ValueTuple`3<!T1, !T2, !T3> other
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 04 00 00 00 00 01 01 01 00 00
			)
		// Method begins at RVA 0x92d88
		// Code size 79 (0x4f)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: call class System.Collections.Generic.Comparer`1<!0> class System.Collections.Generic.Comparer`1<!T1>::get_Default()
		IL_0005: ldarg.0
		IL_0006: ldfld !0 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item1
		IL_000b: ldarg.1
		IL_000c: ldfld !0 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item1
		IL_0011: callvirt instance int32 class System.Collections.Generic.Comparer`1<!T1>::Compare(!0, !0)
		IL_0016: stloc.0
		IL_0017: ldloc.0
		IL_0018: brfalse.s IL_001c

		IL_001a: ldloc.0
		IL_001b: ret

		IL_001c: call class System.Collections.Generic.Comparer`1<!0> class System.Collections.Generic.Comparer`1<!T2>::get_Default()
		IL_0021: ldarg.0
		IL_0022: ldfld !1 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item2
		IL_0027: ldarg.1
		IL_0028: ldfld !1 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item2
		IL_002d: callvirt instance int32 class System.Collections.Generic.Comparer`1<!T2>::Compare(!0, !0)
		IL_0032: stloc.0
		IL_0033: ldloc.0
		IL_0034: brfalse.s IL_0038

		IL_0036: ldloc.0
		IL_0037: ret

		IL_0038: call class System.Collections.Generic.Comparer`1<!0> class System.Collections.Generic.Comparer`1<!T3>::get_Default()
		IL_003d: ldarg.0
		IL_003e: ldfld !2 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item3
		IL_0043: ldarg.1
		IL_0044: ldfld !2 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item3
		IL_0049: callvirt instance int32 class System.Collections.Generic.Comparer`1<!T3>::Compare(!0, !0)
		IL_004e: ret
	} // end of method ValueTuple`3::CompareTo

	.method private final hidebysig newslot virtual 
		instance int32 System.Collections.IStructuralComparable.CompareTo (
			object other,
			class System.Collections.IComparer comparer
		) cil managed 
	{
		.override method instance int32 System.Collections.IStructuralComparable::CompareTo(object, class System.Collections.IComparer)
		// Method begins at RVA 0x92de4
		// Code size 154 (0x9a)
		.maxstack 3
		.locals (
			[0] valuetype System.ValueTuple`3<!T1, !T2, !T3>,
			[1] int32
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.1
		IL_0004: ret

		IL_0005: ldarg.1
		IL_0006: isinst valuetype System.ValueTuple`3<!T1, !T2, !T3>
		IL_000b: brtrue.s IL_0032

		IL_000d: call string System.SR::get_ArgumentException_ValueTupleIncorrectType()
		IL_0012: ldarg.0
		IL_0013: ldobj valuetype System.ValueTuple`3<!T1, !T2, !T3>
		IL_0018: box valuetype System.ValueTuple`3<!T1, !T2, !T3>
		IL_001d: call instance class System.Type System.Object::GetType()
		IL_0022: call string System.SR::Format(string, object)
		IL_0027: ldstr "other"
		IL_002c: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0031: throw

		IL_0032: ldarg.1
		IL_0033: unbox.any valuetype System.ValueTuple`3<!T1, !T2, !T3>
		IL_0038: stloc.0
		IL_0039: ldarg.2
		IL_003a: ldarg.0
		IL_003b: ldfld !0 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item1
		IL_0040: box !T1
		IL_0045: ldloc.0
		IL_0046: ldfld !0 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item1
		IL_004b: box !T1
		IL_0050: callvirt instance int32 System.Collections.IComparer::Compare(object, object)
		IL_0055: stloc.1
		IL_0056: ldloc.1
		IL_0057: brfalse.s IL_005b

		IL_0059: ldloc.1
		IL_005a: ret

		IL_005b: ldarg.2
		IL_005c: ldarg.0
		IL_005d: ldfld !1 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item2
		IL_0062: box !T2
		IL_0067: ldloc.0
		IL_0068: ldfld !1 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item2
		IL_006d: box !T2
		IL_0072: callvirt instance int32 System.Collections.IComparer::Compare(object, object)
		IL_0077: stloc.1
		IL_0078: ldloc.1
		IL_0079: brfalse.s IL_007d

		IL_007b: ldloc.1
		IL_007c: ret

		IL_007d: ldarg.2
		IL_007e: ldarg.0
		IL_007f: ldfld !2 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item3
		IL_0084: box !T3
		IL_0089: ldloc.0
		IL_008a: ldfld !2 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item3
		IL_008f: box !T3
		IL_0094: callvirt instance int32 System.Collections.IComparer::Compare(object, object)
		IL_0099: ret
	} // end of method ValueTuple`3::System.Collections.IStructuralComparable.CompareTo

	.method public hidebysig virtual 
		instance int32 GetHashCode () cil managed 
	{
		// Method begins at RVA 0x92e8c
		// Code size 165 (0xa5)
		.maxstack 4
		.locals (
			[0] !T1,
			[1] !T2,
			[2] !T3
		)

		IL_0000: ldarg.0
		IL_0001: ldflda !0 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item1
		IL_0006: ldloca.s 0
		IL_0008: initobj !T1
		IL_000e: ldloc.0
		IL_000f: box !T1
		IL_0014: brtrue.s IL_002a

		IL_0016: ldobj !T1
		IL_001b: stloc.0
		IL_001c: ldloca.s 0
		IL_001e: ldloc.0
		IL_001f: box !T1
		IL_0024: brtrue.s IL_002a

		IL_0026: pop
		IL_0027: ldc.i4.0
		IL_0028: br.s IL_0035

		IL_002a: constrained. !T1
		IL_0030: callvirt instance int32 System.Object::GetHashCode()

		IL_0035: ldarg.0
		IL_0036: ldflda !1 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item2
		IL_003b: ldloca.s 1
		IL_003d: initobj !T2
		IL_0043: ldloc.1
		IL_0044: box !T2
		IL_0049: brtrue.s IL_005f

		IL_004b: ldobj !T2
		IL_0050: stloc.1
		IL_0051: ldloca.s 1
		IL_0053: ldloc.1
		IL_0054: box !T2
		IL_0059: brtrue.s IL_005f

		IL_005b: pop
		IL_005c: ldc.i4.0
		IL_005d: br.s IL_006a

		IL_005f: constrained. !T2
		IL_0065: callvirt instance int32 System.Object::GetHashCode()

		IL_006a: ldarg.0
		IL_006b: ldflda !2 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item3
		IL_0070: ldloca.s 2
		IL_0072: initobj !T3
		IL_0078: ldloc.2
		IL_0079: box !T3
		IL_007e: brtrue.s IL_0094

		IL_0080: ldobj !T3
		IL_0085: stloc.2
		IL_0086: ldloca.s 2
		IL_0088: ldloc.2
		IL_0089: box !T3
		IL_008e: brtrue.s IL_0094

		IL_0090: pop
		IL_0091: ldc.i4.0
		IL_0092: br.s IL_009f

		IL_0094: constrained. !T3
		IL_009a: callvirt instance int32 System.Object::GetHashCode()

		IL_009f: call int32 System.HashCode::Combine<int32, int32, int32>(!!0, !!1, !!2)
		IL_00a4: ret
	} // end of method ValueTuple`3::GetHashCode

	.method private final hidebysig newslot virtual 
		instance int32 System.Collections.IStructuralEquatable.GetHashCode (
			class System.Collections.IEqualityComparer comparer
		) cil managed 
	{
		.override method instance int32 System.Collections.IStructuralEquatable::GetHashCode(class System.Collections.IEqualityComparer)
		// Method begins at RVA 0x92f3d
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance int32 valuetype System.ValueTuple`3<!T1, !T2, !T3>::GetHashCodeCore(class System.Collections.IEqualityComparer)
		IL_0007: ret
	} // end of method ValueTuple`3::System.Collections.IStructuralEquatable.GetHashCode

	.method private hidebysig 
		instance int32 GetHashCodeCore (
			class System.Collections.IEqualityComparer comparer
		) cil managed 
	{
		// Method begins at RVA 0x92f46
		// Code size 57 (0x39)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: ldfld !0 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item1
		IL_0007: box !T1
		IL_000c: callvirt instance int32 System.Collections.IEqualityComparer::GetHashCode(object)
		IL_0011: ldarg.1
		IL_0012: ldarg.0
		IL_0013: ldfld !1 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item2
		IL_0018: box !T2
		IL_001d: callvirt instance int32 System.Collections.IEqualityComparer::GetHashCode(object)
		IL_0022: ldarg.1
		IL_0023: ldarg.0
		IL_0024: ldfld !2 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item3
		IL_0029: box !T3
		IL_002e: callvirt instance int32 System.Collections.IEqualityComparer::GetHashCode(object)
		IL_0033: call int32 System.HashCode::Combine<int32, int32, int32>(!!0, !!1, !!2)
		IL_0038: ret
	} // end of method ValueTuple`3::GetHashCodeCore

	.method private final hidebysig newslot virtual 
		instance int32 System.IValueTupleInternal.GetHashCode (
			class System.Collections.IEqualityComparer comparer
		) cil managed 
	{
		.override method instance int32 System.IValueTupleInternal::GetHashCode(class System.Collections.IEqualityComparer)
		// Method begins at RVA 0x92f3d
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance int32 valuetype System.ValueTuple`3<!T1, !T2, !T3>::GetHashCodeCore(class System.Collections.IEqualityComparer)
		IL_0007: ret
	} // end of method ValueTuple`3::System.IValueTupleInternal.GetHashCode

	.method public hidebysig virtual 
		instance string ToString () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x92f80
		// Code size 212 (0xd4)
		.maxstack 5
		.locals (
			[0] !T1,
			[1] !T2,
			[2] !T3
		)

		IL_0000: ldc.i4.7
		IL_0001: newarr System.String
		IL_0006: dup
		IL_0007: ldc.i4.0
		IL_0008: ldstr "("
		IL_000d: stelem.ref
		IL_000e: dup
		IL_000f: ldc.i4.1
		IL_0010: ldarg.0
		IL_0011: ldflda !0 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item1
		IL_0016: ldloca.s 0
		IL_0018: initobj !T1
		IL_001e: ldloc.0
		IL_001f: box !T1
		IL_0024: brtrue.s IL_003a

		IL_0026: ldobj !T1
		IL_002b: stloc.0
		IL_002c: ldloca.s 0
		IL_002e: ldloc.0
		IL_002f: box !T1
		IL_0034: brtrue.s IL_003a

		IL_0036: pop
		IL_0037: ldnull
		IL_0038: br.s IL_0045

		IL_003a: constrained. !T1
		IL_0040: callvirt instance string System.Object::ToString()

		IL_0045: stelem.ref
		IL_0046: dup
		IL_0047: ldc.i4.2
		IL_0048: ldstr ", "
		IL_004d: stelem.ref
		IL_004e: dup
		IL_004f: ldc.i4.3
		IL_0050: ldarg.0
		IL_0051: ldflda !1 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item2
		IL_0056: ldloca.s 1
		IL_0058: initobj !T2
		IL_005e: ldloc.1
		IL_005f: box !T2
		IL_0064: brtrue.s IL_007a

		IL_0066: ldobj !T2
		IL_006b: stloc.1
		IL_006c: ldloca.s 1
		IL_006e: ldloc.1
		IL_006f: box !T2
		IL_0074: brtrue.s IL_007a

		IL_0076: pop
		IL_0077: ldnull
		IL_0078: br.s IL_0085

		IL_007a: constrained. !T2
		IL_0080: callvirt instance string System.Object::ToString()

		IL_0085: stelem.ref
		IL_0086: dup
		IL_0087: ldc.i4.4
		IL_0088: ldstr ", "
		IL_008d: stelem.ref
		IL_008e: dup
		IL_008f: ldc.i4.5
		IL_0090: ldarg.0
		IL_0091: ldflda !2 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item3
		IL_0096: ldloca.s 2
		IL_0098: initobj !T3
		IL_009e: ldloc.2
		IL_009f: box !T3
		IL_00a4: brtrue.s IL_00ba

		IL_00a6: ldobj !T3
		IL_00ab: stloc.2
		IL_00ac: ldloca.s 2
		IL_00ae: ldloc.2
		IL_00af: box !T3
		IL_00b4: brtrue.s IL_00ba

		IL_00b6: pop
		IL_00b7: ldnull
		IL_00b8: br.s IL_00c5

		IL_00ba: constrained. !T3
		IL_00c0: callvirt instance string System.Object::ToString()

		IL_00c5: stelem.ref
		IL_00c6: dup
		IL_00c7: ldc.i4.6
		IL_00c8: ldstr ")"
		IL_00cd: stelem.ref
		IL_00ce: call string System.String::Concat(string[])
		IL_00d3: ret
	} // end of method ValueTuple`3::ToString

	.method private final hidebysig newslot virtual 
		instance string System.IValueTupleInternal.ToStringEnd () cil managed 
	{
		.override method instance string System.IValueTupleInternal::ToStringEnd()
		// Method begins at RVA 0x93060
		// Code size 204 (0xcc)
		.maxstack 5
		.locals (
			[0] !T1,
			[1] !T2,
			[2] !T3
		)

		IL_0000: ldc.i4.6
		IL_0001: newarr System.String
		IL_0006: dup
		IL_0007: ldc.i4.0
		IL_0008: ldarg.0
		IL_0009: ldflda !0 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item1
		IL_000e: ldloca.s 0
		IL_0010: initobj !T1
		IL_0016: ldloc.0
		IL_0017: box !T1
		IL_001c: brtrue.s IL_0032

		IL_001e: ldobj !T1
		IL_0023: stloc.0
		IL_0024: ldloca.s 0
		IL_0026: ldloc.0
		IL_0027: box !T1
		IL_002c: brtrue.s IL_0032

		IL_002e: pop
		IL_002f: ldnull
		IL_0030: br.s IL_003d

		IL_0032: constrained. !T1
		IL_0038: callvirt instance string System.Object::ToString()

		IL_003d: stelem.ref
		IL_003e: dup
		IL_003f: ldc.i4.1
		IL_0040: ldstr ", "
		IL_0045: stelem.ref
		IL_0046: dup
		IL_0047: ldc.i4.2
		IL_0048: ldarg.0
		IL_0049: ldflda !1 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item2
		IL_004e: ldloca.s 1
		IL_0050: initobj !T2
		IL_0056: ldloc.1
		IL_0057: box !T2
		IL_005c: brtrue.s IL_0072

		IL_005e: ldobj !T2
		IL_0063: stloc.1
		IL_0064: ldloca.s 1
		IL_0066: ldloc.1
		IL_0067: box !T2
		IL_006c: brtrue.s IL_0072

		IL_006e: pop
		IL_006f: ldnull
		IL_0070: br.s IL_007d

		IL_0072: constrained. !T2
		IL_0078: callvirt instance string System.Object::ToString()

		IL_007d: stelem.ref
		IL_007e: dup
		IL_007f: ldc.i4.3
		IL_0080: ldstr ", "
		IL_0085: stelem.ref
		IL_0086: dup
		IL_0087: ldc.i4.4
		IL_0088: ldarg.0
		IL_0089: ldflda !2 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item3
		IL_008e: ldloca.s 2
		IL_0090: initobj !T3
		IL_0096: ldloc.2
		IL_0097: box !T3
		IL_009c: brtrue.s IL_00b2

		IL_009e: ldobj !T3
		IL_00a3: stloc.2
		IL_00a4: ldloca.s 2
		IL_00a6: ldloc.2
		IL_00a7: box !T3
		IL_00ac: brtrue.s IL_00b2

		IL_00ae: pop
		IL_00af: ldnull
		IL_00b0: br.s IL_00bd

		IL_00b2: constrained. !T3
		IL_00b8: callvirt instance string System.Object::ToString()

		IL_00bd: stelem.ref
		IL_00be: dup
		IL_00bf: ldc.i4.5
		IL_00c0: ldstr ")"
		IL_00c5: stelem.ref
		IL_00c6: call string System.String::Concat(string[])
		IL_00cb: ret
	} // end of method ValueTuple`3::System.IValueTupleInternal.ToStringEnd

	.method private final hidebysig specialname newslot virtual 
		instance int32 System.Runtime.CompilerServices.ITuple.get_Length () cil managed 
	{
		.override method instance int32 System.Runtime.CompilerServices.ITuple::get_Length()
		// Method begins at RVA 0x5ede2
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldc.i4.3
		IL_0001: ret
	} // end of method ValueTuple`3::System.Runtime.CompilerServices.ITuple.get_Length

	.method private final hidebysig specialname newslot virtual 
		instance object System.Runtime.CompilerServices.ITuple.get_Item (
			int32 index
		) cil managed 
	{
		.override method instance object System.Runtime.CompilerServices.ITuple::get_Item(int32)
		// Method begins at RVA 0x93138
		// Code size 70 (0x46)
		.maxstack 1
		.locals (
			[0] object
		)

		IL_0000: ldarg.1
		IL_0001: switch (IL_0014, IL_0022, IL_0030)

		IL_0012: br.s IL_003e

		IL_0014: ldarg.0
		IL_0015: ldfld !0 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item1
		IL_001a: box !T1
		IL_001f: stloc.0
		IL_0020: br.s IL_0044

		IL_0022: ldarg.0
		IL_0023: ldfld !1 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item2
		IL_0028: box !T2
		IL_002d: stloc.0
		IL_002e: br.s IL_0044

		IL_0030: ldarg.0
		IL_0031: ldfld !2 valuetype System.ValueTuple`3<!T1, !T2, !T3>::Item3
		IL_0036: box !T3
		IL_003b: stloc.0
		IL_003c: br.s IL_0044

		IL_003e: newobj instance void System.IndexOutOfRangeException::.ctor()
		IL_0043: throw

		IL_0044: ldloc.0
		IL_0045: ret
	} // end of method ValueTuple`3::System.Runtime.CompilerServices.ITuple.get_Item

	// Properties
	.property instance int32 System.Runtime.CompilerServices.ITuple.Length()
	{
		.get instance int32 System.ValueTuple`3::System.Runtime.CompilerServices.ITuple.get_Length()
	}
	.property instance object System.Runtime.CompilerServices.ITuple.Item(
		int32 index
	)
	{
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.get instance object System.ValueTuple`3::System.Runtime.CompilerServices.ITuple.get_Item(int32)
	}

} // end of class System.ValueTuple`3