.class public auto ansi serializable beforefieldinit System.Collections.Generic.Dictionary`2<TKey, TValue>
	extends System.Object
	implements .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
		01 00 03 00 00 00 00 01 01 00 00
	)
	class System.Collections.Generic.IDictionary`2<!TKey, !TValue>,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
		01 00 04 00 00 00 00 00 01 01 00 00
	)
	class System.Collections.Generic.ICollection`1<valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>>,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
		01 00 04 00 00 00 00 00 01 01 00 00
	)
	class System.Collections.Generic.IEnumerable`1<valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>>,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.Collections.IEnumerable,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.Collections.IDictionary,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.Collections.ICollection,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
		01 00 03 00 00 00 00 01 01 00 00
	)
	class System.Collections.Generic.IReadOnlyDictionary`2<!TKey, !TValue>,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
		01 00 04 00 00 00 00 00 01 01 00 00
	)
	class System.Collections.Generic.IReadOnlyCollection`1<valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>>,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.Runtime.Serialization.ISerializable,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.Runtime.Serialization.IDeserializationCallback
{
	.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
		01 00 01 00 00
	)
	.custom instance void System.Reflection.DefaultMemberAttribute::.ctor(string) = (
		01 00 04 49 74 65 6d 00 00
	)
	.custom instance void System.Diagnostics.DebuggerTypeProxyAttribute::.ctor(class System.Type) = (
		01 00 31 53 79 73 74 65 6d 2e 43 6f 6c 6c 65 63
		74 69 6f 6e 73 2e 47 65 6e 65 72 69 63 2e 49 44
		69 63 74 69 6f 6e 61 72 79 44 65 62 75 67 56 69
		65 77 60 32 00 00
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
	.param type TValue
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	// Nested Types
	.class nested private sequential ansi sealed beforefieldinit Entry<TKey, TValue>
		extends System.ValueType
	{
		.param type TValue
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Fields
		.field public uint32 hashCode
		.field public int32 next
		.field public !TKey key
		.field public !TValue 'value'

	} // end of class Entry

	.class nested public sequential ansi sealed beforefieldinit Enumerator<TKey, TValue>
		extends System.ValueType
		implements .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
			01 00 04 00 00 00 00 00 01 01 00 00
		)
		class System.Collections.Generic.IEnumerator`1<valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>>,
		           System.IDisposable,
		           System.Collections.IEnumerator,
		           System.Collections.IDictionaryEnumerator
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.param type TValue
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Fields
		.field private initonly class System.Collections.Generic.Dictionary`2<!TKey, !TValue> _dictionary
		.field private initonly int32 _version
		.field private int32 _index
		.field private valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue> _current
		.field private initonly int32 _getEnumeratorRetType

		// Methods
		.method assembly hidebysig specialname rtspecialname 
			instance void .ctor (
				class System.Collections.Generic.Dictionary`2<!TKey, !TValue> dictionary,
				int32 getEnumeratorRetType
			) cil managed 
		{
			// Method begins at RVA 0x1654ff
			// Code size 46 (0x2e)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldarg.1
			IL_0002: stfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_dictionary
			IL_0007: ldarg.0
			IL_0008: ldarg.1
			IL_0009: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_version
			IL_000e: stfld int32 valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_version
			IL_0013: ldarg.0
			IL_0014: ldc.i4.0
			IL_0015: stfld int32 valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_index
			IL_001a: ldarg.0
			IL_001b: ldarg.2
			IL_001c: stfld int32 valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_getEnumeratorRetType
			IL_0021: ldarg.0
			IL_0022: ldflda valuetype System.Collections.Generic.KeyValuePair`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_current
			IL_0027: initobj valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>
			IL_002d: ret
		} // end of method Enumerator::.ctor

		.method public final hidebysig newslot virtual 
			instance bool MoveNext () cil managed 
		{
			// Method begins at RVA 0x165530
			// Code size 146 (0x92)
			.maxstack 4
			.locals (
				[0] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>&,
				[1] int32
			)

			IL_0000: ldarg.0
			IL_0001: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_version
			IL_0006: ldarg.0
			IL_0007: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_dictionary
			IL_000c: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_version
			IL_0011: beq.s IL_005e

			IL_0013: call void System.ThrowHelper::ThrowInvalidOperationException_InvalidOperation_EnumFailedVersion()
			IL_0018: br.s IL_005e
			// loop start (head: IL_005e)
				IL_001a: ldarg.0
				IL_001b: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_dictionary
				IL_0020: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
				IL_0025: ldarg.0
				IL_0026: ldarg.0
				IL_0027: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_index
				IL_002c: stloc.1
				IL_002d: ldloc.1
				IL_002e: ldc.i4.1
				IL_002f: add
				IL_0030: stfld int32 valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_index
				IL_0035: ldloc.1
				IL_0036: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
				IL_003b: stloc.0
				IL_003c: ldloc.0
				IL_003d: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
				IL_0042: ldc.i4.m1
				IL_0043: blt.s IL_005e

				IL_0045: ldarg.0
				IL_0046: ldloc.0
				IL_0047: ldfld !0 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::key
				IL_004c: ldloc.0
				IL_004d: ldfld !1 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::'value'
				IL_0052: newobj instance void valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::.ctor(!0, !1)
				IL_0057: stfld valuetype System.Collections.Generic.KeyValuePair`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_current
				IL_005c: ldc.i4.1
				IL_005d: ret

				IL_005e: ldarg.0
				IL_005f: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_index
				IL_0064: ldarg.0
				IL_0065: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_dictionary
				IL_006a: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
				IL_006f: blt.un.s IL_001a
			// end loop

			IL_0071: ldarg.0
			IL_0072: ldarg.0
			IL_0073: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_dictionary
			IL_0078: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
			IL_007d: ldc.i4.1
			IL_007e: add
			IL_007f: stfld int32 valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_index
			IL_0084: ldarg.0
			IL_0085: ldflda valuetype System.Collections.Generic.KeyValuePair`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_current
			IL_008a: initobj valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>
			IL_0090: ldc.i4.0
			IL_0091: ret
		} // end of method Enumerator::MoveNext

		.method public final hidebysig specialname newslot virtual 
			instance valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue> get_Current () cil managed 
		{
			.param [0]
				.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
					01 00 03 00 00 00 00 01 01 00 00
				)
			// Method begins at RVA 0x1655ce
			// Code size 7 (0x7)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld valuetype System.Collections.Generic.KeyValuePair`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_current
			IL_0006: ret
		} // end of method Enumerator::get_Current

		.method public final hidebysig newslot virtual 
			instance void Dispose () cil managed 
		{
			// Method begins at RVA 0x4017b
			// Code size 1 (0x1)
			.maxstack 8

			IL_0000: ret
		} // end of method Enumerator::Dispose

		.method private final hidebysig specialname newslot virtual 
			instance object System.Collections.IEnumerator.get_Current () cil managed 
		{
			.override method instance object System.Collections.IEnumerator::get_Current()
			// Method begins at RVA 0x1655d8
			// Code size 119 (0x77)
			.maxstack 3

			IL_0000: ldarg.0
			IL_0001: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_index
			IL_0006: brfalse.s IL_001d

			IL_0008: ldarg.0
			IL_0009: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_index
			IL_000e: ldarg.0
			IL_000f: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_dictionary
			IL_0014: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
			IL_0019: ldc.i4.1
			IL_001a: add
			IL_001b: bne.un.s IL_0022

			IL_001d: call void System.ThrowHelper::ThrowInvalidOperationException_InvalidOperation_EnumOpCantHappen()

			IL_0022: ldarg.0
			IL_0023: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_getEnumeratorRetType
			IL_0028: ldc.i4.1
			IL_0029: bne.un.s IL_0056

			IL_002b: ldarg.0
			IL_002c: ldflda valuetype System.Collections.Generic.KeyValuePair`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_current
			IL_0031: call instance !0 valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::get_Key()
			IL_0036: box !TKey
			IL_003b: ldarg.0
			IL_003c: ldflda valuetype System.Collections.Generic.KeyValuePair`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_current
			IL_0041: call instance !1 valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::get_Value()
			IL_0046: box !TValue
			IL_004b: newobj instance void System.Collections.DictionaryEntry::.ctor(object, object)
			IL_0050: box System.Collections.DictionaryEntry
			IL_0055: ret

			IL_0056: ldarg.0
			IL_0057: ldflda valuetype System.Collections.Generic.KeyValuePair`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_current
			IL_005c: call instance !0 valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::get_Key()
			IL_0061: ldarg.0
			IL_0062: ldflda valuetype System.Collections.Generic.KeyValuePair`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_current
			IL_0067: call instance !1 valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::get_Value()
			IL_006c: newobj instance void valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::.ctor(!0, !1)
			IL_0071: box valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>
			IL_0076: ret
		} // end of method Enumerator::System.Collections.IEnumerator.get_Current

		.method private final hidebysig newslot virtual 
			instance void System.Collections.IEnumerator.Reset () cil managed 
		{
			.override method instance void System.Collections.IEnumerator::Reset()
			// Method begins at RVA 0x16565b
			// Code size 44 (0x2c)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_version
			IL_0006: ldarg.0
			IL_0007: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_dictionary
			IL_000c: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_version
			IL_0011: beq.s IL_0018

			IL_0013: call void System.ThrowHelper::ThrowInvalidOperationException_InvalidOperation_EnumFailedVersion()

			IL_0018: ldarg.0
			IL_0019: ldc.i4.0
			IL_001a: stfld int32 valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_index
			IL_001f: ldarg.0
			IL_0020: ldflda valuetype System.Collections.Generic.KeyValuePair`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_current
			IL_0025: initobj valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>
			IL_002b: ret
		} // end of method Enumerator::System.Collections.IEnumerator.Reset

		.method private final hidebysig specialname newslot virtual 
			instance valuetype System.Collections.DictionaryEntry System.Collections.IDictionaryEnumerator.get_Entry () cil managed 
		{
			.override method instance valuetype System.Collections.DictionaryEntry System.Collections.IDictionaryEnumerator::get_Entry()
			// Method begins at RVA 0x165688
			// Code size 72 (0x48)
			.maxstack 3

			IL_0000: ldarg.0
			IL_0001: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_index
			IL_0006: brfalse.s IL_001d

			IL_0008: ldarg.0
			IL_0009: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_index
			IL_000e: ldarg.0
			IL_000f: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_dictionary
			IL_0014: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
			IL_0019: ldc.i4.1
			IL_001a: add
			IL_001b: bne.un.s IL_0022

			IL_001d: call void System.ThrowHelper::ThrowInvalidOperationException_InvalidOperation_EnumOpCantHappen()

			IL_0022: ldarg.0
			IL_0023: ldflda valuetype System.Collections.Generic.KeyValuePair`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_current
			IL_0028: call instance !0 valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::get_Key()
			IL_002d: box !TKey
			IL_0032: ldarg.0
			IL_0033: ldflda valuetype System.Collections.Generic.KeyValuePair`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_current
			IL_0038: call instance !1 valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::get_Value()
			IL_003d: box !TValue
			IL_0042: newobj instance void System.Collections.DictionaryEntry::.ctor(object, object)
			IL_0047: ret
		} // end of method Enumerator::System.Collections.IDictionaryEnumerator.get_Entry

		.method private final hidebysig specialname newslot virtual 
			instance object System.Collections.IDictionaryEnumerator.get_Key () cil managed 
		{
			.override method instance object System.Collections.IDictionaryEnumerator::get_Key()
			// Method begins at RVA 0x1656dc
			// Code size 51 (0x33)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_index
			IL_0006: brfalse.s IL_001d

			IL_0008: ldarg.0
			IL_0009: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_index
			IL_000e: ldarg.0
			IL_000f: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_dictionary
			IL_0014: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
			IL_0019: ldc.i4.1
			IL_001a: add
			IL_001b: bne.un.s IL_0022

			IL_001d: call void System.ThrowHelper::ThrowInvalidOperationException_InvalidOperation_EnumOpCantHappen()

			IL_0022: ldarg.0
			IL_0023: ldflda valuetype System.Collections.Generic.KeyValuePair`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_current
			IL_0028: call instance !0 valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::get_Key()
			IL_002d: box !TKey
			IL_0032: ret
		} // end of method Enumerator::System.Collections.IDictionaryEnumerator.get_Key

		.method private final hidebysig specialname newslot virtual 
			instance object System.Collections.IDictionaryEnumerator.get_Value () cil managed 
		{
			.override method instance object System.Collections.IDictionaryEnumerator::get_Value()
			// Method begins at RVA 0x165710
			// Code size 51 (0x33)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_index
			IL_0006: brfalse.s IL_001d

			IL_0008: ldarg.0
			IL_0009: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_index
			IL_000e: ldarg.0
			IL_000f: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_dictionary
			IL_0014: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
			IL_0019: ldc.i4.1
			IL_001a: add
			IL_001b: bne.un.s IL_0022

			IL_001d: call void System.ThrowHelper::ThrowInvalidOperationException_InvalidOperation_EnumOpCantHappen()

			IL_0022: ldarg.0
			IL_0023: ldflda valuetype System.Collections.Generic.KeyValuePair`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::_current
			IL_0028: call instance !1 valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::get_Value()
			IL_002d: box !TValue
			IL_0032: ret
		} // end of method Enumerator::System.Collections.IDictionaryEnumerator.get_Value

		// Properties
		.property instance valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue> Current()
		{
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 03 00 00 00 00 01 01 00 00
			)
			.get instance valuetype System.Collections.Generic.KeyValuePair`2<!0, !1> System.Collections.Generic.Dictionary`2/Enumerator::get_Current()
		}
		.property instance object System.Collections.IEnumerator.Current()
		{
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
			.get instance object System.Collections.Generic.Dictionary`2/Enumerator::System.Collections.IEnumerator.get_Current()
		}
		.property instance valuetype System.Collections.DictionaryEntry System.Collections.IDictionaryEnumerator.Entry()
		{
			.get instance valuetype System.Collections.DictionaryEntry System.Collections.Generic.Dictionary`2/Enumerator::System.Collections.IDictionaryEnumerator.get_Entry()
		}
		.property instance object System.Collections.IDictionaryEnumerator.Key()
		{
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
			.get instance object System.Collections.Generic.Dictionary`2/Enumerator::System.Collections.IDictionaryEnumerator.get_Key()
		}
		.property instance object System.Collections.IDictionaryEnumerator.Value()
		{
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
			.get instance object System.Collections.Generic.Dictionary`2/Enumerator::System.Collections.IDictionaryEnumerator.get_Value()
		}

	} // end of class Enumerator

	.class nested public auto ansi sealed beforefieldinit KeyCollection<TKey, TValue>
		extends System.Object
		implements .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
			01 00 02 00 00 00 00 01 00 00
		)
		class System.Collections.Generic.ICollection`1<!TKey>,
		           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
			01 00 02 00 00 00 00 01 00 00
		)
		class System.Collections.Generic.IEnumerable`1<!TKey>,
		           System.Collections.IEnumerable,
		           System.Collections.ICollection,
		           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
			01 00 02 00 00 00 00 01 00 00
		)
		class System.Collections.Generic.IReadOnlyCollection`1<!TKey>
	{
		.custom instance void System.Diagnostics.DebuggerTypeProxyAttribute::.ctor(class System.Type) = (
			01 00 3d 53 79 73 74 65 6d 2e 43 6f 6c 6c 65 63
			74 69 6f 6e 73 2e 47 65 6e 65 72 69 63 2e 44 69
			63 74 69 6f 6e 61 72 79 4b 65 79 43 6f 6c 6c 65
			63 74 69 6f 6e 44 65 62 75 67 56 69 65 77 60 32
			00 00
		)
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.custom instance void System.Diagnostics.DebuggerDisplayAttribute::.ctor(string) = (
			01 00 0f 43 6f 75 6e 74 20 3d 20 7b 43 6f 75 6e
			74 7d 00 00
		)
		.param type TValue
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Nested Types
		.class nested public sequential ansi sealed beforefieldinit Enumerator<TKey, TValue>
			extends System.ValueType
			implements .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 00 01 00 00
			)
			class System.Collections.Generic.IEnumerator`1<!TKey>,
			           System.IDisposable,
			           System.Collections.IEnumerator
		{
			.param type TValue
				.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
					01 00 02 00 00
				)
			// Fields
			.field private initonly class System.Collections.Generic.Dictionary`2<!TKey, !TValue> _dictionary
			.field private int32 _index
			.field private initonly int32 _version
			.field private !TKey _currentKey

			// Methods
			.method assembly hidebysig specialname rtspecialname 
				instance void .ctor (
					class System.Collections.Generic.Dictionary`2<!TKey, !TValue> dictionary
				) cil managed 
			{
				// Method begins at RVA 0x16592d
				// Code size 39 (0x27)
				.maxstack 8

				IL_0000: ldarg.0
				IL_0001: ldarg.1
				IL_0002: stfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_dictionary
				IL_0007: ldarg.0
				IL_0008: ldarg.1
				IL_0009: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_version
				IL_000e: stfld int32 valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_version
				IL_0013: ldarg.0
				IL_0014: ldc.i4.0
				IL_0015: stfld int32 valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_index
				IL_001a: ldarg.0
				IL_001b: ldflda !0 valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_currentKey
				IL_0020: initobj !TKey
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
				// Method begins at RVA 0x165958
				// Code size 135 (0x87)
				.maxstack 4
				.locals (
					[0] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>&,
					[1] int32
				)

				IL_0000: ldarg.0
				IL_0001: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_version
				IL_0006: ldarg.0
				IL_0007: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_dictionary
				IL_000c: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_version
				IL_0011: beq.s IL_0053

				IL_0013: call void System.ThrowHelper::ThrowInvalidOperationException_InvalidOperation_EnumFailedVersion()
				IL_0018: br.s IL_0053
				// loop start (head: IL_0053)
					IL_001a: ldarg.0
					IL_001b: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_dictionary
					IL_0020: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
					IL_0025: ldarg.0
					IL_0026: ldarg.0
					IL_0027: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_index
					IL_002c: stloc.1
					IL_002d: ldloc.1
					IL_002e: ldc.i4.1
					IL_002f: add
					IL_0030: stfld int32 valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_index
					IL_0035: ldloc.1
					IL_0036: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
					IL_003b: stloc.0
					IL_003c: ldloc.0
					IL_003d: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
					IL_0042: ldc.i4.m1
					IL_0043: blt.s IL_0053

					IL_0045: ldarg.0
					IL_0046: ldloc.0
					IL_0047: ldfld !0 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::key
					IL_004c: stfld !0 valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_currentKey
					IL_0051: ldc.i4.1
					IL_0052: ret

					IL_0053: ldarg.0
					IL_0054: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_index
					IL_0059: ldarg.0
					IL_005a: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_dictionary
					IL_005f: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
					IL_0064: blt.un.s IL_001a
				// end loop

				IL_0066: ldarg.0
				IL_0067: ldarg.0
				IL_0068: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_dictionary
				IL_006d: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
				IL_0072: ldc.i4.1
				IL_0073: add
				IL_0074: stfld int32 valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_index
				IL_0079: ldarg.0
				IL_007a: ldflda !0 valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_currentKey
				IL_007f: initobj !TKey
				IL_0085: ldc.i4.0
				IL_0086: ret
			} // end of method Enumerator::MoveNext

			.method public final hidebysig specialname newslot virtual 
				instance !TKey get_Current () cil managed 
			{
				.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
					01 00 01 00 00
				)
				// Method begins at RVA 0x1659eb
				// Code size 7 (0x7)
				.maxstack 8

				IL_0000: ldarg.0
				IL_0001: ldfld !0 valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_currentKey
				IL_0006: ret
			} // end of method Enumerator::get_Current

			.method private final hidebysig specialname newslot virtual 
				instance object System.Collections.IEnumerator.get_Current () cil managed 
			{
				.override method instance object System.Collections.IEnumerator::get_Current()
				// Method begins at RVA 0x1659f3
				// Code size 46 (0x2e)
				.maxstack 8

				IL_0000: ldarg.0
				IL_0001: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_index
				IL_0006: brfalse.s IL_001d

				IL_0008: ldarg.0
				IL_0009: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_index
				IL_000e: ldarg.0
				IL_000f: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_dictionary
				IL_0014: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
				IL_0019: ldc.i4.1
				IL_001a: add
				IL_001b: bne.un.s IL_0022

				IL_001d: call void System.ThrowHelper::ThrowInvalidOperationException_InvalidOperation_EnumOpCantHappen()

				IL_0022: ldarg.0
				IL_0023: ldfld !0 valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_currentKey
				IL_0028: box !TKey
				IL_002d: ret
			} // end of method Enumerator::System.Collections.IEnumerator.get_Current

			.method private final hidebysig newslot virtual 
				instance void System.Collections.IEnumerator.Reset () cil managed 
			{
				.override method instance void System.Collections.IEnumerator::Reset()
				// Method begins at RVA 0x165a22
				// Code size 44 (0x2c)
				.maxstack 8

				IL_0000: ldarg.0
				IL_0001: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_version
				IL_0006: ldarg.0
				IL_0007: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_dictionary
				IL_000c: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_version
				IL_0011: beq.s IL_0018

				IL_0013: call void System.ThrowHelper::ThrowInvalidOperationException_InvalidOperation_EnumFailedVersion()

				IL_0018: ldarg.0
				IL_0019: ldc.i4.0
				IL_001a: stfld int32 valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_index
				IL_001f: ldarg.0
				IL_0020: ldflda !0 valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::_currentKey
				IL_0025: initobj !TKey
				IL_002b: ret
			} // end of method Enumerator::System.Collections.IEnumerator.Reset

			// Properties
			.property instance !TKey Current()
			{
				.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
					01 00 01 00 00
				)
				.get instance !0 System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator::get_Current()
			}
			.property instance object System.Collections.IEnumerator.Current()
			{
				.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
					01 00 02 00 00
				)
				.get instance object System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator::System.Collections.IEnumerator.get_Current()
			}

		} // end of class Enumerator


		// Fields
		.field private initonly class System.Collections.Generic.Dictionary`2<!TKey, !TValue> _dictionary

		// Methods
		.method public hidebysig specialname rtspecialname 
			instance void .ctor (
				class System.Collections.Generic.Dictionary`2<!TKey, !TValue> dictionary
			) cil managed 
		{
			.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
			// Method begins at RVA 0x165744
			// Code size 23 (0x17)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: call instance void System.Object::.ctor()
			IL_0006: ldarg.1
			IL_0007: brtrue.s IL_000f

			IL_0009: ldc.i4.1
			IL_000a: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

			IL_000f: ldarg.0
			IL_0010: ldarg.1
			IL_0011: stfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/KeyCollection<!TKey, !TValue>::_dictionary
			IL_0016: ret
		} // end of method KeyCollection::.ctor

		.method public hidebysig 
			instance valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue> GetEnumerator () cil managed 
		{
			// Method begins at RVA 0x16575c
			// Code size 12 (0xc)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/KeyCollection<!TKey, !TValue>::_dictionary
			IL_0006: newobj instance void valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::.ctor(class System.Collections.Generic.Dictionary`2<!0, !1>)
			IL_000b: ret
		} // end of method KeyCollection::GetEnumerator

		.method public final hidebysig newslot virtual 
			instance void CopyTo (
				!TKey[] 'array',
				int32 index
			) cil managed 
		{
			.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
			// Method begins at RVA 0x16576c
			// Code size 124 (0x7c)
			.maxstack 4
			.locals (
				[0] int32,
				[1] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>[],
				[2] int32
			)

			IL_0000: ldarg.1
			IL_0001: brtrue.s IL_0009

			IL_0003: ldc.i4.2
			IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

			IL_0009: ldarg.2
			IL_000a: ldc.i4.0
			IL_000b: blt.s IL_0013

			IL_000d: ldarg.2
			IL_000e: ldarg.1
			IL_000f: ldlen
			IL_0010: conv.i4
			IL_0011: ble.s IL_0018

			IL_0013: call void System.ThrowHelper::ThrowIndexArgumentOutOfRange_NeedNonNegNumException()

			IL_0018: ldarg.1
			IL_0019: ldlen
			IL_001a: conv.i4
			IL_001b: ldarg.2
			IL_001c: sub
			IL_001d: ldarg.0
			IL_001e: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/KeyCollection<!TKey, !TValue>::_dictionary
			IL_0023: callvirt instance int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::get_Count()
			IL_0028: bge.s IL_0030

			IL_002a: ldc.i4.5
			IL_002b: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

			IL_0030: ldarg.0
			IL_0031: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/KeyCollection<!TKey, !TValue>::_dictionary
			IL_0036: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
			IL_003b: stloc.0
			IL_003c: ldarg.0
			IL_003d: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/KeyCollection<!TKey, !TValue>::_dictionary
			IL_0042: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
			IL_0047: stloc.1
			IL_0048: ldc.i4.0
			IL_0049: stloc.2
			IL_004a: br.s IL_0077
			// loop start (head: IL_0077)
				IL_004c: ldloc.1
				IL_004d: ldloc.2
				IL_004e: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
				IL_0053: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
				IL_0058: ldc.i4.m1
				IL_0059: blt.s IL_0073

				IL_005b: ldarg.1
				IL_005c: ldarg.2
				IL_005d: dup
				IL_005e: ldc.i4.1
				IL_005f: add
				IL_0060: starg.s index
				IL_0062: ldloc.1
				IL_0063: ldloc.2
				IL_0064: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
				IL_0069: ldfld !0 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::key
				IL_006e: stelem !TKey

				IL_0073: ldloc.2
				IL_0074: ldc.i4.1
				IL_0075: add
				IL_0076: stloc.2

				IL_0077: ldloc.2
				IL_0078: ldloc.0
				IL_0079: blt.s IL_004c
			// end loop

			IL_007b: ret
		} // end of method KeyCollection::CopyTo

		.method public final hidebysig specialname newslot virtual 
			instance int32 get_Count () cil managed 
		{
			// Method begins at RVA 0x1657f4
			// Code size 12 (0xc)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/KeyCollection<!TKey, !TValue>::_dictionary
			IL_0006: callvirt instance int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::get_Count()
			IL_000b: ret
		} // end of method KeyCollection::get_Count

		.method private final hidebysig specialname newslot virtual 
			instance bool 'System.Collections.Generic.ICollection<TKey>.get_IsReadOnly' () cil managed 
		{
			.override method instance bool class System.Collections.Generic.ICollection`1<!TKey>::get_IsReadOnly()
			// Method begins at RVA 0x40f0e
			// Code size 2 (0x2)
			.maxstack 8

			IL_0000: ldc.i4.1
			IL_0001: ret
		} // end of method KeyCollection::'System.Collections.Generic.ICollection<TKey>.get_IsReadOnly'

		.method private final hidebysig newslot virtual 
			instance void 'System.Collections.Generic.ICollection<TKey>.Add' (
				!TKey item
			) cil managed 
		{
			.override method instance void class System.Collections.Generic.ICollection`1<!TKey>::Add(!0)
			// Method begins at RVA 0x165801
			// Code size 8 (0x8)
			.maxstack 8

			IL_0000: ldc.i4.s 18
			IL_0002: call void System.ThrowHelper::ThrowNotSupportedException(valuetype System.ExceptionResource)
			IL_0007: ret
		} // end of method KeyCollection::'System.Collections.Generic.ICollection<TKey>.Add'

		.method private final hidebysig newslot virtual 
			instance void 'System.Collections.Generic.ICollection<TKey>.Clear' () cil managed 
		{
			.override method instance void class System.Collections.Generic.ICollection`1<!TKey>::Clear()
			// Method begins at RVA 0x165801
			// Code size 8 (0x8)
			.maxstack 8

			IL_0000: ldc.i4.s 18
			IL_0002: call void System.ThrowHelper::ThrowNotSupportedException(valuetype System.ExceptionResource)
			IL_0007: ret
		} // end of method KeyCollection::'System.Collections.Generic.ICollection<TKey>.Clear'

		.method private final hidebysig newslot virtual 
			instance bool 'System.Collections.Generic.ICollection<TKey>.Contains' (
				!TKey item
			) cil managed 
		{
			.override method instance bool class System.Collections.Generic.ICollection`1<!TKey>::Contains(!0)
			// Method begins at RVA 0x16580a
			// Code size 13 (0xd)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/KeyCollection<!TKey, !TValue>::_dictionary
			IL_0006: ldarg.1
			IL_0007: callvirt instance bool class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::ContainsKey(!0)
			IL_000c: ret
		} // end of method KeyCollection::'System.Collections.Generic.ICollection<TKey>.Contains'

		.method private final hidebysig newslot virtual 
			instance bool 'System.Collections.Generic.ICollection<TKey>.Remove' (
				!TKey item
			) cil managed 
		{
			.override method instance bool class System.Collections.Generic.ICollection`1<!TKey>::Remove(!0)
			// Method begins at RVA 0x165818
			// Code size 9 (0x9)
			.maxstack 8

			IL_0000: ldc.i4.s 18
			IL_0002: call void System.ThrowHelper::ThrowNotSupportedException(valuetype System.ExceptionResource)
			IL_0007: ldc.i4.0
			IL_0008: ret
		} // end of method KeyCollection::'System.Collections.Generic.ICollection<TKey>.Remove'

		.method private final hidebysig newslot virtual 
			instance class System.Collections.Generic.IEnumerator`1<!TKey> 'System.Collections.Generic.IEnumerable<TKey>.GetEnumerator' () cil managed 
		{
			.override method instance class System.Collections.Generic.IEnumerator`1<!0> class System.Collections.Generic.IEnumerable`1<!TKey>::GetEnumerator()
			// Method begins at RVA 0x165822
			// Code size 17 (0x11)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/KeyCollection<!TKey, !TValue>::_dictionary
			IL_0006: newobj instance void valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::.ctor(class System.Collections.Generic.Dictionary`2<!0, !1>)
			IL_000b: box valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>
			IL_0010: ret
		} // end of method KeyCollection::'System.Collections.Generic.IEnumerable<TKey>.GetEnumerator'

		.method private final hidebysig newslot virtual 
			instance class System.Collections.IEnumerator System.Collections.IEnumerable.GetEnumerator () cil managed 
		{
			.override method instance class System.Collections.IEnumerator System.Collections.IEnumerable::GetEnumerator()
			// Method begins at RVA 0x165822
			// Code size 17 (0x11)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/KeyCollection<!TKey, !TValue>::_dictionary
			IL_0006: newobj instance void valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>::.ctor(class System.Collections.Generic.Dictionary`2<!0, !1>)
			IL_000b: box valuetype System.Collections.Generic.Dictionary`2/KeyCollection/Enumerator<!TKey, !TValue>
			IL_0010: ret
		} // end of method KeyCollection::System.Collections.IEnumerable.GetEnumerator

		.method private final hidebysig newslot virtual 
			instance void System.Collections.ICollection.CopyTo (
				class System.Array 'array',
				int32 index
			) cil managed 
		{
			.override method instance void System.Collections.ICollection::CopyTo(class System.Array, int32)
			// Method begins at RVA 0x165834
			// Code size 207 (0xcf)
			.maxstack 4
			.locals (
				[0] !TKey[],
				[1] object[],
				[2] int32,
				[3] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>[],
				[4] int32
			)

			IL_0000: ldarg.1
			IL_0001: brtrue.s IL_0009

			IL_0003: ldc.i4.2
			IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

			IL_0009: ldarg.1
			IL_000a: callvirt instance int32 System.Array::get_Rank()
			IL_000f: ldc.i4.1
			IL_0010: beq.s IL_0018

			IL_0012: ldc.i4.7
			IL_0013: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

			IL_0018: ldarg.1
			IL_0019: ldc.i4.0
			IL_001a: callvirt instance int32 System.Array::GetLowerBound(int32)
			IL_001f: brfalse.s IL_0027

			IL_0021: ldc.i4.8
			IL_0022: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

			IL_0027: ldarg.2
			IL_0028: ldarg.1
			IL_0029: callvirt instance int32 System.Array::get_Length()
			IL_002e: ble.un.s IL_0035

			IL_0030: call void System.ThrowHelper::ThrowIndexArgumentOutOfRange_NeedNonNegNumException()

			IL_0035: ldarg.1
			IL_0036: callvirt instance int32 System.Array::get_Length()
			IL_003b: ldarg.2
			IL_003c: sub
			IL_003d: ldarg.0
			IL_003e: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/KeyCollection<!TKey, !TValue>::_dictionary
			IL_0043: callvirt instance int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::get_Count()
			IL_0048: bge.s IL_0050

			IL_004a: ldc.i4.5
			IL_004b: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

			IL_0050: ldarg.1
			IL_0051: isinst !TKey[]
			IL_0056: stloc.0
			IL_0057: ldloc.0
			IL_0058: brfalse.s IL_0063

			IL_005a: ldarg.0
			IL_005b: ldloc.0
			IL_005c: ldarg.2
			IL_005d: call instance void class System.Collections.Generic.Dictionary`2/KeyCollection<!TKey, !TValue>::CopyTo(!0[], int32)
			IL_0062: ret

			IL_0063: ldarg.1
			IL_0064: isinst object[]
			IL_0069: stloc.1
			IL_006a: ldloc.1
			IL_006b: brtrue.s IL_0072

			IL_006d: call void System.ThrowHelper::ThrowArgumentException_Argument_InvalidArrayType()

			IL_0072: ldarg.0
			IL_0073: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/KeyCollection<!TKey, !TValue>::_dictionary
			IL_0078: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
			IL_007d: stloc.2
			IL_007e: ldarg.0
			IL_007f: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/KeyCollection<!TKey, !TValue>::_dictionary
			IL_0084: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
			IL_0089: stloc.3
			.try
			{
				IL_008a: ldc.i4.0
				IL_008b: stloc.s 4
				IL_008d: br.s IL_00bf
				// loop start (head: IL_00bf)
					IL_008f: ldloc.3
					IL_0090: ldloc.s 4
					IL_0092: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
					IL_0097: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
					IL_009c: ldc.i4.m1
					IL_009d: blt.s IL_00b9

					IL_009f: ldloc.1
					IL_00a0: ldarg.2
					IL_00a1: dup
					IL_00a2: ldc.i4.1
					IL_00a3: add
					IL_00a4: starg.s index
					IL_00a6: ldloc.3
					IL_00a7: ldloc.s 4
					IL_00a9: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
					IL_00ae: ldfld !0 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::key
					IL_00b3: box !TKey
					IL_00b8: stelem.ref

					IL_00b9: ldloc.s 4
					IL_00bb: ldc.i4.1
					IL_00bc: add
					IL_00bd: stloc.s 4

					IL_00bf: ldloc.s 4
					IL_00c1: ldloc.2
					IL_00c2: blt.s IL_008f
				// end loop

				IL_00c4: leave.s IL_00ce
			} // end .try
			catch System.ArrayTypeMismatchException
			{
				IL_00c6: pop
				IL_00c7: call void System.ThrowHelper::ThrowArgumentException_Argument_InvalidArrayType()
				IL_00cc: leave.s IL_00ce
			} // end handler

			IL_00ce: ret
		} // end of method KeyCollection::System.Collections.ICollection.CopyTo

		.method private final hidebysig specialname newslot virtual 
			instance bool System.Collections.ICollection.get_IsSynchronized () cil managed 
		{
			.override method instance bool System.Collections.ICollection::get_IsSynchronized()
			// Method begins at RVA 0x40f0b
			// Code size 2 (0x2)
			.maxstack 8

			IL_0000: ldc.i4.0
			IL_0001: ret
		} // end of method KeyCollection::System.Collections.ICollection.get_IsSynchronized

		.method private final hidebysig specialname newslot virtual 
			instance object System.Collections.ICollection.get_SyncRoot () cil managed 
		{
			.override method instance object System.Collections.ICollection::get_SyncRoot()
			// Method begins at RVA 0x165920
			// Code size 12 (0xc)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/KeyCollection<!TKey, !TValue>::_dictionary
			IL_0006: callvirt instance object System.Collections.ICollection::get_SyncRoot()
			IL_000b: ret
		} // end of method KeyCollection::System.Collections.ICollection.get_SyncRoot

		// Properties
		.property instance int32 Count()
		{
			.get instance int32 System.Collections.Generic.Dictionary`2/KeyCollection::get_Count()
		}
		.property instance bool 'System.Collections.Generic.ICollection<TKey>.IsReadOnly'()
		{
			.get instance bool System.Collections.Generic.Dictionary`2/KeyCollection::'System.Collections.Generic.ICollection<TKey>.get_IsReadOnly'()
		}
		.property instance bool System.Collections.ICollection.IsSynchronized()
		{
			.get instance bool System.Collections.Generic.Dictionary`2/KeyCollection::System.Collections.ICollection.get_IsSynchronized()
		}
		.property instance object System.Collections.ICollection.SyncRoot()
		{
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
			.get instance object System.Collections.Generic.Dictionary`2/KeyCollection::System.Collections.ICollection.get_SyncRoot()
		}

	} // end of class KeyCollection

	.class nested public auto ansi sealed beforefieldinit ValueCollection<TKey, TValue>
		extends System.Object
		implements .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
			01 00 02 00 00 00 00 01 00 00
		)
		class System.Collections.Generic.ICollection`1<!TValue>,
		           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
			01 00 02 00 00 00 00 01 00 00
		)
		class System.Collections.Generic.IEnumerable`1<!TValue>,
		           System.Collections.IEnumerable,
		           System.Collections.ICollection,
		           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
			01 00 02 00 00 00 00 01 00 00
		)
		class System.Collections.Generic.IReadOnlyCollection`1<!TValue>
	{
		.custom instance void System.Diagnostics.DebuggerTypeProxyAttribute::.ctor(class System.Type) = (
			01 00 3f 53 79 73 74 65 6d 2e 43 6f 6c 6c 65 63
			74 69 6f 6e 73 2e 47 65 6e 65 72 69 63 2e 44 69
			63 74 69 6f 6e 61 72 79 56 61 6c 75 65 43 6f 6c
			6c 65 63 74 69 6f 6e 44 65 62 75 67 56 69 65 77
			60 32 00 00
		)
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.custom instance void System.Diagnostics.DebuggerDisplayAttribute::.ctor(string) = (
			01 00 0f 43 6f 75 6e 74 20 3d 20 7b 43 6f 75 6e
			74 7d 00 00
		)
		.param type TValue
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Nested Types
		.class nested public sequential ansi sealed beforefieldinit Enumerator<TKey, TValue>
			extends System.ValueType
			implements .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 00 01 00 00
			)
			class System.Collections.Generic.IEnumerator`1<!TValue>,
			           System.IDisposable,
			           System.Collections.IEnumerator
		{
			.param type TValue
				.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
					01 00 02 00 00
				)
			// Fields
			.field private initonly class System.Collections.Generic.Dictionary`2<!TKey, !TValue> _dictionary
			.field private int32 _index
			.field private initonly int32 _version
			.field private !TValue _currentValue

			// Methods
			.method assembly hidebysig specialname rtspecialname 
				instance void .ctor (
					class System.Collections.Generic.Dictionary`2<!TKey, !TValue> dictionary
				) cil managed 
			{
				// Method begins at RVA 0x165c35
				// Code size 39 (0x27)
				.maxstack 8

				IL_0000: ldarg.0
				IL_0001: ldarg.1
				IL_0002: stfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_dictionary
				IL_0007: ldarg.0
				IL_0008: ldarg.1
				IL_0009: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_version
				IL_000e: stfld int32 valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_version
				IL_0013: ldarg.0
				IL_0014: ldc.i4.0
				IL_0015: stfld int32 valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_index
				IL_001a: ldarg.0
				IL_001b: ldflda !1 valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_currentValue
				IL_0020: initobj !TValue
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
				// Method begins at RVA 0x165c60
				// Code size 135 (0x87)
				.maxstack 4
				.locals (
					[0] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>&,
					[1] int32
				)

				IL_0000: ldarg.0
				IL_0001: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_version
				IL_0006: ldarg.0
				IL_0007: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_dictionary
				IL_000c: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_version
				IL_0011: beq.s IL_0053

				IL_0013: call void System.ThrowHelper::ThrowInvalidOperationException_InvalidOperation_EnumFailedVersion()
				IL_0018: br.s IL_0053
				// loop start (head: IL_0053)
					IL_001a: ldarg.0
					IL_001b: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_dictionary
					IL_0020: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
					IL_0025: ldarg.0
					IL_0026: ldarg.0
					IL_0027: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_index
					IL_002c: stloc.1
					IL_002d: ldloc.1
					IL_002e: ldc.i4.1
					IL_002f: add
					IL_0030: stfld int32 valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_index
					IL_0035: ldloc.1
					IL_0036: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
					IL_003b: stloc.0
					IL_003c: ldloc.0
					IL_003d: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
					IL_0042: ldc.i4.m1
					IL_0043: blt.s IL_0053

					IL_0045: ldarg.0
					IL_0046: ldloc.0
					IL_0047: ldfld !1 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::'value'
					IL_004c: stfld !1 valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_currentValue
					IL_0051: ldc.i4.1
					IL_0052: ret

					IL_0053: ldarg.0
					IL_0054: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_index
					IL_0059: ldarg.0
					IL_005a: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_dictionary
					IL_005f: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
					IL_0064: blt.un.s IL_001a
				// end loop

				IL_0066: ldarg.0
				IL_0067: ldarg.0
				IL_0068: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_dictionary
				IL_006d: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
				IL_0072: ldc.i4.1
				IL_0073: add
				IL_0074: stfld int32 valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_index
				IL_0079: ldarg.0
				IL_007a: ldflda !1 valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_currentValue
				IL_007f: initobj !TValue
				IL_0085: ldc.i4.0
				IL_0086: ret
			} // end of method Enumerator::MoveNext

			.method public final hidebysig specialname newslot virtual 
				instance !TValue get_Current () cil managed 
			{
				.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
					01 00 01 00 00
				)
				// Method begins at RVA 0x165cf3
				// Code size 7 (0x7)
				.maxstack 8

				IL_0000: ldarg.0
				IL_0001: ldfld !1 valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_currentValue
				IL_0006: ret
			} // end of method Enumerator::get_Current

			.method private final hidebysig specialname newslot virtual 
				instance object System.Collections.IEnumerator.get_Current () cil managed 
			{
				.override method instance object System.Collections.IEnumerator::get_Current()
				// Method begins at RVA 0x165cfb
				// Code size 46 (0x2e)
				.maxstack 8

				IL_0000: ldarg.0
				IL_0001: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_index
				IL_0006: brfalse.s IL_001d

				IL_0008: ldarg.0
				IL_0009: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_index
				IL_000e: ldarg.0
				IL_000f: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_dictionary
				IL_0014: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
				IL_0019: ldc.i4.1
				IL_001a: add
				IL_001b: bne.un.s IL_0022

				IL_001d: call void System.ThrowHelper::ThrowInvalidOperationException_InvalidOperation_EnumOpCantHappen()

				IL_0022: ldarg.0
				IL_0023: ldfld !1 valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_currentValue
				IL_0028: box !TValue
				IL_002d: ret
			} // end of method Enumerator::System.Collections.IEnumerator.get_Current

			.method private final hidebysig newslot virtual 
				instance void System.Collections.IEnumerator.Reset () cil managed 
			{
				.override method instance void System.Collections.IEnumerator::Reset()
				// Method begins at RVA 0x165d2a
				// Code size 44 (0x2c)
				.maxstack 8

				IL_0000: ldarg.0
				IL_0001: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_version
				IL_0006: ldarg.0
				IL_0007: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_dictionary
				IL_000c: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_version
				IL_0011: beq.s IL_0018

				IL_0013: call void System.ThrowHelper::ThrowInvalidOperationException_InvalidOperation_EnumFailedVersion()

				IL_0018: ldarg.0
				IL_0019: ldc.i4.0
				IL_001a: stfld int32 valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_index
				IL_001f: ldarg.0
				IL_0020: ldflda !1 valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::_currentValue
				IL_0025: initobj !TValue
				IL_002b: ret
			} // end of method Enumerator::System.Collections.IEnumerator.Reset

			// Properties
			.property instance !TValue Current()
			{
				.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
					01 00 01 00 00
				)
				.get instance !1 System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator::get_Current()
			}
			.property instance object System.Collections.IEnumerator.Current()
			{
				.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
					01 00 02 00 00
				)
				.get instance object System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator::System.Collections.IEnumerator.get_Current()
			}

		} // end of class Enumerator


		// Fields
		.field private initonly class System.Collections.Generic.Dictionary`2<!TKey, !TValue> _dictionary

		// Methods
		.method public hidebysig specialname rtspecialname 
			instance void .ctor (
				class System.Collections.Generic.Dictionary`2<!TKey, !TValue> dictionary
			) cil managed 
		{
			.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
			// Method begins at RVA 0x165a4f
			// Code size 23 (0x17)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: call instance void System.Object::.ctor()
			IL_0006: ldarg.1
			IL_0007: brtrue.s IL_000f

			IL_0009: ldc.i4.1
			IL_000a: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

			IL_000f: ldarg.0
			IL_0010: ldarg.1
			IL_0011: stfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/ValueCollection<!TKey, !TValue>::_dictionary
			IL_0016: ret
		} // end of method ValueCollection::.ctor

		.method public hidebysig 
			instance valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue> GetEnumerator () cil managed 
		{
			// Method begins at RVA 0x165a67
			// Code size 12 (0xc)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/ValueCollection<!TKey, !TValue>::_dictionary
			IL_0006: newobj instance void valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::.ctor(class System.Collections.Generic.Dictionary`2<!0, !1>)
			IL_000b: ret
		} // end of method ValueCollection::GetEnumerator

		.method public final hidebysig newslot virtual 
			instance void CopyTo (
				!TValue[] 'array',
				int32 index
			) cil managed 
		{
			.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
			// Method begins at RVA 0x165a74
			// Code size 122 (0x7a)
			.maxstack 4
			.locals (
				[0] int32,
				[1] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>[],
				[2] int32
			)

			IL_0000: ldarg.1
			IL_0001: brtrue.s IL_0009

			IL_0003: ldc.i4.2
			IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

			IL_0009: ldarg.2
			IL_000a: conv.u8
			IL_000b: ldarg.1
			IL_000c: ldlen
			IL_000d: conv.i4
			IL_000e: conv.i8
			IL_000f: ble.s IL_0016

			IL_0011: call void System.ThrowHelper::ThrowIndexArgumentOutOfRange_NeedNonNegNumException()

			IL_0016: ldarg.1
			IL_0017: ldlen
			IL_0018: conv.i4
			IL_0019: ldarg.2
			IL_001a: sub
			IL_001b: ldarg.0
			IL_001c: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/ValueCollection<!TKey, !TValue>::_dictionary
			IL_0021: callvirt instance int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::get_Count()
			IL_0026: bge.s IL_002e

			IL_0028: ldc.i4.5
			IL_0029: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

			IL_002e: ldarg.0
			IL_002f: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/ValueCollection<!TKey, !TValue>::_dictionary
			IL_0034: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
			IL_0039: stloc.0
			IL_003a: ldarg.0
			IL_003b: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/ValueCollection<!TKey, !TValue>::_dictionary
			IL_0040: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
			IL_0045: stloc.1
			IL_0046: ldc.i4.0
			IL_0047: stloc.2
			IL_0048: br.s IL_0075
			// loop start (head: IL_0075)
				IL_004a: ldloc.1
				IL_004b: ldloc.2
				IL_004c: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
				IL_0051: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
				IL_0056: ldc.i4.m1
				IL_0057: blt.s IL_0071

				IL_0059: ldarg.1
				IL_005a: ldarg.2
				IL_005b: dup
				IL_005c: ldc.i4.1
				IL_005d: add
				IL_005e: starg.s index
				IL_0060: ldloc.1
				IL_0061: ldloc.2
				IL_0062: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
				IL_0067: ldfld !1 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::'value'
				IL_006c: stelem !TValue

				IL_0071: ldloc.2
				IL_0072: ldc.i4.1
				IL_0073: add
				IL_0074: stloc.2

				IL_0075: ldloc.2
				IL_0076: ldloc.0
				IL_0077: blt.s IL_004a
			// end loop

			IL_0079: ret
		} // end of method ValueCollection::CopyTo

		.method public final hidebysig specialname newslot virtual 
			instance int32 get_Count () cil managed 
		{
			// Method begins at RVA 0x165afa
			// Code size 12 (0xc)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/ValueCollection<!TKey, !TValue>::_dictionary
			IL_0006: callvirt instance int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::get_Count()
			IL_000b: ret
		} // end of method ValueCollection::get_Count

		.method private final hidebysig specialname newslot virtual 
			instance bool 'System.Collections.Generic.ICollection<TValue>.get_IsReadOnly' () cil managed 
		{
			.override method instance bool class System.Collections.Generic.ICollection`1<!TValue>::get_IsReadOnly()
			// Method begins at RVA 0x40f0e
			// Code size 2 (0x2)
			.maxstack 8

			IL_0000: ldc.i4.1
			IL_0001: ret
		} // end of method ValueCollection::'System.Collections.Generic.ICollection<TValue>.get_IsReadOnly'

		.method private final hidebysig newslot virtual 
			instance void 'System.Collections.Generic.ICollection<TValue>.Add' (
				!TValue item
			) cil managed 
		{
			.override method instance void class System.Collections.Generic.ICollection`1<!TValue>::Add(!0)
			// Method begins at RVA 0x165b07
			// Code size 8 (0x8)
			.maxstack 8

			IL_0000: ldc.i4.s 19
			IL_0002: call void System.ThrowHelper::ThrowNotSupportedException(valuetype System.ExceptionResource)
			IL_0007: ret
		} // end of method ValueCollection::'System.Collections.Generic.ICollection<TValue>.Add'

		.method private final hidebysig newslot virtual 
			instance bool 'System.Collections.Generic.ICollection<TValue>.Remove' (
				!TValue item
			) cil managed 
		{
			.override method instance bool class System.Collections.Generic.ICollection`1<!TValue>::Remove(!0)
			// Method begins at RVA 0x165b10
			// Code size 9 (0x9)
			.maxstack 8

			IL_0000: ldc.i4.s 19
			IL_0002: call void System.ThrowHelper::ThrowNotSupportedException(valuetype System.ExceptionResource)
			IL_0007: ldc.i4.0
			IL_0008: ret
		} // end of method ValueCollection::'System.Collections.Generic.ICollection<TValue>.Remove'

		.method private final hidebysig newslot virtual 
			instance void 'System.Collections.Generic.ICollection<TValue>.Clear' () cil managed 
		{
			.override method instance void class System.Collections.Generic.ICollection`1<!TValue>::Clear()
			// Method begins at RVA 0x165b07
			// Code size 8 (0x8)
			.maxstack 8

			IL_0000: ldc.i4.s 19
			IL_0002: call void System.ThrowHelper::ThrowNotSupportedException(valuetype System.ExceptionResource)
			IL_0007: ret
		} // end of method ValueCollection::'System.Collections.Generic.ICollection<TValue>.Clear'

		.method private final hidebysig newslot virtual 
			instance bool 'System.Collections.Generic.ICollection<TValue>.Contains' (
				!TValue item
			) cil managed 
		{
			.override method instance bool class System.Collections.Generic.ICollection`1<!TValue>::Contains(!0)
			// Method begins at RVA 0x165b1a
			// Code size 13 (0xd)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/ValueCollection<!TKey, !TValue>::_dictionary
			IL_0006: ldarg.1
			IL_0007: callvirt instance bool class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::ContainsValue(!1)
			IL_000c: ret
		} // end of method ValueCollection::'System.Collections.Generic.ICollection<TValue>.Contains'

		.method private final hidebysig newslot virtual 
			instance class System.Collections.Generic.IEnumerator`1<!TValue> 'System.Collections.Generic.IEnumerable<TValue>.GetEnumerator' () cil managed 
		{
			.override method instance class System.Collections.Generic.IEnumerator`1<!0> class System.Collections.Generic.IEnumerable`1<!TValue>::GetEnumerator()
			// Method begins at RVA 0x165b28
			// Code size 17 (0x11)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/ValueCollection<!TKey, !TValue>::_dictionary
			IL_0006: newobj instance void valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::.ctor(class System.Collections.Generic.Dictionary`2<!0, !1>)
			IL_000b: box valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>
			IL_0010: ret
		} // end of method ValueCollection::'System.Collections.Generic.IEnumerable<TValue>.GetEnumerator'

		.method private final hidebysig newslot virtual 
			instance class System.Collections.IEnumerator System.Collections.IEnumerable.GetEnumerator () cil managed 
		{
			.override method instance class System.Collections.IEnumerator System.Collections.IEnumerable::GetEnumerator()
			// Method begins at RVA 0x165b28
			// Code size 17 (0x11)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/ValueCollection<!TKey, !TValue>::_dictionary
			IL_0006: newobj instance void valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>::.ctor(class System.Collections.Generic.Dictionary`2<!0, !1>)
			IL_000b: box valuetype System.Collections.Generic.Dictionary`2/ValueCollection/Enumerator<!TKey, !TValue>
			IL_0010: ret
		} // end of method ValueCollection::System.Collections.IEnumerable.GetEnumerator

		.method private final hidebysig newslot virtual 
			instance void System.Collections.ICollection.CopyTo (
				class System.Array 'array',
				int32 index
			) cil managed 
		{
			.override method instance void System.Collections.ICollection::CopyTo(class System.Array, int32)
			// Method begins at RVA 0x165b3c
			// Code size 207 (0xcf)
			.maxstack 4
			.locals (
				[0] !TValue[],
				[1] object[],
				[2] int32,
				[3] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>[],
				[4] int32
			)

			IL_0000: ldarg.1
			IL_0001: brtrue.s IL_0009

			IL_0003: ldc.i4.2
			IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

			IL_0009: ldarg.1
			IL_000a: callvirt instance int32 System.Array::get_Rank()
			IL_000f: ldc.i4.1
			IL_0010: beq.s IL_0018

			IL_0012: ldc.i4.7
			IL_0013: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

			IL_0018: ldarg.1
			IL_0019: ldc.i4.0
			IL_001a: callvirt instance int32 System.Array::GetLowerBound(int32)
			IL_001f: brfalse.s IL_0027

			IL_0021: ldc.i4.8
			IL_0022: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

			IL_0027: ldarg.2
			IL_0028: ldarg.1
			IL_0029: callvirt instance int32 System.Array::get_Length()
			IL_002e: ble.un.s IL_0035

			IL_0030: call void System.ThrowHelper::ThrowIndexArgumentOutOfRange_NeedNonNegNumException()

			IL_0035: ldarg.1
			IL_0036: callvirt instance int32 System.Array::get_Length()
			IL_003b: ldarg.2
			IL_003c: sub
			IL_003d: ldarg.0
			IL_003e: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/ValueCollection<!TKey, !TValue>::_dictionary
			IL_0043: callvirt instance int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::get_Count()
			IL_0048: bge.s IL_0050

			IL_004a: ldc.i4.5
			IL_004b: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

			IL_0050: ldarg.1
			IL_0051: isinst !TValue[]
			IL_0056: stloc.0
			IL_0057: ldloc.0
			IL_0058: brfalse.s IL_0063

			IL_005a: ldarg.0
			IL_005b: ldloc.0
			IL_005c: ldarg.2
			IL_005d: call instance void class System.Collections.Generic.Dictionary`2/ValueCollection<!TKey, !TValue>::CopyTo(!1[], int32)
			IL_0062: ret

			IL_0063: ldarg.1
			IL_0064: isinst object[]
			IL_0069: stloc.1
			IL_006a: ldloc.1
			IL_006b: brtrue.s IL_0072

			IL_006d: call void System.ThrowHelper::ThrowArgumentException_Argument_InvalidArrayType()

			IL_0072: ldarg.0
			IL_0073: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/ValueCollection<!TKey, !TValue>::_dictionary
			IL_0078: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
			IL_007d: stloc.2
			IL_007e: ldarg.0
			IL_007f: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/ValueCollection<!TKey, !TValue>::_dictionary
			IL_0084: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
			IL_0089: stloc.3
			.try
			{
				IL_008a: ldc.i4.0
				IL_008b: stloc.s 4
				IL_008d: br.s IL_00bf
				// loop start (head: IL_00bf)
					IL_008f: ldloc.3
					IL_0090: ldloc.s 4
					IL_0092: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
					IL_0097: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
					IL_009c: ldc.i4.m1
					IL_009d: blt.s IL_00b9

					IL_009f: ldloc.1
					IL_00a0: ldarg.2
					IL_00a1: dup
					IL_00a2: ldc.i4.1
					IL_00a3: add
					IL_00a4: starg.s index
					IL_00a6: ldloc.3
					IL_00a7: ldloc.s 4
					IL_00a9: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
					IL_00ae: ldfld !1 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::'value'
					IL_00b3: box !TValue
					IL_00b8: stelem.ref

					IL_00b9: ldloc.s 4
					IL_00bb: ldc.i4.1
					IL_00bc: add
					IL_00bd: stloc.s 4

					IL_00bf: ldloc.s 4
					IL_00c1: ldloc.2
					IL_00c2: blt.s IL_008f
				// end loop

				IL_00c4: leave.s IL_00ce
			} // end .try
			catch System.ArrayTypeMismatchException
			{
				IL_00c6: pop
				IL_00c7: call void System.ThrowHelper::ThrowArgumentException_Argument_InvalidArrayType()
				IL_00cc: leave.s IL_00ce
			} // end handler

			IL_00ce: ret
		} // end of method ValueCollection::System.Collections.ICollection.CopyTo

		.method private final hidebysig specialname newslot virtual 
			instance bool System.Collections.ICollection.get_IsSynchronized () cil managed 
		{
			.override method instance bool System.Collections.ICollection::get_IsSynchronized()
			// Method begins at RVA 0x40f0b
			// Code size 2 (0x2)
			.maxstack 8

			IL_0000: ldc.i4.0
			IL_0001: ret
		} // end of method ValueCollection::System.Collections.ICollection.get_IsSynchronized

		.method private final hidebysig specialname newslot virtual 
			instance object System.Collections.ICollection.get_SyncRoot () cil managed 
		{
			.override method instance object System.Collections.ICollection::get_SyncRoot()
			// Method begins at RVA 0x165c28
			// Code size 12 (0xc)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: ldfld class System.Collections.Generic.Dictionary`2<!0, !1> class System.Collections.Generic.Dictionary`2/ValueCollection<!TKey, !TValue>::_dictionary
			IL_0006: callvirt instance object System.Collections.ICollection::get_SyncRoot()
			IL_000b: ret
		} // end of method ValueCollection::System.Collections.ICollection.get_SyncRoot

		// Properties
		.property instance int32 Count()
		{
			.get instance int32 System.Collections.Generic.Dictionary`2/ValueCollection::get_Count()
		}
		.property instance bool 'System.Collections.Generic.ICollection<TValue>.IsReadOnly'()
		{
			.get instance bool System.Collections.Generic.Dictionary`2/ValueCollection::'System.Collections.Generic.ICollection<TValue>.get_IsReadOnly'()
		}
		.property instance bool System.Collections.ICollection.IsSynchronized()
		{
			.get instance bool System.Collections.Generic.Dictionary`2/ValueCollection::System.Collections.ICollection.get_IsSynchronized()
		}
		.property instance object System.Collections.ICollection.SyncRoot()
		{
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
			.get instance object System.Collections.Generic.Dictionary`2/ValueCollection::System.Collections.ICollection.get_SyncRoot()
		}

	} // end of class ValueCollection


	// Fields
	.field private int32[] _buckets
	.field private valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>[] _entries
	.field private int32 _count
	.field private int32 _freeList
	.field private int32 _freeCount
	.field private int32 _version
	.field private class System.Collections.Generic.IEqualityComparer`1<!TKey> _comparer
	.field private class System.Collections.Generic.Dictionary`2/KeyCollection<!TKey, !TValue> _keys
	.field private class System.Collections.Generic.Dictionary`2/ValueCollection<!TKey, !TValue> _values

	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x1640c7
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: ldnull
		IL_0003: call instance void class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::.ctor(int32, class System.Collections.Generic.IEqualityComparer`1<!0>)
		IL_0008: ret
	} // end of method Dictionary`2::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 capacity
		) cil managed 
	{
		// Method begins at RVA 0x1640d1
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldnull
		IL_0003: call instance void class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::.ctor(int32, class System.Collections.Generic.IEqualityComparer`1<!0>)
		IL_0008: ret
	} // end of method Dictionary`2::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			class System.Collections.Generic.IEqualityComparer`1<!TKey> comparer
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		// Method begins at RVA 0x1640db
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: ldarg.1
		IL_0003: call instance void class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::.ctor(int32, class System.Collections.Generic.IEqualityComparer`1<!0>)
		IL_0008: ret
	} // end of method Dictionary`2::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			int32 capacity,
			class System.Collections.Generic.IEqualityComparer`1<!TKey> comparer
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		// Method begins at RVA 0x1640e8
		// Code size 159 (0x9f)
		.maxstack 2

		IL_0000: ldarg.0
		IL_0001: call instance void System.Object::.ctor()
		IL_0006: ldarg.1
		IL_0007: ldc.i4.0
		IL_0008: bge.s IL_0011

		IL_000a: ldc.i4.s 22
		IL_000c: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument)

		IL_0011: ldarg.1
		IL_0012: ldc.i4.0
		IL_0013: ble.s IL_001d

		IL_0015: ldarg.0
		IL_0016: ldarg.1
		IL_0017: call instance int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::Initialize(int32)
		IL_001c: pop

		IL_001d: ldarg.2
		IL_001e: brfalse.s IL_002f

		IL_0020: ldarg.2
		IL_0021: call class System.Collections.Generic.EqualityComparer`1<!0> class System.Collections.Generic.EqualityComparer`1<!TKey>::get_Default()
		IL_0026: beq.s IL_002f

		IL_0028: ldarg.0
		IL_0029: ldarg.2
		IL_002a: stfld class System.Collections.Generic.IEqualityComparer`1<!0> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_comparer

		IL_002f: ldtoken !TKey
		IL_0034: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0039: ldtoken System.String
		IL_003e: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0043: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0048: brfalse.s IL_009e

		IL_004a: ldarg.0
		IL_004b: ldfld class System.Collections.Generic.IEqualityComparer`1<!0> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_comparer
		IL_0050: brtrue.s IL_0063

		IL_0052: ldarg.0
		IL_0053: ldsfld class System.Collections.Generic.NonRandomizedStringEqualityComparer System.Collections.Generic.NonRandomizedStringEqualityComparer::WrappedAroundDefaultComparer
		IL_0058: castclass class System.Collections.Generic.IEqualityComparer`1<!TKey>
		IL_005d: stfld class System.Collections.Generic.IEqualityComparer`1<!0> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_comparer
		IL_0062: ret

		IL_0063: ldarg.0
		IL_0064: ldfld class System.Collections.Generic.IEqualityComparer`1<!0> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_comparer
		IL_0069: call class System.StringComparer System.StringComparer::get_Ordinal()
		IL_006e: bne.un.s IL_0081

		IL_0070: ldarg.0
		IL_0071: ldsfld class System.Collections.Generic.NonRandomizedStringEqualityComparer System.Collections.Generic.NonRandomizedStringEqualityComparer::WrappedAroundStringComparerOrdinal
		IL_0076: castclass class System.Collections.Generic.IEqualityComparer`1<!TKey>
		IL_007b: stfld class System.Collections.Generic.IEqualityComparer`1<!0> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_comparer
		IL_0080: ret

		IL_0081: ldarg.0
		IL_0082: ldfld class System.Collections.Generic.IEqualityComparer`1<!0> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_comparer
		IL_0087: call class System.StringComparer System.StringComparer::get_OrdinalIgnoreCase()
		IL_008c: bne.un.s IL_009e

		IL_008e: ldarg.0
		IL_008f: ldsfld class System.Collections.Generic.NonRandomizedStringEqualityComparer System.Collections.Generic.NonRandomizedStringEqualityComparer::WrappedAroundStringComparerOrdinalIgnoreCase
		IL_0094: castclass class System.Collections.Generic.IEqualityComparer`1<!TKey>
		IL_0099: stfld class System.Collections.Generic.IEqualityComparer`1<!0> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_comparer

		IL_009e: ret
	} // end of method Dictionary`2::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			class System.Collections.Generic.IDictionary`2<!TKey, !TValue> dictionary
		) cil managed 
	{
		// Method begins at RVA 0x164193
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldnull
		IL_0003: call instance void class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::.ctor(class System.Collections.Generic.IDictionary`2<!0, !1>, class System.Collections.Generic.IEqualityComparer`1<!0>)
		IL_0008: ret
	} // end of method Dictionary`2::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			class System.Collections.Generic.IDictionary`2<!TKey, !TValue> dictionary,
			class System.Collections.Generic.IEqualityComparer`1<!TKey> comparer
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		// Method begins at RVA 0x1641a0
		// Code size 193 (0xc1)
		.maxstack 4
		.locals (
			[0] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>,
			[1] int32,
			[2] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>[],
			[3] int32,
			[4] class System.Collections.Generic.IEnumerator`1<valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>>,
			[5] valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: brtrue.s IL_0007

		IL_0004: ldc.i4.0
		IL_0005: br.s IL_000d

		IL_0007: ldarg.1
		IL_0008: callvirt instance int32 class System.Collections.Generic.ICollection`1<valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>>::get_Count()

		IL_000d: ldarg.2
		IL_000e: call instance void class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::.ctor(int32, class System.Collections.Generic.IEqualityComparer`1<!0>)
		IL_0013: ldarg.1
		IL_0014: brtrue.s IL_001c

		IL_0016: ldc.i4.1
		IL_0017: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_001c: ldarg.1
		IL_001d: callvirt instance class System.Type System.Object::GetType()
		IL_0022: ldtoken class System.Collections.Generic.Dictionary`2<!TKey, !TValue>
		IL_0027: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_002c: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0031: brfalse.s IL_0082

		IL_0033: ldarg.1
		IL_0034: castclass class System.Collections.Generic.Dictionary`2<!TKey, !TValue>
		IL_0039: stloc.0
		IL_003a: ldloc.0
		IL_003b: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
		IL_0040: stloc.1
		IL_0041: ldloc.0
		IL_0042: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
		IL_0047: stloc.2
		IL_0048: ldc.i4.0
		IL_0049: stloc.3
		IL_004a: br.s IL_007d
		// loop start (head: IL_007d)
			IL_004c: ldloc.2
			IL_004d: ldloc.3
			IL_004e: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0053: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_0058: ldc.i4.m1
			IL_0059: blt.s IL_0079

			IL_005b: ldarg.0
			IL_005c: ldloc.2
			IL_005d: ldloc.3
			IL_005e: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0063: ldfld !0 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::key
			IL_0068: ldloc.2
			IL_0069: ldloc.3
			IL_006a: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_006f: ldfld !1 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::'value'
			IL_0074: call instance void class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::Add(!0, !1)

			IL_0079: ldloc.3
			IL_007a: ldc.i4.1
			IL_007b: add
			IL_007c: stloc.3

			IL_007d: ldloc.3
			IL_007e: ldloc.1
			IL_007f: blt.s IL_004c
		// end loop

		IL_0081: ret

		IL_0082: ldarg.1
		IL_0083: callvirt instance class System.Collections.Generic.IEnumerator`1<!0> class System.Collections.Generic.IEnumerable`1<valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>>::GetEnumerator()
		IL_0088: stloc.s 4
		.try
		{
			IL_008a: br.s IL_00a9
			// loop start (head: IL_00a9)
				IL_008c: ldloc.s 4
				IL_008e: callvirt instance !0 class System.Collections.Generic.IEnumerator`1<valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>>::get_Current()
				IL_0093: stloc.s 5
				IL_0095: ldarg.0
				IL_0096: ldloca.s 5
				IL_0098: call instance !0 valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::get_Key()
				IL_009d: ldloca.s 5
				IL_009f: call instance !1 valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::get_Value()
				IL_00a4: call instance void class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::Add(!0, !1)

				IL_00a9: ldloc.s 4
				IL_00ab: callvirt instance bool System.Collections.IEnumerator::MoveNext()
				IL_00b0: brtrue.s IL_008c
			// end loop

			IL_00b2: leave.s IL_00c0
		} // end .try
		finally
		{
			IL_00b4: ldloc.s 4
			IL_00b6: brfalse.s IL_00bf

			IL_00b8: ldloc.s 4
			IL_00ba: callvirt instance void System.IDisposable::Dispose()

			IL_00bf: endfinally
		} // end handler

		IL_00c0: ret
	} // end of method Dictionary`2::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			class System.Collections.Generic.IEnumerable`1<valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>> collection
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 04 00 00 00 01 00 01 01 00 00
			)
		// Method begins at RVA 0x164280
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldnull
		IL_0003: call instance void class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::.ctor(class System.Collections.Generic.IEnumerable`1<valuetype System.Collections.Generic.KeyValuePair`2<!0, !1>>, class System.Collections.Generic.IEqualityComparer`1<!0>)
		IL_0008: ret
	} // end of method Dictionary`2::.ctor

	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			class System.Collections.Generic.IEnumerable`1<valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>> collection,
			class System.Collections.Generic.IEqualityComparer`1<!TKey> comparer
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 04 00 00 00 01 00 01 01 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		// Method begins at RVA 0x16428c
		// Code size 92 (0x5c)
		.maxstack 3
		.locals (
			[0] class System.Collections.Generic.IEnumerator`1<valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>>,
			[1] valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: isinst class System.Collections.Generic.ICollection`1<valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>>
		IL_0007: dup
		IL_0008: brtrue.s IL_000e

		IL_000a: pop
		IL_000b: ldc.i4.0
		IL_000c: br.s IL_0013

		IL_000e: callvirt instance int32 class System.Collections.Generic.ICollection`1<valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>>::get_Count()

		IL_0013: ldarg.2
		IL_0014: call instance void class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::.ctor(int32, class System.Collections.Generic.IEqualityComparer`1<!0>)
		IL_0019: ldarg.1
		IL_001a: brtrue.s IL_0023

		IL_001c: ldc.i4.s 23
		IL_001e: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0023: ldarg.1
		IL_0024: callvirt instance class System.Collections.Generic.IEnumerator`1<!0> class System.Collections.Generic.IEnumerable`1<valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>>::GetEnumerator()
		IL_0029: stloc.0
		.try
		{
			IL_002a: br.s IL_0047
			// loop start (head: IL_0047)
				IL_002c: ldloc.0
				IL_002d: callvirt instance !0 class System.Collections.Generic.IEnumerator`1<valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>>::get_Current()
				IL_0032: stloc.1
				IL_0033: ldarg.0
				IL_0034: ldloca.s 1
				IL_0036: call instance !0 valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::get_Key()
				IL_003b: ldloca.s 1
				IL_003d: call instance !1 valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::get_Value()
				IL_0042: call instance void class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::Add(!0, !1)

				IL_0047: ldloc.0
				IL_0048: callvirt instance bool System.Collections.IEnumerator::MoveNext()
				IL_004d: brtrue.s IL_002c
			// end loop

			IL_004f: leave.s IL_005b
		} // end .try
		finally
		{
			IL_0051: ldloc.0
			IL_0052: brfalse.s IL_005a

			IL_0054: ldloc.0
			IL_0055: callvirt instance void System.IDisposable::Dispose()

			IL_005a: endfinally
		} // end handler

		IL_005b: ret
	} // end of method Dictionary`2::.ctor

	.method family hidebysig specialname rtspecialname 
		instance void .ctor (
			class System.Runtime.Serialization.SerializationInfo info,
			valuetype System.Runtime.Serialization.StreamingContext context
		) cil managed 
	{
		// Method begins at RVA 0x15e41f
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void System.Object::.ctor()
		IL_0006: call class System.Runtime.CompilerServices.ConditionalWeakTable`2<object, class System.Runtime.Serialization.SerializationInfo> System.Collections.HashHelpers::get_SerializationInfoTable()
		IL_000b: ldarg.0
		IL_000c: ldarg.1
		IL_000d: callvirt instance void class System.Runtime.CompilerServices.ConditionalWeakTable`2<object, class System.Runtime.Serialization.SerializationInfo>::Add(!0, !1)
		IL_0012: ret
	} // end of method Dictionary`2::.ctor

	.method public hidebysig specialname 
		instance class System.Collections.Generic.IEqualityComparer`1<!TKey> get_Comparer () cil managed 
	{
		// Method begins at RVA 0x164304
		// Code size 65 (0x41)
		.maxstack 2

		IL_0000: ldtoken !TKey
		IL_0005: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_000a: ldtoken System.String
		IL_000f: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0014: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0019: brfalse.s IL_0031

		IL_001b: ldarg.0
		IL_001c: ldfld class System.Collections.Generic.IEqualityComparer`1<!0> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_comparer
		IL_0021: castclass class System.Collections.Generic.IEqualityComparer`1<string>
		IL_0026: call class System.Collections.Generic.IEqualityComparer`1<string> System.Collections.Generic.IInternalStringEqualityComparer::GetUnderlyingEqualityComparer(class System.Collections.Generic.IEqualityComparer`1<string>)
		IL_002b: castclass class System.Collections.Generic.IEqualityComparer`1<!TKey>
		IL_0030: ret

		IL_0031: ldarg.0
		IL_0032: ldfld class System.Collections.Generic.IEqualityComparer`1<!0> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_comparer
		IL_0037: dup
		IL_0038: brtrue.s IL_0040

		IL_003a: pop
		IL_003b: call class System.Collections.Generic.EqualityComparer`1<!0> class System.Collections.Generic.EqualityComparer`1<!TKey>::get_Default()

		IL_0040: ret
	} // end of method Dictionary`2::get_Comparer

	.method public final hidebysig specialname newslot virtual 
		instance int32 get_Count () cil managed 
	{
		// Method begins at RVA 0x164351
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
		IL_0006: ldarg.0
		IL_0007: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_freeCount
		IL_000c: sub
		IL_000d: ret
	} // end of method Dictionary`2::get_Count

	.method public hidebysig specialname 
		instance class System.Collections.Generic.Dictionary`2/KeyCollection<!TKey, !TValue> get_Keys () cil managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 03 00 00 00 01 00 00 00 00
			)
		// Method begins at RVA 0x164360
		// Code size 26 (0x1a)
		.maxstack 3
		.locals (
			[0] class System.Collections.Generic.Dictionary`2/KeyCollection<!TKey, !TValue>
		)

		IL_0000: ldarg.0
		IL_0001: ldfld class System.Collections.Generic.Dictionary`2/KeyCollection<!0, !1> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_keys
		IL_0006: dup
		IL_0007: brtrue.s IL_0019

		IL_0009: pop
		IL_000a: ldarg.0
		IL_000b: ldarg.0
		IL_000c: newobj instance void class System.Collections.Generic.Dictionary`2/KeyCollection<!TKey, !TValue>::.ctor(class System.Collections.Generic.Dictionary`2<!0, !1>)
		IL_0011: dup
		IL_0012: stloc.0
		IL_0013: stfld class System.Collections.Generic.Dictionary`2/KeyCollection<!0, !1> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_keys
		IL_0018: ldloc.0

		IL_0019: ret
	} // end of method Dictionary`2::get_Keys

	.method private final hidebysig specialname newslot virtual 
		instance class System.Collections.Generic.ICollection`1<!TKey> 'System.Collections.Generic.IDictionary<TKey,TValue>.get_Keys' () cil managed 
	{
		.override method instance class System.Collections.Generic.ICollection`1<!0> class System.Collections.Generic.IDictionary`2<!TKey, !TValue>::get_Keys()
		// Method begins at RVA 0x164386
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance class System.Collections.Generic.Dictionary`2/KeyCollection<!0, !1> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::get_Keys()
		IL_0006: ret
	} // end of method Dictionary`2::'System.Collections.Generic.IDictionary<TKey,TValue>.get_Keys'

	.method private final hidebysig specialname newslot virtual 
		instance class System.Collections.Generic.IEnumerable`1<!TKey> 'System.Collections.Generic.IReadOnlyDictionary<TKey,TValue>.get_Keys' () cil managed 
	{
		.override method instance class System.Collections.Generic.IEnumerable`1<!0> class System.Collections.Generic.IReadOnlyDictionary`2<!TKey, !TValue>::get_Keys()
		// Method begins at RVA 0x164386
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance class System.Collections.Generic.Dictionary`2/KeyCollection<!0, !1> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::get_Keys()
		IL_0006: ret
	} // end of method Dictionary`2::'System.Collections.Generic.IReadOnlyDictionary<TKey,TValue>.get_Keys'

	.method public hidebysig specialname 
		instance class System.Collections.Generic.Dictionary`2/ValueCollection<!TKey, !TValue> get_Values () cil managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 03 00 00 00 01 00 00 00 00
			)
		// Method begins at RVA 0x164390
		// Code size 26 (0x1a)
		.maxstack 3
		.locals (
			[0] class System.Collections.Generic.Dictionary`2/ValueCollection<!TKey, !TValue>
		)

		IL_0000: ldarg.0
		IL_0001: ldfld class System.Collections.Generic.Dictionary`2/ValueCollection<!0, !1> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_values
		IL_0006: dup
		IL_0007: brtrue.s IL_0019

		IL_0009: pop
		IL_000a: ldarg.0
		IL_000b: ldarg.0
		IL_000c: newobj instance void class System.Collections.Generic.Dictionary`2/ValueCollection<!TKey, !TValue>::.ctor(class System.Collections.Generic.Dictionary`2<!0, !1>)
		IL_0011: dup
		IL_0012: stloc.0
		IL_0013: stfld class System.Collections.Generic.Dictionary`2/ValueCollection<!0, !1> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_values
		IL_0018: ldloc.0

		IL_0019: ret
	} // end of method Dictionary`2::get_Values

	.method private final hidebysig specialname newslot virtual 
		instance class System.Collections.Generic.ICollection`1<!TValue> 'System.Collections.Generic.IDictionary<TKey,TValue>.get_Values' () cil managed 
	{
		.override method instance class System.Collections.Generic.ICollection`1<!1> class System.Collections.Generic.IDictionary`2<!TKey, !TValue>::get_Values()
		// Method begins at RVA 0x1643b6
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance class System.Collections.Generic.Dictionary`2/ValueCollection<!0, !1> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::get_Values()
		IL_0006: ret
	} // end of method Dictionary`2::'System.Collections.Generic.IDictionary<TKey,TValue>.get_Values'

	.method private final hidebysig specialname newslot virtual 
		instance class System.Collections.Generic.IEnumerable`1<!TValue> 'System.Collections.Generic.IReadOnlyDictionary<TKey,TValue>.get_Values' () cil managed 
	{
		.override method instance class System.Collections.Generic.IEnumerable`1<!1> class System.Collections.Generic.IReadOnlyDictionary`2<!TKey, !TValue>::get_Values()
		// Method begins at RVA 0x1643b6
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance class System.Collections.Generic.Dictionary`2/ValueCollection<!0, !1> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::get_Values()
		IL_0006: ret
	} // end of method Dictionary`2::'System.Collections.Generic.IReadOnlyDictionary<TKey,TValue>.get_Values'

	.method public final hidebysig specialname newslot virtual 
		instance !TValue get_Item (
			!TKey key
		) cil managed 
	{
		// Method begins at RVA 0x1643c0
		// Code size 39 (0x27)
		.maxstack 2
		.locals (
			[0] !TValue&,
			[1] !TValue
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance !1& class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::FindValue(!0)
		IL_0007: stloc.0
		IL_0008: ldloc.0
		IL_0009: call bool Internal.Runtime.CompilerServices.Unsafe::IsNullRef<!TValue>(!!0&)
		IL_000e: brtrue.s IL_0017

		IL_0010: ldloc.0
		IL_0011: ldobj !TValue
		IL_0016: ret

		IL_0017: ldarg.1
		IL_0018: call void System.ThrowHelper::ThrowKeyNotFoundException<!TKey>(!!0)
		IL_001d: ldloca.s 1
		IL_001f: initobj !TValue
		IL_0025: ldloc.1
		IL_0026: ret
	} // end of method Dictionary`2::get_Item

	.method public final hidebysig specialname newslot virtual 
		instance void set_Item (
			!TKey key,
			!TValue 'value'
		) cil managed 
	{
		// Method begins at RVA 0x1643f4
		// Code size 11 (0xb)
		.maxstack 4
		.locals (
			[0] bool
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldc.i4.1
		IL_0004: call instance bool class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::TryInsert(!0, !1, valuetype System.Collections.Generic.InsertionBehavior)
		IL_0009: stloc.0
		IL_000a: ret
	} // end of method Dictionary`2::set_Item

	.method public final hidebysig newslot virtual 
		instance void Add (
			!TKey key,
			!TValue 'value'
		) cil managed 
	{
		// Method begins at RVA 0x16440c
		// Code size 11 (0xb)
		.maxstack 4
		.locals (
			[0] bool
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldc.i4.2
		IL_0004: call instance bool class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::TryInsert(!0, !1, valuetype System.Collections.Generic.InsertionBehavior)
		IL_0009: stloc.0
		IL_000a: ret
	} // end of method Dictionary`2::Add

	.method private final hidebysig newslot virtual 
		instance void 'System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<TKey,TValue>>.Add' (
			valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue> keyValuePair
		) cil managed 
	{
		.override method instance void class System.Collections.Generic.ICollection`1<valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>>::Add(!0)
		// Method begins at RVA 0x164423
		// Code size 21 (0x15)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarga.s keyValuePair
		IL_0003: call instance !0 valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::get_Key()
		IL_0008: ldarga.s keyValuePair
		IL_000a: call instance !1 valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::get_Value()
		IL_000f: call instance void class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::Add(!0, !1)
		IL_0014: ret
	} // end of method Dictionary`2::'System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<TKey,TValue>>.Add'

	.method private final hidebysig newslot virtual 
		instance bool 'System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<TKey,TValue>>.Contains' (
			valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue> keyValuePair
		) cil managed 
	{
		.override method instance bool class System.Collections.Generic.ICollection`1<valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>>::Contains(!0)
		// Method begins at RVA 0x16443c
		// Code size 51 (0x33)
		.maxstack 3
		.locals (
			[0] !TValue&
		)

		IL_0000: ldarg.0
		IL_0001: ldarga.s keyValuePair
		IL_0003: call instance !0 valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::get_Key()
		IL_0008: call instance !1& class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::FindValue(!0)
		IL_000d: stloc.0
		IL_000e: ldloc.0
		IL_000f: call bool Internal.Runtime.CompilerServices.Unsafe::IsNullRef<!TValue>(!!0&)
		IL_0014: brtrue.s IL_0031

		IL_0016: call class System.Collections.Generic.EqualityComparer`1<!0> class System.Collections.Generic.EqualityComparer`1<!TValue>::get_Default()
		IL_001b: ldloc.0
		IL_001c: ldobj !TValue
		IL_0021: ldarga.s keyValuePair
		IL_0023: call instance !1 valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::get_Value()
		IL_0028: callvirt instance bool class System.Collections.Generic.EqualityComparer`1<!TValue>::Equals(!0, !0)
		IL_002d: brfalse.s IL_0031

		IL_002f: ldc.i4.1
		IL_0030: ret

		IL_0031: ldc.i4.0
		IL_0032: ret
	} // end of method Dictionary`2::'System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<TKey,TValue>>.Contains'

	.method private final hidebysig newslot virtual 
		instance bool 'System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<TKey,TValue>>.Remove' (
			valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue> keyValuePair
		) cil managed 
	{
		.override method instance bool class System.Collections.Generic.ICollection`1<valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>>::Remove(!0)
		// Method begins at RVA 0x16447c
		// Code size 65 (0x41)
		.maxstack 3
		.locals (
			[0] !TValue&
		)

		IL_0000: ldarg.0
		IL_0001: ldarga.s keyValuePair
		IL_0003: call instance !0 valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::get_Key()
		IL_0008: call instance !1& class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::FindValue(!0)
		IL_000d: stloc.0
		IL_000e: ldloc.0
		IL_000f: call bool Internal.Runtime.CompilerServices.Unsafe::IsNullRef<!TValue>(!!0&)
		IL_0014: brtrue.s IL_003f

		IL_0016: call class System.Collections.Generic.EqualityComparer`1<!0> class System.Collections.Generic.EqualityComparer`1<!TValue>::get_Default()
		IL_001b: ldloc.0
		IL_001c: ldobj !TValue
		IL_0021: ldarga.s keyValuePair
		IL_0023: call instance !1 valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::get_Value()
		IL_0028: callvirt instance bool class System.Collections.Generic.EqualityComparer`1<!TValue>::Equals(!0, !0)
		IL_002d: brfalse.s IL_003f

		IL_002f: ldarg.0
		IL_0030: ldarga.s keyValuePair
		IL_0032: call instance !0 valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::get_Key()
		IL_0037: call instance bool class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::Remove(!0)
		IL_003c: pop
		IL_003d: ldc.i4.1
		IL_003e: ret

		IL_003f: ldc.i4.0
		IL_0040: ret
	} // end of method Dictionary`2::'System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<TKey,TValue>>.Remove'

	.method public final hidebysig newslot virtual 
		instance void Clear () cil managed 
	{
		// Method begins at RVA 0x1644cc
		// Code size 66 (0x42)
		.maxstack 3
		.locals (
			[0] int32
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldc.i4.0
		IL_0009: ble.s IL_0041

		IL_000b: ldarg.0
		IL_000c: ldfld int32[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_buckets
		IL_0011: ldc.i4.0
		IL_0012: ldarg.0
		IL_0013: ldfld int32[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_buckets
		IL_0018: ldlen
		IL_0019: conv.i4
		IL_001a: call void System.Array::Clear(class System.Array, int32, int32)
		IL_001f: ldarg.0
		IL_0020: ldc.i4.0
		IL_0021: stfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
		IL_0026: ldarg.0
		IL_0027: ldc.i4.m1
		IL_0028: stfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_freeList
		IL_002d: ldarg.0
		IL_002e: ldc.i4.0
		IL_002f: stfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_freeCount
		IL_0034: ldarg.0
		IL_0035: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
		IL_003a: ldc.i4.0
		IL_003b: ldloc.0
		IL_003c: call void System.Array::Clear(class System.Array, int32, int32)

		IL_0041: ret
	} // end of method Dictionary`2::Clear

	.method public final hidebysig newslot virtual 
		instance bool ContainsKey (
			!TKey key
		) cil managed 
	{
		// Method begins at RVA 0x16451a
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance !1& class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::FindValue(!0)
		IL_0007: call bool Internal.Runtime.CompilerServices.Unsafe::IsNullRef<!TValue>(!!0&)
		IL_000c: ldc.i4.0
		IL_000d: ceq
		IL_000f: ret
	} // end of method Dictionary`2::ContainsKey

	.method public hidebysig 
		instance bool ContainsValue (
			!TValue 'value'
		) cil managed 
	{
		// Method begins at RVA 0x16452c
		// Code size 220 (0xdc)
		.maxstack 3
		.locals (
			[0] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>[],
			[1] int32,
			[2] int32,
			[3] class System.Collections.Generic.EqualityComparer`1<!TValue>,
			[4] int32
		)

		IL_0000: ldarg.0
		IL_0001: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
		IL_0006: stloc.0
		IL_0007: ldarg.1
		IL_0008: box !TValue
		IL_000d: brtrue.s IL_0049

		IL_000f: ldc.i4.0
		IL_0010: stloc.1
		IL_0011: br.s IL_003b
		// loop start (head: IL_003b)
			IL_0013: ldloc.0
			IL_0014: ldloc.1
			IL_0015: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_001a: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_001f: ldc.i4.m1
			IL_0020: blt.s IL_0037

			IL_0022: ldloc.0
			IL_0023: ldloc.1
			IL_0024: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0029: ldfld !1 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::'value'
			IL_002e: box !TValue
			IL_0033: brtrue.s IL_0037

			IL_0035: ldc.i4.1
			IL_0036: ret

			IL_0037: ldloc.1
			IL_0038: ldc.i4.1
			IL_0039: add
			IL_003a: stloc.1

			IL_003b: ldloc.1
			IL_003c: ldarg.0
			IL_003d: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
			IL_0042: blt.s IL_0013
		// end loop

		IL_0044: br IL_00da

		IL_0049: ldtoken !TValue
		IL_004e: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0053: call instance bool System.Type::get_IsValueType()
		IL_0058: brfalse.s IL_0097

		IL_005a: ldc.i4.0
		IL_005b: stloc.2
		IL_005c: br.s IL_008c
		// loop start (head: IL_008c)
			IL_005e: ldloc.0
			IL_005f: ldloc.2
			IL_0060: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0065: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_006a: ldc.i4.m1
			IL_006b: blt.s IL_0088

			IL_006d: call class System.Collections.Generic.EqualityComparer`1<!0> class System.Collections.Generic.EqualityComparer`1<!TValue>::get_Default()
			IL_0072: ldloc.0
			IL_0073: ldloc.2
			IL_0074: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0079: ldfld !1 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::'value'
			IL_007e: ldarg.1
			IL_007f: callvirt instance bool class System.Collections.Generic.EqualityComparer`1<!TValue>::Equals(!0, !0)
			IL_0084: brfalse.s IL_0088

			IL_0086: ldc.i4.1
			IL_0087: ret

			IL_0088: ldloc.2
			IL_0089: ldc.i4.1
			IL_008a: add
			IL_008b: stloc.2

			IL_008c: ldloc.2
			IL_008d: ldarg.0
			IL_008e: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
			IL_0093: blt.s IL_005e
		// end loop

		IL_0095: br.s IL_00da

		IL_0097: call class System.Collections.Generic.EqualityComparer`1<!0> class System.Collections.Generic.EqualityComparer`1<!TValue>::get_Default()
		IL_009c: stloc.3
		IL_009d: ldc.i4.0
		IL_009e: stloc.s 4
		IL_00a0: br.s IL_00d0
		// loop start (head: IL_00d0)
			IL_00a2: ldloc.0
			IL_00a3: ldloc.s 4
			IL_00a5: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_00aa: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_00af: ldc.i4.m1
			IL_00b0: blt.s IL_00ca

			IL_00b2: ldloc.3
			IL_00b3: ldloc.0
			IL_00b4: ldloc.s 4
			IL_00b6: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_00bb: ldfld !1 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::'value'
			IL_00c0: ldarg.1
			IL_00c1: callvirt instance bool class System.Collections.Generic.EqualityComparer`1<!TValue>::Equals(!0, !0)
			IL_00c6: brfalse.s IL_00ca

			IL_00c8: ldc.i4.1
			IL_00c9: ret

			IL_00ca: ldloc.s 4
			IL_00cc: ldc.i4.1
			IL_00cd: add
			IL_00ce: stloc.s 4

			IL_00d0: ldloc.s 4
			IL_00d2: ldarg.0
			IL_00d3: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
			IL_00d8: blt.s IL_00a2
		// end loop

		IL_00da: ldc.i4.0
		IL_00db: ret
	} // end of method Dictionary`2::ContainsValue

	.method private hidebysig 
		instance void CopyTo (
			valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>[] 'array',
			int32 index
		) cil managed 
	{
		// Method begins at RVA 0x164614
		// Code size 122 (0x7a)
		.maxstack 5
		.locals (
			[0] int32,
			[1] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>[],
			[2] int32
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.2
		IL_000a: ldarg.1
		IL_000b: ldlen
		IL_000c: conv.i4
		IL_000d: ble.un.s IL_0014

		IL_000f: call void System.ThrowHelper::ThrowIndexArgumentOutOfRange_NeedNonNegNumException()

		IL_0014: ldarg.1
		IL_0015: ldlen
		IL_0016: conv.i4
		IL_0017: ldarg.2
		IL_0018: sub
		IL_0019: ldarg.0
		IL_001a: call instance int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::get_Count()
		IL_001f: bge.s IL_0027

		IL_0021: ldc.i4.5
		IL_0022: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0027: ldarg.0
		IL_0028: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
		IL_002d: stloc.0
		IL_002e: ldarg.0
		IL_002f: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
		IL_0034: stloc.1
		IL_0035: ldc.i4.0
		IL_0036: stloc.2
		IL_0037: br.s IL_0075
		// loop start (head: IL_0075)
			IL_0039: ldloc.1
			IL_003a: ldloc.2
			IL_003b: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0040: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_0045: ldc.i4.m1
			IL_0046: blt.s IL_0071

			IL_0048: ldarg.1
			IL_0049: ldarg.2
			IL_004a: dup
			IL_004b: ldc.i4.1
			IL_004c: add
			IL_004d: starg.s index
			IL_004f: ldloc.1
			IL_0050: ldloc.2
			IL_0051: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0056: ldfld !0 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::key
			IL_005b: ldloc.1
			IL_005c: ldloc.2
			IL_005d: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0062: ldfld !1 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::'value'
			IL_0067: newobj instance void valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::.ctor(!0, !1)
			IL_006c: stelem valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>

			IL_0071: ldloc.2
			IL_0072: ldc.i4.1
			IL_0073: add
			IL_0074: stloc.2

			IL_0075: ldloc.2
			IL_0076: ldloc.0
			IL_0077: blt.s IL_0039
		// end loop

		IL_0079: ret
	} // end of method Dictionary`2::CopyTo

	.method public hidebysig 
		instance valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue> GetEnumerator () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		// Method begins at RVA 0x16469a
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.2
		IL_0002: newobj instance void valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::.ctor(class System.Collections.Generic.Dictionary`2<!0, !1>, int32)
		IL_0007: ret
	} // end of method Dictionary`2::GetEnumerator

	.method private final hidebysig newslot virtual 
		instance class System.Collections.Generic.IEnumerator`1<valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>> 'System.Collections.Generic.IEnumerable<System.Collections.Generic.KeyValuePair<TKey,TValue>>.GetEnumerator' () cil managed 
	{
		.override method instance class System.Collections.Generic.IEnumerator`1<!0> class System.Collections.Generic.IEnumerable`1<valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>>::GetEnumerator()
		// Method begins at RVA 0x1646a3
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.2
		IL_0002: newobj instance void valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::.ctor(class System.Collections.Generic.Dictionary`2<!0, !1>, int32)
		IL_0007: box valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>
		IL_000c: ret
	} // end of method Dictionary`2::'System.Collections.Generic.IEnumerable<System.Collections.Generic.KeyValuePair<TKey,TValue>>.GetEnumerator'

	.method public hidebysig newslot virtual 
		instance void GetObjectData (
			class System.Runtime.Serialization.SerializationInfo info,
			valuetype System.Runtime.Serialization.StreamingContext context
		) cil managed 
	{
		// Method begins at RVA 0x1646b4
		// Code size 134 (0x86)
		.maxstack 4
		.locals (
			[0] valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>[]
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.3
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.1
		IL_000a: ldstr "Version"
		IL_000f: ldarg.0
		IL_0010: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_version
		IL_0015: callvirt instance void System.Runtime.Serialization.SerializationInfo::AddValue(string, int32)
		IL_001a: ldarg.1
		IL_001b: ldstr "Comparer"
		IL_0020: ldarg.0
		IL_0021: call instance class System.Collections.Generic.IEqualityComparer`1<!0> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::get_Comparer()
		IL_0026: ldtoken class System.Collections.Generic.IEqualityComparer`1<!TKey>
		IL_002b: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0030: callvirt instance void System.Runtime.Serialization.SerializationInfo::AddValue(string, object, class System.Type)
		IL_0035: ldarg.1
		IL_0036: ldstr "HashSize"
		IL_003b: ldarg.0
		IL_003c: ldfld int32[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_buckets
		IL_0041: brfalse.s IL_004d

		IL_0043: ldarg.0
		IL_0044: ldfld int32[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_buckets
		IL_0049: ldlen
		IL_004a: conv.i4
		IL_004b: br.s IL_004e

		IL_004d: ldc.i4.0

		IL_004e: callvirt instance void System.Runtime.Serialization.SerializationInfo::AddValue(string, int32)
		IL_0053: ldarg.0
		IL_0054: ldfld int32[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_buckets
		IL_0059: brfalse.s IL_0085

		IL_005b: ldarg.0
		IL_005c: call instance int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::get_Count()
		IL_0061: newarr valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>
		IL_0066: stloc.0
		IL_0067: ldarg.0
		IL_0068: ldloc.0
		IL_0069: ldc.i4.0
		IL_006a: call instance void class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::CopyTo(valuetype System.Collections.Generic.KeyValuePair`2<!0, !1>[], int32)
		IL_006f: ldarg.1
		IL_0070: ldstr "KeyValuePairs"
		IL_0075: ldloc.0
		IL_0076: ldtoken valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>[]
		IL_007b: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0080: callvirt instance void System.Runtime.Serialization.SerializationInfo::AddValue(string, object, class System.Type)

		IL_0085: ret
	} // end of method Dictionary`2::GetObjectData

	.method private hidebysig 
		instance !TValue& FindValue (
			!TKey key
		) cil managed 
	{
		// Method begins at RVA 0x164748
		// Code size 391 (0x187)
		.maxstack 3
		.locals (
			[0] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>&,
			[1] !TValue&,
			[2] class System.Collections.Generic.IEqualityComparer`1<!TKey>,
			[3] uint32,
			[4] int32,
			[5] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>[],
			[6] uint32,
			[7] class System.Collections.Generic.EqualityComparer`1<!TKey>,
			[8] uint32,
			[9] int32,
			[10] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>[],
			[11] uint32
		)

		IL_0000: ldarg.1
		IL_0001: box !TKey
		IL_0006: brtrue.s IL_000e

		IL_0008: ldc.i4.4
		IL_0009: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000e: call !!0& Internal.Runtime.CompilerServices.Unsafe::NullRef<valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>>()
		IL_0013: stloc.0
		IL_0014: ldarg.0
		IL_0015: ldfld int32[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_buckets
		IL_001a: brfalse IL_017f

		IL_001f: ldarg.0
		IL_0020: ldfld class System.Collections.Generic.IEqualityComparer`1<!0> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_comparer
		IL_0025: stloc.2
		IL_0026: ldloc.2
		IL_0027: brtrue IL_010b

		IL_002c: ldarga.s key
		IL_002e: constrained. !TKey
		IL_0034: callvirt instance int32 System.Object::GetHashCode()
		IL_0039: stloc.3
		IL_003a: ldarg.0
		IL_003b: ldloc.3
		IL_003c: call instance int32& class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::GetBucket(uint32)
		IL_0041: ldind.i4
		IL_0042: stloc.s 4
		IL_0044: ldarg.0
		IL_0045: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
		IL_004a: stloc.s 5
		IL_004c: ldc.i4.0
		IL_004d: stloc.s 6
		IL_004f: ldtoken !TKey
		IL_0054: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0059: call instance bool System.Type::get_IsValueType()
		IL_005e: brfalse.s IL_00b5

		IL_0060: ldloc.s 4
		IL_0062: ldc.i4.1
		IL_0063: sub
		IL_0064: stloc.s 4
		// loop start (head: IL_0066)
			IL_0066: ldloc.s 4
			IL_0068: ldloc.s 5
			IL_006a: ldlen
			IL_006b: conv.i4
			IL_006c: bge.un IL_017f

			IL_0071: ldloc.s 5
			IL_0073: ldloc.s 4
			IL_0075: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_007a: stloc.0
			IL_007b: ldloc.0
			IL_007c: ldfld uint32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::hashCode
			IL_0081: ldloc.3
			IL_0082: bne.un.s IL_009a

			IL_0084: call class System.Collections.Generic.EqualityComparer`1<!0> class System.Collections.Generic.EqualityComparer`1<!TKey>::get_Default()
			IL_0089: ldloc.0
			IL_008a: ldfld !0 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::key
			IL_008f: ldarg.1
			IL_0090: callvirt instance bool class System.Collections.Generic.EqualityComparer`1<!TKey>::Equals(!0, !0)
			IL_0095: brtrue IL_0176

			IL_009a: ldloc.0
			IL_009b: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_00a0: stloc.s 4
			IL_00a2: ldloc.s 6
			IL_00a4: ldc.i4.1
			IL_00a5: add
			IL_00a6: stloc.s 6
			IL_00a8: ldloc.s 6
			IL_00aa: ldloc.s 5
			IL_00ac: ldlen
			IL_00ad: conv.i4
			IL_00ae: ble.un.s IL_0066
		// end loop
		IL_00b0: br IL_0171

		IL_00b5: call class System.Collections.Generic.EqualityComparer`1<!0> class System.Collections.Generic.EqualityComparer`1<!TKey>::get_Default()
		IL_00ba: stloc.s 7
		IL_00bc: ldloc.s 4
		IL_00be: ldc.i4.1
		IL_00bf: sub
		IL_00c0: stloc.s 4
		// loop start (head: IL_00c2)
			IL_00c2: ldloc.s 4
			IL_00c4: ldloc.s 5
			IL_00c6: ldlen
			IL_00c7: conv.i4
			IL_00c8: bge.un IL_017f

			IL_00cd: ldloc.s 5
			IL_00cf: ldloc.s 4
			IL_00d1: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_00d6: stloc.0
			IL_00d7: ldloc.0
			IL_00d8: ldfld uint32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::hashCode
			IL_00dd: ldloc.3
			IL_00de: bne.un.s IL_00f3

			IL_00e0: ldloc.s 7
			IL_00e2: ldloc.0
			IL_00e3: ldfld !0 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::key
			IL_00e8: ldarg.1
			IL_00e9: callvirt instance bool class System.Collections.Generic.EqualityComparer`1<!TKey>::Equals(!0, !0)
			IL_00ee: brtrue IL_0176

			IL_00f3: ldloc.0
			IL_00f4: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_00f9: stloc.s 4
			IL_00fb: ldloc.s 6
			IL_00fd: ldc.i4.1
			IL_00fe: add
			IL_00ff: stloc.s 6
			IL_0101: ldloc.s 6
			IL_0103: ldloc.s 5
			IL_0105: ldlen
			IL_0106: conv.i4
			IL_0107: ble.un.s IL_00c2
		// end loop
		IL_0109: br.s IL_0171

		IL_010b: ldloc.2
		IL_010c: ldarg.1
		IL_010d: callvirt instance int32 class System.Collections.Generic.IEqualityComparer`1<!TKey>::GetHashCode(!0)
		IL_0112: stloc.s 8
		IL_0114: ldarg.0
		IL_0115: ldloc.s 8
		IL_0117: call instance int32& class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::GetBucket(uint32)
		IL_011c: ldind.i4
		IL_011d: stloc.s 9
		IL_011f: ldarg.0
		IL_0120: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
		IL_0125: stloc.s 10
		IL_0127: ldc.i4.0
		IL_0128: stloc.s 11
		IL_012a: ldloc.s 9
		IL_012c: ldc.i4.1
		IL_012d: sub
		IL_012e: stloc.s 9
		// loop start (head: IL_0130)
			IL_0130: ldloc.s 9
			IL_0132: ldloc.s 10
			IL_0134: ldlen
			IL_0135: conv.i4
			IL_0136: bge.un.s IL_017f

			IL_0138: ldloc.s 10
			IL_013a: ldloc.s 9
			IL_013c: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0141: stloc.0
			IL_0142: ldloc.0
			IL_0143: ldfld uint32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::hashCode
			IL_0148: ldloc.s 8
			IL_014a: bne.un.s IL_015b

			IL_014c: ldloc.2
			IL_014d: ldloc.0
			IL_014e: ldfld !0 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::key
			IL_0153: ldarg.1
			IL_0154: callvirt instance bool class System.Collections.Generic.IEqualityComparer`1<!TKey>::Equals(!0, !0)
			IL_0159: brtrue.s IL_0176

			IL_015b: ldloc.0
			IL_015c: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_0161: stloc.s 9
			IL_0163: ldloc.s 11
			IL_0165: ldc.i4.1
			IL_0166: add
			IL_0167: stloc.s 11
			IL_0169: ldloc.s 11
			IL_016b: ldloc.s 10
			IL_016d: ldlen
			IL_016e: conv.i4
			IL_016f: ble.un.s IL_0130
		// end loop

		IL_0171: call void System.ThrowHelper::ThrowInvalidOperationException_ConcurrentOperationsNotSupported()

		IL_0176: ldloc.0
		IL_0177: ldflda !1 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::'value'
		IL_017c: stloc.1

		IL_017d: ldloc.1
		IL_017e: ret

		IL_017f: call !!0& Internal.Runtime.CompilerServices.Unsafe::NullRef<!TValue>()
		IL_0184: stloc.1
		IL_0185: br.s IL_017d
	} // end of method Dictionary`2::FindValue

	.method private hidebysig 
		instance int32 Initialize (
			int32 capacity
		) cil managed 
	{
		// Method begins at RVA 0x1648dc
		// Code size 44 (0x2c)
		.maxstack 2
		.locals (
			[0] int32,
			[1] int32[],
			[2] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>[]
		)

		IL_0000: ldarg.1
		IL_0001: call int32 System.Collections.HashHelpers::GetPrime(int32)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: newarr System.Int32
		IL_000d: stloc.1
		IL_000e: ldloc.0
		IL_000f: newarr valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
		IL_0014: stloc.2
		IL_0015: ldarg.0
		IL_0016: ldc.i4.m1
		IL_0017: stfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_freeList
		IL_001c: ldarg.0
		IL_001d: ldloc.1
		IL_001e: stfld int32[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_buckets
		IL_0023: ldarg.0
		IL_0024: ldloc.2
		IL_0025: stfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
		IL_002a: ldloc.0
		IL_002b: ret
	} // end of method Dictionary`2::Initialize

	.method private hidebysig 
		instance bool TryInsert (
			!TKey key,
			!TValue 'value',
			valuetype System.Collections.Generic.InsertionBehavior behavior
		) cil managed 
	{
		// Method begins at RVA 0x164914
		// Code size 675 (0x2a3)
		.maxstack 4
		.locals (
			[0] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>[],
			[1] class System.Collections.Generic.IEqualityComparer`1<!TKey>,
			[2] uint32,
			[3] uint32,
			[4] int32&,
			[5] int32,
			[6] int32,
			[7] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>&,
			[8] class System.Collections.Generic.EqualityComparer`1<!TKey>,
			[9] int32
		)

		IL_0000: ldarg.1
		IL_0001: box !TKey
		IL_0006: brtrue.s IL_000e

		IL_0008: ldc.i4.4
		IL_0009: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000e: ldarg.0
		IL_000f: ldfld int32[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_buckets
		IL_0014: brtrue.s IL_001e

		IL_0016: ldarg.0
		IL_0017: ldc.i4.0
		IL_0018: call instance int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::Initialize(int32)
		IL_001d: pop

		IL_001e: ldarg.0
		IL_001f: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
		IL_0024: stloc.0
		IL_0025: ldarg.0
		IL_0026: ldfld class System.Collections.Generic.IEqualityComparer`1<!0> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_comparer
		IL_002b: stloc.1
		IL_002c: ldloc.1
		IL_002d: brfalse.s IL_0038

		IL_002f: ldloc.1
		IL_0030: ldarg.1
		IL_0031: callvirt instance int32 class System.Collections.Generic.IEqualityComparer`1<!TKey>::GetHashCode(!0)
		IL_0036: br.s IL_0045

		IL_0038: ldarga.s key
		IL_003a: constrained. !TKey
		IL_0040: callvirt instance int32 System.Object::GetHashCode()

		IL_0045: stloc.2
		IL_0046: ldc.i4.0
		IL_0047: stloc.3
		IL_0048: ldarg.0
		IL_0049: ldloc.2
		IL_004a: call instance int32& class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::GetBucket(uint32)
		IL_004f: stloc.s 4
		IL_0051: ldloc.s 4
		IL_0053: ldind.i4
		IL_0054: ldc.i4.1
		IL_0055: sub
		IL_0056: stloc.s 5
		IL_0058: ldloc.1
		IL_0059: brtrue IL_015b

		IL_005e: ldtoken !TKey
		IL_0063: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0068: call instance bool System.Type::get_IsValueType()
		IL_006d: brfalse.s IL_00e3
		// loop start (head: IL_006f)
			IL_006f: ldloc.s 5
			IL_0071: ldloc.0
			IL_0072: ldlen
			IL_0073: conv.i4
			IL_0074: bge.un IL_01c8

			IL_0079: ldloc.0
			IL_007a: ldloc.s 5
			IL_007c: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0081: ldfld uint32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::hashCode
			IL_0086: ldloc.2
			IL_0087: bne.un.s IL_00c3

			IL_0089: call class System.Collections.Generic.EqualityComparer`1<!0> class System.Collections.Generic.EqualityComparer`1<!TKey>::get_Default()
			IL_008e: ldloc.0
			IL_008f: ldloc.s 5
			IL_0091: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0096: ldfld !0 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::key
			IL_009b: ldarg.1
			IL_009c: callvirt instance bool class System.Collections.Generic.EqualityComparer`1<!TKey>::Equals(!0, !0)
			IL_00a1: brfalse.s IL_00c3

			IL_00a3: ldarg.3
			IL_00a4: ldc.i4.1
			IL_00a5: bne.un.s IL_00b7

			IL_00a7: ldloc.0
			IL_00a8: ldloc.s 5
			IL_00aa: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_00af: ldarg.2
			IL_00b0: stfld !1 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::'value'
			IL_00b5: ldc.i4.1
			IL_00b6: ret

			IL_00b7: ldarg.3
			IL_00b8: ldc.i4.2
			IL_00b9: bne.un.s IL_00c1

			IL_00bb: ldarg.1
			IL_00bc: call void System.ThrowHelper::ThrowAddingDuplicateWithKeyArgumentException<!TKey>(!!0)

			IL_00c1: ldc.i4.0
			IL_00c2: ret

			IL_00c3: ldloc.0
			IL_00c4: ldloc.s 5
			IL_00c6: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_00cb: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_00d0: stloc.s 5
			IL_00d2: ldloc.3
			IL_00d3: ldc.i4.1
			IL_00d4: add
			IL_00d5: stloc.3
			IL_00d6: ldloc.3
			IL_00d7: ldloc.0
			IL_00d8: ldlen
			IL_00d9: conv.i4
			IL_00da: ble.un.s IL_006f

			IL_00dc: call void System.ThrowHelper::ThrowInvalidOperationException_ConcurrentOperationsNotSupported()
			IL_00e1: br.s IL_006f
		// end loop

		IL_00e3: call class System.Collections.Generic.EqualityComparer`1<!0> class System.Collections.Generic.EqualityComparer`1<!TKey>::get_Default()
		IL_00e8: stloc.s 8
		// loop start (head: IL_00ea)
			IL_00ea: ldloc.s 5
			IL_00ec: ldloc.0
			IL_00ed: ldlen
			IL_00ee: conv.i4
			IL_00ef: bge.un IL_01c8

			IL_00f4: ldloc.0
			IL_00f5: ldloc.s 5
			IL_00f7: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_00fc: ldfld uint32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::hashCode
			IL_0101: ldloc.2
			IL_0102: bne.un.s IL_013b

			IL_0104: ldloc.s 8
			IL_0106: ldloc.0
			IL_0107: ldloc.s 5
			IL_0109: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_010e: ldfld !0 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::key
			IL_0113: ldarg.1
			IL_0114: callvirt instance bool class System.Collections.Generic.EqualityComparer`1<!TKey>::Equals(!0, !0)
			IL_0119: brfalse.s IL_013b

			IL_011b: ldarg.3
			IL_011c: ldc.i4.1
			IL_011d: bne.un.s IL_012f

			IL_011f: ldloc.0
			IL_0120: ldloc.s 5
			IL_0122: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0127: ldarg.2
			IL_0128: stfld !1 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::'value'
			IL_012d: ldc.i4.1
			IL_012e: ret

			IL_012f: ldarg.3
			IL_0130: ldc.i4.2
			IL_0131: bne.un.s IL_0139

			IL_0133: ldarg.1
			IL_0134: call void System.ThrowHelper::ThrowAddingDuplicateWithKeyArgumentException<!TKey>(!!0)

			IL_0139: ldc.i4.0
			IL_013a: ret

			IL_013b: ldloc.0
			IL_013c: ldloc.s 5
			IL_013e: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0143: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_0148: stloc.s 5
			IL_014a: ldloc.3
			IL_014b: ldc.i4.1
			IL_014c: add
			IL_014d: stloc.3
			IL_014e: ldloc.3
			IL_014f: ldloc.0
			IL_0150: ldlen
			IL_0151: conv.i4
			IL_0152: ble.un.s IL_00ea

			IL_0154: call void System.ThrowHelper::ThrowInvalidOperationException_ConcurrentOperationsNotSupported()
			IL_0159: br.s IL_00ea
		// end loop
		// loop start (head: IL_015b)
			IL_015b: ldloc.s 5
			IL_015d: ldloc.0
			IL_015e: ldlen
			IL_015f: conv.i4
			IL_0160: bge.un.s IL_01c8

			IL_0162: ldloc.0
			IL_0163: ldloc.s 5
			IL_0165: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_016a: ldfld uint32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::hashCode
			IL_016f: ldloc.2
			IL_0170: bne.un.s IL_01a8

			IL_0172: ldloc.1
			IL_0173: ldloc.0
			IL_0174: ldloc.s 5
			IL_0176: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_017b: ldfld !0 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::key
			IL_0180: ldarg.1
			IL_0181: callvirt instance bool class System.Collections.Generic.IEqualityComparer`1<!TKey>::Equals(!0, !0)
			IL_0186: brfalse.s IL_01a8

			IL_0188: ldarg.3
			IL_0189: ldc.i4.1
			IL_018a: bne.un.s IL_019c

			IL_018c: ldloc.0
			IL_018d: ldloc.s 5
			IL_018f: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0194: ldarg.2
			IL_0195: stfld !1 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::'value'
			IL_019a: ldc.i4.1
			IL_019b: ret

			IL_019c: ldarg.3
			IL_019d: ldc.i4.2
			IL_019e: bne.un.s IL_01a6

			IL_01a0: ldarg.1
			IL_01a1: call void System.ThrowHelper::ThrowAddingDuplicateWithKeyArgumentException<!TKey>(!!0)

			IL_01a6: ldc.i4.0
			IL_01a7: ret

			IL_01a8: ldloc.0
			IL_01a9: ldloc.s 5
			IL_01ab: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_01b0: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_01b5: stloc.s 5
			IL_01b7: ldloc.3
			IL_01b8: ldc.i4.1
			IL_01b9: add
			IL_01ba: stloc.3
			IL_01bb: ldloc.3
			IL_01bc: ldloc.0
			IL_01bd: ldlen
			IL_01be: conv.i4
			IL_01bf: ble.un.s IL_015b

			IL_01c1: call void System.ThrowHelper::ThrowInvalidOperationException_ConcurrentOperationsNotSupported()
			IL_01c6: br.s IL_015b
		// end loop

		IL_01c8: ldarg.0
		IL_01c9: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_freeCount
		IL_01ce: ldc.i4.0
		IL_01cf: ble.s IL_0203

		IL_01d1: ldarg.0
		IL_01d2: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_freeList
		IL_01d7: stloc.s 6
		IL_01d9: ldarg.0
		IL_01da: ldc.i4.s -3
		IL_01dc: ldloc.0
		IL_01dd: ldarg.0
		IL_01de: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_freeList
		IL_01e3: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
		IL_01e8: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
		IL_01ed: sub
		IL_01ee: stfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_freeList
		IL_01f3: ldarg.0
		IL_01f4: ldarg.0
		IL_01f5: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_freeCount
		IL_01fa: ldc.i4.1
		IL_01fb: sub
		IL_01fc: stfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_freeCount
		IL_0201: br.s IL_0236

		IL_0203: ldarg.0
		IL_0204: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
		IL_0209: stloc.s 9
		IL_020b: ldloc.s 9
		IL_020d: ldloc.0
		IL_020e: ldlen
		IL_020f: conv.i4
		IL_0210: bne.un.s IL_0221

		IL_0212: ldarg.0
		IL_0213: call instance void class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::Resize()
		IL_0218: ldarg.0
		IL_0219: ldloc.2
		IL_021a: call instance int32& class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::GetBucket(uint32)
		IL_021f: stloc.s 4

		IL_0221: ldloc.s 9
		IL_0223: stloc.s 6
		IL_0225: ldarg.0
		IL_0226: ldloc.s 9
		IL_0228: ldc.i4.1
		IL_0229: add
		IL_022a: stfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
		IL_022f: ldarg.0
		IL_0230: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
		IL_0235: stloc.0

		IL_0236: ldloc.0
		IL_0237: ldloc.s 6
		IL_0239: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
		IL_023e: stloc.s 7
		IL_0240: ldloc.s 7
		IL_0242: ldloc.2
		IL_0243: stfld uint32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::hashCode
		IL_0248: ldloc.s 7
		IL_024a: ldloc.s 4
		IL_024c: ldind.i4
		IL_024d: ldc.i4.1
		IL_024e: sub
		IL_024f: stfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
		IL_0254: ldloc.s 7
		IL_0256: ldarg.1
		IL_0257: stfld !0 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::key
		IL_025c: ldloc.s 7
		IL_025e: ldarg.2
		IL_025f: stfld !1 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::'value'
		IL_0264: ldloc.s 4
		IL_0266: ldloc.s 6
		IL_0268: ldc.i4.1
		IL_0269: add
		IL_026a: stind.i4
		IL_026b: ldarg.0
		IL_026c: ldarg.0
		IL_026d: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_version
		IL_0272: ldc.i4.1
		IL_0273: add
		IL_0274: stfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_version
		IL_0279: ldtoken !TKey
		IL_027e: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0283: call instance bool System.Type::get_IsValueType()
		IL_0288: brtrue.s IL_02a1

		IL_028a: ldloc.3
		IL_028b: ldc.i4.s 100
		IL_028d: ble.un.s IL_02a1

		IL_028f: ldloc.1
		IL_0290: isinst System.Collections.Generic.NonRandomizedStringEqualityComparer
		IL_0295: brfalse.s IL_02a1

		IL_0297: ldarg.0
		IL_0298: ldloc.0
		IL_0299: ldlen
		IL_029a: conv.i4
		IL_029b: ldc.i4.1
		IL_029c: call instance void class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::Resize(int32, bool)

		IL_02a1: ldc.i4.1
		IL_02a2: ret
	} // end of method Dictionary`2::TryInsert

	.method public hidebysig newslot virtual 
		instance void OnDeserialization (
			object sender
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x164bc4
		// Code size 228 (0xe4)
		.maxstack 4
		.locals (
			[0] class System.Runtime.Serialization.SerializationInfo,
			[1] int32,
			[2] int32,
			[3] valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>[],
			[4] int32
		)

		IL_0000: call class System.Runtime.CompilerServices.ConditionalWeakTable`2<object, class System.Runtime.Serialization.SerializationInfo> System.Collections.HashHelpers::get_SerializationInfoTable()
		IL_0005: ldarg.0
		IL_0006: ldloca.s 0
		IL_0008: callvirt instance bool class System.Runtime.CompilerServices.ConditionalWeakTable`2<object, class System.Runtime.Serialization.SerializationInfo>::TryGetValue(!0, !1&)
		IL_000d: pop
		IL_000e: ldloc.0
		IL_000f: brtrue.s IL_0012

		IL_0011: ret

		IL_0012: ldloc.0
		IL_0013: ldstr "Version"
		IL_0018: callvirt instance int32 System.Runtime.Serialization.SerializationInfo::GetInt32(string)
		IL_001d: stloc.1
		IL_001e: ldloc.0
		IL_001f: ldstr "HashSize"
		IL_0024: callvirt instance int32 System.Runtime.Serialization.SerializationInfo::GetInt32(string)
		IL_0029: stloc.2
		IL_002a: ldarg.0
		IL_002b: ldloc.0
		IL_002c: ldstr "Comparer"
		IL_0031: ldtoken class System.Collections.Generic.IEqualityComparer`1<!TKey>
		IL_0036: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_003b: callvirt instance object System.Runtime.Serialization.SerializationInfo::GetValue(string, class System.Type)
		IL_0040: castclass class System.Collections.Generic.IEqualityComparer`1<!TKey>
		IL_0045: stfld class System.Collections.Generic.IEqualityComparer`1<!0> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_comparer
		IL_004a: ldloc.2
		IL_004b: brfalse.s IL_00c9

		IL_004d: ldarg.0
		IL_004e: ldloc.2
		IL_004f: call instance int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::Initialize(int32)
		IL_0054: pop
		IL_0055: ldloc.0
		IL_0056: ldstr "KeyValuePairs"
		IL_005b: ldtoken valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>[]
		IL_0060: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0065: callvirt instance object System.Runtime.Serialization.SerializationInfo::GetValue(string, class System.Type)
		IL_006a: castclass valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>[]
		IL_006f: stloc.3
		IL_0070: ldloc.3
		IL_0071: brtrue.s IL_007a

		IL_0073: ldc.i4.s 16
		IL_0075: call void System.ThrowHelper::ThrowSerializationException(valuetype System.ExceptionResource)

		IL_007a: ldc.i4.0
		IL_007b: stloc.s 4
		IL_007d: br.s IL_00c0
		// loop start (head: IL_00c0)
			IL_007f: ldloc.3
			IL_0080: ldloc.s 4
			IL_0082: ldelema valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>
			IL_0087: call instance !0 valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::get_Key()
			IL_008c: box !TKey
			IL_0091: brtrue.s IL_009a

			IL_0093: ldc.i4.s 17
			IL_0095: call void System.ThrowHelper::ThrowSerializationException(valuetype System.ExceptionResource)

			IL_009a: ldarg.0
			IL_009b: ldloc.3
			IL_009c: ldloc.s 4
			IL_009e: ldelema valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>
			IL_00a3: call instance !0 valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::get_Key()
			IL_00a8: ldloc.3
			IL_00a9: ldloc.s 4
			IL_00ab: ldelema valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>
			IL_00b0: call instance !1 valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::get_Value()
			IL_00b5: call instance void class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::Add(!0, !1)
			IL_00ba: ldloc.s 4
			IL_00bc: ldc.i4.1
			IL_00bd: add
			IL_00be: stloc.s 4

			IL_00c0: ldloc.s 4
			IL_00c2: ldloc.3
			IL_00c3: ldlen
			IL_00c4: conv.i4
			IL_00c5: blt.s IL_007f
		// end loop

		IL_00c7: br.s IL_00d0

		IL_00c9: ldarg.0
		IL_00ca: ldnull
		IL_00cb: stfld int32[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_buckets

		IL_00d0: ldarg.0
		IL_00d1: ldloc.1
		IL_00d2: stfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_version
		IL_00d7: call class System.Runtime.CompilerServices.ConditionalWeakTable`2<object, class System.Runtime.Serialization.SerializationInfo> System.Collections.HashHelpers::get_SerializationInfoTable()
		IL_00dc: ldarg.0
		IL_00dd: callvirt instance bool class System.Runtime.CompilerServices.ConditionalWeakTable`2<object, class System.Runtime.Serialization.SerializationInfo>::Remove(!0)
		IL_00e2: pop
		IL_00e3: ret
	} // end of method Dictionary`2::OnDeserialization

	.method private hidebysig 
		instance void Resize () cil managed 
	{
		// Method begins at RVA 0x164cb4
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.0
		IL_0002: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
		IL_0007: call int32 System.Collections.HashHelpers::ExpandPrime(int32)
		IL_000c: ldc.i4.0
		IL_000d: call instance void class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::Resize(int32, bool)
		IL_0012: ret
	} // end of method Dictionary`2::Resize

	.method private hidebysig 
		instance void Resize (
			int32 newSize,
			bool forceNewHashCodes
		) cil managed 
	{
		// Method begins at RVA 0x164cc8
		// Code size 248 (0xf8)
		.maxstack 4
		.locals (
			[0] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>[],
			[1] int32,
			[2] int32,
			[3] int32,
			[4] int32&
		)

		IL_0000: ldarg.1
		IL_0001: newarr valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
		IL_0006: stloc.0
		IL_0007: ldarg.0
		IL_0008: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
		IL_000d: stloc.1
		IL_000e: ldarg.0
		IL_000f: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
		IL_0014: ldloc.0
		IL_0015: ldloc.1
		IL_0016: call void System.Array::Copy(class System.Array, class System.Array, int32)
		IL_001b: ldtoken !TKey
		IL_0020: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0025: call instance bool System.Type::get_IsValueType()
		IL_002a: ldc.i4.0
		IL_002b: ceq
		IL_002d: ldarg.2
		IL_002e: and
		IL_002f: brfalse.s IL_009e

		IL_0031: ldarg.0
		IL_0032: ldarg.0
		IL_0033: ldfld class System.Collections.Generic.IEqualityComparer`1<!0> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_comparer
		IL_0038: castclass System.Collections.Generic.NonRandomizedStringEqualityComparer
		IL_003d: callvirt instance class System.Collections.Generic.RandomizedStringEqualityComparer System.Collections.Generic.NonRandomizedStringEqualityComparer::GetRandomizedEqualityComparer()
		IL_0042: castclass class System.Collections.Generic.IEqualityComparer`1<!TKey>
		IL_0047: stfld class System.Collections.Generic.IEqualityComparer`1<!0> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_comparer
		IL_004c: ldc.i4.0
		IL_004d: stloc.2
		IL_004e: br.s IL_0086
		// loop start (head: IL_0086)
			IL_0050: ldloc.0
			IL_0051: ldloc.2
			IL_0052: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0057: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_005c: ldc.i4.m1
			IL_005d: blt.s IL_0082

			IL_005f: ldloc.0
			IL_0060: ldloc.2
			IL_0061: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0066: ldarg.0
			IL_0067: ldfld class System.Collections.Generic.IEqualityComparer`1<!0> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_comparer
			IL_006c: ldloc.0
			IL_006d: ldloc.2
			IL_006e: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0073: ldfld !0 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::key
			IL_0078: callvirt instance int32 class System.Collections.Generic.IEqualityComparer`1<!TKey>::GetHashCode(!0)
			IL_007d: stfld uint32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::hashCode

			IL_0082: ldloc.2
			IL_0083: ldc.i4.1
			IL_0084: add
			IL_0085: stloc.2

			IL_0086: ldloc.2
			IL_0087: ldloc.1
			IL_0088: blt.s IL_0050
		// end loop

		IL_008a: ldarg.0
		IL_008b: ldfld class System.Collections.Generic.IEqualityComparer`1<!0> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_comparer
		IL_0090: call class System.Collections.Generic.EqualityComparer`1<!0> class System.Collections.Generic.EqualityComparer`1<!TKey>::get_Default()
		IL_0095: bne.un.s IL_009e

		IL_0097: ldarg.0
		IL_0098: ldnull
		IL_0099: stfld class System.Collections.Generic.IEqualityComparer`1<!0> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_comparer

		IL_009e: ldarg.0
		IL_009f: ldarg.1
		IL_00a0: newarr System.Int32
		IL_00a5: stfld int32[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_buckets
		IL_00aa: ldc.i4.0
		IL_00ab: stloc.3
		IL_00ac: br.s IL_00ec
		// loop start (head: IL_00ec)
			IL_00ae: ldloc.0
			IL_00af: ldloc.3
			IL_00b0: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_00b5: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_00ba: ldc.i4.m1
			IL_00bb: blt.s IL_00e8

			IL_00bd: ldarg.0
			IL_00be: ldloc.0
			IL_00bf: ldloc.3
			IL_00c0: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_00c5: ldfld uint32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::hashCode
			IL_00ca: call instance int32& class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::GetBucket(uint32)
			IL_00cf: stloc.s 4
			IL_00d1: ldloc.0
			IL_00d2: ldloc.3
			IL_00d3: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_00d8: ldloc.s 4
			IL_00da: ldind.i4
			IL_00db: ldc.i4.1
			IL_00dc: sub
			IL_00dd: stfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_00e2: ldloc.s 4
			IL_00e4: ldloc.3
			IL_00e5: ldc.i4.1
			IL_00e6: add
			IL_00e7: stind.i4

			IL_00e8: ldloc.3
			IL_00e9: ldc.i4.1
			IL_00ea: add
			IL_00eb: stloc.3

			IL_00ec: ldloc.3
			IL_00ed: ldloc.1
			IL_00ee: blt.s IL_00ae
		// end loop

		IL_00f0: ldarg.0
		IL_00f1: ldloc.0
		IL_00f2: stfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
		IL_00f7: ret
	} // end of method Dictionary`2::Resize

	.method public final hidebysig newslot virtual 
		instance bool Remove (
			!TKey key
		) cil managed 
	{
		// Method begins at RVA 0x164dcc
		// Code size 312 (0x138)
		.maxstack 3
		.locals (
			[0] uint32,
			[1] uint32,
			[2] int32&,
			[3] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>[],
			[4] int32,
			[5] int32,
			[6] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>&
		)

		IL_0000: ldarg.1
		IL_0001: box !TKey
		IL_0006: brtrue.s IL_000e

		IL_0008: ldc.i4.4
		IL_0009: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000e: ldarg.0
		IL_000f: ldfld int32[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_buckets
		IL_0014: brfalse IL_0136

		IL_0019: ldc.i4.0
		IL_001a: stloc.0
		IL_001b: ldarg.0
		IL_001c: ldfld class System.Collections.Generic.IEqualityComparer`1<!0> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_comparer
		IL_0021: dup
		IL_0022: brtrue.s IL_0034

		IL_0024: pop
		IL_0025: ldarga.s key
		IL_0027: constrained. !TKey
		IL_002d: callvirt instance int32 System.Object::GetHashCode()
		IL_0032: br.s IL_003a

		IL_0034: ldarg.1
		IL_0035: callvirt instance int32 class System.Collections.Generic.IEqualityComparer`1<!TKey>::GetHashCode(!0)

		IL_003a: stloc.1
		IL_003b: ldarg.0
		IL_003c: ldloc.1
		IL_003d: call instance int32& class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::GetBucket(uint32)
		IL_0042: stloc.2
		IL_0043: ldarg.0
		IL_0044: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
		IL_0049: stloc.3
		IL_004a: ldc.i4.m1
		IL_004b: stloc.s 4
		IL_004d: ldloc.2
		IL_004e: ldind.i4
		IL_004f: ldc.i4.1
		IL_0050: sub
		IL_0051: stloc.s 5
		IL_0053: br IL_012e
		// loop start (head: IL_012e)
			IL_0058: ldloc.3
			IL_0059: ldloc.s 5
			IL_005b: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0060: stloc.s 6
			IL_0062: ldloc.s 6
			IL_0064: ldfld uint32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::hashCode
			IL_0069: ldloc.1
			IL_006a: bne.un IL_0112

			IL_006f: ldarg.0
			IL_0070: ldfld class System.Collections.Generic.IEqualityComparer`1<!0> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_comparer
			IL_0075: dup
			IL_0076: brtrue.s IL_008d

			IL_0078: pop
			IL_0079: call class System.Collections.Generic.EqualityComparer`1<!0> class System.Collections.Generic.EqualityComparer`1<!TKey>::get_Default()
			IL_007e: ldloc.s 6
			IL_0080: ldfld !0 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::key
			IL_0085: ldarg.1
			IL_0086: callvirt instance bool class System.Collections.Generic.EqualityComparer`1<!TKey>::Equals(!0, !0)
			IL_008b: br.s IL_009a

			IL_008d: ldloc.s 6
			IL_008f: ldfld !0 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::key
			IL_0094: ldarg.1
			IL_0095: callvirt instance bool class System.Collections.Generic.IEqualityComparer`1<!TKey>::Equals(!0, !0)

			IL_009a: brfalse.s IL_0112

			IL_009c: ldloc.s 4
			IL_009e: ldc.i4.0
			IL_009f: bge.s IL_00ae

			IL_00a1: ldloc.2
			IL_00a2: ldloc.s 6
			IL_00a4: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_00a9: ldc.i4.1
			IL_00aa: add
			IL_00ab: stind.i4
			IL_00ac: br.s IL_00c2

			IL_00ae: ldloc.3
			IL_00af: ldloc.s 4
			IL_00b1: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_00b6: ldloc.s 6
			IL_00b8: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_00bd: stfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next

			IL_00c2: ldloc.s 6
			IL_00c4: ldc.i4.s -3
			IL_00c6: ldarg.0
			IL_00c7: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_freeList
			IL_00cc: sub
			IL_00cd: stfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_00d2: call bool System.Runtime.CompilerServices.RuntimeHelpers::IsReferenceOrContainsReferences<!TKey>()
			IL_00d7: brfalse.s IL_00e6

			IL_00d9: ldloc.s 6
			IL_00db: ldflda !0 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::key
			IL_00e0: initobj !TKey

			IL_00e6: call bool System.Runtime.CompilerServices.RuntimeHelpers::IsReferenceOrContainsReferences<!TValue>()
			IL_00eb: brfalse.s IL_00fa

			IL_00ed: ldloc.s 6
			IL_00ef: ldflda !1 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::'value'
			IL_00f4: initobj !TValue

			IL_00fa: ldarg.0
			IL_00fb: ldloc.s 5
			IL_00fd: stfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_freeList
			IL_0102: ldarg.0
			IL_0103: ldarg.0
			IL_0104: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_freeCount
			IL_0109: ldc.i4.1
			IL_010a: add
			IL_010b: stfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_freeCount
			IL_0110: ldc.i4.1
			IL_0111: ret

			IL_0112: ldloc.s 5
			IL_0114: stloc.s 4
			IL_0116: ldloc.s 6
			IL_0118: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_011d: stloc.s 5
			IL_011f: ldloc.0
			IL_0120: ldc.i4.1
			IL_0121: add
			IL_0122: stloc.0
			IL_0123: ldloc.0
			IL_0124: ldloc.3
			IL_0125: ldlen
			IL_0126: conv.i4
			IL_0127: ble.un.s IL_012e

			IL_0129: call void System.ThrowHelper::ThrowInvalidOperationException_ConcurrentOperationsNotSupported()

			IL_012e: ldloc.s 5
			IL_0130: ldc.i4.0
			IL_0131: bge IL_0058
		// end loop

		IL_0136: ldc.i4.0
		IL_0137: ret
	} // end of method Dictionary`2::Remove

	.method public hidebysig 
		instance bool Remove (
			!TKey key,
			[out] !TValue& 'value'
		) cil managed 
	{
		.param [2]
			.custom instance void System.Diagnostics.CodeAnalysis.MaybeNullWhenAttribute::.ctor(bool) = (
				01 00 00 00 00
			)
		// Method begins at RVA 0x164f10
		// Code size 335 (0x14f)
		.maxstack 3
		.locals (
			[0] uint32,
			[1] uint32,
			[2] int32&,
			[3] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>[],
			[4] int32,
			[5] int32,
			[6] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>&
		)

		IL_0000: ldarg.1
		IL_0001: box !TKey
		IL_0006: brtrue.s IL_000e

		IL_0008: ldc.i4.4
		IL_0009: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_000e: ldarg.0
		IL_000f: ldfld int32[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_buckets
		IL_0014: brfalse IL_0146

		IL_0019: ldc.i4.0
		IL_001a: stloc.0
		IL_001b: ldarg.0
		IL_001c: ldfld class System.Collections.Generic.IEqualityComparer`1<!0> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_comparer
		IL_0021: dup
		IL_0022: brtrue.s IL_0034

		IL_0024: pop
		IL_0025: ldarga.s key
		IL_0027: constrained. !TKey
		IL_002d: callvirt instance int32 System.Object::GetHashCode()
		IL_0032: br.s IL_003a

		IL_0034: ldarg.1
		IL_0035: callvirt instance int32 class System.Collections.Generic.IEqualityComparer`1<!TKey>::GetHashCode(!0)

		IL_003a: stloc.1
		IL_003b: ldarg.0
		IL_003c: ldloc.1
		IL_003d: call instance int32& class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::GetBucket(uint32)
		IL_0042: stloc.2
		IL_0043: ldarg.0
		IL_0044: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
		IL_0049: stloc.3
		IL_004a: ldc.i4.m1
		IL_004b: stloc.s 4
		IL_004d: ldloc.2
		IL_004e: ldind.i4
		IL_004f: ldc.i4.1
		IL_0050: sub
		IL_0051: stloc.s 5
		IL_0053: br IL_013e
		// loop start (head: IL_013e)
			IL_0058: ldloc.3
			IL_0059: ldloc.s 5
			IL_005b: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0060: stloc.s 6
			IL_0062: ldloc.s 6
			IL_0064: ldfld uint32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::hashCode
			IL_0069: ldloc.1
			IL_006a: bne.un IL_0122

			IL_006f: ldarg.0
			IL_0070: ldfld class System.Collections.Generic.IEqualityComparer`1<!0> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_comparer
			IL_0075: dup
			IL_0076: brtrue.s IL_008d

			IL_0078: pop
			IL_0079: call class System.Collections.Generic.EqualityComparer`1<!0> class System.Collections.Generic.EqualityComparer`1<!TKey>::get_Default()
			IL_007e: ldloc.s 6
			IL_0080: ldfld !0 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::key
			IL_0085: ldarg.1
			IL_0086: callvirt instance bool class System.Collections.Generic.EqualityComparer`1<!TKey>::Equals(!0, !0)
			IL_008b: br.s IL_009a

			IL_008d: ldloc.s 6
			IL_008f: ldfld !0 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::key
			IL_0094: ldarg.1
			IL_0095: callvirt instance bool class System.Collections.Generic.IEqualityComparer`1<!TKey>::Equals(!0, !0)

			IL_009a: brfalse IL_0122

			IL_009f: ldloc.s 4
			IL_00a1: ldc.i4.0
			IL_00a2: bge.s IL_00b1

			IL_00a4: ldloc.2
			IL_00a5: ldloc.s 6
			IL_00a7: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_00ac: ldc.i4.1
			IL_00ad: add
			IL_00ae: stind.i4
			IL_00af: br.s IL_00c5

			IL_00b1: ldloc.3
			IL_00b2: ldloc.s 4
			IL_00b4: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_00b9: ldloc.s 6
			IL_00bb: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_00c0: stfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next

			IL_00c5: ldarg.2
			IL_00c6: ldloc.s 6
			IL_00c8: ldfld !1 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::'value'
			IL_00cd: stobj !TValue
			IL_00d2: ldloc.s 6
			IL_00d4: ldc.i4.s -3
			IL_00d6: ldarg.0
			IL_00d7: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_freeList
			IL_00dc: sub
			IL_00dd: stfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_00e2: call bool System.Runtime.CompilerServices.RuntimeHelpers::IsReferenceOrContainsReferences<!TKey>()
			IL_00e7: brfalse.s IL_00f6

			IL_00e9: ldloc.s 6
			IL_00eb: ldflda !0 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::key
			IL_00f0: initobj !TKey

			IL_00f6: call bool System.Runtime.CompilerServices.RuntimeHelpers::IsReferenceOrContainsReferences<!TValue>()
			IL_00fb: brfalse.s IL_010a

			IL_00fd: ldloc.s 6
			IL_00ff: ldflda !1 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::'value'
			IL_0104: initobj !TValue

			IL_010a: ldarg.0
			IL_010b: ldloc.s 5
			IL_010d: stfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_freeList
			IL_0112: ldarg.0
			IL_0113: ldarg.0
			IL_0114: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_freeCount
			IL_0119: ldc.i4.1
			IL_011a: add
			IL_011b: stfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_freeCount
			IL_0120: ldc.i4.1
			IL_0121: ret

			IL_0122: ldloc.s 5
			IL_0124: stloc.s 4
			IL_0126: ldloc.s 6
			IL_0128: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_012d: stloc.s 5
			IL_012f: ldloc.0
			IL_0130: ldc.i4.1
			IL_0131: add
			IL_0132: stloc.0
			IL_0133: ldloc.0
			IL_0134: ldloc.3
			IL_0135: ldlen
			IL_0136: conv.i4
			IL_0137: ble.un.s IL_013e

			IL_0139: call void System.ThrowHelper::ThrowInvalidOperationException_ConcurrentOperationsNotSupported()

			IL_013e: ldloc.s 5
			IL_0140: ldc.i4.0
			IL_0141: bge IL_0058
		// end loop

		IL_0146: ldarg.2
		IL_0147: initobj !TValue
		IL_014d: ldc.i4.0
		IL_014e: ret
	} // end of method Dictionary`2::Remove

	.method public final hidebysig newslot virtual 
		instance bool TryGetValue (
			!TKey key,
			[out] !TValue& 'value'
		) cil managed 
	{
		.param [2]
			.custom instance void System.Diagnostics.CodeAnalysis.MaybeNullWhenAttribute::.ctor(bool) = (
				01 00 00 00 00
			)
		// Method begins at RVA 0x16506c
		// Code size 39 (0x27)
		.maxstack 2
		.locals (
			[0] !TValue&
		)

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call instance !1& class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::FindValue(!0)
		IL_0007: stloc.0
		IL_0008: ldloc.0
		IL_0009: call bool Internal.Runtime.CompilerServices.Unsafe::IsNullRef<!TValue>(!!0&)
		IL_000e: brtrue.s IL_001e

		IL_0010: ldarg.2
		IL_0011: ldloc.0
		IL_0012: ldobj !TValue
		IL_0017: stobj !TValue
		IL_001c: ldc.i4.1
		IL_001d: ret

		IL_001e: ldarg.2
		IL_001f: initobj !TValue
		IL_0025: ldc.i4.0
		IL_0026: ret
	} // end of method Dictionary`2::TryGetValue

	.method public hidebysig 
		instance bool TryAdd (
			!TKey key,
			!TValue 'value'
		) cil managed 
	{
		// Method begins at RVA 0x16509f
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldc.i4.0
		IL_0004: call instance bool class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::TryInsert(!0, !1, valuetype System.Collections.Generic.InsertionBehavior)
		IL_0009: ret
	} // end of method Dictionary`2::TryAdd

	.method private final hidebysig specialname newslot virtual 
		instance bool 'System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<TKey,TValue>>.get_IsReadOnly' () cil managed 
	{
		.override method instance bool class System.Collections.Generic.ICollection`1<valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>>::get_IsReadOnly()
		// Method begins at RVA 0x40f0b
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldc.i4.0
		IL_0001: ret
	} // end of method Dictionary`2::'System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<TKey,TValue>>.get_IsReadOnly'

	.method private final hidebysig newslot virtual 
		instance void 'System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<TKey,TValue>>.CopyTo' (
			valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>[] 'array',
			int32 index
		) cil managed 
	{
		.override method instance void class System.Collections.Generic.ICollection`1<valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>>::CopyTo(!0[], int32)
		// Method begins at RVA 0x1650aa
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: call instance void class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::CopyTo(valuetype System.Collections.Generic.KeyValuePair`2<!0, !1>[], int32)
		IL_0008: ret
	} // end of method Dictionary`2::'System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<TKey,TValue>>.CopyTo'

	.method private final hidebysig newslot virtual 
		instance void System.Collections.ICollection.CopyTo (
			class System.Array 'array',
			int32 index
		) cil managed 
	{
		.override method instance void System.Collections.ICollection::CopyTo(class System.Array, int32)
		// Method begins at RVA 0x1650b4
		// Code size 321 (0x141)
		.maxstack 5
		.locals (
			[0] valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>[],
			[1] valuetype System.Collections.DictionaryEntry[],
			[2] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>[],
			[3] int32,
			[4] object[],
			[5] int32,
			[6] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>[],
			[7] int32
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.2
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.1
		IL_000a: callvirt instance int32 System.Array::get_Rank()
		IL_000f: ldc.i4.1
		IL_0010: beq.s IL_0018

		IL_0012: ldc.i4.7
		IL_0013: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0018: ldarg.1
		IL_0019: ldc.i4.0
		IL_001a: callvirt instance int32 System.Array::GetLowerBound(int32)
		IL_001f: brfalse.s IL_0027

		IL_0021: ldc.i4.8
		IL_0022: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_0027: ldarg.2
		IL_0028: ldarg.1
		IL_0029: callvirt instance int32 System.Array::get_Length()
		IL_002e: ble.un.s IL_0035

		IL_0030: call void System.ThrowHelper::ThrowIndexArgumentOutOfRange_NeedNonNegNumException()

		IL_0035: ldarg.1
		IL_0036: callvirt instance int32 System.Array::get_Length()
		IL_003b: ldarg.2
		IL_003c: sub
		IL_003d: ldarg.0
		IL_003e: call instance int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::get_Count()
		IL_0043: bge.s IL_004b

		IL_0045: ldc.i4.5
		IL_0046: call void System.ThrowHelper::ThrowArgumentException(valuetype System.ExceptionResource)

		IL_004b: ldarg.1
		IL_004c: isinst valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>[]
		IL_0051: stloc.0
		IL_0052: ldloc.0
		IL_0053: brfalse.s IL_005e

		IL_0055: ldarg.0
		IL_0056: ldloc.0
		IL_0057: ldarg.2
		IL_0058: call instance void class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::CopyTo(valuetype System.Collections.Generic.KeyValuePair`2<!0, !1>[], int32)
		IL_005d: ret

		IL_005e: ldarg.1
		IL_005f: isinst valuetype System.Collections.DictionaryEntry[]
		IL_0064: stloc.1
		IL_0065: ldloc.1
		IL_0066: brfalse.s IL_00c3

		IL_0068: ldarg.0
		IL_0069: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
		IL_006e: stloc.2
		IL_006f: ldc.i4.0
		IL_0070: stloc.3
		IL_0071: br.s IL_00b9
		// loop start (head: IL_00b9)
			IL_0073: ldloc.2
			IL_0074: ldloc.3
			IL_0075: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_007a: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_007f: ldc.i4.m1
			IL_0080: blt.s IL_00b5

			IL_0082: ldloc.1
			IL_0083: ldarg.2
			IL_0084: dup
			IL_0085: ldc.i4.1
			IL_0086: add
			IL_0087: starg.s index
			IL_0089: ldloc.2
			IL_008a: ldloc.3
			IL_008b: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0090: ldfld !0 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::key
			IL_0095: box !TKey
			IL_009a: ldloc.2
			IL_009b: ldloc.3
			IL_009c: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_00a1: ldfld !1 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::'value'
			IL_00a6: box !TValue
			IL_00ab: newobj instance void System.Collections.DictionaryEntry::.ctor(object, object)
			IL_00b0: stelem System.Collections.DictionaryEntry

			IL_00b5: ldloc.3
			IL_00b6: ldc.i4.1
			IL_00b7: add
			IL_00b8: stloc.3

			IL_00b9: ldloc.3
			IL_00ba: ldarg.0
			IL_00bb: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
			IL_00c0: blt.s IL_0073
		// end loop

		IL_00c2: ret

		IL_00c3: ldarg.1
		IL_00c4: isinst object[]
		IL_00c9: stloc.s 4
		IL_00cb: ldloc.s 4
		IL_00cd: brtrue.s IL_00d4

		IL_00cf: call void System.ThrowHelper::ThrowArgumentException_Argument_InvalidArrayType()

		IL_00d4: nop
		.try
		{
			IL_00d5: ldarg.0
			IL_00d6: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
			IL_00db: stloc.s 5
			IL_00dd: ldarg.0
			IL_00de: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
			IL_00e3: stloc.s 6
			IL_00e5: ldc.i4.0
			IL_00e6: stloc.s 7
			IL_00e8: br.s IL_0130
			// loop start (head: IL_0130)
				IL_00ea: ldloc.s 6
				IL_00ec: ldloc.s 7
				IL_00ee: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
				IL_00f3: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
				IL_00f8: ldc.i4.m1
				IL_00f9: blt.s IL_012a

				IL_00fb: ldloc.s 4
				IL_00fd: ldarg.2
				IL_00fe: dup
				IL_00ff: ldc.i4.1
				IL_0100: add
				IL_0101: starg.s index
				IL_0103: ldloc.s 6
				IL_0105: ldloc.s 7
				IL_0107: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
				IL_010c: ldfld !0 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::key
				IL_0111: ldloc.s 6
				IL_0113: ldloc.s 7
				IL_0115: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
				IL_011a: ldfld !1 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::'value'
				IL_011f: newobj instance void valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>::.ctor(!0, !1)
				IL_0124: box valuetype System.Collections.Generic.KeyValuePair`2<!TKey, !TValue>
				IL_0129: stelem.ref

				IL_012a: ldloc.s 7
				IL_012c: ldc.i4.1
				IL_012d: add
				IL_012e: stloc.s 7

				IL_0130: ldloc.s 7
				IL_0132: ldloc.s 5
				IL_0134: blt.s IL_00ea
			// end loop

			IL_0136: leave.s IL_0140
		} // end .try
		catch System.ArrayTypeMismatchException
		{
			IL_0138: pop
			IL_0139: call void System.ThrowHelper::ThrowArgumentException_Argument_InvalidArrayType()
			IL_013e: leave.s IL_0140
		} // end handler

		IL_0140: ret
	} // end of method Dictionary`2::System.Collections.ICollection.CopyTo

	.method private final hidebysig newslot virtual 
		instance class System.Collections.IEnumerator System.Collections.IEnumerable.GetEnumerator () cil managed 
	{
		.override method instance class System.Collections.IEnumerator System.Collections.IEnumerable::GetEnumerator()
		// Method begins at RVA 0x1646a3
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.2
		IL_0002: newobj instance void valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::.ctor(class System.Collections.Generic.Dictionary`2<!0, !1>, int32)
		IL_0007: box valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>
		IL_000c: ret
	} // end of method Dictionary`2::System.Collections.IEnumerable.GetEnumerator

	.method public hidebysig 
		instance int32 EnsureCapacity (
			int32 capacity
		) cil managed 
	{
		// Method begins at RVA 0x165214
		// Code size 84 (0x54)
		.maxstack 3
		.locals (
			[0] int32,
			[1] int32
		)

		IL_0000: ldarg.1
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_000b

		IL_0004: ldc.i4.s 22
		IL_0006: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument)

		IL_000b: ldarg.0
		IL_000c: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
		IL_0011: brfalse.s IL_001d

		IL_0013: ldarg.0
		IL_0014: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
		IL_0019: ldlen
		IL_001a: conv.i4
		IL_001b: br.s IL_001e

		IL_001d: ldc.i4.0

		IL_001e: stloc.0
		IL_001f: ldloc.0
		IL_0020: ldarg.1
		IL_0021: blt.s IL_0025

		IL_0023: ldloc.0
		IL_0024: ret

		IL_0025: ldarg.0
		IL_0026: ldarg.0
		IL_0027: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_version
		IL_002c: ldc.i4.1
		IL_002d: add
		IL_002e: stfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_version
		IL_0033: ldarg.0
		IL_0034: ldfld int32[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_buckets
		IL_0039: brtrue.s IL_0043

		IL_003b: ldarg.0
		IL_003c: ldarg.1
		IL_003d: call instance int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::Initialize(int32)
		IL_0042: ret

		IL_0043: ldarg.1
		IL_0044: call int32 System.Collections.HashHelpers::GetPrime(int32)
		IL_0049: stloc.1
		IL_004a: ldarg.0
		IL_004b: ldloc.1
		IL_004c: ldc.i4.0
		IL_004d: call instance void class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::Resize(int32, bool)
		IL_0052: ldloc.1
		IL_0053: ret
	} // end of method Dictionary`2::EnsureCapacity

	.method public hidebysig 
		instance void TrimExcess () cil managed 
	{
		// Method begins at RVA 0x165274
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.0
		IL_0002: call instance int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::get_Count()
		IL_0007: call instance void class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::TrimExcess(int32)
		IL_000c: ret
	} // end of method Dictionary`2::TrimExcess

	.method public hidebysig 
		instance void TrimExcess (
			int32 capacity
		) cil managed 
	{
		// Method begins at RVA 0x165284
		// Code size 209 (0xd1)
		.maxstack 3
		.locals (
			[0] int32,
			[1] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>[],
			[2] int32,
			[3] int32,
			[4] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>[],
			[5] int32,
			[6] int32,
			[7] uint32,
			[8] valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>&,
			[9] int32&
		)

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: call instance int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::get_Count()
		IL_0007: bge.s IL_0010

		IL_0009: ldc.i4.s 22
		IL_000b: call void System.ThrowHelper::ThrowArgumentOutOfRangeException(valuetype System.ExceptionArgument)

		IL_0010: ldarg.1
		IL_0011: call int32 System.Collections.HashHelpers::GetPrime(int32)
		IL_0016: stloc.0
		IL_0017: ldarg.0
		IL_0018: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
		IL_001d: stloc.1
		IL_001e: ldloc.1
		IL_001f: brfalse.s IL_0026

		IL_0021: ldloc.1
		IL_0022: ldlen
		IL_0023: conv.i4
		IL_0024: br.s IL_0027

		IL_0026: ldc.i4.0

		IL_0027: stloc.2
		IL_0028: ldloc.0
		IL_0029: ldloc.2
		IL_002a: blt.s IL_002d

		IL_002c: ret

		IL_002d: ldarg.0
		IL_002e: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
		IL_0033: stloc.3
		IL_0034: ldarg.0
		IL_0035: ldarg.0
		IL_0036: ldfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_version
		IL_003b: ldc.i4.1
		IL_003c: add
		IL_003d: stfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_version
		IL_0042: ldarg.0
		IL_0043: ldloc.0
		IL_0044: call instance int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::Initialize(int32)
		IL_0049: pop
		IL_004a: ldarg.0
		IL_004b: ldfld valuetype System.Collections.Generic.Dictionary`2/Entry<!0, !1>[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_entries
		IL_0050: stloc.s 4
		IL_0052: ldc.i4.0
		IL_0053: stloc.s 5
		IL_0055: ldc.i4.0
		IL_0056: stloc.s 6
		IL_0058: br.s IL_00bc
		// loop start (head: IL_00bc)
			IL_005a: ldloc.1
			IL_005b: ldloc.s 6
			IL_005d: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0062: ldfld uint32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::hashCode
			IL_0067: stloc.s 7
			IL_0069: ldloc.1
			IL_006a: ldloc.s 6
			IL_006c: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0071: ldfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_0076: ldc.i4.m1
			IL_0077: blt.s IL_00b6

			IL_0079: ldloc.s 4
			IL_007b: ldloc.s 5
			IL_007d: ldelema valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0082: stloc.s 8
			IL_0084: ldloc.s 8
			IL_0086: ldloc.1
			IL_0087: ldloc.s 6
			IL_0089: ldelem valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_008e: stobj valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>
			IL_0093: ldarg.0
			IL_0094: ldloc.s 7
			IL_0096: call instance int32& class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::GetBucket(uint32)
			IL_009b: stloc.s 9
			IL_009d: ldloc.s 8
			IL_009f: ldloc.s 9
			IL_00a1: ldind.i4
			IL_00a2: ldc.i4.1
			IL_00a3: sub
			IL_00a4: stfld int32 valuetype System.Collections.Generic.Dictionary`2/Entry<!TKey, !TValue>::next
			IL_00a9: ldloc.s 9
			IL_00ab: ldloc.s 5
			IL_00ad: ldc.i4.1
			IL_00ae: add
			IL_00af: stind.i4
			IL_00b0: ldloc.s 5
			IL_00b2: ldc.i4.1
			IL_00b3: add
			IL_00b4: stloc.s 5

			IL_00b6: ldloc.s 6
			IL_00b8: ldc.i4.1
			IL_00b9: add
			IL_00ba: stloc.s 6

			IL_00bc: ldloc.s 6
			IL_00be: ldloc.3
			IL_00bf: blt.s IL_005a
		// end loop

		IL_00c1: ldarg.0
		IL_00c2: ldloc.s 5
		IL_00c4: stfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_count
		IL_00c9: ldarg.0
		IL_00ca: ldc.i4.0
		IL_00cb: stfld int32 class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_freeCount
		IL_00d0: ret
	} // end of method Dictionary`2::TrimExcess

	.method private final hidebysig specialname newslot virtual 
		instance bool System.Collections.ICollection.get_IsSynchronized () cil managed 
	{
		.override method instance bool System.Collections.ICollection::get_IsSynchronized()
		// Method begins at RVA 0x40f0b
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldc.i4.0
		IL_0001: ret
	} // end of method Dictionary`2::System.Collections.ICollection.get_IsSynchronized

	.method private final hidebysig specialname newslot virtual 
		instance object System.Collections.ICollection.get_SyncRoot () cil managed 
	{
		.override method instance object System.Collections.ICollection::get_SyncRoot()
		// Method begins at RVA 0x40f08
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ret
	} // end of method Dictionary`2::System.Collections.ICollection.get_SyncRoot

	.method private final hidebysig specialname newslot virtual 
		instance bool System.Collections.IDictionary.get_IsFixedSize () cil managed 
	{
		.override method instance bool System.Collections.IDictionary::get_IsFixedSize()
		// Method begins at RVA 0x40f0b
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldc.i4.0
		IL_0001: ret
	} // end of method Dictionary`2::System.Collections.IDictionary.get_IsFixedSize

	.method private final hidebysig specialname newslot virtual 
		instance bool System.Collections.IDictionary.get_IsReadOnly () cil managed 
	{
		.override method instance bool System.Collections.IDictionary::get_IsReadOnly()
		// Method begins at RVA 0x40f0b
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldc.i4.0
		IL_0001: ret
	} // end of method Dictionary`2::System.Collections.IDictionary.get_IsReadOnly

	.method private final hidebysig specialname newslot virtual 
		instance class System.Collections.ICollection System.Collections.IDictionary.get_Keys () cil managed 
	{
		.override method instance class System.Collections.ICollection System.Collections.IDictionary::get_Keys()
		// Method begins at RVA 0x164386
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance class System.Collections.Generic.Dictionary`2/KeyCollection<!0, !1> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::get_Keys()
		IL_0006: ret
	} // end of method Dictionary`2::System.Collections.IDictionary.get_Keys

	.method private final hidebysig specialname newslot virtual 
		instance class System.Collections.ICollection System.Collections.IDictionary.get_Values () cil managed 
	{
		.override method instance class System.Collections.ICollection System.Collections.IDictionary::get_Values()
		// Method begins at RVA 0x1643b6
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance class System.Collections.Generic.Dictionary`2/ValueCollection<!0, !1> class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::get_Values()
		IL_0006: ret
	} // end of method Dictionary`2::System.Collections.IDictionary.get_Values

	.method private final hidebysig specialname newslot virtual 
		instance object System.Collections.IDictionary.get_Item (
			object key
		) cil managed 
	{
		.override method instance object System.Collections.IDictionary::get_Item(object)
		// Method begins at RVA 0x165364
		// Code size 43 (0x2b)
		.maxstack 2
		.locals (
			[0] !TValue&
		)

		IL_0000: ldarg.1
		IL_0001: call bool class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::IsCompatibleKey(object)
		IL_0006: brfalse.s IL_0029

		IL_0008: ldarg.0
		IL_0009: ldarg.1
		IL_000a: unbox.any !TKey
		IL_000f: call instance !1& class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::FindValue(!0)
		IL_0014: stloc.0
		IL_0015: ldloc.0
		IL_0016: call bool Internal.Runtime.CompilerServices.Unsafe::IsNullRef<!TValue>(!!0&)
		IL_001b: brtrue.s IL_0029

		IL_001d: ldloc.0
		IL_001e: ldobj !TValue
		IL_0023: box !TValue
		IL_0028: ret

		IL_0029: ldnull
		IL_002a: ret
	} // end of method Dictionary`2::System.Collections.IDictionary.get_Item

	.method private final hidebysig specialname newslot virtual 
		instance void System.Collections.IDictionary.set_Item (
			object key,
			object 'value'
		) cil managed 
	{
		.override method instance void System.Collections.IDictionary::set_Item(object, object)
		// Method begins at RVA 0x16539c
		// Code size 79 (0x4f)
		.maxstack 3
		.locals (
			[0] !TKey
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.4
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.2
		IL_000a: ldc.i4.7
		IL_000b: call void System.ThrowHelper::IfNullAndNullsAreIllegalThenThrow<!TValue>(object, valuetype System.ExceptionArgument)
		.try
		{
			IL_0010: ldarg.1
			IL_0011: unbox.any !TKey
			IL_0016: stloc.0
			.try
			{
				IL_0017: ldarg.0
				IL_0018: ldloc.0
				IL_0019: ldarg.2
				IL_001a: unbox.any !TValue
				IL_001f: call instance void class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::set_Item(!0, !1)
				IL_0024: leave.s IL_0039
			} // end .try
			catch System.InvalidCastException
			{
				IL_0026: pop
				IL_0027: ldarg.2
				IL_0028: ldtoken !TValue
				IL_002d: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
				IL_0032: call void System.ThrowHelper::ThrowWrongValueTypeArgumentException<object>(!!0, class System.Type)
				IL_0037: leave.s IL_0039
			} // end handler

			IL_0039: leave.s IL_004e
		} // end .try
		catch System.InvalidCastException
		{
			IL_003b: pop
			IL_003c: ldarg.1
			IL_003d: ldtoken !TKey
			IL_0042: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
			IL_0047: call void System.ThrowHelper::ThrowWrongKeyTypeArgumentException<object>(!!0, class System.Type)
			IL_004c: leave.s IL_004e
		} // end handler

		IL_004e: ret
	} // end of method Dictionary`2::System.Collections.IDictionary.set_Item

	.method private hidebysig static 
		bool IsCompatibleKey (
			object key
		) cil managed 
	{
		// Method begins at RVA 0x165414
		// Code size 19 (0x13)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.4
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.0
		IL_000a: isinst !TKey
		IL_000f: ldnull
		IL_0010: cgt.un
		IL_0012: ret
	} // end of method Dictionary`2::IsCompatibleKey

	.method private final hidebysig newslot virtual 
		instance void System.Collections.IDictionary.Add (
			object key,
			object 'value'
		) cil managed 
	{
		.override method instance void System.Collections.IDictionary::Add(object, object)
		// Method begins at RVA 0x165428
		// Code size 79 (0x4f)
		.maxstack 3
		.locals (
			[0] !TKey
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0009

		IL_0003: ldc.i4.4
		IL_0004: call void System.ThrowHelper::ThrowArgumentNullException(valuetype System.ExceptionArgument)

		IL_0009: ldarg.2
		IL_000a: ldc.i4.7
		IL_000b: call void System.ThrowHelper::IfNullAndNullsAreIllegalThenThrow<!TValue>(object, valuetype System.ExceptionArgument)
		.try
		{
			IL_0010: ldarg.1
			IL_0011: unbox.any !TKey
			IL_0016: stloc.0
			.try
			{
				IL_0017: ldarg.0
				IL_0018: ldloc.0
				IL_0019: ldarg.2
				IL_001a: unbox.any !TValue
				IL_001f: call instance void class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::Add(!0, !1)
				IL_0024: leave.s IL_0039
			} // end .try
			catch System.InvalidCastException
			{
				IL_0026: pop
				IL_0027: ldarg.2
				IL_0028: ldtoken !TValue
				IL_002d: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
				IL_0032: call void System.ThrowHelper::ThrowWrongValueTypeArgumentException<object>(!!0, class System.Type)
				IL_0037: leave.s IL_0039
			} // end handler

			IL_0039: leave.s IL_004e
		} // end .try
		catch System.InvalidCastException
		{
			IL_003b: pop
			IL_003c: ldarg.1
			IL_003d: ldtoken !TKey
			IL_0042: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
			IL_0047: call void System.ThrowHelper::ThrowWrongKeyTypeArgumentException<object>(!!0, class System.Type)
			IL_004c: leave.s IL_004e
		} // end handler

		IL_004e: ret
	} // end of method Dictionary`2::System.Collections.IDictionary.Add

	.method private final hidebysig newslot virtual 
		instance bool System.Collections.IDictionary.Contains (
			object key
		) cil managed 
	{
		.override method instance bool System.Collections.IDictionary::Contains(object)
		// Method begins at RVA 0x1654a0
		// Code size 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call bool class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::IsCompatibleKey(object)
		IL_0006: brfalse.s IL_0015

		IL_0008: ldarg.0
		IL_0009: ldarg.1
		IL_000a: unbox.any !TKey
		IL_000f: call instance bool class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::ContainsKey(!0)
		IL_0014: ret

		IL_0015: ldc.i4.0
		IL_0016: ret
	} // end of method Dictionary`2::System.Collections.IDictionary.Contains

	.method private final hidebysig newslot virtual 
		instance class System.Collections.IDictionaryEnumerator System.Collections.IDictionary.GetEnumerator () cil managed 
	{
		.override method instance class System.Collections.IDictionaryEnumerator System.Collections.IDictionary::GetEnumerator()
		// Method begins at RVA 0x1654b8
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.1
		IL_0002: newobj instance void valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>::.ctor(class System.Collections.Generic.Dictionary`2<!0, !1>, int32)
		IL_0007: box valuetype System.Collections.Generic.Dictionary`2/Enumerator<!TKey, !TValue>
		IL_000c: ret
	} // end of method Dictionary`2::System.Collections.IDictionary.GetEnumerator

	.method private final hidebysig newslot virtual 
		instance void System.Collections.IDictionary.Remove (
			object key
		) cil managed 
	{
		.override method instance void System.Collections.IDictionary::Remove(object)
		// Method begins at RVA 0x1654c6
		// Code size 22 (0x16)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: call bool class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::IsCompatibleKey(object)
		IL_0006: brfalse.s IL_0015

		IL_0008: ldarg.0
		IL_0009: ldarg.1
		IL_000a: unbox.any !TKey
		IL_000f: call instance bool class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::Remove(!0)
		IL_0014: pop

		IL_0015: ret
	} // end of method Dictionary`2::System.Collections.IDictionary.Remove

	.method private hidebysig 
		instance int32& GetBucket (
			uint32 hashCode
		) cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x1654e0
		// Code size 19 (0x13)
		.maxstack 3
		.locals (
			[0] int32[]
		)

		IL_0000: ldarg.0
		IL_0001: ldfld int32[] class System.Collections.Generic.Dictionary`2<!TKey, !TValue>::_buckets
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldarg.1
		IL_0009: ldloc.0
		IL_000a: ldlen
		IL_000b: conv.i4
		IL_000c: rem.un
		IL_000d: ldelema System.Int32
		IL_0012: ret
	} // end of method Dictionary`2::GetBucket

	// Properties
	.property instance class System.Collections.Generic.IEqualityComparer`1<!TKey> Comparer()
	{
		.get instance class System.Collections.Generic.IEqualityComparer`1<!0> System.Collections.Generic.Dictionary`2::get_Comparer()
	}
	.property instance int32 Count()
	{
		.get instance int32 System.Collections.Generic.Dictionary`2::get_Count()
	}
	.property instance class System.Collections.Generic.Dictionary`2/KeyCollection<!TKey, !TValue> Keys()
	{
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
			01 00 03 00 00 00 01 00 00 00 00
		)
		.get instance class System.Collections.Generic.Dictionary`2/KeyCollection<!0, !1> System.Collections.Generic.Dictionary`2::get_Keys()
	}
	.property instance class System.Collections.Generic.ICollection`1<!TKey> 'System.Collections.Generic.IDictionary<TKey,TValue>.Keys'()
	{
		.get instance class System.Collections.Generic.ICollection`1<!0> System.Collections.Generic.Dictionary`2::'System.Collections.Generic.IDictionary<TKey,TValue>.get_Keys'()
	}
	.property instance class System.Collections.Generic.IEnumerable`1<!TKey> 'System.Collections.Generic.IReadOnlyDictionary<TKey,TValue>.Keys'()
	{
		.get instance class System.Collections.Generic.IEnumerable`1<!0> System.Collections.Generic.Dictionary`2::'System.Collections.Generic.IReadOnlyDictionary<TKey,TValue>.get_Keys'()
	}
	.property instance class System.Collections.Generic.Dictionary`2/ValueCollection<!TKey, !TValue> Values()
	{
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
			01 00 03 00 00 00 01 00 00 00 00
		)
		.get instance class System.Collections.Generic.Dictionary`2/ValueCollection<!0, !1> System.Collections.Generic.Dictionary`2::get_Values()
	}
	.property instance class System.Collections.Generic.ICollection`1<!TValue> 'System.Collections.Generic.IDictionary<TKey,TValue>.Values'()
	{
		.get instance class System.Collections.Generic.ICollection`1<!1> System.Collections.Generic.Dictionary`2::'System.Collections.Generic.IDictionary<TKey,TValue>.get_Values'()
	}
	.property instance class System.Collections.Generic.IEnumerable`1<!TValue> 'System.Collections.Generic.IReadOnlyDictionary<TKey,TValue>.Values'()
	{
		.get instance class System.Collections.Generic.IEnumerable`1<!1> System.Collections.Generic.Dictionary`2::'System.Collections.Generic.IReadOnlyDictionary<TKey,TValue>.get_Values'()
	}
	.property instance !TValue Item(
		!TKey key
	)
	{
		.get instance !1 System.Collections.Generic.Dictionary`2::get_Item(!0)
		.set instance void System.Collections.Generic.Dictionary`2::set_Item(!0, !1)
	}
	.property instance bool 'System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<TKey,TValue>>.IsReadOnly'()
	{
		.get instance bool System.Collections.Generic.Dictionary`2::'System.Collections.Generic.ICollection<System.Collections.Generic.KeyValuePair<TKey,TValue>>.get_IsReadOnly'()
	}
	.property instance bool System.Collections.ICollection.IsSynchronized()
	{
		.get instance bool System.Collections.Generic.Dictionary`2::System.Collections.ICollection.get_IsSynchronized()
	}
	.property instance object System.Collections.ICollection.SyncRoot()
	{
		.get instance object System.Collections.Generic.Dictionary`2::System.Collections.ICollection.get_SyncRoot()
	}
	.property instance bool System.Collections.IDictionary.IsFixedSize()
	{
		.get instance bool System.Collections.Generic.Dictionary`2::System.Collections.IDictionary.get_IsFixedSize()
	}
	.property instance bool System.Collections.IDictionary.IsReadOnly()
	{
		.get instance bool System.Collections.Generic.Dictionary`2::System.Collections.IDictionary.get_IsReadOnly()
	}
	.property instance class System.Collections.ICollection System.Collections.IDictionary.Keys()
	{
		.get instance class System.Collections.ICollection System.Collections.Generic.Dictionary`2::System.Collections.IDictionary.get_Keys()
	}
	.property instance class System.Collections.ICollection System.Collections.IDictionary.Values()
	{
		.get instance class System.Collections.ICollection System.Collections.Generic.Dictionary`2::System.Collections.IDictionary.get_Values()
	}
	.property instance object System.Collections.IDictionary.Item(
		object key
	)
	{
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.get instance object System.Collections.Generic.Dictionary`2::System.Collections.IDictionary.get_Item(object)
		.set instance void System.Collections.Generic.Dictionary`2::System.Collections.IDictionary.set_Item(object, object)
	}

} // end of class System.Collections.Generic.Dictionary`2