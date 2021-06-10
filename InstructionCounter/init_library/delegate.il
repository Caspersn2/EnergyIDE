.class public auto ansi abstract beforefieldinit System.Delegate
	extends System.Object
	implements .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.ICloneable,
	           .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
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
	.custom instance void System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(valuetype System.Runtime.InteropServices.ClassInterfaceType) = (
		01 00 00 00 00 00 00 00
	)
	.custom instance void System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = (
		01 00 01 00 00
	)
	// Fields
	.field assembly object _target
	.field assembly object _methodBase
	.field assembly native int _methodPtr
	.field assembly native int _methodPtrAux

	// Methods
	.method family hidebysig specialname rtspecialname 
		instance void .ctor (
			object target,
			string 'method'
		) cil managed 
	{
		// Method begins at RVA 0x47d54
		// Code size 69 (0x45)
		.maxstack 5

		IL_0000: ldarg.0
		IL_0001: call instance void System.Object::.ctor()
		IL_0006: ldarg.1
		IL_0007: brtrue.s IL_0014

		IL_0009: ldstr "target"
		IL_000e: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0013: throw

		IL_0014: ldarg.2
		IL_0015: brtrue.s IL_0022

		IL_0017: ldstr "method"
		IL_001c: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0021: throw

		IL_0022: ldarg.0
		IL_0023: ldarg.1
		IL_0024: ldarg.1
		IL_0025: callvirt instance class System.Type System.Object::GetType()
		IL_002a: castclass System.RuntimeType
		IL_002f: ldarg.2
		IL_0030: ldc.i4.s 10
		IL_0032: call instance bool System.Delegate::BindToMethodName(object, class System.RuntimeType, string, valuetype System.DelegateBindingFlags)
		IL_0037: brtrue.s IL_0044

		IL_0039: call string System.SR::get_Arg_DlgtTargMeth()
		IL_003e: newobj instance void System.ArgumentException::.ctor(string)
		IL_0043: throw

		IL_0044: ret
	} // end of method Delegate::.ctor

	.method family hidebysig specialname rtspecialname 
		instance void .ctor (
			class System.Type target,
			string 'method'
		) cil managed 
	{
		// Method begins at RVA 0x47da8
		// Code size 103 (0x67)
		.maxstack 5
		.locals (
			[0] class System.RuntimeType
		)

		IL_0000: ldarg.0
		IL_0001: call instance void System.Object::.ctor()
		IL_0006: ldarg.1
		IL_0007: ldnull
		IL_0008: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_000d: brfalse.s IL_001a

		IL_000f: ldstr "target"
		IL_0014: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0019: throw

		IL_001a: ldarg.1
		IL_001b: callvirt instance bool System.Type::get_ContainsGenericParameters()
		IL_0020: brfalse.s IL_0032

		IL_0022: call string System.SR::get_Arg_UnboundGenParam()
		IL_0027: ldstr "target"
		IL_002c: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0031: throw

		IL_0032: ldarg.2
		IL_0033: brtrue.s IL_0040

		IL_0035: ldstr "method"
		IL_003a: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_003f: throw

		IL_0040: ldarg.1
		IL_0041: isinst System.RuntimeType
		IL_0046: stloc.0
		IL_0047: ldloc.0
		IL_0048: brtrue.s IL_005a

		IL_004a: call string System.SR::get_Argument_MustBeRuntimeType()
		IL_004f: ldstr "target"
		IL_0054: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0059: throw

		IL_005a: ldarg.0
		IL_005b: ldnull
		IL_005c: ldloc.0
		IL_005d: ldarg.2
		IL_005e: ldc.i4.s 37
		IL_0060: call instance bool System.Delegate::BindToMethodName(object, class System.RuntimeType, string, valuetype System.DelegateBindingFlags)
		IL_0065: pop
		IL_0066: ret
	} // end of method Delegate::.ctor

	.method family hidebysig newslot virtual 
		instance object DynamicInvokeImpl (
			object[] args
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x47e1c
		// Code size 48 (0x30)
		.maxstack 6
		.locals (
			[0] valuetype System.RuntimeMethodHandleInternal,
			[1] class System.Reflection.RuntimeMethodInfo
		)

		IL_0000: ldloca.s 0
		IL_0002: ldarg.0
		IL_0003: call instance native int System.Delegate::GetInvokeMethod()
		IL_0008: call instance void System.RuntimeMethodHandleInternal::.ctor(native int)
		IL_000d: ldarg.0
		IL_000e: call instance class System.Type System.Object::GetType()
		IL_0013: castclass System.RuntimeType
		IL_0018: ldloc.0
		IL_0019: call class System.Reflection.MethodBase System.RuntimeType::GetMethodBase(class System.RuntimeType, valuetype System.RuntimeMethodHandleInternal)
		IL_001e: castclass System.Reflection.RuntimeMethodInfo
		IL_0023: stloc.1
		IL_0024: ldloc.1
		IL_0025: ldarg.0
		IL_0026: ldc.i4.0
		IL_0027: ldnull
		IL_0028: ldarg.1
		IL_0029: ldnull
		IL_002a: callvirt instance object System.Reflection.MethodBase::Invoke(object, valuetype System.Reflection.BindingFlags, class System.Reflection.Binder, object[], class System.Globalization.CultureInfo)
		IL_002f: ret
	} // end of method Delegate::DynamicInvokeImpl

	.method public hidebysig virtual 
		instance bool Equals (
			object obj
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x47e58
		// Code size 238 (0xee)
		.maxstack 2
		.locals (
			[0] class System.Delegate
		)

		IL_0000: ldarg.1
		IL_0001: brfalse.s IL_000c

		IL_0003: ldarg.0
		IL_0004: ldarg.1
		IL_0005: call bool System.Delegate::InternalEqualTypes(object, object)
		IL_000a: brtrue.s IL_000e

		IL_000c: ldc.i4.0
		IL_000d: ret

		IL_000e: ldarg.1
		IL_000f: castclass System.Delegate
		IL_0014: stloc.0
		IL_0015: ldarg.0
		IL_0016: ldfld object System.Delegate::_target
		IL_001b: ldloc.0
		IL_001c: ldfld object System.Delegate::_target
		IL_0021: bne.un.s IL_004b

		IL_0023: ldarg.0
		IL_0024: ldfld native int System.Delegate::_methodPtr
		IL_0029: ldloc.0
		IL_002a: ldfld native int System.Delegate::_methodPtr
		IL_002f: call bool System.IntPtr::op_Equality(native int, native int)
		IL_0034: brfalse.s IL_004b

		IL_0036: ldarg.0
		IL_0037: ldfld native int System.Delegate::_methodPtrAux
		IL_003c: ldloc.0
		IL_003d: ldfld native int System.Delegate::_methodPtrAux
		IL_0042: call bool System.IntPtr::op_Equality(native int, native int)
		IL_0047: brfalse.s IL_004b

		IL_0049: ldc.i4.1
		IL_004a: ret

		IL_004b: ldarg.0
		IL_004c: ldfld native int System.Delegate::_methodPtrAux
		IL_0051: ldsfld native int System.IntPtr::Zero
		IL_0056: call bool System.IntPtr::op_Equality(native int, native int)
		IL_005b: brfalse.s IL_0081

		IL_005d: ldloc.0
		IL_005e: ldfld native int System.Delegate::_methodPtrAux
		IL_0063: ldsfld native int System.IntPtr::Zero
		IL_0068: call bool System.IntPtr::op_Inequality(native int, native int)
		IL_006d: brfalse.s IL_0071

		IL_006f: ldc.i4.0
		IL_0070: ret

		IL_0071: ldarg.0
		IL_0072: ldfld object System.Delegate::_target
		IL_0077: ldloc.0
		IL_0078: ldfld object System.Delegate::_target
		IL_007d: beq.s IL_00aa

		IL_007f: ldc.i4.0
		IL_0080: ret

		IL_0081: ldloc.0
		IL_0082: ldfld native int System.Delegate::_methodPtrAux
		IL_0087: ldsfld native int System.IntPtr::Zero
		IL_008c: call bool System.IntPtr::op_Equality(native int, native int)
		IL_0091: brfalse.s IL_0095

		IL_0093: ldc.i4.0
		IL_0094: ret

		IL_0095: ldarg.0
		IL_0096: ldfld native int System.Delegate::_methodPtrAux
		IL_009b: ldloc.0
		IL_009c: ldfld native int System.Delegate::_methodPtrAux
		IL_00a1: call bool System.IntPtr::op_Equality(native int, native int)
		IL_00a6: brfalse.s IL_00aa

		IL_00a8: ldc.i4.1
		IL_00a9: ret

		IL_00aa: ldarg.0
		IL_00ab: ldfld object System.Delegate::_methodBase
		IL_00b0: brfalse.s IL_00d4

		IL_00b2: ldloc.0
		IL_00b3: ldfld object System.Delegate::_methodBase
		IL_00b8: brfalse.s IL_00d4

		IL_00ba: ldarg.0
		IL_00bb: ldfld object System.Delegate::_methodBase
		IL_00c0: isinst System.Reflection.MethodInfo
		IL_00c5: brfalse.s IL_00d4

		IL_00c7: ldloc.0
		IL_00c8: ldfld object System.Delegate::_methodBase
		IL_00cd: isinst System.Reflection.MethodInfo
		IL_00d2: brtrue.s IL_00dc

		IL_00d4: ldarg.0
		IL_00d5: ldloc.0
		IL_00d6: call bool System.Delegate::InternalEqualMethodHandles(class System.Delegate, class System.Delegate)
		IL_00db: ret

		IL_00dc: ldarg.0
		IL_00dd: ldfld object System.Delegate::_methodBase
		IL_00e2: ldloc.0
		IL_00e3: ldfld object System.Delegate::_methodBase
		IL_00e8: callvirt instance bool System.Object::Equals(object)
		IL_00ed: ret
	} // end of method Delegate::Equals

	.method public hidebysig virtual 
		instance int32 GetHashCode () cil managed 
	{
		// Method begins at RVA 0x47f54
		// Code size 68 (0x44)
		.maxstack 2

		IL_0000: ldarg.0
		IL_0001: ldfld native int System.Delegate::_methodPtrAux
		IL_0006: ldsfld native int System.IntPtr::Zero
		IL_000b: call bool System.IntPtr::op_Equality(native int, native int)
		IL_0010: brfalse.s IL_0038

		IL_0012: ldarg.0
		IL_0013: ldfld object System.Delegate::_target
		IL_0018: brtrue.s IL_001d

		IL_001a: ldc.i4.0
		IL_001b: br.s IL_002b

		IL_001d: ldarg.0
		IL_001e: ldfld object System.Delegate::_target
		IL_0023: call int32 System.Runtime.CompilerServices.RuntimeHelpers::GetHashCode(object)
		IL_0028: ldc.i4.s 33
		IL_002a: mul

		IL_002b: ldarg.0
		IL_002c: call instance class System.Type System.Object::GetType()
		IL_0031: callvirt instance int32 System.Object::GetHashCode()
		IL_0036: add
		IL_0037: ret

		IL_0038: ldarg.0
		IL_0039: call instance class System.Type System.Object::GetType()
		IL_003e: callvirt instance int32 System.Object::GetHashCode()
		IL_0043: ret
	} // end of method Delegate::GetHashCode

	.method family hidebysig newslot virtual 
		instance class System.Reflection.MethodInfo GetMethodImpl () cil managed 
	{
		// Method begins at RVA 0x47fa4
		// Code size 234 (0xea)
		.maxstack 3
		.locals (
			[0] class System.IRuntimeMethodInfo,
			[1] class System.RuntimeType,
			[2] bool,
			[3] class System.Type,
			[4] class System.Type,
			[5] class System.Reflection.MethodInfo
		)

		IL_0000: ldarg.0
		IL_0001: ldfld object System.Delegate::_methodBase
		IL_0006: brfalse.s IL_0018

		IL_0008: ldarg.0
		IL_0009: ldfld object System.Delegate::_methodBase
		IL_000e: isinst System.Reflection.MethodInfo
		IL_0013: brtrue IL_00de

		IL_0018: ldarg.0
		IL_0019: call instance class System.IRuntimeMethodInfo System.Delegate::FindMethodHandle()
		IL_001e: stloc.0
		IL_001f: ldloc.0
		IL_0020: call class System.RuntimeType System.RuntimeMethodHandle::GetDeclaringType(class System.IRuntimeMethodInfo)
		IL_0025: stloc.1
		IL_0026: ldloc.1
		IL_0027: call bool System.RuntimeTypeHandle::IsGenericTypeDefinition(class System.RuntimeType)
		IL_002c: brtrue.s IL_0039

		IL_002e: ldloc.1
		IL_002f: call bool System.RuntimeTypeHandle::HasInstantiation(class System.RuntimeType)
		IL_0034: brfalse IL_00cc

		IL_0039: ldloc.0
		IL_003a: call valuetype System.Reflection.MethodAttributes System.RuntimeMethodHandle::GetAttributes(class System.IRuntimeMethodInfo)
		IL_003f: ldc.i4.s 16
		IL_0041: and
		IL_0042: ldc.i4.0
		IL_0043: cgt.un
		IL_0045: stloc.2
		IL_0046: ldloc.2
		IL_0047: brtrue IL_00cc

		IL_004c: ldarg.0
		IL_004d: ldfld native int System.Delegate::_methodPtrAux
		IL_0052: ldsfld native int System.IntPtr::Zero
		IL_0057: call bool System.IntPtr::op_Equality(native int, native int)
		IL_005c: brfalse.s IL_00a6

		IL_005e: ldarg.0
		IL_005f: ldfld object System.Delegate::_target
		IL_0064: callvirt instance class System.Type System.Object::GetType()
		IL_0069: stloc.3
		IL_006a: ldloc.1
		IL_006b: callvirt instance class System.Type System.Type::GetGenericTypeDefinition()
		IL_0070: stloc.s 4
		IL_0072: br.s IL_009b
		// loop start (head: IL_009b)
			IL_0074: ldloc.3
			IL_0075: callvirt instance bool System.Type::get_IsGenericType()
			IL_007a: brfalse.s IL_0094

			IL_007c: ldloc.3
			IL_007d: callvirt instance class System.Type System.Type::GetGenericTypeDefinition()
			IL_0082: ldloc.s 4
			IL_0084: call bool System.Type::op_Equality(class System.Type, class System.Type)
			IL_0089: brfalse.s IL_0094

			IL_008b: ldloc.3
			IL_008c: isinst System.RuntimeType
			IL_0091: stloc.1
			IL_0092: br.s IL_00cc

			IL_0094: ldloc.3
			IL_0095: callvirt instance class System.Type System.Type::get_BaseType()
			IL_009a: stloc.3

			IL_009b: ldloc.3
			IL_009c: ldnull
			IL_009d: call bool System.Type::op_Inequality(class System.Type, class System.Type)
			IL_00a2: brtrue.s IL_0074
		// end loop

		IL_00a4: br.s IL_00cc

		IL_00a6: ldarg.0
		IL_00a7: call instance class System.Type System.Object::GetType()
		IL_00ac: ldstr "Invoke"
		IL_00b1: callvirt instance class System.Reflection.MethodInfo System.Type::GetMethod(string)
		IL_00b6: stloc.s 5
		IL_00b8: ldloc.s 5
		IL_00ba: callvirt instance class System.Reflection.ParameterInfo[] System.Reflection.MethodBase::GetParameters()
		IL_00bf: ldc.i4.0
		IL_00c0: ldelem.ref
		IL_00c1: callvirt instance class System.Type System.Reflection.ParameterInfo::get_ParameterType()
		IL_00c6: castclass System.RuntimeType
		IL_00cb: stloc.1

		IL_00cc: ldarg.0
		IL_00cd: ldloc.1
		IL_00ce: ldloc.0
		IL_00cf: call class System.Reflection.MethodBase System.RuntimeType::GetMethodBase(class System.RuntimeType, class System.IRuntimeMethodInfo)
		IL_00d4: castclass System.Reflection.MethodInfo
		IL_00d9: stfld object System.Delegate::_methodBase

		IL_00de: ldarg.0
		IL_00df: ldfld object System.Delegate::_methodBase
		IL_00e4: castclass System.Reflection.MethodInfo
		IL_00e9: ret
	} // end of method Delegate::GetMethodImpl

	.method public hidebysig specialname 
		instance object get_Target () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x4809a
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance object System.Delegate::GetTarget()
		IL_0006: ret
	} // end of method Delegate::get_Target

	.method public hidebysig static 
		class System.Delegate CreateDelegate (
			class System.Type 'type',
			object target,
			string 'method',
			bool ignoreCase,
			bool throwOnBindFailure
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.RequiresUnreferencedCodeAttribute::.ctor(string) = (
			01 00 22 54 68 65 20 74 61 72 67 65 74 20 6d 65
			74 68 6f 64 20 6d 69 67 68 74 20 62 65 20 72 65
			6d 6f 76 65 64 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x480a4
		// Code size 156 (0x9c)
		.maxstack 6
		.locals (
			[0] class System.RuntimeType,
			[1] class System.Delegate
		)

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0007: brfalse.s IL_0014

		IL_0009: ldstr "type"
		IL_000e: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0013: throw

		IL_0014: ldarg.1
		IL_0015: brtrue.s IL_0022

		IL_0017: ldstr "target"
		IL_001c: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0021: throw

		IL_0022: ldarg.2
		IL_0023: brtrue.s IL_0030

		IL_0025: ldstr "method"
		IL_002a: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_002f: throw

		IL_0030: ldarg.0
		IL_0031: isinst System.RuntimeType
		IL_0036: stloc.0
		IL_0037: ldloc.0
		IL_0038: brtrue.s IL_004a

		IL_003a: call string System.SR::get_Argument_MustBeRuntimeType()
		IL_003f: ldstr "type"
		IL_0044: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0049: throw

		IL_004a: ldloc.0
		IL_004b: callvirt instance bool System.RuntimeType::IsDelegate()
		IL_0050: brtrue.s IL_0062

		IL_0052: call string System.SR::get_Arg_MustBeDelegate()
		IL_0057: ldstr "type"
		IL_005c: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0061: throw

		IL_0062: ldloc.0
		IL_0063: call class System.MulticastDelegate System.Delegate::InternalAlloc(class System.RuntimeType)
		IL_0068: stloc.1
		IL_0069: ldloc.1
		IL_006a: ldarg.1
		IL_006b: ldarg.1
		IL_006c: callvirt instance class System.Type System.Object::GetType()
		IL_0071: castclass System.RuntimeType
		IL_0076: ldarg.2
		IL_0077: ldc.i4.s 26
		IL_0079: ldarg.3
		IL_007a: brtrue.s IL_007f

		IL_007c: ldc.i4.0
		IL_007d: br.s IL_0081

		IL_007f: ldc.i4.s 32

		IL_0081: or
		IL_0082: callvirt instance bool System.Delegate::BindToMethodName(object, class System.RuntimeType, string, valuetype System.DelegateBindingFlags)
		IL_0087: brtrue.s IL_009a

		IL_0089: ldarg.s ignoreCase
		IL_008b: brfalse.s IL_0098

		IL_008d: call string System.SR::get_Arg_DlgtTargMeth()
		IL_0092: newobj instance void System.ArgumentException::.ctor(string)
		IL_0097: throw

		IL_0098: ldnull
		IL_0099: ret

		IL_009a: ldloc.1
		IL_009b: ret
	} // end of method Delegate::CreateDelegate

	.method public hidebysig static 
		class System.Delegate CreateDelegate (
			class System.Type 'type',
			class System.Type target,
			string 'method',
			bool ignoreCase,
			bool throwOnBindFailure
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.RequiresUnreferencedCodeAttribute::.ctor(string) = (
			01 00 22 54 68 65 20 74 61 72 67 65 74 20 6d 65
			74 68 6f 64 20 6d 69 67 68 74 20 62 65 20 72 65
			6d 6f 76 65 64 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x4814c
		// Code size 201 (0xc9)
		.maxstack 6
		.locals (
			[0] class System.RuntimeType,
			[1] class System.RuntimeType,
			[2] class System.Delegate
		)

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0007: brfalse.s IL_0014

		IL_0009: ldstr "type"
		IL_000e: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0013: throw

		IL_0014: ldarg.1
		IL_0015: ldnull
		IL_0016: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_001b: brfalse.s IL_0028

		IL_001d: ldstr "target"
		IL_0022: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0027: throw

		IL_0028: ldarg.1
		IL_0029: callvirt instance bool System.Type::get_ContainsGenericParameters()
		IL_002e: brfalse.s IL_0040

		IL_0030: call string System.SR::get_Arg_UnboundGenParam()
		IL_0035: ldstr "target"
		IL_003a: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_003f: throw

		IL_0040: ldarg.2
		IL_0041: brtrue.s IL_004e

		IL_0043: ldstr "method"
		IL_0048: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_004d: throw

		IL_004e: ldarg.0
		IL_004f: isinst System.RuntimeType
		IL_0054: stloc.0
		IL_0055: ldloc.0
		IL_0056: brtrue.s IL_0068

		IL_0058: call string System.SR::get_Argument_MustBeRuntimeType()
		IL_005d: ldstr "type"
		IL_0062: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0067: throw

		IL_0068: ldarg.1
		IL_0069: isinst System.RuntimeType
		IL_006e: stloc.1
		IL_006f: ldloc.1
		IL_0070: brtrue.s IL_0082

		IL_0072: call string System.SR::get_Argument_MustBeRuntimeType()
		IL_0077: ldstr "target"
		IL_007c: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0081: throw

		IL_0082: ldloc.0
		IL_0083: callvirt instance bool System.RuntimeType::IsDelegate()
		IL_0088: brtrue.s IL_009a

		IL_008a: call string System.SR::get_Arg_MustBeDelegate()
		IL_008f: ldstr "type"
		IL_0094: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0099: throw

		IL_009a: ldloc.0
		IL_009b: call class System.MulticastDelegate System.Delegate::InternalAlloc(class System.RuntimeType)
		IL_00a0: stloc.2
		IL_00a1: ldloc.2
		IL_00a2: ldnull
		IL_00a3: ldloc.1
		IL_00a4: ldarg.2
		IL_00a5: ldc.i4.5
		IL_00a6: ldarg.3
		IL_00a7: brtrue.s IL_00ac

		IL_00a9: ldc.i4.0
		IL_00aa: br.s IL_00ae

		IL_00ac: ldc.i4.s 32

		IL_00ae: or
		IL_00af: callvirt instance bool System.Delegate::BindToMethodName(object, class System.RuntimeType, string, valuetype System.DelegateBindingFlags)
		IL_00b4: brtrue.s IL_00c7

		IL_00b6: ldarg.s ignoreCase
		IL_00b8: brfalse.s IL_00c5

		IL_00ba: call string System.SR::get_Arg_DlgtTargMeth()
		IL_00bf: newobj instance void System.ArgumentException::.ctor(string)
		IL_00c4: throw

		IL_00c5: ldnull
		IL_00c6: ret

		IL_00c7: ldloc.2
		IL_00c8: ret
	} // end of method Delegate::CreateDelegate

	.method public hidebysig static 
		class System.Delegate CreateDelegate (
			class System.Type 'type',
			class System.Reflection.MethodInfo 'method',
			bool throwOnBindFailure
		) cil managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x48224
		// Code size 148 (0x94)
		.maxstack 4
		.locals (
			[0] class System.RuntimeType,
			[1] class System.Reflection.RuntimeMethodInfo,
			[2] class System.Delegate
		)

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0007: brfalse.s IL_0014

		IL_0009: ldstr "type"
		IL_000e: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0013: throw

		IL_0014: ldarg.1
		IL_0015: ldnull
		IL_0016: call bool System.Reflection.MethodInfo::op_Equality(class System.Reflection.MethodInfo, class System.Reflection.MethodInfo)
		IL_001b: brfalse.s IL_0028

		IL_001d: ldstr "method"
		IL_0022: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0027: throw

		IL_0028: ldarg.0
		IL_0029: isinst System.RuntimeType
		IL_002e: stloc.0
		IL_002f: ldloc.0
		IL_0030: brtrue.s IL_0042

		IL_0032: call string System.SR::get_Argument_MustBeRuntimeType()
		IL_0037: ldstr "type"
		IL_003c: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0041: throw

		IL_0042: ldarg.1
		IL_0043: isinst System.Reflection.RuntimeMethodInfo
		IL_0048: stloc.1
		IL_0049: ldloc.1
		IL_004a: brtrue.s IL_005c

		IL_004c: call string System.SR::get_Argument_MustBeRuntimeMethodInfo()
		IL_0051: ldstr "method"
		IL_0056: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_005b: throw

		IL_005c: ldloc.0
		IL_005d: callvirt instance bool System.RuntimeType::IsDelegate()
		IL_0062: brtrue.s IL_0074

		IL_0064: call string System.SR::get_Arg_MustBeDelegate()
		IL_0069: ldstr "type"
		IL_006e: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0073: throw

		IL_0074: ldloc.0
		IL_0075: ldloc.1
		IL_0076: ldnull
		IL_0077: ldc.i4.s 68
		IL_0079: call class System.Delegate System.Delegate::CreateDelegateInternal(class System.RuntimeType, class System.Reflection.RuntimeMethodInfo, object, valuetype System.DelegateBindingFlags)
		IL_007e: stloc.2
		IL_007f: ldloc.2
		IL_0080: ldnull
		IL_0081: ceq
		IL_0083: ldarg.2
		IL_0084: and
		IL_0085: brfalse.s IL_0092

		IL_0087: call string System.SR::get_Arg_DlgtTargMeth()
		IL_008c: newobj instance void System.ArgumentException::.ctor(string)
		IL_0091: throw

		IL_0092: ldloc.2
		IL_0093: ret
	} // end of method Delegate::CreateDelegate

	.method public hidebysig static 
		class System.Delegate CreateDelegate (
			class System.Type 'type',
			object firstArgument,
			class System.Reflection.MethodInfo 'method',
			bool throwOnBindFailure
		) cil managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x482c4
		// Code size 148 (0x94)
		.maxstack 4
		.locals (
			[0] class System.RuntimeType,
			[1] class System.Reflection.RuntimeMethodInfo,
			[2] class System.Delegate
		)

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0007: brfalse.s IL_0014

		IL_0009: ldstr "type"
		IL_000e: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0013: throw

		IL_0014: ldarg.2
		IL_0015: ldnull
		IL_0016: call bool System.Reflection.MethodInfo::op_Equality(class System.Reflection.MethodInfo, class System.Reflection.MethodInfo)
		IL_001b: brfalse.s IL_0028

		IL_001d: ldstr "method"
		IL_0022: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0027: throw

		IL_0028: ldarg.0
		IL_0029: isinst System.RuntimeType
		IL_002e: stloc.0
		IL_002f: ldloc.0
		IL_0030: brtrue.s IL_0042

		IL_0032: call string System.SR::get_Argument_MustBeRuntimeType()
		IL_0037: ldstr "type"
		IL_003c: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0041: throw

		IL_0042: ldarg.2
		IL_0043: isinst System.Reflection.RuntimeMethodInfo
		IL_0048: stloc.1
		IL_0049: ldloc.1
		IL_004a: brtrue.s IL_005c

		IL_004c: call string System.SR::get_Argument_MustBeRuntimeMethodInfo()
		IL_0051: ldstr "method"
		IL_0056: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_005b: throw

		IL_005c: ldloc.0
		IL_005d: callvirt instance bool System.RuntimeType::IsDelegate()
		IL_0062: brtrue.s IL_0074

		IL_0064: call string System.SR::get_Arg_MustBeDelegate()
		IL_0069: ldstr "type"
		IL_006e: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0073: throw

		IL_0074: ldloc.0
		IL_0075: ldloc.1
		IL_0076: ldarg.1
		IL_0077: ldc.i4.s 64
		IL_0079: call class System.Delegate System.Delegate::CreateDelegateInternal(class System.RuntimeType, class System.Reflection.RuntimeMethodInfo, object, valuetype System.DelegateBindingFlags)
		IL_007e: stloc.2
		IL_007f: ldloc.2
		IL_0080: ldnull
		IL_0081: ceq
		IL_0083: ldarg.3
		IL_0084: and
		IL_0085: brfalse.s IL_0092

		IL_0087: call string System.SR::get_Arg_DlgtTargMeth()
		IL_008c: newobj instance void System.ArgumentException::.ctor(string)
		IL_0091: throw

		IL_0092: ldloc.2
		IL_0093: ret
	} // end of method Delegate::CreateDelegate

	.method assembly hidebysig static 
		class System.Delegate CreateDelegateNoSecurityCheck (
			class System.Type 'type',
			object target,
			valuetype System.RuntimeMethodHandle 'method'
		) cil managed 
	{
		// Method begins at RVA 0x48364
		// Code size 140 (0x8c)
		.maxstack 5
		.locals (
			[0] class System.RuntimeType,
			[1] class System.Delegate
		)

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0007: brfalse.s IL_0014

		IL_0009: ldstr "type"
		IL_000e: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0013: throw

		IL_0014: ldarga.s 'method'
		IL_0016: call instance bool System.RuntimeMethodHandle::IsNullHandle()
		IL_001b: brfalse.s IL_0028

		IL_001d: ldstr "method"
		IL_0022: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0027: throw

		IL_0028: ldarg.0
		IL_0029: isinst System.RuntimeType
		IL_002e: stloc.0
		IL_002f: ldloc.0
		IL_0030: brtrue.s IL_0042

		IL_0032: call string System.SR::get_Argument_MustBeRuntimeType()
		IL_0037: ldstr "type"
		IL_003c: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0041: throw

		IL_0042: ldloc.0
		IL_0043: callvirt instance bool System.RuntimeType::IsDelegate()
		IL_0048: brtrue.s IL_005a

		IL_004a: call string System.SR::get_Arg_MustBeDelegate()
		IL_004f: ldstr "type"
		IL_0054: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0059: throw

		IL_005a: ldloc.0
		IL_005b: call class System.MulticastDelegate System.Delegate::InternalAlloc(class System.RuntimeType)
		IL_0060: stloc.1
		IL_0061: ldloc.1
		IL_0062: ldarg.1
		IL_0063: ldarga.s 'method'
		IL_0065: call instance class System.IRuntimeMethodInfo System.RuntimeMethodHandle::GetMethodInfo()
		IL_006a: ldarga.s 'method'
		IL_006c: call instance class System.IRuntimeMethodInfo System.RuntimeMethodHandle::GetMethodInfo()
		IL_0071: call class System.RuntimeType System.RuntimeMethodHandle::GetDeclaringType(class System.IRuntimeMethodInfo)
		IL_0076: ldc.i4.s 64
		IL_0078: callvirt instance bool System.Delegate::BindToMethodInfo(object, class System.IRuntimeMethodInfo, class System.RuntimeType, valuetype System.DelegateBindingFlags)
		IL_007d: brtrue.s IL_008a

		IL_007f: call string System.SR::get_Arg_DlgtTargMeth()
		IL_0084: newobj instance void System.ArgumentException::.ctor(string)
		IL_0089: throw

		IL_008a: ldloc.1
		IL_008b: ret
	} // end of method Delegate::CreateDelegateNoSecurityCheck

	.method assembly hidebysig static 
		class System.Delegate CreateDelegateInternal (
			class System.RuntimeType rtType,
			class System.Reflection.RuntimeMethodInfo rtMethod,
			object firstArgument,
			valuetype System.DelegateBindingFlags 'flags'
		) cil managed 
	{
		// Method begins at RVA 0x483fc
		// Code size 28 (0x1c)
		.maxstack 5
		.locals (
			[0] class System.Delegate
		)

		IL_0000: ldarg.0
		IL_0001: call class System.MulticastDelegate System.Delegate::InternalAlloc(class System.RuntimeType)
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldarg.2
		IL_0009: ldarg.1
		IL_000a: ldarg.1
		IL_000b: callvirt instance class System.RuntimeType System.Reflection.RuntimeMethodInfo::GetDeclaringTypeInternal()
		IL_0010: ldarg.3
		IL_0011: callvirt instance bool System.Delegate::BindToMethodInfo(object, class System.IRuntimeMethodInfo, class System.RuntimeType, valuetype System.DelegateBindingFlags)
		IL_0016: brfalse.s IL_001a

		IL_0018: ldloc.0
		IL_0019: ret

		IL_001a: ldnull
		IL_001b: ret
	} // end of method Delegate::CreateDelegateInternal

	.method private hidebysig 
		instance bool BindToMethodName (
			object target,
			class System.RuntimeType methodType,
			string 'method',
			valuetype System.DelegateBindingFlags 'flags'
		) cil managed internalcall 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.RequiresUnreferencedCodeAttribute::.ctor(string) = (
			01 00 22 54 68 65 20 74 61 72 67 65 74 20 6d 65
			74 68 6f 64 20 6d 69 67 68 74 20 62 65 20 72 65
			6d 6f 76 65 64 00 00
		)
	} // end of method Delegate::BindToMethodName

	.method private hidebysig 
		instance bool BindToMethodInfo (
			object target,
			class System.IRuntimeMethodInfo 'method',
			class System.RuntimeType methodType,
			valuetype System.DelegateBindingFlags 'flags'
		) cil managed internalcall 
	{
	} // end of method Delegate::BindToMethodInfo

	.method private hidebysig static 
		class System.MulticastDelegate InternalAlloc (
			class System.RuntimeType 'type'
		) cil managed internalcall 
	{
	} // end of method Delegate::InternalAlloc

	.method assembly hidebysig static 
		class System.MulticastDelegate InternalAllocLike (
			class System.Delegate d
		) cil managed internalcall 
	{
	} // end of method Delegate::InternalAllocLike

	.method assembly hidebysig static 
		bool InternalEqualTypes (
			object a,
			object b
		) cil managed internalcall 
	{
	} // end of method Delegate::InternalEqualTypes

	.method private hidebysig 
		instance void DelegateConstruct (
			object target,
			native int slot
		) cil managed internalcall 
	{
	} // end of method Delegate::DelegateConstruct

	.method assembly hidebysig 
		instance native int GetMulticastInvoke () cil managed internalcall 
	{
	} // end of method Delegate::GetMulticastInvoke

	.method assembly hidebysig 
		instance native int GetInvokeMethod () cil managed internalcall 
	{
	} // end of method Delegate::GetInvokeMethod

	.method assembly hidebysig 
		instance class System.IRuntimeMethodInfo FindMethodHandle () cil managed internalcall 
	{
	} // end of method Delegate::FindMethodHandle

	.method assembly hidebysig static 
		bool InternalEqualMethodHandles (
			class System.Delegate left,
			class System.Delegate right
		) cil managed internalcall 
	{
	} // end of method Delegate::InternalEqualMethodHandles

	.method assembly hidebysig 
		instance native int AdjustTarget (
			object target,
			native int methodPtr
		) cil managed internalcall 
	{
	} // end of method Delegate::AdjustTarget

	.method assembly hidebysig 
		instance native int GetCallStub (
			native int methodPtr
		) cil managed internalcall 
	{
	} // end of method Delegate::GetCallStub

	.method assembly hidebysig newslot strict virtual 
		instance object GetTarget () cil managed 
	{
		// Method begins at RVA 0x48424
		// Code size 27 (0x1b)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldfld native int System.Delegate::_methodPtrAux
		IL_0006: ldsfld native int System.IntPtr::Zero
		IL_000b: call bool System.IntPtr::op_Equality(native int, native int)
		IL_0010: brtrue.s IL_0014

		IL_0012: ldnull
		IL_0013: ret

		IL_0014: ldarg.0
		IL_0015: ldfld object System.Delegate::_target
		IL_001a: ret
	} // end of method Delegate::GetTarget

	.method assembly hidebysig static 
		bool CompareUnmanagedFunctionPtrs (
			class System.Delegate d1,
			class System.Delegate d2
		) cil managed internalcall 
	{
	} // end of method Delegate::CompareUnmanagedFunctionPtrs

	.method public hidebysig newslot virtual 
		instance object Clone () cil managed 
	{
		// Method begins at RVA 0x40f6a
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance object System.Object::MemberwiseClone()
		IL_0006: ret
	} // end of method Delegate::Clone

	.method public hidebysig static 
		class System.Delegate Combine (
			class System.Delegate a,
			class System.Delegate b
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [0]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullIfNotNullAttribute::.ctor(string) = (
				01 00 01 61 00 00
			)
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullIfNotNullAttribute::.ctor(string) = (
				01 00 01 62 00 00
			)
		// Method begins at RVA 0x48440
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldarg.1
		IL_0004: ret

		IL_0005: ldarg.0
		IL_0006: ldarg.1
		IL_0007: callvirt instance class System.Delegate System.Delegate::CombineImpl(class System.Delegate)
		IL_000c: ret
	} // end of method Delegate::Combine

	.method public hidebysig static 
		class System.Delegate Combine (
			class System.Delegate[] delegates
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x48450
		// Code size 39 (0x27)
		.maxstack 3
		.locals (
			[0] class System.Delegate,
			[1] int32
		)

		IL_0000: ldarg.0
		IL_0001: brfalse.s IL_0007

		IL_0003: ldarg.0
		IL_0004: ldlen
		IL_0005: brtrue.s IL_0009

		IL_0007: ldnull
		IL_0008: ret

		IL_0009: ldarg.0
		IL_000a: ldc.i4.0
		IL_000b: ldelem.ref
		IL_000c: stloc.0
		IL_000d: ldc.i4.1
		IL_000e: stloc.1
		IL_000f: br.s IL_001f
		// loop start (head: IL_001f)
			IL_0011: ldloc.0
			IL_0012: ldarg.0
			IL_0013: ldloc.1
			IL_0014: ldelem.ref
			IL_0015: call class System.Delegate System.Delegate::Combine(class System.Delegate, class System.Delegate)
			IL_001a: stloc.0
			IL_001b: ldloc.1
			IL_001c: ldc.i4.1
			IL_001d: add
			IL_001e: stloc.1

			IL_001f: ldloc.1
			IL_0020: ldarg.0
			IL_0021: ldlen
			IL_0022: conv.i4
			IL_0023: blt.s IL_0011
		// end loop

		IL_0025: ldloc.0
		IL_0026: ret
	} // end of method Delegate::Combine

	.method public hidebysig static 
		class System.Delegate CreateDelegate (
			class System.Type 'type',
			object firstArgument,
			class System.Reflection.MethodInfo 'method'
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x48483
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldc.i4.1
		IL_0004: call class System.Delegate System.Delegate::CreateDelegate(class System.Type, object, class System.Reflection.MethodInfo, bool)
		IL_0009: ret
	} // end of method Delegate::CreateDelegate

	.method public hidebysig static 
		class System.Delegate CreateDelegate (
			class System.Type 'type',
			class System.Reflection.MethodInfo 'method'
		) cil managed 
	{
		// Method begins at RVA 0x4848e
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.1
		IL_0003: call class System.Delegate System.Delegate::CreateDelegate(class System.Type, class System.Reflection.MethodInfo, bool)
		IL_0008: ret
	} // end of method Delegate::CreateDelegate

	.method public hidebysig static 
		class System.Delegate CreateDelegate (
			class System.Type 'type',
			object target,
			string 'method'
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.RequiresUnreferencedCodeAttribute::.ctor(string) = (
			01 00 22 54 68 65 20 74 61 72 67 65 74 20 6d 65
			74 68 6f 64 20 6d 69 67 68 74 20 62 65 20 72 65
			6d 6f 76 65 64 00 00
		)
		// Method begins at RVA 0x48498
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldc.i4.0
		IL_0004: ldc.i4.1
		IL_0005: call class System.Delegate System.Delegate::CreateDelegate(class System.Type, object, string, bool, bool)
		IL_000a: ret
	} // end of method Delegate::CreateDelegate

	.method public hidebysig static 
		class System.Delegate CreateDelegate (
			class System.Type 'type',
			object target,
			string 'method',
			bool ignoreCase
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.RequiresUnreferencedCodeAttribute::.ctor(string) = (
			01 00 22 54 68 65 20 74 61 72 67 65 74 20 6d 65
			74 68 6f 64 20 6d 69 67 68 74 20 62 65 20 72 65
			6d 6f 76 65 64 00 00
		)
		// Method begins at RVA 0x484a4
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: ldc.i4.1
		IL_0005: call class System.Delegate System.Delegate::CreateDelegate(class System.Type, object, string, bool, bool)
		IL_000a: ret
	} // end of method Delegate::CreateDelegate

	.method public hidebysig static 
		class System.Delegate CreateDelegate (
			class System.Type 'type',
			class System.Type target,
			string 'method'
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.RequiresUnreferencedCodeAttribute::.ctor(string) = (
			01 00 22 54 68 65 20 74 61 72 67 65 74 20 6d 65
			74 68 6f 64 20 6d 69 67 68 74 20 62 65 20 72 65
			6d 6f 76 65 64 00 00
		)
		// Method begins at RVA 0x484b0
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldc.i4.0
		IL_0004: ldc.i4.1
		IL_0005: call class System.Delegate System.Delegate::CreateDelegate(class System.Type, class System.Type, string, bool, bool)
		IL_000a: ret
	} // end of method Delegate::CreateDelegate

	.method public hidebysig static 
		class System.Delegate CreateDelegate (
			class System.Type 'type',
			class System.Type target,
			string 'method',
			bool ignoreCase
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.RequiresUnreferencedCodeAttribute::.ctor(string) = (
			01 00 22 54 68 65 20 74 61 72 67 65 74 20 6d 65
			74 68 6f 64 20 6d 69 67 68 74 20 62 65 20 72 65
			6d 6f 76 65 64 00 00
		)
		// Method begins at RVA 0x484bc
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: ldc.i4.1
		IL_0005: call class System.Delegate System.Delegate::CreateDelegate(class System.Type, class System.Type, string, bool, bool)
		IL_000a: ret
	} // end of method Delegate::CreateDelegate

	.method family hidebysig newslot virtual 
		instance class System.Delegate CombineImpl (
			class System.Delegate d
		) cil managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x484c8
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_Multicast_Combine()
		IL_0005: newobj instance void System.MulticastNotSupportedException::.ctor(string)
		IL_000a: throw
	} // end of method Delegate::CombineImpl

	.method family hidebysig newslot virtual 
		instance class System.Delegate RemoveImpl (
			class System.Delegate d
		) cil managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x484d4
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldarg.0
		IL_0002: callvirt instance bool System.Object::Equals(object)
		IL_0007: brtrue.s IL_000b

		IL_0009: ldarg.0
		IL_000a: ret

		IL_000b: ldnull
		IL_000c: ret
	} // end of method Delegate::RemoveImpl

	.method public hidebysig newslot virtual 
		instance class System.Delegate[] GetInvocationList () cil managed 
	{
		// Method begins at RVA 0x484e2
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldc.i4.1
		IL_0001: newarr System.Delegate
		IL_0006: dup
		IL_0007: ldc.i4.0
		IL_0008: ldarg.0
		IL_0009: stelem.ref
		IL_000a: ret
	} // end of method Delegate::GetInvocationList

	.method public hidebysig 
		instance object DynamicInvoke (
			object[] args
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x484ee
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: callvirt instance object System.Delegate::DynamicInvokeImpl(object[])
		IL_0007: ret
	} // end of method Delegate::DynamicInvoke

	.method public hidebysig newslot virtual 
		instance void GetObjectData (
			class System.Runtime.Serialization.SerializationInfo info,
			valuetype System.Runtime.Serialization.StreamingContext context
		) cil managed 
	{
		// Method begins at RVA 0x484f7
		// Code size 6 (0x6)
		.maxstack 8

		IL_0000: newobj instance void System.PlatformNotSupportedException::.ctor()
		IL_0005: throw
	} // end of method Delegate::GetObjectData

	.method public hidebysig specialname 
		instance class System.Reflection.MethodInfo get_Method () cil managed 
	{
		// Method begins at RVA 0x484fe
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance class System.Reflection.MethodInfo System.Delegate::GetMethodImpl()
		IL_0006: ret
	} // end of method Delegate::get_Method

	.method public hidebysig static 
		class System.Delegate Remove (
			class System.Delegate source,
			class System.Delegate 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x48506
		// Code size 38 (0x26)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_0005

		IL_0003: ldnull
		IL_0004: ret

		IL_0005: ldarg.1
		IL_0006: brtrue.s IL_000a

		IL_0008: ldarg.0
		IL_0009: ret

		IL_000a: ldarg.0
		IL_000b: ldarg.1
		IL_000c: call bool System.Delegate::InternalEqualTypes(object, object)
		IL_0011: brtrue.s IL_001e

		IL_0013: call string System.SR::get_Arg_DlgtTypeMis()
		IL_0018: newobj instance void System.ArgumentException::.ctor(string)
		IL_001d: throw

		IL_001e: ldarg.0
		IL_001f: ldarg.1
		IL_0020: callvirt instance class System.Delegate System.Delegate::RemoveImpl(class System.Delegate)
		IL_0025: ret
	} // end of method Delegate::Remove

	.method public hidebysig static 
		class System.Delegate RemoveAll (
			class System.Delegate source,
			class System.Delegate 'value'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x48530
		// Code size 22 (0x16)
		.maxstack 2
		.locals (
			[0] class System.Delegate
		)

		// loop start
			IL_0000: ldarg.0
			IL_0001: stloc.0
			IL_0002: ldarg.0
			IL_0003: ldarg.1
			IL_0004: call class System.Delegate System.Delegate::Remove(class System.Delegate, class System.Delegate)
			IL_0009: starg.s source
			IL_000b: ldloc.0
			IL_000c: ldarg.0
			IL_000d: call bool System.Delegate::op_Inequality(class System.Delegate, class System.Delegate)
			IL_0012: brtrue.s IL_0000
		// end loop
		IL_0014: ldloc.0
		IL_0015: ret
	} // end of method Delegate::RemoveAll

	.method public hidebysig specialname static 
		bool op_Equality (
			class System.Delegate d1,
			class System.Delegate d2
		) cil managed aggressiveinlining 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x48552
		// Code size 24 (0x18)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000a

		IL_0003: ldarg.0
		IL_0004: brfalse.s IL_0008

		IL_0006: ldc.i4.0
		IL_0007: ret

		IL_0008: ldc.i4.1
		IL_0009: ret

		IL_000a: ldarg.1
		IL_000b: ldarg.0
		IL_000c: beq.s IL_0016

		IL_000e: ldarg.1
		IL_000f: ldarg.0
		IL_0010: callvirt instance bool System.Object::Equals(object)
		IL_0015: ret

		IL_0016: ldc.i4.1
		IL_0017: ret
	} // end of method Delegate::op_Equality

	.method public hidebysig specialname static 
		bool op_Inequality (
			class System.Delegate d1,
			class System.Delegate d2
		) cil managed aggressiveinlining 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x4856b
		// Code size 27 (0x1b)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000a

		IL_0003: ldarg.0
		IL_0004: brfalse.s IL_0008

		IL_0006: ldc.i4.1
		IL_0007: ret

		IL_0008: ldc.i4.0
		IL_0009: ret

		IL_000a: ldarg.1
		IL_000b: ldarg.0
		IL_000c: beq.s IL_0019

		IL_000e: ldarg.1
		IL_000f: ldarg.0
		IL_0010: callvirt instance bool System.Object::Equals(object)
		IL_0015: ldc.i4.0
		IL_0016: ceq
		IL_0018: ret

		IL_0019: ldc.i4.0
		IL_001a: ret
	} // end of method Delegate::op_Inequality

	// Properties
	.property instance object Target()
	{
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.get instance object System.Delegate::get_Target()
	}
	.property instance class System.Reflection.MethodInfo Method()
	{
		.get instance class System.Reflection.MethodInfo System.Delegate::get_Method()
	}

} // end of class System.Delegate

.class public auto ansi sealed System.Func`1<+TResult>
	extends System.MulticastDelegate
{
	.param type TResult
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			object 'object',
			native int 'method'
		) runtime managed 
	{
	} // end of method Func`1::.ctor

	.method public hidebysig newslot virtual 
		instance !TResult Invoke () runtime managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
	} // end of method Func`1::Invoke

	.method public hidebysig newslot virtual 
		instance class System.IAsyncResult BeginInvoke (
			class System.AsyncCallback callback,
			object 'object'
		) runtime managed 
	{
	} // end of method Func`1::BeginInvoke

	.method public hidebysig newslot virtual 
		instance !TResult EndInvoke (
			class System.IAsyncResult result
		) runtime managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
	} // end of method Func`1::EndInvoke

} // end of class System.Func`1

.class public auto ansi sealed System.Func`2<-T, +TResult>
	extends System.MulticastDelegate
{
	.param type T
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	.param type TResult
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			object 'object',
			native int 'method'
		) runtime managed 
	{
	} // end of method Func`2::.ctor

	.method public hidebysig newslot virtual 
		instance !TResult Invoke (
			!T arg
		) runtime managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
	} // end of method Func`2::Invoke

	.method public hidebysig newslot virtual 
		instance class System.IAsyncResult BeginInvoke (
			!T arg,
			class System.AsyncCallback callback,
			object 'object'
		) runtime managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
	} // end of method Func`2::BeginInvoke

	.method public hidebysig newslot virtual 
		instance !TResult EndInvoke (
			class System.IAsyncResult result
		) runtime managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
	} // end of method Func`2::EndInvoke

} // end of class System.Func`2

.class public auto ansi sealed System.Func`3<-T1, -T2, +TResult>
	extends System.MulticastDelegate
{
	.param type T1
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	.param type T2
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	.param type TResult
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			object 'object',
			native int 'method'
		) runtime managed 
	{
	} // end of method Func`3::.ctor

	.method public hidebysig newslot virtual 
		instance !TResult Invoke (
			!T1 arg1,
			!T2 arg2
		) runtime managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
	} // end of method Func`3::Invoke

	.method public hidebysig newslot virtual 
		instance class System.IAsyncResult BeginInvoke (
			!T1 arg1,
			!T2 arg2,
			class System.AsyncCallback callback,
			object 'object'
		) runtime managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
	} // end of method Func`3::BeginInvoke

	.method public hidebysig newslot virtual 
		instance !TResult EndInvoke (
			class System.IAsyncResult result
		) runtime managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
	} // end of method Func`3::EndInvoke

} // end of class System.Func`3

.class public auto ansi sealed System.Func`4<-T1, -T2, -T3, +TResult>
	extends System.MulticastDelegate
{
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
	.param type TResult
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			object 'object',
			native int 'method'
		) runtime managed 
	{
	} // end of method Func`4::.ctor

	.method public hidebysig newslot virtual 
		instance !TResult Invoke (
			!T1 arg1,
			!T2 arg2,
			!T3 arg3
		) runtime managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
	} // end of method Func`4::Invoke

	.method public hidebysig newslot virtual 
		instance class System.IAsyncResult BeginInvoke (
			!T1 arg1,
			!T2 arg2,
			!T3 arg3,
			class System.AsyncCallback callback,
			object 'object'
		) runtime managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
	} // end of method Func`4::BeginInvoke

	.method public hidebysig newslot virtual 
		instance !TResult EndInvoke (
			class System.IAsyncResult result
		) runtime managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
	} // end of method Func`4::EndInvoke

} // end of class System.Func`4

.class public auto ansi sealed System.Func`5<-T1, -T2, -T3, -T4, +TResult>
	extends System.MulticastDelegate
{
	.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
		01 00 02 00 00
	)
	.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			object 'object',
			native int 'method'
		) runtime managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
	} // end of method Func`5::.ctor

	.method public hidebysig newslot virtual 
		instance !TResult Invoke (
			!T1 arg1,
			!T2 arg2,
			!T3 arg3,
			!T4 arg4
		) runtime managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
	} // end of method Func`5::Invoke

	.method public hidebysig newslot virtual 
		instance class System.IAsyncResult BeginInvoke (
			!T1 arg1,
			!T2 arg2,
			!T3 arg3,
			!T4 arg4,
			class System.AsyncCallback callback,
			object 'object'
		) runtime managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 00 00 00
			)
		.param [5]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 00 00 00
			)
		.param [6]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 00 00 00
			)
	} // end of method Func`5::BeginInvoke

	.method public hidebysig newslot virtual 
		instance !TResult EndInvoke (
			class System.IAsyncResult result
		) runtime managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
	} // end of method Func`5::EndInvoke

} // end of class System.Func`5

.class public auto ansi sealed System.Predicate`1<-T>
	extends System.MulticastDelegate
{
	.param type T
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			object 'object',
			native int 'method'
		) runtime managed 
	{
	} // end of method Predicate`1::.ctor

	.method public hidebysig newslot virtual 
		instance bool Invoke (
			!T obj
		) runtime managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
	} // end of method Predicate`1::Invoke

	.method public hidebysig newslot virtual 
		instance class System.IAsyncResult BeginInvoke (
			!T obj,
			class System.AsyncCallback callback,
			object 'object'
		) runtime managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
	} // end of method Predicate`1::BeginInvoke

	.method public hidebysig newslot virtual 
		instance bool EndInvoke (
			class System.IAsyncResult result
		) runtime managed 
	{
	} // end of method Predicate`1::EndInvoke

} // end of class System.Predicate`1

.class public auto ansi sealed System.Action
	extends System.MulticastDelegate
{
	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			object 'object',
			native int 'method'
		) runtime managed 
	{
	} // end of method Action::.ctor

	.method public hidebysig newslot virtual 
		instance void Invoke () runtime managed 
	{
	} // end of method Action::Invoke

	.method public hidebysig newslot virtual 
		instance class System.IAsyncResult BeginInvoke (
			class System.AsyncCallback callback,
			object 'object'
		) runtime managed 
	{
	} // end of method Action::BeginInvoke

	.method public hidebysig newslot virtual 
		instance void EndInvoke (
			class System.IAsyncResult result
		) runtime managed 
	{
	} // end of method Action::EndInvoke

} // end of class System.Action

.class public auto ansi sealed System.Action`1<-T>
	extends System.MulticastDelegate
{
	.param type T
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			object 'object',
			native int 'method'
		) runtime managed 
	{
	} // end of method Action`1::.ctor

	.method public hidebysig newslot virtual 
		instance void Invoke (
			!T obj
		) runtime managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
	} // end of method Action`1::Invoke

	.method public hidebysig newslot virtual 
		instance class System.IAsyncResult BeginInvoke (
			!T obj,
			class System.AsyncCallback callback,
			object 'object'
		) runtime managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
	} // end of method Action`1::BeginInvoke

	.method public hidebysig newslot virtual 
		instance void EndInvoke (
			class System.IAsyncResult result
		) runtime managed 
	{
	} // end of method Action`1::EndInvoke

} // end of class System.Action`1

.class public auto ansi sealed System.Action`2<-T1, -T2>
	extends System.MulticastDelegate
{
	.param type T1
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	.param type T2
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			object 'object',
			native int 'method'
		) runtime managed 
	{
	} // end of method Action`2::.ctor

	.method public hidebysig newslot virtual 
		instance void Invoke (
			!T1 arg1,
			!T2 arg2
		) runtime managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
	} // end of method Action`2::Invoke

	.method public hidebysig newslot virtual 
		instance class System.IAsyncResult BeginInvoke (
			!T1 arg1,
			!T2 arg2,
			class System.AsyncCallback callback,
			object 'object'
		) runtime managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
	} // end of method Action`2::BeginInvoke

	.method public hidebysig newslot virtual 
		instance void EndInvoke (
			class System.IAsyncResult result
		) runtime managed 
	{
	} // end of method Action`2::EndInvoke

} // end of class System.Action`2

.class public auto ansi sealed System.Action`3<-T1, -T2, -T3>
	extends System.MulticastDelegate
{
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
	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			object 'object',
			native int 'method'
		) runtime managed 
	{
	} // end of method Action`3::.ctor

	.method public hidebysig newslot virtual 
		instance void Invoke (
			!T1 arg1,
			!T2 arg2,
			!T3 arg3
		) runtime managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
	} // end of method Action`3::Invoke

	.method public hidebysig newslot virtual 
		instance class System.IAsyncResult BeginInvoke (
			!T1 arg1,
			!T2 arg2,
			!T3 arg3,
			class System.AsyncCallback callback,
			object 'object'
		) runtime managed 
	{
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
	} // end of method Action`3::BeginInvoke

	.method public hidebysig newslot virtual 
		instance void EndInvoke (
			class System.IAsyncResult result
		) runtime managed 
	{
	} // end of method Action`3::EndInvoke

} // end of class System.Action`3

.class public auto ansi sealed System.Action`4<-T1, -T2, -T3, -T4>
	extends System.MulticastDelegate
{
	.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
		01 00 02 00 00
	)
	.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	// Methods
	.method public hidebysig specialname rtspecialname 
		instance void .ctor (
			object 'object',
			native int 'method'
		) runtime managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
	} // end of method Action`4::.ctor

	.method public hidebysig newslot virtual 
		instance void Invoke (
			!T1 arg1,
			!T2 arg2,
			!T3 arg3,
			!T4 arg4
		) runtime managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
	} // end of method Action`4::Invoke

	.method public hidebysig newslot virtual 
		instance class System.IAsyncResult BeginInvoke (
			!T1 arg1,
			!T2 arg2,
			!T3 arg3,
			!T4 arg4,
			class System.AsyncCallback callback,
			object 'object'
		) runtime managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 01 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 00 00 00
			)
		.param [5]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 00 00 00
			)
		.param [6]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 00 00 00
			)
	} // end of method Action`4::BeginInvoke

	.method public hidebysig newslot virtual 
		instance void EndInvoke (
			class System.IAsyncResult result
		) runtime managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 00 00 00
		)
	} // end of method Action`4::EndInvoke

} // end of class System.Action`4
