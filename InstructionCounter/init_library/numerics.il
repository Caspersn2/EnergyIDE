.class public auto ansi abstract sealed beforefieldinit System.Numerics.BitOperations
	extends System.Object
{
	// Methods
	.method private hidebysig specialname static 
		valuetype System.ReadOnlySpan`1<uint8> get_TrailingZeroCountDeBruijn () cil managed 
	{
		// Method begins at RVA 0x978e2
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldsflda valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=32' '<PrivateImplementationDetails>'::'3BF63951626584EB1653F9B8DBB590A5EE1EAE1135A904B9317C3773896DF076'
		IL_0005: ldc.i4.s 32
		IL_0007: newobj instance void valuetype System.ReadOnlySpan`1<uint8>::.ctor(void*, int32)
		IL_000c: ret
	} // end of method BitOperations::get_TrailingZeroCountDeBruijn

	.method private hidebysig specialname static 
		valuetype System.ReadOnlySpan`1<uint8> get_Log2DeBruijn () cil managed 
	{
		// Method begins at RVA 0x978f0
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldsflda valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=32' '<PrivateImplementationDetails>'::'4BCD43D478B9229AB7A13406353712C7944B60348C36B4D0E6B789D10F697652'
		IL_0005: ldc.i4.s 32
		IL_0007: newobj instance void valuetype System.ReadOnlySpan`1<uint8>::.ctor(void*, int32)
		IL_000c: ret
	} // end of method BitOperations::get_Log2DeBruijn

	.method public hidebysig static 
		int32 LeadingZeroCount (
			uint32 'value'
		) cil managed aggressiveinlining 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x978fe
		// Code size 61 (0x3d)
		.maxstack 8

		IL_0000: call bool System.Runtime.Intrinsics.X86.Lzcnt::get_IsSupported()
		IL_0005: brfalse.s IL_000e

		IL_0007: ldarg.0
		IL_0008: call uint32 System.Runtime.Intrinsics.X86.Lzcnt::LeadingZeroCount(uint32)
		IL_000d: ret

		IL_000e: call bool System.Runtime.Intrinsics.Arm.ArmBase::get_IsSupported()
		IL_0013: brfalse.s IL_001c

		IL_0015: ldarg.0
		IL_0016: call int32 System.Runtime.Intrinsics.Arm.ArmBase::LeadingZeroCount(uint32)
		IL_001b: ret

		IL_001c: ldarg.0
		IL_001d: brtrue.s IL_0022

		IL_001f: ldc.i4.s 32
		IL_0021: ret

		IL_0022: call bool System.Runtime.Intrinsics.X86.X86Base::get_IsSupported()
		IL_0027: brfalse.s IL_0033

		IL_0029: ldc.i4.s 31
		IL_002b: ldarg.0
		IL_002c: call uint32 System.Runtime.Intrinsics.X86.X86Base::BitScanReverse(uint32)
		IL_0031: xor
		IL_0032: ret

		IL_0033: ldc.i4.s 31
		IL_0035: ldarg.0
		IL_0036: call int32 System.Numerics.BitOperations::Log2SoftwareFallback(uint32)
		IL_003b: xor
		IL_003c: ret
	} // end of method BitOperations::LeadingZeroCount

	.method public hidebysig static 
		int32 LeadingZeroCount (
			uint64 'value'
		) cil managed aggressiveinlining 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x9793c
		// Code size 80 (0x50)
		.maxstack 2
		.locals (
			[0] uint32
		)

		IL_0000: call bool System.Runtime.Intrinsics.X86.Lzcnt/X64::get_IsSupported()
		IL_0005: brfalse.s IL_000f

		IL_0007: ldarg.0
		IL_0008: call uint64 System.Runtime.Intrinsics.X86.Lzcnt/X64::LeadingZeroCount(uint64)
		IL_000d: conv.i4
		IL_000e: ret

		IL_000f: call bool System.Runtime.Intrinsics.Arm.ArmBase/Arm64::get_IsSupported()
		IL_0014: brfalse.s IL_001d

		IL_0016: ldarg.0
		IL_0017: call int32 System.Runtime.Intrinsics.Arm.ArmBase/Arm64::LeadingZeroCount(uint64)
		IL_001c: ret

		IL_001d: call bool System.Runtime.Intrinsics.X86.X86Base/X64::get_IsSupported()
		IL_0022: brfalse.s IL_0035

		IL_0024: ldarg.0
		IL_0025: brfalse.s IL_0032

		IL_0027: ldc.i4.s 63
		IL_0029: ldarg.0
		IL_002a: call uint64 System.Runtime.Intrinsics.X86.X86Base/X64::BitScanReverse(uint64)
		IL_002f: conv.i4
		IL_0030: xor
		IL_0031: ret

		IL_0032: ldc.i4.s 64
		IL_0034: ret

		IL_0035: ldarg.0
		IL_0036: ldc.i4.s 32
		IL_0038: shr.un
		IL_0039: conv.u4
		IL_003a: stloc.0
		IL_003b: ldloc.0
		IL_003c: brtrue.s IL_0049

		IL_003e: ldc.i4.s 32
		IL_0040: ldarg.0
		IL_0041: conv.u4
		IL_0042: call int32 System.Numerics.BitOperations::LeadingZeroCount(uint32)
		IL_0047: add
		IL_0048: ret

		IL_0049: ldloc.0
		IL_004a: call int32 System.Numerics.BitOperations::LeadingZeroCount(uint32)
		IL_004f: ret
	} // end of method BitOperations::LeadingZeroCount

	.method public hidebysig static 
		int32 Log2 (
			uint32 'value'
		) cil managed aggressiveinlining 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x97998
		// Code size 60 (0x3c)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.1
		IL_0002: or
		IL_0003: starg.s 'value'
		IL_0005: call bool System.Runtime.Intrinsics.X86.Lzcnt::get_IsSupported()
		IL_000a: brfalse.s IL_0016

		IL_000c: ldc.i4.s 31
		IL_000e: ldarg.0
		IL_000f: call uint32 System.Runtime.Intrinsics.X86.Lzcnt::LeadingZeroCount(uint32)
		IL_0014: xor
		IL_0015: ret

		IL_0016: call bool System.Runtime.Intrinsics.Arm.ArmBase::get_IsSupported()
		IL_001b: brfalse.s IL_0027

		IL_001d: ldc.i4.s 31
		IL_001f: ldarg.0
		IL_0020: call int32 System.Runtime.Intrinsics.Arm.ArmBase::LeadingZeroCount(uint32)
		IL_0025: xor
		IL_0026: ret

		IL_0027: call bool System.Runtime.Intrinsics.X86.X86Base::get_IsSupported()
		IL_002c: brfalse.s IL_0035

		IL_002e: ldarg.0
		IL_002f: call uint32 System.Runtime.Intrinsics.X86.X86Base::BitScanReverse(uint32)
		IL_0034: ret

		IL_0035: ldarg.0
		IL_0036: call int32 System.Numerics.BitOperations::Log2SoftwareFallback(uint32)
		IL_003b: ret
	} // end of method BitOperations::Log2

	.method public hidebysig static 
		int32 Log2 (
			uint64 'value'
		) cil managed aggressiveinlining 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x979d8
		// Code size 83 (0x53)
		.maxstack 2
		.locals (
			[0] uint32
		)

		IL_0000: ldarg.0
		IL_0001: ldc.i4.1
		IL_0002: conv.i8
		IL_0003: or
		IL_0004: starg.s 'value'
		IL_0006: call bool System.Runtime.Intrinsics.X86.Lzcnt/X64::get_IsSupported()
		IL_000b: brfalse.s IL_0018

		IL_000d: ldc.i4.s 63
		IL_000f: ldarg.0
		IL_0010: call uint64 System.Runtime.Intrinsics.X86.Lzcnt/X64::LeadingZeroCount(uint64)
		IL_0015: conv.i4
		IL_0016: xor
		IL_0017: ret

		IL_0018: call bool System.Runtime.Intrinsics.Arm.ArmBase/Arm64::get_IsSupported()
		IL_001d: brfalse.s IL_0029

		IL_001f: ldc.i4.s 63
		IL_0021: ldarg.0
		IL_0022: call int32 System.Runtime.Intrinsics.Arm.ArmBase/Arm64::LeadingZeroCount(uint64)
		IL_0027: xor
		IL_0028: ret

		IL_0029: call bool System.Runtime.Intrinsics.X86.X86Base/X64::get_IsSupported()
		IL_002e: brfalse.s IL_0038

		IL_0030: ldarg.0
		IL_0031: call uint64 System.Runtime.Intrinsics.X86.X86Base/X64::BitScanReverse(uint64)
		IL_0036: conv.i4
		IL_0037: ret

		IL_0038: ldarg.0
		IL_0039: ldc.i4.s 32
		IL_003b: shr.un
		IL_003c: conv.u4
		IL_003d: stloc.0
		IL_003e: ldloc.0
		IL_003f: brtrue.s IL_0049

		IL_0041: ldarg.0
		IL_0042: conv.u4
		IL_0043: call int32 System.Numerics.BitOperations::Log2(uint32)
		IL_0048: ret

		IL_0049: ldc.i4.s 32
		IL_004b: ldloc.0
		IL_004c: call int32 System.Numerics.BitOperations::Log2(uint32)
		IL_0051: add
		IL_0052: ret
	} // end of method BitOperations::Log2

	.method private hidebysig static 
		int32 Log2SoftwareFallback (
			uint32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x97a38
		// Code size 68 (0x44)
		.maxstack 3

		IL_0000: ldarg.0
		IL_0001: ldarg.0
		IL_0002: ldc.i4.1
		IL_0003: shr.un
		IL_0004: or
		IL_0005: starg.s 'value'
		IL_0007: ldarg.0
		IL_0008: ldarg.0
		IL_0009: ldc.i4.2
		IL_000a: shr.un
		IL_000b: or
		IL_000c: starg.s 'value'
		IL_000e: ldarg.0
		IL_000f: ldarg.0
		IL_0010: ldc.i4.4
		IL_0011: shr.un
		IL_0012: or
		IL_0013: starg.s 'value'
		IL_0015: ldarg.0
		IL_0016: ldarg.0
		IL_0017: ldc.i4.8
		IL_0018: shr.un
		IL_0019: or
		IL_001a: starg.s 'value'
		IL_001c: ldarg.0
		IL_001d: ldarg.0
		IL_001e: ldc.i4.s 16
		IL_0020: shr.un
		IL_0021: or
		IL_0022: starg.s 'value'
		IL_0024: call valuetype System.ReadOnlySpan`1<uint8> System.Numerics.BitOperations::get_Log2DeBruijn()
		IL_0029: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<uint8>(valuetype System.ReadOnlySpan`1<!!0>)
		IL_002e: ldarg.0
		IL_002f: ldc.i4 130329821
		IL_0034: mul
		IL_0035: ldc.i4.s 27
		IL_0037: shr.un
		IL_0038: call native int System.IntPtr::op_Explicit(int32)
		IL_003d: call !!0& Internal.Runtime.CompilerServices.Unsafe::AddByteOffset<uint8>(!!0&, native int)
		IL_0042: ldind.u1
		IL_0043: ret
	} // end of method BitOperations::Log2SoftwareFallback

	.method public hidebysig static 
		int32 PopCount (
			uint32 'value'
		) cil managed aggressiveinlining 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x97a88
		// Code size 59 (0x3b)
		.maxstack 1
		.locals (
			[0] valuetype System.Runtime.Intrinsics.Vector64`1<uint32>,
			[1] valuetype System.Runtime.Intrinsics.Vector64`1<uint8>
		)

		IL_0000: call bool System.Runtime.Intrinsics.X86.Popcnt::get_IsSupported()
		IL_0005: brfalse.s IL_000e

		IL_0007: ldarg.0
		IL_0008: call uint32 System.Runtime.Intrinsics.X86.Popcnt::PopCount(uint32)
		IL_000d: ret

		IL_000e: call bool System.Runtime.Intrinsics.Arm.AdvSimd/Arm64::get_IsSupported()
		IL_0013: brfalse.s IL_0034

		IL_0015: ldarg.0
		IL_0016: call valuetype System.Runtime.Intrinsics.Vector64`1<uint32> System.Runtime.Intrinsics.Vector64::CreateScalar(uint32)
		IL_001b: stloc.0
		IL_001c: ldloc.0
		IL_001d: call valuetype System.Runtime.Intrinsics.Vector64`1<uint8> System.Runtime.Intrinsics.Vector64::AsByte<uint32>(valuetype System.Runtime.Intrinsics.Vector64`1<!!0>)
		IL_0022: call valuetype System.Runtime.Intrinsics.Vector64`1<uint8> System.Runtime.Intrinsics.Arm.AdvSimd::PopCount(valuetype System.Runtime.Intrinsics.Vector64`1<uint8>)
		IL_0027: call valuetype System.Runtime.Intrinsics.Vector64`1<uint8> System.Runtime.Intrinsics.Arm.AdvSimd/Arm64::AddAcross(valuetype System.Runtime.Intrinsics.Vector64`1<uint8>)
		IL_002c: stloc.1
		IL_002d: ldloc.1
		IL_002e: call !!0 System.Runtime.Intrinsics.Vector64::ToScalar<uint8>(valuetype System.Runtime.Intrinsics.Vector64`1<!!0>)
		IL_0033: ret

		IL_0034: ldarg.0
		IL_0035: call int32 System.Numerics.BitOperations::'<PopCount>g__SoftwareFallback|9_0'(uint32)
		IL_003a: ret
	} // end of method BitOperations::PopCount

	.method public hidebysig static 
		int32 PopCount (
			uint64 'value'
		) cil managed aggressiveinlining 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x97ad0
		// Code size 72 (0x48)
		.maxstack 3
		.locals (
			[0] valuetype System.Runtime.Intrinsics.Vector64`1<uint64>,
			[1] valuetype System.Runtime.Intrinsics.Vector64`1<uint8>
		)

		IL_0000: call bool System.Runtime.Intrinsics.X86.Popcnt/X64::get_IsSupported()
		IL_0005: brfalse.s IL_000f

		IL_0007: ldarg.0
		IL_0008: call uint64 System.Runtime.Intrinsics.X86.Popcnt/X64::PopCount(uint64)
		IL_000d: conv.i4
		IL_000e: ret

		IL_000f: call bool System.Runtime.Intrinsics.Arm.AdvSimd/Arm64::get_IsSupported()
		IL_0014: brfalse.s IL_0035

		IL_0016: ldarg.0
		IL_0017: call valuetype System.Runtime.Intrinsics.Vector64`1<uint64> System.Runtime.Intrinsics.Vector64::Create(uint64)
		IL_001c: stloc.0
		IL_001d: ldloc.0
		IL_001e: call valuetype System.Runtime.Intrinsics.Vector64`1<uint8> System.Runtime.Intrinsics.Vector64::AsByte<uint64>(valuetype System.Runtime.Intrinsics.Vector64`1<!!0>)
		IL_0023: call valuetype System.Runtime.Intrinsics.Vector64`1<uint8> System.Runtime.Intrinsics.Arm.AdvSimd::PopCount(valuetype System.Runtime.Intrinsics.Vector64`1<uint8>)
		IL_0028: call valuetype System.Runtime.Intrinsics.Vector64`1<uint8> System.Runtime.Intrinsics.Arm.AdvSimd/Arm64::AddAcross(valuetype System.Runtime.Intrinsics.Vector64`1<uint8>)
		IL_002d: stloc.1
		IL_002e: ldloc.1
		IL_002f: call !!0 System.Runtime.Intrinsics.Vector64::ToScalar<uint8>(valuetype System.Runtime.Intrinsics.Vector64`1<!!0>)
		IL_0034: ret

		IL_0035: ldarg.0
		IL_0036: conv.u4
		IL_0037: call int32 System.Numerics.BitOperations::PopCount(uint32)
		IL_003c: ldarg.0
		IL_003d: ldc.i4.s 32
		IL_003f: shr.un
		IL_0040: conv.u4
		IL_0041: call int32 System.Numerics.BitOperations::PopCount(uint32)
		IL_0046: add
		IL_0047: ret
	} // end of method BitOperations::PopCount

	.method public hidebysig static 
		int32 TrailingZeroCount (
			int32 'value'
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x97b24
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call int32 System.Numerics.BitOperations::TrailingZeroCount(uint32)
		IL_0006: ret
	} // end of method BitOperations::TrailingZeroCount

	.method public hidebysig static 
		int32 TrailingZeroCount (
			uint32 'value'
		) cil managed aggressiveinlining 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x97b2c
		// Code size 88 (0x58)
		.maxstack 3

		IL_0000: call bool System.Runtime.Intrinsics.X86.Bmi1::get_IsSupported()
		IL_0005: brfalse.s IL_000e

		IL_0007: ldarg.0
		IL_0008: call uint32 System.Runtime.Intrinsics.X86.Bmi1::TrailingZeroCount(uint32)
		IL_000d: ret

		IL_000e: call bool System.Runtime.Intrinsics.Arm.ArmBase::get_IsSupported()
		IL_0013: brfalse.s IL_0021

		IL_0015: ldarg.0
		IL_0016: call uint32 System.Runtime.Intrinsics.Arm.ArmBase::ReverseElementBits(uint32)
		IL_001b: call int32 System.Runtime.Intrinsics.Arm.ArmBase::LeadingZeroCount(uint32)
		IL_0020: ret

		IL_0021: ldarg.0
		IL_0022: brtrue.s IL_0027

		IL_0024: ldc.i4.s 32
		IL_0026: ret

		IL_0027: call bool System.Runtime.Intrinsics.X86.X86Base::get_IsSupported()
		IL_002c: brfalse.s IL_0035

		IL_002e: ldarg.0
		IL_002f: call uint32 System.Runtime.Intrinsics.X86.X86Base::BitScanForward(uint32)
		IL_0034: ret

		IL_0035: call valuetype System.ReadOnlySpan`1<uint8> System.Numerics.BitOperations::get_TrailingZeroCountDeBruijn()
		IL_003a: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<uint8>(valuetype System.ReadOnlySpan`1<!!0>)
		IL_003f: ldarg.0
		IL_0040: ldarg.0
		IL_0041: neg
		IL_0042: and
		IL_0043: ldc.i4 125613361
		IL_0048: mul
		IL_0049: ldc.i4.s 27
		IL_004b: shr.un
		IL_004c: call native int System.IntPtr::op_Explicit(int32)
		IL_0051: call !!0& Internal.Runtime.CompilerServices.Unsafe::AddByteOffset<uint8>(!!0&, native int)
		IL_0056: ldind.u1
		IL_0057: ret
	} // end of method BitOperations::TrailingZeroCount

	.method public hidebysig static 
		int32 TrailingZeroCount (
			int64 'value'
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x97b90
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call int32 System.Numerics.BitOperations::TrailingZeroCount(uint64)
		IL_0006: ret
	} // end of method BitOperations::TrailingZeroCount

	.method public hidebysig static 
		int32 TrailingZeroCount (
			uint64 'value'
		) cil managed aggressiveinlining 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x97b98
		// Code size 82 (0x52)
		.maxstack 3
		.locals (
			[0] uint32
		)

		IL_0000: call bool System.Runtime.Intrinsics.X86.Bmi1/X64::get_IsSupported()
		IL_0005: brfalse.s IL_000f

		IL_0007: ldarg.0
		IL_0008: call uint64 System.Runtime.Intrinsics.X86.Bmi1/X64::TrailingZeroCount(uint64)
		IL_000d: conv.i4
		IL_000e: ret

		IL_000f: call bool System.Runtime.Intrinsics.Arm.ArmBase/Arm64::get_IsSupported()
		IL_0014: brfalse.s IL_0022

		IL_0016: ldarg.0
		IL_0017: call uint64 System.Runtime.Intrinsics.Arm.ArmBase/Arm64::ReverseElementBits(uint64)
		IL_001c: call int32 System.Runtime.Intrinsics.Arm.ArmBase/Arm64::LeadingZeroCount(uint64)
		IL_0021: ret

		IL_0022: call bool System.Runtime.Intrinsics.X86.X86Base/X64::get_IsSupported()
		IL_0027: brfalse.s IL_0037

		IL_0029: ldarg.0
		IL_002a: brfalse.s IL_0034

		IL_002c: ldarg.0
		IL_002d: call uint64 System.Runtime.Intrinsics.X86.X86Base/X64::BitScanForward(uint64)
		IL_0032: conv.i4
		IL_0033: ret

		IL_0034: ldc.i4.s 64
		IL_0036: ret

		IL_0037: ldarg.0
		IL_0038: conv.u4
		IL_0039: stloc.0
		IL_003a: ldloc.0
		IL_003b: brtrue.s IL_004b

		IL_003d: ldc.i4.s 32
		IL_003f: ldarg.0
		IL_0040: ldc.i4.s 32
		IL_0042: shr.un
		IL_0043: conv.u4
		IL_0044: call int32 System.Numerics.BitOperations::TrailingZeroCount(uint32)
		IL_0049: add
		IL_004a: ret

		IL_004b: ldloc.0
		IL_004c: call int32 System.Numerics.BitOperations::TrailingZeroCount(uint32)
		IL_0051: ret
	} // end of method BitOperations::TrailingZeroCount

	.method public hidebysig static 
		uint32 RotateLeft (
			uint32 'value',
			int32 offset
		) cil managed aggressiveinlining 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x97bf6
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.s 31
		IL_0004: and
		IL_0005: shl
		IL_0006: ldarg.0
		IL_0007: ldc.i4.s 32
		IL_0009: ldarg.1
		IL_000a: sub
		IL_000b: ldc.i4.s 31
		IL_000d: and
		IL_000e: shr.un
		IL_000f: or
		IL_0010: ret
	} // end of method BitOperations::RotateLeft

	.method public hidebysig static 
		uint64 RotateLeft (
			uint64 'value',
			int32 offset
		) cil managed aggressiveinlining 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x97c08
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.s 63
		IL_0004: and
		IL_0005: shl
		IL_0006: ldarg.0
		IL_0007: ldc.i4.s 64
		IL_0009: ldarg.1
		IL_000a: sub
		IL_000b: ldc.i4.s 63
		IL_000d: and
		IL_000e: shr.un
		IL_000f: or
		IL_0010: ret
	} // end of method BitOperations::RotateLeft

	.method public hidebysig static 
		uint32 RotateRight (
			uint32 'value',
			int32 offset
		) cil managed aggressiveinlining 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x97c1a
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.s 31
		IL_0004: and
		IL_0005: shr.un
		IL_0006: ldarg.0
		IL_0007: ldc.i4.s 32
		IL_0009: ldarg.1
		IL_000a: sub
		IL_000b: ldc.i4.s 31
		IL_000d: and
		IL_000e: shl
		IL_000f: or
		IL_0010: ret
	} // end of method BitOperations::RotateRight

	.method public hidebysig static 
		uint64 RotateRight (
			uint64 'value',
			int32 offset
		) cil managed aggressiveinlining 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x97c2c
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.s 63
		IL_0004: and
		IL_0005: shr.un
		IL_0006: ldarg.0
		IL_0007: ldc.i4.s 64
		IL_0009: ldarg.1
		IL_000a: sub
		IL_000b: ldc.i4.s 63
		IL_000d: and
		IL_000e: shl
		IL_000f: or
		IL_0010: ret
	} // end of method BitOperations::RotateRight

	.method assembly hidebysig static 
		int32 '<PopCount>g__SoftwareFallback|9_0' (
			uint32 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x97c3e
		// Code size 56 (0x38)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.0
		IL_0002: ldc.i4.1
		IL_0003: shr.un
		IL_0004: ldc.i4 1431655765
		IL_0009: and
		IL_000a: sub
		IL_000b: starg.s 'value'
		IL_000d: ldarg.0
		IL_000e: ldc.i4 858993459
		IL_0013: and
		IL_0014: ldarg.0
		IL_0015: ldc.i4.2
		IL_0016: shr.un
		IL_0017: ldc.i4 858993459
		IL_001c: and
		IL_001d: add
		IL_001e: starg.s 'value'
		IL_0020: ldarg.0
		IL_0021: ldarg.0
		IL_0022: ldc.i4.4
		IL_0023: shr.un
		IL_0024: add
		IL_0025: ldc.i4 252645135
		IL_002a: and
		IL_002b: ldc.i4 16843009
		IL_0030: mul
		IL_0031: ldc.i4.s 24
		IL_0033: shr.un
		IL_0034: starg.s 'value'
		IL_0036: ldarg.0
		IL_0037: ret
	} // end of method BitOperations::'<PopCount>g__SoftwareFallback|9_0'

	// Properties
	.property valuetype System.ReadOnlySpan`1<uint8> TrailingZeroCountDeBruijn()
	{
		.get valuetype System.ReadOnlySpan`1<uint8> System.Numerics.BitOperations::get_TrailingZeroCountDeBruijn()
	}
	.property valuetype System.ReadOnlySpan`1<uint8> Log2DeBruijn()
	{
		.get valuetype System.ReadOnlySpan`1<uint8> System.Numerics.BitOperations::get_Log2DeBruijn()
	}

} // end of class System.Numerics.BitOperations