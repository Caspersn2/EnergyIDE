.class public auto ansi serializable beforefieldinit System.Object
{
	.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
		01 00 02 00 00
	)
	.custom instance void System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(valuetype System.Runtime.InteropServices.ClassInterfaceType) = (
		01 00 01 00 00 00 00 00
	)
	.custom instance void System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = (
		01 00 01 00 00
	)
	.custom instance void System.Runtime.CompilerServices.TypeForwardedFromAttribute::.ctor(string) = (
		01 00 4b 6d 73 63 6f 72 6c 69 62 2c 20 56 65 72
		73 69 6f 6e 3d 34 2e 30 2e 30 2e 30 2c 20 43 75
		6c 74 75 72 65 3d 6e 65 75 74 72 61 6c 2c 20 50
		75 62 6c 69 63 4b 65 79 54 6f 6b 65 6e 3d 62 37
		37 61 35 63 35 36 31 39 33 34 65 30 38 39 00 00
	)
	// Methods
	.method public hidebysig 
		instance class System.Type GetType () cil managed internalcall 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.custom instance void System.Runtime.CompilerServices.IntrinsicAttribute::.ctor() = (
			01 00 00 00
		)
	} // end of method Object::GetType

	.method family hidebysig 
		instance object MemberwiseClone () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x4d51c
		// Code size 61 (0x3d)
		.maxstack 3
		.locals (
			[0] object,
			[1] native uint,
			[2] uint8&,
			[3] uint8&
		)

		IL_0000: ldarg.0
		IL_0001: call object System.Runtime.CompilerServices.RuntimeHelpers::AllocateUninitializedClone(object)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: call native uint System.Runtime.CompilerServices.RuntimeHelpers::GetRawObjectDataSize(object)
		IL_000d: stloc.1
		IL_000e: ldarg.0
		IL_000f: call uint8& System.Runtime.CompilerServices.RuntimeHelpers::GetRawData(object)
		IL_0014: stloc.2
		IL_0015: ldloc.0
		IL_0016: call uint8& System.Runtime.CompilerServices.RuntimeHelpers::GetRawData(object)
		IL_001b: stloc.3
		IL_001c: ldloc.0
		IL_001d: call valuetype System.Runtime.CompilerServices.MethodTable* System.Runtime.CompilerServices.RuntimeHelpers::GetMethodTable(object)
		IL_0022: call instance bool System.Runtime.CompilerServices.MethodTable::get_ContainsGCPointers()
		IL_0027: brfalse.s IL_0033

		IL_0029: ldloc.3
		IL_002a: ldloc.2
		IL_002b: ldloc.1
		IL_002c: call void System.Buffer::BulkMoveWithWriteBarrier(uint8&, uint8&, native uint)
		IL_0031: br.s IL_003b

		IL_0033: ldloc.3
		IL_0034: ldloc.2
		IL_0035: ldloc.1
		IL_0036: call void System.Buffer::Memmove<uint8>(!!0&, !!0&, native uint)

		IL_003b: ldloc.0
		IL_003c: ret
	} // end of method Object::MemberwiseClone

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x4017b
		// Code size 1 (0x1)
		.maxstack 8

		IL_0000: ret
	} // end of method Object::.ctor

	.method family hidebysig newslot virtual 
		instance void Finalize () cil managed 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x4017b
		// Code size 1 (0x1)
		.maxstack 8

		IL_0000: ret
	} // end of method Object::Finalize

	.method public hidebysig newslot virtual 
		instance string ToString () cil managed 
	{
		// Method begins at RVA 0x4d565
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance class System.Type System.Object::GetType()
		IL_0006: callvirt instance string System.Object::ToString()
		IL_000b: ret
	} // end of method Object::ToString

	.method public hidebysig newslot virtual 
		instance bool Equals (
			object obj
		) cil managed 
	{
		// Method begins at RVA 0x4d572
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call bool System.Runtime.CompilerServices.RuntimeHelpers::Equals(object, object)
		IL_0007: ret
	} // end of method Object::Equals

	.method public hidebysig static 
		bool Equals (
			object objA,
			object objB
		) cil managed 
	{
		// Method begins at RVA 0x4d57b
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: bne.un.s IL_0006

		IL_0004: ldc.i4.1
		IL_0005: ret

		IL_0006: ldarg.0
		IL_0007: brfalse.s IL_000c

		IL_0009: ldarg.1
		IL_000a: brtrue.s IL_000e

		IL_000c: ldc.i4.0
		IL_000d: ret

		IL_000e: ldarg.0
		IL_000f: ldarg.1
		IL_0010: callvirt instance bool System.Object::Equals(object)
		IL_0015: ret
	} // end of method Object::Equals

	.method public hidebysig static 
		bool ReferenceEquals (
			object objA,
			object objB
		) cil managed 
	{
		.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x4d592
		// Code size 5 (0x5)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ceq
		IL_0004: ret
	} // end of method Object::ReferenceEquals

	.method public hidebysig newslot virtual 
		instance int32 GetHashCode () cil managed 
	{
		// Method begins at RVA 0x4d598
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call int32 System.Runtime.CompilerServices.RuntimeHelpers::GetHashCode(object)
		IL_0006: ret
	} // end of method Object::GetHashCode

} // end of class System.Object