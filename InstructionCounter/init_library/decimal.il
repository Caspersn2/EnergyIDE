.class public sequential ansi sealed serializable beforefieldinit System.Decimal
	extends System.ValueType
	implements System.IFormattable,
	           System.IComparable,
	           System.IConvertible,
	           class System.IComparable`1<valuetype System.Decimal>,
	           class System.IEquatable`1<valuetype System.Decimal>,
	           System.ISpanFormattable,
	           System.Runtime.Serialization.ISerializable,
	           System.Runtime.Serialization.IDeserializationCallback
{
	.custom instance void System.Runtime.Versioning.NonVersionableAttribute::.ctor() = (
		01 00 00 00
	)
	.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
		01 00 00 00
	)
	.custom instance void System.Runtime.CompilerServices.TypeForwardedFromAttribute::.ctor(string) = (
		01 00 4b 6d 73 63 6f 72 6c 69 62 2c 20 56 65 72
		73 69 6f 6e 3d 34 2e 30 2e 30 2e 30 2c 20 43 75
		6c 74 75 72 65 3d 6e 65 75 74 72 61 6c 2c 20 50
		75 62 6c 69 63 4b 65 79 54 6f 6b 65 6e 3d 62 37
		37 61 35 63 35 36 31 39 33 34 65 30 38 39 00 00
	)
	// Nested Types
	.class nested private explicit ansi sealed beforefieldinit DecCalc
		extends System.ValueType
	{
		// Nested Types
		.class nested private sequential ansi sealed beforefieldinit PowerOvfl
			extends System.ValueType
		{
			// Fields
			.field public initonly uint32 Hi
			.field public initonly uint64 MidLo

			// Methods
			.method public hidebysig specialname rtspecialname 
				instance void .ctor (
					uint32 hi,
					uint32 mid,
					uint32 lo
				) cil managed 
			{
				// Method begins at RVA 0x47cd6
				// Code size 22 (0x16)
				.maxstack 8

				IL_0000: ldarg.0
				IL_0001: ldarg.1
				IL_0002: stfld uint32 System.Decimal/DecCalc/PowerOvfl::Hi
				IL_0007: ldarg.0
				IL_0008: ldarg.2
				IL_0009: conv.u8
				IL_000a: ldc.i4.s 32
				IL_000c: shl
				IL_000d: ldarg.3
				IL_000e: conv.u8
				IL_000f: add
				IL_0010: stfld uint64 System.Decimal/DecCalc/PowerOvfl::MidLo
				IL_0015: ret
			} // end of method PowerOvfl::.ctor

		} // end of class PowerOvfl

		.class nested private explicit ansi sealed beforefieldinit Buf12
			extends System.ValueType
		{
			// Fields
			.field [0] public uint32 U0
			.field [4] public uint32 U1
			.field [8] public uint32 U2
			.field [0] private uint64 ulo64LE
			.field [4] private uint64 uhigh64LE

			// Methods
			.method public hidebysig specialname 
				instance uint64 get_Low64 () cil managed 
			{
				// Method begins at RVA 0x47ced
				// Code size 7 (0x7)
				.maxstack 8

				IL_0000: ldarg.0
				IL_0001: ldfld uint64 System.Decimal/DecCalc/Buf12::ulo64LE
				IL_0006: ret
			} // end of method Buf12::get_Low64

			.method public hidebysig specialname 
				instance void set_Low64 (
					uint64 'value'
				) cil managed 
			{
				// Method begins at RVA 0x47cf5
				// Code size 8 (0x8)
				.maxstack 8

				IL_0000: ldarg.0
				IL_0001: ldarg.1
				IL_0002: stfld uint64 System.Decimal/DecCalc/Buf12::ulo64LE
				IL_0007: ret
			} // end of method Buf12::set_Low64

			.method public hidebysig specialname 
				instance uint64 get_High64 () cil managed 
			{
				// Method begins at RVA 0x47cfe
				// Code size 7 (0x7)
				.maxstack 8

				IL_0000: ldarg.0
				IL_0001: ldfld uint64 System.Decimal/DecCalc/Buf12::uhigh64LE
				IL_0006: ret
			} // end of method Buf12::get_High64

			.method public hidebysig specialname 
				instance void set_High64 (
					uint64 'value'
				) cil managed 
			{
				// Method begins at RVA 0x47d06
				// Code size 8 (0x8)
				.maxstack 8

				IL_0000: ldarg.0
				IL_0001: ldarg.1
				IL_0002: stfld uint64 System.Decimal/DecCalc/Buf12::uhigh64LE
				IL_0007: ret
			} // end of method Buf12::set_High64

			// Properties
			.property instance uint64 Low64()
			{
				.get instance uint64 System.Decimal/DecCalc/Buf12::get_Low64()
				.set instance void System.Decimal/DecCalc/Buf12::set_Low64(uint64)
			}
			.property instance uint64 High64()
			{
				.get instance uint64 System.Decimal/DecCalc/Buf12::get_High64()
				.set instance void System.Decimal/DecCalc/Buf12::set_High64(uint64)
			}

		} // end of class Buf12

		.class nested private explicit ansi sealed beforefieldinit Buf16
			extends System.ValueType
		{
			// Fields
			.field [0] public uint32 U0
			.field [4] public uint32 U1
			.field [8] public uint32 U2
			.field [12] public uint32 U3
			.field [0] private uint64 ulo64LE
			.field [8] private uint64 uhigh64LE

			// Methods
			.method public hidebysig specialname 
				instance uint64 get_Low64 () cil managed 
			{
				// Method begins at RVA 0x47d0f
				// Code size 7 (0x7)
				.maxstack 8

				IL_0000: ldarg.0
				IL_0001: ldfld uint64 System.Decimal/DecCalc/Buf16::ulo64LE
				IL_0006: ret
			} // end of method Buf16::get_Low64

			.method public hidebysig specialname 
				instance void set_Low64 (
					uint64 'value'
				) cil managed 
			{
				// Method begins at RVA 0x47d17
				// Code size 8 (0x8)
				.maxstack 8

				IL_0000: ldarg.0
				IL_0001: ldarg.1
				IL_0002: stfld uint64 System.Decimal/DecCalc/Buf16::ulo64LE
				IL_0007: ret
			} // end of method Buf16::set_Low64

			.method public hidebysig specialname 
				instance uint64 get_High64 () cil managed 
			{
				// Method begins at RVA 0x47d20
				// Code size 7 (0x7)
				.maxstack 8

				IL_0000: ldarg.0
				IL_0001: ldfld uint64 System.Decimal/DecCalc/Buf16::uhigh64LE
				IL_0006: ret
			} // end of method Buf16::get_High64

			.method public hidebysig specialname 
				instance void set_High64 (
					uint64 'value'
				) cil managed 
			{
				// Method begins at RVA 0x47d28
				// Code size 8 (0x8)
				.maxstack 8

				IL_0000: ldarg.0
				IL_0001: ldarg.1
				IL_0002: stfld uint64 System.Decimal/DecCalc/Buf16::uhigh64LE
				IL_0007: ret
			} // end of method Buf16::set_High64

			// Properties
			.property instance uint64 Low64()
			{
				.get instance uint64 System.Decimal/DecCalc/Buf16::get_Low64()
				.set instance void System.Decimal/DecCalc/Buf16::set_Low64(uint64)
			}
			.property instance uint64 High64()
			{
				.get instance uint64 System.Decimal/DecCalc/Buf16::get_High64()
				.set instance void System.Decimal/DecCalc/Buf16::set_High64(uint64)
			}

		} // end of class Buf16

		.class nested private explicit ansi sealed beforefieldinit Buf24
			extends System.ValueType
		{
			// Fields
			.field [0] public uint32 U0
			.field [4] public uint32 U1
			.field [8] public uint32 U2
			.field [12] public uint32 U3
			.field [16] public uint32 U4
			.field [20] public uint32 U5
			.field [0] private uint64 ulo64LE
			.field [8] private uint64 umid64LE
			.field [16] private uint64 uhigh64LE

			// Methods
			.method public hidebysig specialname 
				instance uint64 get_Low64 () cil managed 
			{
				// Method begins at RVA 0x47d31
				// Code size 7 (0x7)
				.maxstack 8

				IL_0000: ldarg.0
				IL_0001: ldfld uint64 System.Decimal/DecCalc/Buf24::ulo64LE
				IL_0006: ret
			} // end of method Buf24::get_Low64

			.method public hidebysig specialname 
				instance void set_Low64 (
					uint64 'value'
				) cil managed 
			{
				// Method begins at RVA 0x47d39
				// Code size 8 (0x8)
				.maxstack 8

				IL_0000: ldarg.0
				IL_0001: ldarg.1
				IL_0002: stfld uint64 System.Decimal/DecCalc/Buf24::ulo64LE
				IL_0007: ret
			} // end of method Buf24::set_Low64

			.method public hidebysig specialname 
				instance void set_Mid64 (
					uint64 'value'
				) cil managed 
			{
				// Method begins at RVA 0x47d42
				// Code size 8 (0x8)
				.maxstack 8

				IL_0000: ldarg.0
				IL_0001: ldarg.1
				IL_0002: stfld uint64 System.Decimal/DecCalc/Buf24::umid64LE
				IL_0007: ret
			} // end of method Buf24::set_Mid64

			.method public hidebysig specialname 
				instance void set_High64 (
					uint64 'value'
				) cil managed 
			{
				// Method begins at RVA 0x47d4b
				// Code size 8 (0x8)
				.maxstack 8

				IL_0000: ldarg.0
				IL_0001: ldarg.1
				IL_0002: stfld uint64 System.Decimal/DecCalc/Buf24::uhigh64LE
				IL_0007: ret
			} // end of method Buf24::set_High64

			// Properties
			.property instance uint64 Low64()
			{
				.get instance uint64 System.Decimal/DecCalc/Buf24::get_Low64()
				.set instance void System.Decimal/DecCalc/Buf24::set_Low64(uint64)
			}
			.property instance uint64 Mid64()
			{
				.set instance void System.Decimal/DecCalc/Buf24::set_Mid64(uint64)
			}
			.property instance uint64 High64()
			{
				.set instance void System.Decimal/DecCalc/Buf24::set_High64(uint64)
			}

		} // end of class Buf24

		.class nested private sequential ansi sealed beforefieldinit Buf28
			extends System.ValueType
		{
			// Fields
			.field public valuetype System.Decimal/DecCalc/Buf24 Buf24
			.field public uint32 U6

		} // end of class Buf28


		// Fields
		.field [0] private uint32 uflags
		.field [4] private uint32 uhi
		.field [8] private uint32 ulo
		.field [12] private uint32 umid
		.field [8] private uint64 ulomid
		.field private static initonly uint32[] s_powers10
		.field private static initonly uint64[] s_ulongPowers10
		.field private static initonly float64[] s_doublePowers10
		.field private static initonly valuetype System.Decimal/DecCalc/PowerOvfl[] PowerOvflValues

		// Methods
		.method private hidebysig specialname 
			instance uint32 get_High () cil managed 
		{
			// Method begins at RVA 0x45668
			// Code size 7 (0x7)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld uint32 System.Decimal/DecCalc::uhi
			IL_0006: ret
		} // end of method DecCalc::get_High

		.method private hidebysig specialname 
			instance void set_High (
				uint32 'value'
			) cil managed 
		{
			// Method begins at RVA 0x45670
			// Code size 8 (0x8)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldarg.1
			IL_0002: stfld uint32 System.Decimal/DecCalc::uhi
			IL_0007: ret
		} // end of method DecCalc::set_High

		.method private hidebysig specialname 
			instance uint32 get_Low () cil managed 
		{
			// Method begins at RVA 0x45679
			// Code size 7 (0x7)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld uint32 System.Decimal/DecCalc::ulo
			IL_0006: ret
		} // end of method DecCalc::get_Low

		.method private hidebysig specialname 
			instance void set_Low (
				uint32 'value'
			) cil managed 
		{
			// Method begins at RVA 0x45681
			// Code size 8 (0x8)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldarg.1
			IL_0002: stfld uint32 System.Decimal/DecCalc::ulo
			IL_0007: ret
		} // end of method DecCalc::set_Low

		.method private hidebysig specialname 
			instance uint32 get_Mid () cil managed 
		{
			// Method begins at RVA 0x4568a
			// Code size 7 (0x7)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld uint32 System.Decimal/DecCalc::umid
			IL_0006: ret
		} // end of method DecCalc::get_Mid

		.method private hidebysig specialname 
			instance void set_Mid (
				uint32 'value'
			) cil managed 
		{
			// Method begins at RVA 0x45692
			// Code size 8 (0x8)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldarg.1
			IL_0002: stfld uint32 System.Decimal/DecCalc::umid
			IL_0007: ret
		} // end of method DecCalc::set_Mid

		.method private hidebysig specialname 
			instance bool get_IsNegative () cil managed 
		{
			// Method begins at RVA 0x4569b
			// Code size 10 (0xa)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_0006: ldc.i4.0
			IL_0007: clt
			IL_0009: ret
		} // end of method DecCalc::get_IsNegative

		.method private hidebysig specialname 
			instance int32 get_Scale () cil managed 
		{
			// Method begins at RVA 0x456a6
			// Code size 11 (0xb)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_0006: ldc.i4.s 16
			IL_0008: shr.un
			IL_0009: conv.u1
			IL_000a: ret
		} // end of method DecCalc::get_Scale

		.method private hidebysig specialname 
			instance uint64 get_Low64 () cil managed 
		{
			// Method begins at RVA 0x456b2
			// Code size 7 (0x7)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld uint64 System.Decimal/DecCalc::ulomid
			IL_0006: ret
		} // end of method DecCalc::get_Low64

		.method private hidebysig specialname 
			instance void set_Low64 (
				uint64 'value'
			) cil managed 
		{
			// Method begins at RVA 0x456ba
			// Code size 8 (0x8)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldarg.1
			IL_0002: stfld uint64 System.Decimal/DecCalc::ulomid
			IL_0007: ret
		} // end of method DecCalc::set_Low64

		.method private hidebysig static 
			uint32 GetExponent (
				float32 f
			) cil managed 
		{
			// Method begins at RVA 0x456c3
			// Code size 9 (0x9)
			.maxstack 8

			IL_0000: ldarga.s f
			IL_0002: conv.u
			IL_0003: ldind.u4
			IL_0004: ldc.i4.s 23
			IL_0006: shr.un
			IL_0007: conv.u1
			IL_0008: ret
		} // end of method DecCalc::GetExponent

		.method private hidebysig static 
			uint32 GetExponent (
				float64 d
			) cil managed 
		{
			// Method begins at RVA 0x456cd
			// Code size 15 (0xf)
			.maxstack 8

			IL_0000: ldarga.s d
			IL_0002: conv.u
			IL_0003: ldind.i8
			IL_0004: ldc.i4.s 52
			IL_0006: shr.un
			IL_0007: conv.u4
			IL_0008: ldc.i4 2047
			IL_000d: and
			IL_000e: ret
		} // end of method DecCalc::GetExponent

		.method private hidebysig static 
			uint64 UInt32x32To64 (
				uint32 a,
				uint32 b
			) cil managed 
		{
			// Method begins at RVA 0x456dd
			// Code size 6 (0x6)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: conv.u8
			IL_0002: ldarg.1
			IL_0003: conv.u8
			IL_0004: mul
			IL_0005: ret
		} // end of method DecCalc::UInt32x32To64

		.method private hidebysig static 
			void UInt64x64To128 (
				uint64 a,
				uint64 b,
				valuetype System.Decimal/DecCalc& result
			) cil managed 
		{
			// Method begins at RVA 0x456e4
			// Code size 130 (0x82)
			.maxstack 3
			.locals (
				[0] uint64,
				[1] uint64,
				[2] uint64
			)

			IL_0000: ldarg.0
			IL_0001: conv.u4
			IL_0002: ldarg.1
			IL_0003: conv.u4
			IL_0004: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_0009: stloc.0
			IL_000a: ldarg.0
			IL_000b: conv.u4
			IL_000c: ldarg.1
			IL_000d: ldc.i4.s 32
			IL_000f: shr.un
			IL_0010: conv.u4
			IL_0011: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_0016: stloc.1
			IL_0017: ldarg.0
			IL_0018: ldc.i4.s 32
			IL_001a: shr.un
			IL_001b: conv.u4
			IL_001c: ldarg.1
			IL_001d: ldc.i4.s 32
			IL_001f: shr.un
			IL_0020: conv.u4
			IL_0021: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_0026: stloc.2
			IL_0027: ldloc.2
			IL_0028: ldloc.1
			IL_0029: ldc.i4.s 32
			IL_002b: shr.un
			IL_002c: add
			IL_002d: stloc.2
			IL_002e: ldloc.0
			IL_002f: ldloc.1
			IL_0030: ldc.i4.s 32
			IL_0032: shl
			IL_0033: dup
			IL_0034: stloc.1
			IL_0035: add
			IL_0036: stloc.0
			IL_0037: ldloc.0
			IL_0038: ldloc.1
			IL_0039: bge.un.s IL_0040

			IL_003b: ldloc.2
			IL_003c: ldc.i4.1
			IL_003d: conv.i8
			IL_003e: add
			IL_003f: stloc.2

			IL_0040: ldarg.0
			IL_0041: ldc.i4.s 32
			IL_0043: shr.un
			IL_0044: conv.u4
			IL_0045: ldarg.1
			IL_0046: conv.u4
			IL_0047: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_004c: stloc.1
			IL_004d: ldloc.2
			IL_004e: ldloc.1
			IL_004f: ldc.i4.s 32
			IL_0051: shr.un
			IL_0052: add
			IL_0053: stloc.2
			IL_0054: ldloc.0
			IL_0055: ldloc.1
			IL_0056: ldc.i4.s 32
			IL_0058: shl
			IL_0059: dup
			IL_005a: stloc.1
			IL_005b: add
			IL_005c: stloc.0
			IL_005d: ldloc.0
			IL_005e: ldloc.1
			IL_005f: bge.un.s IL_0066

			IL_0061: ldloc.2
			IL_0062: ldc.i4.1
			IL_0063: conv.i8
			IL_0064: add
			IL_0065: stloc.2

			IL_0066: ldloc.2
			IL_0067: ldc.i4.m1
			IL_0068: conv.u8
			IL_0069: ble.un.s IL_0072

			IL_006b: ldc.i4.s 15
			IL_006d: call void System.Number::ThrowOverflowException(valuetype System.TypeCode)

			IL_0072: ldarg.2
			IL_0073: ldloc.0
			IL_0074: call instance void System.Decimal/DecCalc::set_Low64(uint64)
			IL_0079: ldarg.2
			IL_007a: ldloc.2
			IL_007b: conv.u4
			IL_007c: call instance void System.Decimal/DecCalc::set_High(uint32)
			IL_0081: ret
		} // end of method DecCalc::UInt64x64To128

		.method private hidebysig static 
			uint32 Div96By32 (
				valuetype System.Decimal/DecCalc/Buf12& bufNum,
				uint32 den
			) cil managed 
		{
			// Method begins at RVA 0x45774
			// Code size 103 (0x67)
			.maxstack 3
			.locals (
				[0] uint64,
				[1] uint64,
				[2] uint32
			)

			IL_0000: ldarg.0
			IL_0001: ldfld uint32 System.Decimal/DecCalc/Buf12::U2
			IL_0006: brfalse.s IL_0047

			IL_0008: ldarg.0
			IL_0009: call instance uint64 System.Decimal/DecCalc/Buf12::get_High64()
			IL_000e: stloc.0
			IL_000f: ldloc.0
			IL_0010: ldarg.1
			IL_0011: conv.u8
			IL_0012: div.un
			IL_0013: stloc.1
			IL_0014: ldarg.0
			IL_0015: ldloc.1
			IL_0016: call instance void System.Decimal/DecCalc/Buf12::set_High64(uint64)
			IL_001b: ldloc.0
			IL_001c: ldloc.1
			IL_001d: conv.u4
			IL_001e: ldarg.1
			IL_001f: mul
			IL_0020: conv.u8
			IL_0021: sub
			IL_0022: ldc.i4.s 32
			IL_0024: shl
			IL_0025: ldarg.0
			IL_0026: ldfld uint32 System.Decimal/DecCalc/Buf12::U0
			IL_002b: conv.u8
			IL_002c: or
			IL_002d: stloc.0
			IL_002e: ldloc.0
			IL_002f: brtrue.s IL_0033

			IL_0031: ldc.i4.0
			IL_0032: ret

			IL_0033: ldloc.0
			IL_0034: ldarg.1
			IL_0035: conv.u8
			IL_0036: div.un
			IL_0037: conv.u4
			IL_0038: stloc.2
			IL_0039: ldarg.0
			IL_003a: ldloc.2
			IL_003b: stfld uint32 System.Decimal/DecCalc/Buf12::U0
			IL_0040: ldloc.0
			IL_0041: conv.u4
			IL_0042: ldloc.2
			IL_0043: ldarg.1
			IL_0044: mul
			IL_0045: sub
			IL_0046: ret

			IL_0047: ldarg.0
			IL_0048: call instance uint64 System.Decimal/DecCalc/Buf12::get_Low64()
			IL_004d: stloc.0
			IL_004e: ldloc.0
			IL_004f: brtrue.s IL_0053

			IL_0051: ldc.i4.0
			IL_0052: ret

			IL_0053: ldloc.0
			IL_0054: ldarg.1
			IL_0055: conv.u8
			IL_0056: div.un
			IL_0057: stloc.1
			IL_0058: ldarg.0
			IL_0059: ldloc.1
			IL_005a: call instance void System.Decimal/DecCalc/Buf12::set_Low64(uint64)
			IL_005f: ldloc.0
			IL_0060: ldloc.1
			IL_0061: ldarg.1
			IL_0062: conv.u8
			IL_0063: mul
			IL_0064: sub
			IL_0065: conv.u4
			IL_0066: ret
		} // end of method DecCalc::Div96By32

		.method private hidebysig static 
			bool Div96ByConst (
				uint64& high64,
				uint32& low,
				uint32 pow
			) cil managed aggressiveinlining 
		{
			// Method begins at RVA 0x457e8
			// Code size 207 (0xcf)
			.maxstack 3
			.locals (
				[0] uint32,
				[1] uint32,
				[2] uint32,
				[3] uint32,
				[4] uint32
			)

			IL_0000: ldarg.0
			IL_0001: ldind.i8
			IL_0002: ldc.i4.m1
			IL_0003: conv.u8
			IL_0004: bgt.un.s IL_004d

			IL_0006: ldarg.0
			IL_0007: ldind.i8
			IL_0008: conv.u4
			IL_0009: stloc.0
			IL_000a: ldloc.0
			IL_000b: ldarg.2
			IL_000c: div.un
			IL_000d: stloc.1
			IL_000e: ldloc.0
			IL_000f: ldloc.1
			IL_0010: ldarg.2
			IL_0011: mul
			IL_0012: sub
			IL_0013: ldc.i4.s 16
			IL_0015: shl
			IL_0016: stloc.0
			IL_0017: ldloc.0
			IL_0018: ldarg.1
			IL_0019: ldind.u4
			IL_001a: ldc.i4.s 16
			IL_001c: shr.un
			IL_001d: add
			IL_001e: stloc.0
			IL_001f: ldloc.0
			IL_0020: ldarg.2
			IL_0021: div.un
			IL_0022: stloc.2
			IL_0023: ldloc.0
			IL_0024: ldloc.2
			IL_0025: ldarg.2
			IL_0026: mul
			IL_0027: sub
			IL_0028: ldc.i4.s 16
			IL_002a: shl
			IL_002b: stloc.0
			IL_002c: ldloc.0
			IL_002d: ldarg.1
			IL_002e: ldind.u4
			IL_002f: conv.u2
			IL_0030: add
			IL_0031: stloc.0
			IL_0032: ldloc.0
			IL_0033: ldarg.2
			IL_0034: div.un
			IL_0035: stloc.3
			IL_0036: ldloc.0
			IL_0037: ldloc.3
			IL_0038: ldarg.2
			IL_0039: mul
			IL_003a: bne.un IL_00cd

			IL_003f: ldarg.0
			IL_0040: ldloc.1
			IL_0041: conv.u8
			IL_0042: stind.i8
			IL_0043: ldarg.1
			IL_0044: ldloc.2
			IL_0045: ldc.i4.s 16
			IL_0047: shl
			IL_0048: ldloc.3
			IL_0049: add
			IL_004a: stind.i4
			IL_004b: ldc.i4.1
			IL_004c: ret

			IL_004d: ldarg.0
			IL_004e: ldind.i8
			IL_004f: ldc.i4.s 32
			IL_0051: shr.un
			IL_0052: conv.u4
			IL_0053: stloc.0
			IL_0054: ldloc.0
			IL_0055: ldarg.2
			IL_0056: div.un
			IL_0057: stloc.s 4
			IL_0059: ldloc.0
			IL_005a: ldloc.s 4
			IL_005c: ldarg.2
			IL_005d: mul
			IL_005e: sub
			IL_005f: ldc.i4.s 16
			IL_0061: shl
			IL_0062: stloc.0
			IL_0063: ldloc.0
			IL_0064: ldarg.0
			IL_0065: ldind.i8
			IL_0066: conv.u4
			IL_0067: ldc.i4.s 16
			IL_0069: shr.un
			IL_006a: add
			IL_006b: stloc.0
			IL_006c: ldloc.0
			IL_006d: ldarg.2
			IL_006e: div.un
			IL_006f: stloc.1
			IL_0070: ldloc.0
			IL_0071: ldloc.1
			IL_0072: ldarg.2
			IL_0073: mul
			IL_0074: sub
			IL_0075: ldc.i4.s 16
			IL_0077: shl
			IL_0078: stloc.0
			IL_0079: ldloc.0
			IL_007a: ldarg.0
			IL_007b: ldind.i8
			IL_007c: conv.u2
			IL_007d: add
			IL_007e: stloc.0
			IL_007f: ldloc.0
			IL_0080: ldarg.2
			IL_0081: div.un
			IL_0082: stloc.3
			IL_0083: ldloc.0
			IL_0084: ldloc.3
			IL_0085: ldarg.2
			IL_0086: mul
			IL_0087: sub
			IL_0088: ldc.i4.s 16
			IL_008a: shl
			IL_008b: stloc.0
			IL_008c: ldloc.3
			IL_008d: ldloc.1
			IL_008e: ldc.i4.s 16
			IL_0090: shl
			IL_0091: add
			IL_0092: stloc.1
			IL_0093: ldloc.0
			IL_0094: ldarg.1
			IL_0095: ldind.u4
			IL_0096: ldc.i4.s 16
			IL_0098: shr.un
			IL_0099: add
			IL_009a: stloc.0
			IL_009b: ldloc.0
			IL_009c: ldarg.2
			IL_009d: div.un
			IL_009e: stloc.2
			IL_009f: ldloc.0
			IL_00a0: ldloc.2
			IL_00a1: ldarg.2
			IL_00a2: mul
			IL_00a3: sub
			IL_00a4: ldc.i4.s 16
			IL_00a6: shl
			IL_00a7: stloc.0
			IL_00a8: ldloc.0
			IL_00a9: ldarg.1
			IL_00aa: ldind.u4
			IL_00ab: conv.u2
			IL_00ac: add
			IL_00ad: stloc.0
			IL_00ae: ldloc.0
			IL_00af: ldarg.2
			IL_00b0: div.un
			IL_00b1: stloc.3
			IL_00b2: ldloc.0
			IL_00b3: ldloc.3
			IL_00b4: ldarg.2
			IL_00b5: mul
			IL_00b6: bne.un.s IL_00cd

			IL_00b8: ldarg.0
			IL_00b9: ldloc.s 4
			IL_00bb: conv.u8
			IL_00bc: ldc.i4.s 32
			IL_00be: shl
			IL_00bf: ldloc.1
			IL_00c0: conv.u8
			IL_00c1: or
			IL_00c2: stind.i8
			IL_00c3: ldarg.1
			IL_00c4: ldloc.2
			IL_00c5: ldc.i4.s 16
			IL_00c7: shl
			IL_00c8: ldloc.3
			IL_00c9: add
			IL_00ca: stind.i4
			IL_00cb: ldc.i4.1
			IL_00cc: ret

			IL_00cd: ldc.i4.0
			IL_00ce: ret
		} // end of method DecCalc::Div96ByConst

		.method private hidebysig static 
			void Unscale (
				uint32& low,
				uint64& high64,
				int32& scale
			) cil managed aggressiveinlining 
		{
			// Method begins at RVA 0x458c4
			// Code size 91 (0x5b)
			.maxstack 3

			IL_0000: br.s IL_0008
			// loop start (head: IL_0008)
				IL_0002: ldarg.2
				IL_0003: ldarg.2
				IL_0004: ldind.i4
				IL_0005: ldc.i4.4
				IL_0006: sub
				IL_0007: stind.i4

				IL_0008: ldarg.0
				IL_0009: ldind.u4
				IL_000a: ldc.i4.s 15
				IL_000c: and
				IL_000d: brtrue.s IL_0022

				IL_000f: ldarg.2
				IL_0010: ldind.i4
				IL_0011: ldc.i4.4
				IL_0012: blt.s IL_0022

				IL_0014: ldarg.1
				IL_0015: ldarg.0
				IL_0016: ldc.i4 10000
				IL_001b: call bool System.Decimal/DecCalc::Div96ByConst(uint64&, uint32&, uint32)
				IL_0020: brtrue.s IL_0002
			// end loop

			IL_0022: ldarg.0
			IL_0023: ldind.u4
			IL_0024: ldc.i4.3
			IL_0025: and
			IL_0026: brtrue.s IL_003e

			IL_0028: ldarg.2
			IL_0029: ldind.i4
			IL_002a: ldc.i4.2
			IL_002b: blt.s IL_003e

			IL_002d: ldarg.1
			IL_002e: ldarg.0
			IL_002f: ldc.i4.s 100
			IL_0031: call bool System.Decimal/DecCalc::Div96ByConst(uint64&, uint32&, uint32)
			IL_0036: brfalse.s IL_003e

			IL_0038: ldarg.2
			IL_0039: ldarg.2
			IL_003a: ldind.i4
			IL_003b: ldc.i4.2
			IL_003c: sub
			IL_003d: stind.i4

			IL_003e: ldarg.0
			IL_003f: ldind.u4
			IL_0040: ldc.i4.1
			IL_0041: and
			IL_0042: brtrue.s IL_005a

			IL_0044: ldarg.2
			IL_0045: ldind.i4
			IL_0046: ldc.i4.1
			IL_0047: blt.s IL_005a

			IL_0049: ldarg.1
			IL_004a: ldarg.0
			IL_004b: ldc.i4.s 10
			IL_004d: call bool System.Decimal/DecCalc::Div96ByConst(uint64&, uint32&, uint32)
			IL_0052: brfalse.s IL_005a

			IL_0054: ldarg.2
			IL_0055: ldarg.2
			IL_0056: ldind.i4
			IL_0057: ldc.i4.1
			IL_0058: sub
			IL_0059: stind.i4

			IL_005a: ret
		} // end of method DecCalc::Unscale

		.method private hidebysig static 
			uint32 Div96By64 (
				valuetype System.Decimal/DecCalc/Buf12& bufNum,
				uint64 den
			) cil managed 
		{
			// Method begins at RVA 0x4592c
			// Code size 175 (0xaf)
			.maxstack 4
			.locals (
				[0] uint32,
				[1] uint64,
				[2] uint32,
				[3] uint32,
				[4] uint64,
				[5] uint64
			)

			IL_0000: ldarg.0
			IL_0001: ldfld uint32 System.Decimal/DecCalc/Buf12::U2
			IL_0006: stloc.2
			IL_0007: ldloc.2
			IL_0008: brtrue.s IL_002c

			IL_000a: ldarg.0
			IL_000b: call instance uint64 System.Decimal/DecCalc/Buf12::get_Low64()
			IL_0010: stloc.1
			IL_0011: ldloc.1
			IL_0012: ldarg.1
			IL_0013: bge.un.s IL_0017

			IL_0015: ldc.i4.0
			IL_0016: ret

			IL_0017: ldloc.1
			IL_0018: ldarg.1
			IL_0019: div.un
			IL_001a: conv.u4
			IL_001b: stloc.0
			IL_001c: ldloc.1
			IL_001d: ldloc.0
			IL_001e: conv.u8
			IL_001f: ldarg.1
			IL_0020: mul
			IL_0021: sub
			IL_0022: stloc.1
			IL_0023: ldarg.0
			IL_0024: ldloc.1
			IL_0025: call instance void System.Decimal/DecCalc/Buf12::set_Low64(uint64)
			IL_002a: ldloc.0
			IL_002b: ret

			IL_002c: ldarg.1
			IL_002d: ldc.i4.s 32
			IL_002f: shr.un
			IL_0030: conv.u4
			IL_0031: stloc.3
			IL_0032: ldloc.2
			IL_0033: ldloc.3
			IL_0034: blt.un.s IL_005b

			IL_0036: ldarg.0
			IL_0037: call instance uint64 System.Decimal/DecCalc/Buf12::get_Low64()
			IL_003c: stloc.1
			IL_003d: ldloc.1
			IL_003e: ldarg.1
			IL_003f: ldc.i4.s 32
			IL_0041: shl
			IL_0042: sub
			IL_0043: stloc.1
			IL_0044: ldc.i4.0
			IL_0045: stloc.0
			// loop start (head: IL_0046)
				IL_0046: ldloc.0
				IL_0047: ldc.i4.1
				IL_0048: sub
				IL_0049: stloc.0
				IL_004a: ldloc.1
				IL_004b: ldarg.1
				IL_004c: add
				IL_004d: stloc.1
				IL_004e: ldloc.1
				IL_004f: ldarg.1
				IL_0050: bge.un.s IL_0046
			// end loop
			IL_0052: ldarg.0
			IL_0053: ldloc.1
			IL_0054: call instance void System.Decimal/DecCalc/Buf12::set_Low64(uint64)
			IL_0059: ldloc.0
			IL_005a: ret

			IL_005b: ldarg.0
			IL_005c: call instance uint64 System.Decimal/DecCalc/Buf12::get_High64()
			IL_0061: stloc.s 4
			IL_0063: ldloc.s 4
			IL_0065: ldloc.3
			IL_0066: conv.u8
			IL_0067: bge.un.s IL_006b

			IL_0069: ldc.i4.0
			IL_006a: ret

			IL_006b: ldloc.s 4
			IL_006d: ldloc.3
			IL_006e: conv.u8
			IL_006f: div.un
			IL_0070: conv.u4
			IL_0071: stloc.0
			IL_0072: ldarg.0
			IL_0073: ldfld uint32 System.Decimal/DecCalc/Buf12::U0
			IL_0078: conv.u8
			IL_0079: ldloc.s 4
			IL_007b: ldloc.0
			IL_007c: ldloc.3
			IL_007d: mul
			IL_007e: conv.u8
			IL_007f: sub
			IL_0080: ldc.i4.s 32
			IL_0082: shl
			IL_0083: or
			IL_0084: stloc.1
			IL_0085: ldloc.0
			IL_0086: ldarg.1
			IL_0087: conv.u4
			IL_0088: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_008d: stloc.s 5
			IL_008f: ldloc.1
			IL_0090: ldloc.s 5
			IL_0092: sub
			IL_0093: stloc.1
			IL_0094: ldloc.1
			IL_0095: ldloc.s 5
			IL_0097: not
			IL_0098: ble.un.s IL_00a6
			// loop start (head: IL_009a)
				IL_009a: ldloc.0
				IL_009b: ldc.i4.1
				IL_009c: sub
				IL_009d: stloc.0
				IL_009e: ldloc.1
				IL_009f: ldarg.1
				IL_00a0: add
				IL_00a1: stloc.1
				IL_00a2: ldloc.1
				IL_00a3: ldarg.1
				IL_00a4: bge.un.s IL_009a
			// end loop

			IL_00a6: ldarg.0
			IL_00a7: ldloc.1
			IL_00a8: call instance void System.Decimal/DecCalc/Buf12::set_Low64(uint64)
			IL_00ad: ldloc.0
			IL_00ae: ret
		} // end of method DecCalc::Div96By64

		.method private hidebysig static 
			uint32 Div128By96 (
				valuetype System.Decimal/DecCalc/Buf16& bufNum,
				valuetype System.Decimal/DecCalc/Buf12& bufDen
			) cil managed 
		{
			// Method begins at RVA 0x459e8
			// Code size 197 (0xc5)
			.maxstack 3
			.locals (
				[0] uint64,
				[1] uint32,
				[2] uint32,
				[3] uint32,
				[4] uint64,
				[5] uint64,
				[6] uint64
			)

			IL_0000: ldarg.0
			IL_0001: call instance uint64 System.Decimal/DecCalc/Buf16::get_High64()
			IL_0006: stloc.0
			IL_0007: ldarg.1
			IL_0008: ldfld uint32 System.Decimal/DecCalc/Buf12::U2
			IL_000d: stloc.1
			IL_000e: ldloc.0
			IL_000f: ldloc.1
			IL_0010: conv.u8
			IL_0011: bge.un.s IL_0015

			IL_0013: ldc.i4.0
			IL_0014: ret

			IL_0015: ldloc.0
			IL_0016: ldloc.1
			IL_0017: conv.u8
			IL_0018: div.un
			IL_0019: conv.u4
			IL_001a: stloc.2
			IL_001b: ldloc.0
			IL_001c: conv.u4
			IL_001d: ldloc.2
			IL_001e: ldloc.1
			IL_001f: mul
			IL_0020: sub
			IL_0021: stloc.3
			IL_0022: ldloc.2
			IL_0023: ldarg.1
			IL_0024: ldfld uint32 System.Decimal/DecCalc/Buf12::U0
			IL_0029: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_002e: stloc.s 4
			IL_0030: ldloc.2
			IL_0031: ldarg.1
			IL_0032: ldfld uint32 System.Decimal/DecCalc/Buf12::U1
			IL_0037: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_003c: stloc.s 5
			IL_003e: ldloc.s 5
			IL_0040: ldloc.s 4
			IL_0042: ldc.i4.s 32
			IL_0044: shr.un
			IL_0045: add
			IL_0046: stloc.s 5
			IL_0048: ldloc.s 4
			IL_004a: conv.u4
			IL_004b: conv.u8
			IL_004c: ldloc.s 5
			IL_004e: ldc.i4.s 32
			IL_0050: shl
			IL_0051: or
			IL_0052: stloc.s 4
			IL_0054: ldloc.s 5
			IL_0056: ldc.i4.s 32
			IL_0058: shr.un
			IL_0059: stloc.s 5
			IL_005b: ldarg.0
			IL_005c: call instance uint64 System.Decimal/DecCalc/Buf16::get_Low64()
			IL_0061: stloc.s 6
			IL_0063: ldloc.s 6
			IL_0065: ldloc.s 4
			IL_0067: sub
			IL_0068: stloc.s 6
			IL_006a: ldloc.3
			IL_006b: ldloc.s 5
			IL_006d: conv.u4
			IL_006e: sub
			IL_006f: stloc.3
			IL_0070: ldloc.s 6
			IL_0072: ldloc.s 4
			IL_0074: not
			IL_0075: ble.un.s IL_0084

			IL_0077: ldloc.3
			IL_0078: ldc.i4.1
			IL_0079: sub
			IL_007a: stloc.3
			IL_007b: ldloc.3
			IL_007c: ldloc.s 5
			IL_007e: conv.u4
			IL_007f: not
			IL_0080: bge.un.s IL_008b

			IL_0082: br.s IL_00b4

			IL_0084: ldloc.3
			IL_0085: ldloc.s 5
			IL_0087: conv.u4
			IL_0088: not
			IL_0089: ble.un.s IL_00b4

			IL_008b: ldarg.1
			IL_008c: call instance uint64 System.Decimal/DecCalc/Buf12::get_Low64()
			IL_0091: stloc.s 4
			// loop start (head: IL_0093)
				IL_0093: ldloc.2
				IL_0094: ldc.i4.1
				IL_0095: sub
				IL_0096: stloc.2
				IL_0097: ldloc.s 6
				IL_0099: ldloc.s 4
				IL_009b: add
				IL_009c: stloc.s 6
				IL_009e: ldloc.3
				IL_009f: ldloc.1
				IL_00a0: add
				IL_00a1: stloc.3
				IL_00a2: ldloc.s 6
				IL_00a4: ldloc.s 4
				IL_00a6: bge.un.s IL_00b0

				IL_00a8: ldloc.3
				IL_00a9: dup
				IL_00aa: ldc.i4.1
				IL_00ab: add
				IL_00ac: stloc.3
				IL_00ad: ldloc.1
				IL_00ae: blt.un.s IL_00b4

				IL_00b0: ldloc.3
				IL_00b1: ldloc.1
				IL_00b2: bge.un.s IL_0093
			// end loop

			IL_00b4: ldarg.0
			IL_00b5: ldloc.s 6
			IL_00b7: call instance void System.Decimal/DecCalc/Buf16::set_Low64(uint64)
			IL_00bc: ldarg.0
			IL_00bd: ldloc.3
			IL_00be: stfld uint32 System.Decimal/DecCalc/Buf16::U2
			IL_00c3: ldloc.2
			IL_00c4: ret
		} // end of method DecCalc::Div128By96

		.method private hidebysig static 
			uint32 IncreaseScale (
				valuetype System.Decimal/DecCalc/Buf12& bufNum,
				uint32 power
			) cil managed 
		{
			// Method begins at RVA 0x45abc
			// Code size 83 (0x53)
			.maxstack 3
			.locals (
				[0] uint64
			)

			IL_0000: ldarg.0
			IL_0001: ldfld uint32 System.Decimal/DecCalc/Buf12::U0
			IL_0006: ldarg.1
			IL_0007: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_000c: stloc.0
			IL_000d: ldarg.0
			IL_000e: ldloc.0
			IL_000f: conv.u4
			IL_0010: stfld uint32 System.Decimal/DecCalc/Buf12::U0
			IL_0015: ldloc.0
			IL_0016: ldc.i4.s 32
			IL_0018: shr.un
			IL_0019: stloc.0
			IL_001a: ldloc.0
			IL_001b: ldarg.0
			IL_001c: ldfld uint32 System.Decimal/DecCalc/Buf12::U1
			IL_0021: ldarg.1
			IL_0022: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_0027: add
			IL_0028: stloc.0
			IL_0029: ldarg.0
			IL_002a: ldloc.0
			IL_002b: conv.u4
			IL_002c: stfld uint32 System.Decimal/DecCalc/Buf12::U1
			IL_0031: ldloc.0
			IL_0032: ldc.i4.s 32
			IL_0034: shr.un
			IL_0035: stloc.0
			IL_0036: ldloc.0
			IL_0037: ldarg.0
			IL_0038: ldfld uint32 System.Decimal/DecCalc/Buf12::U2
			IL_003d: ldarg.1
			IL_003e: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_0043: add
			IL_0044: stloc.0
			IL_0045: ldarg.0
			IL_0046: ldloc.0
			IL_0047: conv.u4
			IL_0048: stfld uint32 System.Decimal/DecCalc/Buf12::U2
			IL_004d: ldloc.0
			IL_004e: ldc.i4.s 32
			IL_0050: shr.un
			IL_0051: conv.u4
			IL_0052: ret
		} // end of method DecCalc::IncreaseScale

		.method private hidebysig static 
			void IncreaseScale64 (
				valuetype System.Decimal/DecCalc/Buf12& bufNum,
				uint32 power
			) cil managed 
		{
			// Method begins at RVA 0x45b1c
			// Code size 49 (0x31)
			.maxstack 3
			.locals (
				[0] uint64
			)

			IL_0000: ldarg.0
			IL_0001: ldfld uint32 System.Decimal/DecCalc/Buf12::U0
			IL_0006: ldarg.1
			IL_0007: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_000c: stloc.0
			IL_000d: ldarg.0
			IL_000e: ldloc.0
			IL_000f: conv.u4
			IL_0010: stfld uint32 System.Decimal/DecCalc/Buf12::U0
			IL_0015: ldloc.0
			IL_0016: ldc.i4.s 32
			IL_0018: shr.un
			IL_0019: stloc.0
			IL_001a: ldloc.0
			IL_001b: ldarg.0
			IL_001c: ldfld uint32 System.Decimal/DecCalc/Buf12::U1
			IL_0021: ldarg.1
			IL_0022: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_0027: add
			IL_0028: stloc.0
			IL_0029: ldarg.0
			IL_002a: ldloc.0
			IL_002b: call instance void System.Decimal/DecCalc/Buf12::set_High64(uint64)
			IL_0030: ret
		} // end of method DecCalc::IncreaseScale64

		.method private hidebysig static 
			int32 ScaleResult (
				valuetype System.Decimal/DecCalc/Buf24* bufRes,
				uint32 hiRes,
				int32 scale
			) cil managed 
		{
			// Method begins at RVA 0x45b5c
			// Code size 343 (0x157)
			.maxstack 5
			.locals (
				[0] uint32*,
				[1] int32,
				[2] uint32,
				[3] uint32,
				[4] uint32,
				[5] uint32,
				[6] uint32,
				[7] uint32
			)

			IL_0000: ldarg.0
			IL_0001: stloc.0
			IL_0002: ldc.i4.0
			IL_0003: stloc.1
			IL_0004: ldarg.1
			IL_0005: ldc.i4.2
			IL_0006: ble.un.s IL_0033

			IL_0008: ldarg.1
			IL_0009: ldc.i4.s 32
			IL_000b: mul
			IL_000c: ldc.i4.s 64
			IL_000e: sub
			IL_000f: ldc.i4.1
			IL_0010: sub
			IL_0011: stloc.1
			IL_0012: ldloc.1
			IL_0013: ldloc.0
			IL_0014: ldarg.1
			IL_0015: conv.u8
			IL_0016: ldc.i4.4
			IL_0017: conv.i8
			IL_0018: mul
			IL_0019: conv.i
			IL_001a: add
			IL_001b: ldind.u4
			IL_001c: call int32 System.Numerics.BitOperations::LeadingZeroCount(uint32)
			IL_0021: sub
			IL_0022: stloc.1
			IL_0023: ldloc.1
			IL_0024: ldc.i4.s 77
			IL_0026: mul
			IL_0027: ldc.i4.8
			IL_0028: shr
			IL_0029: ldc.i4.1
			IL_002a: add
			IL_002b: stloc.1
			IL_002c: ldloc.1
			IL_002d: ldarg.2
			IL_002e: bgt IL_014e

			IL_0033: ldloc.1
			IL_0034: ldarg.2
			IL_0035: ldc.i4.s 28
			IL_0037: sub
			IL_0038: bge.s IL_003f

			IL_003a: ldarg.2
			IL_003b: ldc.i4.s 28
			IL_003d: sub
			IL_003e: stloc.1

			IL_003f: ldloc.1
			IL_0040: brfalse IL_014c

			IL_0045: ldarg.2
			IL_0046: ldloc.1
			IL_0047: sub
			IL_0048: starg.s scale
			IL_004a: ldc.i4.0
			IL_004b: stloc.2
			IL_004c: ldc.i4.0
			IL_004d: stloc.s 4
			// loop start (head: IL_004f)
				IL_004f: ldloc.2
				IL_0050: ldloc.s 4
				IL_0052: or
				IL_0053: stloc.2
				IL_0054: ldloc.1
				IL_0055: ldc.i4.1
				IL_0056: sub
				IL_0057: switch (IL_006e, IL_007f, IL_0090, IL_00a4)

				IL_006c: br.s IL_00a4

				IL_006e: ldloc.0
				IL_006f: ldarg.1
				IL_0070: ldloca.s 3
				IL_0072: ldloca.s 4
				IL_0074: ldc.i4.s 10
				IL_0076: call uint32 System.Decimal/DecCalc::DivByConst(uint32*, uint32, uint32&, uint32&, uint32)
				IL_007b: stloc.s 5
				IL_007d: br.s IL_00b6

				IL_007f: ldloc.0
				IL_0080: ldarg.1
				IL_0081: ldloca.s 3
				IL_0083: ldloca.s 4
				IL_0085: ldc.i4.s 100
				IL_0087: call uint32 System.Decimal/DecCalc::DivByConst(uint32*, uint32, uint32&, uint32&, uint32)
				IL_008c: stloc.s 5
				IL_008e: br.s IL_00b6

				IL_0090: ldloc.0
				IL_0091: ldarg.1
				IL_0092: ldloca.s 3
				IL_0094: ldloca.s 4
				IL_0096: ldc.i4 1000
				IL_009b: call uint32 System.Decimal/DecCalc::DivByConst(uint32*, uint32, uint32&, uint32&, uint32)
				IL_00a0: stloc.s 5
				IL_00a2: br.s IL_00b6

				IL_00a4: ldloc.0
				IL_00a5: ldarg.1
				IL_00a6: ldloca.s 3
				IL_00a8: ldloca.s 4
				IL_00aa: ldc.i4 10000
				IL_00af: call uint32 System.Decimal/DecCalc::DivByConst(uint32*, uint32, uint32&, uint32&, uint32)
				IL_00b4: stloc.s 5

				IL_00b6: ldloc.0
				IL_00b7: ldarg.1
				IL_00b8: conv.u8
				IL_00b9: ldc.i4.4
				IL_00ba: conv.i8
				IL_00bb: mul
				IL_00bc: conv.i
				IL_00bd: add
				IL_00be: ldloc.3
				IL_00bf: stind.i4
				IL_00c0: ldloc.3
				IL_00c1: brtrue.s IL_00cb

				IL_00c3: ldarg.1
				IL_00c4: brfalse.s IL_00cb

				IL_00c6: ldarg.1
				IL_00c7: ldc.i4.1
				IL_00c8: sub
				IL_00c9: starg.s hiRes

				IL_00cb: ldloc.1
				IL_00cc: ldc.i4.4
				IL_00cd: sub
				IL_00ce: stloc.1
				IL_00cf: ldloc.1
				IL_00d0: ldc.i4.0
				IL_00d1: bgt IL_004f

				IL_00d6: ldarg.1
				IL_00d7: ldc.i4.2
				IL_00d8: ble.un.s IL_00e9

				IL_00da: ldarg.2
				IL_00db: brfalse.s IL_014e

				IL_00dd: ldc.i4.1
				IL_00de: stloc.1
				IL_00df: ldarg.2
				IL_00e0: ldc.i4.1
				IL_00e1: sub
				IL_00e2: starg.s scale
				IL_00e4: br IL_004f

				IL_00e9: ldloc.s 5
				IL_00eb: ldc.i4.1
				IL_00ec: shr.un
				IL_00ed: stloc.s 5
				IL_00ef: ldloc.s 5
				IL_00f1: ldloc.s 4
				IL_00f3: bgt.un.s IL_014c

				IL_00f5: ldloc.s 5
				IL_00f7: ldloc.s 4
				IL_00f9: blt.un.s IL_0103

				IL_00fb: ldloc.0
				IL_00fc: ldind.u4
				IL_00fd: ldc.i4.1
				IL_00fe: and
				IL_00ff: ldloc.2
				IL_0100: or
				IL_0101: brfalse.s IL_014c

				IL_0103: ldloc.0
				IL_0104: dup
				IL_0105: ldind.u4
				IL_0106: ldc.i4.1
				IL_0107: add
				IL_0108: stloc.s 6
				IL_010a: ldloc.s 6
				IL_010c: stind.i4
				IL_010d: ldloc.s 6
				IL_010f: brtrue.s IL_014c

				IL_0111: ldc.i4.0
				IL_0112: stloc.s 7
				// loop start (head: IL_0114)
					IL_0114: ldloc.0
					IL_0115: ldloc.s 7
					IL_0117: ldc.i4.1
					IL_0118: add
					IL_0119: dup
					IL_011a: stloc.s 7
					IL_011c: conv.u8
					IL_011d: ldc.i4.4
					IL_011e: conv.i8
					IL_011f: mul
					IL_0120: conv.i
					IL_0121: add
					IL_0122: dup
					IL_0123: ldind.u4
					IL_0124: ldc.i4.1
					IL_0125: add
					IL_0126: stloc.s 6
					IL_0128: ldloc.s 6
					IL_012a: stind.i4
					IL_012b: ldloc.s 6
					IL_012d: brfalse.s IL_0114
				// end loop
				IL_012f: ldloc.s 7
				IL_0131: ldc.i4.2
				IL_0132: ble.un.s IL_014c

				IL_0134: ldarg.2
				IL_0135: brfalse.s IL_014e

				IL_0137: ldloc.s 7
				IL_0139: starg.s hiRes
				IL_013b: ldc.i4.0
				IL_013c: stloc.2
				IL_013d: ldc.i4.0
				IL_013e: stloc.s 4
				IL_0140: ldc.i4.1
				IL_0141: stloc.1
				IL_0142: ldarg.2
				IL_0143: ldc.i4.1
				IL_0144: sub
				IL_0145: starg.s scale
				IL_0147: br IL_004f
			// end loop

			IL_014c: ldarg.2
			IL_014d: ret

			IL_014e: ldc.i4.s 15
			IL_0150: call void System.Number::ThrowOverflowException(valuetype System.TypeCode)
			IL_0155: ldc.i4.0
			IL_0156: ret
		} // end of method DecCalc::ScaleResult

		.method private hidebysig static 
			uint32 DivByConst (
				uint32* result,
				uint32 hiRes,
				[out] uint32& quotient,
				[out] uint32& remainder,
				uint32 power
			) cil managed aggressiveinlining 
		{
			// Method begins at RVA 0x45cc0
			// Code size 125 (0x7d)
			.maxstack 5
			.locals (
				[0] uint32,
				[1] uint32,
				[2] uint32,
				[3] uint32,
				[4] uint32
			)

			IL_0000: ldarg.0
			IL_0001: ldarg.1
			IL_0002: conv.u8
			IL_0003: ldc.i4.4
			IL_0004: conv.i8
			IL_0005: mul
			IL_0006: conv.i
			IL_0007: add
			IL_0008: ldind.u4
			IL_0009: stloc.0
			IL_000a: ldarg.3
			IL_000b: ldloc.0
			IL_000c: ldarg.2
			IL_000d: ldloc.0
			IL_000e: ldarg.s power
			IL_0010: div.un
			IL_0011: dup
			IL_0012: stloc.1
			IL_0013: stind.i4
			IL_0014: ldloc.1
			IL_0015: ldarg.s power
			IL_0017: mul
			IL_0018: sub
			IL_0019: stind.i4
			IL_001a: ldarg.1
			IL_001b: ldc.i4.1
			IL_001c: sub
			IL_001d: stloc.2
			IL_001e: br.s IL_0076
			// loop start (head: IL_0076)
				IL_0020: ldarg.0
				IL_0021: ldloc.2
				IL_0022: ldc.i4.4
				IL_0023: mul
				IL_0024: conv.u
				IL_0025: add
				IL_0026: ldc.i4.2
				IL_0027: add
				IL_0028: ldind.u2
				IL_0029: ldarg.3
				IL_002a: ldind.u4
				IL_002b: ldc.i4.s 16
				IL_002d: shl
				IL_002e: add
				IL_002f: stloc.3
				IL_0030: ldloc.3
				IL_0031: ldarg.s power
				IL_0033: div.un
				IL_0034: stloc.s 4
				IL_0036: ldarg.3
				IL_0037: ldloc.3
				IL_0038: ldloc.s 4
				IL_003a: ldarg.s power
				IL_003c: mul
				IL_003d: sub
				IL_003e: stind.i4
				IL_003f: ldarg.0
				IL_0040: ldloc.2
				IL_0041: ldc.i4.4
				IL_0042: mul
				IL_0043: conv.u
				IL_0044: add
				IL_0045: ldc.i4.2
				IL_0046: add
				IL_0047: ldloc.s 4
				IL_0049: conv.u2
				IL_004a: stind.i2
				IL_004b: ldarg.0
				IL_004c: ldloc.2
				IL_004d: ldc.i4.4
				IL_004e: mul
				IL_004f: conv.u
				IL_0050: add
				IL_0051: ldind.u2
				IL_0052: ldarg.3
				IL_0053: ldind.u4
				IL_0054: ldc.i4.s 16
				IL_0056: shl
				IL_0057: add
				IL_0058: stloc.3
				IL_0059: ldloc.3
				IL_005a: ldarg.s power
				IL_005c: div.un
				IL_005d: stloc.s 4
				IL_005f: ldarg.3
				IL_0060: ldloc.3
				IL_0061: ldloc.s 4
				IL_0063: ldarg.s power
				IL_0065: mul
				IL_0066: sub
				IL_0067: stind.i4
				IL_0068: ldarg.0
				IL_0069: ldloc.2
				IL_006a: ldc.i4.4
				IL_006b: mul
				IL_006c: conv.u
				IL_006d: add
				IL_006e: ldloc.s 4
				IL_0070: conv.u2
				IL_0071: stind.i2
				IL_0072: ldloc.2
				IL_0073: ldc.i4.1
				IL_0074: sub
				IL_0075: stloc.2

				IL_0076: ldloc.2
				IL_0077: ldc.i4.0
				IL_0078: bge.s IL_0020
			// end loop

			IL_007a: ldarg.s power
			IL_007c: ret
		} // end of method DecCalc::DivByConst

		.method private hidebysig static 
			int32 OverflowUnscale (
				valuetype System.Decimal/DecCalc/Buf12& bufQuo,
				int32 scale,
				bool sticky
			) cil managed 
		{
			// Method begins at RVA 0x45d4c
			// Code size 132 (0x84)
			.maxstack 3
			.locals (
				[0] uint64,
				[1] uint32,
				[2] uint32
			)

			IL_0000: ldarg.1
			IL_0001: ldc.i4.1
			IL_0002: sub
			IL_0003: dup
			IL_0004: starg.s scale
			IL_0006: ldc.i4.0
			IL_0007: bge.s IL_0010

			IL_0009: ldc.i4.s 15
			IL_000b: call void System.Number::ThrowOverflowException(valuetype System.TypeCode)

			IL_0010: ldarg.0
			IL_0011: ldc.i4 429496729
			IL_0016: stfld uint32 System.Decimal/DecCalc/Buf12::U2
			IL_001b: ldc.i8 25769803776
			IL_0024: ldarg.0
			IL_0025: ldfld uint32 System.Decimal/DecCalc/Buf12::U1
			IL_002a: conv.u8
			IL_002b: add
			IL_002c: stloc.0
			IL_002d: ldloc.0
			IL_002e: ldc.i4.s 10
			IL_0030: conv.i8
			IL_0031: div.un
			IL_0032: conv.u4
			IL_0033: stloc.1
			IL_0034: ldarg.0
			IL_0035: ldloc.1
			IL_0036: stfld uint32 System.Decimal/DecCalc/Buf12::U1
			IL_003b: ldloc.0
			IL_003c: ldloc.1
			IL_003d: ldc.i4.s 10
			IL_003f: mul
			IL_0040: conv.u8
			IL_0041: sub
			IL_0042: ldc.i4.s 32
			IL_0044: shl
			IL_0045: ldarg.0
			IL_0046: ldfld uint32 System.Decimal/DecCalc/Buf12::U0
			IL_004b: conv.u8
			IL_004c: add
			IL_004d: stloc.0
			IL_004e: ldloc.0
			IL_004f: ldc.i4.s 10
			IL_0051: conv.i8
			IL_0052: div.un
			IL_0053: conv.u4
			IL_0054: stloc.1
			IL_0055: ldarg.0
			IL_0056: ldloc.1
			IL_0057: stfld uint32 System.Decimal/DecCalc/Buf12::U0
			IL_005c: ldloc.0
			IL_005d: ldloc.1
			IL_005e: ldc.i4.s 10
			IL_0060: mul
			IL_0061: conv.u8
			IL_0062: sub
			IL_0063: conv.u4
			IL_0064: stloc.2
			IL_0065: ldloc.2
			IL_0066: ldc.i4.5
			IL_0067: bgt.un.s IL_007a

			IL_0069: ldloc.2
			IL_006a: ldc.i4.5
			IL_006b: bne.un.s IL_0082

			IL_006d: ldarg.2
			IL_006e: brtrue.s IL_007a

			IL_0070: ldarg.0
			IL_0071: ldfld uint32 System.Decimal/DecCalc/Buf12::U0
			IL_0076: ldc.i4.1
			IL_0077: and
			IL_0078: brfalse.s IL_0082

			IL_007a: ldarg.0
			IL_007b: ldc.i4.1
			IL_007c: call bool System.Decimal/DecCalc::Add32To96(valuetype System.Decimal/DecCalc/Buf12&, uint32)
			IL_0081: pop

			IL_0082: ldarg.1
			IL_0083: ret
		} // end of method DecCalc::OverflowUnscale

		.method private hidebysig static 
			int32 SearchScale (
				valuetype System.Decimal/DecCalc/Buf12& bufQuo,
				int32 scale
			) cil managed 
		{
			// Method begins at RVA 0x45ddc
			// Code size 224 (0xe0)
			.maxstack 4
			.locals (
				[0] uint32,
				[1] uint64,
				[2] int32,
				[3] valuetype System.Decimal/DecCalc/PowerOvfl[]
			)

			IL_0000: ldarg.0
			IL_0001: ldfld uint32 System.Decimal/DecCalc/Buf12::U2
			IL_0006: stloc.0
			IL_0007: ldarg.0
			IL_0008: call instance uint64 System.Decimal/DecCalc/Buf12::get_Low64()
			IL_000d: stloc.1
			IL_000e: ldc.i4.0
			IL_000f: stloc.2
			IL_0010: ldloc.0
			IL_0011: ldc.i4 429496729
			IL_0016: bgt.un IL_00d1

			IL_001b: ldsfld valuetype System.Decimal/DecCalc/PowerOvfl[] System.Decimal/DecCalc::PowerOvflValues
			IL_0020: stloc.3
			IL_0021: ldarg.1
			IL_0022: ldc.i4.s 19
			IL_0024: ble.s IL_0041

			IL_0026: ldc.i4.s 28
			IL_0028: ldarg.1
			IL_0029: sub
			IL_002a: stloc.2
			IL_002b: ldloc.0
			IL_002c: ldloc.3
			IL_002d: ldloc.2
			IL_002e: ldc.i4.1
			IL_002f: sub
			IL_0030: ldelema System.Decimal/DecCalc/PowerOvfl
			IL_0035: ldfld uint32 System.Decimal/DecCalc/PowerOvfl::Hi
			IL_003a: bge.un.s IL_0058

			IL_003c: br IL_00d1

			IL_0041: ldloc.0
			IL_0042: ldc.i4.4
			IL_0043: blt.un.s IL_0055

			IL_0045: ldloc.0
			IL_0046: ldc.i4.4
			IL_0047: bne.un.s IL_0058

			IL_0049: ldloc.1
			IL_004a: ldc.i8 5441186219426131129
			IL_0053: bgt.un.s IL_0058

			IL_0055: ldc.i4.s 9
			IL_0057: ret

			IL_0058: ldloc.0
			IL_0059: ldc.i4 42949
			IL_005e: ble.un.s IL_0088

			IL_0060: ldloc.0
			IL_0061: ldc.i4 4294967
			IL_0066: ble.un.s IL_0078

			IL_0068: ldc.i4.2
			IL_0069: stloc.2
			IL_006a: ldloc.0
			IL_006b: ldc.i4 42949672
			IL_0070: ble.un.s IL_00ab

			IL_0072: ldloc.2
			IL_0073: ldc.i4.1
			IL_0074: sub
			IL_0075: stloc.2
			IL_0076: br.s IL_00ab

			IL_0078: ldc.i4.4
			IL_0079: stloc.2
			IL_007a: ldloc.0
			IL_007b: ldc.i4 429496
			IL_0080: ble.un.s IL_00ab

			IL_0082: ldloc.2
			IL_0083: ldc.i4.1
			IL_0084: sub
			IL_0085: stloc.2
			IL_0086: br.s IL_00ab

			IL_0088: ldloc.0
			IL_0089: ldc.i4 429
			IL_008e: ble.un.s IL_00a0

			IL_0090: ldc.i4.6
			IL_0091: stloc.2
			IL_0092: ldloc.0
			IL_0093: ldc.i4 4294
			IL_0098: ble.un.s IL_00ab

			IL_009a: ldloc.2
			IL_009b: ldc.i4.1
			IL_009c: sub
			IL_009d: stloc.2
			IL_009e: br.s IL_00ab

			IL_00a0: ldc.i4.8
			IL_00a1: stloc.2
			IL_00a2: ldloc.0
			IL_00a3: ldc.i4.s 42
			IL_00a5: ble.un.s IL_00ab

			IL_00a7: ldloc.2
			IL_00a8: ldc.i4.1
			IL_00a9: sub
			IL_00aa: stloc.2

			IL_00ab: ldloc.0
			IL_00ac: ldloc.3
			IL_00ad: ldloc.2
			IL_00ae: ldc.i4.1
			IL_00af: sub
			IL_00b0: ldelema System.Decimal/DecCalc/PowerOvfl
			IL_00b5: ldfld uint32 System.Decimal/DecCalc/PowerOvfl::Hi
			IL_00ba: bne.un.s IL_00d1

			IL_00bc: ldloc.1
			IL_00bd: ldloc.3
			IL_00be: ldloc.2
			IL_00bf: ldc.i4.1
			IL_00c0: sub
			IL_00c1: ldelema System.Decimal/DecCalc/PowerOvfl
			IL_00c6: ldfld uint64 System.Decimal/DecCalc/PowerOvfl::MidLo
			IL_00cb: ble.un.s IL_00d1

			IL_00cd: ldloc.2
			IL_00ce: ldc.i4.1
			IL_00cf: sub
			IL_00d0: stloc.2

			IL_00d1: ldloc.2
			IL_00d2: ldarg.1
			IL_00d3: add
			IL_00d4: ldc.i4.0
			IL_00d5: bge.s IL_00de

			IL_00d7: ldc.i4.s 15
			IL_00d9: call void System.Number::ThrowOverflowException(valuetype System.TypeCode)

			IL_00de: ldloc.2
			IL_00df: ret
		} // end of method DecCalc::SearchScale

		.method private hidebysig static 
			bool Add32To96 (
				valuetype System.Decimal/DecCalc/Buf12& bufNum,
				uint32 'value'
			) cil managed 
		{
			// Method begins at RVA 0x45ec8
			// Code size 42 (0x2a)
			.maxstack 3
			.locals (
				[0] uint64,
				[1] uint32
			)

			IL_0000: ldarg.0
			IL_0001: dup
			IL_0002: call instance uint64 System.Decimal/DecCalc/Buf12::get_Low64()
			IL_0007: ldarg.1
			IL_0008: conv.u8
			IL_0009: add
			IL_000a: dup
			IL_000b: stloc.0
			IL_000c: call instance void System.Decimal/DecCalc/Buf12::set_Low64(uint64)
			IL_0011: ldloc.0
			IL_0012: ldarg.1
			IL_0013: conv.u8
			IL_0014: bge.un.s IL_0028

			IL_0016: ldarg.0
			IL_0017: ldflda uint32 System.Decimal/DecCalc/Buf12::U2
			IL_001c: dup
			IL_001d: ldind.u4
			IL_001e: ldc.i4.1
			IL_001f: add
			IL_0020: stloc.1
			IL_0021: ldloc.1
			IL_0022: stind.i4
			IL_0023: ldloc.1
			IL_0024: brtrue.s IL_0028

			IL_0026: ldc.i4.0
			IL_0027: ret

			IL_0028: ldc.i4.1
			IL_0029: ret
		} // end of method DecCalc::Add32To96

		.method assembly hidebysig static 
			void DecAddSub (
				valuetype System.Decimal/DecCalc& d1,
				valuetype System.Decimal/DecCalc& d2,
				bool sign
			) cil managed 
		{
			// Method begins at RVA 0x45f00
			// Code size 1231 (0x4cf)
			.maxstack 4
			.locals (
				[0] uint64,
				[1] uint32,
				[2] uint32,
				[3] uint32,
				[4] uint32,
				[5] uint32,
				[6] int32,
				[7] uint32,
				[8] uint64,
				[9] uint64,
				[10] valuetype System.Decimal/DecCalc/Buf24,
				[11] uint32,
				[12] uint32,
				[13] uint32,
				[14] uint32*,
				[15] uint32,
				[16] uint32*,
				[17] uint32,
				[18] uint32,
				[19] uint32*,
				[20] uint32,
				[21] uint64,
				[22] uint32,
				[23] uint64,
				[24] uint32
			)

			IL_0000: ldarg.0
			IL_0001: call instance uint64 System.Decimal/DecCalc::get_Low64()
			IL_0006: stloc.0
			IL_0007: ldarg.0
			IL_0008: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_000d: stloc.1
			IL_000e: ldarg.0
			IL_000f: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_0014: stloc.2
			IL_0015: ldarg.1
			IL_0016: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_001b: stloc.3
			IL_001c: ldloc.3
			IL_001d: ldloc.2
			IL_001e: xor
			IL_001f: stloc.s 4
			IL_0021: ldarg.2
			IL_0022: ldloc.s 4
			IL_0024: ldc.i4 -2147483648
			IL_0029: and
			IL_002a: ldc.i4.0
			IL_002b: cgt.un
			IL_002d: xor
			IL_002e: starg.s sign
			IL_0030: ldloc.s 4
			IL_0032: ldc.i4 16711680
			IL_0037: and
			IL_0038: brfalse IL_0450

			IL_003d: ldloc.2
			IL_003e: stloc.s 5
			IL_0040: ldloc.3
			IL_0041: ldc.i4 16711680
			IL_0046: and
			IL_0047: ldloc.2
			IL_0048: ldc.i4 -2147483648
			IL_004d: and
			IL_004e: or
			IL_004f: stloc.2
			IL_0050: ldloc.2
			IL_0051: ldloc.s 5
			IL_0053: sub
			IL_0054: ldc.i4.s 16
			IL_0056: shr
			IL_0057: stloc.s 6
			IL_0059: ldloc.s 6
			IL_005b: ldc.i4.0
			IL_005c: bge.s IL_008b

			IL_005e: ldloc.s 6
			IL_0060: neg
			IL_0061: stloc.s 6
			IL_0063: ldloc.s 5
			IL_0065: stloc.2
			IL_0066: ldarg.2
			IL_0067: brfalse.s IL_0071

			IL_0069: ldloc.2
			IL_006a: ldc.i4 -2147483648
			IL_006f: xor
			IL_0070: stloc.2

			IL_0071: ldarg.1
			IL_0072: call instance uint64 System.Decimal/DecCalc::get_Low64()
			IL_0077: stloc.0
			IL_0078: ldarg.1
			IL_0079: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_007e: stloc.1
			IL_007f: ldarg.1
			IL_0080: ldarg.0
			IL_0081: ldobj System.Decimal/DecCalc
			IL_0086: stobj System.Decimal/DecCalc

			IL_008b: ldloc.1
			IL_008c: brtrue IL_015f

			IL_0091: ldloc.0
			IL_0092: ldc.i4.m1
			IL_0093: conv.u8
			IL_0094: bgt.un.s IL_0106

			IL_0096: ldloc.0
			IL_0097: conv.u4
			IL_0098: brtrue.s IL_00d2

			IL_009a: ldloc.2
			IL_009b: ldc.i4 -2147483648
			IL_00a0: and
			IL_00a1: stloc.s 13
			IL_00a3: ldarg.2
			IL_00a4: brfalse.s IL_00b0

			IL_00a6: ldloc.s 13
			IL_00a8: ldc.i4 -2147483648
			IL_00ad: xor
			IL_00ae: stloc.s 13

			IL_00b0: ldarg.0
			IL_00b1: ldarg.1
			IL_00b2: ldobj System.Decimal/DecCalc
			IL_00b7: stobj System.Decimal/DecCalc
			IL_00bc: ldarg.0
			IL_00bd: ldarg.1
			IL_00be: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_00c3: ldc.i4 16711680
			IL_00c8: and
			IL_00c9: ldloc.s 13
			IL_00cb: or
			IL_00cc: stfld uint32 System.Decimal/DecCalc::uflags
			IL_00d1: ret
			// loop start (head: IL_00d2)
				IL_00d2: ldloc.s 6
				IL_00d4: ldc.i4.s 9
				IL_00d6: bgt.s IL_00ed

				IL_00d8: ldloc.0
				IL_00d9: conv.u4
				IL_00da: ldsfld uint32[] System.Decimal/DecCalc::s_powers10
				IL_00df: ldloc.s 6
				IL_00e1: ldelem.u4
				IL_00e2: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
				IL_00e7: stloc.0
				IL_00e8: br IL_0450

				IL_00ed: ldloc.s 6
				IL_00ef: ldc.i4.s 9
				IL_00f1: sub
				IL_00f2: stloc.s 6
				IL_00f4: ldloc.0
				IL_00f5: conv.u4
				IL_00f6: ldc.i4 1000000000
				IL_00fb: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
				IL_0100: stloc.0
				IL_0101: ldloc.0
				IL_0102: ldc.i4.m1
				IL_0103: conv.u8
				IL_0104: ble.un.s IL_00d2
			// end loop
			// loop start (head: IL_0106)
				IL_0106: ldc.i4 1000000000
				IL_010b: stloc.s 7
				IL_010d: ldloc.s 6
				IL_010f: ldc.i4.s 9
				IL_0111: bge.s IL_011d

				IL_0113: ldsfld uint32[] System.Decimal/DecCalc::s_powers10
				IL_0118: ldloc.s 6
				IL_011a: ldelem.u4
				IL_011b: stloc.s 7

				IL_011d: ldloc.0
				IL_011e: conv.u4
				IL_011f: ldloc.s 7
				IL_0121: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
				IL_0126: stloc.s 9
				IL_0128: ldloc.0
				IL_0129: ldc.i4.s 32
				IL_012b: shr.un
				IL_012c: conv.u4
				IL_012d: ldloc.s 7
				IL_012f: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
				IL_0134: ldloc.s 9
				IL_0136: ldc.i4.s 32
				IL_0138: shr.un
				IL_0139: add
				IL_013a: stloc.s 8
				IL_013c: ldloc.s 9
				IL_013e: conv.u4
				IL_013f: conv.u8
				IL_0140: ldloc.s 8
				IL_0142: ldc.i4.s 32
				IL_0144: shl
				IL_0145: add
				IL_0146: stloc.0
				IL_0147: ldloc.s 8
				IL_0149: ldc.i4.s 32
				IL_014b: shr.un
				IL_014c: conv.u4
				IL_014d: stloc.1
				IL_014e: ldloc.s 6
				IL_0150: ldc.i4.s 9
				IL_0152: sub
				IL_0153: dup
				IL_0154: stloc.s 6
				IL_0156: ldc.i4.0
				IL_0157: ble IL_0450

				IL_015c: ldloc.1
				IL_015d: brfalse.s IL_0106
			// end loop
			// loop start (head: IL_015f)
				IL_015f: ldc.i4 1000000000
				IL_0164: stloc.s 7
				IL_0166: ldloc.s 6
				IL_0168: ldc.i4.s 9
				IL_016a: bge.s IL_0176

				IL_016c: ldsfld uint32[] System.Decimal/DecCalc::s_powers10
				IL_0171: ldloc.s 6
				IL_0173: ldelem.u4
				IL_0174: stloc.s 7

				IL_0176: ldloc.0
				IL_0177: conv.u4
				IL_0178: ldloc.s 7
				IL_017a: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
				IL_017f: stloc.s 9
				IL_0181: ldloc.0
				IL_0182: ldc.i4.s 32
				IL_0184: shr.un
				IL_0185: conv.u4
				IL_0186: ldloc.s 7
				IL_0188: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
				IL_018d: ldloc.s 9
				IL_018f: ldc.i4.s 32
				IL_0191: shr.un
				IL_0192: add
				IL_0193: stloc.s 8
				IL_0195: ldloc.s 9
				IL_0197: conv.u4
				IL_0198: conv.u8
				IL_0199: ldloc.s 8
				IL_019b: ldc.i4.s 32
				IL_019d: shl
				IL_019e: add
				IL_019f: stloc.0
				IL_01a0: ldloc.s 8
				IL_01a2: ldc.i4.s 32
				IL_01a4: shr.un
				IL_01a5: stloc.s 8
				IL_01a7: ldloc.s 8
				IL_01a9: ldloc.1
				IL_01aa: ldloc.s 7
				IL_01ac: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
				IL_01b1: add
				IL_01b2: stloc.s 8
				IL_01b4: ldloc.s 6
				IL_01b6: ldc.i4.s 9
				IL_01b8: sub
				IL_01b9: stloc.s 6
				IL_01bb: ldloc.s 8
				IL_01bd: ldc.i4.m1
				IL_01be: conv.u8
				IL_01bf: bgt.un.s IL_01cf

				IL_01c1: ldloc.s 8
				IL_01c3: conv.u4
				IL_01c4: stloc.1
				IL_01c5: ldloc.s 6
				IL_01c7: ldc.i4.0
				IL_01c8: bgt.s IL_015f
			// end loop

			IL_01ca: br IL_0450

			IL_01cf: ldloca.s 10
			IL_01d1: call void Internal.Runtime.CompilerServices.Unsafe::SkipInit<valuetype System.Decimal/DecCalc/Buf24>(!!0&)
			IL_01d6: ldloca.s 10
			IL_01d8: ldloc.0
			IL_01d9: call instance void System.Decimal/DecCalc/Buf24::set_Low64(uint64)
			IL_01de: ldloca.s 10
			IL_01e0: ldloc.s 8
			IL_01e2: call instance void System.Decimal/DecCalc/Buf24::set_Mid64(uint64)
			IL_01e7: ldc.i4.3
			IL_01e8: stloc.s 11
			IL_01ea: br.s IL_0266
			// loop start (head: IL_0266)
				IL_01ec: ldc.i4 1000000000
				IL_01f1: stloc.s 7
				IL_01f3: ldloc.s 6
				IL_01f5: ldc.i4.s 9
				IL_01f7: bge.s IL_0203

				IL_01f9: ldsfld uint32[] System.Decimal/DecCalc::s_powers10
				IL_01fe: ldloc.s 6
				IL_0200: ldelem.u4
				IL_0201: stloc.s 7

				IL_0203: ldc.i4.0
				IL_0204: conv.i8
				IL_0205: stloc.s 8
				IL_0207: ldloca.s 10
				IL_0209: conv.u
				IL_020a: stloc.s 14
				IL_020c: ldc.i4.0
				IL_020d: stloc.s 15
				// loop start (head: IL_020f)
					IL_020f: ldloc.s 8
					IL_0211: ldloc.s 14
					IL_0213: ldloc.s 15
					IL_0215: conv.u8
					IL_0216: ldc.i4.4
					IL_0217: conv.i8
					IL_0218: mul
					IL_0219: conv.i
					IL_021a: add
					IL_021b: ldind.u4
					IL_021c: ldloc.s 7
					IL_021e: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
					IL_0223: add
					IL_0224: stloc.s 8
					IL_0226: ldloc.s 14
					IL_0228: ldloc.s 15
					IL_022a: conv.u8
					IL_022b: ldc.i4.4
					IL_022c: conv.i8
					IL_022d: mul
					IL_022e: conv.i
					IL_022f: add
					IL_0230: ldloc.s 8
					IL_0232: conv.u4
					IL_0233: stind.i4
					IL_0234: ldloc.s 15
					IL_0236: ldc.i4.1
					IL_0237: add
					IL_0238: stloc.s 15
					IL_023a: ldloc.s 8
					IL_023c: ldc.i4.s 32
					IL_023e: shr.un
					IL_023f: stloc.s 8
					IL_0241: ldloc.s 15
					IL_0243: ldloc.s 11
					IL_0245: ble.un.s IL_020f
				// end loop
				IL_0247: ldloc.s 8
				IL_0249: conv.u4
				IL_024a: brfalse.s IL_025f

				IL_024c: ldloc.s 14
				IL_024e: ldloc.s 11
				IL_0250: ldc.i4.1
				IL_0251: add
				IL_0252: dup
				IL_0253: stloc.s 11
				IL_0255: conv.u8
				IL_0256: ldc.i4.4
				IL_0257: conv.i8
				IL_0258: mul
				IL_0259: conv.i
				IL_025a: add
				IL_025b: ldloc.s 8
				IL_025d: conv.u4
				IL_025e: stind.i4

				IL_025f: ldloc.s 6
				IL_0261: ldc.i4.s 9
				IL_0263: sub
				IL_0264: stloc.s 6

				IL_0266: ldloc.s 6
				IL_0268: ldc.i4.0
				IL_0269: bgt.s IL_01ec
			// end loop

			IL_026b: ldloca.s 10
			IL_026d: call instance uint64 System.Decimal/DecCalc/Buf24::get_Low64()
			IL_0272: stloc.s 8
			IL_0274: ldarg.1
			IL_0275: call instance uint64 System.Decimal/DecCalc::get_Low64()
			IL_027a: stloc.0
			IL_027b: ldloc.s 10
			IL_027d: ldfld uint32 System.Decimal/DecCalc/Buf24::U2
			IL_0282: stloc.s 12
			IL_0284: ldarg.1
			IL_0285: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_028a: stloc.1
			IL_028b: ldarg.2
			IL_028c: brfalse.s IL_02f3

			IL_028e: ldloc.s 8
			IL_0290: ldloc.0
			IL_0291: sub
			IL_0292: stloc.0
			IL_0293: ldloc.s 12
			IL_0295: ldloc.1
			IL_0296: sub
			IL_0297: stloc.1
			IL_0298: ldloc.0
			IL_0299: ldloc.s 8
			IL_029b: ble.un.s IL_02ab

			IL_029d: ldloc.1
			IL_029e: ldc.i4.1
			IL_029f: sub
			IL_02a0: stloc.1
			IL_02a1: ldloc.1
			IL_02a2: ldloc.s 12
			IL_02a4: bge.un.s IL_02b3

			IL_02a6: br IL_0350

			IL_02ab: ldloc.1
			IL_02ac: ldloc.s 12
			IL_02ae: ble.un IL_0350

			IL_02b3: ldloca.s 10
			IL_02b5: conv.u
			IL_02b6: stloc.s 16
			IL_02b8: ldc.i4.3
			IL_02b9: stloc.s 17
			// loop start (head: IL_02bb)
				IL_02bb: ldloc.s 16
				IL_02bd: ldloc.s 17
				IL_02bf: dup
				IL_02c0: ldc.i4.1
				IL_02c1: add
				IL_02c2: stloc.s 17
				IL_02c4: conv.u8
				IL_02c5: ldc.i4.4
				IL_02c6: conv.i8
				IL_02c7: mul
				IL_02c8: conv.i
				IL_02c9: add
				IL_02ca: dup
				IL_02cb: ldind.u4
				IL_02cc: stloc.s 18
				IL_02ce: ldloc.s 18
				IL_02d0: ldc.i4.1
				IL_02d1: sub
				IL_02d2: stind.i4
				IL_02d3: ldloc.s 18
				IL_02d5: brfalse.s IL_02bb
			// end loop
			IL_02d7: ldloc.s 16
			IL_02d9: ldloc.s 11
			IL_02db: conv.u8
			IL_02dc: ldc.i4.4
			IL_02dd: conv.i8
			IL_02de: mul
			IL_02df: conv.i
			IL_02e0: add
			IL_02e1: ldind.u4
			IL_02e2: brtrue.s IL_0350

			IL_02e4: ldloc.s 11
			IL_02e6: ldc.i4.1
			IL_02e7: sub
			IL_02e8: dup
			IL_02e9: stloc.s 11
			IL_02eb: ldc.i4.2
			IL_02ec: bgt.un.s IL_0350

			IL_02ee: br IL_04b9

			IL_02f3: ldloc.0
			IL_02f4: ldloc.s 8
			IL_02f6: add
			IL_02f7: stloc.0
			IL_02f8: ldloc.1
			IL_02f9: ldloc.s 12
			IL_02fb: add
			IL_02fc: stloc.1
			IL_02fd: ldloc.0
			IL_02fe: ldloc.s 8
			IL_0300: bge.un.s IL_030d

			IL_0302: ldloc.1
			IL_0303: ldc.i4.1
			IL_0304: add
			IL_0305: stloc.1
			IL_0306: ldloc.1
			IL_0307: ldloc.s 12
			IL_0309: ble.un.s IL_0312

			IL_030b: br.s IL_0350

			IL_030d: ldloc.1
			IL_030e: ldloc.s 12
			IL_0310: bge.un.s IL_0350

			IL_0312: ldloca.s 10
			IL_0314: conv.u
			IL_0315: stloc.s 19
			IL_0317: ldc.i4.3
			IL_0318: stloc.s 20
			IL_031a: br.s IL_0334
			// loop start (head: IL_0334)
				IL_031c: ldloc.s 11
				IL_031e: ldloc.s 20
				IL_0320: bge.un.s IL_0334

				IL_0322: ldloc.s 19
				IL_0324: ldloc.s 20
				IL_0326: conv.u8
				IL_0327: ldc.i4.4
				IL_0328: conv.i8
				IL_0329: mul
				IL_032a: conv.i
				IL_032b: add
				IL_032c: ldc.i4.1
				IL_032d: stind.i4
				IL_032e: ldloc.s 20
				IL_0330: stloc.s 11
				IL_0332: br.s IL_0350

				IL_0334: ldloc.s 19
				IL_0336: ldloc.s 20
				IL_0338: dup
				IL_0339: ldc.i4.1
				IL_033a: add
				IL_033b: stloc.s 20
				IL_033d: conv.u8
				IL_033e: ldc.i4.4
				IL_033f: conv.i8
				IL_0340: mul
				IL_0341: conv.i
				IL_0342: add
				IL_0343: dup
				IL_0344: ldind.u4
				IL_0345: ldc.i4.1
				IL_0346: add
				IL_0347: stloc.s 18
				IL_0349: ldloc.s 18
				IL_034b: stind.i4
				IL_034c: ldloc.s 18
				IL_034e: brfalse.s IL_031c
			// end loop

			IL_0350: ldloca.s 10
			IL_0352: ldloc.0
			IL_0353: call instance void System.Decimal/DecCalc/Buf24::set_Low64(uint64)
			IL_0358: ldloca.s 10
			IL_035a: ldloc.1
			IL_035b: stfld uint32 System.Decimal/DecCalc/Buf24::U2
			IL_0360: ldloca.s 10
			IL_0362: conv.u
			IL_0363: ldloc.s 11
			IL_0365: ldloc.2
			IL_0366: ldc.i4.s 16
			IL_0368: shr.un
			IL_0369: conv.u1
			IL_036a: call int32 System.Decimal/DecCalc::ScaleResult(valuetype System.Decimal/DecCalc/Buf24*, uint32, int32)
			IL_036f: stloc.s 6
			IL_0371: ldloc.2
			IL_0372: ldc.i4 -16711681
			IL_0377: and
			IL_0378: ldloc.s 6
			IL_037a: ldc.i4.s 16
			IL_037c: shl
			IL_037d: or
			IL_037e: stloc.2
			IL_037f: ldloca.s 10
			IL_0381: call instance uint64 System.Decimal/DecCalc/Buf24::get_Low64()
			IL_0386: stloc.0
			IL_0387: ldloc.s 10
			IL_0389: ldfld uint32 System.Decimal/DecCalc/Buf24::U2
			IL_038e: stloc.1
			IL_038f: br IL_04b9

			IL_0394: ldloc.2
			IL_0395: ldc.i4 -2147483648
			IL_039a: xor
			IL_039b: stloc.2
			IL_039c: ldloc.1
			IL_039d: not
			IL_039e: stloc.1
			IL_039f: ldloc.0
			IL_03a0: neg
			IL_03a1: stloc.0
			IL_03a2: ldloc.0
			IL_03a3: brtrue IL_04b9

			IL_03a8: ldloc.1
			IL_03a9: ldc.i4.1
			IL_03aa: add
			IL_03ab: stloc.1
			IL_03ac: br IL_04b9
			// loop start (head: IL_0450)
				IL_03b1: ldloc.2
				IL_03b2: ldc.i4 16711680
				IL_03b7: and
				IL_03b8: brtrue.s IL_03c1

				IL_03ba: ldc.i4.s 15
				IL_03bc: call void System.Number::ThrowOverflowException(valuetype System.TypeCode)

				IL_03c1: ldloc.2
				IL_03c2: ldc.i4 65536
				IL_03c7: sub
				IL_03c8: stloc.2
				IL_03c9: ldloc.1
				IL_03ca: conv.u8
				IL_03cb: ldc.i8 4294967296
				IL_03d4: add
				IL_03d5: stloc.s 21
				IL_03d7: ldloc.s 21
				IL_03d9: ldc.i4.s 10
				IL_03db: conv.i8
				IL_03dc: div.un
				IL_03dd: conv.u4
				IL_03de: stloc.1
				IL_03df: ldloc.s 21
				IL_03e1: ldloc.1
				IL_03e2: ldc.i4.s 10
				IL_03e4: mul
				IL_03e5: conv.u8
				IL_03e6: sub
				IL_03e7: ldc.i4.s 32
				IL_03e9: shl
				IL_03ea: ldloc.0
				IL_03eb: ldc.i4.s 32
				IL_03ed: shr.un
				IL_03ee: add
				IL_03ef: stloc.s 21
				IL_03f1: ldloc.s 21
				IL_03f3: ldc.i4.s 10
				IL_03f5: conv.i8
				IL_03f6: div.un
				IL_03f7: conv.u4
				IL_03f8: stloc.s 22
				IL_03fa: ldloc.s 21
				IL_03fc: ldloc.s 22
				IL_03fe: ldc.i4.s 10
				IL_0400: mul
				IL_0401: conv.u8
				IL_0402: sub
				IL_0403: ldc.i4.s 32
				IL_0405: shl
				IL_0406: ldloc.0
				IL_0407: conv.u4
				IL_0408: conv.u8
				IL_0409: add
				IL_040a: stloc.s 21
				IL_040c: ldloc.s 22
				IL_040e: conv.u8
				IL_040f: stloc.0
				IL_0410: ldloc.0
				IL_0411: ldc.i4.s 32
				IL_0413: shl
				IL_0414: stloc.0
				IL_0415: ldloc.s 21
				IL_0417: ldc.i4.s 10
				IL_0419: conv.i8
				IL_041a: div.un
				IL_041b: conv.u4
				IL_041c: stloc.s 22
				IL_041e: ldloc.0
				IL_041f: ldloc.s 22
				IL_0421: conv.u8
				IL_0422: add
				IL_0423: stloc.0
				IL_0424: ldloc.s 21
				IL_0426: conv.u4
				IL_0427: ldloc.s 22
				IL_0429: ldc.i4.s 10
				IL_042b: mul
				IL_042c: sub
				IL_042d: stloc.s 22
				IL_042f: ldloc.s 22
				IL_0431: ldc.i4.5
				IL_0432: blt.un IL_04b9

				IL_0437: ldloc.s 22
				IL_0439: ldc.i4.5
				IL_043a: bgt.un.s IL_0442

				IL_043c: ldloc.0
				IL_043d: ldc.i4.1
				IL_043e: conv.i8
				IL_043f: and
				IL_0440: brfalse.s IL_04b9

				IL_0442: ldloc.0
				IL_0443: ldc.i4.1
				IL_0444: conv.i8
				IL_0445: add
				IL_0446: dup
				IL_0447: stloc.0
				IL_0448: brtrue.s IL_04b9

				IL_044a: ldloc.1
				IL_044b: ldc.i4.1
				IL_044c: add
				IL_044d: stloc.1
				IL_044e: br.s IL_04b9

				IL_0450: ldloc.0
				IL_0451: stloc.s 23
				IL_0453: ldloc.1
				IL_0454: stloc.s 24
				IL_0456: ldarg.2
				IL_0457: brfalse.s IL_048a

				IL_0459: ldloc.s 23
				IL_045b: ldarg.1
				IL_045c: call instance uint64 System.Decimal/DecCalc::get_Low64()
				IL_0461: sub
				IL_0462: stloc.0
				IL_0463: ldloc.s 24
				IL_0465: ldarg.1
				IL_0466: call instance uint32 System.Decimal/DecCalc::get_High()
				IL_046b: sub
				IL_046c: stloc.1
				IL_046d: ldloc.0
				IL_046e: ldloc.s 23
				IL_0470: ble.un.s IL_0480

				IL_0472: ldloc.1
				IL_0473: ldc.i4.1
				IL_0474: sub
				IL_0475: stloc.1
				IL_0476: ldloc.1
				IL_0477: ldloc.s 24
				IL_0479: blt.un.s IL_04b9

				IL_047b: br IL_0394

				IL_0480: ldloc.1
				IL_0481: ldloc.s 24
				IL_0483: ble.un.s IL_04b9

				IL_0485: br IL_0394

				IL_048a: ldloc.s 23
				IL_048c: ldarg.1
				IL_048d: call instance uint64 System.Decimal/DecCalc::get_Low64()
				IL_0492: add
				IL_0493: stloc.0
				IL_0494: ldloc.s 24
				IL_0496: ldarg.1
				IL_0497: call instance uint32 System.Decimal/DecCalc::get_High()
				IL_049c: add
				IL_049d: stloc.1
				IL_049e: ldloc.0
				IL_049f: ldloc.s 23
				IL_04a1: bge.un.s IL_04b1

				IL_04a3: ldloc.1
				IL_04a4: ldc.i4.1
				IL_04a5: add
				IL_04a6: stloc.1
				IL_04a7: ldloc.1
				IL_04a8: ldloc.s 24
				IL_04aa: bgt.un.s IL_04b9

				IL_04ac: br IL_03b1

				IL_04b1: ldloc.1
				IL_04b2: ldloc.s 24
				IL_04b4: blt.un IL_03b1
			// end loop

			IL_04b9: ldarg.0
			IL_04ba: ldloc.2
			IL_04bb: stfld uint32 System.Decimal/DecCalc::uflags
			IL_04c0: ldarg.0
			IL_04c1: ldloc.1
			IL_04c2: call instance void System.Decimal/DecCalc::set_High(uint32)
			IL_04c7: ldarg.0
			IL_04c8: ldloc.0
			IL_04c9: call instance void System.Decimal/DecCalc::set_Low64(uint64)
			IL_04ce: ret
		} // end of method DecCalc::DecAddSub

		.method assembly hidebysig static 
			int64 VarCyFromDec (
				valuetype System.Decimal/DecCalc& pdecIn
			) cil managed 
		{
			// Method begins at RVA 0x463dc
			// Code size 158 (0x9e)
			.maxstack 3
			.locals (
				[0] int64,
				[1] int32,
				[2] uint32,
				[3] uint64,
				[4] uint64
			)

			IL_0000: ldarg.0
			IL_0001: call instance int32 System.Decimal/DecCalc::get_Scale()
			IL_0006: ldc.i4.4
			IL_0007: sub
			IL_0008: stloc.1
			IL_0009: ldloc.1
			IL_000a: ldc.i4.0
			IL_000b: bge.s IL_0053

			IL_000d: ldarg.0
			IL_000e: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_0013: brtrue.s IL_0093

			IL_0015: ldsfld uint32[] System.Decimal/DecCalc::s_powers10
			IL_001a: ldloc.1
			IL_001b: neg
			IL_001c: ldelem.u4
			IL_001d: stloc.2
			IL_001e: ldloc.2
			IL_001f: ldarg.0
			IL_0020: call instance uint32 System.Decimal/DecCalc::get_Mid()
			IL_0025: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_002a: stloc.3
			IL_002b: ldloc.3
			IL_002c: ldc.i4.m1
			IL_002d: conv.u8
			IL_002e: bgt.un.s IL_0093

			IL_0030: ldloc.2
			IL_0031: ldarg.0
			IL_0032: call instance uint32 System.Decimal/DecCalc::get_Low()
			IL_0037: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_003c: stloc.s 4
			IL_003e: ldloc.s 4
			IL_0040: ldloc.3
			IL_0041: ldc.i4.s 32
			IL_0043: shl
			IL_0044: dup
			IL_0045: stloc.3
			IL_0046: add
			IL_0047: stloc.s 4
			IL_0049: ldloc.s 4
			IL_004b: ldloc.3
			IL_004c: blt.un.s IL_0093

			IL_004e: ldloc.s 4
			IL_0050: stloc.0
			IL_0051: br.s IL_006d

			IL_0053: ldloc.1
			IL_0054: brfalse.s IL_005e

			IL_0056: ldarg.0
			IL_0057: ldloc.1
			IL_0058: ldc.i4.0
			IL_0059: call void System.Decimal/DecCalc::InternalRound(valuetype System.Decimal/DecCalc&, uint32, valuetype System.MidpointRounding)

			IL_005e: ldarg.0
			IL_005f: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_0064: brtrue.s IL_0093

			IL_0066: ldarg.0
			IL_0067: call instance uint64 System.Decimal/DecCalc::get_Low64()
			IL_006c: stloc.0

			IL_006d: ldloc.0
			IL_006e: ldc.i4.0
			IL_006f: conv.i8
			IL_0070: bge.s IL_0086

			IL_0072: ldloc.0
			IL_0073: ldc.i8 -9223372036854775808
			IL_007c: bne.un.s IL_0093

			IL_007e: ldarg.0
			IL_007f: call instance bool System.Decimal/DecCalc::get_IsNegative()
			IL_0084: brfalse.s IL_0093

			IL_0086: ldarg.0
			IL_0087: call instance bool System.Decimal/DecCalc::get_IsNegative()
			IL_008c: brfalse.s IL_0091

			IL_008e: ldloc.0
			IL_008f: neg
			IL_0090: stloc.0

			IL_0091: ldloc.0
			IL_0092: ret

			IL_0093: call string System.SR::get_Overflow_Currency()
			IL_0098: newobj instance void System.OverflowException::.ctor(string)
			IL_009d: throw
		} // end of method DecCalc::VarCyFromDec

		.method assembly hidebysig static 
			int32 VarDecCmp (
				[in] valuetype System.Decimal& d1,
				[in] valuetype System.Decimal& d2
			) cil managed 
		{
			.param [1]
				.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
					01 00 00 00
				)
			.param [2]
				.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
					01 00 00 00
				)
			// Method begins at RVA 0x46488
			// Code size 108 (0x6c)
			.maxstack 3
			.locals (
				[0] int32
			)

			IL_0000: ldarg.1
			IL_0001: call instance uint64 System.Decimal::get_Low64()
			IL_0006: ldarg.1
			IL_0007: call instance uint32 System.Decimal::get_High()
			IL_000c: conv.u8
			IL_000d: or
			IL_000e: brtrue.s IL_002e

			IL_0010: ldarg.0
			IL_0011: call instance uint64 System.Decimal::get_Low64()
			IL_0016: ldarg.0
			IL_0017: call instance uint32 System.Decimal::get_High()
			IL_001c: conv.u8
			IL_001d: or
			IL_001e: brtrue.s IL_0022

			IL_0020: ldc.i4.0
			IL_0021: ret

			IL_0022: ldarg.0
			IL_0023: ldfld int32 System.Decimal::_flags
			IL_0028: ldc.i4.s 31
			IL_002a: shr
			IL_002b: ldc.i4.1
			IL_002c: or
			IL_002d: ret

			IL_002e: ldarg.0
			IL_002f: call instance uint64 System.Decimal::get_Low64()
			IL_0034: ldarg.0
			IL_0035: call instance uint32 System.Decimal::get_High()
			IL_003a: conv.u8
			IL_003b: or
			IL_003c: brtrue.s IL_004b

			IL_003e: ldarg.1
			IL_003f: ldfld int32 System.Decimal::_flags
			IL_0044: ldc.i4.s 31
			IL_0046: shr
			IL_0047: ldc.i4.1
			IL_0048: or
			IL_0049: neg
			IL_004a: ret

			IL_004b: ldarg.0
			IL_004c: ldfld int32 System.Decimal::_flags
			IL_0051: ldc.i4.s 31
			IL_0053: shr
			IL_0054: ldarg.1
			IL_0055: ldfld int32 System.Decimal::_flags
			IL_005a: ldc.i4.s 31
			IL_005c: shr
			IL_005d: sub
			IL_005e: stloc.0
			IL_005f: ldloc.0
			IL_0060: brfalse.s IL_0064

			IL_0062: ldloc.0
			IL_0063: ret

			IL_0064: ldarg.0
			IL_0065: ldarg.1
			IL_0066: call int32 System.Decimal/DecCalc::VarDecCmpSub(valuetype System.Decimal&, valuetype System.Decimal&)
			IL_006b: ret
		} // end of method DecCalc::VarDecCmp

		.method private hidebysig static 
			int32 VarDecCmpSub (
				[in] valuetype System.Decimal& d1,
				[in] valuetype System.Decimal& d2
			) cil managed 
		{
			.param [1]
				.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
					01 00 00 00
				)
			.param [2]
				.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
					01 00 00 00
				)
			// Method begins at RVA 0x46500
			// Code size 249 (0xf9)
			.maxstack 3
			.locals (
				[0] int32,
				[1] int32,
				[2] int32,
				[3] uint64,
				[4] uint32,
				[5] uint64,
				[6] uint32,
				[7] uint32,
				[8] uint64,
				[9] uint64,
				[10] uint32,
				[11] uint32,
				[12] uint64,
				[13] uint64
			)

			IL_0000: ldarg.1
			IL_0001: ldfld int32 System.Decimal::_flags
			IL_0006: stloc.0
			IL_0007: ldloc.0
			IL_0008: ldc.i4.s 31
			IL_000a: shr
			IL_000b: ldc.i4.1
			IL_000c: or
			IL_000d: stloc.1
			IL_000e: ldloc.0
			IL_000f: ldarg.0
			IL_0010: ldfld int32 System.Decimal::_flags
			IL_0015: sub
			IL_0016: stloc.2
			IL_0017: ldarg.0
			IL_0018: call instance uint64 System.Decimal::get_Low64()
			IL_001d: stloc.3
			IL_001e: ldarg.0
			IL_001f: call instance uint32 System.Decimal::get_High()
			IL_0024: stloc.s 4
			IL_0026: ldarg.1
			IL_0027: call instance uint64 System.Decimal::get_Low64()
			IL_002c: stloc.s 5
			IL_002e: ldarg.1
			IL_002f: call instance uint32 System.Decimal::get_High()
			IL_0034: stloc.s 6
			IL_0036: ldloc.2
			IL_0037: brfalse IL_00cb

			IL_003c: ldloc.2
			IL_003d: ldc.i4.s 16
			IL_003f: shr
			IL_0040: stloc.2
			IL_0041: ldloc.2
			IL_0042: ldc.i4.0
			IL_0043: bge.s IL_0061

			IL_0045: ldloc.2
			IL_0046: neg
			IL_0047: stloc.2
			IL_0048: ldloc.1
			IL_0049: neg
			IL_004a: stloc.1
			IL_004b: ldloc.3
			IL_004c: stloc.s 9
			IL_004e: ldloc.s 5
			IL_0050: stloc.3
			IL_0051: ldloc.s 9
			IL_0053: stloc.s 5
			IL_0055: ldloc.s 4
			IL_0057: stloc.s 10
			IL_0059: ldloc.s 6
			IL_005b: stloc.s 4
			IL_005d: ldloc.s 10
			IL_005f: stloc.s 6
			// loop start (head: IL_0061)
				IL_0061: ldloc.2
				IL_0062: ldc.i4.s 9
				IL_0064: bge.s IL_006f

				IL_0066: ldsfld uint32[] System.Decimal/DecCalc::s_powers10
				IL_006b: ldloc.2
				IL_006c: ldelem.u4
				IL_006d: br.s IL_0074

				IL_006f: ldc.i4 1000000000

				IL_0074: stloc.s 11
				IL_0076: ldloc.3
				IL_0077: conv.u4
				IL_0078: ldloc.s 11
				IL_007a: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
				IL_007f: stloc.s 12
				IL_0081: ldloc.3
				IL_0082: ldc.i4.s 32
				IL_0084: shr.un
				IL_0085: conv.u4
				IL_0086: ldloc.s 11
				IL_0088: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
				IL_008d: ldloc.s 12
				IL_008f: ldc.i4.s 32
				IL_0091: shr.un
				IL_0092: add
				IL_0093: stloc.s 13
				IL_0095: ldloc.s 12
				IL_0097: conv.u4
				IL_0098: conv.u8
				IL_0099: ldloc.s 13
				IL_009b: ldc.i4.s 32
				IL_009d: shl
				IL_009e: add
				IL_009f: stloc.3
				IL_00a0: ldloc.s 13
				IL_00a2: ldc.i4.s 32
				IL_00a4: shr.un
				IL_00a5: stloc.s 13
				IL_00a7: ldloc.s 13
				IL_00a9: ldloc.s 4
				IL_00ab: ldloc.s 11
				IL_00ad: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
				IL_00b2: add
				IL_00b3: stloc.s 13
				IL_00b5: ldloc.s 13
				IL_00b7: ldc.i4.m1
				IL_00b8: conv.u8
				IL_00b9: ble.un.s IL_00bd

				IL_00bb: ldloc.1
				IL_00bc: ret

				IL_00bd: ldloc.s 13
				IL_00bf: conv.u4
				IL_00c0: stloc.s 4
				IL_00c2: ldloc.2
				IL_00c3: ldc.i4.s 9
				IL_00c5: sub
				IL_00c6: dup
				IL_00c7: stloc.2
				IL_00c8: ldc.i4.0
				IL_00c9: bgt.s IL_0061
			// end loop

			IL_00cb: ldloc.s 4
			IL_00cd: ldloc.s 6
			IL_00cf: sub
			IL_00d0: stloc.s 7
			IL_00d2: ldloc.s 7
			IL_00d4: brfalse.s IL_00e1

			IL_00d6: ldloc.s 7
			IL_00d8: ldloc.s 4
			IL_00da: ble.un.s IL_00df

			IL_00dc: ldloc.1
			IL_00dd: neg
			IL_00de: stloc.1

			IL_00df: ldloc.1
			IL_00e0: ret

			IL_00e1: ldloc.3
			IL_00e2: ldloc.s 5
			IL_00e4: sub
			IL_00e5: stloc.s 8
			IL_00e7: ldloc.s 8
			IL_00e9: brtrue.s IL_00ef

			IL_00eb: ldc.i4.0
			IL_00ec: stloc.1
			IL_00ed: br.s IL_00f7

			IL_00ef: ldloc.s 8
			IL_00f1: ldloc.3
			IL_00f2: ble.un.s IL_00f7

			IL_00f4: ldloc.1
			IL_00f5: neg
			IL_00f6: stloc.1

			IL_00f7: ldloc.1
			IL_00f8: ret
		} // end of method DecCalc::VarDecCmpSub

		.method assembly hidebysig static 
			void VarDecMul (
				valuetype System.Decimal/DecCalc& d1,
				valuetype System.Decimal/DecCalc& d2
			) cil managed 
		{
			// Method begins at RVA 0x46608
			// Code size 956 (0x3bc)
			.maxstack 4
			.locals (
				[0] int32,
				[1] uint64,
				[2] uint32,
				[3] valuetype System.Decimal/DecCalc/Buf24,
				[4] uint32*,
				[5] uint64,
				[6] uint64,
				[7] uint64,
				[8] uint64,
				[9] uint32
			)

			IL_0000: ldarg.0
			IL_0001: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_0006: ldarg.1
			IL_0007: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_000c: add
			IL_000d: ldc.i4.s 16
			IL_000f: shr.un
			IL_0010: conv.u1
			IL_0011: stloc.0
			IL_0012: ldloca.s 3
			IL_0014: call void Internal.Runtime.CompilerServices.Unsafe::SkipInit<valuetype System.Decimal/DecCalc/Buf24>(!!0&)
			IL_0019: ldarg.0
			IL_001a: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_001f: ldarg.0
			IL_0020: call instance uint32 System.Decimal/DecCalc::get_Mid()
			IL_0025: or
			IL_0026: brtrue IL_0148

			IL_002b: ldarg.1
			IL_002c: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_0031: ldarg.1
			IL_0032: call instance uint32 System.Decimal/DecCalc::get_Mid()
			IL_0037: or
			IL_0038: brtrue IL_00c8

			IL_003d: ldarg.0
			IL_003e: call instance uint32 System.Decimal/DecCalc::get_Low()
			IL_0043: ldarg.1
			IL_0044: call instance uint32 System.Decimal/DecCalc::get_Low()
			IL_0049: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_004e: stloc.s 5
			IL_0050: ldloc.0
			IL_0051: ldc.i4.s 28
			IL_0053: ble.s IL_00a1

			IL_0055: ldloc.0
			IL_0056: ldc.i4.s 47
			IL_0058: bgt IL_03b4

			IL_005d: ldloc.0
			IL_005e: ldc.i4.s 29
			IL_0060: sub
			IL_0061: stloc.0
			IL_0062: ldsfld uint64[] System.Decimal/DecCalc::s_ulongPowers10
			IL_0067: ldloc.0
			IL_0068: ldelem.i8
			IL_0069: stloc.s 6
			IL_006b: ldloc.s 5
			IL_006d: ldloc.s 6
			IL_006f: div.un
			IL_0070: stloc.1
			IL_0071: ldloc.s 5
			IL_0073: ldloc.1
			IL_0074: ldloc.s 6
			IL_0076: mul
			IL_0077: sub
			IL_0078: stloc.s 7
			IL_007a: ldloc.1
			IL_007b: stloc.s 5
			IL_007d: ldloc.s 6
			IL_007f: ldc.i4.1
			IL_0080: shr.un
			IL_0081: stloc.s 6
			IL_0083: ldloc.s 7
			IL_0085: ldloc.s 6
			IL_0087: blt.un.s IL_009e

			IL_0089: ldloc.s 7
			IL_008b: ldloc.s 6
			IL_008d: bgt.un.s IL_0097

			IL_008f: ldloc.s 5
			IL_0091: conv.u4
			IL_0092: ldc.i4.1
			IL_0093: and
			IL_0094: ldc.i4.0
			IL_0095: ble.un.s IL_009e

			IL_0097: ldloc.s 5
			IL_0099: ldc.i4.1
			IL_009a: conv.i8
			IL_009b: add
			IL_009c: stloc.s 5

			IL_009e: ldc.i4.s 28
			IL_00a0: stloc.0

			IL_00a1: ldarg.0
			IL_00a2: ldloc.s 5
			IL_00a4: call instance void System.Decimal/DecCalc::set_Low64(uint64)
			IL_00a9: ldarg.0
			IL_00aa: ldarg.1
			IL_00ab: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_00b0: ldarg.0
			IL_00b1: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_00b6: xor
			IL_00b7: ldc.i4 -2147483648
			IL_00bc: and
			IL_00bd: ldloc.0
			IL_00be: ldc.i4.s 16
			IL_00c0: shl
			IL_00c1: or
			IL_00c2: stfld uint32 System.Decimal/DecCalc::uflags
			IL_00c7: ret

			IL_00c8: ldarg.0
			IL_00c9: call instance uint32 System.Decimal/DecCalc::get_Low()
			IL_00ce: ldarg.1
			IL_00cf: call instance uint32 System.Decimal/DecCalc::get_Low()
			IL_00d4: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_00d9: stloc.1
			IL_00da: ldloca.s 3
			IL_00dc: ldloc.1
			IL_00dd: conv.u4
			IL_00de: stfld uint32 System.Decimal/DecCalc/Buf24::U0
			IL_00e3: ldarg.0
			IL_00e4: call instance uint32 System.Decimal/DecCalc::get_Low()
			IL_00e9: ldarg.1
			IL_00ea: call instance uint32 System.Decimal/DecCalc::get_Mid()
			IL_00ef: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_00f4: ldloc.1
			IL_00f5: ldc.i4.s 32
			IL_00f7: shr.un
			IL_00f8: add
			IL_00f9: stloc.1
			IL_00fa: ldloca.s 3
			IL_00fc: ldloc.1
			IL_00fd: conv.u4
			IL_00fe: stfld uint32 System.Decimal/DecCalc/Buf24::U1
			IL_0103: ldloc.1
			IL_0104: ldc.i4.s 32
			IL_0106: shr.un
			IL_0107: stloc.1
			IL_0108: ldarg.1
			IL_0109: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_010e: brfalse.s IL_0138

			IL_0110: ldloc.1
			IL_0111: ldarg.0
			IL_0112: call instance uint32 System.Decimal/DecCalc::get_Low()
			IL_0117: ldarg.1
			IL_0118: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_011d: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_0122: add
			IL_0123: stloc.1
			IL_0124: ldloc.1
			IL_0125: ldc.i4.m1
			IL_0126: conv.u8
			IL_0127: ble.un.s IL_0138

			IL_0129: ldloca.s 3
			IL_012b: ldloc.1
			IL_012c: call instance void System.Decimal/DecCalc/Buf24::set_Mid64(uint64)
			IL_0131: ldc.i4.3
			IL_0132: stloc.2
			IL_0133: br IL_0368

			IL_0138: ldloca.s 3
			IL_013a: ldloc.1
			IL_013b: conv.u4
			IL_013c: stfld uint32 System.Decimal/DecCalc/Buf24::U2
			IL_0141: ldc.i4.2
			IL_0142: stloc.2
			IL_0143: br IL_0350

			IL_0148: ldarg.1
			IL_0149: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_014e: ldarg.1
			IL_014f: call instance uint32 System.Decimal/DecCalc::get_Mid()
			IL_0154: or
			IL_0155: brtrue IL_01da

			IL_015a: ldarg.1
			IL_015b: call instance uint32 System.Decimal/DecCalc::get_Low()
			IL_0160: ldarg.0
			IL_0161: call instance uint32 System.Decimal/DecCalc::get_Low()
			IL_0166: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_016b: stloc.1
			IL_016c: ldloca.s 3
			IL_016e: ldloc.1
			IL_016f: conv.u4
			IL_0170: stfld uint32 System.Decimal/DecCalc/Buf24::U0
			IL_0175: ldarg.1
			IL_0176: call instance uint32 System.Decimal/DecCalc::get_Low()
			IL_017b: ldarg.0
			IL_017c: call instance uint32 System.Decimal/DecCalc::get_Mid()
			IL_0181: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_0186: ldloc.1
			IL_0187: ldc.i4.s 32
			IL_0189: shr.un
			IL_018a: add
			IL_018b: stloc.1
			IL_018c: ldloca.s 3
			IL_018e: ldloc.1
			IL_018f: conv.u4
			IL_0190: stfld uint32 System.Decimal/DecCalc/Buf24::U1
			IL_0195: ldloc.1
			IL_0196: ldc.i4.s 32
			IL_0198: shr.un
			IL_0199: stloc.1
			IL_019a: ldarg.0
			IL_019b: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_01a0: brfalse.s IL_01ca

			IL_01a2: ldloc.1
			IL_01a3: ldarg.1
			IL_01a4: call instance uint32 System.Decimal/DecCalc::get_Low()
			IL_01a9: ldarg.0
			IL_01aa: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_01af: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_01b4: add
			IL_01b5: stloc.1
			IL_01b6: ldloc.1
			IL_01b7: ldc.i4.m1
			IL_01b8: conv.u8
			IL_01b9: ble.un.s IL_01ca

			IL_01bb: ldloca.s 3
			IL_01bd: ldloc.1
			IL_01be: call instance void System.Decimal/DecCalc/Buf24::set_Mid64(uint64)
			IL_01c3: ldc.i4.3
			IL_01c4: stloc.2
			IL_01c5: br IL_0368

			IL_01ca: ldloca.s 3
			IL_01cc: ldloc.1
			IL_01cd: conv.u4
			IL_01ce: stfld uint32 System.Decimal/DecCalc/Buf24::U2
			IL_01d3: ldc.i4.2
			IL_01d4: stloc.2
			IL_01d5: br IL_0350

			IL_01da: ldarg.0
			IL_01db: call instance uint32 System.Decimal/DecCalc::get_Low()
			IL_01e0: ldarg.1
			IL_01e1: call instance uint32 System.Decimal/DecCalc::get_Low()
			IL_01e6: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_01eb: stloc.1
			IL_01ec: ldloca.s 3
			IL_01ee: ldloc.1
			IL_01ef: conv.u4
			IL_01f0: stfld uint32 System.Decimal/DecCalc/Buf24::U0
			IL_01f5: ldarg.0
			IL_01f6: call instance uint32 System.Decimal/DecCalc::get_Low()
			IL_01fb: ldarg.1
			IL_01fc: call instance uint32 System.Decimal/DecCalc::get_Mid()
			IL_0201: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_0206: ldloc.1
			IL_0207: ldc.i4.s 32
			IL_0209: shr.un
			IL_020a: add
			IL_020b: stloc.s 8
			IL_020d: ldarg.0
			IL_020e: call instance uint32 System.Decimal/DecCalc::get_Mid()
			IL_0213: ldarg.1
			IL_0214: call instance uint32 System.Decimal/DecCalc::get_Low()
			IL_0219: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_021e: stloc.1
			IL_021f: ldloc.1
			IL_0220: ldloc.s 8
			IL_0222: add
			IL_0223: stloc.1
			IL_0224: ldloca.s 3
			IL_0226: ldloc.1
			IL_0227: conv.u4
			IL_0228: stfld uint32 System.Decimal/DecCalc/Buf24::U1
			IL_022d: ldloc.1
			IL_022e: ldloc.s 8
			IL_0230: bge.un.s IL_0244

			IL_0232: ldloc.1
			IL_0233: ldc.i4.s 32
			IL_0235: shr.un
			IL_0236: ldc.i8 4294967296
			IL_023f: or
			IL_0240: stloc.s 8
			IL_0242: br.s IL_024a

			IL_0244: ldloc.1
			IL_0245: ldc.i4.s 32
			IL_0247: shr.un
			IL_0248: stloc.s 8

			IL_024a: ldarg.0
			IL_024b: call instance uint32 System.Decimal/DecCalc::get_Mid()
			IL_0250: ldarg.1
			IL_0251: call instance uint32 System.Decimal/DecCalc::get_Mid()
			IL_0256: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_025b: ldloc.s 8
			IL_025d: add
			IL_025e: stloc.1
			IL_025f: ldarg.0
			IL_0260: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_0265: ldarg.1
			IL_0266: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_026b: or
			IL_026c: ldc.i4.0
			IL_026d: ble.un IL_0346

			IL_0272: ldarg.0
			IL_0273: call instance uint32 System.Decimal/DecCalc::get_Low()
			IL_0278: ldarg.1
			IL_0279: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_027e: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_0283: stloc.s 8
			IL_0285: ldloc.1
			IL_0286: ldloc.s 8
			IL_0288: add
			IL_0289: stloc.1
			IL_028a: ldc.i4.0
			IL_028b: stloc.s 9
			IL_028d: ldloc.1
			IL_028e: ldloc.s 8
			IL_0290: bge.un.s IL_0295

			IL_0292: ldc.i4.1
			IL_0293: stloc.s 9

			IL_0295: ldarg.0
			IL_0296: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_029b: ldarg.1
			IL_029c: call instance uint32 System.Decimal/DecCalc::get_Low()
			IL_02a1: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_02a6: stloc.s 8
			IL_02a8: ldloc.1
			IL_02a9: ldloc.s 8
			IL_02ab: add
			IL_02ac: stloc.1
			IL_02ad: ldloca.s 3
			IL_02af: ldloc.1
			IL_02b0: conv.u4
			IL_02b1: stfld uint32 System.Decimal/DecCalc/Buf24::U2
			IL_02b6: ldloc.1
			IL_02b7: ldloc.s 8
			IL_02b9: bge.un.s IL_02c1

			IL_02bb: ldloc.s 9
			IL_02bd: ldc.i4.1
			IL_02be: add
			IL_02bf: stloc.s 9

			IL_02c1: ldloc.s 9
			IL_02c3: conv.u8
			IL_02c4: ldc.i4.s 32
			IL_02c6: shl
			IL_02c7: ldloc.1
			IL_02c8: ldc.i4.s 32
			IL_02ca: shr.un
			IL_02cb: or
			IL_02cc: stloc.s 8
			IL_02ce: ldarg.0
			IL_02cf: call instance uint32 System.Decimal/DecCalc::get_Mid()
			IL_02d4: ldarg.1
			IL_02d5: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_02da: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_02df: stloc.1
			IL_02e0: ldloc.1
			IL_02e1: ldloc.s 8
			IL_02e3: add
			IL_02e4: stloc.1
			IL_02e5: ldc.i4.0
			IL_02e6: stloc.s 9
			IL_02e8: ldloc.1
			IL_02e9: ldloc.s 8
			IL_02eb: bge.un.s IL_02f0

			IL_02ed: ldc.i4.1
			IL_02ee: stloc.s 9

			IL_02f0: ldarg.0
			IL_02f1: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_02f6: ldarg.1
			IL_02f7: call instance uint32 System.Decimal/DecCalc::get_Mid()
			IL_02fc: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_0301: stloc.s 8
			IL_0303: ldloc.1
			IL_0304: ldloc.s 8
			IL_0306: add
			IL_0307: stloc.1
			IL_0308: ldloca.s 3
			IL_030a: ldloc.1
			IL_030b: conv.u4
			IL_030c: stfld uint32 System.Decimal/DecCalc/Buf24::U3
			IL_0311: ldloc.1
			IL_0312: ldloc.s 8
			IL_0314: bge.un.s IL_031c

			IL_0316: ldloc.s 9
			IL_0318: ldc.i4.1
			IL_0319: add
			IL_031a: stloc.s 9

			IL_031c: ldloc.s 9
			IL_031e: conv.u8
			IL_031f: ldc.i4.s 32
			IL_0321: shl
			IL_0322: ldloc.1
			IL_0323: ldc.i4.s 32
			IL_0325: shr.un
			IL_0326: or
			IL_0327: stloc.1
			IL_0328: ldloca.s 3
			IL_032a: ldarg.0
			IL_032b: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_0330: ldarg.1
			IL_0331: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_0336: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_033b: ldloc.1
			IL_033c: add
			IL_033d: call instance void System.Decimal/DecCalc/Buf24::set_High64(uint64)
			IL_0342: ldc.i4.5
			IL_0343: stloc.2
			IL_0344: br.s IL_0350

			IL_0346: ldloca.s 3
			IL_0348: ldloc.1
			IL_0349: call instance void System.Decimal/DecCalc/Buf24::set_Mid64(uint64)
			IL_034e: ldc.i4.3
			IL_034f: stloc.2

			IL_0350: ldloca.s 3
			IL_0352: conv.u
			IL_0353: stloc.s 4
			IL_0355: br.s IL_035e
			// loop start (head: IL_035e)
				IL_0357: ldloc.2
				IL_0358: brfalse.s IL_03b4

				IL_035a: ldloc.2
				IL_035b: ldc.i4.1
				IL_035c: sub
				IL_035d: stloc.2

				IL_035e: ldloc.s 4
				IL_0360: ldloc.2
				IL_0361: conv.i
				IL_0362: ldc.i4.4
				IL_0363: mul
				IL_0364: add
				IL_0365: ldind.u4
				IL_0366: brfalse.s IL_0357
			// end loop

			IL_0368: ldloc.2
			IL_0369: ldc.i4.2
			IL_036a: bgt.un.s IL_0371

			IL_036c: ldloc.0
			IL_036d: ldc.i4.s 28
			IL_036f: ble.s IL_037c

			IL_0371: ldloca.s 3
			IL_0373: conv.u
			IL_0374: ldloc.2
			IL_0375: ldloc.0
			IL_0376: call int32 System.Decimal/DecCalc::ScaleResult(valuetype System.Decimal/DecCalc/Buf24*, uint32, int32)
			IL_037b: stloc.0

			IL_037c: ldarg.0
			IL_037d: ldloca.s 3
			IL_037f: call instance uint64 System.Decimal/DecCalc/Buf24::get_Low64()
			IL_0384: call instance void System.Decimal/DecCalc::set_Low64(uint64)
			IL_0389: ldarg.0
			IL_038a: ldloc.3
			IL_038b: ldfld uint32 System.Decimal/DecCalc/Buf24::U2
			IL_0390: call instance void System.Decimal/DecCalc::set_High(uint32)
			IL_0395: ldarg.0
			IL_0396: ldarg.1
			IL_0397: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_039c: ldarg.0
			IL_039d: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_03a2: xor
			IL_03a3: ldc.i4 -2147483648
			IL_03a8: and
			IL_03a9: ldloc.0
			IL_03aa: ldc.i4.s 16
			IL_03ac: shl
			IL_03ad: or
			IL_03ae: stfld uint32 System.Decimal/DecCalc::uflags
			IL_03b3: ret

			IL_03b4: ldarg.0
			IL_03b5: initobj System.Decimal/DecCalc
			IL_03bb: ret
		} // end of method DecCalc::VarDecMul

		.method assembly hidebysig static 
			void VarDecFromR4 (
				float32 input,
				[out] valuetype System.Decimal/DecCalc& result
			) cil managed 
		{
			// Method begins at RVA 0x469d0
			// Code size 573 (0x23d)
			.maxstack 4
			.locals (
				[0] int32,
				[1] uint32,
				[2] float64,
				[3] int32,
				[4] uint32,
				[5] uint64,
				[6] uint64,
				[7] uint64,
				[8] int32,
				[9] uint32,
				[10] uint32,
				[11] uint32
			)

			IL_0000: ldarg.1
			IL_0001: initobj System.Decimal/DecCalc
			IL_0007: ldarg.0
			IL_0008: call uint32 System.Decimal/DecCalc::GetExponent(float32)
			IL_000d: ldc.i4.s 126
			IL_000f: sub
			IL_0010: stloc.0
			IL_0011: ldloc.0
			IL_0012: ldc.i4.s -94
			IL_0014: bge.s IL_0017

			IL_0016: ret

			IL_0017: ldloc.0
			IL_0018: ldc.i4.s 96
			IL_001a: ble.s IL_0023

			IL_001c: ldc.i4.s 15
			IL_001e: call void System.Number::ThrowOverflowException(valuetype System.TypeCode)

			IL_0023: ldc.i4.0
			IL_0024: stloc.1
			IL_0025: ldarg.0
			IL_0026: ldc.r4 0.0
			IL_002b: bge.un.s IL_0037

			IL_002d: ldarg.0
			IL_002e: neg
			IL_002f: starg.s input
			IL_0031: ldc.i4 -2147483648
			IL_0036: stloc.1

			IL_0037: ldarg.0
			IL_0038: conv.r8
			IL_0039: stloc.2
			IL_003a: ldc.i4.6
			IL_003b: ldloc.0
			IL_003c: ldc.i4 19728
			IL_0041: mul
			IL_0042: ldc.i4.s 16
			IL_0044: shr
			IL_0045: sub
			IL_0046: stloc.3
			IL_0047: ldloc.3
			IL_0048: ldc.i4.0
			IL_0049: blt.s IL_005f

			IL_004b: ldloc.3
			IL_004c: ldc.i4.s 28
			IL_004e: ble.s IL_0053

			IL_0050: ldc.i4.s 28
			IL_0052: stloc.3

			IL_0053: ldloc.2
			IL_0054: ldsfld float64[] System.Decimal/DecCalc::s_doublePowers10
			IL_0059: ldloc.3
			IL_005a: ldelem.r8
			IL_005b: mul
			IL_005c: stloc.2
			IL_005d: br.s IL_007e

			IL_005f: ldloc.3
			IL_0060: ldc.i4.m1
			IL_0061: bne.un.s IL_006f

			IL_0063: ldloc.2
			IL_0064: ldc.r8 10000000
			IL_006d: blt.un.s IL_007c

			IL_006f: ldloc.2
			IL_0070: ldsfld float64[] System.Decimal/DecCalc::s_doublePowers10
			IL_0075: ldloc.3
			IL_0076: neg
			IL_0077: ldelem.r8
			IL_0078: div
			IL_0079: stloc.2
			IL_007a: br.s IL_007e

			IL_007c: ldc.i4.0
			IL_007d: stloc.3

			IL_007e: ldloc.2
			IL_007f: ldc.r8 1000000
			IL_0088: bge.un.s IL_009f

			IL_008a: ldloc.3
			IL_008b: ldc.i4.s 28
			IL_008d: bge.s IL_009f

			IL_008f: ldloc.2
			IL_0090: ldc.r8 10
			IL_0099: mul
			IL_009a: stloc.2
			IL_009b: ldloc.3
			IL_009c: ldc.i4.1
			IL_009d: add
			IL_009e: stloc.3

			IL_009f: call bool System.Runtime.Intrinsics.X86.Sse41::get_IsSupported()
			IL_00a4: brfalse.s IL_00b1

			IL_00a6: ldloc.2
			IL_00a7: call float64 System.Math::Round(float64)
			IL_00ac: conv.i4
			IL_00ad: stloc.s 4
			IL_00af: br.s IL_00df

			IL_00b1: ldloc.2
			IL_00b2: conv.i4
			IL_00b3: stloc.s 4
			IL_00b5: ldloc.2
			IL_00b6: ldloc.s 4
			IL_00b8: conv.r8
			IL_00b9: sub
			IL_00ba: stloc.2
			IL_00bb: ldloc.2
			IL_00bc: ldc.r8 0.5
			IL_00c5: bgt.s IL_00d9

			IL_00c7: ldloc.2
			IL_00c8: ldc.r8 0.5
			IL_00d1: bne.un.s IL_00df

			IL_00d3: ldloc.s 4
			IL_00d5: ldc.i4.1
			IL_00d6: and
			IL_00d7: brfalse.s IL_00df

			IL_00d9: ldloc.s 4
			IL_00db: ldc.i4.1
			IL_00dc: add
			IL_00dd: stloc.s 4

			IL_00df: ldloc.s 4
			IL_00e1: brtrue.s IL_00e4

			IL_00e3: ret

			IL_00e4: ldloc.3
			IL_00e5: ldc.i4.0
			IL_00e6: bge IL_019f

			IL_00eb: ldloc.3
			IL_00ec: neg
			IL_00ed: stloc.3
			IL_00ee: ldloc.3
			IL_00ef: ldc.i4.s 10
			IL_00f1: bge.s IL_010c

			IL_00f3: ldarg.1
			IL_00f4: ldloc.s 4
			IL_00f6: ldsfld uint32[] System.Decimal/DecCalc::s_powers10
			IL_00fb: ldloc.3
			IL_00fc: ldelem.u4
			IL_00fd: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_0102: call instance void System.Decimal/DecCalc::set_Low64(uint64)
			IL_0107: br IL_0235

			IL_010c: ldloc.3
			IL_010d: ldc.i4.s 18
			IL_010f: ble.s IL_013a

			IL_0111: ldloc.s 4
			IL_0113: ldsfld uint32[] System.Decimal/DecCalc::s_powers10
			IL_0118: ldloc.3
			IL_0119: ldc.i4.s 18
			IL_011b: sub
			IL_011c: ldelem.u4
			IL_011d: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_0122: stloc.s 5
			IL_0124: ldloc.s 5
			IL_0126: ldc.i8 1000000000000000000
			IL_012f: ldarg.1
			IL_0130: call void System.Decimal/DecCalc::UInt64x64To128(uint64, uint64, valuetype System.Decimal/DecCalc&)
			IL_0135: br IL_0235

			IL_013a: ldloc.s 4
			IL_013c: ldsfld uint32[] System.Decimal/DecCalc::s_powers10
			IL_0141: ldloc.3
			IL_0142: ldc.i4.s 9
			IL_0144: sub
			IL_0145: ldelem.u4
			IL_0146: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_014b: stloc.s 6
			IL_014d: ldc.i4 1000000000
			IL_0152: ldloc.s 6
			IL_0154: ldc.i4.s 32
			IL_0156: shr.un
			IL_0157: conv.u4
			IL_0158: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_015d: stloc.s 7
			IL_015f: ldc.i4 1000000000
			IL_0164: ldloc.s 6
			IL_0166: conv.u4
			IL_0167: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_016c: stloc.s 6
			IL_016e: ldarg.1
			IL_016f: ldloc.s 6
			IL_0171: conv.u4
			IL_0172: call instance void System.Decimal/DecCalc::set_Low(uint32)
			IL_0177: ldloc.s 7
			IL_0179: ldloc.s 6
			IL_017b: ldc.i4.s 32
			IL_017d: shr.un
			IL_017e: add
			IL_017f: stloc.s 7
			IL_0181: ldarg.1
			IL_0182: ldloc.s 7
			IL_0184: conv.u4
			IL_0185: call instance void System.Decimal/DecCalc::set_Mid(uint32)
			IL_018a: ldloc.s 7
			IL_018c: ldc.i4.s 32
			IL_018e: shr.un
			IL_018f: stloc.s 7
			IL_0191: ldarg.1
			IL_0192: ldloc.s 7
			IL_0194: conv.u4
			IL_0195: call instance void System.Decimal/DecCalc::set_High(uint32)
			IL_019a: br IL_0235

			IL_019f: ldloc.3
			IL_01a0: stloc.s 8
			IL_01a2: ldloc.s 8
			IL_01a4: ldc.i4.6
			IL_01a5: ble.s IL_01aa

			IL_01a7: ldc.i4.6
			IL_01a8: stloc.s 8

			IL_01aa: ldloc.s 4
			IL_01ac: ldc.i4.s 15
			IL_01ae: and
			IL_01af: brtrue.s IL_01da

			IL_01b1: ldloc.s 8
			IL_01b3: ldc.i4.4
			IL_01b4: blt.s IL_01da

			IL_01b6: ldloc.s 4
			IL_01b8: ldc.i4 10000
			IL_01bd: div.un
			IL_01be: stloc.s 9
			IL_01c0: ldloc.s 4
			IL_01c2: ldloc.s 9
			IL_01c4: ldc.i4 10000
			IL_01c9: mul
			IL_01ca: bne.un.s IL_01da

			IL_01cc: ldloc.s 9
			IL_01ce: stloc.s 4
			IL_01d0: ldloc.3
			IL_01d1: ldc.i4.4
			IL_01d2: sub
			IL_01d3: stloc.3
			IL_01d4: ldloc.s 8
			IL_01d6: ldc.i4.4
			IL_01d7: sub
			IL_01d8: stloc.s 8

			IL_01da: ldloc.s 4
			IL_01dc: ldc.i4.3
			IL_01dd: and
			IL_01de: brtrue.s IL_0203

			IL_01e0: ldloc.s 8
			IL_01e2: ldc.i4.2
			IL_01e3: blt.s IL_0203

			IL_01e5: ldloc.s 4
			IL_01e7: ldc.i4.s 100
			IL_01e9: div.un
			IL_01ea: stloc.s 10
			IL_01ec: ldloc.s 4
			IL_01ee: ldloc.s 10
			IL_01f0: ldc.i4.s 100
			IL_01f2: mul
			IL_01f3: bne.un.s IL_0203

			IL_01f5: ldloc.s 10
			IL_01f7: stloc.s 4
			IL_01f9: ldloc.3
			IL_01fa: ldc.i4.2
			IL_01fb: sub
			IL_01fc: stloc.3
			IL_01fd: ldloc.s 8
			IL_01ff: ldc.i4.2
			IL_0200: sub
			IL_0201: stloc.s 8

			IL_0203: ldloc.s 4
			IL_0205: ldc.i4.1
			IL_0206: and
			IL_0207: brtrue.s IL_0226

			IL_0209: ldloc.s 8
			IL_020b: ldc.i4.1
			IL_020c: blt.s IL_0226

			IL_020e: ldloc.s 4
			IL_0210: ldc.i4.s 10
			IL_0212: div.un
			IL_0213: stloc.s 11
			IL_0215: ldloc.s 4
			IL_0217: ldloc.s 11
			IL_0219: ldc.i4.s 10
			IL_021b: mul
			IL_021c: bne.un.s IL_0226

			IL_021e: ldloc.s 11
			IL_0220: stloc.s 4
			IL_0222: ldloc.3
			IL_0223: ldc.i4.1
			IL_0224: sub
			IL_0225: stloc.3

			IL_0226: ldloc.1
			IL_0227: ldloc.3
			IL_0228: ldc.i4.s 16
			IL_022a: shl
			IL_022b: or
			IL_022c: stloc.1
			IL_022d: ldarg.1
			IL_022e: ldloc.s 4
			IL_0230: call instance void System.Decimal/DecCalc::set_Low(uint32)

			IL_0235: ldarg.1
			IL_0236: ldloc.1
			IL_0237: stfld uint32 System.Decimal/DecCalc::uflags
			IL_023c: ret
		} // end of method DecCalc::VarDecFromR4

		.method assembly hidebysig static 
			void VarDecFromR8 (
				float64 input,
				[out] valuetype System.Decimal/DecCalc& result
			) cil managed 
		{
			// Method begins at RVA 0x46c1c
			// Code size 581 (0x245)
			.maxstack 4
			.locals (
				[0] int32,
				[1] uint32,
				[2] float64,
				[3] int32,
				[4] uint64,
				[5] uint32,
				[6] uint64,
				[7] uint64,
				[8] int32,
				[9] uint64,
				[10] uint64,
				[11] uint64,
				[12] uint64
			)

			IL_0000: ldarg.1
			IL_0001: initobj System.Decimal/DecCalc
			IL_0007: ldarg.0
			IL_0008: call uint32 System.Decimal/DecCalc::GetExponent(float64)
			IL_000d: ldc.i4 1022
			IL_0012: sub
			IL_0013: stloc.0
			IL_0014: ldloc.0
			IL_0015: ldc.i4.s -94
			IL_0017: bge.s IL_001a

			IL_0019: ret

			IL_001a: ldloc.0
			IL_001b: ldc.i4.s 96
			IL_001d: ble.s IL_0026

			IL_001f: ldc.i4.s 15
			IL_0021: call void System.Number::ThrowOverflowException(valuetype System.TypeCode)

			IL_0026: ldc.i4.0
			IL_0027: stloc.1
			IL_0028: ldarg.0
			IL_0029: ldc.r8 0.0
			IL_0032: bge.un.s IL_003e

			IL_0034: ldarg.0
			IL_0035: neg
			IL_0036: starg.s input
			IL_0038: ldc.i4 -2147483648
			IL_003d: stloc.1

			IL_003e: ldarg.0
			IL_003f: stloc.2
			IL_0040: ldc.i4.s 14
			IL_0042: ldloc.0
			IL_0043: ldc.i4 19728
			IL_0048: mul
			IL_0049: ldc.i4.s 16
			IL_004b: shr
			IL_004c: sub
			IL_004d: stloc.3
			IL_004e: ldloc.3
			IL_004f: ldc.i4.0
			IL_0050: blt.s IL_0066

			IL_0052: ldloc.3
			IL_0053: ldc.i4.s 28
			IL_0055: ble.s IL_005a

			IL_0057: ldc.i4.s 28
			IL_0059: stloc.3

			IL_005a: ldloc.2
			IL_005b: ldsfld float64[] System.Decimal/DecCalc::s_doublePowers10
			IL_0060: ldloc.3
			IL_0061: ldelem.r8
			IL_0062: mul
			IL_0063: stloc.2
			IL_0064: br.s IL_0085

			IL_0066: ldloc.3
			IL_0067: ldc.i4.m1
			IL_0068: bne.un.s IL_0076

			IL_006a: ldloc.2
			IL_006b: ldc.r8 1000000000000000
			IL_0074: blt.un.s IL_0083

			IL_0076: ldloc.2
			IL_0077: ldsfld float64[] System.Decimal/DecCalc::s_doublePowers10
			IL_007c: ldloc.3
			IL_007d: neg
			IL_007e: ldelem.r8
			IL_007f: div
			IL_0080: stloc.2
			IL_0081: br.s IL_0085

			IL_0083: ldc.i4.0
			IL_0084: stloc.3

			IL_0085: ldloc.2
			IL_0086: ldc.r8 100000000000000
			IL_008f: bge.un.s IL_00a6

			IL_0091: ldloc.3
			IL_0092: ldc.i4.s 28
			IL_0094: bge.s IL_00a6

			IL_0096: ldloc.2
			IL_0097: ldc.r8 10
			IL_00a0: mul
			IL_00a1: stloc.2
			IL_00a2: ldloc.3
			IL_00a3: ldc.i4.1
			IL_00a4: add
			IL_00a5: stloc.3

			IL_00a6: call bool System.Runtime.Intrinsics.X86.Sse41::get_IsSupported()
			IL_00ab: brfalse.s IL_00b8

			IL_00ad: ldloc.2
			IL_00ae: call float64 System.Math::Round(float64)
			IL_00b3: conv.i8
			IL_00b4: stloc.s 4
			IL_00b6: br.s IL_00e8

			IL_00b8: ldloc.2
			IL_00b9: conv.i8
			IL_00ba: stloc.s 4
			IL_00bc: ldloc.2
			IL_00bd: ldloc.s 4
			IL_00bf: conv.r8
			IL_00c0: sub
			IL_00c1: stloc.2
			IL_00c2: ldloc.2
			IL_00c3: ldc.r8 0.5
			IL_00cc: bgt.s IL_00e1

			IL_00ce: ldloc.2
			IL_00cf: ldc.r8 0.5
			IL_00d8: bne.un.s IL_00e8

			IL_00da: ldloc.s 4
			IL_00dc: ldc.i4.1
			IL_00dd: conv.i8
			IL_00de: and
			IL_00df: brfalse.s IL_00e8

			IL_00e1: ldloc.s 4
			IL_00e3: ldc.i4.1
			IL_00e4: conv.i8
			IL_00e5: add
			IL_00e6: stloc.s 4

			IL_00e8: ldloc.s 4
			IL_00ea: brtrue.s IL_00ed

			IL_00ec: ret

			IL_00ed: ldloc.3
			IL_00ee: ldc.i4.0
			IL_00ef: bge.s IL_0164

			IL_00f1: ldloc.3
			IL_00f2: neg
			IL_00f3: stloc.3
			IL_00f4: ldloc.3
			IL_00f5: ldc.i4.s 10
			IL_00f7: bge.s IL_014e

			IL_00f9: ldsfld uint32[] System.Decimal/DecCalc::s_powers10
			IL_00fe: ldloc.3
			IL_00ff: ldelem.u4
			IL_0100: stloc.s 5
			IL_0102: ldloc.s 4
			IL_0104: conv.u4
			IL_0105: ldloc.s 5
			IL_0107: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_010c: stloc.s 6
			IL_010e: ldloc.s 4
			IL_0110: ldc.i4.s 32
			IL_0112: shr.un
			IL_0113: conv.u4
			IL_0114: ldloc.s 5
			IL_0116: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
			IL_011b: stloc.s 7
			IL_011d: ldarg.1
			IL_011e: ldloc.s 6
			IL_0120: conv.u4
			IL_0121: call instance void System.Decimal/DecCalc::set_Low(uint32)
			IL_0126: ldloc.s 7
			IL_0128: ldloc.s 6
			IL_012a: ldc.i4.s 32
			IL_012c: shr.un
			IL_012d: add
			IL_012e: stloc.s 7
			IL_0130: ldarg.1
			IL_0131: ldloc.s 7
			IL_0133: conv.u4
			IL_0134: call instance void System.Decimal/DecCalc::set_Mid(uint32)
			IL_0139: ldloc.s 7
			IL_013b: ldc.i4.s 32
			IL_013d: shr.un
			IL_013e: stloc.s 7
			IL_0140: ldarg.1
			IL_0141: ldloc.s 7
			IL_0143: conv.u4
			IL_0144: call instance void System.Decimal/DecCalc::set_High(uint32)
			IL_0149: br IL_023d

			IL_014e: ldloc.s 4
			IL_0150: ldsfld uint64[] System.Decimal/DecCalc::s_ulongPowers10
			IL_0155: ldloc.3
			IL_0156: ldc.i4.1
			IL_0157: sub
			IL_0158: ldelem.i8
			IL_0159: ldarg.1
			IL_015a: call void System.Decimal/DecCalc::UInt64x64To128(uint64, uint64, valuetype System.Decimal/DecCalc&)
			IL_015f: br IL_023d

			IL_0164: ldloc.3
			IL_0165: stloc.s 8
			IL_0167: ldloc.s 8
			IL_0169: ldc.i4.s 14
			IL_016b: ble.s IL_0171

			IL_016d: ldc.i4.s 14
			IL_016f: stloc.s 8

			IL_0171: ldloc.s 4
			IL_0173: conv.u1
			IL_0174: brtrue.s IL_01a3

			IL_0176: ldloc.s 8
			IL_0178: ldc.i4.8
			IL_0179: blt.s IL_01a3

			IL_017b: ldloc.s 4
			IL_017d: ldc.i4 100000000
			IL_0182: conv.i8
			IL_0183: div.un
			IL_0184: stloc.s 9
			IL_0186: ldloc.s 4
			IL_0188: conv.u4
			IL_0189: ldloc.s 9
			IL_018b: ldc.i4 100000000
			IL_0190: conv.i8
			IL_0191: mul
			IL_0192: conv.u4
			IL_0193: bne.un.s IL_01a3

			IL_0195: ldloc.s 9
			IL_0197: stloc.s 4
			IL_0199: ldloc.3
			IL_019a: ldc.i4.8
			IL_019b: sub
			IL_019c: stloc.3
			IL_019d: ldloc.s 8
			IL_019f: ldc.i4.8
			IL_01a0: sub
			IL_01a1: stloc.s 8

			IL_01a3: ldloc.s 4
			IL_01a5: conv.u4
			IL_01a6: ldc.i4.s 15
			IL_01a8: and
			IL_01a9: brtrue.s IL_01d8

			IL_01ab: ldloc.s 8
			IL_01ad: ldc.i4.4
			IL_01ae: blt.s IL_01d8

			IL_01b0: ldloc.s 4
			IL_01b2: ldc.i4 10000
			IL_01b7: conv.i8
			IL_01b8: div.un
			IL_01b9: stloc.s 10
			IL_01bb: ldloc.s 4
			IL_01bd: conv.u4
			IL_01be: ldloc.s 10
			IL_01c0: ldc.i4 10000
			IL_01c5: conv.i8
			IL_01c6: mul
			IL_01c7: conv.u4
			IL_01c8: bne.un.s IL_01d8

			IL_01ca: ldloc.s 10
			IL_01cc: stloc.s 4
			IL_01ce: ldloc.3
			IL_01cf: ldc.i4.4
			IL_01d0: sub
			IL_01d1: stloc.3
			IL_01d2: ldloc.s 8
			IL_01d4: ldc.i4.4
			IL_01d5: sub
			IL_01d6: stloc.s 8

			IL_01d8: ldloc.s 4
			IL_01da: conv.u4
			IL_01db: ldc.i4.3
			IL_01dc: and
			IL_01dd: brtrue.s IL_0206

			IL_01df: ldloc.s 8
			IL_01e1: ldc.i4.2
			IL_01e2: blt.s IL_0206

			IL_01e4: ldloc.s 4
			IL_01e6: ldc.i4.s 100
			IL_01e8: conv.i8
			IL_01e9: div.un
			IL_01ea: stloc.s 11
			IL_01ec: ldloc.s 4
			IL_01ee: conv.u4
			IL_01ef: ldloc.s 11
			IL_01f1: ldc.i4.s 100
			IL_01f3: conv.i8
			IL_01f4: mul
			IL_01f5: conv.u4
			IL_01f6: bne.un.s IL_0206

			IL_01f8: ldloc.s 11
			IL_01fa: stloc.s 4
			IL_01fc: ldloc.3
			IL_01fd: ldc.i4.2
			IL_01fe: sub
			IL_01ff: stloc.3
			IL_0200: ldloc.s 8
			IL_0202: ldc.i4.2
			IL_0203: sub
			IL_0204: stloc.s 8

			IL_0206: ldloc.s 4
			IL_0208: conv.u4
			IL_0209: ldc.i4.1
			IL_020a: and
			IL_020b: brtrue.s IL_022e

			IL_020d: ldloc.s 8
			IL_020f: ldc.i4.1
			IL_0210: blt.s IL_022e

			IL_0212: ldloc.s 4
			IL_0214: ldc.i4.s 10
			IL_0216: conv.i8
			IL_0217: div.un
			IL_0218: stloc.s 12
			IL_021a: ldloc.s 4
			IL_021c: conv.u4
			IL_021d: ldloc.s 12
			IL_021f: ldc.i4.s 10
			IL_0221: conv.i8
			IL_0222: mul
			IL_0223: conv.u4
			IL_0224: bne.un.s IL_022e

			IL_0226: ldloc.s 12
			IL_0228: stloc.s 4
			IL_022a: ldloc.3
			IL_022b: ldc.i4.1
			IL_022c: sub
			IL_022d: stloc.3

			IL_022e: ldloc.1
			IL_022f: ldloc.3
			IL_0230: ldc.i4.s 16
			IL_0232: shl
			IL_0233: or
			IL_0234: stloc.1
			IL_0235: ldarg.1
			IL_0236: ldloc.s 4
			IL_0238: call instance void System.Decimal/DecCalc::set_Low64(uint64)

			IL_023d: ldarg.1
			IL_023e: ldloc.1
			IL_023f: stfld uint32 System.Decimal/DecCalc::uflags
			IL_0244: ret
		} // end of method DecCalc::VarDecFromR8

		.method assembly hidebysig static 
			float32 VarR4FromDec (
				[in] valuetype System.Decimal& 'value'
			) cil managed 
		{
			.param [1]
				.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
					01 00 00 00
				)
			// Method begins at RVA 0x46e6d
			// Code size 8 (0x8)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: call float64 System.Decimal/DecCalc::VarR8FromDec(valuetype System.Decimal&)
			IL_0006: conv.r4
			IL_0007: ret
		} // end of method DecCalc::VarR4FromDec

		.method assembly hidebysig static 
			float64 VarR8FromDec (
				[in] valuetype System.Decimal& 'value'
			) cil managed 
		{
			.param [1]
				.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
					01 00 00 00
				)
			// Method begins at RVA 0x46e78
			// Code size 54 (0x36)
			.maxstack 3
			.locals (
				[0] float64
			)

			IL_0000: ldarg.0
			IL_0001: call instance uint64 System.Decimal::get_Low64()
			IL_0006: conv.r.un
			IL_0007: conv.r8
			IL_0008: ldarg.0
			IL_0009: call instance uint32 System.Decimal::get_High()
			IL_000e: conv.r.un
			IL_000f: conv.r8
			IL_0010: ldc.r8 1.8446744073709552E+19
			IL_0019: mul
			IL_001a: add
			IL_001b: ldsfld float64[] System.Decimal/DecCalc::s_doublePowers10
			IL_0020: ldarg.0
			IL_0021: call instance int32 System.Decimal::get_Scale()
			IL_0026: ldelem.r8
			IL_0027: div
			IL_0028: stloc.0
			IL_0029: ldarg.0
			IL_002a: call instance bool System.Decimal::get_IsNegative()
			IL_002f: brfalse.s IL_0034

			IL_0031: ldloc.0
			IL_0032: neg
			IL_0033: stloc.0

			IL_0034: ldloc.0
			IL_0035: ret
		} // end of method DecCalc::VarR8FromDec

		.method assembly hidebysig static 
			int32 GetHashCode (
				[in] valuetype System.Decimal& d
			) cil managed 
		{
			.param [1]
				.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
					01 00 00 00
				)
			// Method begins at RVA 0x46ebc
			// Code size 136 (0x88)
			.maxstack 3
			.locals (
				[0] uint32,
				[1] int32,
				[2] uint32,
				[3] uint64
			)

			IL_0000: ldarg.0
			IL_0001: call instance uint64 System.Decimal::get_Low64()
			IL_0006: ldarg.0
			IL_0007: call instance uint32 System.Decimal::get_High()
			IL_000c: conv.u8
			IL_000d: or
			IL_000e: brtrue.s IL_0012

			IL_0010: ldc.i4.0
			IL_0011: ret

			IL_0012: ldarg.0
			IL_0013: ldfld int32 System.Decimal::_flags
			IL_0018: stloc.0
			IL_0019: ldloc.0
			IL_001a: ldc.i4 16711680
			IL_001f: and
			IL_0020: brfalse.s IL_002c

			IL_0022: ldarg.0
			IL_0023: call instance uint32 System.Decimal::get_Low()
			IL_0028: ldc.i4.1
			IL_0029: and
			IL_002a: brfalse.s IL_0043

			IL_002c: ldloc.0
			IL_002d: ldarg.0
			IL_002e: call instance uint32 System.Decimal::get_High()
			IL_0033: xor
			IL_0034: ldarg.0
			IL_0035: call instance uint32 System.Decimal::get_Mid()
			IL_003a: xor
			IL_003b: ldarg.0
			IL_003c: call instance uint32 System.Decimal::get_Low()
			IL_0041: xor
			IL_0042: ret

			IL_0043: ldloc.0
			IL_0044: ldc.i4.s 16
			IL_0046: shr.un
			IL_0047: conv.u1
			IL_0048: stloc.1
			IL_0049: ldarg.0
			IL_004a: call instance uint32 System.Decimal::get_Low()
			IL_004f: stloc.2
			IL_0050: ldarg.0
			IL_0051: call instance uint32 System.Decimal::get_High()
			IL_0056: conv.u8
			IL_0057: ldc.i4.s 32
			IL_0059: shl
			IL_005a: ldarg.0
			IL_005b: call instance uint32 System.Decimal::get_Mid()
			IL_0060: conv.u8
			IL_0061: or
			IL_0062: stloc.3
			IL_0063: ldloca.s 2
			IL_0065: ldloca.s 3
			IL_0067: ldloca.s 1
			IL_0069: call void System.Decimal/DecCalc::Unscale(uint32&, uint64&, int32&)
			IL_006e: ldloc.0
			IL_006f: ldc.i4 -16711681
			IL_0074: and
			IL_0075: ldloc.1
			IL_0076: ldc.i4.s 16
			IL_0078: shl
			IL_0079: or
			IL_007a: stloc.0
			IL_007b: ldloc.0
			IL_007c: ldloc.3
			IL_007d: ldc.i4.s 32
			IL_007f: shr.un
			IL_0080: conv.u4
			IL_0081: xor
			IL_0082: ldloc.3
			IL_0083: conv.u4
			IL_0084: xor
			IL_0085: ldloc.2
			IL_0086: xor
			IL_0087: ret
		} // end of method DecCalc::GetHashCode

		.method assembly hidebysig static 
			void VarDecDiv (
				valuetype System.Decimal/DecCalc& d1,
				valuetype System.Decimal/DecCalc& d2
			) cil managed 
		{
			// Method begins at RVA 0x46f50
			// Code size 1203 (0x4b3)
			.maxstack 4
			.locals (
				[0] valuetype System.Decimal/DecCalc/Buf12,
				[1] uint32,
				[2] int32,
				[3] int32,
				[4] bool,
				[5] uint32,
				[6] uint32,
				[7] uint32,
				[8] uint64,
				[9] uint32,
				[10] valuetype System.Decimal/DecCalc/Buf16,
				[11] uint64,
				[12] uint64,
				[13] valuetype System.Decimal/DecCalc/Buf12,
				[14] uint32,
				[15] uint64,
				[16] uint64,
				[17] uint32
			)

			IL_0000: ldloca.s 0
			IL_0002: call void Internal.Runtime.CompilerServices.Unsafe::SkipInit<valuetype System.Decimal/DecCalc/Buf12>(!!0&)
			IL_0007: ldarg.0
			IL_0008: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_000d: ldarg.1
			IL_000e: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_0013: sub
			IL_0014: ldc.i4.s 16
			IL_0016: shr.un
			IL_0017: conv.i1
			IL_0018: stloc.3
			IL_0019: ldc.i4.0
			IL_001a: stloc.s 4
			IL_001c: ldarg.1
			IL_001d: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_0022: ldarg.1
			IL_0023: call instance uint32 System.Decimal/DecCalc::get_Mid()
			IL_0028: or
			IL_0029: brtrue IL_011b

			IL_002e: ldarg.1
			IL_002f: call instance uint32 System.Decimal/DecCalc::get_Low()
			IL_0034: stloc.s 6
			IL_0036: ldloc.s 6
			IL_0038: brtrue.s IL_0040

			IL_003a: newobj instance void System.DivideByZeroException::.ctor()
			IL_003f: throw

			IL_0040: ldloca.s 0
			IL_0042: ldarg.0
			IL_0043: call instance uint64 System.Decimal/DecCalc::get_Low64()
			IL_0048: call instance void System.Decimal/DecCalc/Buf12::set_Low64(uint64)
			IL_004d: ldloca.s 0
			IL_004f: ldarg.0
			IL_0050: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_0055: stfld uint32 System.Decimal/DecCalc/Buf12::U2
			IL_005a: ldloca.s 0
			IL_005c: ldloc.s 6
			IL_005e: call uint32 System.Decimal/DecCalc::Div96By32(valuetype System.Decimal/DecCalc/Buf12&, uint32)
			IL_0063: stloc.s 7
			// loop start (head: IL_0065)
				IL_0065: ldloc.s 7
				IL_0067: brtrue.s IL_007c

				IL_0069: ldloc.3
				IL_006a: ldc.i4.0
				IL_006b: bge IL_03f3

				IL_0070: ldc.i4.s 9
				IL_0072: ldloc.3
				IL_0073: neg
				IL_0074: call int32 System.Math::Min(int32, int32)
				IL_0079: stloc.2
				IL_007a: br.s IL_00c3

				IL_007c: ldc.i4.1
				IL_007d: stloc.s 4
				IL_007f: ldloc.3
				IL_0080: ldc.i4.s 28
				IL_0082: beq.s IL_0090

				IL_0084: ldloca.s 0
				IL_0086: ldloc.3
				IL_0087: call int32 System.Decimal/DecCalc::SearchScale(valuetype System.Decimal/DecCalc/Buf12&, int32)
				IL_008c: dup
				IL_008d: stloc.2
				IL_008e: brtrue.s IL_00c3

				IL_0090: ldloc.s 7
				IL_0092: ldc.i4.1
				IL_0093: shl
				IL_0094: stloc.s 5
				IL_0096: ldloc.s 5
				IL_0098: ldloc.s 7
				IL_009a: blt.un IL_046a

				IL_009f: ldloc.s 5
				IL_00a1: ldloc.s 6
				IL_00a3: blt.un IL_03f3

				IL_00a8: ldloc.s 5
				IL_00aa: ldloc.s 6
				IL_00ac: bgt.un IL_046a

				IL_00b1: ldloc.0
				IL_00b2: ldfld uint32 System.Decimal/DecCalc/Buf12::U0
				IL_00b7: ldc.i4.1
				IL_00b8: and
				IL_00b9: brfalse IL_03f3

				IL_00be: br IL_046a

				IL_00c3: ldsfld uint32[] System.Decimal/DecCalc::s_powers10
				IL_00c8: ldloc.2
				IL_00c9: ldelem.u4
				IL_00ca: stloc.1
				IL_00cb: ldloc.3
				IL_00cc: ldloc.2
				IL_00cd: add
				IL_00ce: stloc.3
				IL_00cf: ldloca.s 0
				IL_00d1: ldloc.1
				IL_00d2: call uint32 System.Decimal/DecCalc::IncreaseScale(valuetype System.Decimal/DecCalc/Buf12&, uint32)
				IL_00d7: brtrue IL_04ab

				IL_00dc: ldloc.s 7
				IL_00de: ldloc.1
				IL_00df: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
				IL_00e4: stloc.s 8
				IL_00e6: ldloc.s 8
				IL_00e8: ldloc.s 6
				IL_00ea: conv.u8
				IL_00eb: div.un
				IL_00ec: conv.u4
				IL_00ed: stloc.s 9
				IL_00ef: ldloc.s 8
				IL_00f1: conv.u4
				IL_00f2: ldloc.s 9
				IL_00f4: ldloc.s 6
				IL_00f6: mul
				IL_00f7: sub
				IL_00f8: stloc.s 7
				IL_00fa: ldloca.s 0
				IL_00fc: ldloc.s 9
				IL_00fe: call bool System.Decimal/DecCalc::Add32To96(valuetype System.Decimal/DecCalc/Buf12&, uint32)
				IL_0103: brtrue IL_0065
			// end loop
			IL_0108: ldloca.s 0
			IL_010a: ldloc.3
			IL_010b: ldloc.s 7
			IL_010d: ldc.i4.0
			IL_010e: cgt.un
			IL_0110: call int32 System.Decimal/DecCalc::OverflowUnscale(valuetype System.Decimal/DecCalc/Buf12&, int32, bool)
			IL_0115: stloc.3
			IL_0116: br IL_03f3

			IL_011b: ldarg.1
			IL_011c: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_0121: stloc.s 5
			IL_0123: ldloc.s 5
			IL_0125: brtrue.s IL_012f

			IL_0127: ldarg.1
			IL_0128: call instance uint32 System.Decimal/DecCalc::get_Mid()
			IL_012d: stloc.s 5

			IL_012f: ldloc.s 5
			IL_0131: call int32 System.Numerics.BitOperations::LeadingZeroCount(uint32)
			IL_0136: stloc.2
			IL_0137: ldloca.s 10
			IL_0139: call void Internal.Runtime.CompilerServices.Unsafe::SkipInit<valuetype System.Decimal/DecCalc/Buf16>(!!0&)
			IL_013e: ldloca.s 10
			IL_0140: ldarg.0
			IL_0141: call instance uint64 System.Decimal/DecCalc::get_Low64()
			IL_0146: ldloc.2
			IL_0147: ldc.i4.s 63
			IL_0149: and
			IL_014a: shl
			IL_014b: call instance void System.Decimal/DecCalc/Buf16::set_Low64(uint64)
			IL_0150: ldloca.s 10
			IL_0152: ldarg.0
			IL_0153: call instance uint32 System.Decimal/DecCalc::get_Mid()
			IL_0158: conv.u8
			IL_0159: ldarg.0
			IL_015a: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_015f: conv.u8
			IL_0160: ldc.i4.s 32
			IL_0162: shl
			IL_0163: add
			IL_0164: ldc.i4.s 32
			IL_0166: ldloc.2
			IL_0167: sub
			IL_0168: ldc.i4.s 63
			IL_016a: and
			IL_016b: shr.un
			IL_016c: call instance void System.Decimal/DecCalc/Buf16::set_High64(uint64)
			IL_0171: ldarg.1
			IL_0172: call instance uint64 System.Decimal/DecCalc::get_Low64()
			IL_0177: ldloc.2
			IL_0178: ldc.i4.s 63
			IL_017a: and
			IL_017b: shl
			IL_017c: stloc.s 11
			IL_017e: ldarg.1
			IL_017f: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_0184: brtrue IL_0278

			IL_0189: ldloca.s 0
			IL_018b: ldc.i4.0
			IL_018c: stfld uint32 System.Decimal/DecCalc/Buf12::U2
			IL_0191: ldloca.s 0
			IL_0193: ldloca.s 10
			IL_0195: ldflda uint32 System.Decimal/DecCalc/Buf16::U1
			IL_019a: conv.u
			IL_019b: ldloc.s 11
			IL_019d: call uint32 System.Decimal/DecCalc::Div96By64(valuetype System.Decimal/DecCalc/Buf12&, uint64)
			IL_01a2: stfld uint32 System.Decimal/DecCalc/Buf12::U1
			IL_01a7: ldloca.s 0
			IL_01a9: ldloca.s 10
			IL_01ab: conv.u
			IL_01ac: ldloc.s 11
			IL_01ae: call uint32 System.Decimal/DecCalc::Div96By64(valuetype System.Decimal/DecCalc/Buf12&, uint64)
			IL_01b3: stfld uint32 System.Decimal/DecCalc/Buf12::U0
			// loop start (head: IL_01b8)
				IL_01b8: ldloca.s 10
				IL_01ba: call instance uint64 System.Decimal/DecCalc/Buf16::get_Low64()
				IL_01bf: brtrue.s IL_01d4

				IL_01c1: ldloc.3
				IL_01c2: ldc.i4.0
				IL_01c3: bge IL_03f3

				IL_01c8: ldc.i4.s 9
				IL_01ca: ldloc.3
				IL_01cb: neg
				IL_01cc: call int32 System.Math::Min(int32, int32)
				IL_01d1: stloc.2
				IL_01d2: br.s IL_0223

				IL_01d4: ldc.i4.1
				IL_01d5: stloc.s 4
				IL_01d7: ldloc.3
				IL_01d8: ldc.i4.s 28
				IL_01da: beq.s IL_01e8

				IL_01dc: ldloca.s 0
				IL_01de: ldloc.3
				IL_01df: call int32 System.Decimal/DecCalc::SearchScale(valuetype System.Decimal/DecCalc/Buf12&, int32)
				IL_01e4: dup
				IL_01e5: stloc.2
				IL_01e6: brtrue.s IL_0223

				IL_01e8: ldloca.s 10
				IL_01ea: call instance uint64 System.Decimal/DecCalc/Buf16::get_Low64()
				IL_01ef: stloc.s 12
				IL_01f1: ldloc.s 12
				IL_01f3: ldc.i4.0
				IL_01f4: conv.i8
				IL_01f5: blt IL_046a

				IL_01fa: ldloc.s 12
				IL_01fc: ldc.i4.1
				IL_01fd: shl
				IL_01fe: dup
				IL_01ff: stloc.s 12
				IL_0201: ldloc.s 11
				IL_0203: bgt.un IL_046a

				IL_0208: ldloc.s 12
				IL_020a: ldloc.s 11
				IL_020c: bne.un IL_03f3

				IL_0211: ldloc.0
				IL_0212: ldfld uint32 System.Decimal/DecCalc/Buf12::U0
				IL_0217: ldc.i4.1
				IL_0218: and
				IL_0219: brfalse IL_03f3

				IL_021e: br IL_046a

				IL_0223: ldsfld uint32[] System.Decimal/DecCalc::s_powers10
				IL_0228: ldloc.2
				IL_0229: ldelem.u4
				IL_022a: stloc.1
				IL_022b: ldloc.3
				IL_022c: ldloc.2
				IL_022d: add
				IL_022e: stloc.3
				IL_022f: ldloca.s 0
				IL_0231: ldloc.1
				IL_0232: call uint32 System.Decimal/DecCalc::IncreaseScale(valuetype System.Decimal/DecCalc/Buf12&, uint32)
				IL_0237: brtrue IL_04ab

				IL_023c: ldloca.s 10
				IL_023e: conv.u
				IL_023f: ldloc.1
				IL_0240: call void System.Decimal/DecCalc::IncreaseScale64(valuetype System.Decimal/DecCalc/Buf12&, uint32)
				IL_0245: ldloca.s 10
				IL_0247: conv.u
				IL_0248: ldloc.s 11
				IL_024a: call uint32 System.Decimal/DecCalc::Div96By64(valuetype System.Decimal/DecCalc/Buf12&, uint64)
				IL_024f: stloc.s 5
				IL_0251: ldloca.s 0
				IL_0253: ldloc.s 5
				IL_0255: call bool System.Decimal/DecCalc::Add32To96(valuetype System.Decimal/DecCalc/Buf12&, uint32)
				IL_025a: brtrue IL_01b8
			// end loop
			IL_025f: ldloca.s 0
			IL_0261: ldloc.3
			IL_0262: ldloca.s 10
			IL_0264: call instance uint64 System.Decimal/DecCalc/Buf16::get_Low64()
			IL_0269: ldc.i4.0
			IL_026a: conv.i8
			IL_026b: cgt.un
			IL_026d: call int32 System.Decimal/DecCalc::OverflowUnscale(valuetype System.Decimal/DecCalc/Buf12&, int32, bool)
			IL_0272: stloc.3
			IL_0273: br IL_03f3

			IL_0278: ldloca.s 13
			IL_027a: call void Internal.Runtime.CompilerServices.Unsafe::SkipInit<valuetype System.Decimal/DecCalc/Buf12>(!!0&)
			IL_027f: ldloca.s 13
			IL_0281: ldloc.s 11
			IL_0283: call instance void System.Decimal/DecCalc/Buf12::set_Low64(uint64)
			IL_0288: ldloca.s 13
			IL_028a: ldarg.1
			IL_028b: call instance uint32 System.Decimal/DecCalc::get_Mid()
			IL_0290: conv.u8
			IL_0291: ldarg.1
			IL_0292: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_0297: conv.u8
			IL_0298: ldc.i4.s 32
			IL_029a: shl
			IL_029b: add
			IL_029c: ldc.i4.s 32
			IL_029e: ldloc.2
			IL_029f: sub
			IL_02a0: ldc.i4.s 63
			IL_02a2: and
			IL_02a3: shr.un
			IL_02a4: conv.u4
			IL_02a5: stfld uint32 System.Decimal/DecCalc/Buf12::U2
			IL_02aa: ldloca.s 0
			IL_02ac: ldloca.s 10
			IL_02ae: ldloca.s 13
			IL_02b0: call uint32 System.Decimal/DecCalc::Div128By96(valuetype System.Decimal/DecCalc/Buf16&, valuetype System.Decimal/DecCalc/Buf12&)
			IL_02b5: conv.u8
			IL_02b6: call instance void System.Decimal/DecCalc/Buf12::set_Low64(uint64)
			IL_02bb: ldloca.s 0
			IL_02bd: ldc.i4.0
			IL_02be: stfld uint32 System.Decimal/DecCalc/Buf12::U2
			// loop start (head: IL_02c3)
				IL_02c3: ldloca.s 10
				IL_02c5: call instance uint64 System.Decimal/DecCalc/Buf16::get_Low64()
				IL_02ca: ldloc.s 10
				IL_02cc: ldfld uint32 System.Decimal/DecCalc/Buf16::U2
				IL_02d1: conv.u8
				IL_02d2: or
				IL_02d3: brtrue.s IL_02eb

				IL_02d5: ldloc.3
				IL_02d6: ldc.i4.0
				IL_02d7: bge IL_03f3

				IL_02dc: ldc.i4.s 9
				IL_02de: ldloc.3
				IL_02df: neg
				IL_02e0: call int32 System.Math::Min(int32, int32)
				IL_02e5: stloc.2
				IL_02e6: br IL_0395

				IL_02eb: ldc.i4.1
				IL_02ec: stloc.s 4
				IL_02ee: ldloc.3
				IL_02ef: ldc.i4.s 28
				IL_02f1: beq.s IL_0302

				IL_02f3: ldloca.s 0
				IL_02f5: ldloc.3
				IL_02f6: call int32 System.Decimal/DecCalc::SearchScale(valuetype System.Decimal/DecCalc/Buf12&, int32)
				IL_02fb: dup
				IL_02fc: stloc.2
				IL_02fd: brtrue IL_0395

				IL_0302: ldloc.s 10
				IL_0304: ldfld uint32 System.Decimal/DecCalc/Buf16::U2
				IL_0309: ldc.i4.0
				IL_030a: blt IL_046a

				IL_030f: ldloc.s 10
				IL_0311: ldfld uint32 System.Decimal/DecCalc/Buf16::U1
				IL_0316: ldc.i4.s 31
				IL_0318: shr.un
				IL_0319: stloc.s 5
				IL_031b: ldloca.s 10
				IL_031d: dup
				IL_031e: call instance uint64 System.Decimal/DecCalc/Buf16::get_Low64()
				IL_0323: ldc.i4.1
				IL_0324: shl
				IL_0325: call instance void System.Decimal/DecCalc/Buf16::set_Low64(uint64)
				IL_032a: ldloca.s 10
				IL_032c: ldloc.s 10
				IL_032e: ldfld uint32 System.Decimal/DecCalc/Buf16::U2
				IL_0333: ldc.i4.1
				IL_0334: shl
				IL_0335: ldloc.s 5
				IL_0337: add
				IL_0338: stfld uint32 System.Decimal/DecCalc/Buf16::U2
				IL_033d: ldloc.s 10
				IL_033f: ldfld uint32 System.Decimal/DecCalc/Buf16::U2
				IL_0344: ldloc.s 13
				IL_0346: ldfld uint32 System.Decimal/DecCalc/Buf12::U2
				IL_034b: bgt.un IL_046a

				IL_0350: ldloc.s 10
				IL_0352: ldfld uint32 System.Decimal/DecCalc/Buf16::U2
				IL_0357: ldloc.s 13
				IL_0359: ldfld uint32 System.Decimal/DecCalc/Buf12::U2
				IL_035e: bne.un IL_03f3

				IL_0363: ldloca.s 10
				IL_0365: call instance uint64 System.Decimal/DecCalc/Buf16::get_Low64()
				IL_036a: ldloca.s 13
				IL_036c: call instance uint64 System.Decimal/DecCalc/Buf12::get_Low64()
				IL_0371: bgt.un IL_046a

				IL_0376: ldloca.s 10
				IL_0378: call instance uint64 System.Decimal/DecCalc/Buf16::get_Low64()
				IL_037d: ldloca.s 13
				IL_037f: call instance uint64 System.Decimal/DecCalc/Buf12::get_Low64()
				IL_0384: bne.un.s IL_03f3

				IL_0386: ldloc.0
				IL_0387: ldfld uint32 System.Decimal/DecCalc/Buf12::U0
				IL_038c: ldc.i4.1
				IL_038d: and
				IL_038e: brfalse.s IL_03f3

				IL_0390: br IL_046a

				IL_0395: ldsfld uint32[] System.Decimal/DecCalc::s_powers10
				IL_039a: ldloc.2
				IL_039b: ldelem.u4
				IL_039c: stloc.1
				IL_039d: ldloc.3
				IL_039e: ldloc.2
				IL_039f: add
				IL_03a0: stloc.3
				IL_03a1: ldloca.s 0
				IL_03a3: ldloc.1
				IL_03a4: call uint32 System.Decimal/DecCalc::IncreaseScale(valuetype System.Decimal/DecCalc/Buf12&, uint32)
				IL_03a9: brtrue IL_04ab

				IL_03ae: ldloca.s 10
				IL_03b0: ldloca.s 10
				IL_03b2: conv.u
				IL_03b3: ldloc.1
				IL_03b4: call uint32 System.Decimal/DecCalc::IncreaseScale(valuetype System.Decimal/DecCalc/Buf12&, uint32)
				IL_03b9: stfld uint32 System.Decimal/DecCalc/Buf16::U3
				IL_03be: ldloca.s 10
				IL_03c0: ldloca.s 13
				IL_03c2: call uint32 System.Decimal/DecCalc::Div128By96(valuetype System.Decimal/DecCalc/Buf16&, valuetype System.Decimal/DecCalc/Buf12&)
				IL_03c7: stloc.s 5
				IL_03c9: ldloca.s 0
				IL_03cb: ldloc.s 5
				IL_03cd: call bool System.Decimal/DecCalc::Add32To96(valuetype System.Decimal/DecCalc/Buf12&, uint32)
				IL_03d2: brtrue IL_02c3
			// end loop
			IL_03d7: ldloca.s 0
			IL_03d9: ldloc.3
			IL_03da: ldloca.s 10
			IL_03dc: call instance uint64 System.Decimal/DecCalc/Buf16::get_Low64()
			IL_03e1: ldloca.s 10
			IL_03e3: call instance uint64 System.Decimal/DecCalc/Buf16::get_High64()
			IL_03e8: or
			IL_03e9: ldc.i4.0
			IL_03ea: conv.i8
			IL_03eb: cgt.un
			IL_03ed: call int32 System.Decimal/DecCalc::OverflowUnscale(valuetype System.Decimal/DecCalc/Buf12&, int32, bool)
			IL_03f2: stloc.3

			IL_03f3: ldloc.s 4
			IL_03f5: brfalse.s IL_0432

			IL_03f7: ldloc.0
			IL_03f8: ldfld uint32 System.Decimal/DecCalc/Buf12::U0
			IL_03fd: stloc.s 14
			IL_03ff: ldloca.s 0
			IL_0401: call instance uint64 System.Decimal/DecCalc/Buf12::get_High64()
			IL_0406: stloc.s 15
			IL_0408: ldloca.s 14
			IL_040a: ldloca.s 15
			IL_040c: ldloca.s 3
			IL_040e: call void System.Decimal/DecCalc::Unscale(uint32&, uint64&, int32&)
			IL_0413: ldarg.0
			IL_0414: ldloc.s 14
			IL_0416: call instance void System.Decimal/DecCalc::set_Low(uint32)
			IL_041b: ldarg.0
			IL_041c: ldloc.s 15
			IL_041e: conv.u4
			IL_041f: call instance void System.Decimal/DecCalc::set_Mid(uint32)
			IL_0424: ldarg.0
			IL_0425: ldloc.s 15
			IL_0427: ldc.i4.s 32
			IL_0429: shr.un
			IL_042a: conv.u4
			IL_042b: call instance void System.Decimal/DecCalc::set_High(uint32)
			IL_0430: br.s IL_044b

			IL_0432: ldarg.0
			IL_0433: ldloca.s 0
			IL_0435: call instance uint64 System.Decimal/DecCalc/Buf12::get_Low64()
			IL_043a: call instance void System.Decimal/DecCalc::set_Low64(uint64)
			IL_043f: ldarg.0
			IL_0440: ldloc.0
			IL_0441: ldfld uint32 System.Decimal/DecCalc/Buf12::U2
			IL_0446: call instance void System.Decimal/DecCalc::set_High(uint32)

			IL_044b: ldarg.0
			IL_044c: ldarg.0
			IL_044d: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_0452: ldarg.1
			IL_0453: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_0458: xor
			IL_0459: ldc.i4 -2147483648
			IL_045e: and
			IL_045f: ldloc.3
			IL_0460: ldc.i4.s 16
			IL_0462: shl
			IL_0463: or
			IL_0464: stfld uint32 System.Decimal/DecCalc::uflags
			IL_0469: ret

			IL_046a: ldloca.s 0
			IL_046c: dup
			IL_046d: call instance uint64 System.Decimal/DecCalc/Buf12::get_Low64()
			IL_0472: ldc.i4.1
			IL_0473: conv.i8
			IL_0474: add
			IL_0475: stloc.s 16
			IL_0477: ldloc.s 16
			IL_0479: call instance void System.Decimal/DecCalc/Buf12::set_Low64(uint64)
			IL_047e: ldloc.s 16
			IL_0480: brtrue IL_03f3

			IL_0485: ldloca.s 0
			IL_0487: ldflda uint32 System.Decimal/DecCalc/Buf12::U2
			IL_048c: dup
			IL_048d: ldind.u4
			IL_048e: ldc.i4.1
			IL_048f: add
			IL_0490: stloc.s 17
			IL_0492: ldloc.s 17
			IL_0494: stind.i4
			IL_0495: ldloc.s 17
			IL_0497: brtrue IL_03f3

			IL_049c: ldloca.s 0
			IL_049e: ldloc.3
			IL_049f: ldc.i4.1
			IL_04a0: call int32 System.Decimal/DecCalc::OverflowUnscale(valuetype System.Decimal/DecCalc/Buf12&, int32, bool)
			IL_04a5: stloc.3
			IL_04a6: br IL_03f3

			IL_04ab: ldc.i4.s 15
			IL_04ad: call void System.Number::ThrowOverflowException(valuetype System.TypeCode)
			IL_04b2: ret
		} // end of method DecCalc::VarDecDiv

		.method assembly hidebysig static 
			void VarDecMod (
				valuetype System.Decimal/DecCalc& d1,
				valuetype System.Decimal/DecCalc& d2
			) cil managed 
		{
			// Method begins at RVA 0x47410
			// Code size 609 (0x261)
			.maxstack 4
			.locals (
				[0] int32,
				[1] int32,
				[2] uint32,
				[3] uint64,
				[4] valuetype System.Decimal/DecCalc/Buf12,
				[5] int32,
				[6] uint32,
				[7] uint64,
				[8] uint32,
				[9] uint64
			)

			IL_0000: ldarg.1
			IL_0001: ldfld uint32 System.Decimal/DecCalc::ulo
			IL_0006: ldarg.1
			IL_0007: ldfld uint32 System.Decimal/DecCalc::umid
			IL_000c: or
			IL_000d: ldarg.1
			IL_000e: ldfld uint32 System.Decimal/DecCalc::uhi
			IL_0013: or
			IL_0014: brtrue.s IL_001c

			IL_0016: newobj instance void System.DivideByZeroException::.ctor()
			IL_001b: throw

			IL_001c: ldarg.0
			IL_001d: ldfld uint32 System.Decimal/DecCalc::ulo
			IL_0022: ldarg.0
			IL_0023: ldfld uint32 System.Decimal/DecCalc::umid
			IL_0028: or
			IL_0029: ldarg.0
			IL_002a: ldfld uint32 System.Decimal/DecCalc::uhi
			IL_002f: or
			IL_0030: brtrue.s IL_0033

			IL_0032: ret

			IL_0033: ldarg.1
			IL_0034: ldarg.1
			IL_0035: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_003a: ldc.i4 2147483647
			IL_003f: and
			IL_0040: ldarg.0
			IL_0041: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_0046: ldc.i4 -2147483648
			IL_004b: and
			IL_004c: or
			IL_004d: stfld uint32 System.Decimal/DecCalc::uflags
			IL_0052: ldarg.0
			IL_0053: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<valuetype System.Decimal/DecCalc, valuetype System.Decimal>(!!0&)
			IL_0058: ldarg.1
			IL_0059: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<valuetype System.Decimal/DecCalc, valuetype System.Decimal>(!!0&)
			IL_005e: call int32 System.Decimal/DecCalc::VarDecCmpSub(valuetype System.Decimal&, valuetype System.Decimal&)
			IL_0063: stloc.0
			IL_0064: ldloc.0
			IL_0065: brtrue.s IL_0097

			IL_0067: ldarg.0
			IL_0068: ldc.i4.0
			IL_0069: stfld uint32 System.Decimal/DecCalc::ulo
			IL_006e: ldarg.0
			IL_006f: ldc.i4.0
			IL_0070: stfld uint32 System.Decimal/DecCalc::umid
			IL_0075: ldarg.0
			IL_0076: ldc.i4.0
			IL_0077: stfld uint32 System.Decimal/DecCalc::uhi
			IL_007c: ldarg.1
			IL_007d: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_0082: ldarg.0
			IL_0083: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_0088: ble.un.s IL_0096

			IL_008a: ldarg.0
			IL_008b: ldarg.1
			IL_008c: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_0091: stfld uint32 System.Decimal/DecCalc::uflags

			IL_0096: ret

			IL_0097: ldloc.0
			IL_0098: ldarg.0
			IL_0099: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_009e: ldc.i4 -2147483648
			IL_00a3: and
			IL_00a4: xor
			IL_00a5: ldc.i4.0
			IL_00a6: bge.s IL_00a9

			IL_00a8: ret

			IL_00a9: ldarg.0
			IL_00aa: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_00af: ldarg.1
			IL_00b0: ldfld uint32 System.Decimal/DecCalc::uflags
			IL_00b5: sub
			IL_00b6: ldc.i4.s 16
			IL_00b8: shr.un
			IL_00b9: conv.i1
			IL_00ba: stloc.1
			IL_00bb: ldloc.1
			IL_00bc: ldc.i4.0
			IL_00bd: ble.s IL_0123
			// loop start (head: IL_00bf)
				IL_00bf: ldloc.1
				IL_00c0: ldc.i4.s 9
				IL_00c2: bge.s IL_00cd

				IL_00c4: ldsfld uint32[] System.Decimal/DecCalc::s_powers10
				IL_00c9: ldloc.1
				IL_00ca: ldelem.u4
				IL_00cb: br.s IL_00d2

				IL_00cd: ldc.i4 1000000000

				IL_00d2: stloc.2
				IL_00d3: ldarg.1
				IL_00d4: call instance uint32 System.Decimal/DecCalc::get_Low()
				IL_00d9: ldloc.2
				IL_00da: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
				IL_00df: stloc.3
				IL_00e0: ldarg.1
				IL_00e1: ldloc.3
				IL_00e2: conv.u4
				IL_00e3: call instance void System.Decimal/DecCalc::set_Low(uint32)
				IL_00e8: ldloc.3
				IL_00e9: ldc.i4.s 32
				IL_00eb: shr.un
				IL_00ec: stloc.3
				IL_00ed: ldloc.3
				IL_00ee: ldarg.1
				IL_00ef: call instance uint32 System.Decimal/DecCalc::get_Mid()
				IL_00f4: conv.u8
				IL_00f5: ldarg.1
				IL_00f6: call instance uint32 System.Decimal/DecCalc::get_High()
				IL_00fb: conv.u8
				IL_00fc: ldc.i4.s 32
				IL_00fe: shl
				IL_00ff: add
				IL_0100: ldloc.2
				IL_0101: conv.u8
				IL_0102: mul
				IL_0103: add
				IL_0104: stloc.3
				IL_0105: ldarg.1
				IL_0106: ldloc.3
				IL_0107: conv.u4
				IL_0108: call instance void System.Decimal/DecCalc::set_Mid(uint32)
				IL_010d: ldarg.1
				IL_010e: ldloc.3
				IL_010f: ldc.i4.s 32
				IL_0111: shr.un
				IL_0112: conv.u4
				IL_0113: call instance void System.Decimal/DecCalc::set_High(uint32)
				IL_0118: ldloc.1
				IL_0119: ldc.i4.s 9
				IL_011b: sub
				IL_011c: dup
				IL_011d: stloc.1
				IL_011e: ldc.i4.0
				IL_011f: bgt.s IL_00bf
			// end loop

			IL_0121: ldc.i4.0
			IL_0122: stloc.1
			// loop start (head: IL_0123)
				IL_0123: ldloc.1
				IL_0124: ldc.i4.0
				IL_0125: bge IL_01e1

				IL_012a: ldarg.0
				IL_012b: ldarg.1
				IL_012c: ldfld uint32 System.Decimal/DecCalc::uflags
				IL_0131: stfld uint32 System.Decimal/DecCalc::uflags
				IL_0136: ldloca.s 4
				IL_0138: call void Internal.Runtime.CompilerServices.Unsafe::SkipInit<valuetype System.Decimal/DecCalc/Buf12>(!!0&)
				IL_013d: ldloca.s 4
				IL_013f: ldarg.0
				IL_0140: call instance uint64 System.Decimal/DecCalc::get_Low64()
				IL_0145: call instance void System.Decimal/DecCalc/Buf12::set_Low64(uint64)
				IL_014a: ldloca.s 4
				IL_014c: ldarg.0
				IL_014d: call instance uint32 System.Decimal/DecCalc::get_High()
				IL_0152: stfld uint32 System.Decimal/DecCalc/Buf12::U2
				// loop start (head: IL_0157)
					IL_0157: ldloca.s 4
					IL_0159: ldc.i4.s 28
					IL_015b: ldloc.1
					IL_015c: add
					IL_015d: call int32 System.Decimal/DecCalc::SearchScale(valuetype System.Decimal/DecCalc/Buf12&, int32)
					IL_0162: stloc.s 5
					IL_0164: ldloc.s 5
					IL_0166: brfalse.s IL_01c7

					IL_0168: ldloc.s 5
					IL_016a: ldc.i4.s 9
					IL_016c: bge.s IL_0178

					IL_016e: ldsfld uint32[] System.Decimal/DecCalc::s_powers10
					IL_0173: ldloc.s 5
					IL_0175: ldelem.u4
					IL_0176: br.s IL_017d

					IL_0178: ldc.i4 1000000000

					IL_017d: stloc.s 6
					IL_017f: ldloc.1
					IL_0180: ldloc.s 5
					IL_0182: add
					IL_0183: stloc.1
					IL_0184: ldloc.s 4
					IL_0186: ldfld uint32 System.Decimal/DecCalc/Buf12::U0
					IL_018b: ldloc.s 6
					IL_018d: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
					IL_0192: stloc.s 7
					IL_0194: ldloca.s 4
					IL_0196: ldloc.s 7
					IL_0198: conv.u4
					IL_0199: stfld uint32 System.Decimal/DecCalc/Buf12::U0
					IL_019e: ldloc.s 7
					IL_01a0: ldc.i4.s 32
					IL_01a2: shr.un
					IL_01a3: stloc.s 7
					IL_01a5: ldloca.s 4
					IL_01a7: ldloc.s 7
					IL_01a9: ldloca.s 4
					IL_01ab: call instance uint64 System.Decimal/DecCalc/Buf12::get_High64()
					IL_01b0: ldloc.s 6
					IL_01b2: conv.u8
					IL_01b3: mul
					IL_01b4: add
					IL_01b5: call instance void System.Decimal/DecCalc/Buf12::set_High64(uint64)
					IL_01ba: ldloc.s 6
					IL_01bc: ldc.i4 1000000000
					IL_01c1: bne.un.s IL_01c7

					IL_01c3: ldloc.1
					IL_01c4: ldc.i4.0
					IL_01c5: blt.s IL_0157
				// end loop

				IL_01c7: ldarg.0
				IL_01c8: ldloca.s 4
				IL_01ca: call instance uint64 System.Decimal/DecCalc/Buf12::get_Low64()
				IL_01cf: call instance void System.Decimal/DecCalc::set_Low64(uint64)
				IL_01d4: ldarg.0
				IL_01d5: ldloc.s 4
				IL_01d7: ldfld uint32 System.Decimal/DecCalc/Buf12::U2
				IL_01dc: call instance void System.Decimal/DecCalc::set_High(uint32)

				IL_01e1: ldarg.0
				IL_01e2: call instance uint32 System.Decimal/DecCalc::get_High()
				IL_01e7: brtrue.s IL_01fd

				IL_01e9: ldarg.0
				IL_01ea: dup
				IL_01eb: call instance uint64 System.Decimal/DecCalc::get_Low64()
				IL_01f0: ldarg.1
				IL_01f1: call instance uint64 System.Decimal/DecCalc::get_Low64()
				IL_01f6: rem.un
				IL_01f7: call instance void System.Decimal/DecCalc::set_Low64(uint64)
				IL_01fc: ret

				IL_01fd: ldarg.1
				IL_01fe: call instance uint32 System.Decimal/DecCalc::get_High()
				IL_0203: ldarg.1
				IL_0204: call instance uint32 System.Decimal/DecCalc::get_Mid()
				IL_0209: or
				IL_020a: brtrue.s IL_0250

				IL_020c: ldarg.1
				IL_020d: call instance uint32 System.Decimal/DecCalc::get_Low()
				IL_0212: stloc.s 8
				IL_0214: ldarg.0
				IL_0215: call instance uint32 System.Decimal/DecCalc::get_High()
				IL_021a: conv.u8
				IL_021b: ldc.i4.s 32
				IL_021d: shl
				IL_021e: ldarg.0
				IL_021f: call instance uint32 System.Decimal/DecCalc::get_Mid()
				IL_0224: conv.u8
				IL_0225: or
				IL_0226: stloc.s 9
				IL_0228: ldloc.s 9
				IL_022a: ldloc.s 8
				IL_022c: conv.u8
				IL_022d: rem.un
				IL_022e: ldc.i4.s 32
				IL_0230: shl
				IL_0231: ldarg.0
				IL_0232: call instance uint32 System.Decimal/DecCalc::get_Low()
				IL_0237: conv.u8
				IL_0238: or
				IL_0239: stloc.s 9
				IL_023b: ldarg.0
				IL_023c: ldloc.s 9
				IL_023e: ldloc.s 8
				IL_0240: conv.u8
				IL_0241: rem.un
				IL_0242: call instance void System.Decimal/DecCalc::set_Low64(uint64)
				IL_0247: ldarg.0
				IL_0248: ldc.i4.0
				IL_0249: call instance void System.Decimal/DecCalc::set_High(uint32)
				IL_024e: br.s IL_0259

				IL_0250: ldarg.0
				IL_0251: ldarg.1
				IL_0252: ldloc.1
				IL_0253: call void System.Decimal/DecCalc::VarDecModFull(valuetype System.Decimal/DecCalc&, valuetype System.Decimal/DecCalc&, int32)
				IL_0258: ret

				IL_0259: ldloc.1
				IL_025a: ldc.i4.0
				IL_025b: blt IL_0123
			// end loop
			IL_0260: ret
		} // end of method DecCalc::VarDecMod

		.method private hidebysig static 
			void VarDecModFull (
				valuetype System.Decimal/DecCalc& d1,
				valuetype System.Decimal/DecCalc& d2,
				int32 scale
			) cil managed 
		{
			// Method begins at RVA 0x47680
			// Code size 659 (0x293)
			.maxstack 5
			.locals (
				[0] uint32,
				[1] int32,
				[2] valuetype System.Decimal/DecCalc/Buf28,
				[3] uint32,
				[4] uint32,
				[5] uint32*,
				[6] uint64,
				[7] int32,
				[8] uint64,
				[9] valuetype System.Decimal/DecCalc/Buf12
			)

			IL_0000: ldarg.1
			IL_0001: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_0006: stloc.0
			IL_0007: ldloc.0
			IL_0008: brtrue.s IL_0011

			IL_000a: ldarg.1
			IL_000b: call instance uint32 System.Decimal/DecCalc::get_Mid()
			IL_0010: stloc.0

			IL_0011: ldloc.0
			IL_0012: call int32 System.Numerics.BitOperations::LeadingZeroCount(uint32)
			IL_0017: stloc.1
			IL_0018: ldloca.s 2
			IL_001a: call void Internal.Runtime.CompilerServices.Unsafe::SkipInit<valuetype System.Decimal/DecCalc/Buf28>(!!0&)
			IL_001f: ldloca.s 2
			IL_0021: ldflda valuetype System.Decimal/DecCalc/Buf24 System.Decimal/DecCalc/Buf28::Buf24
			IL_0026: ldarg.0
			IL_0027: call instance uint64 System.Decimal/DecCalc::get_Low64()
			IL_002c: ldloc.1
			IL_002d: ldc.i4.s 63
			IL_002f: and
			IL_0030: shl
			IL_0031: call instance void System.Decimal/DecCalc/Buf24::set_Low64(uint64)
			IL_0036: ldloca.s 2
			IL_0038: ldflda valuetype System.Decimal/DecCalc/Buf24 System.Decimal/DecCalc/Buf28::Buf24
			IL_003d: ldarg.0
			IL_003e: call instance uint32 System.Decimal/DecCalc::get_Mid()
			IL_0043: conv.u8
			IL_0044: ldarg.0
			IL_0045: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_004a: conv.u8
			IL_004b: ldc.i4.s 32
			IL_004d: shl
			IL_004e: add
			IL_004f: ldc.i4.s 32
			IL_0051: ldloc.1
			IL_0052: sub
			IL_0053: ldc.i4.s 63
			IL_0055: and
			IL_0056: shr.un
			IL_0057: call instance void System.Decimal/DecCalc/Buf24::set_Mid64(uint64)
			IL_005c: ldc.i4.3
			IL_005d: stloc.3
			IL_005e: br IL_00ff
			// loop start (head: IL_00ff)
				IL_0063: ldarg.2
				IL_0064: ldc.i4.s -9
				IL_0066: ble.s IL_0072

				IL_0068: ldsfld uint32[] System.Decimal/DecCalc::s_powers10
				IL_006d: ldarg.2
				IL_006e: neg
				IL_006f: ldelem.u4
				IL_0070: br.s IL_0077

				IL_0072: ldc.i4 1000000000

				IL_0077: stloc.s 4
				IL_0079: ldloca.s 2
				IL_007b: conv.u
				IL_007c: stloc.s 5
				IL_007e: ldloc.2
				IL_007f: ldfld valuetype System.Decimal/DecCalc/Buf24 System.Decimal/DecCalc/Buf28::Buf24
				IL_0084: ldfld uint32 System.Decimal/DecCalc/Buf24::U0
				IL_0089: ldloc.s 4
				IL_008b: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
				IL_0090: stloc.s 6
				IL_0092: ldloca.s 2
				IL_0094: ldflda valuetype System.Decimal/DecCalc/Buf24 System.Decimal/DecCalc/Buf28::Buf24
				IL_0099: ldloc.s 6
				IL_009b: conv.u4
				IL_009c: stfld uint32 System.Decimal/DecCalc/Buf24::U0
				IL_00a1: ldc.i4.1
				IL_00a2: stloc.s 7
				IL_00a4: br.s IL_00d4
				// loop start (head: IL_00d4)
					IL_00a6: ldloc.s 6
					IL_00a8: ldc.i4.s 32
					IL_00aa: shr.un
					IL_00ab: stloc.s 6
					IL_00ad: ldloc.s 6
					IL_00af: ldloc.s 5
					IL_00b1: ldloc.s 7
					IL_00b3: conv.i
					IL_00b4: ldc.i4.4
					IL_00b5: mul
					IL_00b6: add
					IL_00b7: ldind.u4
					IL_00b8: ldloc.s 4
					IL_00ba: call uint64 System.Decimal/DecCalc::UInt32x32To64(uint32, uint32)
					IL_00bf: add
					IL_00c0: stloc.s 6
					IL_00c2: ldloc.s 5
					IL_00c4: ldloc.s 7
					IL_00c6: conv.i
					IL_00c7: ldc.i4.4
					IL_00c8: mul
					IL_00c9: add
					IL_00ca: ldloc.s 6
					IL_00cc: conv.u4
					IL_00cd: stind.i4
					IL_00ce: ldloc.s 7
					IL_00d0: ldc.i4.1
					IL_00d1: add
					IL_00d2: stloc.s 7

					IL_00d4: ldloc.s 7
					IL_00d6: conv.i8
					IL_00d7: ldloc.3
					IL_00d8: conv.u8
					IL_00d9: ble.s IL_00a6
				// end loop

				IL_00db: ldloc.s 6
				IL_00dd: ldc.i4 2147483647
				IL_00e2: conv.i8
				IL_00e3: ble.un.s IL_00f9

				IL_00e5: ldloc.s 5
				IL_00e7: ldloc.3
				IL_00e8: ldc.i4.1
				IL_00e9: add
				IL_00ea: dup
				IL_00eb: stloc.3
				IL_00ec: conv.u8
				IL_00ed: ldc.i4.4
				IL_00ee: conv.i8
				IL_00ef: mul
				IL_00f0: conv.i
				IL_00f1: add
				IL_00f2: ldloc.s 6
				IL_00f4: ldc.i4.s 32
				IL_00f6: shr.un
				IL_00f7: conv.u4
				IL_00f8: stind.i4

				IL_00f9: ldarg.2
				IL_00fa: ldc.i4.s 9
				IL_00fc: add
				IL_00fd: starg.s scale

				IL_00ff: ldarg.2
				IL_0100: ldc.i4.0
				IL_0101: blt IL_0063
			// end loop

			IL_0106: ldarg.1
			IL_0107: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_010c: brtrue IL_01b2

			IL_0111: ldarg.1
			IL_0112: call instance uint64 System.Decimal/DecCalc::get_Low64()
			IL_0117: ldloc.1
			IL_0118: ldc.i4.s 63
			IL_011a: and
			IL_011b: shl
			IL_011c: stloc.s 8
			IL_011e: ldloc.3
			IL_011f: ldc.i4.4
			IL_0120: sub
			IL_0121: switch (IL_015e, IL_0149, IL_0134)

			IL_0132: br.s IL_0173

			IL_0134: ldloca.s 2
			IL_0136: ldflda valuetype System.Decimal/DecCalc/Buf24 System.Decimal/DecCalc/Buf28::Buf24
			IL_013b: ldflda uint32 System.Decimal/DecCalc/Buf24::U4
			IL_0140: conv.u
			IL_0141: ldloc.s 8
			IL_0143: call uint32 System.Decimal/DecCalc::Div96By64(valuetype System.Decimal/DecCalc/Buf12&, uint64)
			IL_0148: pop

			IL_0149: ldloca.s 2
			IL_014b: ldflda valuetype System.Decimal/DecCalc/Buf24 System.Decimal/DecCalc/Buf28::Buf24
			IL_0150: ldflda uint32 System.Decimal/DecCalc/Buf24::U3
			IL_0155: conv.u
			IL_0156: ldloc.s 8
			IL_0158: call uint32 System.Decimal/DecCalc::Div96By64(valuetype System.Decimal/DecCalc/Buf12&, uint64)
			IL_015d: pop

			IL_015e: ldloca.s 2
			IL_0160: ldflda valuetype System.Decimal/DecCalc/Buf24 System.Decimal/DecCalc/Buf28::Buf24
			IL_0165: ldflda uint32 System.Decimal/DecCalc/Buf24::U2
			IL_016a: conv.u
			IL_016b: ldloc.s 8
			IL_016d: call uint32 System.Decimal/DecCalc::Div96By64(valuetype System.Decimal/DecCalc/Buf12&, uint64)
			IL_0172: pop

			IL_0173: ldloca.s 2
			IL_0175: ldflda valuetype System.Decimal/DecCalc/Buf24 System.Decimal/DecCalc/Buf28::Buf24
			IL_017a: ldflda uint32 System.Decimal/DecCalc/Buf24::U1
			IL_017f: conv.u
			IL_0180: ldloc.s 8
			IL_0182: call uint32 System.Decimal/DecCalc::Div96By64(valuetype System.Decimal/DecCalc/Buf12&, uint64)
			IL_0187: pop
			IL_0188: ldloca.s 2
			IL_018a: conv.u
			IL_018b: ldloc.s 8
			IL_018d: call uint32 System.Decimal/DecCalc::Div96By64(valuetype System.Decimal/DecCalc/Buf12&, uint64)
			IL_0192: pop
			IL_0193: ldarg.0
			IL_0194: ldloca.s 2
			IL_0196: ldflda valuetype System.Decimal/DecCalc/Buf24 System.Decimal/DecCalc/Buf28::Buf24
			IL_019b: call instance uint64 System.Decimal/DecCalc/Buf24::get_Low64()
			IL_01a0: ldloc.1
			IL_01a1: ldc.i4.s 63
			IL_01a3: and
			IL_01a4: shr.un
			IL_01a5: call instance void System.Decimal/DecCalc::set_Low64(uint64)
			IL_01aa: ldarg.0
			IL_01ab: ldc.i4.0
			IL_01ac: call instance void System.Decimal/DecCalc::set_High(uint32)
			IL_01b1: ret

			IL_01b2: ldloca.s 9
			IL_01b4: call void Internal.Runtime.CompilerServices.Unsafe::SkipInit<valuetype System.Decimal/DecCalc/Buf12>(!!0&)
			IL_01b9: ldloca.s 9
			IL_01bb: ldarg.1
			IL_01bc: call instance uint64 System.Decimal/DecCalc::get_Low64()
			IL_01c1: ldloc.1
			IL_01c2: ldc.i4.s 63
			IL_01c4: and
			IL_01c5: shl
			IL_01c6: call instance void System.Decimal/DecCalc/Buf12::set_Low64(uint64)
			IL_01cb: ldloca.s 9
			IL_01cd: ldarg.1
			IL_01ce: call instance uint32 System.Decimal/DecCalc::get_Mid()
			IL_01d3: conv.u8
			IL_01d4: ldarg.1
			IL_01d5: call instance uint32 System.Decimal/DecCalc::get_High()
			IL_01da: conv.u8
			IL_01db: ldc.i4.s 32
			IL_01dd: shl
			IL_01de: add
			IL_01df: ldc.i4.s 32
			IL_01e1: ldloc.1
			IL_01e2: sub
			IL_01e3: ldc.i4.s 63
			IL_01e5: and
			IL_01e6: shr.un
			IL_01e7: conv.u4
			IL_01e8: stfld uint32 System.Decimal/DecCalc/Buf12::U2
			IL_01ed: ldloc.3
			IL_01ee: ldc.i4.4
			IL_01ef: sub
			IL_01f0: switch (IL_022d, IL_0218, IL_0203)

			IL_0201: br.s IL_0242

			IL_0203: ldloca.s 2
			IL_0205: ldflda valuetype System.Decimal/DecCalc/Buf24 System.Decimal/DecCalc/Buf28::Buf24
			IL_020a: ldflda uint32 System.Decimal/DecCalc/Buf24::U3
			IL_020f: conv.u
			IL_0210: ldloca.s 9
			IL_0212: call uint32 System.Decimal/DecCalc::Div128By96(valuetype System.Decimal/DecCalc/Buf16&, valuetype System.Decimal/DecCalc/Buf12&)
			IL_0217: pop

			IL_0218: ldloca.s 2
			IL_021a: ldflda valuetype System.Decimal/DecCalc/Buf24 System.Decimal/DecCalc/Buf28::Buf24
			IL_021f: ldflda uint32 System.Decimal/DecCalc/Buf24::U2
			IL_0224: conv.u
			IL_0225: ldloca.s 9
			IL_0227: call uint32 System.Decimal/DecCalc::Div128By96(valuetype System.Decimal/DecCalc/Buf16&, valuetype System.Decimal/DecCalc/Buf12&)
			IL_022c: pop

			IL_022d: ldloca.s 2
			IL_022f: ldflda valuetype System.Decimal/DecCalc/Buf24 System.Decimal/DecCalc/Buf28::Buf24
			IL_0234: ldflda uint32 System.Decimal/DecCalc/Buf24::U1
			IL_0239: conv.u
			IL_023a: ldloca.s 9
			IL_023c: call uint32 System.Decimal/DecCalc::Div128By96(valuetype System.Decimal/DecCalc/Buf16&, valuetype System.Decimal/DecCalc/Buf12&)
			IL_0241: pop

			IL_0242: ldloca.s 2
			IL_0244: conv.u
			IL_0245: ldloca.s 9
			IL_0247: call uint32 System.Decimal/DecCalc::Div128By96(valuetype System.Decimal/DecCalc/Buf16&, valuetype System.Decimal/DecCalc/Buf12&)
			IL_024c: pop
			IL_024d: ldarg.0
			IL_024e: ldloca.s 2
			IL_0250: ldflda valuetype System.Decimal/DecCalc/Buf24 System.Decimal/DecCalc/Buf28::Buf24
			IL_0255: call instance uint64 System.Decimal/DecCalc/Buf24::get_Low64()
			IL_025a: ldloc.1
			IL_025b: ldc.i4.s 63
			IL_025d: and
			IL_025e: shr.un
			IL_025f: ldloc.2
			IL_0260: ldfld valuetype System.Decimal/DecCalc/Buf24 System.Decimal/DecCalc/Buf28::Buf24
			IL_0265: ldfld uint32 System.Decimal/DecCalc/Buf24::U2
			IL_026a: conv.u8
			IL_026b: ldc.i4.s 32
			IL_026d: ldloc.1
			IL_026e: sub
			IL_026f: ldc.i4.s 63
			IL_0271: and
			IL_0272: shl
			IL_0273: ldc.i4.s 32
			IL_0275: shl
			IL_0276: add
			IL_0277: call instance void System.Decimal/DecCalc::set_Low64(uint64)
			IL_027c: ldarg.0
			IL_027d: ldloc.2
			IL_027e: ldfld valuetype System.Decimal/DecCalc/Buf24 System.Decimal/DecCalc/Buf28::Buf24
			IL_0283: ldfld uint32 System.Decimal/DecCalc/Buf24::U2
			IL_0288: ldloc.1
			IL_0289: ldc.i4.s 31
			IL_028b: and
			IL_028c: shr.un
			IL_028d: call instance void System.Decimal/DecCalc::set_High(uint32)
			IL_0292: ret
		} // end of method DecCalc::VarDecModFull

		.method assembly hidebysig static 
			void InternalRound (
				valuetype System.Decimal/DecCalc& d,
				uint32 scale,
				valuetype System.MidpointRounding mode
			) cil managed 
		{
			// Method begins at RVA 0x47920
			// Code size 520 (0x208)
			.maxstack 4
			.locals (
				[0] uint32,
				[1] uint32,
				[2] uint32,
				[3] uint32,
				[4] uint64,
				[5] uint64,
				[6] uint32,
				[7] uint32,
				[8] uint64,
				[9] uint64,
				[10] uint32,
				[11] uint64
			)

			IL_0000: ldarg.0
			IL_0001: ldflda uint32 System.Decimal/DecCalc::uflags
			IL_0006: dup
			IL_0007: ldind.u4
			IL_0008: ldarg.1
			IL_0009: ldc.i4.s 16
			IL_000b: shl
			IL_000c: sub
			IL_000d: stind.i4
			IL_000e: ldc.i4.0
			IL_000f: stloc.1
			IL_0010: br IL_00db
			// loop start (head: IL_00db)
				IL_0015: ldarg.1
				IL_0016: ldc.i4.s 9
				IL_0018: sub
				IL_0019: starg.s scale
				IL_001b: ldarg.0
				IL_001c: ldfld uint32 System.Decimal/DecCalc::uhi
				IL_0021: stloc.3
				IL_0022: ldloc.3
				IL_0023: brtrue.s IL_0050

				IL_0025: ldarg.0
				IL_0026: call instance uint64 System.Decimal/DecCalc::get_Low64()
				IL_002b: stloc.s 4
				IL_002d: ldloc.s 4
				IL_002f: ldc.i4 1000000000
				IL_0034: conv.i8
				IL_0035: div.un
				IL_0036: stloc.s 5
				IL_0038: ldarg.0
				IL_0039: ldloc.s 5
				IL_003b: call instance void System.Decimal/DecCalc::set_Low64(uint64)
				IL_0040: ldloc.s 4
				IL_0042: ldloc.s 5
				IL_0044: ldc.i4 1000000000
				IL_0049: conv.i8
				IL_004a: mul
				IL_004b: sub
				IL_004c: conv.u4
				IL_004d: stloc.0
				IL_004e: br.s IL_00cb

				IL_0050: ldarg.0
				IL_0051: ldloc.3
				IL_0052: ldc.i4 1000000000
				IL_0057: div.un
				IL_0058: dup
				IL_0059: stloc.s 6
				IL_005b: stfld uint32 System.Decimal/DecCalc::uhi
				IL_0060: ldloc.3
				IL_0061: ldloc.s 6
				IL_0063: ldc.i4 1000000000
				IL_0068: mul
				IL_0069: sub
				IL_006a: stloc.0
				IL_006b: ldarg.0
				IL_006c: ldfld uint32 System.Decimal/DecCalc::umid
				IL_0071: stloc.3
				IL_0072: ldloc.3
				IL_0073: ldloc.0
				IL_0074: or
				IL_0075: brfalse.s IL_009b

				IL_0077: ldarg.0
				IL_0078: ldloc.0
				IL_0079: conv.u8
				IL_007a: ldc.i4.s 32
				IL_007c: shl
				IL_007d: ldloc.3
				IL_007e: conv.u8
				IL_007f: or
				IL_0080: ldc.i4 1000000000
				IL_0085: conv.i8
				IL_0086: div.un
				IL_0087: conv.u4
				IL_0088: dup
				IL_0089: stloc.s 6
				IL_008b: stfld uint32 System.Decimal/DecCalc::umid
				IL_0090: ldloc.3
				IL_0091: ldloc.s 6
				IL_0093: ldc.i4 1000000000
				IL_0098: mul
				IL_0099: sub
				IL_009a: stloc.0

				IL_009b: ldarg.0
				IL_009c: ldfld uint32 System.Decimal/DecCalc::ulo
				IL_00a1: stloc.3
				IL_00a2: ldloc.3
				IL_00a3: ldloc.0
				IL_00a4: or
				IL_00a5: brfalse.s IL_00cb

				IL_00a7: ldarg.0
				IL_00a8: ldloc.0
				IL_00a9: conv.u8
				IL_00aa: ldc.i4.s 32
				IL_00ac: shl
				IL_00ad: ldloc.3
				IL_00ae: conv.u8
				IL_00af: or
				IL_00b0: ldc.i4 1000000000
				IL_00b5: conv.i8
				IL_00b6: div.un
				IL_00b7: conv.u4
				IL_00b8: dup
				IL_00b9: stloc.s 6
				IL_00bb: stfld uint32 System.Decimal/DecCalc::ulo
				IL_00c0: ldloc.3
				IL_00c1: ldloc.s 6
				IL_00c3: ldc.i4 1000000000
				IL_00c8: mul
				IL_00c9: sub
				IL_00ca: stloc.0

				IL_00cb: ldc.i4 1000000000
				IL_00d0: stloc.2
				IL_00d1: ldarg.1
				IL_00d2: brfalse IL_0199

				IL_00d7: ldloc.1
				IL_00d8: ldloc.0
				IL_00d9: or
				IL_00da: stloc.1

				IL_00db: ldarg.1
				IL_00dc: ldc.i4.s 9
				IL_00de: bge.un IL_0015
			// end loop

			IL_00e3: ldsfld uint32[] System.Decimal/DecCalc::s_powers10
			IL_00e8: ldarg.1
			IL_00e9: ldelem.u4
			IL_00ea: stloc.2
			IL_00eb: ldarg.0
			IL_00ec: ldfld uint32 System.Decimal/DecCalc::uhi
			IL_00f1: stloc.s 7
			IL_00f3: ldloc.s 7
			IL_00f5: brtrue.s IL_012c

			IL_00f7: ldarg.0
			IL_00f8: call instance uint64 System.Decimal/DecCalc::get_Low64()
			IL_00fd: stloc.s 8
			IL_00ff: ldloc.s 8
			IL_0101: brtrue.s IL_0111

			IL_0103: ldarg.2
			IL_0104: ldc.i4.2
			IL_0105: ble IL_0207

			IL_010a: ldc.i4.0
			IL_010b: stloc.0
			IL_010c: br IL_0199

			IL_0111: ldloc.s 8
			IL_0113: ldloc.2
			IL_0114: conv.u8
			IL_0115: div.un
			IL_0116: stloc.s 9
			IL_0118: ldarg.0
			IL_0119: ldloc.s 9
			IL_011b: call instance void System.Decimal/DecCalc::set_Low64(uint64)
			IL_0120: ldloc.s 8
			IL_0122: ldloc.s 9
			IL_0124: ldloc.2
			IL_0125: conv.u8
			IL_0126: mul
			IL_0127: sub
			IL_0128: conv.u4
			IL_0129: stloc.0
			IL_012a: br.s IL_0199

			IL_012c: ldarg.0
			IL_012d: ldloc.s 7
			IL_012f: ldloc.2
			IL_0130: div.un
			IL_0131: dup
			IL_0132: stloc.s 10
			IL_0134: stfld uint32 System.Decimal/DecCalc::uhi
			IL_0139: ldloc.s 7
			IL_013b: ldloc.s 10
			IL_013d: ldloc.2
			IL_013e: mul
			IL_013f: sub
			IL_0140: stloc.0
			IL_0141: ldarg.0
			IL_0142: ldfld uint32 System.Decimal/DecCalc::umid
			IL_0147: stloc.s 7
			IL_0149: ldloc.s 7
			IL_014b: ldloc.0
			IL_014c: or
			IL_014d: brfalse.s IL_016d

			IL_014f: ldarg.0
			IL_0150: ldloc.0
			IL_0151: conv.u8
			IL_0152: ldc.i4.s 32
			IL_0154: shl
			IL_0155: ldloc.s 7
			IL_0157: conv.u8
			IL_0158: or
			IL_0159: ldloc.2
			IL_015a: conv.u8
			IL_015b: div.un
			IL_015c: conv.u4
			IL_015d: dup
			IL_015e: stloc.s 10
			IL_0160: stfld uint32 System.Decimal/DecCalc::umid
			IL_0165: ldloc.s 7
			IL_0167: ldloc.s 10
			IL_0169: ldloc.2
			IL_016a: mul
			IL_016b: sub
			IL_016c: stloc.0

			IL_016d: ldarg.0
			IL_016e: ldfld uint32 System.Decimal/DecCalc::ulo
			IL_0173: stloc.s 7
			IL_0175: ldloc.s 7
			IL_0177: ldloc.0
			IL_0178: or
			IL_0179: brfalse.s IL_0199

			IL_017b: ldarg.0
			IL_017c: ldloc.0
			IL_017d: conv.u8
			IL_017e: ldc.i4.s 32
			IL_0180: shl
			IL_0181: ldloc.s 7
			IL_0183: conv.u8
			IL_0184: or
			IL_0185: ldloc.2
			IL_0186: conv.u8
			IL_0187: div.un
			IL_0188: conv.u4
			IL_0189: dup
			IL_018a: stloc.s 10
			IL_018c: stfld uint32 System.Decimal/DecCalc::ulo
			IL_0191: ldloc.s 7
			IL_0193: ldloc.s 10
			IL_0195: ldloc.2
			IL_0196: mul
			IL_0197: sub
			IL_0198: stloc.0

			IL_0199: ldarg.2
			IL_019a: ldc.i4.2
			IL_019b: beq.s IL_0207

			IL_019d: ldarg.2
			IL_019e: brtrue.s IL_01b9

			IL_01a0: ldloc.0
			IL_01a1: ldc.i4.1
			IL_01a2: shl
			IL_01a3: stloc.0
			IL_01a4: ldloc.1
			IL_01a5: ldarg.0
			IL_01a6: ldfld uint32 System.Decimal/DecCalc::ulo
			IL_01ab: ldc.i4.1
			IL_01ac: and
			IL_01ad: or
			IL_01ae: brfalse.s IL_01b4

			IL_01b0: ldloc.0
			IL_01b1: ldc.i4.1
			IL_01b2: add
			IL_01b3: stloc.0

			IL_01b4: ldloc.2
			IL_01b5: ldloc.0
			IL_01b6: blt.un.s IL_01e5

			IL_01b8: ret

			IL_01b9: ldarg.2
			IL_01ba: ldc.i4.1
			IL_01bb: bne.un.s IL_01c6

			IL_01bd: ldloc.0
			IL_01be: ldc.i4.1
			IL_01bf: shl
			IL_01c0: stloc.0
			IL_01c1: ldloc.2
			IL_01c2: ldloc.0
			IL_01c3: ble.un.s IL_01e5

			IL_01c5: ret

			IL_01c6: ldarg.2
			IL_01c7: ldc.i4.3
			IL_01c8: bne.un.s IL_01d8

			IL_01ca: ldloc.0
			IL_01cb: ldloc.1
			IL_01cc: or
			IL_01cd: brfalse.s IL_0207

			IL_01cf: ldarg.0
			IL_01d0: call instance bool System.Decimal/DecCalc::get_IsNegative()
			IL_01d5: brtrue.s IL_01e5

			IL_01d7: ret

			IL_01d8: ldloc.0
			IL_01d9: ldloc.1
			IL_01da: or
			IL_01db: brfalse.s IL_0207

			IL_01dd: ldarg.0
			IL_01de: call instance bool System.Decimal/DecCalc::get_IsNegative()
			IL_01e3: brtrue.s IL_0207

			IL_01e5: ldarg.0
			IL_01e6: dup
			IL_01e7: call instance uint64 System.Decimal/DecCalc::get_Low64()
			IL_01ec: ldc.i4.1
			IL_01ed: conv.i8
			IL_01ee: add
			IL_01ef: stloc.s 11
			IL_01f1: ldloc.s 11
			IL_01f3: call instance void System.Decimal/DecCalc::set_Low64(uint64)
			IL_01f8: ldloc.s 11
			IL_01fa: brtrue.s IL_0207

			IL_01fc: ldarg.0
			IL_01fd: ldflda uint32 System.Decimal/DecCalc::uhi
			IL_0202: dup
			IL_0203: ldind.u4
			IL_0204: ldc.i4.1
			IL_0205: add
			IL_0206: stind.i4

			IL_0207: ret
		} // end of method DecCalc::InternalRound

		.method assembly hidebysig static 
			uint32 DecDivMod1E9 (
				valuetype System.Decimal/DecCalc& 'value'
			) cil managed 
		{
			// Method begins at RVA 0x47b34
			// Code size 98 (0x62)
			.maxstack 3
			.locals (
				[0] uint64,
				[1] uint64,
				[2] uint64,
				[3] uint32
			)

			IL_0000: ldarg.0
			IL_0001: ldfld uint32 System.Decimal/DecCalc::uhi
			IL_0006: conv.u8
			IL_0007: ldc.i4.s 32
			IL_0009: shl
			IL_000a: ldarg.0
			IL_000b: ldfld uint32 System.Decimal/DecCalc::umid
			IL_0010: conv.u8
			IL_0011: add
			IL_0012: stloc.0
			IL_0013: ldloc.0
			IL_0014: ldc.i4 1000000000
			IL_0019: conv.i8
			IL_001a: div.un
			IL_001b: stloc.1
			IL_001c: ldarg.0
			IL_001d: ldloc.1
			IL_001e: ldc.i4.s 32
			IL_0020: shr.un
			IL_0021: conv.u4
			IL_0022: stfld uint32 System.Decimal/DecCalc::uhi
			IL_0027: ldarg.0
			IL_0028: ldloc.1
			IL_0029: conv.u4
			IL_002a: stfld uint32 System.Decimal/DecCalc::umid
			IL_002f: ldloc.0
			IL_0030: ldloc.1
			IL_0031: conv.u4
			IL_0032: ldc.i4 1000000000
			IL_0037: mul
			IL_0038: conv.u8
			IL_0039: sub
			IL_003a: ldc.i4.s 32
			IL_003c: shl
			IL_003d: ldarg.0
			IL_003e: ldfld uint32 System.Decimal/DecCalc::ulo
			IL_0043: conv.u8
			IL_0044: add
			IL_0045: stloc.2
			IL_0046: ldloc.2
			IL_0047: ldc.i4 1000000000
			IL_004c: conv.i8
			IL_004d: div.un
			IL_004e: conv.u4
			IL_004f: stloc.3
			IL_0050: ldarg.0
			IL_0051: ldloc.3
			IL_0052: stfld uint32 System.Decimal/DecCalc::ulo
			IL_0057: ldloc.2
			IL_0058: conv.u4
			IL_0059: ldloc.3
			IL_005a: ldc.i4 1000000000
			IL_005f: mul
			IL_0060: sub
			IL_0061: ret
		} // end of method DecCalc::DecDivMod1E9

		.method private hidebysig specialname rtspecialname static 
			void .cctor () cil managed 
		{
			// Method begins at RVA 0x47ba4
			// Code size 294 (0x126)
			.maxstack 6

			IL_0000: ldc.i4.s 10
			IL_0002: newarr System.UInt32
			IL_0007: dup
			IL_0008: ldtoken field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=40' '<PrivateImplementationDetails>'::A516EECB41051151F0183A8B0B6F6693C43F7D9E1815F85CAAAB18E00A5269A2
			IL_000d: call void System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class System.Array, valuetype System.RuntimeFieldHandle)
			IL_0012: stsfld uint32[] System.Decimal/DecCalc::s_powers10
			IL_0017: ldc.i4.s 19
			IL_0019: newarr System.UInt64
			IL_001e: dup
			IL_001f: ldtoken field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=152' '<PrivateImplementationDetails>'::DD471F12FFA94CC557A02A91C2CBB95F551AB28C8BBF297B2F953B8886BCCF6D
			IL_0024: call void System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class System.Array, valuetype System.RuntimeFieldHandle)
			IL_0029: stsfld uint64[] System.Decimal/DecCalc::s_ulongPowers10
			IL_002e: ldc.i4.s 81
			IL_0030: newarr System.Double
			IL_0035: dup
			IL_0036: ldtoken field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=648' '<PrivateImplementationDetails>'::'67856A16DB0550FDAB4D1A9B208B0C155C4679CA116BF867B74ED2A0AA4D2955'
			IL_003b: call void System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class System.Array, valuetype System.RuntimeFieldHandle)
			IL_0040: stsfld float64[] System.Decimal/DecCalc::s_doublePowers10
			IL_0045: ldc.i4.8
			IL_0046: newarr System.Decimal/DecCalc/PowerOvfl
			IL_004b: dup
			IL_004c: ldc.i4.0
			IL_004d: ldc.i4 429496729
			IL_0052: ldc.i4 -1717986919
			IL_0057: ldc.i4 -1717986919
			IL_005c: newobj instance void System.Decimal/DecCalc/PowerOvfl::.ctor(uint32, uint32, uint32)
			IL_0061: stelem System.Decimal/DecCalc/PowerOvfl
			IL_0066: dup
			IL_0067: ldc.i4.1
			IL_0068: ldc.i4 42949672
			IL_006d: ldc.i4 -171798692
			IL_0072: ldc.i4 687194767
			IL_0077: newobj instance void System.Decimal/DecCalc/PowerOvfl::.ctor(uint32, uint32, uint32)
			IL_007c: stelem System.Decimal/DecCalc/PowerOvfl
			IL_0081: dup
			IL_0082: ldc.i4.2
			IL_0083: ldc.i4 4294967
			IL_0088: ldc.i4 1271310319
			IL_008d: ldc.i4 -1649267442
			IL_0092: newobj instance void System.Decimal/DecCalc/PowerOvfl::.ctor(uint32, uint32, uint32)
			IL_0097: stelem System.Decimal/DecCalc/PowerOvfl
			IL_009c: dup
			IL_009d: ldc.i4.3
			IL_009e: ldc.i4 429496
			IL_00a3: ldc.i4 -1161359157
			IL_00a8: ldc.i4 694066715
			IL_00ad: newobj instance void System.Decimal/DecCalc/PowerOvfl::.ctor(uint32, uint32, uint32)
			IL_00b2: stelem System.Decimal/DecCalc/PowerOvfl
			IL_00b7: dup
			IL_00b8: ldc.i4.4
			IL_00b9: ldc.i4 42949
			IL_00be: ldc.i4 -1404626105
			IL_00c3: ldc.i4 -2078076977
			IL_00c8: newobj instance void System.Decimal/DecCalc/PowerOvfl::.ctor(uint32, uint32, uint32)
			IL_00cd: stelem System.Decimal/DecCalc/PowerOvfl
			IL_00d2: dup
			IL_00d3: ldc.i4.5
			IL_00d4: ldc.i4 4294
			IL_00d9: ldc.i4 -140462611
			IL_00de: ldc.i4 -1925794617
			IL_00e3: newobj instance void System.Decimal/DecCalc/PowerOvfl::.ctor(uint32, uint32, uint32)
			IL_00e8: stelem System.Decimal/DecCalc/PowerOvfl
			IL_00ed: dup
			IL_00ee: ldc.i4.6
			IL_00ef: ldc.i4 429
			IL_00f4: ldc.i4 2133437386
			IL_00f9: ldc.i4 -192579462
			IL_00fe: newobj instance void System.Decimal/DecCalc/PowerOvfl::.ctor(uint32, uint32, uint32)
			IL_0103: stelem System.Decimal/DecCalc/PowerOvfl
			IL_0108: dup
			IL_0109: ldc.i4.7
			IL_010a: ldc.i4.s 42
			IL_010c: ldc.i4 -216152991
			IL_0111: ldc.i4 410238783
			IL_0116: newobj instance void System.Decimal/DecCalc/PowerOvfl::.ctor(uint32, uint32, uint32)
			IL_011b: stelem System.Decimal/DecCalc/PowerOvfl
			IL_0120: stsfld valuetype System.Decimal/DecCalc/PowerOvfl[] System.Decimal/DecCalc::PowerOvflValues
			IL_0125: ret
		} // end of method DecCalc::.cctor

		// Properties
		.property instance uint32 High()
		{
			.get instance uint32 System.Decimal/DecCalc::get_High()
			.set instance void System.Decimal/DecCalc::set_High(uint32)
		}
		.property instance uint32 Low()
		{
			.get instance uint32 System.Decimal/DecCalc::get_Low()
			.set instance void System.Decimal/DecCalc::set_Low(uint32)
		}
		.property instance uint32 Mid()
		{
			.get instance uint32 System.Decimal/DecCalc::get_Mid()
			.set instance void System.Decimal/DecCalc::set_Mid(uint32)
		}
		.property instance bool IsNegative()
		{
			.get instance bool System.Decimal/DecCalc::get_IsNegative()
		}
		.property instance int32 Scale()
		{
			.get instance int32 System.Decimal/DecCalc::get_Scale()
		}
		.property instance uint64 Low64()
		{
			.get instance uint64 System.Decimal/DecCalc::get_Low64()
			.set instance void System.Decimal/DecCalc::set_Low64(uint64)
		}

	} // end of class DecCalc


	// Fields
	.field public static initonly valuetype System.Decimal Zero
	.custom instance void System.Runtime.CompilerServices.DecimalConstantAttribute::.ctor(uint8, uint8, uint32, uint32, uint32) = (
		01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
		00 00
	)
	.field public static initonly valuetype System.Decimal One
	.custom instance void System.Runtime.CompilerServices.DecimalConstantAttribute::.ctor(uint8, uint8, uint32, uint32, uint32) = (
		01 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00
		00 00
	)
	.field public static initonly valuetype System.Decimal MinusOne
	.custom instance void System.Runtime.CompilerServices.DecimalConstantAttribute::.ctor(uint8, uint8, uint32, uint32, uint32) = (
		01 00 00 80 00 00 00 00 00 00 00 00 01 00 00 00
		00 00
	)
	.field public static initonly valuetype System.Decimal MaxValue
	.custom instance void System.Runtime.CompilerServices.DecimalConstantAttribute::.ctor(uint8, uint8, uint32, uint32, uint32) = (
		01 00 00 00 ff ff ff ff ff ff ff ff ff ff ff ff
		00 00
	)
	.field public static initonly valuetype System.Decimal MinValue
	.custom instance void System.Runtime.CompilerServices.DecimalConstantAttribute::.ctor(uint8, uint8, uint32, uint32, uint32) = (
		01 00 00 80 ff ff ff ff ff ff ff ff ff ff ff ff
		00 00
	)
	.field private initonly int32 _flags
	.field private initonly uint32 _hi32
	.field private initonly uint64 _lo64

	// Methods
	.method assembly hidebysig specialname rtspecialname 
		instance void .ctor (
			valuetype System.Currency 'value'
		) cil managed 
	{
		// Method begins at RVA 0x448d5
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldfld int64 System.Currency::m_value
		IL_0007: call valuetype System.Decimal System.Decimal::FromOACurrency(int64)
		IL_000c: stobj System.Decimal
		IL_0011: ret
	} // end of method Decimal::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x448e8
		// Code size 44 (0x2c)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: blt.s IL_000d

		IL_0004: ldarg.0
		IL_0005: ldc.i4.0
		IL_0006: stfld int32 System.Decimal::_flags
		IL_000b: br.s IL_001c

		IL_000d: ldarg.0
		IL_000e: ldc.i4 -2147483648
		IL_0013: stfld int32 System.Decimal::_flags
		IL_0018: ldarg.1
		IL_0019: neg
		IL_001a: starg.s 'value'

		IL_001c: ldarg.0
		IL_001d: ldarg.1
		IL_001e: conv.u8
		IL_001f: stfld uint64 System.Decimal::_lo64
		IL_0024: ldarg.0
		IL_0025: ldc.i4.0
		IL_0026: stfld uint32 System.Decimal::_hi32
		IL_002b: ret
	} // end of method Decimal::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			uint32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x44915
		// Code size 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: stfld int32 System.Decimal::_flags
		IL_0007: ldarg.0
		IL_0008: ldarg.1
		IL_0009: conv.u8
		IL_000a: stfld uint64 System.Decimal::_lo64
		IL_000f: ldarg.0
		IL_0010: ldc.i4.0
		IL_0011: stfld uint32 System.Decimal::_hi32
		IL_0016: ret
	} // end of method Decimal::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x4492d
		// Code size 44 (0x2c)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: conv.i8
		IL_0003: blt.s IL_000e

		IL_0005: ldarg.0
		IL_0006: ldc.i4.0
		IL_0007: stfld int32 System.Decimal::_flags
		IL_000c: br.s IL_001d

		IL_000e: ldarg.0
		IL_000f: ldc.i4 -2147483648
		IL_0014: stfld int32 System.Decimal::_flags
		IL_0019: ldarg.1
		IL_001a: neg
		IL_001b: starg.s 'value'

		IL_001d: ldarg.0
		IL_001e: ldarg.1
		IL_001f: stfld uint64 System.Decimal::_lo64
		IL_0024: ldarg.0
		IL_0025: ldc.i4.0
		IL_0026: stfld uint32 System.Decimal::_hi32
		IL_002b: ret
	} // end of method Decimal::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			uint64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x4495a
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: stfld int32 System.Decimal::_flags
		IL_0007: ldarg.0
		IL_0008: ldarg.1
		IL_0009: stfld uint64 System.Decimal::_lo64
		IL_000e: ldarg.0
		IL_000f: ldc.i4.0
		IL_0010: stfld uint32 System.Decimal::_hi32
		IL_0015: ret
	} // end of method Decimal::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			float32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x44971
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_0007: call void System.Decimal/DecCalc::VarDecFromR4(float32, valuetype System.Decimal/DecCalc&)
		IL_000c: ret
	} // end of method Decimal::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x4497f
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_0007: call void System.Decimal/DecCalc::VarDecFromR8(float64, valuetype System.Decimal/DecCalc&)
		IL_000c: ret
	} // end of method Decimal::.ctor

	.method private hidebysig specialname rtspecialname 
		instance void .ctor (
			class System.Runtime.Serialization.SerializationInfo info,
			valuetype System.Runtime.Serialization.StreamingContext context
		) cil managed 
	{
		// Method begins at RVA 0x44990
		// Code size 83 (0x53)
		.maxstack 4

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "info"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: ldarg.1
		IL_0010: ldstr "flags"
		IL_0015: callvirt instance int32 System.Runtime.Serialization.SerializationInfo::GetInt32(string)
		IL_001a: stfld int32 System.Decimal::_flags
		IL_001f: ldarg.0
		IL_0020: ldarg.1
		IL_0021: ldstr "hi"
		IL_0026: callvirt instance int32 System.Runtime.Serialization.SerializationInfo::GetInt32(string)
		IL_002b: stfld uint32 System.Decimal::_hi32
		IL_0030: ldarg.0
		IL_0031: ldarg.1
		IL_0032: ldstr "lo"
		IL_0037: callvirt instance int32 System.Runtime.Serialization.SerializationInfo::GetInt32(string)
		IL_003c: conv.u8
		IL_003d: ldarg.1
		IL_003e: ldstr "mid"
		IL_0043: callvirt instance int32 System.Runtime.Serialization.SerializationInfo::GetInt32(string)
		IL_0048: conv.i8
		IL_0049: ldc.i4.s 32
		IL_004b: shl
		IL_004c: add
		IL_004d: stfld uint64 System.Decimal::_lo64
		IL_0052: ret
	} // end of method Decimal::.ctor

	.method private final hidebysig newslot virtual 
		instance void System.Runtime.Serialization.ISerializable.GetObjectData (
			class System.Runtime.Serialization.SerializationInfo info,
			valuetype System.Runtime.Serialization.StreamingContext context
		) cil managed 
	{
		.override method instance void System.Runtime.Serialization.ISerializable::GetObjectData(class System.Runtime.Serialization.SerializationInfo, valuetype System.Runtime.Serialization.StreamingContext)
		// Method begins at RVA 0x449f0
		// Code size 83 (0x53)
		.maxstack 3

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "info"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.1
		IL_000f: ldstr "flags"
		IL_0014: ldarg.0
		IL_0015: ldfld int32 System.Decimal::_flags
		IL_001a: callvirt instance void System.Runtime.Serialization.SerializationInfo::AddValue(string, int32)
		IL_001f: ldarg.1
		IL_0020: ldstr "hi"
		IL_0025: ldarg.0
		IL_0026: call instance uint32 System.Decimal::get_High()
		IL_002b: callvirt instance void System.Runtime.Serialization.SerializationInfo::AddValue(string, int32)
		IL_0030: ldarg.1
		IL_0031: ldstr "lo"
		IL_0036: ldarg.0
		IL_0037: call instance uint32 System.Decimal::get_Low()
		IL_003c: callvirt instance void System.Runtime.Serialization.SerializationInfo::AddValue(string, int32)
		IL_0041: ldarg.1
		IL_0042: ldstr "mid"
		IL_0047: ldarg.0
		IL_0048: call instance uint32 System.Decimal::get_Mid()
		IL_004d: callvirt instance void System.Runtime.Serialization.SerializationInfo::AddValue(string, int32)
		IL_0052: ret
	} // end of method Decimal::System.Runtime.Serialization.ISerializable.GetObjectData

	.method public hidebysig static 
		valuetype System.Decimal FromOACurrency (
			int64 cy
		) cil managed 
	{
		// Method begins at RVA 0x44a50
		// Code size 60 (0x3c)
		.maxstack 5
		.locals (
			[0] uint64,
			[1] bool,
			[2] int32
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.1
		IL_0002: ldarg.0
		IL_0003: ldc.i4.0
		IL_0004: conv.i8
		IL_0005: bge.s IL_000e

		IL_0007: ldc.i4.1
		IL_0008: stloc.1
		IL_0009: ldarg.0
		IL_000a: neg
		IL_000b: stloc.0
		IL_000c: br.s IL_0010

		IL_000e: ldarg.0
		IL_000f: stloc.0

		IL_0010: ldc.i4.4
		IL_0011: stloc.2
		IL_0012: ldloc.0
		IL_0013: brfalse.s IL_002b

		IL_0015: br.s IL_0021
		// loop start (head: IL_0021)
			IL_0017: ldloc.2
			IL_0018: ldc.i4.1
			IL_0019: sub
			IL_001a: stloc.2
			IL_001b: ldloc.0
			IL_001c: ldc.i4.s 10
			IL_001e: conv.i8
			IL_001f: div.un
			IL_0020: stloc.0

			IL_0021: ldloc.2
			IL_0022: brfalse.s IL_002b

			IL_0024: ldloc.0
			IL_0025: ldc.i4.s 10
			IL_0027: conv.i8
			IL_0028: rem.un
			IL_0029: brfalse.s IL_0017
		// end loop

		IL_002b: ldloc.0
		IL_002c: conv.i4
		IL_002d: ldloc.0
		IL_002e: ldc.i4.s 32
		IL_0030: shr.un
		IL_0031: conv.i4
		IL_0032: ldc.i4.0
		IL_0033: ldloc.1
		IL_0034: ldloc.2
		IL_0035: conv.u1
		IL_0036: newobj instance void System.Decimal::.ctor(int32, int32, int32, bool, uint8)
		IL_003b: ret
	} // end of method Decimal::FromOACurrency

	.method public hidebysig static 
		int64 ToOACurrency (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0x44a98
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_0007: call int64 System.Decimal/DecCalc::VarCyFromDec(valuetype System.Decimal/DecCalc&)
		IL_000c: ret
	} // end of method Decimal::ToOACurrency

	.method private hidebysig static 
		bool IsValid (
			int32 'flags'
		) cil managed 
	{
		// Method begins at RVA 0x44aa6
		// Code size 29 (0x1d)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4 2130771967
		IL_0006: and
		IL_0007: brtrue.s IL_001b

		IL_0009: ldarg.0
		IL_000a: ldc.i4 16711680
		IL_000f: and
		IL_0010: ldc.i4 1835008
		IL_0015: cgt.un
		IL_0017: ldc.i4.0
		IL_0018: ceq
		IL_001a: ret

		IL_001b: ldc.i4.0
		IL_001c: ret
	} // end of method Decimal::IsValid

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int32[] bits
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x44ac4
		// Code size 28 (0x1c)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: dup
		IL_0003: brtrue.s IL_0011

		IL_0005: pop
		IL_0006: ldstr "bits"
		IL_000b: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0010: throw

		IL_0011: call valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<int32>::op_Implicit(!0[])
		IL_0016: call instance void System.Decimal::.ctor(valuetype System.ReadOnlySpan`1<int32>)
		IL_001b: ret
	} // end of method Decimal::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			valuetype System.ReadOnlySpan`1<int32> bits
		) cil managed 
	{
		// Method begins at RVA 0x44ae4
		// Code size 92 (0x5c)
		.maxstack 4
		.locals (
			[0] int32
		)

		IL_0000: ldarga.s bits
		IL_0002: call instance int32 valuetype System.ReadOnlySpan`1<int32>::get_Length()
		IL_0007: ldc.i4.4
		IL_0008: bne.un.s IL_0051

		IL_000a: ldarga.s bits
		IL_000c: ldc.i4.3
		IL_000d: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<int32>::get_Item(int32)
		IL_0012: ldind.i4
		IL_0013: stloc.0
		IL_0014: ldloc.0
		IL_0015: call bool System.Decimal::IsValid(int32)
		IL_001a: brfalse.s IL_0051

		IL_001c: ldarg.0
		IL_001d: ldarga.s bits
		IL_001f: ldc.i4.0
		IL_0020: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<int32>::get_Item(int32)
		IL_0025: ldind.i4
		IL_0026: conv.u8
		IL_0027: ldarga.s bits
		IL_0029: ldc.i4.1
		IL_002a: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<int32>::get_Item(int32)
		IL_002f: ldind.i4
		IL_0030: conv.u8
		IL_0031: ldc.i4.s 32
		IL_0033: shl
		IL_0034: add
		IL_0035: stfld uint64 System.Decimal::_lo64
		IL_003a: ldarg.0
		IL_003b: ldarga.s bits
		IL_003d: ldc.i4.2
		IL_003e: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<int32>::get_Item(int32)
		IL_0043: ldind.i4
		IL_0044: stfld uint32 System.Decimal::_hi32
		IL_0049: ldarg.0
		IL_004a: ldloc.0
		IL_004b: stfld int32 System.Decimal::_flags
		IL_0050: ret

		IL_0051: call string System.SR::get_Arg_DecBitCtor()
		IL_0056: newobj instance void System.ArgumentException::.ctor(string)
		IL_005b: throw
	} // end of method Decimal::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 lo,
			int32 mid,
			int32 hi,
			bool isNegative,
			uint8 scale
		) cil managed 
	{
		// Method begins at RVA 0x44b4c
		// Code size 77 (0x4d)
		.maxstack 4

		IL_0000: ldarg.s scale
		IL_0002: ldc.i4.s 28
		IL_0004: ble.s IL_0016

		IL_0006: ldstr "scale"
		IL_000b: call string System.SR::get_ArgumentOutOfRange_DecimalScale()
		IL_0010: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0015: throw

		IL_0016: ldarg.0
		IL_0017: ldarg.1
		IL_0018: conv.u8
		IL_0019: ldarg.2
		IL_001a: conv.u8
		IL_001b: ldc.i4.s 32
		IL_001d: shl
		IL_001e: add
		IL_001f: stfld uint64 System.Decimal::_lo64
		IL_0024: ldarg.0
		IL_0025: ldarg.3
		IL_0026: stfld uint32 System.Decimal::_hi32
		IL_002b: ldarg.0
		IL_002c: ldarg.s scale
		IL_002e: ldc.i4.s 16
		IL_0030: shl
		IL_0031: stfld int32 System.Decimal::_flags
		IL_0036: ldarg.s isNegative
		IL_0038: brfalse.s IL_004c

		IL_003a: ldarg.0
		IL_003b: ldarg.0
		IL_003c: ldfld int32 System.Decimal::_flags
		IL_0041: ldc.i4 -2147483648
		IL_0046: or
		IL_0047: stfld int32 System.Decimal::_flags

		IL_004c: ret
	} // end of method Decimal::.ctor

	.method private final hidebysig newslot virtual 
		instance void System.Runtime.Serialization.IDeserializationCallback.OnDeserialization (
			object sender
		) cil managed 
	{
		.override method instance void System.Runtime.Serialization.IDeserializationCallback::OnDeserialization(object)
		// Method begins at RVA 0x44ba5
		// Code size 25 (0x19)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int32 System.Decimal::_flags
		IL_0006: call bool System.Decimal::IsValid(int32)
		IL_000b: brtrue.s IL_0018

		IL_000d: call string System.SR::get_Overflow_Decimal()
		IL_0012: newobj instance void System.Runtime.Serialization.SerializationException::.ctor(string)
		IL_0017: throw

		IL_0018: ret
	} // end of method Decimal::System.Runtime.Serialization.IDeserializationCallback.OnDeserialization

	.method private hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 lo,
			int32 mid,
			int32 hi,
			int32 'flags'
		) cil managed 
	{
		// Method begins at RVA 0x44bbf
		// Code size 50 (0x32)
		.maxstack 8

		IL_0000: ldarg.s 'flags'
		IL_0002: call bool System.Decimal::IsValid(int32)
		IL_0007: brfalse.s IL_0027

		IL_0009: ldarg.0
		IL_000a: ldarg.1
		IL_000b: conv.u8
		IL_000c: ldarg.2
		IL_000d: conv.u8
		IL_000e: ldc.i4.s 32
		IL_0010: shl
		IL_0011: add
		IL_0012: stfld uint64 System.Decimal::_lo64
		IL_0017: ldarg.0
		IL_0018: ldarg.3
		IL_0019: stfld uint32 System.Decimal::_hi32
		IL_001e: ldarg.0
		IL_001f: ldarg.s 'flags'
		IL_0021: stfld int32 System.Decimal::_flags
		IL_0026: ret

		IL_0027: call string System.SR::get_Arg_DecBitCtor()
		IL_002c: newobj instance void System.ArgumentException::.ctor(string)
		IL_0031: throw
	} // end of method Decimal::.ctor

	.method private hidebysig specialname rtspecialname 
		instance void .ctor (
			[in] valuetype System.Decimal& d,
			int32 'flags'
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x44bf2
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldobj System.Decimal
		IL_0007: stobj System.Decimal
		IL_000c: ldarg.0
		IL_000d: ldarg.2
		IL_000e: stfld int32 System.Decimal::_flags
		IL_0013: ret
	} // end of method Decimal::.ctor

	.method assembly hidebysig static 
		valuetype System.Decimal Abs (
			[in] valuetype System.Decimal& d
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x44c07
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.0
		IL_0002: ldfld int32 System.Decimal::_flags
		IL_0007: ldc.i4 2147483647
		IL_000c: and
		IL_000d: newobj instance void System.Decimal::.ctor(valuetype System.Decimal&, int32)
		IL_0012: ret
	} // end of method Decimal::Abs

	.method public hidebysig static 
		valuetype System.Decimal Add (
			valuetype System.Decimal d1,
			valuetype System.Decimal d2
		) cil managed 
	{
		// Method begins at RVA 0x44c1b
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarga.s d1
		IL_0002: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_0007: ldarga.s d2
		IL_0009: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_000e: ldc.i4.0
		IL_000f: call void System.Decimal/DecCalc::DecAddSub(valuetype System.Decimal/DecCalc&, valuetype System.Decimal/DecCalc&, bool)
		IL_0014: ldarg.0
		IL_0015: ret
	} // end of method Decimal::Add

	.method public hidebysig static 
		valuetype System.Decimal Ceiling (
			valuetype System.Decimal d
		) cil managed 
	{
		// Method begins at RVA 0x44c34
		// Code size 36 (0x24)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int32 System.Decimal::_flags
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldc.i4 16711680
		IL_000d: and
		IL_000e: brfalse.s IL_0022

		IL_0010: ldarga.s d
		IL_0012: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_0017: ldloc.0
		IL_0018: ldc.i4.s 16
		IL_001a: shr
		IL_001b: conv.u1
		IL_001c: ldc.i4.4
		IL_001d: call void System.Decimal/DecCalc::InternalRound(valuetype System.Decimal/DecCalc&, uint32, valuetype System.MidpointRounding)

		IL_0022: ldarg.0
		IL_0023: ret
	} // end of method Decimal::Ceiling

	.method public hidebysig static 
		int32 Compare (
			valuetype System.Decimal d1,
			valuetype System.Decimal d2
		) cil managed 
	{
		// Method begins at RVA 0x44c64
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarga.s d1
		IL_0002: ldarga.s d2
		IL_0004: call int32 System.Decimal/DecCalc::VarDecCmp(valuetype System.Decimal&, valuetype System.Decimal&)
		IL_0009: ret
	} // end of method Decimal::Compare

	.method public final hidebysig newslot virtual 
		instance int32 CompareTo (
			object 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x44c70
		// Code size 40 (0x28)
		.maxstack 2
		.locals (
			[0] valuetype System.Decimal
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.1
		IL_0004: ret

		IL_0005: ldarg.1
		IL_0006: isinst System.Decimal
		IL_000b: brtrue.s IL_0018

		IL_000d: call string System.SR::get_Arg_MustBeDecimal()
		IL_0012: newobj instance void System.ArgumentException::.ctor(string)
		IL_0017: throw

		IL_0018: ldarg.1
		IL_0019: unbox.any System.Decimal
		IL_001e: stloc.0
		IL_001f: ldarg.0
		IL_0020: ldloca.s 0
		IL_0022: call int32 System.Decimal/DecCalc::VarDecCmp(valuetype System.Decimal&, valuetype System.Decimal&)
		IL_0027: ret
	} // end of method Decimal::CompareTo

	.method public final hidebysig newslot virtual 
		instance int32 CompareTo (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0x44ca4
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarga.s 'value'
		IL_0003: call int32 System.Decimal/DecCalc::VarDecCmp(valuetype System.Decimal&, valuetype System.Decimal&)
		IL_0008: ret
	} // end of method Decimal::CompareTo

	.method public hidebysig static 
		valuetype System.Decimal Divide (
			valuetype System.Decimal d1,
			valuetype System.Decimal d2
		) cil managed 
	{
		// Method begins at RVA 0x44cae
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarga.s d1
		IL_0002: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_0007: ldarga.s d2
		IL_0009: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_000e: call void System.Decimal/DecCalc::VarDecDiv(valuetype System.Decimal/DecCalc&, valuetype System.Decimal/DecCalc&)
		IL_0013: ldarg.0
		IL_0014: ret
	} // end of method Decimal::Divide

	.method public hidebysig virtual 
		instance bool Equals (
			object 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x44cc4
		// Code size 29 (0x1d)
		.maxstack 2
		.locals (
			[0] valuetype System.Decimal
		)

		IL_0000: ldarg.1
		IL_0001: isinst System.Decimal
		IL_0006: brfalse.s IL_001b

		IL_0008: ldarg.1
		IL_0009: unbox.any System.Decimal
		IL_000e: stloc.0
		IL_000f: ldarg.0
		IL_0010: ldloca.s 0
		IL_0012: call int32 System.Decimal/DecCalc::VarDecCmp(valuetype System.Decimal&, valuetype System.Decimal&)
		IL_0017: ldc.i4.0
		IL_0018: ceq
		IL_001a: ret

		IL_001b: ldc.i4.0
		IL_001c: ret
	} // end of method Decimal::Equals

	.method public final hidebysig newslot virtual 
		instance bool Equals (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0x44ced
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarga.s 'value'
		IL_0003: call int32 System.Decimal/DecCalc::VarDecCmp(valuetype System.Decimal&, valuetype System.Decimal&)
		IL_0008: ldc.i4.0
		IL_0009: ceq
		IL_000b: ret
	} // end of method Decimal::Equals

	.method public hidebysig virtual 
		instance int32 GetHashCode () cil managed 
	{
		// Method begins at RVA 0x44cfa
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call int32 System.Decimal/DecCalc::GetHashCode(valuetype System.Decimal&)
		IL_0006: ret
	} // end of method Decimal::GetHashCode

	.method public hidebysig static 
		bool Equals (
			valuetype System.Decimal d1,
			valuetype System.Decimal d2
		) cil managed 
	{
		// Method begins at RVA 0x44d02
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarga.s d1
		IL_0002: ldarga.s d2
		IL_0004: call int32 System.Decimal/DecCalc::VarDecCmp(valuetype System.Decimal&, valuetype System.Decimal&)
		IL_0009: ldc.i4.0
		IL_000a: ceq
		IL_000c: ret
	} // end of method Decimal::Equals

	.method public hidebysig static 
		valuetype System.Decimal Floor (
			valuetype System.Decimal d
		) cil managed 
	{
		// Method begins at RVA 0x44d10
		// Code size 36 (0x24)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int32 System.Decimal::_flags
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldc.i4 16711680
		IL_000d: and
		IL_000e: brfalse.s IL_0022

		IL_0010: ldarga.s d
		IL_0012: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_0017: ldloc.0
		IL_0018: ldc.i4.s 16
		IL_001a: shr
		IL_001b: conv.u1
		IL_001c: ldc.i4.3
		IL_001d: call void System.Decimal/DecCalc::InternalRound(valuetype System.Decimal/DecCalc&, uint32, valuetype System.MidpointRounding)

		IL_0022: ldarg.0
		IL_0023: ret
	} // end of method Decimal::Floor

	.method public hidebysig virtual 
		instance string ToString () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x44d40
		// Code size 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.Decimal
		IL_0006: ldnull
		IL_0007: call valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::op_Implicit(!0[])
		IL_000c: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::get_CurrentInfo()
		IL_0011: call string System.Number::FormatDecimal(valuetype System.Decimal, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)
		IL_0016: ret
	} // end of method Decimal::ToString

	.method public hidebysig 
		instance string ToString (
			string format
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x44d58
		// Code size 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.Decimal
		IL_0006: ldarg.1
		IL_0007: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_000c: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::get_CurrentInfo()
		IL_0011: call string System.Number::FormatDecimal(valuetype System.Decimal, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)
		IL_0016: ret
	} // end of method Decimal::ToString

	.method public final hidebysig newslot virtual 
		instance string ToString (
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x44d70
		// Code size 24 (0x18)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.Decimal
		IL_0006: ldnull
		IL_0007: call valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::op_Implicit(!0[])
		IL_000c: ldarg.1
		IL_000d: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0012: call string System.Number::FormatDecimal(valuetype System.Decimal, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)
		IL_0017: ret
	} // end of method Decimal::ToString

	.method public final hidebysig newslot virtual 
		instance string ToString (
			string format,
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x44d89
		// Code size 24 (0x18)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.Decimal
		IL_0006: ldarg.1
		IL_0007: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_000c: ldarg.2
		IL_000d: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0012: call string System.Number::FormatDecimal(valuetype System.Decimal, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo)
		IL_0017: ret
	} // end of method Decimal::ToString

	.method public final hidebysig newslot virtual 
		instance bool TryFormat (
			valuetype System.Span`1<char> destination,
			[out] int32& charsWritten,
			[opt] valuetype System.ReadOnlySpan`1<char> format,
			[opt] class System.IFormatProvider provider
		) cil managed 
	{
		.param [3] = nullref
		.param [4] = nullref
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x44da2
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.Decimal
		IL_0006: ldarg.3
		IL_0007: ldarg.s provider
		IL_0009: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_000e: ldarg.1
		IL_000f: ldarg.2
		IL_0010: call bool System.Number::TryFormatDecimal(valuetype System.Decimal, valuetype System.ReadOnlySpan`1<char>, class System.Globalization.NumberFormatInfo, valuetype System.Span`1<char>, int32&)
		IL_0015: ret
	} // end of method Decimal::TryFormat

	.method public hidebysig static 
		valuetype System.Decimal Parse (
			string s
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x44db9
		// Code size 29 (0x1d)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 17
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0010: ldc.i4.s 111
		IL_0012: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::get_CurrentInfo()
		IL_0017: call valuetype System.Decimal System.Number::ParseDecimal(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo)
		IL_001c: ret
	} // end of method Decimal::Parse

	.method public hidebysig static 
		valuetype System.Decimal Parse (
			string s,
			valuetype System.Globalization.NumberStyles style
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x44dd7
		// Code size 34 (0x22)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call void System.Globalization.NumberFormatInfo::ValidateParseStyleFloatingPoint(valuetype System.Globalization.NumberStyles)
		IL_0006: ldarg.0
		IL_0007: brtrue.s IL_0010

		IL_0009: ldc.i4.s 17
		IL_000b: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0010: ldarg.0
		IL_0011: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0016: ldarg.1
		IL_0017: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::get_CurrentInfo()
		IL_001c: call valuetype System.Decimal System.Number::ParseDecimal(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo)
		IL_0021: ret
	} // end of method Decimal::Parse

	.method public hidebysig static 
		valuetype System.Decimal Parse (
			string s,
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x44dfa
		// Code size 30 (0x1e)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000a

		IL_0003: ldc.i4.s 17
		IL_0005: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000a: ldarg.0
		IL_000b: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0010: ldc.i4.s 111
		IL_0012: ldarg.1
		IL_0013: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_0018: call valuetype System.Decimal System.Number::ParseDecimal(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo)
		IL_001d: ret
	} // end of method Decimal::Parse

	.method public hidebysig static 
		valuetype System.Decimal Parse (
			string s,
			valuetype System.Globalization.NumberStyles style,
			class System.IFormatProvider provider
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x44e19
		// Code size 35 (0x23)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call void System.Globalization.NumberFormatInfo::ValidateParseStyleFloatingPoint(valuetype System.Globalization.NumberStyles)
		IL_0006: ldarg.0
		IL_0007: brtrue.s IL_0010

		IL_0009: ldc.i4.s 17
		IL_000b: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0010: ldarg.0
		IL_0011: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0016: ldarg.1
		IL_0017: ldarg.2
		IL_0018: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_001d: call valuetype System.Decimal System.Number::ParseDecimal(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo)
		IL_0022: ret
	} // end of method Decimal::Parse

	.method public hidebysig static 
		valuetype System.Decimal Parse (
			valuetype System.ReadOnlySpan`1<char> s,
			[opt] valuetype System.Globalization.NumberStyles style,
			[opt] class System.IFormatProvider provider
		) cil managed 
	{
		.param [2] = int32(111)
		.param [3] = nullref
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x44e3d
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call void System.Globalization.NumberFormatInfo::ValidateParseStyleFloatingPoint(valuetype System.Globalization.NumberStyles)
		IL_0006: ldarg.0
		IL_0007: ldarg.1
		IL_0008: ldarg.2
		IL_0009: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_000e: call valuetype System.Decimal System.Number::ParseDecimal(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo)
		IL_0013: ret
	} // end of method Decimal::Parse

	.method public hidebysig static 
		bool TryParse (
			string s,
			[out] valuetype System.Decimal& result
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullWhenAttribute::.ctor(bool) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x44e52
		// Code size 35 (0x23)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000c

		IL_0003: ldarg.1
		IL_0004: initobj System.Decimal
		IL_000a: ldc.i4.0
		IL_000b: ret

		IL_000c: ldarg.0
		IL_000d: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0012: ldc.i4.s 111
		IL_0014: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::get_CurrentInfo()
		IL_0019: ldarg.1
		IL_001a: call valuetype System.Number/ParsingStatus System.Number::TryParseDecimal(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, valuetype System.Decimal&)
		IL_001f: ldc.i4.0
		IL_0020: ceq
		IL_0022: ret
	} // end of method Decimal::TryParse

	.method public hidebysig static 
		bool TryParse (
			valuetype System.ReadOnlySpan`1<char> s,
			[out] valuetype System.Decimal& result
		) cil managed 
	{
		// Method begins at RVA 0x44e76
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 111
		IL_0003: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::get_CurrentInfo()
		IL_0008: ldarg.1
		IL_0009: call valuetype System.Number/ParsingStatus System.Number::TryParseDecimal(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, valuetype System.Decimal&)
		IL_000e: ldc.i4.0
		IL_000f: ceq
		IL_0011: ret
	} // end of method Decimal::TryParse

	.method public hidebysig static 
		bool TryParse (
			string s,
			valuetype System.Globalization.NumberStyles style,
			class System.IFormatProvider provider,
			[out] valuetype System.Decimal& result
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullWhenAttribute::.ctor(bool) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x44e89
		// Code size 41 (0x29)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call void System.Globalization.NumberFormatInfo::ValidateParseStyleFloatingPoint(valuetype System.Globalization.NumberStyles)
		IL_0006: ldarg.0
		IL_0007: brtrue.s IL_0012

		IL_0009: ldarg.3
		IL_000a: initobj System.Decimal
		IL_0010: ldc.i4.0
		IL_0011: ret

		IL_0012: ldarg.0
		IL_0013: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0018: ldarg.1
		IL_0019: ldarg.2
		IL_001a: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_001f: ldarg.3
		IL_0020: call valuetype System.Number/ParsingStatus System.Number::TryParseDecimal(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, valuetype System.Decimal&)
		IL_0025: ldc.i4.0
		IL_0026: ceq
		IL_0028: ret
	} // end of method Decimal::TryParse

	.method public hidebysig static 
		bool TryParse (
			valuetype System.ReadOnlySpan`1<char> s,
			valuetype System.Globalization.NumberStyles style,
			class System.IFormatProvider provider,
			[out] valuetype System.Decimal& result
		) cil managed 
	{
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x44eb3
		// Code size 24 (0x18)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call void System.Globalization.NumberFormatInfo::ValidateParseStyleFloatingPoint(valuetype System.Globalization.NumberStyles)
		IL_0006: ldarg.0
		IL_0007: ldarg.1
		IL_0008: ldarg.2
		IL_0009: call class System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo::GetInstance(class System.IFormatProvider)
		IL_000e: ldarg.3
		IL_000f: call valuetype System.Number/ParsingStatus System.Number::TryParseDecimal(valuetype System.ReadOnlySpan`1<char>, valuetype System.Globalization.NumberStyles, class System.Globalization.NumberFormatInfo, valuetype System.Decimal&)
		IL_0014: ldc.i4.0
		IL_0015: ceq
		IL_0017: ret
	} // end of method Decimal::TryParse

	.method public hidebysig static 
		int32[] GetBits (
			valuetype System.Decimal d
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		// Method begins at RVA 0x44ecc
		// Code size 46 (0x2e)
		.maxstack 8

		IL_0000: ldc.i4.4
		IL_0001: newarr System.Int32
		IL_0006: dup
		IL_0007: ldc.i4.0
		IL_0008: ldarga.s d
		IL_000a: call instance uint32 System.Decimal::get_Low()
		IL_000f: stelem.i4
		IL_0010: dup
		IL_0011: ldc.i4.1
		IL_0012: ldarga.s d
		IL_0014: call instance uint32 System.Decimal::get_Mid()
		IL_0019: stelem.i4
		IL_001a: dup
		IL_001b: ldc.i4.2
		IL_001c: ldarga.s d
		IL_001e: call instance uint32 System.Decimal::get_High()
		IL_0023: stelem.i4
		IL_0024: dup
		IL_0025: ldc.i4.3
		IL_0026: ldarg.0
		IL_0027: ldfld int32 System.Decimal::_flags
		IL_002c: stelem.i4
		IL_002d: ret
	} // end of method Decimal::GetBits

	.method public hidebysig static 
		int32 GetBits (
			valuetype System.Decimal d,
			valuetype System.Span`1<int32> destination
		) cil managed 
	{
		// Method begins at RVA 0x44efc
		// Code size 80 (0x50)
		.maxstack 2

		IL_0000: ldarga.s destination
		IL_0002: call instance int32 valuetype System.Span`1<int32>::get_Length()
		IL_0007: ldc.i4.3
		IL_0008: bgt.un.s IL_000f

		IL_000a: call void System.ThrowHelper::ThrowArgumentException_DestinationTooShort()

		IL_000f: ldarga.s destination
		IL_0011: ldc.i4.0
		IL_0012: call instance !0& valuetype System.Span`1<int32>::get_Item(int32)
		IL_0017: ldarga.s d
		IL_0019: call instance uint32 System.Decimal::get_Low()
		IL_001e: stind.i4
		IL_001f: ldarga.s destination
		IL_0021: ldc.i4.1
		IL_0022: call instance !0& valuetype System.Span`1<int32>::get_Item(int32)
		IL_0027: ldarga.s d
		IL_0029: call instance uint32 System.Decimal::get_Mid()
		IL_002e: stind.i4
		IL_002f: ldarga.s destination
		IL_0031: ldc.i4.2
		IL_0032: call instance !0& valuetype System.Span`1<int32>::get_Item(int32)
		IL_0037: ldarga.s d
		IL_0039: call instance uint32 System.Decimal::get_High()
		IL_003e: stind.i4
		IL_003f: ldarga.s destination
		IL_0041: ldc.i4.3
		IL_0042: call instance !0& valuetype System.Span`1<int32>::get_Item(int32)
		IL_0047: ldarg.0
		IL_0048: ldfld int32 System.Decimal::_flags
		IL_004d: stind.i4
		IL_004e: ldc.i4.4
		IL_004f: ret
	} // end of method Decimal::GetBits

	.method public hidebysig static 
		bool TryGetBits (
			valuetype System.Decimal d,
			valuetype System.Span`1<int32> destination,
			[out] int32& valuesWritten
		) cil managed 
	{
		// Method begins at RVA 0x44f58
		// Code size 83 (0x53)
		.maxstack 2

		IL_0000: ldarga.s destination
		IL_0002: call instance int32 valuetype System.Span`1<int32>::get_Length()
		IL_0007: ldc.i4.3
		IL_0008: bgt.un.s IL_000f

		IL_000a: ldarg.2
		IL_000b: ldc.i4.0
		IL_000c: stind.i4
		IL_000d: ldc.i4.0
		IL_000e: ret

		IL_000f: ldarga.s destination
		IL_0011: ldc.i4.0
		IL_0012: call instance !0& valuetype System.Span`1<int32>::get_Item(int32)
		IL_0017: ldarga.s d
		IL_0019: call instance uint32 System.Decimal::get_Low()
		IL_001e: stind.i4
		IL_001f: ldarga.s destination
		IL_0021: ldc.i4.1
		IL_0022: call instance !0& valuetype System.Span`1<int32>::get_Item(int32)
		IL_0027: ldarga.s d
		IL_0029: call instance uint32 System.Decimal::get_Mid()
		IL_002e: stind.i4
		IL_002f: ldarga.s destination
		IL_0031: ldc.i4.2
		IL_0032: call instance !0& valuetype System.Span`1<int32>::get_Item(int32)
		IL_0037: ldarga.s d
		IL_0039: call instance uint32 System.Decimal::get_High()
		IL_003e: stind.i4
		IL_003f: ldarga.s destination
		IL_0041: ldc.i4.3
		IL_0042: call instance !0& valuetype System.Span`1<int32>::get_Item(int32)
		IL_0047: ldarg.0
		IL_0048: ldfld int32 System.Decimal::_flags
		IL_004d: stind.i4
		IL_004e: ldarg.2
		IL_004f: ldc.i4.4
		IL_0050: stind.i4
		IL_0051: ldc.i4.1
		IL_0052: ret
	} // end of method Decimal::TryGetBits

	.method assembly hidebysig static 
		void GetBytes (
			[in] valuetype System.Decimal& d,
			uint8[] buffer
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x44fb8
		// Code size 78 (0x4e)
		.maxstack 2
		.locals (
			[0] valuetype System.Span`1<uint8>
		)

		IL_0000: ldarg.1
		IL_0001: call valuetype System.Span`1<!0> valuetype System.Span`1<uint8>::op_Implicit(!0[])
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldarg.0
		IL_0009: call instance uint32 System.Decimal::get_Low()
		IL_000e: call void System.Buffers.Binary.BinaryPrimitives::WriteInt32LittleEndian(valuetype System.Span`1<uint8>, int32)
		IL_0013: ldloca.s 0
		IL_0015: ldc.i4.4
		IL_0016: call instance valuetype System.Span`1<!0> valuetype System.Span`1<uint8>::Slice(int32)
		IL_001b: ldarg.0
		IL_001c: call instance uint32 System.Decimal::get_Mid()
		IL_0021: call void System.Buffers.Binary.BinaryPrimitives::WriteInt32LittleEndian(valuetype System.Span`1<uint8>, int32)
		IL_0026: ldloca.s 0
		IL_0028: ldc.i4.8
		IL_0029: call instance valuetype System.Span`1<!0> valuetype System.Span`1<uint8>::Slice(int32)
		IL_002e: ldarg.0
		IL_002f: call instance uint32 System.Decimal::get_High()
		IL_0034: call void System.Buffers.Binary.BinaryPrimitives::WriteInt32LittleEndian(valuetype System.Span`1<uint8>, int32)
		IL_0039: ldloca.s 0
		IL_003b: ldc.i4.s 12
		IL_003d: call instance valuetype System.Span`1<!0> valuetype System.Span`1<uint8>::Slice(int32)
		IL_0042: ldarg.0
		IL_0043: ldfld int32 System.Decimal::_flags
		IL_0048: call void System.Buffers.Binary.BinaryPrimitives::WriteInt32LittleEndian(valuetype System.Span`1<uint8>, int32)
		IL_004d: ret
	} // end of method Decimal::GetBytes

	.method assembly hidebysig static 
		valuetype System.Decimal ToDecimal (
			valuetype System.ReadOnlySpan`1<uint8> span
		) cil managed 
	{
		// Method begins at RVA 0x45014
		// Code size 60 (0x3c)
		.maxstack 4
		.locals (
			[0] int32,
			[1] int32,
			[2] int32,
			[3] int32
		)

		IL_0000: ldarg.0
		IL_0001: call int32 System.Buffers.Binary.BinaryPrimitives::ReadInt32LittleEndian(valuetype System.ReadOnlySpan`1<uint8>)
		IL_0006: stloc.0
		IL_0007: ldarga.s span
		IL_0009: ldc.i4.4
		IL_000a: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<uint8>::Slice(int32)
		IL_000f: call int32 System.Buffers.Binary.BinaryPrimitives::ReadInt32LittleEndian(valuetype System.ReadOnlySpan`1<uint8>)
		IL_0014: stloc.1
		IL_0015: ldarga.s span
		IL_0017: ldc.i4.8
		IL_0018: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<uint8>::Slice(int32)
		IL_001d: call int32 System.Buffers.Binary.BinaryPrimitives::ReadInt32LittleEndian(valuetype System.ReadOnlySpan`1<uint8>)
		IL_0022: stloc.2
		IL_0023: ldarga.s span
		IL_0025: ldc.i4.s 12
		IL_0027: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<uint8>::Slice(int32)
		IL_002c: call int32 System.Buffers.Binary.BinaryPrimitives::ReadInt32LittleEndian(valuetype System.ReadOnlySpan`1<uint8>)
		IL_0031: stloc.3
		IL_0032: ldloc.0
		IL_0033: ldloc.1
		IL_0034: ldloc.2
		IL_0035: ldloc.3
		IL_0036: newobj instance void System.Decimal::.ctor(int32, int32, int32, int32)
		IL_003b: ret
	} // end of method Decimal::ToDecimal

	.method assembly hidebysig static 
		valuetype System.Decimal& modreq(System.Runtime.InteropServices.InAttribute) Max (
			[in] valuetype System.Decimal& d1,
			[in] valuetype System.Decimal& d2
		) cil managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
				01 00 00 00
			)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
				01 00 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x4505c
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call int32 System.Decimal/DecCalc::VarDecCmp(valuetype System.Decimal&, valuetype System.Decimal&)
		IL_0007: ldc.i4.0
		IL_0008: bge.s IL_000c

		IL_000a: ldarg.1
		IL_000b: ret

		IL_000c: ldarg.0
		IL_000d: ret
	} // end of method Decimal::Max

	.method assembly hidebysig static 
		valuetype System.Decimal& modreq(System.Runtime.InteropServices.InAttribute) Min (
			[in] valuetype System.Decimal& d1,
			[in] valuetype System.Decimal& d2
		) cil managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
				01 00 00 00
			)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
				01 00 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x4506b
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call int32 System.Decimal/DecCalc::VarDecCmp(valuetype System.Decimal&, valuetype System.Decimal&)
		IL_0007: ldc.i4.0
		IL_0008: blt.s IL_000c

		IL_000a: ldarg.1
		IL_000b: ret

		IL_000c: ldarg.0
		IL_000d: ret
	} // end of method Decimal::Min

	.method public hidebysig static 
		valuetype System.Decimal Remainder (
			valuetype System.Decimal d1,
			valuetype System.Decimal d2
		) cil managed 
	{
		// Method begins at RVA 0x4507a
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarga.s d1
		IL_0002: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_0007: ldarga.s d2
		IL_0009: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_000e: call void System.Decimal/DecCalc::VarDecMod(valuetype System.Decimal/DecCalc&, valuetype System.Decimal/DecCalc&)
		IL_0013: ldarg.0
		IL_0014: ret
	} // end of method Decimal::Remainder

	.method public hidebysig static 
		valuetype System.Decimal Multiply (
			valuetype System.Decimal d1,
			valuetype System.Decimal d2
		) cil managed 
	{
		// Method begins at RVA 0x45090
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarga.s d1
		IL_0002: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_0007: ldarga.s d2
		IL_0009: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_000e: call void System.Decimal/DecCalc::VarDecMul(valuetype System.Decimal/DecCalc&, valuetype System.Decimal/DecCalc&)
		IL_0013: ldarg.0
		IL_0014: ret
	} // end of method Decimal::Multiply

	.method public hidebysig static 
		valuetype System.Decimal Negate (
			valuetype System.Decimal d
		) cil managed 
	{
		// Method begins at RVA 0x450a6
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarga.s d
		IL_0002: ldarg.0
		IL_0003: ldfld int32 System.Decimal::_flags
		IL_0008: ldc.i4 -2147483648
		IL_000d: xor
		IL_000e: newobj instance void System.Decimal::.ctor(valuetype System.Decimal&, int32)
		IL_0013: ret
	} // end of method Decimal::Negate

	.method public hidebysig static 
		valuetype System.Decimal Round (
			valuetype System.Decimal d
		) cil managed 
	{
		// Method begins at RVA 0x450bb
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarga.s d
		IL_0002: ldc.i4.0
		IL_0003: ldc.i4.0
		IL_0004: call valuetype System.Decimal System.Decimal::Round(valuetype System.Decimal&, int32, valuetype System.MidpointRounding)
		IL_0009: ret
	} // end of method Decimal::Round

	.method public hidebysig static 
		valuetype System.Decimal Round (
			valuetype System.Decimal d,
			int32 decimals
		) cil managed 
	{
		// Method begins at RVA 0x450c6
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarga.s d
		IL_0002: ldarg.1
		IL_0003: ldc.i4.0
		IL_0004: call valuetype System.Decimal System.Decimal::Round(valuetype System.Decimal&, int32, valuetype System.MidpointRounding)
		IL_0009: ret
	} // end of method Decimal::Round

	.method public hidebysig static 
		valuetype System.Decimal Round (
			valuetype System.Decimal d,
			valuetype System.MidpointRounding mode
		) cil managed 
	{
		// Method begins at RVA 0x450d1
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarga.s d
		IL_0002: ldc.i4.0
		IL_0003: ldarg.1
		IL_0004: call valuetype System.Decimal System.Decimal::Round(valuetype System.Decimal&, int32, valuetype System.MidpointRounding)
		IL_0009: ret
	} // end of method Decimal::Round

	.method public hidebysig static 
		valuetype System.Decimal Round (
			valuetype System.Decimal d,
			int32 decimals,
			valuetype System.MidpointRounding mode
		) cil managed 
	{
		// Method begins at RVA 0x450dc
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarga.s d
		IL_0002: ldarg.1
		IL_0003: ldarg.2
		IL_0004: call valuetype System.Decimal System.Decimal::Round(valuetype System.Decimal&, int32, valuetype System.MidpointRounding)
		IL_0009: ret
	} // end of method Decimal::Round

	.method private hidebysig static 
		valuetype System.Decimal Round (
			valuetype System.Decimal& d,
			int32 decimals,
			valuetype System.MidpointRounding mode
		) cil managed 
	{
		// Method begins at RVA 0x450e8
		// Code size 90 (0x5a)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.s 28
		IL_0003: ble.un.s IL_0015

		IL_0005: ldstr "decimals"
		IL_000a: call string System.SR::get_ArgumentOutOfRange_DecimalRound()
		IL_000f: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0014: throw

		IL_0015: ldarg.2
		IL_0016: ldc.i4.4
		IL_0017: ble.un.s IL_0039

		IL_0019: call string System.SR::get_Argument_InvalidEnumValue()
		IL_001e: ldarg.2
		IL_001f: box System.MidpointRounding
		IL_0024: ldstr "MidpointRounding"
		IL_0029: call string System.SR::Format(string, object, object)
		IL_002e: ldstr "mode"
		IL_0033: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0038: throw

		IL_0039: ldarg.0
		IL_003a: call instance int32 System.Decimal::get_Scale()
		IL_003f: ldarg.1
		IL_0040: sub
		IL_0041: stloc.0
		IL_0042: ldloc.0
		IL_0043: ldc.i4.0
		IL_0044: ble.s IL_0053

		IL_0046: ldarg.0
		IL_0047: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_004c: ldloc.0
		IL_004d: ldarg.2
		IL_004e: call void System.Decimal/DecCalc::InternalRound(valuetype System.Decimal/DecCalc&, uint32, valuetype System.MidpointRounding)

		IL_0053: ldarg.0
		IL_0054: ldobj System.Decimal
		IL_0059: ret
	} // end of method Decimal::Round

	.method assembly hidebysig static 
		int32 Sign (
			[in] valuetype System.Decimal& d
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.IsReadOnlyAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x4514e
		// Code size 30 (0x1e)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance uint64 System.Decimal::get_Low64()
		IL_0006: ldarg.0
		IL_0007: call instance uint32 System.Decimal::get_High()
		IL_000c: conv.u8
		IL_000d: or
		IL_000e: brfalse.s IL_001c

		IL_0010: ldarg.0
		IL_0011: ldfld int32 System.Decimal::_flags
		IL_0016: ldc.i4.s 31
		IL_0018: shr
		IL_0019: ldc.i4.1
		IL_001a: or
		IL_001b: ret

		IL_001c: ldc.i4.0
		IL_001d: ret
	} // end of method Decimal::Sign

	.method public hidebysig static 
		valuetype System.Decimal Subtract (
			valuetype System.Decimal d1,
			valuetype System.Decimal d2
		) cil managed 
	{
		// Method begins at RVA 0x4516d
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarga.s d1
		IL_0002: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_0007: ldarga.s d2
		IL_0009: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_000e: ldc.i4.1
		IL_000f: call void System.Decimal/DecCalc::DecAddSub(valuetype System.Decimal/DecCalc&, valuetype System.Decimal/DecCalc&, bool)
		IL_0014: ldarg.0
		IL_0015: ret
	} // end of method Decimal::Subtract

	.method public hidebysig static 
		uint8 ToByte (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0x45184
		// Code size 32 (0x20)
		.maxstack 2
		.locals (
			[0] uint32
		)

		.try
		{
			IL_0000: ldarg.0
			IL_0001: call uint32 System.Decimal::ToUInt32(valuetype System.Decimal)
			IL_0006: stloc.0
			IL_0007: leave.s IL_0012
		} // end .try
		catch System.OverflowException
		{
			IL_0009: pop
			IL_000a: ldc.i4.6
			IL_000b: call void System.Number::ThrowOverflowException(valuetype System.TypeCode)
			IL_0010: rethrow
		} // end handler

		IL_0012: ldloc.0
		IL_0013: ldloc.0
		IL_0014: conv.u1
		IL_0015: beq.s IL_001d

		IL_0017: ldc.i4.6
		IL_0018: call void System.Number::ThrowOverflowException(valuetype System.TypeCode)

		IL_001d: ldloc.0
		IL_001e: conv.u1
		IL_001f: ret
	} // end of method Decimal::ToByte

	.method public hidebysig static 
		int8 ToSByte (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x451c0
		// Code size 32 (0x20)
		.maxstack 2
		.locals (
			[0] int32
		)

		.try
		{
			IL_0000: ldarg.0
			IL_0001: call int32 System.Decimal::ToInt32(valuetype System.Decimal)
			IL_0006: stloc.0
			IL_0007: leave.s IL_0012
		} // end .try
		catch System.OverflowException
		{
			IL_0009: pop
			IL_000a: ldc.i4.5
			IL_000b: call void System.Number::ThrowOverflowException(valuetype System.TypeCode)
			IL_0010: rethrow
		} // end handler

		IL_0012: ldloc.0
		IL_0013: ldloc.0
		IL_0014: conv.i1
		IL_0015: beq.s IL_001d

		IL_0017: ldc.i4.5
		IL_0018: call void System.Number::ThrowOverflowException(valuetype System.TypeCode)

		IL_001d: ldloc.0
		IL_001e: conv.i1
		IL_001f: ret
	} // end of method Decimal::ToSByte

	.method public hidebysig static 
		int16 ToInt16 (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0x451fc
		// Code size 32 (0x20)
		.maxstack 2
		.locals (
			[0] int32
		)

		.try
		{
			IL_0000: ldarg.0
			IL_0001: call int32 System.Decimal::ToInt32(valuetype System.Decimal)
			IL_0006: stloc.0
			IL_0007: leave.s IL_0012
		} // end .try
		catch System.OverflowException
		{
			IL_0009: pop
			IL_000a: ldc.i4.7
			IL_000b: call void System.Number::ThrowOverflowException(valuetype System.TypeCode)
			IL_0010: rethrow
		} // end handler

		IL_0012: ldloc.0
		IL_0013: ldloc.0
		IL_0014: conv.i2
		IL_0015: beq.s IL_001d

		IL_0017: ldc.i4.7
		IL_0018: call void System.Number::ThrowOverflowException(valuetype System.TypeCode)

		IL_001d: ldloc.0
		IL_001e: conv.i2
		IL_001f: ret
	} // end of method Decimal::ToInt16

	.method public hidebysig static 
		float64 ToDouble (
			valuetype System.Decimal d
		) cil managed 
	{
		// Method begins at RVA 0x45238
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s d
		IL_0002: call float64 System.Decimal/DecCalc::VarR8FromDec(valuetype System.Decimal&)
		IL_0007: ret
	} // end of method Decimal::ToDouble

	.method public hidebysig static 
		int32 ToInt32 (
			valuetype System.Decimal d
		) cil managed 
	{
		// Method begins at RVA 0x45244
		// Code size 67 (0x43)
		.maxstack 2
		.locals (
			[0] int32
		)

		IL_0000: ldarga.s d
		IL_0002: call void System.Decimal::Truncate(valuetype System.Decimal&)
		IL_0007: ldarga.s d
		IL_0009: call instance uint32 System.Decimal::get_High()
		IL_000e: ldarga.s d
		IL_0010: call instance uint32 System.Decimal::get_Mid()
		IL_0015: or
		IL_0016: brtrue.s IL_0038

		IL_0018: ldarga.s d
		IL_001a: call instance uint32 System.Decimal::get_Low()
		IL_001f: stloc.0
		IL_0020: ldarga.s d
		IL_0022: call instance bool System.Decimal::get_IsNegative()
		IL_0027: brtrue.s IL_002f

		IL_0029: ldloc.0
		IL_002a: ldc.i4.0
		IL_002b: blt.s IL_0038

		IL_002d: ldloc.0
		IL_002e: ret

		IL_002f: ldloc.0
		IL_0030: neg
		IL_0031: stloc.0
		IL_0032: ldloc.0
		IL_0033: ldc.i4.0
		IL_0034: bgt.s IL_0038

		IL_0036: ldloc.0
		IL_0037: ret

		IL_0038: call string System.SR::get_Overflow_Int32()
		IL_003d: newobj instance void System.OverflowException::.ctor(string)
		IL_0042: throw
	} // end of method Decimal::ToInt32

	.method public hidebysig static 
		int64 ToInt64 (
			valuetype System.Decimal d
		) cil managed 
	{
		// Method begins at RVA 0x45294
		// Code size 61 (0x3d)
		.maxstack 2
		.locals (
			[0] int64
		)

		IL_0000: ldarga.s d
		IL_0002: call void System.Decimal::Truncate(valuetype System.Decimal&)
		IL_0007: ldarga.s d
		IL_0009: call instance uint32 System.Decimal::get_High()
		IL_000e: brtrue.s IL_0032

		IL_0010: ldarga.s d
		IL_0012: call instance uint64 System.Decimal::get_Low64()
		IL_0017: stloc.0
		IL_0018: ldarga.s d
		IL_001a: call instance bool System.Decimal::get_IsNegative()
		IL_001f: brtrue.s IL_0028

		IL_0021: ldloc.0
		IL_0022: ldc.i4.0
		IL_0023: conv.i8
		IL_0024: blt.s IL_0032

		IL_0026: ldloc.0
		IL_0027: ret

		IL_0028: ldloc.0
		IL_0029: neg
		IL_002a: stloc.0
		IL_002b: ldloc.0
		IL_002c: ldc.i4.0
		IL_002d: conv.i8
		IL_002e: bgt.s IL_0032

		IL_0030: ldloc.0
		IL_0031: ret

		IL_0032: call string System.SR::get_Overflow_Int64()
		IL_0037: newobj instance void System.OverflowException::.ctor(string)
		IL_003c: throw
	} // end of method Decimal::ToInt64

	.method public hidebysig static 
		uint16 ToUInt16 (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x452e0
		// Code size 32 (0x20)
		.maxstack 2
		.locals (
			[0] uint32
		)

		.try
		{
			IL_0000: ldarg.0
			IL_0001: call uint32 System.Decimal::ToUInt32(valuetype System.Decimal)
			IL_0006: stloc.0
			IL_0007: leave.s IL_0012
		} // end .try
		catch System.OverflowException
		{
			IL_0009: pop
			IL_000a: ldc.i4.8
			IL_000b: call void System.Number::ThrowOverflowException(valuetype System.TypeCode)
			IL_0010: rethrow
		} // end handler

		IL_0012: ldloc.0
		IL_0013: ldloc.0
		IL_0014: conv.u2
		IL_0015: beq.s IL_001d

		IL_0017: ldc.i4.8
		IL_0018: call void System.Number::ThrowOverflowException(valuetype System.TypeCode)

		IL_001d: ldloc.0
		IL_001e: conv.u2
		IL_001f: ret
	} // end of method Decimal::ToUInt16

	.method public hidebysig static 
		uint32 ToUInt32 (
			valuetype System.Decimal d
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x4531c
		// Code size 57 (0x39)
		.maxstack 2
		.locals (
			[0] uint32
		)

		IL_0000: ldarga.s d
		IL_0002: call void System.Decimal::Truncate(valuetype System.Decimal&)
		IL_0007: ldarga.s d
		IL_0009: call instance uint32 System.Decimal::get_High()
		IL_000e: ldarga.s d
		IL_0010: call instance uint32 System.Decimal::get_Mid()
		IL_0015: or
		IL_0016: brtrue.s IL_002e

		IL_0018: ldarga.s d
		IL_001a: call instance uint32 System.Decimal::get_Low()
		IL_001f: stloc.0
		IL_0020: ldarga.s d
		IL_0022: call instance bool System.Decimal::get_IsNegative()
		IL_0027: brfalse.s IL_002c

		IL_0029: ldloc.0
		IL_002a: brtrue.s IL_002e

		IL_002c: ldloc.0
		IL_002d: ret

		IL_002e: call string System.SR::get_Overflow_UInt32()
		IL_0033: newobj instance void System.OverflowException::.ctor(string)
		IL_0038: throw
	} // end of method Decimal::ToUInt32

	.method public hidebysig static 
		uint64 ToUInt64 (
			valuetype System.Decimal d
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x45364
		// Code size 49 (0x31)
		.maxstack 1
		.locals (
			[0] uint64
		)

		IL_0000: ldarga.s d
		IL_0002: call void System.Decimal::Truncate(valuetype System.Decimal&)
		IL_0007: ldarga.s d
		IL_0009: call instance uint32 System.Decimal::get_High()
		IL_000e: brtrue.s IL_0026

		IL_0010: ldarga.s d
		IL_0012: call instance uint64 System.Decimal::get_Low64()
		IL_0017: stloc.0
		IL_0018: ldarga.s d
		IL_001a: call instance bool System.Decimal::get_IsNegative()
		IL_001f: brfalse.s IL_0024

		IL_0021: ldloc.0
		IL_0022: brtrue.s IL_0026

		IL_0024: ldloc.0
		IL_0025: ret

		IL_0026: call string System.SR::get_Overflow_UInt64()
		IL_002b: newobj instance void System.OverflowException::.ctor(string)
		IL_0030: throw
	} // end of method Decimal::ToUInt64

	.method public hidebysig static 
		float32 ToSingle (
			valuetype System.Decimal d
		) cil managed 
	{
		// Method begins at RVA 0x453a1
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s d
		IL_0002: call float32 System.Decimal/DecCalc::VarR4FromDec(valuetype System.Decimal&)
		IL_0007: ret
	} // end of method Decimal::ToSingle

	.method public hidebysig static 
		valuetype System.Decimal Truncate (
			valuetype System.Decimal d
		) cil managed 
	{
		// Method begins at RVA 0x453aa
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarga.s d
		IL_0002: call void System.Decimal::Truncate(valuetype System.Decimal&)
		IL_0007: ldarg.0
		IL_0008: ret
	} // end of method Decimal::Truncate

	.method private hidebysig static 
		void Truncate (
			valuetype System.Decimal& d
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x453b4
		// Code size 34 (0x22)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int32 System.Decimal::_flags
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldc.i4 16711680
		IL_000d: and
		IL_000e: brfalse.s IL_0021

		IL_0010: ldarg.0
		IL_0011: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_0016: ldloc.0
		IL_0017: ldc.i4.s 16
		IL_0019: shr
		IL_001a: conv.u1
		IL_001b: ldc.i4.2
		IL_001c: call void System.Decimal/DecCalc::InternalRound(valuetype System.Decimal/DecCalc&, uint32, valuetype System.MidpointRounding)

		IL_0021: ret
	} // end of method Decimal::Truncate

	.method public hidebysig specialname static 
		valuetype System.Decimal op_Implicit (
			uint8 'value'
		) cil managed 
	{
		// Method begins at RVA 0x453e2
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void System.Decimal::.ctor(uint32)
		IL_0006: ret
	} // end of method Decimal::op_Implicit

	.method public hidebysig specialname static 
		valuetype System.Decimal op_Implicit (
			int8 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x453ea
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void System.Decimal::.ctor(int32)
		IL_0006: ret
	} // end of method Decimal::op_Implicit

	.method public hidebysig specialname static 
		valuetype System.Decimal op_Implicit (
			int16 'value'
		) cil managed 
	{
		// Method begins at RVA 0x453ea
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void System.Decimal::.ctor(int32)
		IL_0006: ret
	} // end of method Decimal::op_Implicit

	.method public hidebysig specialname static 
		valuetype System.Decimal op_Implicit (
			uint16 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x453e2
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void System.Decimal::.ctor(uint32)
		IL_0006: ret
	} // end of method Decimal::op_Implicit

	.method public hidebysig specialname static 
		valuetype System.Decimal op_Implicit (
			char 'value'
		) cil managed 
	{
		// Method begins at RVA 0x453e2
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void System.Decimal::.ctor(uint32)
		IL_0006: ret
	} // end of method Decimal::op_Implicit

	.method public hidebysig specialname static 
		valuetype System.Decimal op_Implicit (
			int32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x453ea
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void System.Decimal::.ctor(int32)
		IL_0006: ret
	} // end of method Decimal::op_Implicit

	.method public hidebysig specialname static 
		valuetype System.Decimal op_Implicit (
			uint32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x453e2
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void System.Decimal::.ctor(uint32)
		IL_0006: ret
	} // end of method Decimal::op_Implicit

	.method public hidebysig specialname static 
		valuetype System.Decimal op_Implicit (
			int64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x453f2
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void System.Decimal::.ctor(int64)
		IL_0006: ret
	} // end of method Decimal::op_Implicit

	.method public hidebysig specialname static 
		valuetype System.Decimal op_Implicit (
			uint64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x453fa
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void System.Decimal::.ctor(uint64)
		IL_0006: ret
	} // end of method Decimal::op_Implicit

	.method public hidebysig specialname static 
		valuetype System.Decimal op_Explicit (
			float32 'value'
		) cil managed 
	{
		// Method begins at RVA 0x45402
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void System.Decimal::.ctor(float32)
		IL_0006: ret
	} // end of method Decimal::op_Explicit

	.method public hidebysig specialname static 
		valuetype System.Decimal op_Explicit (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0x4540a
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void System.Decimal::.ctor(float64)
		IL_0006: ret
	} // end of method Decimal::op_Explicit

	.method public hidebysig specialname static 
		uint8 op_Explicit (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0x45412
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call uint8 System.Decimal::ToByte(valuetype System.Decimal)
		IL_0006: ret
	} // end of method Decimal::op_Explicit

	.method public hidebysig specialname static 
		int8 op_Explicit (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x4541a
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call int8 System.Decimal::ToSByte(valuetype System.Decimal)
		IL_0006: ret
	} // end of method Decimal::op_Explicit

	.method public hidebysig specialname static 
		char op_Explicit (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0x45424
		// Code size 24 (0x18)
		.maxstack 2
		.locals (
			[0] uint16,
			[1] class System.OverflowException
		)

		.try
		{
			IL_0000: ldarg.0
			IL_0001: call uint16 System.Decimal::ToUInt16(valuetype System.Decimal)
			IL_0006: stloc.0
			IL_0007: leave.s IL_0016
		} // end .try
		catch System.OverflowException
		{
			IL_0009: stloc.1
			IL_000a: call string System.SR::get_Overflow_Char()
			IL_000f: ldloc.1
			IL_0010: newobj instance void System.OverflowException::.ctor(string, class System.Exception)
			IL_0015: throw
		} // end handler

		IL_0016: ldloc.0
		IL_0017: ret
	} // end of method Decimal::op_Explicit

	.method public hidebysig specialname static 
		int16 op_Explicit (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0x45458
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call int16 System.Decimal::ToInt16(valuetype System.Decimal)
		IL_0006: ret
	} // end of method Decimal::op_Explicit

	.method public hidebysig specialname static 
		uint16 op_Explicit (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x45460
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call uint16 System.Decimal::ToUInt16(valuetype System.Decimal)
		IL_0006: ret
	} // end of method Decimal::op_Explicit

	.method public hidebysig specialname static 
		int32 op_Explicit (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0x45468
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call int32 System.Decimal::ToInt32(valuetype System.Decimal)
		IL_0006: ret
	} // end of method Decimal::op_Explicit

	.method public hidebysig specialname static 
		uint32 op_Explicit (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x45470
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call uint32 System.Decimal::ToUInt32(valuetype System.Decimal)
		IL_0006: ret
	} // end of method Decimal::op_Explicit

	.method public hidebysig specialname static 
		int64 op_Explicit (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0x45478
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call int64 System.Decimal::ToInt64(valuetype System.Decimal)
		IL_0006: ret
	} // end of method Decimal::op_Explicit

	.method public hidebysig specialname static 
		uint64 op_Explicit (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x45480
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call uint64 System.Decimal::ToUInt64(valuetype System.Decimal)
		IL_0006: ret
	} // end of method Decimal::op_Explicit

	.method public hidebysig specialname static 
		float32 op_Explicit (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0x453a1
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call float32 System.Decimal/DecCalc::VarR4FromDec(valuetype System.Decimal&)
		IL_0007: ret
	} // end of method Decimal::op_Explicit

	.method public hidebysig specialname static 
		float64 op_Explicit (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0x45238
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarga.s 'value'
		IL_0002: call float64 System.Decimal/DecCalc::VarR8FromDec(valuetype System.Decimal&)
		IL_0007: ret
	} // end of method Decimal::op_Explicit

	.method public hidebysig specialname static 
		valuetype System.Decimal op_UnaryPlus (
			valuetype System.Decimal d
		) cil managed 
	{
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Decimal::op_UnaryPlus

	.method public hidebysig specialname static 
		valuetype System.Decimal op_UnaryNegation (
			valuetype System.Decimal d
		) cil managed 
	{
		// Method begins at RVA 0x450a6
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarga.s d
		IL_0002: ldarg.0
		IL_0003: ldfld int32 System.Decimal::_flags
		IL_0008: ldc.i4 -2147483648
		IL_000d: xor
		IL_000e: newobj instance void System.Decimal::.ctor(valuetype System.Decimal&, int32)
		IL_0013: ret
	} // end of method Decimal::op_UnaryNegation

	.method public hidebysig specialname static 
		valuetype System.Decimal op_Increment (
			valuetype System.Decimal d
		) cil managed 
	{
		// Method begins at RVA 0x45488
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldsfld valuetype System.Decimal System.Decimal::One
		IL_0006: call valuetype System.Decimal System.Decimal::Add(valuetype System.Decimal, valuetype System.Decimal)
		IL_000b: ret
	} // end of method Decimal::op_Increment

	.method public hidebysig specialname static 
		valuetype System.Decimal op_Decrement (
			valuetype System.Decimal d
		) cil managed 
	{
		// Method begins at RVA 0x45495
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldsfld valuetype System.Decimal System.Decimal::One
		IL_0006: call valuetype System.Decimal System.Decimal::Subtract(valuetype System.Decimal, valuetype System.Decimal)
		IL_000b: ret
	} // end of method Decimal::op_Decrement

	.method public hidebysig specialname static 
		valuetype System.Decimal op_Addition (
			valuetype System.Decimal d1,
			valuetype System.Decimal d2
		) cil managed 
	{
		// Method begins at RVA 0x44c1b
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarga.s d1
		IL_0002: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_0007: ldarga.s d2
		IL_0009: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_000e: ldc.i4.0
		IL_000f: call void System.Decimal/DecCalc::DecAddSub(valuetype System.Decimal/DecCalc&, valuetype System.Decimal/DecCalc&, bool)
		IL_0014: ldarg.0
		IL_0015: ret
	} // end of method Decimal::op_Addition

	.method public hidebysig specialname static 
		valuetype System.Decimal op_Subtraction (
			valuetype System.Decimal d1,
			valuetype System.Decimal d2
		) cil managed 
	{
		// Method begins at RVA 0x4516d
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarga.s d1
		IL_0002: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_0007: ldarga.s d2
		IL_0009: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_000e: ldc.i4.1
		IL_000f: call void System.Decimal/DecCalc::DecAddSub(valuetype System.Decimal/DecCalc&, valuetype System.Decimal/DecCalc&, bool)
		IL_0014: ldarg.0
		IL_0015: ret
	} // end of method Decimal::op_Subtraction

	.method public hidebysig specialname static 
		valuetype System.Decimal op_Multiply (
			valuetype System.Decimal d1,
			valuetype System.Decimal d2
		) cil managed 
	{
		// Method begins at RVA 0x45090
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarga.s d1
		IL_0002: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_0007: ldarga.s d2
		IL_0009: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_000e: call void System.Decimal/DecCalc::VarDecMul(valuetype System.Decimal/DecCalc&, valuetype System.Decimal/DecCalc&)
		IL_0013: ldarg.0
		IL_0014: ret
	} // end of method Decimal::op_Multiply

	.method public hidebysig specialname static 
		valuetype System.Decimal op_Division (
			valuetype System.Decimal d1,
			valuetype System.Decimal d2
		) cil managed 
	{
		// Method begins at RVA 0x44cae
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarga.s d1
		IL_0002: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_0007: ldarga.s d2
		IL_0009: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_000e: call void System.Decimal/DecCalc::VarDecDiv(valuetype System.Decimal/DecCalc&, valuetype System.Decimal/DecCalc&)
		IL_0013: ldarg.0
		IL_0014: ret
	} // end of method Decimal::op_Division

	.method public hidebysig specialname static 
		valuetype System.Decimal op_Modulus (
			valuetype System.Decimal d1,
			valuetype System.Decimal d2
		) cil managed 
	{
		// Method begins at RVA 0x4507a
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarga.s d1
		IL_0002: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_0007: ldarga.s d2
		IL_0009: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_000e: call void System.Decimal/DecCalc::VarDecMod(valuetype System.Decimal/DecCalc&, valuetype System.Decimal/DecCalc&)
		IL_0013: ldarg.0
		IL_0014: ret
	} // end of method Decimal::op_Modulus

	.method public hidebysig specialname static 
		bool op_Equality (
			valuetype System.Decimal d1,
			valuetype System.Decimal d2
		) cil managed 
	{
		// Method begins at RVA 0x44d02
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarga.s d1
		IL_0002: ldarga.s d2
		IL_0004: call int32 System.Decimal/DecCalc::VarDecCmp(valuetype System.Decimal&, valuetype System.Decimal&)
		IL_0009: ldc.i4.0
		IL_000a: ceq
		IL_000c: ret
	} // end of method Decimal::op_Equality

	.method public hidebysig specialname static 
		bool op_Inequality (
			valuetype System.Decimal d1,
			valuetype System.Decimal d2
		) cil managed 
	{
		// Method begins at RVA 0x454a2
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarga.s d1
		IL_0002: ldarga.s d2
		IL_0004: call int32 System.Decimal/DecCalc::VarDecCmp(valuetype System.Decimal&, valuetype System.Decimal&)
		IL_0009: ldc.i4.0
		IL_000a: cgt.un
		IL_000c: ret
	} // end of method Decimal::op_Inequality

	.method public hidebysig specialname static 
		bool op_LessThan (
			valuetype System.Decimal d1,
			valuetype System.Decimal d2
		) cil managed 
	{
		// Method begins at RVA 0x454b0
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarga.s d1
		IL_0002: ldarga.s d2
		IL_0004: call int32 System.Decimal/DecCalc::VarDecCmp(valuetype System.Decimal&, valuetype System.Decimal&)
		IL_0009: ldc.i4.0
		IL_000a: clt
		IL_000c: ret
	} // end of method Decimal::op_LessThan

	.method public hidebysig specialname static 
		bool op_LessThanOrEqual (
			valuetype System.Decimal d1,
			valuetype System.Decimal d2
		) cil managed 
	{
		// Method begins at RVA 0x454be
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarga.s d1
		IL_0002: ldarga.s d2
		IL_0004: call int32 System.Decimal/DecCalc::VarDecCmp(valuetype System.Decimal&, valuetype System.Decimal&)
		IL_0009: ldc.i4.0
		IL_000a: cgt
		IL_000c: ldc.i4.0
		IL_000d: ceq
		IL_000f: ret
	} // end of method Decimal::op_LessThanOrEqual

	.method public hidebysig specialname static 
		bool op_GreaterThan (
			valuetype System.Decimal d1,
			valuetype System.Decimal d2
		) cil managed 
	{
		// Method begins at RVA 0x454cf
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarga.s d1
		IL_0002: ldarga.s d2
		IL_0004: call int32 System.Decimal/DecCalc::VarDecCmp(valuetype System.Decimal&, valuetype System.Decimal&)
		IL_0009: ldc.i4.0
		IL_000a: cgt
		IL_000c: ret
	} // end of method Decimal::op_GreaterThan

	.method public hidebysig specialname static 
		bool op_GreaterThanOrEqual (
			valuetype System.Decimal d1,
			valuetype System.Decimal d2
		) cil managed 
	{
		// Method begins at RVA 0x454dd
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarga.s d1
		IL_0002: ldarga.s d2
		IL_0004: call int32 System.Decimal/DecCalc::VarDecCmp(valuetype System.Decimal&, valuetype System.Decimal&)
		IL_0009: ldc.i4.0
		IL_000a: clt
		IL_000c: ldc.i4.0
		IL_000d: ceq
		IL_000f: ret
	} // end of method Decimal::op_GreaterThanOrEqual

	.method public final hidebysig newslot virtual 
		instance valuetype System.TypeCode GetTypeCode () cil managed 
	{
		// Method begins at RVA 0x454ee
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldc.i4.s 15
		IL_0002: ret
	} // end of method Decimal::GetTypeCode

	.method private final hidebysig newslot virtual 
		instance bool System.IConvertible.ToBoolean (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance bool System.IConvertible::ToBoolean(class System.IFormatProvider)
		// Method begins at RVA 0x454f2
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.Decimal
		IL_0006: call bool System.Convert::ToBoolean(valuetype System.Decimal)
		IL_000b: ret
	} // end of method Decimal::System.IConvertible.ToBoolean

	.method private final hidebysig newslot virtual 
		instance char System.IConvertible.ToChar (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance char System.IConvertible::ToChar(class System.IFormatProvider)
		// Method begins at RVA 0x454ff
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: call string System.SR::get_InvalidCast_FromTo()
		IL_0005: ldstr "Decimal"
		IL_000a: ldstr "Char"
		IL_000f: call string System.SR::Format(string, object, object)
		IL_0014: newobj instance void System.InvalidCastException::.ctor(string)
		IL_0019: throw
	} // end of method Decimal::System.IConvertible.ToChar

	.method private final hidebysig newslot virtual 
		instance int8 System.IConvertible.ToSByte (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance int8 System.IConvertible::ToSByte(class System.IFormatProvider)
		// Method begins at RVA 0x4551a
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.Decimal
		IL_0006: call int8 System.Convert::ToSByte(valuetype System.Decimal)
		IL_000b: ret
	} // end of method Decimal::System.IConvertible.ToSByte

	.method private final hidebysig newslot virtual 
		instance uint8 System.IConvertible.ToByte (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance uint8 System.IConvertible::ToByte(class System.IFormatProvider)
		// Method begins at RVA 0x45527
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.Decimal
		IL_0006: call uint8 System.Convert::ToByte(valuetype System.Decimal)
		IL_000b: ret
	} // end of method Decimal::System.IConvertible.ToByte

	.method private final hidebysig newslot virtual 
		instance int16 System.IConvertible.ToInt16 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance int16 System.IConvertible::ToInt16(class System.IFormatProvider)
		// Method begins at RVA 0x45534
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.Decimal
		IL_0006: call int16 System.Convert::ToInt16(valuetype System.Decimal)
		IL_000b: ret
	} // end of method Decimal::System.IConvertible.ToInt16

	.method private final hidebysig newslot virtual 
		instance uint16 System.IConvertible.ToUInt16 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance uint16 System.IConvertible::ToUInt16(class System.IFormatProvider)
		// Method begins at RVA 0x45541
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.Decimal
		IL_0006: call uint16 System.Convert::ToUInt16(valuetype System.Decimal)
		IL_000b: ret
	} // end of method Decimal::System.IConvertible.ToUInt16

	.method private final hidebysig newslot virtual 
		instance int32 System.IConvertible.ToInt32 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance int32 System.IConvertible::ToInt32(class System.IFormatProvider)
		// Method begins at RVA 0x4554e
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.Decimal
		IL_0006: call int32 System.Convert::ToInt32(valuetype System.Decimal)
		IL_000b: ret
	} // end of method Decimal::System.IConvertible.ToInt32

	.method private final hidebysig newslot virtual 
		instance uint32 System.IConvertible.ToUInt32 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance uint32 System.IConvertible::ToUInt32(class System.IFormatProvider)
		// Method begins at RVA 0x4555b
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.Decimal
		IL_0006: call uint32 System.Convert::ToUInt32(valuetype System.Decimal)
		IL_000b: ret
	} // end of method Decimal::System.IConvertible.ToUInt32

	.method private final hidebysig newslot virtual 
		instance int64 System.IConvertible.ToInt64 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance int64 System.IConvertible::ToInt64(class System.IFormatProvider)
		// Method begins at RVA 0x45568
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.Decimal
		IL_0006: call int64 System.Convert::ToInt64(valuetype System.Decimal)
		IL_000b: ret
	} // end of method Decimal::System.IConvertible.ToInt64

	.method private final hidebysig newslot virtual 
		instance uint64 System.IConvertible.ToUInt64 (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance uint64 System.IConvertible::ToUInt64(class System.IFormatProvider)
		// Method begins at RVA 0x45575
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.Decimal
		IL_0006: call uint64 System.Convert::ToUInt64(valuetype System.Decimal)
		IL_000b: ret
	} // end of method Decimal::System.IConvertible.ToUInt64

	.method private final hidebysig newslot virtual 
		instance float32 System.IConvertible.ToSingle (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance float32 System.IConvertible::ToSingle(class System.IFormatProvider)
		// Method begins at RVA 0x45582
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call float32 System.Decimal/DecCalc::VarR4FromDec(valuetype System.Decimal&)
		IL_0006: ret
	} // end of method Decimal::System.IConvertible.ToSingle

	.method private final hidebysig newslot virtual 
		instance float64 System.IConvertible.ToDouble (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance float64 System.IConvertible::ToDouble(class System.IFormatProvider)
		// Method begins at RVA 0x4558a
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call float64 System.Decimal/DecCalc::VarR8FromDec(valuetype System.Decimal&)
		IL_0006: ret
	} // end of method Decimal::System.IConvertible.ToDouble

	.method private final hidebysig newslot virtual 
		instance valuetype System.Decimal System.IConvertible.ToDecimal (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance valuetype System.Decimal System.IConvertible::ToDecimal(class System.IFormatProvider)
		// Method begins at RVA 0x45592
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.Decimal
		IL_0006: ret
	} // end of method Decimal::System.IConvertible.ToDecimal

	.method private final hidebysig newslot virtual 
		instance valuetype System.DateTime System.IConvertible.ToDateTime (
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance valuetype System.DateTime System.IConvertible::ToDateTime(class System.IFormatProvider)
		// Method begins at RVA 0x4559a
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: call string System.SR::get_InvalidCast_FromTo()
		IL_0005: ldstr "Decimal"
		IL_000a: ldstr "DateTime"
		IL_000f: call string System.SR::Format(string, object, object)
		IL_0014: newobj instance void System.InvalidCastException::.ctor(string)
		IL_0019: throw
	} // end of method Decimal::System.IConvertible.ToDateTime

	.method private final hidebysig newslot virtual 
		instance object System.IConvertible.ToType (
			class System.Type 'type',
			class System.IFormatProvider provider
		) cil managed 
	{
		.override method instance object System.IConvertible::ToType(class System.Type, class System.IFormatProvider)
		// Method begins at RVA 0x455b5
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldobj System.Decimal
		IL_0006: box System.Decimal
		IL_000b: ldarg.1
		IL_000c: ldarg.2
		IL_000d: call object System.Convert::DefaultToType(class System.IConvertible, class System.Type, class System.IFormatProvider)
		IL_0012: ret
	} // end of method Decimal::System.IConvertible.ToType

	.method assembly hidebysig specialname 
		instance uint32 get_High () cil managed 
	{
		// Method begins at RVA 0x455c9
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld uint32 System.Decimal::_hi32
		IL_0006: ret
	} // end of method Decimal::get_High

	.method assembly hidebysig specialname 
		instance uint32 get_Low () cil managed 
	{
		// Method begins at RVA 0x455d1
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld uint64 System.Decimal::_lo64
		IL_0006: conv.u4
		IL_0007: ret
	} // end of method Decimal::get_Low

	.method assembly hidebysig specialname 
		instance uint32 get_Mid () cil managed 
	{
		// Method begins at RVA 0x455da
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld uint64 System.Decimal::_lo64
		IL_0006: ldc.i4.s 32
		IL_0008: shr.un
		IL_0009: conv.u4
		IL_000a: ret
	} // end of method Decimal::get_Mid

	.method assembly hidebysig specialname 
		instance bool get_IsNegative () cil managed 
	{
		// Method begins at RVA 0x455e6
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int32 System.Decimal::_flags
		IL_0006: ldc.i4.0
		IL_0007: clt
		IL_0009: ret
	} // end of method Decimal::get_IsNegative

	.method assembly hidebysig specialname 
		instance int32 get_Scale () cil managed 
	{
		// Method begins at RVA 0x455f1
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int32 System.Decimal::_flags
		IL_0006: ldc.i4.s 16
		IL_0008: shr
		IL_0009: conv.u1
		IL_000a: ret
	} // end of method Decimal::get_Scale

	.method private hidebysig specialname 
		instance uint64 get_Low64 () cil managed 
	{
		// Method begins at RVA 0x455fd
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld uint64 System.Decimal::_lo64
		IL_0006: ret
	} // end of method Decimal::get_Low64

	.method private hidebysig static 
		valuetype System.Decimal/DecCalc& AsMutable (
			valuetype System.Decimal& d
		) cil managed 
	{
		// Method begins at RVA 0x45605
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call !!1& Internal.Runtime.CompilerServices.Unsafe::As<valuetype System.Decimal, valuetype System.Decimal/DecCalc>(!!0&)
		IL_0006: ret
	} // end of method Decimal::AsMutable

	.method assembly hidebysig static 
		uint32 DecDivMod1E9 (
			valuetype System.Decimal& 'value'
		) cil managed 
	{
		// Method begins at RVA 0x4560d
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call valuetype System.Decimal/DecCalc& System.Decimal::AsMutable(valuetype System.Decimal&)
		IL_0006: call uint32 System.Decimal/DecCalc::DecDivMod1E9(valuetype System.Decimal/DecCalc&)
		IL_000b: ret
	} // end of method Decimal::DecDivMod1E9

	.method private hidebysig specialname rtspecialname static 
		void .cctor () cil managed 
	{
		// Method begins at RVA 0x4561c
		// Code size 64 (0x40)
		.maxstack 5

		IL_0000: ldc.i4.0
		IL_0001: newobj instance void System.Decimal::.ctor(int32)
		IL_0006: stsfld valuetype System.Decimal System.Decimal::Zero
		IL_000b: ldc.i4.1
		IL_000c: newobj instance void System.Decimal::.ctor(int32)
		IL_0011: stsfld valuetype System.Decimal System.Decimal::One
		IL_0016: ldc.i4.m1
		IL_0017: newobj instance void System.Decimal::.ctor(int32)
		IL_001c: stsfld valuetype System.Decimal System.Decimal::MinusOne
		IL_0021: ldc.i4.m1
		IL_0022: ldc.i4.m1
		IL_0023: ldc.i4.m1
		IL_0024: ldc.i4.0
		IL_0025: ldc.i4.0
		IL_0026: newobj instance void System.Decimal::.ctor(int32, int32, int32, bool, uint8)
		IL_002b: stsfld valuetype System.Decimal System.Decimal::MaxValue
		IL_0030: ldc.i4.m1
		IL_0031: ldc.i4.m1
		IL_0032: ldc.i4.m1
		IL_0033: ldc.i4.1
		IL_0034: ldc.i4.0
		IL_0035: newobj instance void System.Decimal::.ctor(int32, int32, int32, bool, uint8)
		IL_003a: stsfld valuetype System.Decimal System.Decimal::MinValue
		IL_003f: ret
	} // end of method Decimal::.cctor

	// Properties
	.property instance uint32 High()
	{
		.get instance uint32 System.Decimal::get_High()
	}
	.property instance uint32 Low()
	{
		.get instance uint32 System.Decimal::get_Low()
	}
	.property instance uint32 Mid()
	{
		.get instance uint32 System.Decimal::get_Mid()
	}
	.property instance bool IsNegative()
	{
		.get instance bool System.Decimal::get_IsNegative()
	}
	.property instance int32 Scale()
	{
		.get instance int32 System.Decimal::get_Scale()
	}
	.property instance uint64 Low64()
	{
		.get instance uint64 System.Decimal::get_Low64()
	}

} // end of class System.Decimal