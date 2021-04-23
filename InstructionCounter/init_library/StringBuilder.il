.class public auto ansi sealed serializable beforefieldinit System.Text.StringBuilder
	extends System.Object
	implements .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.Runtime.Serialization.ISerializable
{
	.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
		01 00 01 00 00
	)
	.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	.custom instance void System.Reflection.DefaultMemberAttribute::.ctor(string) = (
		01 00 05 43 68 61 72 73 00 00
	)
	.custom instance void System.Runtime.CompilerServices.TypeForwardedFromAttribute::.ctor(string) = (
		01 00 4b 6d 73 63 6f 72 6c 69 62 2c 20 56 65 72
		73 69 6f 6e 3d 34 2e 30 2e 30 2e 30 2c 20 43 75
		6c 74 75 72 65 3d 6e 65 75 74 72 61 6c 2c 20 50
		75 62 6c 69 63 4b 65 79 54 6f 6b 65 6e 3d 62 37
		37 61 35 63 35 36 31 39 33 34 65 30 38 39 00 00
	)
	// Nested Types
	.class nested public sequential ansi sealed beforefieldinit ChunkEnumerator
		extends System.ValueType
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		// Nested Types
		.class nested private auto ansi beforefieldinit ManyChunkInfo
			extends System.Object
		{
			// Fields
			.field private initonly class System.Text.StringBuilder[] _chunks
			.field private int32 _chunkPos

			// Methods
			.method public hidebysig 
				instance bool MoveNext (
					class System.Text.StringBuilder& current
				) cil managed 
			{
				// Method begins at RVA 0xed204
				// Code size 43 (0x2b)
				.maxstack 3
				.locals (
					[0] int32,
					[1] int32
				)

				IL_0000: ldarg.0
				IL_0001: ldarg.0
				IL_0002: ldfld int32 System.Text.StringBuilder/ChunkEnumerator/ManyChunkInfo::_chunkPos
				IL_0007: ldc.i4.1
				IL_0008: add
				IL_0009: stloc.1
				IL_000a: ldloc.1
				IL_000b: stfld int32 System.Text.StringBuilder/ChunkEnumerator/ManyChunkInfo::_chunkPos
				IL_0010: ldloc.1
				IL_0011: stloc.0
				IL_0012: ldarg.0
				IL_0013: ldfld class System.Text.StringBuilder[] System.Text.StringBuilder/ChunkEnumerator/ManyChunkInfo::_chunks
				IL_0018: ldlen
				IL_0019: conv.i4
				IL_001a: ldloc.0
				IL_001b: bgt.s IL_001f

				IL_001d: ldc.i4.0
				IL_001e: ret

				IL_001f: ldarg.1
				IL_0020: ldarg.0
				IL_0021: ldfld class System.Text.StringBuilder[] System.Text.StringBuilder/ChunkEnumerator/ManyChunkInfo::_chunks
				IL_0026: ldloc.0
				IL_0027: ldelem.ref
				IL_0028: stind.ref
				IL_0029: ldc.i4.1
				IL_002a: ret
			} // end of method ManyChunkInfo::MoveNext

			.method public hidebysig specialname rtspecialname 
				instance void .ctor (
					class System.Text.StringBuilder stringBuilder,
					int32 chunkCount
				) cil managed 
			{
				// Method begins at RVA 0xed23b
				// Code size 54 (0x36)
				.maxstack 8

				IL_0000: ldarg.0
				IL_0001: call instance void System.Object::.ctor()
				IL_0006: ldarg.0
				IL_0007: ldarg.2
				IL_0008: newarr System.Text.StringBuilder
				IL_000d: stfld class System.Text.StringBuilder[] System.Text.StringBuilder/ChunkEnumerator/ManyChunkInfo::_chunks
				IL_0012: br.s IL_0025
				// loop start (head: IL_0025)
					IL_0014: ldarg.0
					IL_0015: ldfld class System.Text.StringBuilder[] System.Text.StringBuilder/ChunkEnumerator/ManyChunkInfo::_chunks
					IL_001a: ldarg.2
					IL_001b: ldarg.1
					IL_001c: stelem.ref
					IL_001d: ldarg.1
					IL_001e: ldfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
					IL_0023: starg.s stringBuilder

					IL_0025: ldc.i4.0
					IL_0026: ldarg.2
					IL_0027: ldc.i4.1
					IL_0028: sub
					IL_0029: dup
					IL_002a: starg.s chunkCount
					IL_002c: ble.s IL_0014
				// end loop

				IL_002e: ldarg.0
				IL_002f: ldc.i4.m1
				IL_0030: stfld int32 System.Text.StringBuilder/ChunkEnumerator/ManyChunkInfo::_chunkPos
				IL_0035: ret
			} // end of method ManyChunkInfo::.ctor

		} // end of class ManyChunkInfo


		// Fields
		.field private initonly class System.Text.StringBuilder _firstChunk
		.field private class System.Text.StringBuilder _currentChunk
		.field private initonly class System.Text.StringBuilder/ChunkEnumerator/ManyChunkInfo _manyChunks

		// Methods
		.method public hidebysig 
			instance valuetype System.Text.StringBuilder/ChunkEnumerator GetEnumerator () cil managed 
		{
			.custom instance void System.ComponentModel.EditorBrowsableAttribute::.ctor(valuetype System.ComponentModel.EditorBrowsableState) = (
				01 00 01 00 00 00 00 00
			)
			// Method begins at RVA 0xed112
			// Code size 7 (0x7)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldobj System.Text.StringBuilder/ChunkEnumerator
			IL_0006: ret
		} // end of method ChunkEnumerator::GetEnumerator

		.method public hidebysig 
			instance bool MoveNext () cil managed 
		{
			// Method begins at RVA 0xed11c
			// Code size 81 (0x51)
			.maxstack 2
			.locals (
				[0] class System.Text.StringBuilder
			)

			IL_0000: ldarg.0
			IL_0001: ldfld class System.Text.StringBuilder System.Text.StringBuilder/ChunkEnumerator::_currentChunk
			IL_0006: ldarg.0
			IL_0007: ldfld class System.Text.StringBuilder System.Text.StringBuilder/ChunkEnumerator::_firstChunk
			IL_000c: bne.un.s IL_0010

			IL_000e: ldc.i4.0
			IL_000f: ret

			IL_0010: ldarg.0
			IL_0011: ldfld class System.Text.StringBuilder/ChunkEnumerator/ManyChunkInfo System.Text.StringBuilder/ChunkEnumerator::_manyChunks
			IL_0016: brfalse.s IL_002a

			IL_0018: ldarg.0
			IL_0019: ldfld class System.Text.StringBuilder/ChunkEnumerator/ManyChunkInfo System.Text.StringBuilder/ChunkEnumerator::_manyChunks
			IL_001e: ldarg.0
			IL_001f: ldflda class System.Text.StringBuilder System.Text.StringBuilder/ChunkEnumerator::_currentChunk
			IL_0024: callvirt instance bool System.Text.StringBuilder/ChunkEnumerator/ManyChunkInfo::MoveNext(class System.Text.StringBuilder&)
			IL_0029: ret

			IL_002a: ldarg.0
			IL_002b: ldfld class System.Text.StringBuilder System.Text.StringBuilder/ChunkEnumerator::_firstChunk
			IL_0030: stloc.0
			IL_0031: br.s IL_003a
			// loop start (head: IL_003a)
				IL_0033: ldloc.0
				IL_0034: ldfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
				IL_0039: stloc.0

				IL_003a: ldloc.0
				IL_003b: ldfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
				IL_0040: ldarg.0
				IL_0041: ldfld class System.Text.StringBuilder System.Text.StringBuilder/ChunkEnumerator::_currentChunk
				IL_0046: bne.un.s IL_0033
			// end loop

			IL_0048: ldarg.0
			IL_0049: ldloc.0
			IL_004a: stfld class System.Text.StringBuilder System.Text.StringBuilder/ChunkEnumerator::_currentChunk
			IL_004f: ldc.i4.1
			IL_0050: ret
		} // end of method ChunkEnumerator::MoveNext

		.method public hidebysig specialname 
			instance valuetype System.ReadOnlyMemory`1<char> get_Current () cil managed 
		{
			// Method begins at RVA 0xed179
			// Code size 42 (0x2a)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld class System.Text.StringBuilder System.Text.StringBuilder/ChunkEnumerator::_currentChunk
			IL_0006: brtrue.s IL_000d

			IL_0008: call void System.ThrowHelper::ThrowInvalidOperationException_InvalidOperation_EnumOpCantHappen()

			IL_000d: ldarg.0
			IL_000e: ldfld class System.Text.StringBuilder System.Text.StringBuilder/ChunkEnumerator::_currentChunk
			IL_0013: ldfld char[] System.Text.StringBuilder::m_ChunkChars
			IL_0018: ldc.i4.0
			IL_0019: ldarg.0
			IL_001a: ldfld class System.Text.StringBuilder System.Text.StringBuilder/ChunkEnumerator::_currentChunk
			IL_001f: ldfld int32 System.Text.StringBuilder::m_ChunkLength
			IL_0024: newobj instance void valuetype System.ReadOnlyMemory`1<char>::.ctor(!0[], int32, int32)
			IL_0029: ret
		} // end of method ChunkEnumerator::get_Current

		.method assembly hidebysig specialname rtspecialname 
			instance void .ctor (
				class System.Text.StringBuilder stringBuilder
			) cil managed 
		{
			// Method begins at RVA 0xed1a4
			// Code size 46 (0x2e)
			.maxstack 3
			.locals (
				[0] int32
			)

			IL_0000: ldarg.0
			IL_0001: ldarg.1
			IL_0002: stfld class System.Text.StringBuilder System.Text.StringBuilder/ChunkEnumerator::_firstChunk
			IL_0007: ldarg.0
			IL_0008: ldnull
			IL_0009: stfld class System.Text.StringBuilder System.Text.StringBuilder/ChunkEnumerator::_currentChunk
			IL_000e: ldarg.0
			IL_000f: ldnull
			IL_0010: stfld class System.Text.StringBuilder/ChunkEnumerator/ManyChunkInfo System.Text.StringBuilder/ChunkEnumerator::_manyChunks
			IL_0015: ldarg.1
			IL_0016: call int32 System.Text.StringBuilder/ChunkEnumerator::ChunkCount(class System.Text.StringBuilder)
			IL_001b: stloc.0
			IL_001c: ldc.i4.8
			IL_001d: ldloc.0
			IL_001e: bge.s IL_002d

			IL_0020: ldarg.0
			IL_0021: ldarg.1
			IL_0022: ldloc.0
			IL_0023: newobj instance void System.Text.StringBuilder/ChunkEnumerator/ManyChunkInfo::.ctor(class System.Text.StringBuilder, int32)
			IL_0028: stfld class System.Text.StringBuilder/ChunkEnumerator/ManyChunkInfo System.Text.StringBuilder/ChunkEnumerator::_manyChunks

			IL_002d: ret
		} // end of method ChunkEnumerator::.ctor

		.method private hidebysig static 
			int32 ChunkCount (
				class System.Text.StringBuilder stringBuilder
			) cil managed 
		{
			// Method begins at RVA 0xed1e0
			// Code size 21 (0x15)
			.maxstack 2
			.locals (
				[0] int32
			)

			IL_0000: ldc.i4.0
			IL_0001: stloc.0
			IL_0002: br.s IL_0010
			// loop start (head: IL_0010)
				IL_0004: ldloc.0
				IL_0005: ldc.i4.1
				IL_0006: add
				IL_0007: stloc.0
				IL_0008: ldarg.0
				IL_0009: ldfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
				IL_000e: starg.s stringBuilder

				IL_0010: ldarg.0
				IL_0011: brtrue.s IL_0004
			// end loop

			IL_0013: ldloc.0
			IL_0014: ret
		} // end of method ChunkEnumerator::ChunkCount

		// Properties
		.property instance valuetype System.ReadOnlyMemory`1<char> Current()
		{
			.get instance valuetype System.ReadOnlyMemory`1<char> System.Text.StringBuilder/ChunkEnumerator::get_Current()
		}

	} // end of class ChunkEnumerator


	// Fields
	.field assembly char[] m_ChunkChars
	.field assembly class System.Text.StringBuilder m_ChunkPrevious
	.field assembly int32 m_ChunkLength
	.field assembly int32 m_ChunkOffset
	.field assembly int32 m_MaxCapacity

	// Methods
	.method private hidebysig 
		instance int32 GetReplaceBufferCapacity (
			int32 requiredCapacity
		) cil managed 
	{
		// Method begins at RVA 0xeacc8
		// Code size 20 (0x14)
		.maxstack 2
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.Text.StringBuilder::get_Capacity()
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldarg.1
		IL_0009: bge.s IL_0012

		IL_000b: ldarg.1
		IL_000c: ldc.i4.1
		IL_000d: add
		IL_000e: ldc.i4.s -2
		IL_0010: and
		IL_0011: stloc.0

		IL_0012: ldloc.0
		IL_0013: ret
	} // end of method StringBuilder::GetReplaceBufferCapacity

	.method assembly hidebysig 
		instance void ReplaceBufferInternal (
			char* newBuffer,
			int32 newLength
		) cil managed 
	{
		// Method begins at RVA 0xeace8
		// Code size 102 (0x66)
		.maxstack 3
		.locals (
			[0] valuetype System.Span`1<char>
		)

		IL_0000: ldarg.2
		IL_0001: ldarg.0
		IL_0002: ldfld int32 System.Text.StringBuilder::m_MaxCapacity
		IL_0007: ble.s IL_0019

		IL_0009: ldstr "capacity"
		IL_000e: call string System.SR::get_ArgumentOutOfRange_Capacity()
		IL_0013: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0018: throw

		IL_0019: ldarg.2
		IL_001a: ldarg.0
		IL_001b: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_0020: ldlen
		IL_0021: conv.i4
		IL_0022: ble.s IL_0036

		IL_0024: ldarg.0
		IL_0025: ldarg.0
		IL_0026: ldarg.2
		IL_0027: call instance int32 System.Text.StringBuilder::GetReplaceBufferCapacity(int32)
		IL_002c: newarr System.Char
		IL_0031: stfld char[] System.Text.StringBuilder::m_ChunkChars

		IL_0036: ldarg.1
		IL_0037: ldarg.2
		IL_0038: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_003d: stloc.0
		IL_003e: ldloca.s 0
		IL_0040: ldarg.0
		IL_0041: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_0046: call valuetype System.Span`1<!0> valuetype System.Span`1<char>::op_Implicit(!0[])
		IL_004b: call instance void valuetype System.Span`1<char>::CopyTo(valuetype System.Span`1<!0>)
		IL_0050: ldarg.0
		IL_0051: ldarg.2
		IL_0052: stfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0057: ldarg.0
		IL_0058: ldnull
		IL_0059: stfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
		IL_005e: ldarg.0
		IL_005f: ldc.i4.0
		IL_0060: stfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_0065: ret
	} // end of method StringBuilder::ReplaceBufferInternal

	.method assembly hidebysig 
		instance void ReplaceBufferUtf8Internal (
			valuetype System.ReadOnlySpan`1<uint8> source
		) cil managed 
	{
		// Method begins at RVA 0xead5c
		// Code size 115 (0x73)
		.maxstack 4
		.locals (
			[0] int32
		)

		IL_0000: ldarga.s source
		IL_0002: call instance int32 valuetype System.ReadOnlySpan`1<uint8>::get_Length()
		IL_0007: ldarg.0
		IL_0008: ldfld int32 System.Text.StringBuilder::m_MaxCapacity
		IL_000d: ble.s IL_001f

		IL_000f: ldstr "capacity"
		IL_0014: call string System.SR::get_ArgumentOutOfRange_Capacity()
		IL_0019: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_001e: throw

		IL_001f: call class System.Text.Encoding System.Text.Encoding::get_UTF8()
		IL_0024: ldarg.1
		IL_0025: callvirt instance int32 System.Text.Encoding::GetCharCount(valuetype System.ReadOnlySpan`1<uint8>)
		IL_002a: stloc.0
		IL_002b: ldloc.0
		IL_002c: ldarg.0
		IL_002d: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_0032: ldlen
		IL_0033: conv.i4
		IL_0034: ble.s IL_0048

		IL_0036: ldarg.0
		IL_0037: ldarg.0
		IL_0038: ldloc.0
		IL_0039: call instance int32 System.Text.StringBuilder::GetReplaceBufferCapacity(int32)
		IL_003e: newarr System.Char
		IL_0043: stfld char[] System.Text.StringBuilder::m_ChunkChars

		IL_0048: ldarg.0
		IL_0049: call class System.Text.Encoding System.Text.Encoding::get_UTF8()
		IL_004e: ldarg.1
		IL_004f: ldarg.0
		IL_0050: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_0055: call valuetype System.Span`1<!0> valuetype System.Span`1<char>::op_Implicit(!0[])
		IL_005a: callvirt instance int32 System.Text.Encoding::GetChars(valuetype System.ReadOnlySpan`1<uint8>, valuetype System.Span`1<char>)
		IL_005f: stfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0064: ldarg.0
		IL_0065: ldnull
		IL_0066: stfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
		IL_006b: ldarg.0
		IL_006c: ldc.i4.0
		IL_006d: stfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_0072: ret
	} // end of method StringBuilder::ReplaceBufferUtf8Internal

	.method assembly hidebysig 
		instance void ReplaceBufferAnsiInternal (
			int8* newBuffer,
			int32 newLength
		) cil managed 
	{
		// Method begins at RVA 0xeaddc
		// Code size 119 (0x77)
		.maxstack 6
		.locals (
			[0] int32,
			[1] char*,
			[2] char[] pinned
		)

		IL_0000: ldarg.2
		IL_0001: ldarg.0
		IL_0002: ldfld int32 System.Text.StringBuilder::m_MaxCapacity
		IL_0007: ble.s IL_0019

		IL_0009: ldstr "capacity"
		IL_000e: call string System.SR::get_ArgumentOutOfRange_Capacity()
		IL_0013: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0018: throw

		IL_0019: ldarg.2
		IL_001a: ldarg.0
		IL_001b: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_0020: ldlen
		IL_0021: conv.i4
		IL_0022: ble.s IL_0036

		IL_0024: ldarg.0
		IL_0025: ldarg.0
		IL_0026: ldarg.2
		IL_0027: call instance int32 System.Text.StringBuilder::GetReplaceBufferCapacity(int32)
		IL_002c: newarr System.Char
		IL_0031: stfld char[] System.Text.StringBuilder::m_ChunkChars

		IL_0036: ldarg.0
		IL_0037: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_003c: dup
		IL_003d: stloc.2
		IL_003e: brfalse.s IL_0045

		IL_0040: ldloc.2
		IL_0041: ldlen
		IL_0042: conv.i4
		IL_0043: brtrue.s IL_004a

		IL_0045: ldc.i4.0
		IL_0046: conv.u
		IL_0047: stloc.1
		IL_0048: br.s IL_0053

		IL_004a: ldloc.2
		IL_004b: ldc.i4.0
		IL_004c: ldelema System.Char
		IL_0051: conv.u
		IL_0052: stloc.1

		IL_0053: ldc.i4.0
		IL_0054: ldc.i4.1
		IL_0055: ldarg.1
		IL_0056: ldarg.2
		IL_0057: ldloc.1
		IL_0058: ldarg.2
		IL_0059: call int32 Interop/Kernel32::MultiByteToWideChar(uint32, uint32, uint8*, int32, char*, int32)
		IL_005e: stloc.0
		IL_005f: ldnull
		IL_0060: stloc.2
		IL_0061: ldarg.0
		IL_0062: ldc.i4.0
		IL_0063: stfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_0068: ldarg.0
		IL_0069: ldloc.0
		IL_006a: stfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_006f: ldarg.0
		IL_0070: ldnull
		IL_0071: stfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
		IL_0076: ret
	} // end of method StringBuilder::ReplaceBufferAnsiInternal

	.method assembly hidebysig 
		instance void InternalCopy (
			native int dest,
			int32 len
		) cil managed 
	{
		// Method begins at RVA 0xeae60
		// Code size 111 (0x6f)
		.maxstack 4
		.locals (
			[0] bool,
			[1] uint8*,
			[2] class System.Text.StringBuilder,
			[3] int32,
			[4] int32,
			[5] char*,
			[6] char& pinned,
			[7] uint8*
		)

		IL_0000: ldarg.2
		IL_0001: brtrue.s IL_0004

		IL_0003: ret

		IL_0004: ldc.i4.1
		IL_0005: stloc.0
		IL_0006: ldarga.s dest
		IL_0008: call instance void* System.IntPtr::ToPointer()
		IL_000d: stloc.1
		IL_000e: ldarg.0
		IL_000f: ldarg.2
		IL_0010: call instance class System.Text.StringBuilder System.Text.StringBuilder::FindChunkForByte(int32)
		IL_0015: stloc.2
		// loop start (head: IL_0016)
			IL_0016: ldloc.2
			IL_0017: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
			IL_001c: ldc.i4.2
			IL_001d: mul
			IL_001e: stloc.3
			IL_001f: ldloc.2
			IL_0020: ldfld int32 System.Text.StringBuilder::m_ChunkLength
			IL_0025: ldc.i4.2
			IL_0026: mul
			IL_0027: stloc.s 4
			IL_0029: ldloc.2
			IL_002a: ldfld char[] System.Text.StringBuilder::m_ChunkChars
			IL_002f: ldc.i4.0
			IL_0030: ldelema System.Char
			IL_0035: stloc.s 6
			IL_0037: ldloc.s 6
			IL_0039: conv.u
			IL_003a: stloc.s 5
			IL_003c: ldloc.s 5
			IL_003e: stloc.s 7
			IL_0040: ldloc.0
			IL_0041: brfalse.s IL_0054

			IL_0043: ldc.i4.0
			IL_0044: stloc.0
			IL_0045: ldloc.1
			IL_0046: ldloc.3
			IL_0047: add
			IL_0048: ldloc.s 7
			IL_004a: ldarg.2
			IL_004b: ldloc.3
			IL_004c: sub
			IL_004d: call void System.Buffer::Memcpy(uint8*, uint8*, int32)
			IL_0052: br.s IL_0060

			IL_0054: ldloc.1
			IL_0055: ldloc.3
			IL_0056: add
			IL_0057: ldloc.s 7
			IL_0059: ldloc.s 4
			IL_005b: call void System.Buffer::Memcpy(uint8*, uint8*, int32)

			IL_0060: ldc.i4.0
			IL_0061: conv.u
			IL_0062: stloc.s 6
			IL_0064: ldloc.2
			IL_0065: ldfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
			IL_006a: stloc.2
			IL_006b: ldloc.2
			IL_006c: brtrue.s IL_0016
		// end loop
		IL_006e: ret
	} // end of method StringBuilder::InternalCopy

	.method private hidebysig 
		instance class System.Text.StringBuilder FindChunkForByte (
			int32 byteIndex
		) cil managed 
	{
		// Method begins at RVA 0xeaedc
		// Code size 24 (0x18)
		.maxstack 2
		.locals (
			[0] class System.Text.StringBuilder
		)

		IL_0000: ldarg.0
		IL_0001: stloc.0
		IL_0002: br.s IL_000b
		// loop start (head: IL_000b)
			IL_0004: ldloc.0
			IL_0005: ldfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
			IL_000a: stloc.0

			IL_000b: ldloc.0
			IL_000c: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
			IL_0011: ldc.i4.2
			IL_0012: mul
			IL_0013: ldarg.1
			IL_0014: bgt.s IL_0004
		// end loop

		IL_0016: ldloc.0
		IL_0017: ret
	} // end of method StringBuilder::FindChunkForByte

	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0xeaf00
		// Code size 31 (0x1f)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void System.Object::.ctor()
		IL_0006: ldarg.0
		IL_0007: ldc.i4 2147483647
		IL_000c: stfld int32 System.Text.StringBuilder::m_MaxCapacity
		IL_0011: ldarg.0
		IL_0012: ldc.i4.s 16
		IL_0014: newarr System.Char
		IL_0019: stfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_001e: ret
	} // end of method StringBuilder::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 capacity
		) cil managed 
	{
		// Method begins at RVA 0xeaf20
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4 2147483647
		IL_0007: call instance void System.Text.StringBuilder::.ctor(int32, int32)
		IL_000c: ret
	} // end of method StringBuilder::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			string 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0xeaf2e
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.s 16
		IL_0004: call instance void System.Text.StringBuilder::.ctor(string, int32)
		IL_0009: ret
	} // end of method StringBuilder::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			string 'value',
			int32 capacity
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0xeaf39
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.0
		IL_0003: ldarg.1
		IL_0004: brtrue.s IL_0009

		IL_0006: ldc.i4.0
		IL_0007: br.s IL_000f

		IL_0009: ldarg.1
		IL_000a: call instance int32 System.String::get_Length()

		IL_000f: ldarg.2
		IL_0010: call instance void System.Text.StringBuilder::.ctor(string, int32, int32, int32)
		IL_0015: ret
	} // end of method StringBuilder::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			string 'value',
			int32 startIndex,
			int32 length,
			int32 capacity
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0xeaf50
		// Code size 214 (0xd6)
		.maxstack 4
		.locals (
			[0] char*,
			[1] char& pinned
		)

		IL_0000: ldarg.0
		IL_0001: call instance void System.Object::.ctor()
		IL_0006: ldarg.s capacity
		IL_0008: ldc.i4.0
		IL_0009: bge.s IL_0025

		IL_000b: ldstr "capacity"
		IL_0010: call string System.SR::get_ArgumentOutOfRange_MustBePositive()
		IL_0015: ldstr "capacity"
		IL_001a: call string System.SR::Format(string, object)
		IL_001f: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0024: throw

		IL_0025: ldarg.3
		IL_0026: ldc.i4.0
		IL_0027: bge.s IL_0043

		IL_0029: ldstr "length"
		IL_002e: call string System.SR::get_ArgumentOutOfRange_MustBeNonNegNum()
		IL_0033: ldstr "length"
		IL_0038: call string System.SR::Format(string, object)
		IL_003d: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0042: throw

		IL_0043: ldarg.2
		IL_0044: ldc.i4.0
		IL_0045: bge.s IL_0057

		IL_0047: ldstr "startIndex"
		IL_004c: call string System.SR::get_ArgumentOutOfRange_StartIndex()
		IL_0051: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0056: throw

		IL_0057: ldarg.1
		IL_0058: brtrue.s IL_0061

		IL_005a: ldsfld string System.String::Empty
		IL_005f: starg.s 'value'

		IL_0061: ldarg.2
		IL_0062: ldarg.1
		IL_0063: callvirt instance int32 System.String::get_Length()
		IL_0068: ldarg.3
		IL_0069: sub
		IL_006a: ble.s IL_007c

		IL_006c: ldstr "length"
		IL_0071: call string System.SR::get_ArgumentOutOfRange_IndexLength()
		IL_0076: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_007b: throw

		IL_007c: ldarg.0
		IL_007d: ldc.i4 2147483647
		IL_0082: stfld int32 System.Text.StringBuilder::m_MaxCapacity
		IL_0087: ldarg.s capacity
		IL_0089: brtrue.s IL_008f

		IL_008b: ldc.i4.s 16
		IL_008d: starg.s capacity

		IL_008f: ldarg.s capacity
		IL_0091: ldarg.3
		IL_0092: call int32 System.Math::Max(int32, int32)
		IL_0097: starg.s capacity
		IL_0099: ldarg.0
		IL_009a: ldarg.s capacity
		IL_009c: ldc.i4.0
		IL_009d: call !!0[] System.GC::AllocateUninitializedArray<char>(int32, bool)
		IL_00a2: stfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_00a7: ldarg.0
		IL_00a8: ldarg.3
		IL_00a9: stfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_00ae: ldarg.1
		IL_00af: brtrue.s IL_00b5

		IL_00b1: ldc.i4.0
		IL_00b2: conv.u
		IL_00b3: br.s IL_00be

		IL_00b5: ldarg.1
		IL_00b6: call instance char& modreq(System.Runtime.InteropServices.InAttribute) System.String::GetPinnableReference()
		IL_00bb: stloc.1
		IL_00bc: ldloc.1
		IL_00bd: conv.u

		IL_00be: stloc.0
		IL_00bf: ldloc.0
		IL_00c0: ldarg.2
		IL_00c1: conv.i
		IL_00c2: ldc.i4.2
		IL_00c3: mul
		IL_00c4: add
		IL_00c5: ldarg.0
		IL_00c6: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_00cb: ldc.i4.0
		IL_00cc: ldarg.3
		IL_00cd: call void System.Text.StringBuilder::ThreadSafeCopy(char*, char[], int32, int32)
		IL_00d2: ldc.i4.0
		IL_00d3: conv.u
		IL_00d4: stloc.1
		IL_00d5: ret
	} // end of method StringBuilder::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 capacity,
			int32 maxCapacity
		) cil managed 
	{
		// Method begins at RVA 0xeb034
		// Code size 110 (0x6e)
		.maxstack 3

		IL_0000: ldarg.0
		IL_0001: call instance void System.Object::.ctor()
		IL_0006: ldarg.1
		IL_0007: ldarg.2
		IL_0008: ble.s IL_001a

		IL_000a: ldstr "capacity"
		IL_000f: call string System.SR::get_ArgumentOutOfRange_Capacity()
		IL_0014: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0019: throw

		IL_001a: ldarg.2
		IL_001b: ldc.i4.1
		IL_001c: bge.s IL_002e

		IL_001e: ldstr "maxCapacity"
		IL_0023: call string System.SR::get_ArgumentOutOfRange_SmallMaxCapacity()
		IL_0028: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_002d: throw

		IL_002e: ldarg.1
		IL_002f: ldc.i4.0
		IL_0030: bge.s IL_004c

		IL_0032: ldstr "capacity"
		IL_0037: call string System.SR::get_ArgumentOutOfRange_MustBePositive()
		IL_003c: ldstr "capacity"
		IL_0041: call string System.SR::Format(string, object)
		IL_0046: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_004b: throw

		IL_004c: ldarg.1
		IL_004d: brtrue.s IL_0059

		IL_004f: ldc.i4.s 16
		IL_0051: ldarg.2
		IL_0052: call int32 System.Math::Min(int32, int32)
		IL_0057: starg.s capacity

		IL_0059: ldarg.0
		IL_005a: ldarg.2
		IL_005b: stfld int32 System.Text.StringBuilder::m_MaxCapacity
		IL_0060: ldarg.0
		IL_0061: ldarg.1
		IL_0062: ldc.i4.0
		IL_0063: call !!0[] System.GC::AllocateUninitializedArray<char>(int32, bool)
		IL_0068: stfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_006d: ret
	} // end of method StringBuilder::.ctor

	.method private hidebysig specialname rtspecialname 
		instance void .ctor (
			class System.Runtime.Serialization.SerializationInfo info,
			valuetype System.Runtime.Serialization.StreamingContext context
		) cil managed 
	{
		// Method begins at RVA 0xeb0b0
		// Code size 283 (0x11b)
		.maxstack 5
		.locals (
			[0] int32,
			[1] string,
			[2] int32,
			[3] bool,
			[4] class System.Runtime.Serialization.SerializationInfoEnumerator,
			[5] string
		)

		IL_0000: ldarg.0
		IL_0001: call instance void System.Object::.ctor()
		IL_0006: ldarg.1
		IL_0007: brtrue.s IL_0014

		IL_0009: ldstr "info"
		IL_000e: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0013: throw

		IL_0014: ldc.i4.0
		IL_0015: stloc.0
		IL_0016: ldnull
		IL_0017: stloc.1
		IL_0018: ldc.i4 2147483647
		IL_001d: stloc.2
		IL_001e: ldc.i4.0
		IL_001f: stloc.3
		IL_0020: ldarg.1
		IL_0021: callvirt instance class System.Runtime.Serialization.SerializationInfoEnumerator System.Runtime.Serialization.SerializationInfo::GetEnumerator()
		IL_0026: stloc.s 4
		IL_0028: br.s IL_0089
		// loop start (head: IL_0089)
			IL_002a: ldloc.s 4
			IL_002c: callvirt instance string System.Runtime.Serialization.SerializationInfoEnumerator::get_Name()
			IL_0031: stloc.s 5
			IL_0033: ldloc.s 5
			IL_0035: ldstr "m_MaxCapacity"
			IL_003a: call bool System.String::op_Equality(string, string)
			IL_003f: brtrue.s IL_005f

			IL_0041: ldloc.s 5
			IL_0043: ldstr "m_StringValue"
			IL_0048: call bool System.String::op_Equality(string, string)
			IL_004d: brtrue.s IL_006d

			IL_004f: ldloc.s 5
			IL_0051: ldstr "Capacity"
			IL_0056: call bool System.String::op_Equality(string, string)
			IL_005b: brtrue.s IL_007b

			IL_005d: br.s IL_0089

			IL_005f: ldarg.1
			IL_0060: ldstr "m_MaxCapacity"
			IL_0065: callvirt instance int32 System.Runtime.Serialization.SerializationInfo::GetInt32(string)
			IL_006a: stloc.2
			IL_006b: br.s IL_0089

			IL_006d: ldarg.1
			IL_006e: ldstr "m_StringValue"
			IL_0073: callvirt instance string System.Runtime.Serialization.SerializationInfo::GetString(string)
			IL_0078: stloc.1
			IL_0079: br.s IL_0089

			IL_007b: ldarg.1
			IL_007c: ldstr "Capacity"
			IL_0081: callvirt instance int32 System.Runtime.Serialization.SerializationInfo::GetInt32(string)
			IL_0086: stloc.0
			IL_0087: ldc.i4.1
			IL_0088: stloc.3

			IL_0089: ldloc.s 4
			IL_008b: callvirt instance bool System.Runtime.Serialization.SerializationInfoEnumerator::MoveNext()
			IL_0090: brtrue.s IL_002a
		// end loop

		IL_0092: ldloc.1
		IL_0093: brtrue.s IL_009b

		IL_0095: ldsfld string System.String::Empty
		IL_009a: stloc.1

		IL_009b: ldloc.2
		IL_009c: ldc.i4.1
		IL_009d: blt.s IL_00a8

		IL_009f: ldloc.1
		IL_00a0: callvirt instance int32 System.String::get_Length()
		IL_00a5: ldloc.2
		IL_00a6: ble.s IL_00b3

		IL_00a8: call string System.SR::get_Serialization_StringBuilderMaxCapacity()
		IL_00ad: newobj instance void System.Runtime.Serialization.SerializationException::.ctor(string)
		IL_00b2: throw

		IL_00b3: ldloc.3
		IL_00b4: brtrue.s IL_00ca

		IL_00b6: ldc.i4.s 16
		IL_00b8: ldloc.1
		IL_00b9: callvirt instance int32 System.String::get_Length()
		IL_00be: call int32 System.Math::Max(int32, int32)
		IL_00c3: ldloc.2
		IL_00c4: call int32 System.Math::Min(int32, int32)
		IL_00c9: stloc.0

		IL_00ca: ldloc.0
		IL_00cb: ldc.i4.0
		IL_00cc: blt.s IL_00db

		IL_00ce: ldloc.0
		IL_00cf: ldloc.1
		IL_00d0: callvirt instance int32 System.String::get_Length()
		IL_00d5: blt.s IL_00db

		IL_00d7: ldloc.0
		IL_00d8: ldloc.2
		IL_00d9: ble.s IL_00e6

		IL_00db: call string System.SR::get_Serialization_StringBuilderCapacity()
		IL_00e0: newobj instance void System.Runtime.Serialization.SerializationException::.ctor(string)
		IL_00e5: throw

		IL_00e6: ldarg.0
		IL_00e7: ldloc.2
		IL_00e8: stfld int32 System.Text.StringBuilder::m_MaxCapacity
		IL_00ed: ldarg.0
		IL_00ee: ldloc.0
		IL_00ef: ldc.i4.0
		IL_00f0: call !!0[] System.GC::AllocateUninitializedArray<char>(int32, bool)
		IL_00f5: stfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_00fa: ldloc.1
		IL_00fb: ldc.i4.0
		IL_00fc: ldarg.0
		IL_00fd: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_0102: ldc.i4.0
		IL_0103: ldloc.1
		IL_0104: callvirt instance int32 System.String::get_Length()
		IL_0109: callvirt instance void System.String::CopyTo(int32, char[], int32, int32)
		IL_010e: ldarg.0
		IL_010f: ldloc.1
		IL_0110: callvirt instance int32 System.String::get_Length()
		IL_0115: stfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_011a: ret
	} // end of method StringBuilder::.ctor

	.method private final hidebysig newslot virtual 
		instance void System.Runtime.Serialization.ISerializable.GetObjectData (
			class System.Runtime.Serialization.SerializationInfo info,
			valuetype System.Runtime.Serialization.StreamingContext context
		) cil managed 
	{
		.override method instance void System.Runtime.Serialization.ISerializable::GetObjectData(class System.Runtime.Serialization.SerializationInfo, valuetype System.Runtime.Serialization.StreamingContext)
		// Method begins at RVA 0xeb1d8
		// Code size 78 (0x4e)
		.maxstack 3

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "info"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.1
		IL_000f: ldstr "m_MaxCapacity"
		IL_0014: ldarg.0
		IL_0015: ldfld int32 System.Text.StringBuilder::m_MaxCapacity
		IL_001a: callvirt instance void System.Runtime.Serialization.SerializationInfo::AddValue(string, int32)
		IL_001f: ldarg.1
		IL_0020: ldstr "Capacity"
		IL_0025: ldarg.0
		IL_0026: call instance int32 System.Text.StringBuilder::get_Capacity()
		IL_002b: callvirt instance void System.Runtime.Serialization.SerializationInfo::AddValue(string, int32)
		IL_0030: ldarg.1
		IL_0031: ldstr "m_StringValue"
		IL_0036: ldarg.0
		IL_0037: callvirt instance string System.Object::ToString()
		IL_003c: callvirt instance void System.Runtime.Serialization.SerializationInfo::AddValue(string, object)
		IL_0041: ldarg.1
		IL_0042: ldstr "m_currentThread"
		IL_0047: ldc.i4.0
		IL_0048: callvirt instance void System.Runtime.Serialization.SerializationInfo::AddValue(string, int32)
		IL_004d: ret
	} // end of method StringBuilder::System.Runtime.Serialization.ISerializable.GetObjectData

	.method public hidebysig specialname 
		instance int32 get_Capacity () cil managed 
	{
		// Method begins at RVA 0xeb232
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_0006: ldlen
		IL_0007: conv.i4
		IL_0008: ldarg.0
		IL_0009: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_000e: add
		IL_000f: ret
	} // end of method StringBuilder::get_Capacity

	.method public hidebysig specialname 
		instance void set_Capacity (
			int32 'value'
		) cil managed 
	{
		// Method begins at RVA 0xeb244
		// Code size 122 (0x7a)
		.maxstack 3
		.locals (
			[0] int32,
			[1] char[]
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0014

		IL_0004: ldstr "value"
		IL_0009: call string System.SR::get_ArgumentOutOfRange_NegativeCapacity()
		IL_000e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0013: throw

		IL_0014: ldarg.1
		IL_0015: ldarg.0
		IL_0016: call instance int32 System.Text.StringBuilder::get_MaxCapacity()
		IL_001b: ble.s IL_002d

		IL_001d: ldstr "value"
		IL_0022: call string System.SR::get_ArgumentOutOfRange_Capacity()
		IL_0027: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_002c: throw

		IL_002d: ldarg.1
		IL_002e: ldarg.0
		IL_002f: call instance int32 System.Text.StringBuilder::get_Length()
		IL_0034: bge.s IL_0046

		IL_0036: ldstr "value"
		IL_003b: call string System.SR::get_ArgumentOutOfRange_SmallCapacity()
		IL_0040: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0045: throw

		IL_0046: ldarg.0
		IL_0047: call instance int32 System.Text.StringBuilder::get_Capacity()
		IL_004c: ldarg.1
		IL_004d: beq.s IL_0079

		IL_004f: ldarg.1
		IL_0050: ldarg.0
		IL_0051: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_0056: sub
		IL_0057: stloc.0
		IL_0058: ldloc.0
		IL_0059: ldc.i4.0
		IL_005a: call !!0[] System.GC::AllocateUninitializedArray<char>(int32, bool)
		IL_005f: stloc.1
		IL_0060: ldarg.0
		IL_0061: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_0066: ldloc.1
		IL_0067: ldarg.0
		IL_0068: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_006d: call void System.Array::Copy(class System.Array, class System.Array, int32)
		IL_0072: ldarg.0
		IL_0073: ldloc.1
		IL_0074: stfld char[] System.Text.StringBuilder::m_ChunkChars

		IL_0079: ret
	} // end of method StringBuilder::set_Capacity

	.method public hidebysig specialname 
		instance int32 get_MaxCapacity () cil managed 
	{
		// Method begins at RVA 0xeb2ca
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int32 System.Text.StringBuilder::m_MaxCapacity
		IL_0006: ret
	} // end of method StringBuilder::get_MaxCapacity

	.method public hidebysig 
		instance int32 EnsureCapacity (
			int32 capacity
		) cil managed 
	{
		// Method begins at RVA 0xeb2d2
		// Code size 43 (0x2b)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0014

		IL_0004: ldstr "capacity"
		IL_0009: call string System.SR::get_ArgumentOutOfRange_NegativeCapacity()
		IL_000e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0013: throw

		IL_0014: ldarg.0
		IL_0015: call instance int32 System.Text.StringBuilder::get_Capacity()
		IL_001a: ldarg.1
		IL_001b: bge.s IL_0024

		IL_001d: ldarg.0
		IL_001e: ldarg.1
		IL_001f: call instance void System.Text.StringBuilder::set_Capacity(int32)

		IL_0024: ldarg.0
		IL_0025: call instance int32 System.Text.StringBuilder::get_Capacity()
		IL_002a: ret
	} // end of method StringBuilder::EnsureCapacity

	.method public hidebysig virtual 
		instance string ToString () cil managed 
	{
		// Method begins at RVA 0xeb300
		// Code size 164 (0xa4)
		.maxstack 3
		.locals (
			[0] string,
			[1] class System.Text.StringBuilder,
			[2] char*,
			[3] char& pinned,
			[4] char[],
			[5] int32,
			[6] int32,
			[7] char*,
			[8] char& pinned
		)

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.Text.StringBuilder::get_Length()
		IL_0006: brtrue.s IL_000e

		IL_0008: ldsfld string System.String::Empty
		IL_000d: ret

		IL_000e: ldarg.0
		IL_000f: call instance int32 System.Text.StringBuilder::get_Length()
		IL_0014: call string System.String::FastAllocateString(int32)
		IL_0019: stloc.0
		IL_001a: ldarg.0
		IL_001b: stloc.1
		IL_001c: ldloc.0
		IL_001d: brtrue.s IL_0023

		IL_001f: ldc.i4.0
		IL_0020: conv.u
		IL_0021: br.s IL_002c

		IL_0023: ldloc.0
		IL_0024: call instance char& modreq(System.Runtime.InteropServices.InAttribute) System.String::GetPinnableReference()
		IL_0029: stloc.3
		IL_002a: ldloc.3
		IL_002b: conv.u

		IL_002c: stloc.2
		// loop start (head: IL_002d)
			IL_002d: ldloc.1
			IL_002e: ldfld int32 System.Text.StringBuilder::m_ChunkLength
			IL_0033: ldc.i4.0
			IL_0034: ble.s IL_0098

			IL_0036: ldloc.1
			IL_0037: ldfld char[] System.Text.StringBuilder::m_ChunkChars
			IL_003c: stloc.s 4
			IL_003e: ldloc.1
			IL_003f: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
			IL_0044: stloc.s 5
			IL_0046: ldloc.1
			IL_0047: ldfld int32 System.Text.StringBuilder::m_ChunkLength
			IL_004c: stloc.s 6
			IL_004e: ldloc.s 6
			IL_0050: ldloc.s 5
			IL_0052: add
			IL_0053: ldloc.0
			IL_0054: callvirt instance int32 System.String::get_Length()
			IL_0059: bgt.un.s IL_0088

			IL_005b: ldloc.s 6
			IL_005d: ldloc.s 4
			IL_005f: ldlen
			IL_0060: conv.i4
			IL_0061: bgt.un.s IL_0088

			IL_0063: ldloc.s 4
			IL_0065: ldc.i4.0
			IL_0066: ldelema System.Char
			IL_006b: stloc.s 8
			IL_006d: ldloc.s 8
			IL_006f: conv.u
			IL_0070: stloc.s 7
			IL_0072: ldloc.2
			IL_0073: ldloc.s 5
			IL_0075: conv.i
			IL_0076: ldc.i4.2
			IL_0077: mul
			IL_0078: add
			IL_0079: ldloc.s 7
			IL_007b: ldloc.s 6
			IL_007d: call void System.String::wstrcpy(char*, char*, int32)
			IL_0082: ldc.i4.0
			IL_0083: conv.u
			IL_0084: stloc.s 8
			IL_0086: br.s IL_0098

			IL_0088: ldstr "chunkLength"
			IL_008d: call string System.SR::get_ArgumentOutOfRange_Index()
			IL_0092: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
			IL_0097: throw

			IL_0098: ldloc.1
			IL_0099: ldfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
			IL_009e: stloc.1
			IL_009f: ldloc.1
			IL_00a0: brtrue.s IL_002d
		// end loop
		IL_00a2: ldloc.0
		IL_00a3: ret
	} // end of method StringBuilder::ToString

	.method public hidebysig 
		instance string ToString (
			int32 startIndex,
			int32 length
		) cil managed 
	{
		// Method begins at RVA 0xeb3b0
		// Code size 130 (0x82)
		.maxstack 4
		.locals (
			[0] int32,
			[1] string,
			[2] char*,
			[3] char& pinned
		)

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.Text.StringBuilder::get_Length()
		IL_0006: stloc.0
		IL_0007: ldarg.1
		IL_0008: ldc.i4.0
		IL_0009: bge.s IL_001b

		IL_000b: ldstr "startIndex"
		IL_0010: call string System.SR::get_ArgumentOutOfRange_StartIndex()
		IL_0015: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_001a: throw

		IL_001b: ldarg.1
		IL_001c: ldloc.0
		IL_001d: ble.s IL_002f

		IL_001f: ldstr "startIndex"
		IL_0024: call string System.SR::get_ArgumentOutOfRange_StartIndexLargerThanLength()
		IL_0029: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_002e: throw

		IL_002f: ldarg.2
		IL_0030: ldc.i4.0
		IL_0031: bge.s IL_0043

		IL_0033: ldstr "length"
		IL_0038: call string System.SR::get_ArgumentOutOfRange_NegativeLength()
		IL_003d: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0042: throw

		IL_0043: ldarg.1
		IL_0044: ldloc.0
		IL_0045: ldarg.2
		IL_0046: sub
		IL_0047: ble.s IL_0059

		IL_0049: ldstr "length"
		IL_004e: call string System.SR::get_ArgumentOutOfRange_IndexLength()
		IL_0053: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0058: throw

		IL_0059: ldarg.2
		IL_005a: call string System.String::FastAllocateString(int32)
		IL_005f: stloc.1
		IL_0060: ldloc.1
		IL_0061: brtrue.s IL_0067

		IL_0063: ldc.i4.0
		IL_0064: conv.u
		IL_0065: br.s IL_0070

		IL_0067: ldloc.1
		IL_0068: call instance char& modreq(System.Runtime.InteropServices.InAttribute) System.String::GetPinnableReference()
		IL_006d: stloc.3
		IL_006e: ldloc.3
		IL_006f: conv.u

		IL_0070: stloc.2
		IL_0071: ldarg.0
		IL_0072: ldarg.1
		IL_0073: ldloc.2
		IL_0074: ldarg.2
		IL_0075: newobj instance void valuetype System.Span`1<char>::.ctor(void*, int32)
		IL_007a: ldarg.2
		IL_007b: call instance void System.Text.StringBuilder::CopyTo(int32, valuetype System.Span`1<char>, int32)
		IL_0080: ldloc.1
		IL_0081: ret
	} // end of method StringBuilder::ToString

	.method public hidebysig 
		instance class System.Text.StringBuilder Clear () cil managed 
	{
		// Method begins at RVA 0xeb43e
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: call instance void System.Text.StringBuilder::set_Length(int32)
		IL_0007: ldarg.0
		IL_0008: ret
	} // end of method StringBuilder::Clear

	.method public hidebysig specialname 
		instance int32 get_Length () cil managed 
	{
		// Method begins at RVA 0xeb448
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_0006: ldarg.0
		IL_0007: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_000c: add
		IL_000d: ret
	} // end of method StringBuilder::get_Length

	.method public hidebysig specialname 
		instance void set_Length (
			int32 'value'
		) cil managed 
	{
		// Method begins at RVA 0xeb458
		// Code size 253 (0xfd)
		.maxstack 3
		.locals (
			[0] int32,
			[1] class System.Text.StringBuilder,
			[2] int32,
			[3] int32,
			[4] char[]
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0014

		IL_0004: ldstr "value"
		IL_0009: call string System.SR::get_ArgumentOutOfRange_NegativeLength()
		IL_000e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0013: throw

		IL_0014: ldarg.1
		IL_0015: ldarg.0
		IL_0016: call instance int32 System.Text.StringBuilder::get_MaxCapacity()
		IL_001b: ble.s IL_002d

		IL_001d: ldstr "value"
		IL_0022: call string System.SR::get_ArgumentOutOfRange_SmallCapacity()
		IL_0027: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_002c: throw

		IL_002d: ldarg.1
		IL_002e: brtrue.s IL_0047

		IL_0030: ldarg.0
		IL_0031: ldfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
		IL_0036: brtrue.s IL_0047

		IL_0038: ldarg.0
		IL_0039: ldc.i4.0
		IL_003a: stfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_003f: ldarg.0
		IL_0040: ldc.i4.0
		IL_0041: stfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_0046: ret

		IL_0047: ldarg.1
		IL_0048: ldarg.0
		IL_0049: call instance int32 System.Text.StringBuilder::get_Length()
		IL_004e: sub
		IL_004f: stloc.0
		IL_0050: ldloc.0
		IL_0051: ldc.i4.0
		IL_0052: ble.s IL_005e

		IL_0054: ldarg.0
		IL_0055: ldc.i4.0
		IL_0056: ldloc.0
		IL_0057: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(char, int32)
		IL_005c: pop
		IL_005d: ret

		IL_005e: ldarg.0
		IL_005f: ldarg.1
		IL_0060: call instance class System.Text.StringBuilder System.Text.StringBuilder::FindChunkForIndex(int32)
		IL_0065: stloc.1
		IL_0066: ldloc.1
		IL_0067: ldarg.0
		IL_0068: beq IL_00ee

		IL_006d: ldarg.0
		IL_006e: call instance int32 System.Text.StringBuilder::get_Capacity()
		IL_0073: ldarg.0
		IL_0074: call instance int32 System.Text.StringBuilder::get_Length()
		IL_0079: ldc.i4.6
		IL_007a: mul
		IL_007b: ldc.i4.5
		IL_007c: div
		IL_007d: ldarg.0
		IL_007e: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_0083: ldlen
		IL_0084: conv.i4
		IL_0085: call int32 System.Math::Max(int32, int32)
		IL_008a: call int32 System.Math::Min(int32, int32)
		IL_008f: stloc.2
		IL_0090: ldloc.2
		IL_0091: ldloc.1
		IL_0092: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_0097: sub
		IL_0098: stloc.3
		IL_0099: ldloc.3
		IL_009a: ldloc.1
		IL_009b: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_00a0: ldlen
		IL_00a1: conv.i4
		IL_00a2: ble.s IL_00ca

		IL_00a4: ldloc.3
		IL_00a5: ldc.i4.0
		IL_00a6: call !!0[] System.GC::AllocateUninitializedArray<char>(int32, bool)
		IL_00ab: stloc.s 4
		IL_00ad: ldloc.1
		IL_00ae: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_00b3: ldloc.s 4
		IL_00b5: ldloc.1
		IL_00b6: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_00bb: call void System.Array::Copy(class System.Array, class System.Array, int32)
		IL_00c0: ldarg.0
		IL_00c1: ldloc.s 4
		IL_00c3: stfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_00c8: br.s IL_00d6

		IL_00ca: ldarg.0
		IL_00cb: ldloc.1
		IL_00cc: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_00d1: stfld char[] System.Text.StringBuilder::m_ChunkChars

		IL_00d6: ldarg.0
		IL_00d7: ldloc.1
		IL_00d8: ldfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
		IL_00dd: stfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
		IL_00e2: ldarg.0
		IL_00e3: ldloc.1
		IL_00e4: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_00e9: stfld int32 System.Text.StringBuilder::m_ChunkOffset

		IL_00ee: ldarg.0
		IL_00ef: ldarg.1
		IL_00f0: ldloc.1
		IL_00f1: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_00f6: sub
		IL_00f7: stfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_00fc: ret
	} // end of method StringBuilder::set_Length

	.method public hidebysig specialname 
		instance char get_Chars (
			int32 index
		) cil managed 
	{
		// Method begins at RVA 0xeb564
		// Code size 55 (0x37)
		.maxstack 2
		.locals (
			[0] class System.Text.StringBuilder,
			[1] int32
		)

		IL_0000: ldarg.0
		IL_0001: stloc.0
		// loop start (head: IL_0002)
			IL_0002: ldarg.1
			IL_0003: ldloc.0
			IL_0004: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
			IL_0009: sub
			IL_000a: stloc.1
			IL_000b: ldloc.1
			IL_000c: ldc.i4.0
			IL_000d: blt.s IL_0027

			IL_000f: ldloc.1
			IL_0010: ldloc.0
			IL_0011: ldfld int32 System.Text.StringBuilder::m_ChunkLength
			IL_0016: blt.s IL_001e

			IL_0018: newobj instance void System.IndexOutOfRangeException::.ctor()
			IL_001d: throw

			IL_001e: ldloc.0
			IL_001f: ldfld char[] System.Text.StringBuilder::m_ChunkChars
			IL_0024: ldloc.1
			IL_0025: ldelem.u2
			IL_0026: ret

			IL_0027: ldloc.0
			IL_0028: ldfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
			IL_002d: stloc.0
			IL_002e: ldloc.0
			IL_002f: brtrue.s IL_0002
		// end loop
		IL_0031: newobj instance void System.IndexOutOfRangeException::.ctor()
		IL_0036: throw
	} // end of method StringBuilder::get_Chars

	.method public hidebysig specialname 
		instance void set_Chars (
			int32 index,
			char 'value'
		) cil managed 
	{
		// Method begins at RVA 0xeb5a8
		// Code size 76 (0x4c)
		.maxstack 3
		.locals (
			[0] class System.Text.StringBuilder,
			[1] int32
		)

		IL_0000: ldarg.0
		IL_0001: stloc.0
		// loop start (head: IL_0002)
			IL_0002: ldarg.1
			IL_0003: ldloc.0
			IL_0004: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
			IL_0009: sub
			IL_000a: stloc.1
			IL_000b: ldloc.1
			IL_000c: ldc.i4.0
			IL_000d: blt.s IL_0032

			IL_000f: ldloc.1
			IL_0010: ldloc.0
			IL_0011: ldfld int32 System.Text.StringBuilder::m_ChunkLength
			IL_0016: blt.s IL_0028

			IL_0018: ldstr "index"
			IL_001d: call string System.SR::get_ArgumentOutOfRange_Index()
			IL_0022: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
			IL_0027: throw

			IL_0028: ldloc.0
			IL_0029: ldfld char[] System.Text.StringBuilder::m_ChunkChars
			IL_002e: ldloc.1
			IL_002f: ldarg.2
			IL_0030: stelem.i2
			IL_0031: ret

			IL_0032: ldloc.0
			IL_0033: ldfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
			IL_0038: stloc.0
			IL_0039: ldloc.0
			IL_003a: brtrue.s IL_0002
		// end loop
		IL_003c: ldstr "index"
		IL_0041: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0046: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_004b: throw
	} // end of method StringBuilder::set_Chars

	.method public hidebysig 
		instance valuetype System.Text.StringBuilder/ChunkEnumerator GetChunks () cil managed 
	{
		// Method begins at RVA 0xeb600
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: newobj instance void System.Text.StringBuilder/ChunkEnumerator::.ctor(class System.Text.StringBuilder)
		IL_0006: ret
	} // end of method StringBuilder::GetChunks

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			char 'value',
			int32 repeatCount
		) cil managed 
	{
		// Method begins at RVA 0xeb608
		// Code size 132 (0x84)
		.maxstack 4
		.locals (
			[0] int32,
			[1] int32
		)

		IL_0000: ldarg.2
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0014

		IL_0004: ldstr "repeatCount"
		IL_0009: call string System.SR::get_ArgumentOutOfRange_NegativeCount()
		IL_000e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0013: throw

		IL_0014: ldarg.2
		IL_0015: brtrue.s IL_0019

		IL_0017: ldarg.0
		IL_0018: ret

		IL_0019: ldarg.0
		IL_001a: call instance int32 System.Text.StringBuilder::get_Length()
		IL_001f: ldarg.2
		IL_0020: add
		IL_0021: stloc.0
		IL_0022: ldloc.0
		IL_0023: ldarg.0
		IL_0024: ldfld int32 System.Text.StringBuilder::m_MaxCapacity
		IL_0029: bgt.s IL_002f

		IL_002b: ldloc.0
		IL_002c: ldarg.2
		IL_002d: bge.s IL_003f

		IL_002f: ldstr "repeatCount"
		IL_0034: call string System.SR::get_ArgumentOutOfRange_LengthGreaterThanCapacity()
		IL_0039: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_003e: throw

		IL_003f: ldarg.0
		IL_0040: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0045: stloc.1
		IL_0046: br.s IL_0077
		// loop start (head: IL_0077)
			IL_0048: ldloc.1
			IL_0049: ldarg.0
			IL_004a: ldfld char[] System.Text.StringBuilder::m_ChunkChars
			IL_004f: ldlen
			IL_0050: conv.i4
			IL_0051: bge.s IL_0067

			IL_0053: ldarg.0
			IL_0054: ldfld char[] System.Text.StringBuilder::m_ChunkChars
			IL_0059: ldloc.1
			IL_005a: dup
			IL_005b: ldc.i4.1
			IL_005c: add
			IL_005d: stloc.1
			IL_005e: ldarg.1
			IL_005f: stelem.i2
			IL_0060: ldarg.2
			IL_0061: ldc.i4.1
			IL_0062: sub
			IL_0063: starg.s repeatCount
			IL_0065: br.s IL_0077

			IL_0067: ldarg.0
			IL_0068: ldloc.1
			IL_0069: stfld int32 System.Text.StringBuilder::m_ChunkLength
			IL_006e: ldarg.0
			IL_006f: ldarg.2
			IL_0070: call instance void System.Text.StringBuilder::ExpandByABlock(int32)
			IL_0075: ldc.i4.0
			IL_0076: stloc.1

			IL_0077: ldarg.2
			IL_0078: ldc.i4.0
			IL_0079: bgt.s IL_0048
		// end loop

		IL_007b: ldarg.0
		IL_007c: ldloc.1
		IL_007d: stfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0082: ldarg.0
		IL_0083: ret
	} // end of method StringBuilder::Append

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			char[] 'value',
			int32 startIndex,
			int32 charCount
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0xeb698
		// Code size 113 (0x71)
		.maxstack 3
		.locals (
			[0] char*,
			[1] char& pinned
		)

		IL_0000: ldarg.2
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0014

		IL_0004: ldstr "startIndex"
		IL_0009: call string System.SR::get_ArgumentOutOfRange_GenericPositive()
		IL_000e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0013: throw

		IL_0014: ldarg.3
		IL_0015: ldc.i4.0
		IL_0016: bge.s IL_0028

		IL_0018: ldstr "charCount"
		IL_001d: call string System.SR::get_ArgumentOutOfRange_GenericPositive()
		IL_0022: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0027: throw

		IL_0028: ldarg.1
		IL_0029: brtrue.s IL_003e

		IL_002b: ldarg.2
		IL_002c: brtrue.s IL_0033

		IL_002e: ldarg.3
		IL_002f: brtrue.s IL_0033

		IL_0031: ldarg.0
		IL_0032: ret

		IL_0033: ldstr "value"
		IL_0038: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_003d: throw

		IL_003e: ldarg.3
		IL_003f: ldarg.1
		IL_0040: ldlen
		IL_0041: conv.i4
		IL_0042: ldarg.2
		IL_0043: sub
		IL_0044: ble.s IL_0056

		IL_0046: ldstr "charCount"
		IL_004b: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0050: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0055: throw

		IL_0056: ldarg.3
		IL_0057: brtrue.s IL_005b

		IL_0059: ldarg.0
		IL_005a: ret

		IL_005b: ldarg.1
		IL_005c: ldarg.2
		IL_005d: ldelema System.Char
		IL_0062: stloc.1
		IL_0063: ldloc.1
		IL_0064: conv.u
		IL_0065: stloc.0
		IL_0066: ldarg.0
		IL_0067: ldloc.0
		IL_0068: ldarg.3
		IL_0069: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(char*, int32)
		IL_006e: pop
		IL_006f: ldarg.0
		IL_0070: ret
	} // end of method StringBuilder::Append

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			string 'value'
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0xeb718
		// Code size 141 (0x8d)
		.maxstack 4
		.locals (
			[0] char[],
			[1] int32,
			[2] int32,
			[3] char*,
			[4] char& pinned,
			[5] char*,
			[6] char& pinned
		)

		IL_0000: ldarg.1
		IL_0001: brfalse IL_008b

		IL_0006: ldarg.0
		IL_0007: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_000c: stloc.0
		IL_000d: ldarg.0
		IL_000e: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0013: stloc.1
		IL_0014: ldarg.1
		IL_0015: callvirt instance int32 System.String::get_Length()
		IL_001a: stloc.2
		IL_001b: ldloc.1
		IL_001c: ldloc.2
		IL_001d: add
		IL_001e: ldloc.0
		IL_001f: ldlen
		IL_0020: conv.i4
		IL_0021: bge.un.s IL_0084

		IL_0023: ldloc.2
		IL_0024: ldc.i4.2
		IL_0025: bgt.s IL_0047

		IL_0027: ldloc.2
		IL_0028: ldc.i4.0
		IL_0029: ble.s IL_0035

		IL_002b: ldloc.0
		IL_002c: ldloc.1
		IL_002d: ldarg.1
		IL_002e: ldc.i4.0
		IL_002f: callvirt instance char System.String::get_Chars(int32)
		IL_0034: stelem.i2

		IL_0035: ldloc.2
		IL_0036: ldc.i4.1
		IL_0037: ble.s IL_0079

		IL_0039: ldloc.0
		IL_003a: ldloc.1
		IL_003b: ldc.i4.1
		IL_003c: add
		IL_003d: ldarg.1
		IL_003e: ldc.i4.1
		IL_003f: callvirt instance char System.String::get_Chars(int32)
		IL_0044: stelem.i2
		IL_0045: br.s IL_0079

		IL_0047: ldarg.1
		IL_0048: brtrue.s IL_004e

		IL_004a: ldc.i4.0
		IL_004b: conv.u
		IL_004c: br.s IL_0059

		IL_004e: ldarg.1
		IL_004f: call instance char& modreq(System.Runtime.InteropServices.InAttribute) System.String::GetPinnableReference()
		IL_0054: stloc.s 4
		IL_0056: ldloc.s 4
		IL_0058: conv.u

		IL_0059: stloc.3
		IL_005a: ldloc.0
		IL_005b: ldloc.1
		IL_005c: ldelema System.Char
		IL_0061: stloc.s 6
		IL_0063: ldloc.s 6
		IL_0065: conv.u
		IL_0066: stloc.s 5
		IL_0068: ldloc.s 5
		IL_006a: ldloc.3
		IL_006b: ldloc.2
		IL_006c: call void System.String::wstrcpy(char*, char*, int32)
		IL_0071: ldc.i4.0
		IL_0072: conv.u
		IL_0073: stloc.s 6
		IL_0075: ldc.i4.0
		IL_0076: conv.u
		IL_0077: stloc.s 4

		IL_0079: ldarg.0
		IL_007a: ldloc.1
		IL_007b: ldloc.2
		IL_007c: add
		IL_007d: stfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0082: br.s IL_008b

		IL_0084: ldarg.0
		IL_0085: ldarg.1
		IL_0086: call instance void System.Text.StringBuilder::AppendHelper(string)

		IL_008b: ldarg.0
		IL_008c: ret
	} // end of method StringBuilder::Append

	.method private hidebysig 
		instance void AppendHelper (
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0xeb7b4
		// Code size 35 (0x23)
		.maxstack 3
		.locals (
			[0] char*,
			[1] char& pinned
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0007

		IL_0003: ldc.i4.0
		IL_0004: conv.u
		IL_0005: br.s IL_0010

		IL_0007: ldarg.1
		IL_0008: call instance char& modreq(System.Runtime.InteropServices.InAttribute) System.String::GetPinnableReference()
		IL_000d: stloc.1
		IL_000e: ldloc.1
		IL_000f: conv.u

		IL_0010: stloc.0
		IL_0011: ldarg.0
		IL_0012: ldloc.0
		IL_0013: ldarg.1
		IL_0014: callvirt instance int32 System.String::get_Length()
		IL_0019: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(char*, int32)
		IL_001e: pop
		IL_001f: ldc.i4.0
		IL_0020: conv.u
		IL_0021: stloc.1
		IL_0022: ret
	} // end of method StringBuilder::AppendHelper

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			string 'value',
			int32 startIndex,
			int32 count
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0xeb7e4
		// Code size 127 (0x7f)
		.maxstack 4
		.locals (
			[0] char*,
			[1] char& pinned
		)

		IL_0000: ldarg.2
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0014

		IL_0004: ldstr "startIndex"
		IL_0009: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_000e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0013: throw

		IL_0014: ldarg.3
		IL_0015: ldc.i4.0
		IL_0016: bge.s IL_0028

		IL_0018: ldstr "count"
		IL_001d: call string System.SR::get_ArgumentOutOfRange_GenericPositive()
		IL_0022: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0027: throw

		IL_0028: ldarg.1
		IL_0029: brtrue.s IL_003e

		IL_002b: ldarg.2
		IL_002c: brtrue.s IL_0033

		IL_002e: ldarg.3
		IL_002f: brtrue.s IL_0033

		IL_0031: ldarg.0
		IL_0032: ret

		IL_0033: ldstr "value"
		IL_0038: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_003d: throw

		IL_003e: ldarg.3
		IL_003f: brtrue.s IL_0043

		IL_0041: ldarg.0
		IL_0042: ret

		IL_0043: ldarg.2
		IL_0044: ldarg.1
		IL_0045: callvirt instance int32 System.String::get_Length()
		IL_004a: ldarg.3
		IL_004b: sub
		IL_004c: ble.s IL_005e

		IL_004e: ldstr "startIndex"
		IL_0053: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0058: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_005d: throw

		IL_005e: ldarg.1
		IL_005f: brtrue.s IL_0065

		IL_0061: ldc.i4.0
		IL_0062: conv.u
		IL_0063: br.s IL_006e

		IL_0065: ldarg.1
		IL_0066: call instance char& modreq(System.Runtime.InteropServices.InAttribute) System.String::GetPinnableReference()
		IL_006b: stloc.1
		IL_006c: ldloc.1
		IL_006d: conv.u

		IL_006e: stloc.0
		IL_006f: ldarg.0
		IL_0070: ldloc.0
		IL_0071: ldarg.2
		IL_0072: conv.i
		IL_0073: ldc.i4.2
		IL_0074: mul
		IL_0075: add
		IL_0076: ldarg.3
		IL_0077: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(char*, int32)
		IL_007c: pop
		IL_007d: ldarg.0
		IL_007e: ret
	} // end of method StringBuilder::Append

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			class System.Text.StringBuilder 'value'
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0xeb86f
		// Code size 28 (0x1c)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brfalse.s IL_001a

		IL_0003: ldarg.1
		IL_0004: callvirt instance int32 System.Text.StringBuilder::get_Length()
		IL_0009: brfalse.s IL_001a

		IL_000b: ldarg.0
		IL_000c: ldarg.1
		IL_000d: ldc.i4.0
		IL_000e: ldarg.1
		IL_000f: callvirt instance int32 System.Text.StringBuilder::get_Length()
		IL_0014: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendCore(class System.Text.StringBuilder, int32, int32)
		IL_0019: ret

		IL_001a: ldarg.0
		IL_001b: ret
	} // end of method StringBuilder::Append

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			class System.Text.StringBuilder 'value',
			int32 startIndex,
			int32 count
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0xeb88c
		// Code size 104 (0x68)
		.maxstack 4

		IL_0000: ldarg.2
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0014

		IL_0004: ldstr "startIndex"
		IL_0009: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_000e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0013: throw

		IL_0014: ldarg.3
		IL_0015: ldc.i4.0
		IL_0016: bge.s IL_0028

		IL_0018: ldstr "count"
		IL_001d: call string System.SR::get_ArgumentOutOfRange_GenericPositive()
		IL_0022: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0027: throw

		IL_0028: ldarg.1
		IL_0029: brtrue.s IL_003e

		IL_002b: ldarg.2
		IL_002c: brtrue.s IL_0033

		IL_002e: ldarg.3
		IL_002f: brtrue.s IL_0033

		IL_0031: ldarg.0
		IL_0032: ret

		IL_0033: ldstr "value"
		IL_0038: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_003d: throw

		IL_003e: ldarg.3
		IL_003f: brtrue.s IL_0043

		IL_0041: ldarg.0
		IL_0042: ret

		IL_0043: ldarg.3
		IL_0044: ldarg.1
		IL_0045: callvirt instance int32 System.Text.StringBuilder::get_Length()
		IL_004a: ldarg.2
		IL_004b: sub
		IL_004c: ble.s IL_005e

		IL_004e: ldstr "startIndex"
		IL_0053: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0058: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_005d: throw

		IL_005e: ldarg.0
		IL_005f: ldarg.1
		IL_0060: ldarg.2
		IL_0061: ldarg.3
		IL_0062: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendCore(class System.Text.StringBuilder, int32, int32)
		IL_0067: ret
	} // end of method StringBuilder::Append

	.method private hidebysig 
		instance class System.Text.StringBuilder AppendCore (
			class System.Text.StringBuilder 'value',
			int32 startIndex,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0xeb900
		// Code size 163 (0xa3)
		.maxstack 5
		.locals (
			[0] int32,
			[1] int32
		)

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: bne.un.s IL_0013

		IL_0004: ldarg.0
		IL_0005: ldarg.1
		IL_0006: ldarg.2
		IL_0007: ldarg.3
		IL_0008: callvirt instance string System.Text.StringBuilder::ToString(int32, int32)
		IL_000d: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(string)
		IL_0012: ret

		IL_0013: ldarg.0
		IL_0014: call instance int32 System.Text.StringBuilder::get_Length()
		IL_0019: ldarg.3
		IL_001a: add
		IL_001b: stloc.0
		IL_001c: ldloc.0
		IL_001d: ldarg.0
		IL_001e: ldfld int32 System.Text.StringBuilder::m_MaxCapacity
		IL_0023: ble.un.s IL_009d

		IL_0025: ldstr "Capacity"
		IL_002a: call string System.SR::get_ArgumentOutOfRange_Capacity()
		IL_002f: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0034: throw
		// loop start (head: IL_009d)
			IL_0035: ldarg.0
			IL_0036: ldfld char[] System.Text.StringBuilder::m_ChunkChars
			IL_003b: ldlen
			IL_003c: conv.i4
			IL_003d: ldarg.0
			IL_003e: ldfld int32 System.Text.StringBuilder::m_ChunkLength
			IL_0043: sub
			IL_0044: ldarg.3
			IL_0045: call int32 System.Math::Min(int32, int32)
			IL_004a: stloc.1
			IL_004b: ldloc.1
			IL_004c: brtrue.s IL_006b

			IL_004e: ldarg.0
			IL_004f: ldarg.3
			IL_0050: call instance void System.Text.StringBuilder::ExpandByABlock(int32)
			IL_0055: ldarg.0
			IL_0056: ldfld char[] System.Text.StringBuilder::m_ChunkChars
			IL_005b: ldlen
			IL_005c: conv.i4
			IL_005d: ldarg.0
			IL_005e: ldfld int32 System.Text.StringBuilder::m_ChunkLength
			IL_0063: sub
			IL_0064: ldarg.3
			IL_0065: call int32 System.Math::Min(int32, int32)
			IL_006a: stloc.1

			IL_006b: ldarg.1
			IL_006c: ldarg.2
			IL_006d: ldarg.0
			IL_006e: ldfld char[] System.Text.StringBuilder::m_ChunkChars
			IL_0073: ldarg.0
			IL_0074: ldfld int32 System.Text.StringBuilder::m_ChunkLength
			IL_0079: ldloc.1
			IL_007a: newobj instance void valuetype System.Span`1<char>::.ctor(!0[], int32, int32)
			IL_007f: ldloc.1
			IL_0080: callvirt instance void System.Text.StringBuilder::CopyTo(int32, valuetype System.Span`1<char>, int32)
			IL_0085: ldarg.0
			IL_0086: ldarg.0
			IL_0087: ldfld int32 System.Text.StringBuilder::m_ChunkLength
			IL_008c: ldloc.1
			IL_008d: add
			IL_008e: stfld int32 System.Text.StringBuilder::m_ChunkLength
			IL_0093: ldarg.2
			IL_0094: ldloc.1
			IL_0095: add
			IL_0096: starg.s startIndex
			IL_0098: ldarg.3
			IL_0099: ldloc.1
			IL_009a: sub
			IL_009b: starg.s count

			IL_009d: ldarg.3
			IL_009e: ldc.i4.0
			IL_009f: bgt.s IL_0035
		// end loop

		IL_00a1: ldarg.0
		IL_00a2: ret
	} // end of method StringBuilder::AppendCore

	.method public hidebysig 
		instance class System.Text.StringBuilder AppendLine () cil managed 
	{
		// Method begins at RVA 0xeb9af
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call string System.Environment::get_NewLine()
		IL_0006: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(string)
		IL_000b: ret
	} // end of method StringBuilder::AppendLine

	.method public hidebysig 
		instance class System.Text.StringBuilder AppendLine (
			string 'value'
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0xeb9bc
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(string)
		IL_0007: pop
		IL_0008: ldarg.0
		IL_0009: call string System.Environment::get_NewLine()
		IL_000e: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(string)
		IL_0013: ret
	} // end of method StringBuilder::AppendLine

	.method public hidebysig 
		instance void CopyTo (
			int32 sourceIndex,
			char[] destination,
			int32 destinationIndex,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0xeb9d4
		// Code size 89 (0x59)
		.maxstack 4
		.locals (
			[0] valuetype System.Span`1<char>
		)

		IL_0000: ldarg.2
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "destination"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.3
		IL_000f: ldc.i4.0
		IL_0010: bge.s IL_002c

		IL_0012: ldstr "destinationIndex"
		IL_0017: call string System.SR::get_ArgumentOutOfRange_MustBeNonNegNum()
		IL_001c: ldstr "destinationIndex"
		IL_0021: call string System.SR::Format(string, object)
		IL_0026: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_002b: throw

		IL_002c: ldarg.3
		IL_002d: ldarg.2
		IL_002e: ldlen
		IL_002f: conv.i4
		IL_0030: ldarg.s count
		IL_0032: sub
		IL_0033: ble.s IL_0040

		IL_0035: call string System.SR::get_ArgumentOutOfRange_OffsetOut()
		IL_003a: newobj instance void System.ArgumentException::.ctor(string)
		IL_003f: throw

		IL_0040: ldarg.0
		IL_0041: ldarg.1
		IL_0042: ldarg.2
		IL_0043: newobj instance void valuetype System.Span`1<char>::.ctor(!0[])
		IL_0048: stloc.0
		IL_0049: ldloca.s 0
		IL_004b: ldarg.3
		IL_004c: call instance valuetype System.Span`1<!0> valuetype System.Span`1<char>::Slice(int32)
		IL_0051: ldarg.s count
		IL_0053: call instance void System.Text.StringBuilder::CopyTo(int32, valuetype System.Span`1<char>, int32)
		IL_0058: ret
	} // end of method StringBuilder::CopyTo

	.method public hidebysig 
		instance void CopyTo (
			int32 sourceIndex,
			valuetype System.Span`1<char> destination,
			int32 count
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0xeba3c
		// Code size 166 (0xa6)
		.maxstack 5
		.locals (
			[0] class System.Text.StringBuilder,
			[1] int32,
			[2] int32,
			[3] int32,
			[4] int32,
			[5] int32
		)

		IL_0000: ldarg.3
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0014

		IL_0004: ldstr "count"
		IL_0009: call string System.SR::get_Arg_NegativeArgCount()
		IL_000e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0013: throw

		IL_0014: ldarg.1
		IL_0015: ldarg.0
		IL_0016: call instance int32 System.Text.StringBuilder::get_Length()
		IL_001b: ble.un.s IL_002d

		IL_001d: ldstr "sourceIndex"
		IL_0022: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0027: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_002c: throw

		IL_002d: ldarg.1
		IL_002e: ldarg.0
		IL_002f: call instance int32 System.Text.StringBuilder::get_Length()
		IL_0034: ldarg.3
		IL_0035: sub
		IL_0036: ble.s IL_0043

		IL_0038: call string System.SR::get_Arg_LongerThanSrcString()
		IL_003d: newobj instance void System.ArgumentException::.ctor(string)
		IL_0042: throw

		IL_0043: ldarg.0
		IL_0044: stloc.0
		IL_0045: ldarg.1
		IL_0046: ldarg.3
		IL_0047: add
		IL_0048: stloc.1
		IL_0049: ldarg.3
		IL_004a: stloc.2
		IL_004b: br.s IL_00a1
		// loop start (head: IL_00a1)
			IL_004d: ldloc.1
			IL_004e: ldloc.0
			IL_004f: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
			IL_0054: sub
			IL_0055: stloc.3
			IL_0056: ldloc.3
			IL_0057: ldc.i4.0
			IL_0058: blt.s IL_009a

			IL_005a: ldloc.3
			IL_005b: ldloc.0
			IL_005c: ldfld int32 System.Text.StringBuilder::m_ChunkLength
			IL_0061: call int32 System.Math::Min(int32, int32)
			IL_0066: stloc.3
			IL_0067: ldarg.3
			IL_0068: stloc.s 4
			IL_006a: ldloc.3
			IL_006b: ldarg.3
			IL_006c: sub
			IL_006d: stloc.s 5
			IL_006f: ldloc.s 5
			IL_0071: ldc.i4.0
			IL_0072: bge.s IL_007e

			IL_0074: ldloc.s 4
			IL_0076: ldloc.s 5
			IL_0078: add
			IL_0079: stloc.s 4
			IL_007b: ldc.i4.0
			IL_007c: stloc.s 5

			IL_007e: ldloc.2
			IL_007f: ldloc.s 4
			IL_0081: sub
			IL_0082: stloc.2
			IL_0083: ldarg.3
			IL_0084: ldloc.s 4
			IL_0086: sub
			IL_0087: starg.s count
			IL_0089: ldloc.0
			IL_008a: ldfld char[] System.Text.StringBuilder::m_ChunkChars
			IL_008f: ldloc.s 5
			IL_0091: ldarg.2
			IL_0092: ldloc.2
			IL_0093: ldloc.s 4
			IL_0095: call void System.Text.StringBuilder::ThreadSafeCopy(char[], int32, valuetype System.Span`1<char>, int32, int32)

			IL_009a: ldloc.0
			IL_009b: ldfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
			IL_00a0: stloc.0

			IL_00a1: ldarg.3
			IL_00a2: ldc.i4.0
			IL_00a3: bgt.s IL_004d
		// end loop

		IL_00a5: ret
	} // end of method StringBuilder::CopyTo

	.method public hidebysig 
		instance class System.Text.StringBuilder Insert (
			int32 index,
			string 'value',
			int32 count
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0xebaf0
		// Code size 159 (0x9f)
		.maxstack 6
		.locals (
			[0] int32,
			[1] int64,
			[2] class System.Text.StringBuilder,
			[3] int32,
			[4] char*,
			[5] char& pinned
		)

		IL_0000: ldarg.3
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0014

		IL_0004: ldstr "count"
		IL_0009: call string System.SR::get_ArgumentOutOfRange_NeedNonNegNum()
		IL_000e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0013: throw

		IL_0014: ldarg.0
		IL_0015: call instance int32 System.Text.StringBuilder::get_Length()
		IL_001a: stloc.0
		IL_001b: ldarg.1
		IL_001c: ldloc.0
		IL_001d: ble.un.s IL_002f

		IL_001f: ldstr "index"
		IL_0024: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0029: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_002e: throw

		IL_002f: ldarg.2
		IL_0030: call bool System.String::IsNullOrEmpty(string)
		IL_0035: brtrue.s IL_003a

		IL_0037: ldarg.3
		IL_0038: brtrue.s IL_003c

		IL_003a: ldarg.0
		IL_003b: ret

		IL_003c: ldarg.2
		IL_003d: callvirt instance int32 System.String::get_Length()
		IL_0042: conv.i8
		IL_0043: ldarg.3
		IL_0044: conv.i8
		IL_0045: mul
		IL_0046: stloc.1
		IL_0047: ldloc.1
		IL_0048: ldarg.0
		IL_0049: call instance int32 System.Text.StringBuilder::get_MaxCapacity()
		IL_004e: ldarg.0
		IL_004f: call instance int32 System.Text.StringBuilder::get_Length()
		IL_0054: sub
		IL_0055: conv.i8
		IL_0056: ble.s IL_005e

		IL_0058: newobj instance void System.OutOfMemoryException::.ctor()
		IL_005d: throw

		IL_005e: ldarg.0
		IL_005f: ldarg.1
		IL_0060: ldloc.1
		IL_0061: conv.i4
		IL_0062: ldloca.s 2
		IL_0064: ldloca.s 3
		IL_0066: ldc.i4.0
		IL_0067: call instance void System.Text.StringBuilder::MakeRoom(int32, int32, class System.Text.StringBuilder&, int32&, bool)
		IL_006c: ldarg.2
		IL_006d: brtrue.s IL_0073

		IL_006f: ldc.i4.0
		IL_0070: conv.u
		IL_0071: br.s IL_007e

		IL_0073: ldarg.2
		IL_0074: call instance char& modreq(System.Runtime.InteropServices.InAttribute) System.String::GetPinnableReference()
		IL_0079: stloc.s 5
		IL_007b: ldloc.s 5
		IL_007d: conv.u

		IL_007e: stloc.s 4
		IL_0080: br.s IL_0099
		// loop start (head: IL_0099)
			IL_0082: ldarg.0
			IL_0083: ldloca.s 2
			IL_0085: ldloca.s 3
			IL_0087: ldloc.s 4
			IL_0089: ldarg.2
			IL_008a: callvirt instance int32 System.String::get_Length()
			IL_008f: call instance void System.Text.StringBuilder::ReplaceInPlaceAtChunk(class System.Text.StringBuilder&, int32&, char*, int32)
			IL_0094: ldarg.3
			IL_0095: ldc.i4.1
			IL_0096: sub
			IL_0097: starg.s count

			IL_0099: ldarg.3
			IL_009a: ldc.i4.0
			IL_009b: bgt.s IL_0082
		// end loop

		IL_009d: ldarg.0
		IL_009e: ret
	} // end of method StringBuilder::Insert

	.method public hidebysig 
		instance class System.Text.StringBuilder Remove (
			int32 startIndex,
			int32 length
		) cil managed 
	{
		// Method begins at RVA 0xebb9c
		// Code size 106 (0x6a)
		.maxstack 5
		.locals (
			[0] class System.Text.StringBuilder,
			[1] int32
		)

		IL_0000: ldarg.2
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0014

		IL_0004: ldstr "length"
		IL_0009: call string System.SR::get_ArgumentOutOfRange_NegativeLength()
		IL_000e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0013: throw

		IL_0014: ldarg.1
		IL_0015: ldc.i4.0
		IL_0016: bge.s IL_0028

		IL_0018: ldstr "startIndex"
		IL_001d: call string System.SR::get_ArgumentOutOfRange_StartIndex()
		IL_0022: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0027: throw

		IL_0028: ldarg.2
		IL_0029: ldarg.0
		IL_002a: call instance int32 System.Text.StringBuilder::get_Length()
		IL_002f: ldarg.1
		IL_0030: sub
		IL_0031: ble.s IL_0043

		IL_0033: ldstr "length"
		IL_0038: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_003d: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0042: throw

		IL_0043: ldarg.0
		IL_0044: call instance int32 System.Text.StringBuilder::get_Length()
		IL_0049: ldarg.2
		IL_004a: bne.un.s IL_0058

		IL_004c: ldarg.1
		IL_004d: brtrue.s IL_0058

		IL_004f: ldarg.0
		IL_0050: ldc.i4.0
		IL_0051: call instance void System.Text.StringBuilder::set_Length(int32)
		IL_0056: ldarg.0
		IL_0057: ret

		IL_0058: ldarg.2
		IL_0059: ldc.i4.0
		IL_005a: ble.s IL_0068

		IL_005c: ldarg.0
		IL_005d: ldarg.1
		IL_005e: ldarg.2
		IL_005f: ldloca.s 0
		IL_0061: ldloca.s 1
		IL_0063: call instance void System.Text.StringBuilder::Remove(int32, int32, class System.Text.StringBuilder&, int32&)

		IL_0068: ldarg.0
		IL_0069: ret
	} // end of method StringBuilder::Remove

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			bool 'value'
		) cil managed 
	{
		// Method begins at RVA 0xebc12
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarga.s 'value'
		IL_0003: call instance string System.Boolean::ToString()
		IL_0008: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(string)
		IL_000d: ret
	} // end of method StringBuilder::Append

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			char 'value'
		) cil managed 
	{
		// Method begins at RVA 0xebc24
		// Code size 51 (0x33)
		.maxstack 3
		.locals (
			[0] int32,
			[1] char[]
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0006: stloc.0
		IL_0007: ldarg.0
		IL_0008: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_000d: stloc.1
		IL_000e: ldloc.1
		IL_000f: ldlen
		IL_0010: conv.i4
		IL_0011: ldloc.0
		IL_0012: ble.un.s IL_0028

		IL_0014: ldloc.1
		IL_0015: ldloc.0
		IL_0016: ldarg.1
		IL_0017: stelem.i2
		IL_0018: ldarg.0
		IL_0019: ldarg.0
		IL_001a: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_001f: ldc.i4.1
		IL_0020: add
		IL_0021: stfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0026: br.s IL_0031

		IL_0028: ldarg.0
		IL_0029: ldarg.1
		IL_002a: ldc.i4.1
		IL_002b: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(char, int32)
		IL_0030: pop

		IL_0031: ldarg.0
		IL_0032: ret
	} // end of method StringBuilder::Append

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			int8 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0xebc63
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendSpanFormattable<int8>(!!0)
		IL_0007: ret
	} // end of method StringBuilder::Append

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			uint8 'value'
		) cil managed 
	{
		// Method begins at RVA 0xebc6c
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendSpanFormattable<uint8>(!!0)
		IL_0007: ret
	} // end of method StringBuilder::Append

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			int16 'value'
		) cil managed 
	{
		// Method begins at RVA 0xebc75
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendSpanFormattable<int16>(!!0)
		IL_0007: ret
	} // end of method StringBuilder::Append

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			int32 'value'
		) cil managed 
	{
		// Method begins at RVA 0xebc7e
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendSpanFormattable<int32>(!!0)
		IL_0007: ret
	} // end of method StringBuilder::Append

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			int64 'value'
		) cil managed 
	{
		// Method begins at RVA 0xebc87
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendSpanFormattable<int64>(!!0)
		IL_0007: ret
	} // end of method StringBuilder::Append

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			float32 'value'
		) cil managed 
	{
		// Method begins at RVA 0xebc90
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendSpanFormattable<float32>(!!0)
		IL_0007: ret
	} // end of method StringBuilder::Append

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0xebc99
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendSpanFormattable<float64>(!!0)
		IL_0007: ret
	} // end of method StringBuilder::Append

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0xebca2
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendSpanFormattable<valuetype System.Decimal>(!!0)
		IL_0007: ret
	} // end of method StringBuilder::Append

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			uint16 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0xebcab
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendSpanFormattable<uint16>(!!0)
		IL_0007: ret
	} // end of method StringBuilder::Append

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			uint32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0xebcb4
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendSpanFormattable<uint32>(!!0)
		IL_0007: ret
	} // end of method StringBuilder::Append

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			uint64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0xebcbd
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendSpanFormattable<uint64>(!!0)
		IL_0007: ret
	} // end of method StringBuilder::Append

	.method private hidebysig 
		instance class System.Text.StringBuilder AppendSpanFormattable<(System.ISpanFormattable) T> (
			!!T 'value'
		) cil managed 
	{
		// Method begins at RVA 0xebcc8
		// Code size 69 (0x45)
		.maxstack 5
		.locals (
			[0] int32,
			[1] valuetype System.ReadOnlySpan`1<char>
		)

		IL_0000: ldarga.s 'value'
		IL_0002: ldarg.0
		IL_0003: call instance valuetype System.Span`1<char> System.Text.StringBuilder::get_RemainingCurrentChunk()
		IL_0008: ldloca.s 0
		IL_000a: ldloca.s 1
		IL_000c: initobj valuetype System.ReadOnlySpan`1<char>
		IL_0012: ldloc.1
		IL_0013: ldnull
		IL_0014: constrained. !!T
		IL_001a: callvirt instance bool System.ISpanFormattable::TryFormat(valuetype System.Span`1<char>, int32&, valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider)
		IL_001f: brfalse.s IL_0031

		IL_0021: ldarg.0
		IL_0022: ldarg.0
		IL_0023: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0028: ldloc.0
		IL_0029: add
		IL_002a: stfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_002f: ldarg.0
		IL_0030: ret

		IL_0031: ldarg.0
		IL_0032: ldarga.s 'value'
		IL_0034: constrained. !!T
		IL_003a: callvirt instance string System.Object::ToString()
		IL_003f: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(string)
		IL_0044: ret
	} // end of method StringBuilder::AppendSpanFormattable

	.method assembly hidebysig 
		instance class System.Text.StringBuilder AppendSpanFormattable<(System.ISpanFormattable, System.IFormattable) T> (
			!!T 'value',
			string format,
			class System.IFormatProvider provider
		) cil managed 
	{
		// Method begins at RVA 0xebd1c
		// Code size 68 (0x44)
		.maxstack 5
		.locals (
			[0] int32
		)

		IL_0000: ldarga.s 'value'
		IL_0002: ldarg.0
		IL_0003: call instance valuetype System.Span`1<char> System.Text.StringBuilder::get_RemainingCurrentChunk()
		IL_0008: ldloca.s 0
		IL_000a: ldarg.2
		IL_000b: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_0010: ldarg.3
		IL_0011: constrained. !!T
		IL_0017: callvirt instance bool System.ISpanFormattable::TryFormat(valuetype System.Span`1<char>, int32&, valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider)
		IL_001c: brfalse.s IL_002e

		IL_001e: ldarg.0
		IL_001f: ldarg.0
		IL_0020: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0025: ldloc.0
		IL_0026: add
		IL_0027: stfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_002c: ldarg.0
		IL_002d: ret

		IL_002e: ldarg.0
		IL_002f: ldarga.s 'value'
		IL_0031: ldarg.2
		IL_0032: ldarg.3
		IL_0033: constrained. !!T
		IL_0039: callvirt instance string System.IFormattable::ToString(string, class System.IFormatProvider)
		IL_003e: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(string)
		IL_0043: ret
	} // end of method StringBuilder::AppendSpanFormattable

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			object 'value'
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0xebd6c
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: ldarg.1
		IL_0005: callvirt instance string System.Object::ToString()
		IL_000a: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(string)
		IL_000f: ret

		IL_0010: ldarg.0
		IL_0011: ret
	} // end of method StringBuilder::Append

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			char[] 'value'
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0xebd80
		// Code size 34 (0x22)
		.maxstack 3
		.locals (
			[0] char*,
			[1] char& pinned
		)

		IL_0000: ldarg.1
		IL_0001: brfalse.s IL_0020

		IL_0003: ldarg.1
		IL_0004: ldlen
		IL_0005: brfalse.s IL_0020

		IL_0007: ldarg.1
		IL_0008: ldc.i4.0
		IL_0009: ldelema System.Char
		IL_000e: stloc.1
		IL_000f: ldloc.1
		IL_0010: conv.u
		IL_0011: stloc.0
		IL_0012: ldarg.0
		IL_0013: ldloc.0
		IL_0014: ldarg.1
		IL_0015: ldlen
		IL_0016: conv.i4
		IL_0017: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(char*, int32)
		IL_001c: pop
		IL_001d: ldc.i4.0
		IL_001e: conv.u
		IL_001f: stloc.1

		IL_0020: ldarg.0
		IL_0021: ret
	} // end of method StringBuilder::Append

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			valuetype System.ReadOnlySpan`1<char> 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0xebdb0
		// Code size 40 (0x28)
		.maxstack 3
		.locals (
			[0] char*,
			[1] char& pinned
		)

		IL_0000: ldarga.s 'value'
		IL_0002: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0007: ldc.i4.0
		IL_0008: ble.s IL_0026

		IL_000a: ldarg.1
		IL_000b: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<char>(valuetype System.ReadOnlySpan`1<!!0>)
		IL_0010: stloc.1
		IL_0011: ldloc.1
		IL_0012: conv.u
		IL_0013: stloc.0
		IL_0014: ldarg.0
		IL_0015: ldloc.0
		IL_0016: ldarga.s 'value'
		IL_0018: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_001d: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(char*, int32)
		IL_0022: pop
		IL_0023: ldc.i4.0
		IL_0024: conv.u
		IL_0025: stloc.1

		IL_0026: ldarg.0
		IL_0027: ret
	} // end of method StringBuilder::Append

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			valuetype System.ReadOnlyMemory`1<char> 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0xebde4
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarga.s 'value'
		IL_0003: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlyMemory`1<char>::get_Span()
		IL_0008: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(valuetype System.ReadOnlySpan`1<char>)
		IL_000d: ret
	} // end of method StringBuilder::Append

	.method public hidebysig 
		instance class System.Text.StringBuilder AppendJoin (
			string separator,
			object[] values
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
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 01 02 00 00
			)
		// Method begins at RVA 0xebdf4
		// Code size 42 (0x2a)
		.maxstack 4
		.locals (
			[0] char*,
			[1] char& pinned
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000a

		IL_0003: ldsfld string System.String::Empty
		IL_0008: starg.s separator

		IL_000a: ldarg.1
		IL_000b: brtrue.s IL_0011

		IL_000d: ldc.i4.0
		IL_000e: conv.u
		IL_000f: br.s IL_001a

		IL_0011: ldarg.1
		IL_0012: call instance char& modreq(System.Runtime.InteropServices.InAttribute) System.String::GetPinnableReference()
		IL_0017: stloc.1
		IL_0018: ldloc.1
		IL_0019: conv.u

		IL_001a: stloc.0
		IL_001b: ldarg.0
		IL_001c: ldloc.0
		IL_001d: ldarg.1
		IL_001e: callvirt instance int32 System.String::get_Length()
		IL_0023: ldarg.2
		IL_0024: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendJoinCore<object>(char*, int32, !!0[])
		IL_0029: ret
	} // end of method StringBuilder::AppendJoin

	.method public hidebysig 
		instance class System.Text.StringBuilder AppendJoin<T> (
			string separator,
			class System.Collections.Generic.IEnumerable`1<!!T> values
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0xebe2c
		// Code size 42 (0x2a)
		.maxstack 4
		.locals (
			[0] char*,
			[1] char& pinned
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000a

		IL_0003: ldsfld string System.String::Empty
		IL_0008: starg.s separator

		IL_000a: ldarg.1
		IL_000b: brtrue.s IL_0011

		IL_000d: ldc.i4.0
		IL_000e: conv.u
		IL_000f: br.s IL_001a

		IL_0011: ldarg.1
		IL_0012: call instance char& modreq(System.Runtime.InteropServices.InAttribute) System.String::GetPinnableReference()
		IL_0017: stloc.1
		IL_0018: ldloc.1
		IL_0019: conv.u

		IL_001a: stloc.0
		IL_001b: ldarg.0
		IL_001c: ldloc.0
		IL_001d: ldarg.1
		IL_001e: callvirt instance int32 System.String::get_Length()
		IL_0023: ldarg.2
		IL_0024: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendJoinCore<!!T>(char*, int32, class System.Collections.Generic.IEnumerable`1<!!0>)
		IL_0029: ret
	} // end of method StringBuilder::AppendJoin

	.method public hidebysig 
		instance class System.Text.StringBuilder AppendJoin (
			string separator,
			string[] values
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
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 01 02 00 00
			)
		// Method begins at RVA 0xebe64
		// Code size 42 (0x2a)
		.maxstack 4
		.locals (
			[0] char*,
			[1] char& pinned
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000a

		IL_0003: ldsfld string System.String::Empty
		IL_0008: starg.s separator

		IL_000a: ldarg.1
		IL_000b: brtrue.s IL_0011

		IL_000d: ldc.i4.0
		IL_000e: conv.u
		IL_000f: br.s IL_001a

		IL_0011: ldarg.1
		IL_0012: call instance char& modreq(System.Runtime.InteropServices.InAttribute) System.String::GetPinnableReference()
		IL_0017: stloc.1
		IL_0018: ldloc.1
		IL_0019: conv.u

		IL_001a: stloc.0
		IL_001b: ldarg.0
		IL_001c: ldloc.0
		IL_001d: ldarg.1
		IL_001e: callvirt instance int32 System.String::get_Length()
		IL_0023: ldarg.2
		IL_0024: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendJoinCore<string>(char*, int32, !!0[])
		IL_0029: ret
	} // end of method StringBuilder::AppendJoin

	.method public hidebysig 
		instance class System.Text.StringBuilder AppendJoin (
			char separator,
			object[] values
		) cil managed 
	{
		.param [2]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 01 02 00 00
			)
		// Method begins at RVA 0xebe9a
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarga.s separator
		IL_0003: conv.u
		IL_0004: ldc.i4.1
		IL_0005: ldarg.2
		IL_0006: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendJoinCore<object>(char*, int32, !!0[])
		IL_000b: ret
	} // end of method StringBuilder::AppendJoin

	.method public hidebysig 
		instance class System.Text.StringBuilder AppendJoin<T> (
			char separator,
			class System.Collections.Generic.IEnumerable`1<!!T> values
		) cil managed 
	{
		.param type T
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0xebea7
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarga.s separator
		IL_0003: conv.u
		IL_0004: ldc.i4.1
		IL_0005: ldarg.2
		IL_0006: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendJoinCore<!!T>(char*, int32, class System.Collections.Generic.IEnumerable`1<!!0>)
		IL_000b: ret
	} // end of method StringBuilder::AppendJoin

	.method public hidebysig 
		instance class System.Text.StringBuilder AppendJoin (
			char separator,
			string[] values
		) cil managed 
	{
		.param [2]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 01 02 00 00
			)
		// Method begins at RVA 0xebeb4
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarga.s separator
		IL_0003: conv.u
		IL_0004: ldc.i4.1
		IL_0005: ldarg.2
		IL_0006: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendJoinCore<string>(char*, int32, !!0[])
		IL_000b: ret
	} // end of method StringBuilder::AppendJoin

	.method private hidebysig 
		instance class System.Text.StringBuilder AppendJoinCore<T> (
			char* separator,
			int32 separatorLength,
			class System.Collections.Generic.IEnumerable`1<!!T> values
		) cil managed 
	{
		// Method begins at RVA 0xebec4
		// Code size 133 (0x85)
		.maxstack 3
		.locals (
			[0] class System.Collections.Generic.IEnumerator`1<!!T>,
			[1] !!T,
			[2] class System.Text.StringBuilder
		)

		IL_0000: ldarg.3
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.6
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.3
		IL_000a: callvirt instance class System.Collections.Generic.IEnumerator`1<!0> class System.Collections.Generic.IEnumerable`1<!!T>::GetEnumerator()
		IL_000f: stloc.0
		.try
		{
			IL_0010: ldloc.0
			IL_0011: callvirt instance bool System.Collections.IEnumerator::MoveNext()
			IL_0016: brtrue.s IL_001c

			IL_0018: ldarg.0
			IL_0019: stloc.2
			IL_001a: leave.s IL_0083

			IL_001c: ldloc.0
			IL_001d: callvirt instance !0 class System.Collections.Generic.IEnumerator`1<!!T>::get_Current()
			IL_0022: stloc.1
			IL_0023: ldloc.1
			IL_0024: box !!T
			IL_0029: brfalse.s IL_006d

			IL_002b: ldarg.0
			IL_002c: ldloca.s 1
			IL_002e: constrained. !!T
			IL_0034: callvirt instance string System.Object::ToString()
			IL_0039: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(string)
			IL_003e: pop
			IL_003f: br.s IL_006d
			// loop start (head: IL_006d)
				IL_0041: ldarg.0
				IL_0042: ldarg.1
				IL_0043: ldarg.2
				IL_0044: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(char*, int32)
				IL_0049: pop
				IL_004a: ldloc.0
				IL_004b: callvirt instance !0 class System.Collections.Generic.IEnumerator`1<!!T>::get_Current()
				IL_0050: stloc.1
				IL_0051: ldloc.1
				IL_0052: box !!T
				IL_0057: brfalse.s IL_006d

				IL_0059: ldarg.0
				IL_005a: ldloca.s 1
				IL_005c: constrained. !!T
				IL_0062: callvirt instance string System.Object::ToString()
				IL_0067: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(string)
				IL_006c: pop

				IL_006d: ldloc.0
				IL_006e: callvirt instance bool System.Collections.IEnumerator::MoveNext()
				IL_0073: brtrue.s IL_0041
			// end loop

			IL_0075: leave.s IL_0081
		} // end .try
		finally
		{
			IL_0077: ldloc.0
			IL_0078: brfalse.s IL_0080

			IL_007a: ldloc.0
			IL_007b: callvirt instance void System.IDisposable::Dispose()

			IL_0080: endfinally
		} // end handler

		IL_0081: ldarg.0
		IL_0082: ret

		IL_0083: ldloc.2
		IL_0084: ret
	} // end of method StringBuilder::AppendJoinCore

	.method private hidebysig 
		instance class System.Text.StringBuilder AppendJoinCore<T> (
			char* separator,
			int32 separatorLength,
			!!T[] values
		) cil managed 
	{
		// Method begins at RVA 0xebf68
		// Code size 122 (0x7a)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.3
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.6
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.3
		IL_000a: ldlen
		IL_000b: brtrue.s IL_000f

		IL_000d: ldarg.0
		IL_000e: ret

		IL_000f: ldarg.3
		IL_0010: ldc.i4.0
		IL_0011: ldelem !!T
		IL_0016: box !!T
		IL_001b: brfalse.s IL_0038

		IL_001d: ldarg.0
		IL_001e: ldarg.3
		IL_001f: ldc.i4.0
		IL_0020: readonly.
		IL_0022: ldelema !!T
		IL_0027: constrained. !!T
		IL_002d: callvirt instance string System.Object::ToString()
		IL_0032: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(string)
		IL_0037: pop

		IL_0038: ldc.i4.1
		IL_0039: stloc.0
		IL_003a: br.s IL_0072
		// loop start (head: IL_0072)
			IL_003c: ldarg.0
			IL_003d: ldarg.1
			IL_003e: ldarg.2
			IL_003f: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(char*, int32)
			IL_0044: pop
			IL_0045: ldarg.3
			IL_0046: ldloc.0
			IL_0047: ldelem !!T
			IL_004c: box !!T
			IL_0051: brfalse.s IL_006e

			IL_0053: ldarg.0
			IL_0054: ldarg.3
			IL_0055: ldloc.0
			IL_0056: readonly.
			IL_0058: ldelema !!T
			IL_005d: constrained. !!T
			IL_0063: callvirt instance string System.Object::ToString()
			IL_0068: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(string)
			IL_006d: pop

			IL_006e: ldloc.0
			IL_006f: ldc.i4.1
			IL_0070: add
			IL_0071: stloc.0

			IL_0072: ldloc.0
			IL_0073: ldarg.3
			IL_0074: ldlen
			IL_0075: conv.i4
			IL_0076: blt.s IL_003c
		// end loop

		IL_0078: ldarg.0
		IL_0079: ret
	} // end of method StringBuilder::AppendJoinCore

	.method public hidebysig 
		instance class System.Text.StringBuilder Insert (
			int32 index,
			string 'value'
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0xebff0
		// Code size 64 (0x40)
		.maxstack 4
		.locals (
			[0] char*,
			[1] char& pinned
		)

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: call instance int32 System.Text.StringBuilder::get_Length()
		IL_0007: ble.un.s IL_0019

		IL_0009: ldstr "index"
		IL_000e: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0013: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0018: throw

		IL_0019: ldarg.2
		IL_001a: brfalse.s IL_003e

		IL_001c: ldarg.2
		IL_001d: brtrue.s IL_0023

		IL_001f: ldc.i4.0
		IL_0020: conv.u
		IL_0021: br.s IL_002c

		IL_0023: ldarg.2
		IL_0024: call instance char& modreq(System.Runtime.InteropServices.InAttribute) System.String::GetPinnableReference()
		IL_0029: stloc.1
		IL_002a: ldloc.1
		IL_002b: conv.u

		IL_002c: stloc.0
		IL_002d: ldarg.0
		IL_002e: ldarg.1
		IL_002f: ldloc.0
		IL_0030: ldarg.2
		IL_0031: callvirt instance int32 System.String::get_Length()
		IL_0036: call instance void System.Text.StringBuilder::Insert(int32, char*, int32)
		IL_003b: ldc.i4.0
		IL_003c: conv.u
		IL_003d: stloc.1

		IL_003e: ldarg.0
		IL_003f: ret
	} // end of method StringBuilder::Insert

	.method public hidebysig 
		instance class System.Text.StringBuilder Insert (
			int32 index,
			bool 'value'
		) cil managed 
	{
		// Method begins at RVA 0xec03c
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarga.s 'value'
		IL_0004: call instance string System.Boolean::ToString()
		IL_0009: ldc.i4.1
		IL_000a: call instance class System.Text.StringBuilder System.Text.StringBuilder::Insert(int32, string, int32)
		IL_000f: ret
	} // end of method StringBuilder::Insert

	.method public hidebysig 
		instance class System.Text.StringBuilder Insert (
			int32 index,
			int8 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0xec04d
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarga.s 'value'
		IL_0004: call instance string System.SByte::ToString()
		IL_0009: ldc.i4.1
		IL_000a: call instance class System.Text.StringBuilder System.Text.StringBuilder::Insert(int32, string, int32)
		IL_000f: ret
	} // end of method StringBuilder::Insert

	.method public hidebysig 
		instance class System.Text.StringBuilder Insert (
			int32 index,
			uint8 'value'
		) cil managed 
	{
		// Method begins at RVA 0xec05e
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarga.s 'value'
		IL_0004: call instance string System.Byte::ToString()
		IL_0009: ldc.i4.1
		IL_000a: call instance class System.Text.StringBuilder System.Text.StringBuilder::Insert(int32, string, int32)
		IL_000f: ret
	} // end of method StringBuilder::Insert

	.method public hidebysig 
		instance class System.Text.StringBuilder Insert (
			int32 index,
			int16 'value'
		) cil managed 
	{
		// Method begins at RVA 0xec06f
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarga.s 'value'
		IL_0004: call instance string System.Int16::ToString()
		IL_0009: ldc.i4.1
		IL_000a: call instance class System.Text.StringBuilder System.Text.StringBuilder::Insert(int32, string, int32)
		IL_000f: ret
	} // end of method StringBuilder::Insert

	.method public hidebysig 
		instance class System.Text.StringBuilder Insert (
			int32 index,
			char 'value'
		) cil managed 
	{
		// Method begins at RVA 0xec080
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarga.s 'value'
		IL_0004: conv.u
		IL_0005: ldc.i4.1
		IL_0006: call instance void System.Text.StringBuilder::Insert(int32, char*, int32)
		IL_000b: ldarg.0
		IL_000c: ret
	} // end of method StringBuilder::Insert

	.method public hidebysig 
		instance class System.Text.StringBuilder Insert (
			int32 index,
			char[] 'value'
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0xec08e
		// Code size 43 (0x2b)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: call instance int32 System.Text.StringBuilder::get_Length()
		IL_0007: ble.un.s IL_0019

		IL_0009: ldstr "index"
		IL_000e: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0013: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0018: throw

		IL_0019: ldarg.2
		IL_001a: brfalse.s IL_0029

		IL_001c: ldarg.0
		IL_001d: ldarg.1
		IL_001e: ldarg.2
		IL_001f: ldc.i4.0
		IL_0020: ldarg.2
		IL_0021: ldlen
		IL_0022: conv.i4
		IL_0023: call instance class System.Text.StringBuilder System.Text.StringBuilder::Insert(int32, char[], int32, int32)
		IL_0028: pop

		IL_0029: ldarg.0
		IL_002a: ret
	} // end of method StringBuilder::Insert

	.method public hidebysig 
		instance class System.Text.StringBuilder Insert (
			int32 index,
			char[] 'value',
			int32 startIndex,
			int32 charCount
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0xec0bc
		// Code size 152 (0x98)
		.maxstack 4
		.locals (
			[0] int32,
			[1] char*,
			[2] char& pinned
		)

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.Text.StringBuilder::get_Length()
		IL_0006: stloc.0
		IL_0007: ldarg.1
		IL_0008: ldloc.0
		IL_0009: ble.un.s IL_001b

		IL_000b: ldstr "index"
		IL_0010: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0015: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_001a: throw

		IL_001b: ldarg.2
		IL_001c: brtrue.s IL_0037

		IL_001e: ldarg.3
		IL_001f: brtrue.s IL_0027

		IL_0021: ldarg.s charCount
		IL_0023: brtrue.s IL_0027

		IL_0025: ldarg.0
		IL_0026: ret

		IL_0027: ldstr "value"
		IL_002c: call string System.SR::get_ArgumentNull_String()
		IL_0031: newobj instance void System.ArgumentNullException::.ctor(string, string)
		IL_0036: throw

		IL_0037: ldarg.3
		IL_0038: ldc.i4.0
		IL_0039: bge.s IL_004b

		IL_003b: ldstr "startIndex"
		IL_0040: call string System.SR::get_ArgumentOutOfRange_StartIndex()
		IL_0045: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_004a: throw

		IL_004b: ldarg.s charCount
		IL_004d: ldc.i4.0
		IL_004e: bge.s IL_0060

		IL_0050: ldstr "charCount"
		IL_0055: call string System.SR::get_ArgumentOutOfRange_GenericPositive()
		IL_005a: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_005f: throw

		IL_0060: ldarg.3
		IL_0061: ldarg.2
		IL_0062: ldlen
		IL_0063: conv.i4
		IL_0064: ldarg.s charCount
		IL_0066: sub
		IL_0067: ble.s IL_0079

		IL_0069: ldstr "startIndex"
		IL_006e: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0073: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0078: throw

		IL_0079: ldarg.s charCount
		IL_007b: ldc.i4.0
		IL_007c: ble.s IL_0096

		IL_007e: ldarg.2
		IL_007f: ldarg.3
		IL_0080: ldelema System.Char
		IL_0085: stloc.2
		IL_0086: ldloc.2
		IL_0087: conv.u
		IL_0088: stloc.1
		IL_0089: ldarg.0
		IL_008a: ldarg.1
		IL_008b: ldloc.1
		IL_008c: ldarg.s charCount
		IL_008e: call instance void System.Text.StringBuilder::Insert(int32, char*, int32)
		IL_0093: ldc.i4.0
		IL_0094: conv.u
		IL_0095: stloc.2

		IL_0096: ldarg.0
		IL_0097: ret
	} // end of method StringBuilder::Insert

	.method public hidebysig 
		instance class System.Text.StringBuilder Insert (
			int32 index,
			int32 'value'
		) cil managed 
	{
		// Method begins at RVA 0xec160
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarga.s 'value'
		IL_0004: call instance string System.Int32::ToString()
		IL_0009: ldc.i4.1
		IL_000a: call instance class System.Text.StringBuilder System.Text.StringBuilder::Insert(int32, string, int32)
		IL_000f: ret
	} // end of method StringBuilder::Insert

	.method public hidebysig 
		instance class System.Text.StringBuilder Insert (
			int32 index,
			int64 'value'
		) cil managed 
	{
		// Method begins at RVA 0xec171
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarga.s 'value'
		IL_0004: call instance string System.Int64::ToString()
		IL_0009: ldc.i4.1
		IL_000a: call instance class System.Text.StringBuilder System.Text.StringBuilder::Insert(int32, string, int32)
		IL_000f: ret
	} // end of method StringBuilder::Insert

	.method public hidebysig 
		instance class System.Text.StringBuilder Insert (
			int32 index,
			float32 'value'
		) cil managed 
	{
		// Method begins at RVA 0xec182
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarga.s 'value'
		IL_0004: call instance string System.Single::ToString()
		IL_0009: ldc.i4.1
		IL_000a: call instance class System.Text.StringBuilder System.Text.StringBuilder::Insert(int32, string, int32)
		IL_000f: ret
	} // end of method StringBuilder::Insert

	.method public hidebysig 
		instance class System.Text.StringBuilder Insert (
			int32 index,
			float64 'value'
		) cil managed 
	{
		// Method begins at RVA 0xec193
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarga.s 'value'
		IL_0004: call instance string System.Double::ToString()
		IL_0009: ldc.i4.1
		IL_000a: call instance class System.Text.StringBuilder System.Text.StringBuilder::Insert(int32, string, int32)
		IL_000f: ret
	} // end of method StringBuilder::Insert

	.method public hidebysig 
		instance class System.Text.StringBuilder Insert (
			int32 index,
			valuetype System.Decimal 'value'
		) cil managed 
	{
		// Method begins at RVA 0xec1a4
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarga.s 'value'
		IL_0004: call instance string System.Decimal::ToString()
		IL_0009: ldc.i4.1
		IL_000a: call instance class System.Text.StringBuilder System.Text.StringBuilder::Insert(int32, string, int32)
		IL_000f: ret
	} // end of method StringBuilder::Insert

	.method public hidebysig 
		instance class System.Text.StringBuilder Insert (
			int32 index,
			uint16 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0xec1b5
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarga.s 'value'
		IL_0004: call instance string System.UInt16::ToString()
		IL_0009: ldc.i4.1
		IL_000a: call instance class System.Text.StringBuilder System.Text.StringBuilder::Insert(int32, string, int32)
		IL_000f: ret
	} // end of method StringBuilder::Insert

	.method public hidebysig 
		instance class System.Text.StringBuilder Insert (
			int32 index,
			uint32 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0xec1c6
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarga.s 'value'
		IL_0004: call instance string System.UInt32::ToString()
		IL_0009: ldc.i4.1
		IL_000a: call instance class System.Text.StringBuilder System.Text.StringBuilder::Insert(int32, string, int32)
		IL_000f: ret
	} // end of method StringBuilder::Insert

	.method public hidebysig 
		instance class System.Text.StringBuilder Insert (
			int32 index,
			uint64 'value'
		) cil managed 
	{
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0xec1d7
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarga.s 'value'
		IL_0004: call instance string System.UInt64::ToString()
		IL_0009: ldc.i4.1
		IL_000a: call instance class System.Text.StringBuilder System.Text.StringBuilder::Insert(int32, string, int32)
		IL_000f: ret
	} // end of method StringBuilder::Insert

	.method public hidebysig 
		instance class System.Text.StringBuilder Insert (
			int32 index,
			object 'value'
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0xec1e8
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarg.2
		IL_0001: brfalse.s IL_0012

		IL_0003: ldarg.0
		IL_0004: ldarg.1
		IL_0005: ldarg.2
		IL_0006: callvirt instance string System.Object::ToString()
		IL_000b: ldc.i4.1
		IL_000c: call instance class System.Text.StringBuilder System.Text.StringBuilder::Insert(int32, string, int32)
		IL_0011: ret

		IL_0012: ldarg.0
		IL_0013: ret
	} // end of method StringBuilder::Insert

	.method public hidebysig 
		instance class System.Text.StringBuilder Insert (
			int32 index,
			valuetype System.ReadOnlySpan`1<char> 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0xec200
		// Code size 65 (0x41)
		.maxstack 4
		.locals (
			[0] char*,
			[1] char& pinned
		)

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: call instance int32 System.Text.StringBuilder::get_Length()
		IL_0007: ble.un.s IL_0019

		IL_0009: ldstr "index"
		IL_000e: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0013: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0018: throw

		IL_0019: ldarga.s 'value'
		IL_001b: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0020: ldc.i4.0
		IL_0021: ble.s IL_003f

		IL_0023: ldarg.2
		IL_0024: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<char>(valuetype System.ReadOnlySpan`1<!!0>)
		IL_0029: stloc.1
		IL_002a: ldloc.1
		IL_002b: conv.u
		IL_002c: stloc.0
		IL_002d: ldarg.0
		IL_002e: ldarg.1
		IL_002f: ldloc.0
		IL_0030: ldarga.s 'value'
		IL_0032: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0037: call instance void System.Text.StringBuilder::Insert(int32, char*, int32)
		IL_003c: ldc.i4.0
		IL_003d: conv.u
		IL_003e: stloc.1

		IL_003f: ldarg.0
		IL_0040: ret
	} // end of method StringBuilder::Insert

	.method public hidebysig 
		instance class System.Text.StringBuilder AppendFormat (
			string format,
			object arg0
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0xec24d
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: ldarg.1
		IL_0003: ldarg.2
		IL_0004: newobj instance void System.ParamsArray::.ctor(object)
		IL_0009: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendFormatHelper(class System.IFormatProvider, string, valuetype System.ParamsArray)
		IL_000e: ret
	} // end of method StringBuilder::AppendFormat

	.method public hidebysig 
		instance class System.Text.StringBuilder AppendFormat (
			string format,
			object arg0,
			object arg1
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0xec25d
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: ldarg.1
		IL_0003: ldarg.2
		IL_0004: ldarg.3
		IL_0005: newobj instance void System.ParamsArray::.ctor(object, object)
		IL_000a: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendFormatHelper(class System.IFormatProvider, string, valuetype System.ParamsArray)
		IL_000f: ret
	} // end of method StringBuilder::AppendFormat

	.method public hidebysig 
		instance class System.Text.StringBuilder AppendFormat (
			string format,
			object arg0,
			object arg1,
			object arg2
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0xec26e
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: ldarg.1
		IL_0003: ldarg.2
		IL_0004: ldarg.3
		IL_0005: ldarg.s arg2
		IL_0007: newobj instance void System.ParamsArray::.ctor(object, object, object)
		IL_000c: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendFormatHelper(class System.IFormatProvider, string, valuetype System.ParamsArray)
		IL_0011: ret
	} // end of method StringBuilder::AppendFormat

	.method public hidebysig 
		instance class System.Text.StringBuilder AppendFormat (
			string format,
			object[] args
		) cil managed 
	{
		.param [2]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 01 02 00 00
			)
		// Method begins at RVA 0xec284
		// Code size 41 (0x29)
		.maxstack 4
		.locals (
			[0] string
		)

		IL_0000: ldarg.2
		IL_0001: brtrue.s IL_001a

		IL_0003: ldarg.1
		IL_0004: brfalse.s IL_000d

		IL_0006: ldstr "args"
		IL_000b: br.s IL_0012

		IL_000d: ldstr "format"

		IL_0012: stloc.0
		IL_0013: ldloc.0
		IL_0014: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0019: throw

		IL_001a: ldarg.0
		IL_001b: ldnull
		IL_001c: ldarg.1
		IL_001d: ldarg.2
		IL_001e: newobj instance void System.ParamsArray::.ctor(object[])
		IL_0023: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendFormatHelper(class System.IFormatProvider, string, valuetype System.ParamsArray)
		IL_0028: ret
	} // end of method StringBuilder::AppendFormat

	.method public hidebysig 
		instance class System.Text.StringBuilder AppendFormat (
			class System.IFormatProvider provider,
			string format,
			object arg0
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0xec2b9
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: newobj instance void System.ParamsArray::.ctor(object)
		IL_0009: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendFormatHelper(class System.IFormatProvider, string, valuetype System.ParamsArray)
		IL_000e: ret
	} // end of method StringBuilder::AppendFormat

	.method public hidebysig 
		instance class System.Text.StringBuilder AppendFormat (
			class System.IFormatProvider provider,
			string format,
			object arg0,
			object arg1
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0xec2c9
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: ldarg.s arg1
		IL_0006: newobj instance void System.ParamsArray::.ctor(object, object)
		IL_000b: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendFormatHelper(class System.IFormatProvider, string, valuetype System.ParamsArray)
		IL_0010: ret
	} // end of method StringBuilder::AppendFormat

	.method public hidebysig 
		instance class System.Text.StringBuilder AppendFormat (
			class System.IFormatProvider provider,
			string format,
			object arg0,
			object arg1,
			object arg2
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0xec2db
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: ldarg.s arg1
		IL_0006: ldarg.s arg2
		IL_0008: newobj instance void System.ParamsArray::.ctor(object, object, object)
		IL_000d: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendFormatHelper(class System.IFormatProvider, string, valuetype System.ParamsArray)
		IL_0012: ret
	} // end of method StringBuilder::AppendFormat

	.method public hidebysig 
		instance class System.Text.StringBuilder AppendFormat (
			class System.IFormatProvider provider,
			string format,
			object[] args
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [3]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 01 02 00 00
			)
		// Method begins at RVA 0xec2f0
		// Code size 41 (0x29)
		.maxstack 4
		.locals (
			[0] string
		)

		IL_0000: ldarg.3
		IL_0001: brtrue.s IL_001a

		IL_0003: ldarg.2
		IL_0004: brfalse.s IL_000d

		IL_0006: ldstr "args"
		IL_000b: br.s IL_0012

		IL_000d: ldstr "format"

		IL_0012: stloc.0
		IL_0013: ldloc.0
		IL_0014: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0019: throw

		IL_001a: ldarg.0
		IL_001b: ldarg.1
		IL_001c: ldarg.2
		IL_001d: ldarg.3
		IL_001e: newobj instance void System.ParamsArray::.ctor(object[])
		IL_0023: call instance class System.Text.StringBuilder System.Text.StringBuilder::AppendFormatHelper(class System.IFormatProvider, string, valuetype System.ParamsArray)
		IL_0028: ret
	} // end of method StringBuilder::AppendFormat

	.method private hidebysig static 
		void FormatError () cil managed 
	{
		// Method begins at RVA 0xec325
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_Format_InvalidString()
		IL_0005: newobj instance void System.FormatException::.ctor(string)
		IL_000a: throw
	} // end of method StringBuilder::FormatError

	.method assembly hidebysig 
		instance class System.Text.StringBuilder AppendFormatHelper (
			class System.IFormatProvider provider,
			string format,
			valuetype System.ParamsArray args
		) cil managed 
	{
		// Method begins at RVA 0xec334
		// Code size 846 (0x34e)
		.maxstack 5
		.locals (
			[0] int32,
			[1] int32,
			[2] char,
			[3] class System.ICustomFormatter,
			[4] int32,
			[5] bool,
			[6] int32,
			[7] object,
			[8] valuetype System.ReadOnlySpan`1<char>,
			[9] string,
			[10] string,
			[11] int32,
			[12] int32,
			[13] class System.ISpanFormattable,
			[14] int32,
			[15] class System.IFormattable,
			[16] int32
		)

		IL_0000: ldarg.2
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "format"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldc.i4.0
		IL_000f: stloc.0
		IL_0010: ldarg.2
		IL_0011: callvirt instance int32 System.String::get_Length()
		IL_0016: stloc.1
		IL_0017: ldc.i4.0
		IL_0018: stloc.2
		IL_0019: ldnull
		IL_001a: stloc.3
		IL_001b: ldarg.1
		IL_001c: brfalse.s IL_008b

		IL_001e: ldarg.1
		IL_001f: ldtoken System.ICustomFormatter
		IL_0024: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0029: callvirt instance object System.IFormatProvider::GetFormat(class System.Type)
		IL_002e: castclass System.ICustomFormatter
		IL_0033: stloc.3
		IL_0034: br.s IL_008b
		// loop start (head: IL_008b)
			IL_0036: ldarg.2
			IL_0037: ldloc.0
			IL_0038: callvirt instance char System.String::get_Chars(int32)
			IL_003d: stloc.2
			IL_003e: ldloc.0
			IL_003f: ldc.i4.1
			IL_0040: add
			IL_0041: stloc.0
			IL_0042: ldloc.2
			IL_0043: ldc.i4.s 125
			IL_0045: bne.un.s IL_0063

			IL_0047: ldloc.0
			IL_0048: ldloc.1
			IL_0049: bge.s IL_005c

			IL_004b: ldarg.2
			IL_004c: ldloc.0
			IL_004d: callvirt instance char System.String::get_Chars(int32)
			IL_0052: ldc.i4.s 125
			IL_0054: bne.un.s IL_005c

			IL_0056: ldloc.0
			IL_0057: ldc.i4.1
			IL_0058: add
			IL_0059: stloc.0
			IL_005a: br.s IL_0083

			IL_005c: call void System.Text.StringBuilder::FormatError()
			IL_0061: br.s IL_0083

			IL_0063: ldloc.2
			IL_0064: ldc.i4.s 123
			IL_0066: bne.un.s IL_0083

			IL_0068: ldloc.0
			IL_0069: ldloc.1
			IL_006a: bge.s IL_007d

			IL_006c: ldarg.2
			IL_006d: ldloc.0
			IL_006e: callvirt instance char System.String::get_Chars(int32)
			IL_0073: ldc.i4.s 123
			IL_0075: bne.un.s IL_007d

			IL_0077: ldloc.0
			IL_0078: ldc.i4.1
			IL_0079: add
			IL_007a: stloc.0
			IL_007b: br.s IL_0083

			IL_007d: ldloc.0
			IL_007e: ldc.i4.1
			IL_007f: sub
			IL_0080: stloc.0
			IL_0081: br.s IL_008f

			IL_0083: ldarg.0
			IL_0084: ldloc.2
			IL_0085: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(char)
			IL_008a: pop

			IL_008b: ldloc.0
			IL_008c: ldloc.1
			IL_008d: blt.s IL_0036
		// end loop

		IL_008f: ldloc.0
		IL_0090: ldloc.1
		IL_0091: beq IL_034c

		IL_0096: ldloc.0
		IL_0097: ldc.i4.1
		IL_0098: add
		IL_0099: stloc.0
		IL_009a: ldloc.0
		IL_009b: ldloc.1
		IL_009c: beq.s IL_00b0

		IL_009e: ldarg.2
		IL_009f: ldloc.0
		IL_00a0: callvirt instance char System.String::get_Chars(int32)
		IL_00a5: dup
		IL_00a6: stloc.2
		IL_00a7: ldc.i4.s 48
		IL_00a9: blt.s IL_00b0

		IL_00ab: ldloc.2
		IL_00ac: ldc.i4.s 57
		IL_00ae: ble.s IL_00b5

		IL_00b0: call void System.Text.StringBuilder::FormatError()

		IL_00b5: ldc.i4.0
		IL_00b6: stloc.s 4
		// loop start (head: IL_00b8)
			IL_00b8: ldloc.s 4
			IL_00ba: ldc.i4.s 10
			IL_00bc: mul
			IL_00bd: ldloc.2
			IL_00be: add
			IL_00bf: ldc.i4.s 48
			IL_00c1: sub
			IL_00c2: stloc.s 4
			IL_00c4: ldloc.0
			IL_00c5: ldc.i4.1
			IL_00c6: add
			IL_00c7: stloc.0
			IL_00c8: ldloc.0
			IL_00c9: ldloc.1
			IL_00ca: bne.un.s IL_00d1

			IL_00cc: call void System.Text.StringBuilder::FormatError()

			IL_00d1: ldarg.2
			IL_00d2: ldloc.0
			IL_00d3: callvirt instance char System.String::get_Chars(int32)
			IL_00d8: stloc.2
			IL_00d9: ldloc.2
			IL_00da: ldc.i4.s 48
			IL_00dc: blt.s IL_00ec

			IL_00de: ldloc.2
			IL_00df: ldc.i4.s 57
			IL_00e1: bgt.s IL_00ec

			IL_00e3: ldloc.s 4
			IL_00e5: ldc.i4 1000000
			IL_00ea: blt.s IL_00b8
		// end loop

		IL_00ec: ldloc.s 4
		IL_00ee: ldarga.s args
		IL_00f0: call instance int32 System.ParamsArray::get_Length()
		IL_00f5: blt.s IL_0106

		IL_00f7: call string System.SR::get_Format_IndexOutOfRange()
		IL_00fc: newobj instance void System.FormatException::.ctor(string)
		IL_0101: throw
		// loop start (head: IL_0106)
			IL_0102: ldloc.0
			IL_0103: ldc.i4.1
			IL_0104: add
			IL_0105: stloc.0

			IL_0106: ldloc.0
			IL_0107: ldloc.1
			IL_0108: bge.s IL_0117

			IL_010a: ldarg.2
			IL_010b: ldloc.0
			IL_010c: callvirt instance char System.String::get_Chars(int32)
			IL_0111: dup
			IL_0112: stloc.2
			IL_0113: ldc.i4.s 32
			IL_0115: beq.s IL_0102
		// end loop

		IL_0117: ldc.i4.0
		IL_0118: stloc.s 5
		IL_011a: ldc.i4.0
		IL_011b: stloc.s 6
		IL_011d: ldloc.2
		IL_011e: ldc.i4.s 44
		IL_0120: bne.un IL_01b5

		IL_0125: ldloc.0
		IL_0126: ldc.i4.1
		IL_0127: add
		IL_0128: stloc.0
		IL_0129: br.s IL_012f
		// loop start (head: IL_012f)
			IL_012b: ldloc.0
			IL_012c: ldc.i4.1
			IL_012d: add
			IL_012e: stloc.0

			IL_012f: ldloc.0
			IL_0130: ldloc.1
			IL_0131: bge.s IL_013e

			IL_0133: ldarg.2
			IL_0134: ldloc.0
			IL_0135: callvirt instance char System.String::get_Chars(int32)
			IL_013a: ldc.i4.s 32
			IL_013c: beq.s IL_012b
		// end loop

		IL_013e: ldloc.0
		IL_013f: ldloc.1
		IL_0140: bne.un.s IL_0147

		IL_0142: call void System.Text.StringBuilder::FormatError()

		IL_0147: ldarg.2
		IL_0148: ldloc.0
		IL_0149: callvirt instance char System.String::get_Chars(int32)
		IL_014e: stloc.2
		IL_014f: ldloc.2
		IL_0150: ldc.i4.s 45
		IL_0152: bne.un.s IL_016c

		IL_0154: ldc.i4.1
		IL_0155: stloc.s 5
		IL_0157: ldloc.0
		IL_0158: ldc.i4.1
		IL_0159: add
		IL_015a: stloc.0
		IL_015b: ldloc.0
		IL_015c: ldloc.1
		IL_015d: bne.un.s IL_0164

		IL_015f: call void System.Text.StringBuilder::FormatError()

		IL_0164: ldarg.2
		IL_0165: ldloc.0
		IL_0166: callvirt instance char System.String::get_Chars(int32)
		IL_016b: stloc.2

		IL_016c: ldloc.2
		IL_016d: ldc.i4.s 48
		IL_016f: blt.s IL_0176

		IL_0171: ldloc.2
		IL_0172: ldc.i4.s 57
		IL_0174: ble.s IL_017b

		IL_0176: call void System.Text.StringBuilder::FormatError()
		// loop start (head: IL_017b)
			IL_017b: ldloc.s 6
			IL_017d: ldc.i4.s 10
			IL_017f: mul
			IL_0180: ldloc.2
			IL_0181: add
			IL_0182: ldc.i4.s 48
			IL_0184: sub
			IL_0185: stloc.s 6
			IL_0187: ldloc.0
			IL_0188: ldc.i4.1
			IL_0189: add
			IL_018a: stloc.0
			IL_018b: ldloc.0
			IL_018c: ldloc.1
			IL_018d: bne.un.s IL_0194

			IL_018f: call void System.Text.StringBuilder::FormatError()

			IL_0194: ldarg.2
			IL_0195: ldloc.0
			IL_0196: callvirt instance char System.String::get_Chars(int32)
			IL_019b: stloc.2
			IL_019c: ldloc.2
			IL_019d: ldc.i4.s 48
			IL_019f: blt.s IL_01b5

			IL_01a1: ldloc.2
			IL_01a2: ldc.i4.s 57
			IL_01a4: bgt.s IL_01b5

			IL_01a6: ldloc.s 6
			IL_01a8: ldc.i4 1000000
			IL_01ad: blt.s IL_017b
		// end loop
		IL_01af: br.s IL_01b5
		// loop start (head: IL_01b5)
			IL_01b1: ldloc.0
			IL_01b2: ldc.i4.1
			IL_01b3: add
			IL_01b4: stloc.0

			IL_01b5: ldloc.0
			IL_01b6: ldloc.1
			IL_01b7: bge.s IL_01c6

			IL_01b9: ldarg.2
			IL_01ba: ldloc.0
			IL_01bb: callvirt instance char System.String::get_Chars(int32)
			IL_01c0: dup
			IL_01c1: stloc.2
			IL_01c2: ldc.i4.s 32
			IL_01c4: beq.s IL_01b1
		// end loop

		IL_01c6: ldarga.s args
		IL_01c8: ldloc.s 4
		IL_01ca: call instance object System.ParamsArray::get_Item(int32)
		IL_01cf: stloc.s 7
		IL_01d1: ldloca.s 8
		IL_01d3: initobj valuetype System.ReadOnlySpan`1<char>
		IL_01d9: ldloc.2
		IL_01da: ldc.i4.s 58
		IL_01dc: bne.un.s IL_0220

		IL_01de: ldloc.0
		IL_01df: ldc.i4.1
		IL_01e0: add
		IL_01e1: stloc.0
		IL_01e2: ldloc.0
		IL_01e3: stloc.s 12
		// loop start (head: IL_01e5)
			IL_01e5: ldloc.0
			IL_01e6: ldloc.1
			IL_01e7: bne.un.s IL_01ee

			IL_01e9: call void System.Text.StringBuilder::FormatError()

			IL_01ee: ldarg.2
			IL_01ef: ldloc.0
			IL_01f0: callvirt instance char System.String::get_Chars(int32)
			IL_01f5: stloc.2
			IL_01f6: ldloc.2
			IL_01f7: ldc.i4.s 125
			IL_01f9: beq.s IL_020b

			IL_01fb: ldloc.2
			IL_01fc: ldc.i4.s 123
			IL_01fe: bne.un.s IL_0205

			IL_0200: call void System.Text.StringBuilder::FormatError()

			IL_0205: ldloc.0
			IL_0206: ldc.i4.1
			IL_0207: add
			IL_0208: stloc.0
			IL_0209: br.s IL_01e5
		// end loop

		IL_020b: ldloc.0
		IL_020c: ldloc.s 12
		IL_020e: ble.s IL_022a

		IL_0210: ldarg.2
		IL_0211: ldloc.s 12
		IL_0213: ldloc.0
		IL_0214: ldloc.s 12
		IL_0216: sub
		IL_0217: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string, int32, int32)
		IL_021c: stloc.s 8
		IL_021e: br.s IL_022a

		IL_0220: ldloc.2
		IL_0221: ldc.i4.s 125
		IL_0223: beq.s IL_022a

		IL_0225: call void System.Text.StringBuilder::FormatError()

		IL_022a: ldloc.0
		IL_022b: ldc.i4.1
		IL_022c: add
		IL_022d: stloc.0
		IL_022e: ldnull
		IL_022f: stloc.s 9
		IL_0231: ldnull
		IL_0232: stloc.s 10
		IL_0234: ldloc.3
		IL_0235: brfalse.s IL_0256

		IL_0237: ldloca.s 8
		IL_0239: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_023e: brfalse.s IL_0249

		IL_0240: ldloc.s 8
		IL_0242: newobj instance void System.String::.ctor(valuetype System.ReadOnlySpan`1<char>)
		IL_0247: stloc.s 10

		IL_0249: ldloc.3
		IL_024a: ldloc.s 10
		IL_024c: ldloc.s 7
		IL_024e: ldarg.1
		IL_024f: callvirt instance string System.ICustomFormatter::Format(string, object, class System.IFormatProvider)
		IL_0254: stloc.s 9

		IL_0256: ldloc.s 9
		IL_0258: brtrue IL_02f9

		IL_025d: ldloc.s 7
		IL_025f: isinst System.ISpanFormattable
		IL_0264: stloc.s 13
		IL_0266: ldloc.s 13
		IL_0268: brfalse.s IL_02bb

		IL_026a: ldloc.s 5
		IL_026c: brtrue.s IL_0272

		IL_026e: ldloc.s 6
		IL_0270: brtrue.s IL_02bb

		IL_0272: ldloc.s 13
		IL_0274: ldarg.0
		IL_0275: call instance valuetype System.Span`1<char> System.Text.StringBuilder::get_RemainingCurrentChunk()
		IL_027a: ldloca.s 14
		IL_027c: ldloc.s 8
		IL_027e: ldarg.1
		IL_027f: callvirt instance bool System.ISpanFormattable::TryFormat(valuetype System.Span`1<char>, int32&, valuetype System.ReadOnlySpan`1<char>, class System.IFormatProvider)
		IL_0284: brfalse.s IL_02bb

		IL_0286: ldarg.0
		IL_0287: ldarg.0
		IL_0288: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_028d: ldloc.s 14
		IL_028f: add
		IL_0290: stfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0295: ldloc.s 6
		IL_0297: ldloc.s 14
		IL_0299: sub
		IL_029a: stloc.s 16
		IL_029c: ldloc.s 5
		IL_029e: brfalse IL_008b

		IL_02a3: ldloc.s 16
		IL_02a5: ldc.i4.0
		IL_02a6: ble IL_008b

		IL_02ab: ldarg.0
		IL_02ac: ldc.i4.s 32
		IL_02ae: ldloc.s 16
		IL_02b0: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(char, int32)
		IL_02b5: pop
		IL_02b6: br IL_008b

		IL_02bb: ldloc.s 7
		IL_02bd: isinst System.IFormattable
		IL_02c2: stloc.s 15
		IL_02c4: ldloc.s 15
		IL_02c6: brfalse.s IL_02ec

		IL_02c8: ldloca.s 8
		IL_02ca: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_02cf: brfalse.s IL_02de

		IL_02d1: ldloc.s 10
		IL_02d3: brtrue.s IL_02de

		IL_02d5: ldloc.s 8
		IL_02d7: newobj instance void System.String::.ctor(valuetype System.ReadOnlySpan`1<char>)
		IL_02dc: stloc.s 10

		IL_02de: ldloc.s 15
		IL_02e0: ldloc.s 10
		IL_02e2: ldarg.1
		IL_02e3: callvirt instance string System.IFormattable::ToString(string, class System.IFormatProvider)
		IL_02e8: stloc.s 9
		IL_02ea: br.s IL_02f9

		IL_02ec: ldloc.s 7
		IL_02ee: brfalse.s IL_02f9

		IL_02f0: ldloc.s 7
		IL_02f2: callvirt instance string System.Object::ToString()
		IL_02f7: stloc.s 9

		IL_02f9: ldloc.s 9
		IL_02fb: brtrue.s IL_0304

		IL_02fd: ldsfld string System.String::Empty
		IL_0302: stloc.s 9

		IL_0304: ldloc.s 6
		IL_0306: ldloc.s 9
		IL_0308: callvirt instance int32 System.String::get_Length()
		IL_030d: sub
		IL_030e: stloc.s 11
		IL_0310: ldloc.s 5
		IL_0312: brtrue.s IL_0324

		IL_0314: ldloc.s 11
		IL_0316: ldc.i4.0
		IL_0317: ble.s IL_0324

		IL_0319: ldarg.0
		IL_031a: ldc.i4.s 32
		IL_031c: ldloc.s 11
		IL_031e: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(char, int32)
		IL_0323: pop

		IL_0324: ldarg.0
		IL_0325: ldloc.s 9
		IL_0327: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(string)
		IL_032c: pop
		IL_032d: ldloc.s 5
		IL_032f: brfalse IL_008b

		IL_0334: ldloc.s 11
		IL_0336: ldc.i4.0
		IL_0337: ble IL_008b

		IL_033c: ldarg.0
		IL_033d: ldc.i4.s 32
		IL_033f: ldloc.s 11
		IL_0341: call instance class System.Text.StringBuilder System.Text.StringBuilder::Append(char, int32)
		IL_0346: pop
		IL_0347: br IL_008b

		IL_034c: ldarg.0
		IL_034d: ret
	} // end of method StringBuilder::AppendFormatHelper

	.method public hidebysig 
		instance class System.Text.StringBuilder Replace (
			string oldValue,
			string newValue
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0xec68e
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldc.i4.0
		IL_0004: ldarg.0
		IL_0005: call instance int32 System.Text.StringBuilder::get_Length()
		IL_000a: call instance class System.Text.StringBuilder System.Text.StringBuilder::Replace(string, string, int32, int32)
		IL_000f: ret
	} // end of method StringBuilder::Replace

	.method public hidebysig 
		instance bool Equals (
			class System.Text.StringBuilder sb
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0xec6a0
		// Code size 138 (0x8a)
		.maxstack 3
		.locals (
			[0] class System.Text.StringBuilder,
			[1] int32,
			[2] class System.Text.StringBuilder,
			[3] int32
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldarg.0
		IL_0006: call instance int32 System.Text.StringBuilder::get_Length()
		IL_000b: ldarg.1
		IL_000c: callvirt instance int32 System.Text.StringBuilder::get_Length()
		IL_0011: beq.s IL_0015

		IL_0013: ldc.i4.0
		IL_0014: ret

		IL_0015: ldarg.1
		IL_0016: ldarg.0
		IL_0017: bne.un.s IL_001b

		IL_0019: ldc.i4.1
		IL_001a: ret

		IL_001b: ldarg.0
		IL_001c: stloc.0
		IL_001d: ldloc.0
		IL_001e: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0023: stloc.1
		IL_0024: ldarg.1
		IL_0025: stloc.2
		IL_0026: ldloc.2
		IL_0027: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_002c: stloc.3
		// loop start (head: IL_002d)
			IL_002d: ldloc.1
			IL_002e: ldc.i4.1
			IL_002f: sub
			IL_0030: stloc.1
			IL_0031: ldloc.3
			IL_0032: ldc.i4.1
			IL_0033: sub
			IL_0034: stloc.3
			IL_0035: br.s IL_004a
			// loop start (head: IL_004a)
				IL_0037: ldloc.0
				IL_0038: ldfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
				IL_003d: stloc.0
				IL_003e: ldloc.0
				IL_003f: brfalse.s IL_0063

				IL_0041: ldloc.0
				IL_0042: ldfld int32 System.Text.StringBuilder::m_ChunkLength
				IL_0047: ldloc.1
				IL_0048: add
				IL_0049: stloc.1

				IL_004a: ldloc.1
				IL_004b: ldc.i4.0
				IL_004c: blt.s IL_0037
			// end loop

			IL_004e: br.s IL_0063
			// loop start (head: IL_0063)
				IL_0050: ldloc.2
				IL_0051: ldfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
				IL_0056: stloc.2
				IL_0057: ldloc.2
				IL_0058: brfalse.s IL_0067

				IL_005a: ldloc.2
				IL_005b: ldfld int32 System.Text.StringBuilder::m_ChunkLength
				IL_0060: ldloc.3
				IL_0061: add
				IL_0062: stloc.3

				IL_0063: ldloc.3
				IL_0064: ldc.i4.0
				IL_0065: blt.s IL_0050
			// end loop

			IL_0067: ldloc.1
			IL_0068: ldc.i4.0
			IL_0069: bge.s IL_0070

			IL_006b: ldloc.3
			IL_006c: ldc.i4.0
			IL_006d: clt
			IL_006f: ret

			IL_0070: ldloc.3
			IL_0071: ldc.i4.0
			IL_0072: bge.s IL_0076

			IL_0074: ldc.i4.0
			IL_0075: ret

			IL_0076: ldloc.0
			IL_0077: ldfld char[] System.Text.StringBuilder::m_ChunkChars
			IL_007c: ldloc.1
			IL_007d: ldelem.u2
			IL_007e: ldloc.2
			IL_007f: ldfld char[] System.Text.StringBuilder::m_ChunkChars
			IL_0084: ldloc.3
			IL_0085: ldelem.u2
			IL_0086: beq.s IL_002d
		// end loop
		IL_0088: ldc.i4.0
		IL_0089: ret
	} // end of method StringBuilder::Equals

	.method public hidebysig 
		instance bool Equals (
			valuetype System.ReadOnlySpan`1<char> span
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0xec738
		// Code size 86 (0x56)
		.maxstack 4
		.locals (
			[0] class System.Text.StringBuilder,
			[1] int32,
			[2] int32,
			[3] valuetype System.ReadOnlySpan`1<char>
		)

		IL_0000: ldarga.s span
		IL_0002: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0007: ldarg.0
		IL_0008: call instance int32 System.Text.StringBuilder::get_Length()
		IL_000d: beq.s IL_0011

		IL_000f: ldc.i4.0
		IL_0010: ret

		IL_0011: ldarg.0
		IL_0012: stloc.0
		IL_0013: ldc.i4.0
		IL_0014: stloc.1
		// loop start (head: IL_0015)
			IL_0015: ldloc.0
			IL_0016: ldfld int32 System.Text.StringBuilder::m_ChunkLength
			IL_001b: stloc.2
			IL_001c: ldloc.1
			IL_001d: ldloc.2
			IL_001e: add
			IL_001f: stloc.1
			IL_0020: ldloca.s 3
			IL_0022: ldloc.0
			IL_0023: ldfld char[] System.Text.StringBuilder::m_ChunkChars
			IL_0028: ldc.i4.0
			IL_0029: ldloc.2
			IL_002a: call instance void valuetype System.ReadOnlySpan`1<char>::.ctor(!0[], int32, int32)
			IL_002f: ldloc.3
			IL_0030: ldarga.s span
			IL_0032: ldarga.s span
			IL_0034: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
			IL_0039: ldloc.1
			IL_003a: sub
			IL_003b: ldloc.2
			IL_003c: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::Slice(int32, int32)
			IL_0041: call bool System.MemoryExtensions::EqualsOrdinal(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>)
			IL_0046: brtrue.s IL_004a

			IL_0048: ldc.i4.0
			IL_0049: ret

			IL_004a: ldloc.0
			IL_004b: ldfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
			IL_0050: stloc.0
			IL_0051: ldloc.0
			IL_0052: brtrue.s IL_0015
		// end loop
		IL_0054: ldc.i4.1
		IL_0055: ret
	} // end of method StringBuilder::Equals

	.method public hidebysig 
		instance class System.Text.StringBuilder Replace (
			string oldValue,
			string newValue,
			int32 startIndex,
			int32 count
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0xec79c
		// Code size 316 (0x13c)
		.maxstack 6
		.locals (
			[0] int32,
			[1] int32[],
			[2] int32,
			[3] class System.Text.StringBuilder,
			[4] int32,
			[5] int32
		)

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.Text.StringBuilder::get_Length()
		IL_0006: stloc.0
		IL_0007: ldarg.3
		IL_0008: ldloc.0
		IL_0009: ble.un.s IL_001b

		IL_000b: ldstr "startIndex"
		IL_0010: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0015: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_001a: throw

		IL_001b: ldarg.s count
		IL_001d: ldc.i4.0
		IL_001e: blt.s IL_0027

		IL_0020: ldarg.3
		IL_0021: ldloc.0
		IL_0022: ldarg.s count
		IL_0024: sub
		IL_0025: ble.s IL_0037

		IL_0027: ldstr "count"
		IL_002c: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0031: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0036: throw

		IL_0037: ldarg.1
		IL_0038: brtrue.s IL_0045

		IL_003a: ldstr "oldValue"
		IL_003f: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0044: throw

		IL_0045: ldarg.1
		IL_0046: callvirt instance int32 System.String::get_Length()
		IL_004b: brtrue.s IL_005d

		IL_004d: call string System.SR::get_Argument_EmptyName()
		IL_0052: ldstr "oldValue"
		IL_0057: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_005c: throw

		IL_005d: ldarg.2
		IL_005e: brtrue.s IL_0067

		IL_0060: ldsfld string System.String::Empty
		IL_0065: starg.s newValue

		IL_0067: ldnull
		IL_0068: stloc.1
		IL_0069: ldc.i4.0
		IL_006a: stloc.2
		IL_006b: ldarg.0
		IL_006c: ldarg.3
		IL_006d: call instance class System.Text.StringBuilder System.Text.StringBuilder::FindChunkForIndex(int32)
		IL_0072: stloc.3
		IL_0073: ldarg.3
		IL_0074: ldloc.3
		IL_0075: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_007a: sub
		IL_007b: stloc.s 4
		IL_007d: br IL_0132
		// loop start (head: IL_0132)
			IL_0082: ldarg.0
			IL_0083: ldloc.3
			IL_0084: ldloc.s 4
			IL_0086: ldarg.s count
			IL_0088: ldarg.1
			IL_0089: call instance bool System.Text.StringBuilder::StartsWith(class System.Text.StringBuilder, int32, int32, string)
			IL_008e: brfalse.s IL_00d3

			IL_0090: ldloc.1
			IL_0091: brtrue.s IL_009c

			IL_0093: ldc.i4.5
			IL_0094: newarr System.Int32
			IL_0099: stloc.1
			IL_009a: br.s IL_00b2

			IL_009c: ldloc.2
			IL_009d: ldloc.1
			IL_009e: ldlen
			IL_009f: conv.i4
			IL_00a0: blt.s IL_00b2

			IL_00a2: ldloca.s 1
			IL_00a4: ldloc.1
			IL_00a5: ldlen
			IL_00a6: conv.i4
			IL_00a7: ldc.i4.3
			IL_00a8: mul
			IL_00a9: ldc.i4.2
			IL_00aa: div
			IL_00ab: ldc.i4.4
			IL_00ac: add
			IL_00ad: call void System.Array::Resize<int32>(!!0[]&, int32)

			IL_00b2: ldloc.1
			IL_00b3: ldloc.2
			IL_00b4: dup
			IL_00b5: ldc.i4.1
			IL_00b6: add
			IL_00b7: stloc.2
			IL_00b8: ldloc.s 4
			IL_00ba: stelem.i4
			IL_00bb: ldloc.s 4
			IL_00bd: ldarg.1
			IL_00be: callvirt instance int32 System.String::get_Length()
			IL_00c3: add
			IL_00c4: stloc.s 4
			IL_00c6: ldarg.s count
			IL_00c8: ldarg.1
			IL_00c9: callvirt instance int32 System.String::get_Length()
			IL_00ce: sub
			IL_00cf: starg.s count
			IL_00d1: br.s IL_00df

			IL_00d3: ldloc.s 4
			IL_00d5: ldc.i4.1
			IL_00d6: add
			IL_00d7: stloc.s 4
			IL_00d9: ldarg.s count
			IL_00db: ldc.i4.1
			IL_00dc: sub
			IL_00dd: starg.s count

			IL_00df: ldloc.s 4
			IL_00e1: ldloc.3
			IL_00e2: ldfld int32 System.Text.StringBuilder::m_ChunkLength
			IL_00e7: bge.s IL_00ed

			IL_00e9: ldarg.s count
			IL_00eb: brtrue.s IL_0132

			IL_00ed: ldloc.s 4
			IL_00ef: ldloc.3
			IL_00f0: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
			IL_00f5: add
			IL_00f6: stloc.s 5
			IL_00f8: ldarg.0
			IL_00f9: ldloc.1
			IL_00fa: ldloc.2
			IL_00fb: ldloc.3
			IL_00fc: ldarg.1
			IL_00fd: callvirt instance int32 System.String::get_Length()
			IL_0102: ldarg.2
			IL_0103: call instance void System.Text.StringBuilder::ReplaceAllInChunk(int32[], int32, class System.Text.StringBuilder, int32, string)
			IL_0108: ldloc.s 5
			IL_010a: ldarg.2
			IL_010b: callvirt instance int32 System.String::get_Length()
			IL_0110: ldarg.1
			IL_0111: callvirt instance int32 System.String::get_Length()
			IL_0116: sub
			IL_0117: ldloc.2
			IL_0118: mul
			IL_0119: add
			IL_011a: stloc.s 5
			IL_011c: ldc.i4.0
			IL_011d: stloc.2
			IL_011e: ldarg.0
			IL_011f: ldloc.s 5
			IL_0121: call instance class System.Text.StringBuilder System.Text.StringBuilder::FindChunkForIndex(int32)
			IL_0126: stloc.3
			IL_0127: ldloc.s 5
			IL_0129: ldloc.3
			IL_012a: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
			IL_012f: sub
			IL_0130: stloc.s 4

			IL_0132: ldarg.s count
			IL_0134: ldc.i4.0
			IL_0135: bgt IL_0082
		// end loop

		IL_013a: ldarg.0
		IL_013b: ret
	} // end of method StringBuilder::Replace

	.method public hidebysig 
		instance class System.Text.StringBuilder Replace (
			char oldChar,
			char newChar
		) cil managed 
	{
		// Method begins at RVA 0xec8e4
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldc.i4.0
		IL_0004: ldarg.0
		IL_0005: call instance int32 System.Text.StringBuilder::get_Length()
		IL_000a: call instance class System.Text.StringBuilder System.Text.StringBuilder::Replace(char, char, int32, int32)
		IL_000f: ret
	} // end of method StringBuilder::Replace

	.method public hidebysig 
		instance class System.Text.StringBuilder Replace (
			char oldChar,
			char newChar,
			int32 startIndex,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0xec8f8
		// Code size 161 (0xa1)
		.maxstack 3
		.locals (
			[0] int32,
			[1] int32,
			[2] class System.Text.StringBuilder,
			[3] int32,
			[4] int32,
			[5] int32,
			[6] int32
		)

		IL_0000: ldarg.0
		IL_0001: call instance int32 System.Text.StringBuilder::get_Length()
		IL_0006: stloc.0
		IL_0007: ldarg.3
		IL_0008: ldloc.0
		IL_0009: ble.un.s IL_001b

		IL_000b: ldstr "startIndex"
		IL_0010: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0015: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_001a: throw

		IL_001b: ldarg.s count
		IL_001d: ldc.i4.0
		IL_001e: blt.s IL_0027

		IL_0020: ldarg.3
		IL_0021: ldloc.0
		IL_0022: ldarg.s count
		IL_0024: sub
		IL_0025: ble.s IL_0037

		IL_0027: ldstr "count"
		IL_002c: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0031: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0036: throw

		IL_0037: ldarg.3
		IL_0038: ldarg.s count
		IL_003a: add
		IL_003b: stloc.1
		IL_003c: ldarg.0
		IL_003d: stloc.2
		// loop start (head: IL_003e)
			IL_003e: ldloc.1
			IL_003f: ldloc.2
			IL_0040: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
			IL_0045: sub
			IL_0046: stloc.3
			IL_0047: ldarg.3
			IL_0048: ldloc.2
			IL_0049: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
			IL_004e: sub
			IL_004f: stloc.s 4
			IL_0051: ldloc.3
			IL_0052: ldc.i4.0
			IL_0053: blt.s IL_0091

			IL_0055: ldloc.s 4
			IL_0057: ldc.i4.0
			IL_0058: call int32 System.Math::Max(int32, int32)
			IL_005d: stloc.s 5
			IL_005f: ldloc.2
			IL_0060: ldfld int32 System.Text.StringBuilder::m_ChunkLength
			IL_0065: ldloc.3
			IL_0066: call int32 System.Math::Min(int32, int32)
			IL_006b: stloc.s 6
			IL_006d: br.s IL_008b
			// loop start (head: IL_008b)
				IL_006f: ldloc.2
				IL_0070: ldfld char[] System.Text.StringBuilder::m_ChunkChars
				IL_0075: ldloc.s 5
				IL_0077: ldelem.u2
				IL_0078: ldarg.1
				IL_0079: bne.un.s IL_0085

				IL_007b: ldloc.2
				IL_007c: ldfld char[] System.Text.StringBuilder::m_ChunkChars
				IL_0081: ldloc.s 5
				IL_0083: ldarg.2
				IL_0084: stelem.i2

				IL_0085: ldloc.s 5
				IL_0087: ldc.i4.1
				IL_0088: add
				IL_0089: stloc.s 5

				IL_008b: ldloc.s 5
				IL_008d: ldloc.s 6
				IL_008f: blt.s IL_006f
			// end loop

			IL_0091: ldloc.s 4
			IL_0093: ldc.i4.0
			IL_0094: bge.s IL_009f

			IL_0096: ldloc.2
			IL_0097: ldfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
			IL_009c: stloc.2
			IL_009d: br.s IL_003e
		// end loop

		IL_009f: ldarg.0
		IL_00a0: ret
	} // end of method StringBuilder::Replace

	.method public hidebysig 
		instance class System.Text.StringBuilder Append (
			char* 'value',
			int32 valueCount
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.custom instance void System.CLSCompliantAttribute::.ctor(bool) = (
			01 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0xec9a8
		// Code size 198 (0xc6)
		.maxstack 4
		.locals (
			[0] int32,
			[1] int32,
			[2] int32,
			[3] int32
		)

		IL_0000: ldarg.2
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0014

		IL_0004: ldstr "valueCount"
		IL_0009: call string System.SR::get_ArgumentOutOfRange_NegativeCount()
		IL_000e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0013: throw

		IL_0014: ldarg.0
		IL_0015: call instance int32 System.Text.StringBuilder::get_Length()
		IL_001a: ldarg.2
		IL_001b: add
		IL_001c: stloc.0
		IL_001d: ldloc.0
		IL_001e: ldarg.0
		IL_001f: ldfld int32 System.Text.StringBuilder::m_MaxCapacity
		IL_0024: bgt.s IL_002a

		IL_0026: ldloc.0
		IL_0027: ldarg.2
		IL_0028: bge.s IL_003a

		IL_002a: ldstr "valueCount"
		IL_002f: call string System.SR::get_ArgumentOutOfRange_LengthGreaterThanCapacity()
		IL_0034: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0039: throw

		IL_003a: ldarg.2
		IL_003b: ldarg.0
		IL_003c: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0041: add
		IL_0042: stloc.1
		IL_0043: ldloc.1
		IL_0044: ldarg.0
		IL_0045: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_004a: ldlen
		IL_004b: conv.i4
		IL_004c: bgt.s IL_006a

		IL_004e: ldarg.1
		IL_004f: ldarg.0
		IL_0050: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_0055: ldarg.0
		IL_0056: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_005b: ldarg.2
		IL_005c: call void System.Text.StringBuilder::ThreadSafeCopy(char*, char[], int32, int32)
		IL_0061: ldarg.0
		IL_0062: ldloc.1
		IL_0063: stfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0068: br.s IL_00c4

		IL_006a: ldarg.0
		IL_006b: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_0070: ldlen
		IL_0071: conv.i4
		IL_0072: ldarg.0
		IL_0073: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0078: sub
		IL_0079: stloc.2
		IL_007a: ldloc.2
		IL_007b: ldc.i4.0
		IL_007c: ble.s IL_009f

		IL_007e: ldarg.1
		IL_007f: ldarg.0
		IL_0080: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_0085: ldarg.0
		IL_0086: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_008b: ldloc.2
		IL_008c: call void System.Text.StringBuilder::ThreadSafeCopy(char*, char[], int32, int32)
		IL_0091: ldarg.0
		IL_0092: ldarg.0
		IL_0093: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_0098: ldlen
		IL_0099: conv.i4
		IL_009a: stfld int32 System.Text.StringBuilder::m_ChunkLength

		IL_009f: ldarg.2
		IL_00a0: ldloc.2
		IL_00a1: sub
		IL_00a2: stloc.3
		IL_00a3: ldarg.0
		IL_00a4: ldloc.3
		IL_00a5: call instance void System.Text.StringBuilder::ExpandByABlock(int32)
		IL_00aa: ldarg.1
		IL_00ab: ldloc.2
		IL_00ac: conv.i
		IL_00ad: ldc.i4.2
		IL_00ae: mul
		IL_00af: add
		IL_00b0: ldarg.0
		IL_00b1: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_00b6: ldc.i4.0
		IL_00b7: ldloc.3
		IL_00b8: call void System.Text.StringBuilder::ThreadSafeCopy(char*, char[], int32, int32)
		IL_00bd: ldarg.0
		IL_00be: ldloc.3
		IL_00bf: stfld int32 System.Text.StringBuilder::m_ChunkLength

		IL_00c4: ldarg.0
		IL_00c5: ret
	} // end of method StringBuilder::Append

	.method private hidebysig 
		instance void Insert (
			int32 index,
			char* 'value',
			int32 valueCount
		) cil managed 
	{
		// Method begins at RVA 0xeca7c
		// Code size 55 (0x37)
		.maxstack 6
		.locals (
			[0] class System.Text.StringBuilder,
			[1] int32
		)

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: call instance int32 System.Text.StringBuilder::get_Length()
		IL_0007: ble.un.s IL_0019

		IL_0009: ldstr "index"
		IL_000e: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0013: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0018: throw

		IL_0019: ldarg.3
		IL_001a: ldc.i4.0
		IL_001b: ble.s IL_0036

		IL_001d: ldarg.0
		IL_001e: ldarg.1
		IL_001f: ldarg.3
		IL_0020: ldloca.s 0
		IL_0022: ldloca.s 1
		IL_0024: ldc.i4.0
		IL_0025: call instance void System.Text.StringBuilder::MakeRoom(int32, int32, class System.Text.StringBuilder&, int32&, bool)
		IL_002a: ldarg.0
		IL_002b: ldloca.s 0
		IL_002d: ldloca.s 1
		IL_002f: ldarg.2
		IL_0030: ldarg.3
		IL_0031: call instance void System.Text.StringBuilder::ReplaceInPlaceAtChunk(class System.Text.StringBuilder&, int32&, char*, int32)

		IL_0036: ret
	} // end of method StringBuilder::Insert

	.method private hidebysig 
		instance void ReplaceAllInChunk (
			int32[] replacements,
			int32 replacementsCount,
			class System.Text.StringBuilder sourceChunk,
			int32 removeCount,
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0xecac0
		// Code size 222 (0xde)
		.maxstack 6
		.locals (
			[0] char*,
			[1] char& pinned,
			[2] int64,
			[3] int32,
			[4] class System.Text.StringBuilder,
			[5] int32,
			[6] int32,
			[7] int32,
			[8] int32,
			[9] char*,
			[10] char& pinned
		)

		IL_0000: ldarg.2
		IL_0001: ldc.i4.0
		IL_0002: bgt.s IL_0005

		IL_0004: ret

		IL_0005: ldarg.s 'value'
		IL_0007: brtrue.s IL_000d

		IL_0009: ldc.i4.0
		IL_000a: conv.u
		IL_000b: br.s IL_0017

		IL_000d: ldarg.s 'value'
		IL_000f: call instance char& modreq(System.Runtime.InteropServices.InAttribute) System.String::GetPinnableReference()
		IL_0014: stloc.1
		IL_0015: ldloc.1
		IL_0016: conv.u

		IL_0017: stloc.0
		IL_0018: ldarg.s 'value'
		IL_001a: callvirt instance int32 System.String::get_Length()
		IL_001f: ldarg.s removeCount
		IL_0021: sub
		IL_0022: conv.i8
		IL_0023: ldarg.2
		IL_0024: conv.i8
		IL_0025: mul
		IL_0026: stloc.2
		IL_0027: ldloc.2
		IL_0028: conv.i4
		IL_0029: stloc.3
		IL_002a: ldloc.3
		IL_002b: conv.i8
		IL_002c: ldloc.2
		IL_002d: beq.s IL_0035

		IL_002f: newobj instance void System.OutOfMemoryException::.ctor()
		IL_0034: throw

		IL_0035: ldarg.3
		IL_0036: stloc.s 4
		IL_0038: ldarg.1
		IL_0039: ldc.i4.0
		IL_003a: ldelem.i4
		IL_003b: stloc.s 5
		IL_003d: ldloc.3
		IL_003e: ldc.i4.0
		IL_003f: ble.s IL_0057

		IL_0041: ldarg.0
		IL_0042: ldloc.s 4
		IL_0044: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_0049: ldloc.s 5
		IL_004b: add
		IL_004c: ldloc.3
		IL_004d: ldloca.s 4
		IL_004f: ldloca.s 5
		IL_0051: ldc.i4.1
		IL_0052: call instance void System.Text.StringBuilder::MakeRoom(int32, int32, class System.Text.StringBuilder&, int32&, bool)

		IL_0057: ldc.i4.0
		IL_0058: stloc.s 6
		// loop start (head: IL_005a)
			IL_005a: ldarg.0
			IL_005b: ldloca.s 4
			IL_005d: ldloca.s 5
			IL_005f: ldloc.0
			IL_0060: ldarg.s 'value'
			IL_0062: callvirt instance int32 System.String::get_Length()
			IL_0067: call instance void System.Text.StringBuilder::ReplaceInPlaceAtChunk(class System.Text.StringBuilder&, int32&, char*, int32)
			IL_006c: ldarg.1
			IL_006d: ldloc.s 6
			IL_006f: ldelem.i4
			IL_0070: ldarg.s removeCount
			IL_0072: add
			IL_0073: stloc.s 7
			IL_0075: ldloc.s 6
			IL_0077: ldc.i4.1
			IL_0078: add
			IL_0079: stloc.s 6
			IL_007b: ldloc.s 6
			IL_007d: ldarg.2
			IL_007e: bge.s IL_00c0

			IL_0080: ldarg.1
			IL_0081: ldloc.s 6
			IL_0083: ldelem.i4
			IL_0084: stloc.s 8
			IL_0086: ldloc.3
			IL_0087: brfalse.s IL_00b4

			IL_0089: ldarg.3
			IL_008a: ldfld char[] System.Text.StringBuilder::m_ChunkChars
			IL_008f: ldloc.s 7
			IL_0091: ldelema System.Char
			IL_0096: stloc.s 10
			IL_0098: ldloc.s 10
			IL_009a: conv.u
			IL_009b: stloc.s 9
			IL_009d: ldarg.0
			IL_009e: ldloca.s 4
			IL_00a0: ldloca.s 5
			IL_00a2: ldloc.s 9
			IL_00a4: ldloc.s 8
			IL_00a6: ldloc.s 7
			IL_00a8: sub
			IL_00a9: call instance void System.Text.StringBuilder::ReplaceInPlaceAtChunk(class System.Text.StringBuilder&, int32&, char*, int32)
			IL_00ae: ldc.i4.0
			IL_00af: conv.u
			IL_00b0: stloc.s 10
			IL_00b2: br.s IL_005a

			IL_00b4: ldloc.s 5
			IL_00b6: ldloc.s 8
			IL_00b8: ldloc.s 7
			IL_00ba: sub
			IL_00bb: add
			IL_00bc: stloc.s 5
			IL_00be: br.s IL_005a
		// end loop

		IL_00c0: ldloc.3
		IL_00c1: ldc.i4.0
		IL_00c2: bge.s IL_00da

		IL_00c4: ldarg.0
		IL_00c5: ldloc.s 4
		IL_00c7: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_00cc: ldloc.s 5
		IL_00ce: add
		IL_00cf: ldloc.3
		IL_00d0: neg
		IL_00d1: ldloca.s 4
		IL_00d3: ldloca.s 5
		IL_00d5: call instance void System.Text.StringBuilder::Remove(int32, int32, class System.Text.StringBuilder&, int32&)

		IL_00da: ldc.i4.0
		IL_00db: conv.u
		IL_00dc: stloc.1
		IL_00dd: ret
	} // end of method StringBuilder::ReplaceAllInChunk

	.method private hidebysig 
		instance bool StartsWith (
			class System.Text.StringBuilder chunk,
			int32 indexInChunk,
			int32 count,
			string 'value'
		) cil managed 
	{
		// Method begins at RVA 0xecbac
		// Code size 81 (0x51)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldc.i4.0
		IL_0001: stloc.0
		IL_0002: br.s IL_0045
		// loop start (head: IL_0045)
			IL_0004: ldarg.3
			IL_0005: brtrue.s IL_0009

			IL_0007: ldc.i4.0
			IL_0008: ret

			IL_0009: ldarg.2
			IL_000a: ldarg.1
			IL_000b: ldfld int32 System.Text.StringBuilder::m_ChunkLength
			IL_0010: blt.s IL_0023

			IL_0012: ldarg.0
			IL_0013: ldarg.1
			IL_0014: call instance class System.Text.StringBuilder System.Text.StringBuilder::Next(class System.Text.StringBuilder)
			IL_0019: starg.s chunk
			IL_001b: ldarg.1
			IL_001c: brtrue.s IL_0020

			IL_001e: ldc.i4.0
			IL_001f: ret

			IL_0020: ldc.i4.0
			IL_0021: starg.s indexInChunk

			IL_0023: ldarg.s 'value'
			IL_0025: ldloc.0
			IL_0026: callvirt instance char System.String::get_Chars(int32)
			IL_002b: ldarg.1
			IL_002c: ldfld char[] System.Text.StringBuilder::m_ChunkChars
			IL_0031: ldarg.2
			IL_0032: ldelem.u2
			IL_0033: beq.s IL_0037

			IL_0035: ldc.i4.0
			IL_0036: ret

			IL_0037: ldarg.2
			IL_0038: ldc.i4.1
			IL_0039: add
			IL_003a: starg.s indexInChunk
			IL_003c: ldarg.3
			IL_003d: ldc.i4.1
			IL_003e: sub
			IL_003f: starg.s count
			IL_0041: ldloc.0
			IL_0042: ldc.i4.1
			IL_0043: add
			IL_0044: stloc.0

			IL_0045: ldloc.0
			IL_0046: ldarg.s 'value'
			IL_0048: callvirt instance int32 System.String::get_Length()
			IL_004d: blt.s IL_0004
		// end loop

		IL_004f: ldc.i4.1
		IL_0050: ret
	} // end of method StringBuilder::StartsWith

	.method private hidebysig 
		instance void ReplaceInPlaceAtChunk (
			class System.Text.StringBuilder& chunk,
			int32& indexInChunk,
			char* 'value',
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0xecc0c
		// Code size 91 (0x5b)
		.maxstack 4
		.locals (
			[0] int32,
			[1] int32
		)

		IL_0000: ldarg.s count
		IL_0002: brfalse.s IL_005a
		// loop start (head: IL_0004)
			IL_0004: ldarg.1
			IL_0005: ldind.ref
			IL_0006: ldfld int32 System.Text.StringBuilder::m_ChunkLength
			IL_000b: ldarg.2
			IL_000c: ldind.i4
			IL_000d: sub
			IL_000e: stloc.0
			IL_000f: ldloc.0
			IL_0010: ldarg.s count
			IL_0012: call int32 System.Math::Min(int32, int32)
			IL_0017: stloc.1
			IL_0018: ldarg.3
			IL_0019: ldarg.1
			IL_001a: ldind.ref
			IL_001b: ldfld char[] System.Text.StringBuilder::m_ChunkChars
			IL_0020: ldarg.2
			IL_0021: ldind.i4
			IL_0022: ldloc.1
			IL_0023: call void System.Text.StringBuilder::ThreadSafeCopy(char*, char[], int32, int32)
			IL_0028: ldarg.2
			IL_0029: ldarg.2
			IL_002a: ldind.i4
			IL_002b: ldloc.1
			IL_002c: add
			IL_002d: stind.i4
			IL_002e: ldarg.2
			IL_002f: ldind.i4
			IL_0030: ldarg.1
			IL_0031: ldind.ref
			IL_0032: ldfld int32 System.Text.StringBuilder::m_ChunkLength
			IL_0037: blt.s IL_0046

			IL_0039: ldarg.1
			IL_003a: ldarg.0
			IL_003b: ldarg.1
			IL_003c: ldind.ref
			IL_003d: call instance class System.Text.StringBuilder System.Text.StringBuilder::Next(class System.Text.StringBuilder)
			IL_0042: stind.ref
			IL_0043: ldarg.2
			IL_0044: ldc.i4.0
			IL_0045: stind.i4

			IL_0046: ldarg.s count
			IL_0048: ldloc.1
			IL_0049: sub
			IL_004a: starg.s count
			IL_004c: ldarg.s count
			IL_004e: brfalse.s IL_005a

			IL_0050: ldarg.3
			IL_0051: ldloc.1
			IL_0052: conv.i
			IL_0053: ldc.i4.2
			IL_0054: mul
			IL_0055: add
			IL_0056: starg.s 'value'
			IL_0058: br.s IL_0004
		// end loop

		IL_005a: ret
	} // end of method StringBuilder::ReplaceInPlaceAtChunk

	.method private hidebysig static 
		void ThreadSafeCopy (
			char* sourcePtr,
			char[] destination,
			int32 destinationIndex,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0xecc74
		// Code size 58 (0x3a)
		.maxstack 3
		.locals (
			[0] char*,
			[1] char& pinned
		)

		IL_0000: ldarg.3
		IL_0001: ldc.i4.0
		IL_0002: ble.s IL_0039

		IL_0004: ldarg.2
		IL_0005: ldarg.1
		IL_0006: ldlen
		IL_0007: conv.i4
		IL_0008: bgt.un.s IL_0029

		IL_000a: ldarg.2
		IL_000b: ldarg.3
		IL_000c: add
		IL_000d: ldarg.1
		IL_000e: ldlen
		IL_000f: conv.i4
		IL_0010: bgt.s IL_0029

		IL_0012: ldarg.1
		IL_0013: ldarg.2
		IL_0014: ldelema System.Char
		IL_0019: stloc.1
		IL_001a: ldloc.1
		IL_001b: conv.u
		IL_001c: stloc.0
		IL_001d: ldloc.0
		IL_001e: ldarg.0
		IL_001f: ldarg.3
		IL_0020: call void System.String::wstrcpy(char*, char*, int32)
		IL_0025: ldc.i4.0
		IL_0026: conv.u
		IL_0027: stloc.1
		IL_0028: ret

		IL_0029: ldstr "destinationIndex"
		IL_002e: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0033: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0038: throw

		IL_0039: ret
	} // end of method StringBuilder::ThreadSafeCopy

	.method private hidebysig static 
		void ThreadSafeCopy (
			char[] source,
			int32 sourceIndex,
			valuetype System.Span`1<char> destination,
			int32 destinationIndex,
			int32 count
		) cil managed 
	{
		// Method begins at RVA 0xeccbc
		// Code size 117 (0x75)
		.maxstack 3
		.locals (
			[0] char*,
			[1] char& pinned,
			[2] char*,
			[3] char& pinned
		)

		IL_0000: ldarg.s count
		IL_0002: ldc.i4.0
		IL_0003: ble.s IL_0074

		IL_0005: ldarg.1
		IL_0006: ldarg.0
		IL_0007: ldlen
		IL_0008: conv.i4
		IL_0009: bgt.un.s IL_0014

		IL_000b: ldarg.s count
		IL_000d: ldarg.0
		IL_000e: ldlen
		IL_000f: conv.i4
		IL_0010: ldarg.1
		IL_0011: sub
		IL_0012: ble.s IL_0024

		IL_0014: ldstr "sourceIndex"
		IL_0019: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_001e: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_0023: throw

		IL_0024: ldarg.3
		IL_0025: ldarga.s destination
		IL_0027: call instance int32 valuetype System.Span`1<char>::get_Length()
		IL_002c: bgt.un.s IL_003b

		IL_002e: ldarg.s count
		IL_0030: ldarga.s destination
		IL_0032: call instance int32 valuetype System.Span`1<char>::get_Length()
		IL_0037: ldarg.3
		IL_0038: sub
		IL_0039: ble.s IL_004b

		IL_003b: ldstr "destinationIndex"
		IL_0040: call string System.SR::get_ArgumentOutOfRange_Index()
		IL_0045: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_004a: throw

		IL_004b: ldarg.0
		IL_004c: ldarg.1
		IL_004d: ldelema System.Char
		IL_0052: stloc.1
		IL_0053: ldloc.1
		IL_0054: conv.u
		IL_0055: stloc.0
		IL_0056: ldarg.2
		IL_0057: call !!0& System.Runtime.InteropServices.MemoryMarshal::GetReference<char>(valuetype System.Span`1<!!0>)
		IL_005c: stloc.3
		IL_005d: ldloc.3
		IL_005e: conv.u
		IL_005f: stloc.2
		IL_0060: ldloc.2
		IL_0061: ldarg.3
		IL_0062: conv.i
		IL_0063: ldc.i4.2
		IL_0064: mul
		IL_0065: add
		IL_0066: ldloc.0
		IL_0067: ldarg.s count
		IL_0069: call void System.String::wstrcpy(char*, char*, int32)
		IL_006e: ldc.i4.0
		IL_006f: conv.u
		IL_0070: stloc.3
		IL_0071: ldc.i4.0
		IL_0072: conv.u
		IL_0073: stloc.1

		IL_0074: ret
	} // end of method StringBuilder::ThreadSafeCopy

	.method private hidebysig 
		instance class System.Text.StringBuilder FindChunkForIndex (
			int32 index
		) cil managed 
	{
		// Method begins at RVA 0xecd40
		// Code size 22 (0x16)
		.maxstack 2
		.locals (
			[0] class System.Text.StringBuilder
		)

		IL_0000: ldarg.0
		IL_0001: stloc.0
		IL_0002: br.s IL_000b
		// loop start (head: IL_000b)
			IL_0004: ldloc.0
			IL_0005: ldfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
			IL_000a: stloc.0

			IL_000b: ldloc.0
			IL_000c: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
			IL_0011: ldarg.1
			IL_0012: bgt.s IL_0004
		// end loop

		IL_0014: ldloc.0
		IL_0015: ret
	} // end of method StringBuilder::FindChunkForIndex

	.method private hidebysig specialname 
		instance valuetype System.Span`1<char> get_RemainingCurrentChunk () cil managed aggressiveinlining 
	{
		// Method begins at RVA 0xecd62
		// Code size 33 (0x21)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_0006: ldarg.0
		IL_0007: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_000c: ldarg.0
		IL_000d: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_0012: ldlen
		IL_0013: conv.i4
		IL_0014: ldarg.0
		IL_0015: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_001a: sub
		IL_001b: newobj instance void valuetype System.Span`1<char>::.ctor(!0[], int32, int32)
		IL_0020: ret
	} // end of method StringBuilder::get_RemainingCurrentChunk

	.method private hidebysig 
		instance class System.Text.StringBuilder Next (
			class System.Text.StringBuilder chunk
		) cil managed 
	{
		// Method begins at RVA 0xecd84
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: beq.s IL_0018

		IL_0004: ldarg.0
		IL_0005: ldarg.1
		IL_0006: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_000b: ldarg.1
		IL_000c: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0011: add
		IL_0012: call instance class System.Text.StringBuilder System.Text.StringBuilder::FindChunkForIndex(int32)
		IL_0017: ret

		IL_0018: ldnull
		IL_0019: ret
	} // end of method StringBuilder::Next

	.method private hidebysig 
		instance void ExpandByABlock (
			int32 minBlockCharCount
		) cil managed 
	{
		// Method begins at RVA 0xecda0
		// Code size 144 (0x90)
		.maxstack 3
		.locals (
			[0] int32,
			[1] char[]
		)

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: call instance int32 System.Text.StringBuilder::get_Length()
		IL_0007: add
		IL_0008: ldarg.0
		IL_0009: ldfld int32 System.Text.StringBuilder::m_MaxCapacity
		IL_000e: bgt.s IL_001b

		IL_0010: ldarg.1
		IL_0011: ldarg.0
		IL_0012: call instance int32 System.Text.StringBuilder::get_Length()
		IL_0017: add
		IL_0018: ldarg.1
		IL_0019: bge.s IL_002b

		IL_001b: ldstr "requiredLength"
		IL_0020: call string System.SR::get_ArgumentOutOfRange_SmallCapacity()
		IL_0025: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_002a: throw

		IL_002b: ldarg.1
		IL_002c: ldarg.0
		IL_002d: call instance int32 System.Text.StringBuilder::get_Length()
		IL_0032: ldc.i4 8000
		IL_0037: call int32 System.Math::Min(int32, int32)
		IL_003c: call int32 System.Math::Max(int32, int32)
		IL_0041: stloc.0
		IL_0042: ldarg.0
		IL_0043: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_0048: ldarg.0
		IL_0049: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_004e: add
		IL_004f: ldloc.0
		IL_0050: add
		IL_0051: ldloc.0
		IL_0052: bge.s IL_005a

		IL_0054: newobj instance void System.OutOfMemoryException::.ctor()
		IL_0059: throw

		IL_005a: ldloc.0
		IL_005b: ldc.i4.0
		IL_005c: call !!0[] System.GC::AllocateUninitializedArray<char>(int32, bool)
		IL_0061: stloc.1
		IL_0062: ldarg.0
		IL_0063: ldarg.0
		IL_0064: newobj instance void System.Text.StringBuilder::.ctor(class System.Text.StringBuilder)
		IL_0069: stfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
		IL_006e: ldarg.0
		IL_006f: ldarg.0
		IL_0070: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_0075: ldarg.0
		IL_0076: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_007b: add
		IL_007c: stfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_0081: ldarg.0
		IL_0082: ldc.i4.0
		IL_0083: stfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0088: ldarg.0
		IL_0089: ldloc.1
		IL_008a: stfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_008f: ret
	} // end of method StringBuilder::ExpandByABlock

	.method private hidebysig specialname rtspecialname 
		instance void .ctor (
			class System.Text.StringBuilder from
		) cil managed 
	{
		// Method begins at RVA 0xece3c
		// Code size 67 (0x43)
		.maxstack 2

		IL_0000: ldarg.0
		IL_0001: call instance void System.Object::.ctor()
		IL_0006: ldarg.0
		IL_0007: ldarg.1
		IL_0008: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_000d: stfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0012: ldarg.0
		IL_0013: ldarg.1
		IL_0014: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_0019: stfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_001e: ldarg.0
		IL_001f: ldarg.1
		IL_0020: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_0025: stfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_002a: ldarg.0
		IL_002b: ldarg.1
		IL_002c: ldfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
		IL_0031: stfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
		IL_0036: ldarg.0
		IL_0037: ldarg.1
		IL_0038: ldfld int32 System.Text.StringBuilder::m_MaxCapacity
		IL_003d: stfld int32 System.Text.StringBuilder::m_MaxCapacity
		IL_0042: ret
	} // end of method StringBuilder::.ctor

	.method private hidebysig 
		instance void MakeRoom (
			int32 index,
			int32 count,
			[out] class System.Text.StringBuilder& chunk,
			[out] int32& indexInChunk,
			bool doNotMoveFollowingChars
		) cil managed 
	{
		// Method begins at RVA 0xece8c
		// Code size 344 (0x158)
		.maxstack 4
		.locals (
			[0] class System.Text.StringBuilder,
			[1] int32,
			[2] int32,
			[3] char*,
			[4] char& pinned,
			[5] int32
		)

		IL_0000: ldarg.2
		IL_0001: ldarg.0
		IL_0002: call instance int32 System.Text.StringBuilder::get_Length()
		IL_0007: add
		IL_0008: ldarg.0
		IL_0009: ldfld int32 System.Text.StringBuilder::m_MaxCapacity
		IL_000e: bgt.s IL_001b

		IL_0010: ldarg.2
		IL_0011: ldarg.0
		IL_0012: call instance int32 System.Text.StringBuilder::get_Length()
		IL_0017: add
		IL_0018: ldarg.2
		IL_0019: bge.s IL_002b

		IL_001b: ldstr "requiredLength"
		IL_0020: call string System.SR::get_ArgumentOutOfRange_SmallCapacity()
		IL_0025: newobj instance void System.ArgumentOutOfRangeException::.ctor(string, string)
		IL_002a: throw

		IL_002b: ldarg.3
		IL_002c: ldarg.0
		IL_002d: stind.ref
		IL_002e: br.s IL_0048
		// loop start (head: IL_0048)
			IL_0030: ldarg.3
			IL_0031: ldind.ref
			IL_0032: dup
			IL_0033: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
			IL_0038: ldarg.2
			IL_0039: add
			IL_003a: stfld int32 System.Text.StringBuilder::m_ChunkOffset
			IL_003f: ldarg.3
			IL_0040: ldarg.3
			IL_0041: ldind.ref
			IL_0042: ldfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
			IL_0047: stind.ref

			IL_0048: ldarg.3
			IL_0049: ldind.ref
			IL_004a: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
			IL_004f: ldarg.1
			IL_0050: bgt.s IL_0030
		// end loop

		IL_0052: ldarg.s indexInChunk
		IL_0054: ldarg.1
		IL_0055: ldarg.3
		IL_0056: ldind.ref
		IL_0057: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_005c: sub
		IL_005d: stind.i4
		IL_005e: ldarg.s doNotMoveFollowingChars
		IL_0060: brtrue.s IL_00b9

		IL_0062: ldarg.3
		IL_0063: ldind.ref
		IL_0064: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0069: ldc.i4.s 32
		IL_006b: bgt.s IL_00b9

		IL_006d: ldarg.3
		IL_006e: ldind.ref
		IL_006f: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_0074: ldlen
		IL_0075: conv.i4
		IL_0076: ldarg.3
		IL_0077: ldind.ref
		IL_0078: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_007d: sub
		IL_007e: ldarg.2
		IL_007f: blt.s IL_00b9

		IL_0081: ldarg.3
		IL_0082: ldind.ref
		IL_0083: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0088: stloc.2
		IL_0089: br.s IL_00a3
		// loop start (head: IL_00a3)
			IL_008b: ldloc.2
			IL_008c: ldc.i4.1
			IL_008d: sub
			IL_008e: stloc.2
			IL_008f: ldarg.3
			IL_0090: ldind.ref
			IL_0091: ldfld char[] System.Text.StringBuilder::m_ChunkChars
			IL_0096: ldloc.2
			IL_0097: ldarg.2
			IL_0098: add
			IL_0099: ldarg.3
			IL_009a: ldind.ref
			IL_009b: ldfld char[] System.Text.StringBuilder::m_ChunkChars
			IL_00a0: ldloc.2
			IL_00a1: ldelem.u2
			IL_00a2: stelem.i2

			IL_00a3: ldloc.2
			IL_00a4: ldarg.s indexInChunk
			IL_00a6: ldind.i4
			IL_00a7: bgt.s IL_008b
		// end loop

		IL_00a9: ldarg.3
		IL_00aa: ldind.ref
		IL_00ab: dup
		IL_00ac: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_00b1: ldarg.2
		IL_00b2: add
		IL_00b3: stfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_00b8: ret

		IL_00b9: ldarg.2
		IL_00ba: ldc.i4.s 16
		IL_00bc: call int32 System.Math::Max(int32, int32)
		IL_00c1: ldarg.3
		IL_00c2: ldind.ref
		IL_00c3: ldfld int32 System.Text.StringBuilder::m_MaxCapacity
		IL_00c8: ldarg.3
		IL_00c9: ldind.ref
		IL_00ca: ldfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
		IL_00cf: newobj instance void System.Text.StringBuilder::.ctor(int32, int32, class System.Text.StringBuilder)
		IL_00d4: stloc.0
		IL_00d5: ldloc.0
		IL_00d6: ldarg.2
		IL_00d7: stfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_00dc: ldarg.2
		IL_00dd: ldarg.s indexInChunk
		IL_00df: ldind.i4
		IL_00e0: call int32 System.Math::Min(int32, int32)
		IL_00e5: stloc.1
		IL_00e6: ldloc.1
		IL_00e7: ldc.i4.0
		IL_00e8: ble.s IL_0135

		IL_00ea: ldarg.3
		IL_00eb: ldind.ref
		IL_00ec: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_00f1: ldc.i4.0
		IL_00f2: ldelema System.Char
		IL_00f7: stloc.s 4
		IL_00f9: ldloc.s 4
		IL_00fb: conv.u
		IL_00fc: stloc.3
		IL_00fd: ldloc.3
		IL_00fe: ldloc.0
		IL_00ff: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_0104: ldc.i4.0
		IL_0105: ldloc.1
		IL_0106: call void System.Text.StringBuilder::ThreadSafeCopy(char*, char[], int32, int32)
		IL_010b: ldarg.s indexInChunk
		IL_010d: ldind.i4
		IL_010e: ldloc.1
		IL_010f: sub
		IL_0110: stloc.s 5
		IL_0112: ldloc.s 5
		IL_0114: ldc.i4.0
		IL_0115: blt.s IL_0131

		IL_0117: ldloc.3
		IL_0118: ldloc.1
		IL_0119: conv.i
		IL_011a: ldc.i4.2
		IL_011b: mul
		IL_011c: add
		IL_011d: ldarg.3
		IL_011e: ldind.ref
		IL_011f: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_0124: ldc.i4.0
		IL_0125: ldloc.s 5
		IL_0127: call void System.Text.StringBuilder::ThreadSafeCopy(char*, char[], int32, int32)
		IL_012c: ldarg.s indexInChunk
		IL_012e: ldloc.s 5
		IL_0130: stind.i4

		IL_0131: ldc.i4.0
		IL_0132: conv.u
		IL_0133: stloc.s 4

		IL_0135: ldarg.3
		IL_0136: ldind.ref
		IL_0137: ldloc.0
		IL_0138: stfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
		IL_013d: ldarg.3
		IL_013e: ldind.ref
		IL_013f: dup
		IL_0140: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_0145: ldarg.2
		IL_0146: add
		IL_0147: stfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_014c: ldloc.1
		IL_014d: ldarg.2
		IL_014e: bge.s IL_0157

		IL_0150: ldarg.3
		IL_0151: ldloc.0
		IL_0152: stind.ref
		IL_0153: ldarg.s indexInChunk
		IL_0155: ldloc.1
		IL_0156: stind.i4

		IL_0157: ret
	} // end of method StringBuilder::MakeRoom

	.method private hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 size,
			int32 maxCapacity,
			class System.Text.StringBuilder previousBlock
		) cil managed 
	{
		// Method begins at RVA 0xecff0
		// Code size 56 (0x38)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void System.Object::.ctor()
		IL_0006: ldarg.0
		IL_0007: ldarg.1
		IL_0008: ldc.i4.0
		IL_0009: call !!0[] System.GC::AllocateUninitializedArray<char>(int32, bool)
		IL_000e: stfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_0013: ldarg.0
		IL_0014: ldarg.2
		IL_0015: stfld int32 System.Text.StringBuilder::m_MaxCapacity
		IL_001a: ldarg.0
		IL_001b: ldarg.3
		IL_001c: stfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
		IL_0021: ldarg.3
		IL_0022: brfalse.s IL_0037

		IL_0024: ldarg.0
		IL_0025: ldarg.3
		IL_0026: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_002b: ldarg.3
		IL_002c: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0031: add
		IL_0032: stfld int32 System.Text.StringBuilder::m_ChunkOffset

		IL_0037: ret
	} // end of method StringBuilder::.ctor

	.method private hidebysig 
		instance void Remove (
			int32 startIndex,
			int32 count,
			[out] class System.Text.StringBuilder& chunk,
			[out] int32& indexInChunk
		) cil managed 
	{
		// Method begins at RVA 0xed02c
		// Code size 218 (0xda)
		.maxstack 5
		.locals (
			[0] int32,
			[1] class System.Text.StringBuilder,
			[2] int32,
			[3] int32,
			[4] int32
		)

		IL_0000: ldarg.1
		IL_0001: ldarg.2
		IL_0002: add
		IL_0003: stloc.0
		IL_0004: ldarg.3
		IL_0005: ldarg.0
		IL_0006: stind.ref
		IL_0007: ldnull
		IL_0008: stloc.1
		IL_0009: ldc.i4.0
		IL_000a: stloc.2
		// loop start (head: IL_000b)
			IL_000b: ldloc.0
			IL_000c: ldarg.3
			IL_000d: ldind.ref
			IL_000e: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
			IL_0013: sub
			IL_0014: ldc.i4.0
			IL_0015: blt.s IL_0040

			IL_0017: ldloc.1
			IL_0018: brtrue.s IL_0026

			IL_001a: ldarg.3
			IL_001b: ldind.ref
			IL_001c: stloc.1
			IL_001d: ldloc.0
			IL_001e: ldloc.1
			IL_001f: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
			IL_0024: sub
			IL_0025: stloc.2

			IL_0026: ldarg.1
			IL_0027: ldarg.3
			IL_0028: ldind.ref
			IL_0029: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
			IL_002e: sub
			IL_002f: ldc.i4.0
			IL_0030: blt.s IL_004f

			IL_0032: ldarg.s indexInChunk
			IL_0034: ldarg.1
			IL_0035: ldarg.3
			IL_0036: ldind.ref
			IL_0037: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
			IL_003c: sub
			IL_003d: stind.i4
			IL_003e: br.s IL_005a

			IL_0040: ldarg.3
			IL_0041: ldind.ref
			IL_0042: dup
			IL_0043: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
			IL_0048: ldarg.2
			IL_0049: sub
			IL_004a: stfld int32 System.Text.StringBuilder::m_ChunkOffset

			IL_004f: ldarg.3
			IL_0050: ldarg.3
			IL_0051: ldind.ref
			IL_0052: ldfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
			IL_0057: stind.ref
			IL_0058: br.s IL_000b
		// end loop

		IL_005a: ldarg.s indexInChunk
		IL_005c: ldind.i4
		IL_005d: stloc.3
		IL_005e: ldloc.1
		IL_005f: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0064: ldloc.2
		IL_0065: sub
		IL_0066: stloc.s 4
		IL_0068: ldloc.1
		IL_0069: ldarg.3
		IL_006a: ldind.ref
		IL_006b: beq.s IL_00ab

		IL_006d: ldc.i4.0
		IL_006e: stloc.3
		IL_006f: ldarg.3
		IL_0070: ldind.ref
		IL_0071: ldarg.s indexInChunk
		IL_0073: ldind.i4
		IL_0074: stfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0079: ldloc.1
		IL_007a: ldarg.3
		IL_007b: ldind.ref
		IL_007c: stfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
		IL_0081: ldloc.1
		IL_0082: ldarg.3
		IL_0083: ldind.ref
		IL_0084: ldfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_0089: ldarg.3
		IL_008a: ldind.ref
		IL_008b: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_0090: add
		IL_0091: stfld int32 System.Text.StringBuilder::m_ChunkOffset
		IL_0096: ldarg.s indexInChunk
		IL_0098: ldind.i4
		IL_0099: brtrue.s IL_00ab

		IL_009b: ldloc.1
		IL_009c: ldarg.3
		IL_009d: ldind.ref
		IL_009e: ldfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
		IL_00a3: stfld class System.Text.StringBuilder System.Text.StringBuilder::m_ChunkPrevious
		IL_00a8: ldarg.3
		IL_00a9: ldloc.1
		IL_00aa: stind.ref

		IL_00ab: ldloc.1
		IL_00ac: dup
		IL_00ad: ldfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_00b2: ldloc.2
		IL_00b3: ldloc.3
		IL_00b4: sub
		IL_00b5: sub
		IL_00b6: stfld int32 System.Text.StringBuilder::m_ChunkLength
		IL_00bb: ldloc.3
		IL_00bc: ldloc.2
		IL_00bd: beq.s IL_00d9

		IL_00bf: ldloc.1
		IL_00c0: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_00c5: ldloc.2
		IL_00c6: ldloc.1
		IL_00c7: ldfld char[] System.Text.StringBuilder::m_ChunkChars
		IL_00cc: call valuetype System.Span`1<!0> valuetype System.Span`1<char>::op_Implicit(!0[])
		IL_00d1: ldloc.3
		IL_00d2: ldloc.s 4
		IL_00d4: call void System.Text.StringBuilder::ThreadSafeCopy(char[], int32, valuetype System.Span`1<char>, int32, int32)

		IL_00d9: ret
	} // end of method StringBuilder::Remove

	// Properties
	.property instance int32 Capacity()
	{
		.get instance int32 System.Text.StringBuilder::get_Capacity()
		.set instance void System.Text.StringBuilder::set_Capacity(int32)
	}
	.property instance int32 MaxCapacity()
	{
		.get instance int32 System.Text.StringBuilder::get_MaxCapacity()
	}
	.property instance int32 Length()
	{
		.get instance int32 System.Text.StringBuilder::get_Length()
		.set instance void System.Text.StringBuilder::set_Length(int32)
	}
	.property instance char Chars(
		int32 index
	)
	{
		.get instance char System.Text.StringBuilder::get_Chars(int32)
		.set instance void System.Text.StringBuilder::set_Chars(int32, char)
	}
	.property instance valuetype System.Span`1<char> RemainingCurrentChunk()
	{
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.get instance valuetype System.Span`1<char> System.Text.StringBuilder::get_RemainingCurrentChunk()
	}

} // end of class System.Text.StringBuilder
