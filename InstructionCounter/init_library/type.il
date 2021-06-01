.class public auto ansi abstract beforefieldinit System.Type
	extends System.Reflection.MemberInfo
	implements .custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	System.Reflection.IReflect
{
	.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
		01 00 00 00 00
	)
	.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
		01 00 01 00 00
	)
	// Nested Types
	.class nested private auto ansi sealed serializable beforefieldinit '<>c'
		extends System.Object
	{
		.custom instance void System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = (
			01 00 00 00
		)
		// Fields
		.field public static initonly class System.Type/'<>c' '<>9'

		// Methods
		.method private hidebysig specialname rtspecialname static 
			void .cctor () cil managed 
		{
			// Method begins at RVA 0x58c33
			// Code size 11 (0xb)
			.maxstack 8

			IL_0000: newobj instance void System.Type/'<>c'::.ctor()
			IL_0005: stsfld class System.Type/'<>c' System.Type/'<>c'::'<>9'
			IL_000a: ret
		} // end of method '<>c'::.cctor

		.method public hidebysig specialname rtspecialname 
			instance void .ctor () cil managed 
		{
			// Method begins at RVA 0x40b97
			// Code size 7 (0x7)
			.maxstack 8

			IL_0000: ldarg.0
			IL_0001: call instance void System.Object::.ctor()
			IL_0006: ret
		} // end of method '<>c'::.ctor

		.method assembly hidebysig 
			instance bool '<.cctor>b__273_0' (
				class System.Reflection.MemberInfo m,
				object c
			) cil managed 
		{
			// Method begins at RVA 0x58c3f
			// Code size 9 (0x9)
			.maxstack 8

			IL_0000: ldarg.1
			IL_0001: ldarg.2
			IL_0002: ldc.i4.4
			IL_0003: call bool System.Type::FilterNameImpl(class System.Reflection.MemberInfo, object, valuetype System.StringComparison)
			IL_0008: ret
		} // end of method '<>c'::'<.cctor>b__273_0'

		.method assembly hidebysig 
			instance bool '<.cctor>b__273_1' (
				class System.Reflection.MemberInfo m,
				object c
			) cil managed 
		{
			// Method begins at RVA 0x58c49
			// Code size 9 (0x9)
			.maxstack 8

			IL_0000: ldarg.1
			IL_0001: ldarg.2
			IL_0002: ldc.i4.5
			IL_0003: call bool System.Type::FilterNameImpl(class System.Reflection.MemberInfo, object, valuetype System.StringComparison)
			IL_0008: ret
		} // end of method '<>c'::'<.cctor>b__273_1'

	} // end of class <>c


	// Fields
	.field private static class System.Reflection.Binder modreq(System.Runtime.CompilerServices.IsVolatile) s_defaultBinder
	.field public static initonly char Delimiter
	.field public static initonly class System.Type[] EmptyTypes
	.field public static initonly object Missing
	.field public static initonly class System.Reflection.MemberFilter FilterAttribute
	.field public static initonly class System.Reflection.MemberFilter FilterName
	.field public static initonly class System.Reflection.MemberFilter FilterNameIgnoreCase

	// Methods
	.method public hidebysig specialname 
		instance bool get_IsInterface () cil managed 
	{
		// Method begins at RVA 0x57694
		// Code size 31 (0x1f)
		.maxstack 2
		.locals (
			[0] class System.RuntimeType
		)

		IL_0000: ldarg.0
		IL_0001: isinst System.RuntimeType
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: brfalse.s IL_0011

		IL_000a: ldloc.0
		IL_000b: call bool System.RuntimeTypeHandle::IsInterface(class System.RuntimeType)
		IL_0010: ret

		IL_0011: ldarg.0
		IL_0012: callvirt instance valuetype System.Reflection.TypeAttributes System.Type::GetAttributeFlagsImpl()
		IL_0017: ldc.i4.s 32
		IL_0019: and
		IL_001a: ldc.i4.s 32
		IL_001c: ceq
		IL_001e: ret
	} // end of method Type::get_IsInterface

	.method public hidebysig reqsecobj static 
		class System.Type GetType (
			string typeName,
			bool throwOnError,
			bool ignoreCase
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.RequiresUnreferencedCodeAttribute::.ctor(string) = (
			01 00 19 54 68 65 20 74 79 70 65 20 6d 69 67 68
			74 20 62 65 20 72 65 6d 6f 76 65 64 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x576c0
		// Code size 13 (0xd)
		.maxstack 4
		.locals (
			[0] valuetype System.Threading.StackCrawlMark
		)

		IL_0000: ldc.i4.1
		IL_0001: stloc.0
		IL_0002: ldarg.0
		IL_0003: ldarg.1
		IL_0004: ldarg.2
		IL_0005: ldloca.s 0
		IL_0007: call class System.RuntimeType System.RuntimeType::GetType(string, bool, bool, valuetype System.Threading.StackCrawlMark&)
		IL_000c: ret
	} // end of method Type::GetType

	.method public hidebysig reqsecobj static 
		class System.Type GetType (
			string typeName,
			bool throwOnError
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.RequiresUnreferencedCodeAttribute::.ctor(string) = (
			01 00 19 54 68 65 20 74 79 70 65 20 6d 69 67 68
			74 20 62 65 20 72 65 6d 6f 76 65 64 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x576dc
		// Code size 13 (0xd)
		.maxstack 4
		.locals (
			[0] valuetype System.Threading.StackCrawlMark
		)

		IL_0000: ldc.i4.1
		IL_0001: stloc.0
		IL_0002: ldarg.0
		IL_0003: ldarg.1
		IL_0004: ldc.i4.0
		IL_0005: ldloca.s 0
		IL_0007: call class System.RuntimeType System.RuntimeType::GetType(string, bool, bool, valuetype System.Threading.StackCrawlMark&)
		IL_000c: ret
	} // end of method Type::GetType

	.method public hidebysig reqsecobj static 
		class System.Type GetType (
			string typeName
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.RequiresUnreferencedCodeAttribute::.ctor(string) = (
			01 00 19 54 68 65 20 74 79 70 65 20 6d 69 67 68
			74 20 62 65 20 72 65 6d 6f 76 65 64 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x576f8
		// Code size 13 (0xd)
		.maxstack 4
		.locals (
			[0] valuetype System.Threading.StackCrawlMark
		)

		IL_0000: ldc.i4.1
		IL_0001: stloc.0
		IL_0002: ldarg.0
		IL_0003: ldc.i4.0
		IL_0004: ldc.i4.0
		IL_0005: ldloca.s 0
		IL_0007: call class System.RuntimeType System.RuntimeType::GetType(string, bool, bool, valuetype System.Threading.StackCrawlMark&)
		IL_000c: ret
	} // end of method Type::GetType

	.method public hidebysig reqsecobj static 
		class System.Type GetType (
			string typeName,
			class System.Func`2<class System.Reflection.AssemblyName, class System.Reflection.Assembly> assemblyResolver,
			class System.Func`4<class System.Reflection.Assembly, string, bool, class System.Type> typeResolver
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.RequiresUnreferencedCodeAttribute::.ctor(string) = (
			01 00 19 54 68 65 20 74 79 70 65 20 6d 69 67 68
			74 20 62 65 20 72 65 6d 6f 76 65 64 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 03 00 00 00 02 01 02 00 00
			)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 04 00 00 00 02 02 01 02 00 00
			)
		// Method begins at RVA 0x57714
		// Code size 15 (0xf)
		.maxstack 6
		.locals (
			[0] valuetype System.Threading.StackCrawlMark
		)

		IL_0000: ldc.i4.1
		IL_0001: stloc.0
		IL_0002: ldarg.0
		IL_0003: ldarg.1
		IL_0004: ldarg.2
		IL_0005: ldc.i4.0
		IL_0006: ldc.i4.0
		IL_0007: ldloca.s 0
		IL_0009: call class System.Type System.TypeNameParser::GetType(string, class System.Func`2<class System.Reflection.AssemblyName, class System.Reflection.Assembly>, class System.Func`4<class System.Reflection.Assembly, string, bool, class System.Type>, bool, bool, valuetype System.Threading.StackCrawlMark&)
		IL_000e: ret
	} // end of method Type::GetType

	.method public hidebysig reqsecobj static 
		class System.Type GetType (
			string typeName,
			class System.Func`2<class System.Reflection.AssemblyName, class System.Reflection.Assembly> assemblyResolver,
			class System.Func`4<class System.Reflection.Assembly, string, bool, class System.Type> typeResolver,
			bool throwOnError
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.RequiresUnreferencedCodeAttribute::.ctor(string) = (
			01 00 19 54 68 65 20 74 79 70 65 20 6d 69 67 68
			74 20 62 65 20 72 65 6d 6f 76 65 64 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 03 00 00 00 02 01 02 00 00
			)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 04 00 00 00 02 02 01 02 00 00
			)
		// Method begins at RVA 0x57730
		// Code size 15 (0xf)
		.maxstack 6
		.locals (
			[0] valuetype System.Threading.StackCrawlMark
		)

		IL_0000: ldc.i4.1
		IL_0001: stloc.0
		IL_0002: ldarg.0
		IL_0003: ldarg.1
		IL_0004: ldarg.2
		IL_0005: ldarg.3
		IL_0006: ldc.i4.0
		IL_0007: ldloca.s 0
		IL_0009: call class System.Type System.TypeNameParser::GetType(string, class System.Func`2<class System.Reflection.AssemblyName, class System.Reflection.Assembly>, class System.Func`4<class System.Reflection.Assembly, string, bool, class System.Type>, bool, bool, valuetype System.Threading.StackCrawlMark&)
		IL_000e: ret
	} // end of method Type::GetType

	.method public hidebysig reqsecobj static 
		class System.Type GetType (
			string typeName,
			class System.Func`2<class System.Reflection.AssemblyName, class System.Reflection.Assembly> assemblyResolver,
			class System.Func`4<class System.Reflection.Assembly, string, bool, class System.Type> typeResolver,
			bool throwOnError,
			bool ignoreCase
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.RequiresUnreferencedCodeAttribute::.ctor(string) = (
			01 00 19 54 68 65 20 74 79 70 65 20 6d 69 67 68
			74 20 62 65 20 72 65 6d 6f 76 65 64 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 03 00 00 00 02 01 02 00 00
			)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 04 00 00 00 02 02 01 02 00 00
			)
		// Method begins at RVA 0x5774c
		// Code size 16 (0x10)
		.maxstack 6
		.locals (
			[0] valuetype System.Threading.StackCrawlMark
		)

		IL_0000: ldc.i4.1
		IL_0001: stloc.0
		IL_0002: ldarg.0
		IL_0003: ldarg.1
		IL_0004: ldarg.2
		IL_0005: ldarg.3
		IL_0006: ldarg.s throwOnError
		IL_0008: ldloca.s 0
		IL_000a: call class System.Type System.TypeNameParser::GetType(string, class System.Func`2<class System.Reflection.AssemblyName, class System.Reflection.Assembly>, class System.Func`4<class System.Reflection.Assembly, string, bool, class System.Type>, bool, bool, valuetype System.Threading.StackCrawlMark&)
		IL_000f: ret
	} // end of method Type::GetType

	.method public hidebysig static 
		class System.Type GetTypeFromProgID (
			string progID,
			string server,
			bool throwOnError
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x57768
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: call class System.Type System.RuntimeType::GetTypeFromProgIDImpl(string, string, bool)
		IL_0008: ret
	} // end of method Type::GetTypeFromProgID

	.method public hidebysig static 
		class System.Type GetTypeFromCLSID (
			valuetype System.Guid 'clsid',
			string server,
			bool throwOnError
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x57772
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: call class System.Type System.RuntimeType::GetTypeFromCLSIDImpl(valuetype System.Guid, string, bool)
		IL_0008: ret
	} // end of method Type::GetTypeFromCLSID

	.method assembly hidebysig newslot strict virtual 
		instance valuetype System.RuntimeTypeHandle GetTypeHandleInternal () cil managed 
	{
		// Method begins at RVA 0x5777c
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype System.RuntimeTypeHandle System.Type::get_TypeHandle()
		IL_0006: ret
	} // end of method Type::GetTypeHandleInternal

	.method assembly hidebysig static 
		class System.RuntimeType GetTypeFromHandleUnsafe (
			native int handle
		) cil managed internalcall 
	{
	} // end of method Type::GetTypeFromHandleUnsafe

	.method public hidebysig static 
		class System.Type GetTypeFromHandle (
			valuetype System.RuntimeTypeHandle handle
		) cil managed internalcall 
	{
		.custom instance void System.Runtime.CompilerServices.IntrinsicAttribute::.ctor() = (
			01 00 00 00
		)
	} // end of method Type::GetTypeFromHandle

	.method public hidebysig specialname static 
		bool op_Equality (
			class System.Type left,
			class System.Type right
		) cil managed internalcall 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void System.Runtime.CompilerServices.IntrinsicAttribute::.ctor() = (
			01 00 00 00
		)
	} // end of method Type::op_Equality

	.method public hidebysig specialname static 
		bool op_Inequality (
			class System.Type left,
			class System.Type right
		) cil managed internalcall 
	{
		.custom instance void System.Runtime.CompilerServices.IntrinsicAttribute::.ctor() = (
			01 00 00 00
		)
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	} // end of method Type::op_Inequality

	.method assembly hidebysig 
		instance bool IsRuntimeImplemented () cil managed aggressiveinlining 
	{
		// Method begins at RVA 0x57784
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: isinst System.RuntimeType
		IL_0006: ldnull
		IL_0007: cgt.un
		IL_0009: ret
	} // end of method Type::IsRuntimeImplemented

	.method family hidebysig specialname rtspecialname 
		instance void .ctor () cil managed 
	{
		// Method begins at RVA 0x5778f
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance void System.Reflection.MemberInfo::.ctor()
		IL_0006: ret
	} // end of method Type::.ctor

	.method public hidebysig specialname virtual 
		instance valuetype System.Reflection.MemberTypes get_MemberType () cil managed 
	{
		// Method begins at RVA 0x57797
		// Code size 3 (0x3)
		.maxstack 8

		IL_0000: ldc.i4.s 32
		IL_0002: ret
	} // end of method Type::get_MemberType

	.method public hidebysig 
		instance class System.Type GetType () cil managed 
	{
		// Method begins at RVA 0x43f14
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance class System.Type System.Object::GetType()
		IL_0006: ret
	} // end of method Type::GetType

	.method public hidebysig specialname newslot abstract virtual 
		instance string get_Namespace () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	} // end of method Type::get_Namespace

	.method public hidebysig specialname newslot abstract virtual 
		instance string get_AssemblyQualifiedName () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	} // end of method Type::get_AssemblyQualifiedName

	.method public hidebysig specialname newslot abstract virtual 
		instance string get_FullName () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	} // end of method Type::get_FullName

	.method public hidebysig specialname newslot abstract virtual 
		instance class System.Reflection.Assembly get_Assembly () cil managed 
	{
	} // end of method Type::get_Assembly

	.method public hidebysig specialname newslot abstract virtual 
		instance class System.Reflection.Module get_Module () cil managed 
	{
	} // end of method Type::get_Module

	.method public hidebysig specialname 
		instance bool get_IsNested () cil managed 
	{
		// Method begins at RVA 0x5779b
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance class System.Type System.Reflection.MemberInfo::get_DeclaringType()
		IL_0006: ldnull
		IL_0007: call bool System.Type::op_Inequality(class System.Type, class System.Type)
		IL_000c: ret
	} // end of method Type::get_IsNested

	.method public hidebysig specialname virtual 
		instance class System.Type get_DeclaringType () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x577a9
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldnull
		IL_0001: ret
	} // end of method Type::get_DeclaringType

	.method public hidebysig specialname newslot virtual 
		instance class System.Reflection.MethodBase get_DeclaringMethod () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x577a9
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldnull
		IL_0001: ret
	} // end of method Type::get_DeclaringMethod

	.method public hidebysig specialname virtual 
		instance class System.Type get_ReflectedType () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x577a9
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldnull
		IL_0001: ret
	} // end of method Type::get_ReflectedType

	.method public hidebysig specialname newslot abstract virtual 
		instance class System.Type get_UnderlyingSystemType () cil managed 
	{
	} // end of method Type::get_UnderlyingSystemType

	.method public hidebysig specialname newslot virtual 
		instance bool get_IsTypeDefinition () cil managed 
	{
		// Method begins at RVA 0x577ac
		// Code size 6 (0x6)
		.maxstack 8

		IL_0000: call class System.Exception System.NotImplemented::get_ByDesign()
		IL_0005: throw
	} // end of method Type::get_IsTypeDefinition

	.method public hidebysig specialname 
		instance bool get_IsArray () cil managed 
	{
		// Method begins at RVA 0x577b3
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance bool System.Type::IsArrayImpl()
		IL_0006: ret
	} // end of method Type::get_IsArray

	.method family hidebysig newslot abstract virtual 
		instance bool IsArrayImpl () cil managed 
	{
	} // end of method Type::IsArrayImpl

	.method public hidebysig specialname 
		instance bool get_IsByRef () cil managed 
	{
		// Method begins at RVA 0x577bb
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance bool System.Type::IsByRefImpl()
		IL_0006: ret
	} // end of method Type::get_IsByRef

	.method family hidebysig newslot abstract virtual 
		instance bool IsByRefImpl () cil managed 
	{
	} // end of method Type::IsByRefImpl

	.method public hidebysig specialname 
		instance bool get_IsPointer () cil managed 
	{
		// Method begins at RVA 0x577c3
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance bool System.Type::IsPointerImpl()
		IL_0006: ret
	} // end of method Type::get_IsPointer

	.method family hidebysig newslot abstract virtual 
		instance bool IsPointerImpl () cil managed 
	{
	} // end of method Type::IsPointerImpl

	.method public hidebysig specialname newslot virtual 
		instance bool get_IsConstructedGenericType () cil managed 
	{
		// Method begins at RVA 0x577ac
		// Code size 6 (0x6)
		.maxstack 8

		IL_0000: call class System.Exception System.NotImplemented::get_ByDesign()
		IL_0005: throw
	} // end of method Type::get_IsConstructedGenericType

	.method public hidebysig specialname newslot virtual 
		instance bool get_IsGenericParameter () cil managed 
	{
		// Method begins at RVA 0x40f0b
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldc.i4.0
		IL_0001: ret
	} // end of method Type::get_IsGenericParameter

	.method public hidebysig specialname newslot virtual 
		instance bool get_IsGenericTypeParameter () cil managed 
	{
		// Method begins at RVA 0x577cb
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance bool System.Type::get_IsGenericParameter()
		IL_0006: brfalse.s IL_0012

		IL_0008: ldarg.0
		IL_0009: callvirt instance class System.Reflection.MethodBase System.Type::get_DeclaringMethod()
		IL_000e: ldnull
		IL_000f: ceq
		IL_0011: ret

		IL_0012: ldc.i4.0
		IL_0013: ret
	} // end of method Type::get_IsGenericTypeParameter

	.method public hidebysig specialname newslot virtual 
		instance bool get_IsGenericMethodParameter () cil managed 
	{
		// Method begins at RVA 0x577e0
		// Code size 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance bool System.Type::get_IsGenericParameter()
		IL_0006: brfalse.s IL_0015

		IL_0008: ldarg.0
		IL_0009: callvirt instance class System.Reflection.MethodBase System.Type::get_DeclaringMethod()
		IL_000e: ldnull
		IL_000f: call bool System.Reflection.MethodBase::op_Inequality(class System.Reflection.MethodBase, class System.Reflection.MethodBase)
		IL_0014: ret

		IL_0015: ldc.i4.0
		IL_0016: ret
	} // end of method Type::get_IsGenericMethodParameter

	.method public hidebysig specialname newslot virtual 
		instance bool get_IsGenericType () cil managed 
	{
		// Method begins at RVA 0x40f0b
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldc.i4.0
		IL_0001: ret
	} // end of method Type::get_IsGenericType

	.method public hidebysig specialname newslot virtual 
		instance bool get_IsGenericTypeDefinition () cil managed 
	{
		// Method begins at RVA 0x40f0b
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldc.i4.0
		IL_0001: ret
	} // end of method Type::get_IsGenericTypeDefinition

	.method public hidebysig specialname newslot virtual 
		instance bool get_IsSZArray () cil managed 
	{
		// Method begins at RVA 0x577ac
		// Code size 6 (0x6)
		.maxstack 8

		IL_0000: call class System.Exception System.NotImplemented::get_ByDesign()
		IL_0005: throw
	} // end of method Type::get_IsSZArray

	.method public hidebysig specialname newslot virtual 
		instance bool get_IsVariableBoundArray () cil managed 
	{
		// Method begins at RVA 0x577f8
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: call instance bool System.Type::get_IsArray()
		IL_0006: brfalse.s IL_0012

		IL_0008: ldarg.0
		IL_0009: callvirt instance bool System.Type::get_IsSZArray()
		IL_000e: ldc.i4.0
		IL_000f: ceq
		IL_0011: ret

		IL_0012: ldc.i4.0
		IL_0013: ret
	} // end of method Type::get_IsVariableBoundArray

	.method public hidebysig specialname newslot virtual 
		instance bool get_IsByRefLike () cil managed 
	{
		// Method begins at RVA 0x5780d
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_NotSupported_SubclassOverride()
		IL_0005: newobj instance void System.NotSupportedException::.ctor(string)
		IL_000a: throw
	} // end of method Type::get_IsByRefLike

	.method public hidebysig specialname 
		instance bool get_HasElementType () cil managed 
	{
		// Method begins at RVA 0x57819
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance bool System.Type::HasElementTypeImpl()
		IL_0006: ret
	} // end of method Type::get_HasElementType

	.method family hidebysig newslot abstract virtual 
		instance bool HasElementTypeImpl () cil managed 
	{
	} // end of method Type::HasElementTypeImpl

	.method public hidebysig newslot abstract virtual 
		instance class System.Type GetElementType () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	} // end of method Type::GetElementType

	.method public hidebysig newslot virtual 
		instance int32 GetArrayRank () cil managed 
	{
		// Method begins at RVA 0x5780d
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_NotSupported_SubclassOverride()
		IL_0005: newobj instance void System.NotSupportedException::.ctor(string)
		IL_000a: throw
	} // end of method Type::GetArrayRank

	.method public hidebysig newslot virtual 
		instance class System.Type GetGenericTypeDefinition () cil managed 
	{
		// Method begins at RVA 0x5780d
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_NotSupported_SubclassOverride()
		IL_0005: newobj instance void System.NotSupportedException::.ctor(string)
		IL_000a: throw
	} // end of method Type::GetGenericTypeDefinition

	.method public hidebysig specialname newslot virtual 
		instance class System.Type[] get_GenericTypeArguments () cil managed 
	{
		// Method begins at RVA 0x57821
		// Code size 29 (0x1d)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance bool System.Type::get_IsGenericType()
		IL_0006: brfalse.s IL_0010

		IL_0008: ldarg.0
		IL_0009: callvirt instance bool System.Type::get_IsGenericTypeDefinition()
		IL_000e: brfalse.s IL_0016

		IL_0010: call !!0[] System.Array::Empty<class System.Type>()
		IL_0015: ret

		IL_0016: ldarg.0
		IL_0017: callvirt instance class System.Type[] System.Type::GetGenericArguments()
		IL_001c: ret
	} // end of method Type::get_GenericTypeArguments

	.method public hidebysig newslot virtual 
		instance class System.Type[] GetGenericArguments () cil managed 
	{
		// Method begins at RVA 0x5780d
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_NotSupported_SubclassOverride()
		IL_0005: newobj instance void System.NotSupportedException::.ctor(string)
		IL_000a: throw
	} // end of method Type::GetGenericArguments

	.method public hidebysig specialname newslot virtual 
		instance int32 get_GenericParameterPosition () cil managed 
	{
		// Method begins at RVA 0x5783f
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_Arg_NotGenericParameter()
		IL_0005: newobj instance void System.InvalidOperationException::.ctor(string)
		IL_000a: throw
	} // end of method Type::get_GenericParameterPosition

	.method public hidebysig specialname newslot virtual 
		instance valuetype System.Reflection.GenericParameterAttributes get_GenericParameterAttributes () cil managed 
	{
		// Method begins at RVA 0x5784b
		// Code size 6 (0x6)
		.maxstack 8

		IL_0000: newobj instance void System.NotSupportedException::.ctor()
		IL_0005: throw
	} // end of method Type::get_GenericParameterAttributes

	.method public hidebysig newslot virtual 
		instance class System.Type[] GetGenericParameterConstraints () cil managed 
	{
		// Method begins at RVA 0x57852
		// Code size 25 (0x19)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance bool System.Type::get_IsGenericParameter()
		IL_0006: brtrue.s IL_0013

		IL_0008: call string System.SR::get_Arg_NotGenericParameter()
		IL_000d: newobj instance void System.InvalidOperationException::.ctor(string)
		IL_0012: throw

		IL_0013: newobj instance void System.InvalidOperationException::.ctor()
		IL_0018: throw
	} // end of method Type::GetGenericParameterConstraints

	.method public hidebysig specialname 
		instance valuetype System.Reflection.TypeAttributes get_Attributes () cil managed 
	{
		// Method begins at RVA 0x5786c
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype System.Reflection.TypeAttributes System.Type::GetAttributeFlagsImpl()
		IL_0006: ret
	} // end of method Type::get_Attributes

	.method family hidebysig newslot abstract virtual 
		instance valuetype System.Reflection.TypeAttributes GetAttributeFlagsImpl () cil managed 
	{
	} // end of method Type::GetAttributeFlagsImpl

	.method public hidebysig specialname 
		instance bool get_IsAbstract () cil managed 
	{
		// Method begins at RVA 0x57874
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype System.Reflection.TypeAttributes System.Type::GetAttributeFlagsImpl()
		IL_0006: ldc.i4 128
		IL_000b: and
		IL_000c: ldc.i4.0
		IL_000d: cgt.un
		IL_000f: ret
	} // end of method Type::get_IsAbstract

	.method public hidebysig specialname 
		instance bool get_IsImport () cil managed 
	{
		// Method begins at RVA 0x57885
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype System.Reflection.TypeAttributes System.Type::GetAttributeFlagsImpl()
		IL_0006: ldc.i4 4096
		IL_000b: and
		IL_000c: ldc.i4.0
		IL_000d: cgt.un
		IL_000f: ret
	} // end of method Type::get_IsImport

	.method public hidebysig specialname 
		instance bool get_IsSealed () cil managed 
	{
		// Method begins at RVA 0x57896
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype System.Reflection.TypeAttributes System.Type::GetAttributeFlagsImpl()
		IL_0006: ldc.i4 256
		IL_000b: and
		IL_000c: ldc.i4.0
		IL_000d: cgt.un
		IL_000f: ret
	} // end of method Type::get_IsSealed

	.method public hidebysig specialname 
		instance bool get_IsSpecialName () cil managed 
	{
		// Method begins at RVA 0x578a7
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype System.Reflection.TypeAttributes System.Type::GetAttributeFlagsImpl()
		IL_0006: ldc.i4 1024
		IL_000b: and
		IL_000c: ldc.i4.0
		IL_000d: cgt.un
		IL_000f: ret
	} // end of method Type::get_IsSpecialName

	.method public hidebysig specialname 
		instance bool get_IsClass () cil managed 
	{
		// Method begins at RVA 0x578b8
		// Code size 23 (0x17)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype System.Reflection.TypeAttributes System.Type::GetAttributeFlagsImpl()
		IL_0006: ldc.i4.s 32
		IL_0008: and
		IL_0009: brtrue.s IL_0015

		IL_000b: ldarg.0
		IL_000c: call instance bool System.Type::get_IsValueType()
		IL_0011: ldc.i4.0
		IL_0012: ceq
		IL_0014: ret

		IL_0015: ldc.i4.0
		IL_0016: ret
	} // end of method Type::get_IsClass

	.method public hidebysig specialname 
		instance bool get_IsNestedAssembly () cil managed 
	{
		// Method begins at RVA 0x578d0
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype System.Reflection.TypeAttributes System.Type::GetAttributeFlagsImpl()
		IL_0006: ldc.i4.7
		IL_0007: and
		IL_0008: ldc.i4.5
		IL_0009: ceq
		IL_000b: ret
	} // end of method Type::get_IsNestedAssembly

	.method public hidebysig specialname 
		instance bool get_IsNestedFamANDAssem () cil managed 
	{
		// Method begins at RVA 0x578dd
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype System.Reflection.TypeAttributes System.Type::GetAttributeFlagsImpl()
		IL_0006: ldc.i4.7
		IL_0007: and
		IL_0008: ldc.i4.6
		IL_0009: ceq
		IL_000b: ret
	} // end of method Type::get_IsNestedFamANDAssem

	.method public hidebysig specialname 
		instance bool get_IsNestedFamily () cil managed 
	{
		// Method begins at RVA 0x578ea
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype System.Reflection.TypeAttributes System.Type::GetAttributeFlagsImpl()
		IL_0006: ldc.i4.7
		IL_0007: and
		IL_0008: ldc.i4.4
		IL_0009: ceq
		IL_000b: ret
	} // end of method Type::get_IsNestedFamily

	.method public hidebysig specialname 
		instance bool get_IsNestedFamORAssem () cil managed 
	{
		// Method begins at RVA 0x578f7
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype System.Reflection.TypeAttributes System.Type::GetAttributeFlagsImpl()
		IL_0006: ldc.i4.7
		IL_0007: and
		IL_0008: ldc.i4.7
		IL_0009: ceq
		IL_000b: ret
	} // end of method Type::get_IsNestedFamORAssem

	.method public hidebysig specialname 
		instance bool get_IsNestedPrivate () cil managed 
	{
		// Method begins at RVA 0x57904
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype System.Reflection.TypeAttributes System.Type::GetAttributeFlagsImpl()
		IL_0006: ldc.i4.7
		IL_0007: and
		IL_0008: ldc.i4.3
		IL_0009: ceq
		IL_000b: ret
	} // end of method Type::get_IsNestedPrivate

	.method public hidebysig specialname 
		instance bool get_IsNestedPublic () cil managed 
	{
		// Method begins at RVA 0x57911
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype System.Reflection.TypeAttributes System.Type::GetAttributeFlagsImpl()
		IL_0006: ldc.i4.7
		IL_0007: and
		IL_0008: ldc.i4.2
		IL_0009: ceq
		IL_000b: ret
	} // end of method Type::get_IsNestedPublic

	.method public hidebysig specialname 
		instance bool get_IsNotPublic () cil managed 
	{
		// Method begins at RVA 0x5791e
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype System.Reflection.TypeAttributes System.Type::GetAttributeFlagsImpl()
		IL_0006: ldc.i4.7
		IL_0007: and
		IL_0008: ldc.i4.0
		IL_0009: ceq
		IL_000b: ret
	} // end of method Type::get_IsNotPublic

	.method public hidebysig specialname 
		instance bool get_IsPublic () cil managed 
	{
		// Method begins at RVA 0x5792b
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype System.Reflection.TypeAttributes System.Type::GetAttributeFlagsImpl()
		IL_0006: ldc.i4.7
		IL_0007: and
		IL_0008: ldc.i4.1
		IL_0009: ceq
		IL_000b: ret
	} // end of method Type::get_IsPublic

	.method public hidebysig specialname 
		instance bool get_IsAutoLayout () cil managed 
	{
		// Method begins at RVA 0x57938
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype System.Reflection.TypeAttributes System.Type::GetAttributeFlagsImpl()
		IL_0006: ldc.i4.s 24
		IL_0008: and
		IL_0009: ldc.i4.0
		IL_000a: ceq
		IL_000c: ret
	} // end of method Type::get_IsAutoLayout

	.method public hidebysig specialname 
		instance bool get_IsExplicitLayout () cil managed 
	{
		// Method begins at RVA 0x57946
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype System.Reflection.TypeAttributes System.Type::GetAttributeFlagsImpl()
		IL_0006: ldc.i4.s 24
		IL_0008: and
		IL_0009: ldc.i4.s 16
		IL_000b: ceq
		IL_000d: ret
	} // end of method Type::get_IsExplicitLayout

	.method public hidebysig specialname 
		instance bool get_IsLayoutSequential () cil managed 
	{
		// Method begins at RVA 0x57955
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype System.Reflection.TypeAttributes System.Type::GetAttributeFlagsImpl()
		IL_0006: ldc.i4.s 24
		IL_0008: and
		IL_0009: ldc.i4.8
		IL_000a: ceq
		IL_000c: ret
	} // end of method Type::get_IsLayoutSequential

	.method public hidebysig specialname 
		instance bool get_IsAnsiClass () cil managed 
	{
		// Method begins at RVA 0x57963
		// Code size 16 (0x10)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype System.Reflection.TypeAttributes System.Type::GetAttributeFlagsImpl()
		IL_0006: ldc.i4 196608
		IL_000b: and
		IL_000c: ldc.i4.0
		IL_000d: ceq
		IL_000f: ret
	} // end of method Type::get_IsAnsiClass

	.method public hidebysig specialname 
		instance bool get_IsAutoClass () cil managed 
	{
		// Method begins at RVA 0x57974
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype System.Reflection.TypeAttributes System.Type::GetAttributeFlagsImpl()
		IL_0006: ldc.i4 196608
		IL_000b: and
		IL_000c: ldc.i4 131072
		IL_0011: ceq
		IL_0013: ret
	} // end of method Type::get_IsAutoClass

	.method public hidebysig specialname 
		instance bool get_IsUnicodeClass () cil managed 
	{
		// Method begins at RVA 0x57989
		// Code size 20 (0x14)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype System.Reflection.TypeAttributes System.Type::GetAttributeFlagsImpl()
		IL_0006: ldc.i4 196608
		IL_000b: and
		IL_000c: ldc.i4 65536
		IL_0011: ceq
		IL_0013: ret
	} // end of method Type::get_IsUnicodeClass

	.method public hidebysig specialname 
		instance bool get_IsCOMObject () cil managed 
	{
		// Method begins at RVA 0x5799e
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance bool System.Type::IsCOMObjectImpl()
		IL_0006: ret
	} // end of method Type::get_IsCOMObject

	.method family hidebysig newslot abstract virtual 
		instance bool IsCOMObjectImpl () cil managed 
	{
	} // end of method Type::IsCOMObjectImpl

	.method public hidebysig specialname 
		instance bool get_IsContextful () cil managed 
	{
		// Method begins at RVA 0x579a6
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance bool System.Type::IsContextfulImpl()
		IL_0006: ret
	} // end of method Type::get_IsContextful

	.method family hidebysig newslot virtual 
		instance bool IsContextfulImpl () cil managed 
	{
		// Method begins at RVA 0x40f0b
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldc.i4.0
		IL_0001: ret
	} // end of method Type::IsContextfulImpl

	.method public hidebysig specialname newslot virtual 
		instance bool get_IsEnum () cil managed 
	{
		// Method begins at RVA 0x579ae
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldtoken System.Enum
		IL_0006: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_000b: callvirt instance bool System.Type::IsSubclassOf(class System.Type)
		IL_0010: ret
	} // end of method Type::get_IsEnum

	.method public hidebysig specialname 
		instance bool get_IsMarshalByRef () cil managed 
	{
		// Method begins at RVA 0x579c0
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance bool System.Type::IsMarshalByRefImpl()
		IL_0006: ret
	} // end of method Type::get_IsMarshalByRef

	.method family hidebysig newslot virtual 
		instance bool IsMarshalByRefImpl () cil managed 
	{
		// Method begins at RVA 0x40f0b
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldc.i4.0
		IL_0001: ret
	} // end of method Type::IsMarshalByRefImpl

	.method public hidebysig specialname 
		instance bool get_IsPrimitive () cil managed 
	{
		// Method begins at RVA 0x579c8
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance bool System.Type::IsPrimitiveImpl()
		IL_0006: ret
	} // end of method Type::get_IsPrimitive

	.method family hidebysig newslot abstract virtual 
		instance bool IsPrimitiveImpl () cil managed 
	{
	} // end of method Type::IsPrimitiveImpl

	.method public hidebysig specialname 
		instance bool get_IsValueType () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.IntrinsicAttribute::.ctor() = (
			01 00 00 00
		)
		// Method begins at RVA 0x579d0
		// Code size 7 (0x7)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance bool System.Type::IsValueTypeImpl()
		IL_0006: ret
	} // end of method Type::get_IsValueType

	.method public hidebysig 
		instance bool IsAssignableTo (
			class System.Type targetType
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void System.Runtime.CompilerServices.IntrinsicAttribute::.ctor() = (
			01 00 00 00
		)
		.param [1]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullWhenAttribute::.ctor(bool) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x579d8
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_0005

		IL_0003: ldc.i4.0
		IL_0004: ret

		IL_0005: ldarg.1
		IL_0006: ldarg.0
		IL_0007: callvirt instance bool System.Type::IsAssignableFrom(class System.Type)
		IL_000c: ret
	} // end of method Type::IsAssignableTo

	.method family hidebysig newslot virtual 
		instance bool IsValueTypeImpl () cil managed 
	{
		// Method begins at RVA 0x579e6
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldtoken System.ValueType
		IL_0006: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_000b: callvirt instance bool System.Type::IsSubclassOf(class System.Type)
		IL_0010: ret
	} // end of method Type::IsValueTypeImpl

	.method public hidebysig specialname newslot virtual 
		instance bool get_IsSignatureType () cil managed 
	{
		// Method begins at RVA 0x40f0b
		// Code size 2 (0x2)
		.maxstack 8

		IL_0000: ldc.i4.0
		IL_0001: ret
	} // end of method Type::get_IsSignatureType

	.method public hidebysig specialname newslot virtual 
		instance bool get_IsSecurityCritical () cil managed 
	{
		// Method begins at RVA 0x577ac
		// Code size 6 (0x6)
		.maxstack 8

		IL_0000: call class System.Exception System.NotImplemented::get_ByDesign()
		IL_0005: throw
	} // end of method Type::get_IsSecurityCritical

	.method public hidebysig specialname newslot virtual 
		instance bool get_IsSecuritySafeCritical () cil managed 
	{
		// Method begins at RVA 0x577ac
		// Code size 6 (0x6)
		.maxstack 8

		IL_0000: call class System.Exception System.NotImplemented::get_ByDesign()
		IL_0005: throw
	} // end of method Type::get_IsSecuritySafeCritical

	.method public hidebysig specialname newslot virtual 
		instance bool get_IsSecurityTransparent () cil managed 
	{
		// Method begins at RVA 0x577ac
		// Code size 6 (0x6)
		.maxstack 8

		IL_0000: call class System.Exception System.NotImplemented::get_ByDesign()
		IL_0005: throw
	} // end of method Type::get_IsSecurityTransparent

	.method public hidebysig specialname newslot virtual 
		instance class System.Runtime.InteropServices.StructLayoutAttribute get_StructLayoutAttribute () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x5784b
		// Code size 6 (0x6)
		.maxstack 8

		IL_0000: newobj instance void System.NotSupportedException::.ctor()
		IL_0005: throw
	} // end of method Type::get_StructLayoutAttribute

	.method public hidebysig specialname 
		instance class System.Reflection.ConstructorInfo get_TypeInitializer () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 07 00 00 00 00 00
		)
		// Method begins at RVA 0x579f8
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 56
		IL_0003: ldnull
		IL_0004: ldc.i4.3
		IL_0005: ldsfld class System.Type[] System.Type::EmptyTypes
		IL_000a: ldnull
		IL_000b: callvirt instance class System.Reflection.ConstructorInfo System.Type::GetConstructorImpl(valuetype System.Reflection.BindingFlags, class System.Reflection.Binder, valuetype System.Reflection.CallingConventions, class System.Type[], valuetype System.Reflection.ParameterModifier[])
		IL_0010: ret
	} // end of method Type::get_TypeInitializer

	.method public hidebysig 
		instance class System.Reflection.ConstructorInfo GetConstructor (
			class System.Type[] types
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 03 00 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x57a0a
		// Code size 12 (0xc)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 20
		IL_0003: ldnull
		IL_0004: ldarg.1
		IL_0005: ldnull
		IL_0006: call instance class System.Reflection.ConstructorInfo System.Type::GetConstructor(valuetype System.Reflection.BindingFlags, class System.Reflection.Binder, class System.Type[], valuetype System.Reflection.ParameterModifier[])
		IL_000b: ret
	} // end of method Type::GetConstructor

	.method public hidebysig 
		instance class System.Reflection.ConstructorInfo GetConstructor (
			valuetype System.Reflection.BindingFlags bindingAttr,
			class System.Reflection.Binder binder,
			class System.Type[] types,
			valuetype System.Reflection.ParameterModifier[] modifiers
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 07 00 00 00 00 00
		)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x57a17
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldc.i4.3
		IL_0004: ldarg.3
		IL_0005: ldarg.s modifiers
		IL_0007: call instance class System.Reflection.ConstructorInfo System.Type::GetConstructor(valuetype System.Reflection.BindingFlags, class System.Reflection.Binder, valuetype System.Reflection.CallingConventions, class System.Type[], valuetype System.Reflection.ParameterModifier[])
		IL_000c: ret
	} // end of method Type::GetConstructor

	.method public hidebysig 
		instance class System.Reflection.ConstructorInfo GetConstructor (
			valuetype System.Reflection.BindingFlags bindingAttr,
			class System.Reflection.Binder binder,
			valuetype System.Reflection.CallingConventions callConvention,
			class System.Type[] types,
			valuetype System.Reflection.ParameterModifier[] modifiers
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 07 00 00 00 00 00
		)
		.param [4]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x57a28
		// Code size 67 (0x43)
		.maxstack 6
		.locals (
			[0] int32
		)

		IL_0000: ldarg.s types
		IL_0002: brtrue.s IL_000f

		IL_0004: ldstr "types"
		IL_0009: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000e: throw

		IL_000f: ldc.i4.0
		IL_0010: stloc.0
		IL_0011: br.s IL_002e
		// loop start (head: IL_002e)
			IL_0013: ldarg.s types
			IL_0015: ldloc.0
			IL_0016: ldelem.ref
			IL_0017: ldnull
			IL_0018: call bool System.Type::op_Equality(class System.Type, class System.Type)
			IL_001d: brfalse.s IL_002a

			IL_001f: ldstr "types"
			IL_0024: newobj instance void System.ArgumentNullException::.ctor(string)
			IL_0029: throw

			IL_002a: ldloc.0
			IL_002b: ldc.i4.1
			IL_002c: add
			IL_002d: stloc.0

			IL_002e: ldloc.0
			IL_002f: ldarg.s types
			IL_0031: ldlen
			IL_0032: conv.i4
			IL_0033: blt.s IL_0013
		// end loop

		IL_0035: ldarg.0
		IL_0036: ldarg.1
		IL_0037: ldarg.2
		IL_0038: ldarg.3
		IL_0039: ldarg.s types
		IL_003b: ldarg.s modifiers
		IL_003d: callvirt instance class System.Reflection.ConstructorInfo System.Type::GetConstructorImpl(valuetype System.Reflection.BindingFlags, class System.Reflection.Binder, valuetype System.Reflection.CallingConventions, class System.Type[], valuetype System.Reflection.ParameterModifier[])
		IL_0042: ret
	} // end of method Type::GetConstructor

	.method family hidebysig newslot abstract virtual 
		instance class System.Reflection.ConstructorInfo GetConstructorImpl (
			valuetype System.Reflection.BindingFlags bindingAttr,
			class System.Reflection.Binder binder,
			valuetype System.Reflection.CallingConventions callConvention,
			class System.Type[] types,
			valuetype System.Reflection.ParameterModifier[] modifiers
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 07 00 00 00 00 00
		)
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [4]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
	} // end of method Type::GetConstructorImpl

	.method public hidebysig 
		instance class System.Reflection.ConstructorInfo[] GetConstructors () cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 03 00 00 00 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.UnconditionalSuppressMessageAttribute::.ctor(string, string) = (
			01 00 12 52 65 66 6c 65 63 74 69 6f 6e 41 6e 61
			6c 79 73 69 73 24 49 4c 32 30 38 35 3a 55 6e 72
			65 63 6f 67 6e 69 7a 65 64 52 65 66 6c 65 63 74
			69 6f 6e 50 61 74 74 65 72 6e 01 00 54 0e 0d 4a
			75 73 74 69 66 69 63 61 74 69 6f 6e 60 4c 69 6e
			6b 65 72 20 64 6f 65 73 6e 27 74 20 72 65 63 6f
			67 6e 69 7a 65 20 47 65 74 43 6f 6e 73 74 72 75
			63 74 6f 72 73 28 42 69 6e 64 69 6e 67 46 6c 61
			67 73 2e 50 75 62 6c 69 63 29 20 62 75 74 20 74
			68 69 73 20 69 73 20 77 68 61 74 20 74 68 65 20
			62 6f 64 79 20 69 73 20 64 6f 69 6e 67
		)
		// Method begins at RVA 0x57a77
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 20
		IL_0003: callvirt instance class System.Reflection.ConstructorInfo[] System.Type::GetConstructors(valuetype System.Reflection.BindingFlags)
		IL_0008: ret
	} // end of method Type::GetConstructors

	.method public hidebysig newslot abstract virtual 
		instance class System.Reflection.ConstructorInfo[] GetConstructors (
			valuetype System.Reflection.BindingFlags bindingAttr
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 07 00 00 00 00 00
		)
	} // end of method Type::GetConstructors

	.method public hidebysig 
		instance class System.Reflection.EventInfo GetEvent (
			string name
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 00 08 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x57a81
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.s 28
		IL_0004: callvirt instance class System.Reflection.EventInfo System.Type::GetEvent(string, valuetype System.Reflection.BindingFlags)
		IL_0009: ret
	} // end of method Type::GetEvent

	.method public hidebysig newslot abstract virtual 
		instance class System.Reflection.EventInfo GetEvent (
			string name,
			valuetype System.Reflection.BindingFlags bindingAttr
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 00 18 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
	} // end of method Type::GetEvent

	.method public hidebysig newslot virtual 
		instance class System.Reflection.EventInfo[] GetEvents () cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 00 08 00 00 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.UnconditionalSuppressMessageAttribute::.ctor(string, string) = (
			01 00 12 52 65 66 6c 65 63 74 69 6f 6e 41 6e 61
			6c 79 73 69 73 24 49 4c 32 30 38 35 3a 55 6e 72
			65 63 6f 67 6e 69 7a 65 64 52 65 66 6c 65 63 74
			69 6f 6e 50 61 74 74 65 72 6e 01 00 54 0e 0d 4a
			75 73 74 69 66 69 63 61 74 69 6f 6e 5a 4c 69 6e
			6b 65 72 20 64 6f 65 73 6e 27 74 20 72 65 63 6f
			67 6e 69 7a 65 20 47 65 74 45 76 65 6e 74 73 28
			42 69 6e 64 69 6e 67 46 6c 61 67 73 2e 50 75 62
			6c 69 63 29 20 62 75 74 20 74 68 69 73 20 69 73
			20 77 68 61 74 20 74 68 65 20 62 6f 64 79 20 69
			73 20 64 6f 69 6e 67
		)
		// Method begins at RVA 0x57a8c
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 28
		IL_0003: callvirt instance class System.Reflection.EventInfo[] System.Type::GetEvents(valuetype System.Reflection.BindingFlags)
		IL_0008: ret
	} // end of method Type::GetEvents

	.method public hidebysig newslot abstract virtual 
		instance class System.Reflection.EventInfo[] GetEvents (
			valuetype System.Reflection.BindingFlags bindingAttr
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 00 18 00 00 00 00
		)
	} // end of method Type::GetEvents

	.method public hidebysig 
		instance class System.Reflection.FieldInfo GetField (
			string name
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 20 00 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x57a96
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.s 28
		IL_0004: callvirt instance class System.Reflection.FieldInfo System.Type::GetField(string, valuetype System.Reflection.BindingFlags)
		IL_0009: ret
	} // end of method Type::GetField

	.method public hidebysig newslot abstract virtual 
		instance class System.Reflection.FieldInfo GetField (
			string name,
			valuetype System.Reflection.BindingFlags bindingAttr
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 60 00 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
	} // end of method Type::GetField

	.method public hidebysig 
		instance class System.Reflection.FieldInfo[] GetFields () cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 20 00 00 00 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.UnconditionalSuppressMessageAttribute::.ctor(string, string) = (
			01 00 12 52 65 66 6c 65 63 74 69 6f 6e 41 6e 61
			6c 79 73 69 73 24 49 4c 32 30 38 35 3a 55 6e 72
			65 63 6f 67 6e 69 7a 65 64 52 65 66 6c 65 63 74
			69 6f 6e 50 61 74 74 65 72 6e 01 00 54 0e 0d 4a
			75 73 74 69 66 69 63 61 74 69 6f 6e 5a 4c 69 6e
			6b 65 72 20 64 6f 65 73 6e 27 74 20 72 65 63 6f
			67 6e 69 7a 65 20 47 65 74 46 69 65 6c 64 73 28
			42 69 6e 64 69 6e 67 46 6c 61 67 73 2e 50 75 62
			6c 69 63 29 20 62 75 74 20 74 68 69 73 20 69 73
			20 77 68 61 74 20 74 68 65 20 62 6f 64 79 20 69
			73 20 64 6f 69 6e 67
		)
		// Method begins at RVA 0x57aa1
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 28
		IL_0003: callvirt instance class System.Reflection.FieldInfo[] System.Type::GetFields(valuetype System.Reflection.BindingFlags)
		IL_0008: ret
	} // end of method Type::GetFields

	.method public hidebysig newslot abstract virtual 
		instance class System.Reflection.FieldInfo[] GetFields (
			valuetype System.Reflection.BindingFlags bindingAttr
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 60 00 00 00 00 00
		)
	} // end of method Type::GetFields

	.method public hidebysig 
		instance class System.Reflection.MemberInfo[] GetMember (
			string name
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 ab 0a 00 00 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.UnconditionalSuppressMessageAttribute::.ctor(string, string) = (
			01 00 12 52 65 66 6c 65 63 74 69 6f 6e 41 6e 61
			6c 79 73 69 73 24 49 4c 32 30 38 35 3a 55 6e 72
			65 63 6f 67 6e 69 7a 65 64 52 65 66 6c 65 63 74
			69 6f 6e 50 61 74 74 65 72 6e 01 00 54 0e 0d 4a
			75 73 74 69 66 69 63 61 74 69 6f 6e 5a 4c 69 6e
			6b 65 72 20 64 6f 65 73 6e 27 74 20 72 65 63 6f
			67 6e 69 7a 65 20 47 65 74 4d 65 6d 62 65 72 28
			42 69 6e 64 69 6e 67 46 6c 61 67 73 2e 50 75 62
			6c 69 63 29 20 62 75 74 20 74 68 69 73 20 69 73
			20 77 68 61 74 20 74 68 65 20 62 6f 64 79 20 69
			73 20 64 6f 69 6e 67
		)
		// Method begins at RVA 0x57aab
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.s 28
		IL_0004: callvirt instance class System.Reflection.MemberInfo[] System.Type::GetMember(string, valuetype System.Reflection.BindingFlags)
		IL_0009: ret
	} // end of method Type::GetMember

	.method public hidebysig newslot virtual 
		instance class System.Reflection.MemberInfo[] GetMember (
			string name,
			valuetype System.Reflection.BindingFlags bindingAttr
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 ff ff ff ff 00 00
		)
		// Method begins at RVA 0x57ab6
		// Code size 14 (0xe)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4 191
		IL_0007: ldarg.2
		IL_0008: callvirt instance class System.Reflection.MemberInfo[] System.Type::GetMember(string, valuetype System.Reflection.MemberTypes, valuetype System.Reflection.BindingFlags)
		IL_000d: ret
	} // end of method Type::GetMember

	.method public hidebysig newslot virtual 
		instance class System.Reflection.MemberInfo[] GetMember (
			string name,
			valuetype System.Reflection.MemberTypes 'type',
			valuetype System.Reflection.BindingFlags bindingAttr
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 ff ff ff ff 00 00
		)
		// Method begins at RVA 0x5780d
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_NotSupported_SubclassOverride()
		IL_0005: newobj instance void System.NotSupportedException::.ctor(string)
		IL_000a: throw
	} // end of method Type::GetMember

	.method public hidebysig 
		instance class System.Reflection.MemberInfo[] GetMembers () cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 ff ff ff ff 00 00
		)
		// Method begins at RVA 0x57ac5
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 28
		IL_0003: callvirt instance class System.Reflection.MemberInfo[] System.Type::GetMembers(valuetype System.Reflection.BindingFlags)
		IL_0008: ret
	} // end of method Type::GetMembers

	.method public hidebysig newslot abstract virtual 
		instance class System.Reflection.MemberInfo[] GetMembers (
			valuetype System.Reflection.BindingFlags bindingAttr
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 ff ff ff ff 00 00
		)
	} // end of method Type::GetMembers

	.method public hidebysig 
		instance class System.Reflection.MethodInfo GetMethod (
			string name
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 08 00 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x57acf
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.s 28
		IL_0004: call instance class System.Reflection.MethodInfo System.Type::GetMethod(string, valuetype System.Reflection.BindingFlags)
		IL_0009: ret
	} // end of method Type::GetMethod

	.method public final hidebysig newslot virtual 
		instance class System.Reflection.MethodInfo GetMethod (
			string name,
			valuetype System.Reflection.BindingFlags bindingAttr
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 18 00 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x57ada
		// Code size 27 (0x1b)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "name"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: ldarg.1
		IL_0010: ldarg.2
		IL_0011: ldnull
		IL_0012: ldc.i4.3
		IL_0013: ldnull
		IL_0014: ldnull
		IL_0015: callvirt instance class System.Reflection.MethodInfo System.Type::GetMethodImpl(string, valuetype System.Reflection.BindingFlags, class System.Reflection.Binder, valuetype System.Reflection.CallingConventions, class System.Type[], valuetype System.Reflection.ParameterModifier[])
		IL_001a: ret
	} // end of method Type::GetMethod

	.method public hidebysig 
		instance class System.Reflection.MethodInfo GetMethod (
			string name,
			class System.Type[] types
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 08 00 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x57af6
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldnull
		IL_0004: call instance class System.Reflection.MethodInfo System.Type::GetMethod(string, class System.Type[], valuetype System.Reflection.ParameterModifier[])
		IL_0009: ret
	} // end of method Type::GetMethod

	.method public hidebysig 
		instance class System.Reflection.MethodInfo GetMethod (
			string name,
			class System.Type[] types,
			valuetype System.Reflection.ParameterModifier[] modifiers
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 08 00 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x57b01
		// Code size 13 (0xd)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.s 28
		IL_0004: ldnull
		IL_0005: ldarg.2
		IL_0006: ldarg.3
		IL_0007: call instance class System.Reflection.MethodInfo System.Type::GetMethod(string, valuetype System.Reflection.BindingFlags, class System.Reflection.Binder, class System.Type[], valuetype System.Reflection.ParameterModifier[])
		IL_000c: ret
	} // end of method Type::GetMethod

	.method public final hidebysig newslot virtual 
		instance class System.Reflection.MethodInfo GetMethod (
			string name,
			valuetype System.Reflection.BindingFlags bindingAttr,
			class System.Reflection.Binder binder,
			class System.Type[] types,
			valuetype System.Reflection.ParameterModifier[] modifiers
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 18 00 00 00 00 00
		)
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [4]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x57b0f
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: ldc.i4.3
		IL_0005: ldarg.s types
		IL_0007: ldarg.s modifiers
		IL_0009: call instance class System.Reflection.MethodInfo System.Type::GetMethod(string, valuetype System.Reflection.BindingFlags, class System.Reflection.Binder, valuetype System.Reflection.CallingConventions, class System.Type[], valuetype System.Reflection.ParameterModifier[])
		IL_000e: ret
	} // end of method Type::GetMethod

	.method public hidebysig 
		instance class System.Reflection.MethodInfo GetMethod (
			string name,
			valuetype System.Reflection.BindingFlags bindingAttr,
			class System.Reflection.Binder binder,
			valuetype System.Reflection.CallingConventions callConvention,
			class System.Type[] types,
			valuetype System.Reflection.ParameterModifier[] modifiers
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 18 00 00 00 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [5]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x57b20
		// Code size 83 (0x53)
		.maxstack 7
		.locals (
			[0] int32
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "name"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.s types
		IL_0010: brtrue.s IL_001d

		IL_0012: ldstr "types"
		IL_0017: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_001c: throw

		IL_001d: ldc.i4.0
		IL_001e: stloc.0
		IL_001f: br.s IL_003c
		// loop start (head: IL_003c)
			IL_0021: ldarg.s types
			IL_0023: ldloc.0
			IL_0024: ldelem.ref
			IL_0025: ldnull
			IL_0026: call bool System.Type::op_Equality(class System.Type, class System.Type)
			IL_002b: brfalse.s IL_0038

			IL_002d: ldstr "types"
			IL_0032: newobj instance void System.ArgumentNullException::.ctor(string)
			IL_0037: throw

			IL_0038: ldloc.0
			IL_0039: ldc.i4.1
			IL_003a: add
			IL_003b: stloc.0

			IL_003c: ldloc.0
			IL_003d: ldarg.s types
			IL_003f: ldlen
			IL_0040: conv.i4
			IL_0041: blt.s IL_0021
		// end loop

		IL_0043: ldarg.0
		IL_0044: ldarg.1
		IL_0045: ldarg.2
		IL_0046: ldarg.3
		IL_0047: ldarg.s callConvention
		IL_0049: ldarg.s types
		IL_004b: ldarg.s modifiers
		IL_004d: callvirt instance class System.Reflection.MethodInfo System.Type::GetMethodImpl(string, valuetype System.Reflection.BindingFlags, class System.Reflection.Binder, valuetype System.Reflection.CallingConventions, class System.Type[], valuetype System.Reflection.ParameterModifier[])
		IL_0052: ret
	} // end of method Type::GetMethod

	.method family hidebysig newslot abstract virtual 
		instance class System.Reflection.MethodInfo GetMethodImpl (
			string name,
			valuetype System.Reflection.BindingFlags bindingAttr,
			class System.Reflection.Binder binder,
			valuetype System.Reflection.CallingConventions callConvention,
			class System.Type[] types,
			valuetype System.Reflection.ParameterModifier[] modifiers
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 18 00 00 00 00 00
		)
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [5]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
	} // end of method Type::GetMethodImpl

	.method public hidebysig 
		instance class System.Reflection.MethodInfo GetMethod (
			string name,
			int32 genericParameterCount,
			class System.Type[] types
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 08 00 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x57b7f
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: ldnull
		IL_0005: call instance class System.Reflection.MethodInfo System.Type::GetMethod(string, int32, class System.Type[], valuetype System.Reflection.ParameterModifier[])
		IL_000a: ret
	} // end of method Type::GetMethod

	.method public hidebysig 
		instance class System.Reflection.MethodInfo GetMethod (
			string name,
			int32 genericParameterCount,
			class System.Type[] types,
			valuetype System.Reflection.ParameterModifier[] modifiers
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 08 00 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [4]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x57b8b
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldc.i4.s 28
		IL_0005: ldnull
		IL_0006: ldarg.3
		IL_0007: ldarg.s modifiers
		IL_0009: call instance class System.Reflection.MethodInfo System.Type::GetMethod(string, int32, valuetype System.Reflection.BindingFlags, class System.Reflection.Binder, class System.Type[], valuetype System.Reflection.ParameterModifier[])
		IL_000e: ret
	} // end of method Type::GetMethod

	.method public hidebysig 
		instance class System.Reflection.MethodInfo GetMethod (
			string name,
			int32 genericParameterCount,
			valuetype System.Reflection.BindingFlags bindingAttr,
			class System.Reflection.Binder binder,
			class System.Type[] types,
			valuetype System.Reflection.ParameterModifier[] modifiers
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 18 00 00 00 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [5]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x57b9b
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: ldarg.s binder
		IL_0006: ldc.i4.3
		IL_0007: ldarg.s types
		IL_0009: ldarg.s modifiers
		IL_000b: call instance class System.Reflection.MethodInfo System.Type::GetMethod(string, int32, valuetype System.Reflection.BindingFlags, class System.Reflection.Binder, valuetype System.Reflection.CallingConventions, class System.Type[], valuetype System.Reflection.ParameterModifier[])
		IL_0010: ret
	} // end of method Type::GetMethod

	.method public hidebysig 
		instance class System.Reflection.MethodInfo GetMethod (
			string name,
			int32 genericParameterCount,
			valuetype System.Reflection.BindingFlags bindingAttr,
			class System.Reflection.Binder binder,
			valuetype System.Reflection.CallingConventions callConvention,
			class System.Type[] types,
			valuetype System.Reflection.ParameterModifier[] modifiers
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 18 00 00 00 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [6]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x57bb0
		// Code size 105 (0x69)
		.maxstack 8
		.locals (
			[0] int32
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "name"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.2
		IL_000f: ldc.i4.0
		IL_0010: bge.s IL_0022

		IL_0012: call string System.SR::get_ArgumentOutOfRange_NeedNonNegNum()
		IL_0017: ldstr "genericParameterCount"
		IL_001c: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0021: throw

		IL_0022: ldarg.s types
		IL_0024: brtrue.s IL_0031

		IL_0026: ldstr "types"
		IL_002b: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_0030: throw

		IL_0031: ldc.i4.0
		IL_0032: stloc.0
		IL_0033: br.s IL_0050
		// loop start (head: IL_0050)
			IL_0035: ldarg.s types
			IL_0037: ldloc.0
			IL_0038: ldelem.ref
			IL_0039: ldnull
			IL_003a: call bool System.Type::op_Equality(class System.Type, class System.Type)
			IL_003f: brfalse.s IL_004c

			IL_0041: ldstr "types"
			IL_0046: newobj instance void System.ArgumentNullException::.ctor(string)
			IL_004b: throw

			IL_004c: ldloc.0
			IL_004d: ldc.i4.1
			IL_004e: add
			IL_004f: stloc.0

			IL_0050: ldloc.0
			IL_0051: ldarg.s types
			IL_0053: ldlen
			IL_0054: conv.i4
			IL_0055: blt.s IL_0035
		// end loop

		IL_0057: ldarg.0
		IL_0058: ldarg.1
		IL_0059: ldarg.2
		IL_005a: ldarg.3
		IL_005b: ldarg.s binder
		IL_005d: ldarg.s callConvention
		IL_005f: ldarg.s types
		IL_0061: ldarg.s modifiers
		IL_0063: callvirt instance class System.Reflection.MethodInfo System.Type::GetMethodImpl(string, int32, valuetype System.Reflection.BindingFlags, class System.Reflection.Binder, valuetype System.Reflection.CallingConventions, class System.Type[], valuetype System.Reflection.ParameterModifier[])
		IL_0068: ret
	} // end of method Type::GetMethod

	.method family hidebysig newslot virtual 
		instance class System.Reflection.MethodInfo GetMethodImpl (
			string name,
			int32 genericParameterCount,
			valuetype System.Reflection.BindingFlags bindingAttr,
			class System.Reflection.Binder binder,
			valuetype System.Reflection.CallingConventions callConvention,
			class System.Type[] types,
			valuetype System.Reflection.ParameterModifier[] modifiers
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 18 00 00 00 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [6]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
		// Method begins at RVA 0x5784b
		// Code size 6 (0x6)
		.maxstack 8

		IL_0000: newobj instance void System.NotSupportedException::.ctor()
		IL_0005: throw
	} // end of method Type::GetMethodImpl

	.method public hidebysig 
		instance class System.Reflection.MethodInfo[] GetMethods () cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.UnconditionalSuppressMessageAttribute::.ctor(string, string) = (
			01 00 12 52 65 66 6c 65 63 74 69 6f 6e 41 6e 61
			6c 79 73 69 73 24 49 4c 32 30 38 35 3a 55 6e 72
			65 63 6f 67 6e 69 7a 65 64 52 65 66 6c 65 63 74
			69 6f 6e 50 61 74 74 65 72 6e 01 00 54 0e 0d 4a
			75 73 74 69 66 69 63 61 74 69 6f 6e 5b 4c 69 6e
			6b 65 72 20 64 6f 65 73 6e 27 74 20 72 65 63 6f
			67 6e 69 7a 65 20 47 65 74 4d 65 74 68 6f 64 73
			28 42 69 6e 64 69 6e 67 46 6c 61 67 73 2e 50 75
			62 6c 69 63 29 20 62 75 74 20 74 68 69 73 20 69
			73 20 77 68 61 74 20 74 68 65 20 62 6f 64 79 20
			69 73 20 64 6f 69 6e 67
		)
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 08 00 00 00 00 00
		)
		// Method begins at RVA 0x57c25
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 28
		IL_0003: callvirt instance class System.Reflection.MethodInfo[] System.Type::GetMethods(valuetype System.Reflection.BindingFlags)
		IL_0008: ret
	} // end of method Type::GetMethods

	.method public hidebysig newslot abstract virtual 
		instance class System.Reflection.MethodInfo[] GetMethods (
			valuetype System.Reflection.BindingFlags bindingAttr
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 18 00 00 00 00 00
		)
	} // end of method Type::GetMethods

	.method public hidebysig 
		instance class System.Type GetNestedType (
			string name
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 80 00 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x57c2f
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.s 28
		IL_0004: callvirt instance class System.Type System.Type::GetNestedType(string, valuetype System.Reflection.BindingFlags)
		IL_0009: ret
	} // end of method Type::GetNestedType

	.method public hidebysig newslot abstract virtual 
		instance class System.Type GetNestedType (
			string name,
			valuetype System.Reflection.BindingFlags bindingAttr
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 80 01 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
	} // end of method Type::GetNestedType

	.method public hidebysig 
		instance class System.Type[] GetNestedTypes () cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 80 00 00 00 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.UnconditionalSuppressMessageAttribute::.ctor(string, string) = (
			01 00 12 52 65 66 6c 65 63 74 69 6f 6e 41 6e 61
			6c 79 73 69 73 24 49 4c 32 30 38 35 3a 55 6e 72
			65 63 6f 67 6e 69 7a 65 64 52 65 66 6c 65 63 74
			69 6f 6e 50 61 74 74 65 72 6e 01 00 54 0e 0d 4a
			75 73 74 69 66 69 63 61 74 69 6f 6e 5f 4c 69 6e
			6b 65 72 20 64 6f 65 73 6e 27 74 20 72 65 63 6f
			67 6e 69 7a 65 20 47 65 74 4e 65 73 74 65 64 54
			79 70 65 73 28 42 69 6e 64 69 6e 67 46 6c 61 67
			73 2e 50 75 62 6c 69 63 29 20 62 75 74 20 74 68
			69 73 20 69 73 20 77 68 61 74 20 74 68 65 20 62
			6f 64 79 20 69 73 20 64 6f 69 6e 67
		)
		// Method begins at RVA 0x57c3a
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 28
		IL_0003: callvirt instance class System.Type[] System.Type::GetNestedTypes(valuetype System.Reflection.BindingFlags)
		IL_0008: ret
	} // end of method Type::GetNestedTypes

	.method public hidebysig newslot abstract virtual 
		instance class System.Type[] GetNestedTypes (
			valuetype System.Reflection.BindingFlags bindingAttr
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 80 01 00 00 00 00
		)
	} // end of method Type::GetNestedTypes

	.method public hidebysig 
		instance class System.Reflection.PropertyInfo GetProperty (
			string name
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 00 02 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x57c44
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.s 28
		IL_0004: call instance class System.Reflection.PropertyInfo System.Type::GetProperty(string, valuetype System.Reflection.BindingFlags)
		IL_0009: ret
	} // end of method Type::GetProperty

	.method public final hidebysig newslot virtual 
		instance class System.Reflection.PropertyInfo GetProperty (
			string name,
			valuetype System.Reflection.BindingFlags bindingAttr
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 00 06 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x57c4f
		// Code size 27 (0x1b)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "name"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: ldarg.1
		IL_0010: ldarg.2
		IL_0011: ldnull
		IL_0012: ldnull
		IL_0013: ldnull
		IL_0014: ldnull
		IL_0015: callvirt instance class System.Reflection.PropertyInfo System.Type::GetPropertyImpl(string, valuetype System.Reflection.BindingFlags, class System.Reflection.Binder, class System.Type, class System.Type[], valuetype System.Reflection.ParameterModifier[])
		IL_001a: ret
	} // end of method Type::GetProperty

	.method public hidebysig 
		instance class System.Reflection.PropertyInfo GetProperty (
			string name,
			class System.Type returnType
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 00 02 00 00 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.UnconditionalSuppressMessageAttribute::.ctor(string, string) = (
			01 00 12 52 65 66 6c 65 63 74 69 6f 6e 41 6e 61
			6c 79 73 69 73 24 49 4c 32 30 38 35 3a 55 6e 72
			65 63 6f 67 6e 69 7a 65 64 52 65 66 6c 65 63 74
			69 6f 6e 50 61 74 74 65 72 6e 01 00 54 0e 0d 4a
			75 73 74 69 66 69 63 61 74 69 6f 6e 60 4c 69 6e
			6b 65 72 20 64 6f 65 73 6e 27 74 20 72 65 63 6f
			67 6e 69 7a 65 20 47 65 74 50 72 6f 70 65 72 74
			79 49 6d 70 6c 28 42 69 6e 64 69 6e 67 46 6c 61
			67 73 2e 50 75 62 6c 69 63 29 20 62 75 74 20 74
			68 69 73 20 69 73 20 77 68 61 74 20 74 68 65 20
			62 6f 64 79 20 69 73 20 64 6f 69 6e 67
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x57c6b
		// Code size 28 (0x1c)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "name"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: ldarg.1
		IL_0010: ldc.i4.s 28
		IL_0012: ldnull
		IL_0013: ldarg.2
		IL_0014: ldnull
		IL_0015: ldnull
		IL_0016: callvirt instance class System.Reflection.PropertyInfo System.Type::GetPropertyImpl(string, valuetype System.Reflection.BindingFlags, class System.Reflection.Binder, class System.Type, class System.Type[], valuetype System.Reflection.ParameterModifier[])
		IL_001b: ret
	} // end of method Type::GetProperty

	.method public hidebysig 
		instance class System.Reflection.PropertyInfo GetProperty (
			string name,
			class System.Type[] types
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 00 02 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x57c88
		// Code size 10 (0xa)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldnull
		IL_0003: ldarg.2
		IL_0004: call instance class System.Reflection.PropertyInfo System.Type::GetProperty(string, class System.Type, class System.Type[])
		IL_0009: ret
	} // end of method Type::GetProperty

	.method public hidebysig 
		instance class System.Reflection.PropertyInfo GetProperty (
			string name,
			class System.Type returnType,
			class System.Type[] types
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 00 02 00 00 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x57c93
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: ldnull
		IL_0005: call instance class System.Reflection.PropertyInfo System.Type::GetProperty(string, class System.Type, class System.Type[], valuetype System.Reflection.ParameterModifier[])
		IL_000a: ret
	} // end of method Type::GetProperty

	.method public hidebysig 
		instance class System.Reflection.PropertyInfo GetProperty (
			string name,
			class System.Type returnType,
			class System.Type[] types,
			valuetype System.Reflection.ParameterModifier[] modifiers
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 00 02 00 00 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [3]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x57c9f
		// Code size 15 (0xf)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.s 28
		IL_0004: ldnull
		IL_0005: ldarg.2
		IL_0006: ldarg.3
		IL_0007: ldarg.s modifiers
		IL_0009: call instance class System.Reflection.PropertyInfo System.Type::GetProperty(string, valuetype System.Reflection.BindingFlags, class System.Reflection.Binder, class System.Type, class System.Type[], valuetype System.Reflection.ParameterModifier[])
		IL_000e: ret
	} // end of method Type::GetProperty

	.method public final hidebysig newslot virtual 
		instance class System.Reflection.PropertyInfo GetProperty (
			string name,
			valuetype System.Reflection.BindingFlags bindingAttr,
			class System.Reflection.Binder binder,
			class System.Type returnType,
			class System.Type[] types,
			valuetype System.Reflection.ParameterModifier[] modifiers
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 00 06 00 00 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [5]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x57caf
		// Code size 45 (0x2d)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "name"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.s types
		IL_0010: brtrue.s IL_001d

		IL_0012: ldstr "types"
		IL_0017: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_001c: throw

		IL_001d: ldarg.0
		IL_001e: ldarg.1
		IL_001f: ldarg.2
		IL_0020: ldarg.3
		IL_0021: ldarg.s returnType
		IL_0023: ldarg.s types
		IL_0025: ldarg.s modifiers
		IL_0027: callvirt instance class System.Reflection.PropertyInfo System.Type::GetPropertyImpl(string, valuetype System.Reflection.BindingFlags, class System.Reflection.Binder, class System.Type, class System.Type[], valuetype System.Reflection.ParameterModifier[])
		IL_002c: ret
	} // end of method Type::GetProperty

	.method family hidebysig newslot abstract virtual 
		instance class System.Reflection.PropertyInfo GetPropertyImpl (
			string name,
			valuetype System.Reflection.BindingFlags bindingAttr,
			class System.Reflection.Binder binder,
			class System.Type returnType,
			class System.Type[] types,
			valuetype System.Reflection.ParameterModifier[] modifiers
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 00 06 00 00 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [5]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
	} // end of method Type::GetPropertyImpl

	.method public hidebysig 
		instance class System.Reflection.PropertyInfo[] GetProperties () cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 00 02 00 00 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.UnconditionalSuppressMessageAttribute::.ctor(string, string) = (
			01 00 12 52 65 66 6c 65 63 74 69 6f 6e 41 6e 61
			6c 79 73 69 73 24 49 4c 32 30 38 35 3a 55 6e 72
			65 63 6f 67 6e 69 7a 65 64 52 65 66 6c 65 63 74
			69 6f 6e 50 61 74 74 65 72 6e 01 00 54 0e 0d 4a
			75 73 74 69 66 69 63 61 74 69 6f 6e 5e 4c 69 6e
			6b 65 72 20 64 6f 65 73 6e 27 74 20 72 65 63 6f
			67 6e 69 7a 65 20 47 65 74 50 72 6f 70 65 72 74
			69 65 73 28 42 69 6e 64 69 6e 67 46 6c 61 67 73
			2e 50 75 62 6c 69 63 29 20 62 75 74 20 74 68 69
			73 20 69 73 20 77 68 61 74 20 74 68 65 20 62 6f
			64 79 20 69 73 20 64 6f 69 6e 67
		)
		// Method begins at RVA 0x57cdd
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 28
		IL_0003: callvirt instance class System.Reflection.PropertyInfo[] System.Type::GetProperties(valuetype System.Reflection.BindingFlags)
		IL_0008: ret
	} // end of method Type::GetProperties

	.method public hidebysig newslot abstract virtual 
		instance class System.Reflection.PropertyInfo[] GetProperties (
			valuetype System.Reflection.BindingFlags bindingAttr
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 00 06 00 00 00 00
		)
	} // end of method Type::GetProperties

	.method public hidebysig newslot virtual 
		instance class System.Reflection.MemberInfo[] GetDefaultMembers () cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 ab 0a 00 00 00 00
		)
		// Method begins at RVA 0x577ac
		// Code size 6 (0x6)
		.maxstack 8

		IL_0000: call class System.Exception System.NotImplemented::get_ByDesign()
		IL_0005: throw
	} // end of method Type::GetDefaultMembers

	.method public hidebysig specialname newslot virtual 
		instance valuetype System.RuntimeTypeHandle get_TypeHandle () cil managed 
	{
		// Method begins at RVA 0x57ce8
		// Code size 6 (0x6)
		.maxstack 1
		.locals (
			[0] valuetype System.RuntimeTypeHandle
		)

		IL_0000: newobj instance void System.NotSupportedException::.ctor()
		IL_0005: throw
	} // end of method Type::get_TypeHandle

	.method public hidebysig static 
		valuetype System.RuntimeTypeHandle GetTypeHandle (
			object o
		) cil managed 
	{
		// Method begins at RVA 0x57cfc
		// Code size 29 (0x1d)
		.maxstack 2
		.locals (
			[0] class System.Type
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000f

		IL_0003: ldnull
		IL_0004: call string System.SR::get_Arg_InvalidHandle()
		IL_0009: newobj instance void System.ArgumentNullException::.ctor(string, string)
		IL_000e: throw

		IL_000f: ldarg.0
		IL_0010: callvirt instance class System.Type System.Object::GetType()
		IL_0015: stloc.0
		IL_0016: ldloc.0
		IL_0017: callvirt instance valuetype System.RuntimeTypeHandle System.Type::get_TypeHandle()
		IL_001c: ret
	} // end of method Type::GetTypeHandle

	.method public hidebysig static 
		class System.Type[] GetTypeArray (
			object[] args
		) cil managed 
	{
		// Method begins at RVA 0x57d28
		// Code size 71 (0x47)
		.maxstack 4
		.locals (
			[0] class System.Type[],
			[1] int32
		)

		IL_0000: ldarg.0
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "args"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: ldlen
		IL_0010: conv.i4
		IL_0011: newarr System.Type
		IL_0016: stloc.0
		IL_0017: ldc.i4.0
		IL_0018: stloc.1
		IL_0019: br.s IL_003f
		// loop start (head: IL_003f)
			IL_001b: ldarg.0
			IL_001c: ldloc.1
			IL_001d: ldelem.ref
			IL_001e: brtrue.s IL_0030

			IL_0020: call string System.SR::get_ArgumentNull_ArrayValue()
			IL_0025: ldstr "args"
			IL_002a: newobj instance void System.ArgumentException::.ctor(string, string)
			IL_002f: throw

			IL_0030: ldloc.0
			IL_0031: ldloc.1
			IL_0032: ldarg.0
			IL_0033: ldloc.1
			IL_0034: ldelem.ref
			IL_0035: callvirt instance class System.Type System.Object::GetType()
			IL_003a: stelem.ref
			IL_003b: ldloc.1
			IL_003c: ldc.i4.1
			IL_003d: add
			IL_003e: stloc.1

			IL_003f: ldloc.1
			IL_0040: ldloc.0
			IL_0041: ldlen
			IL_0042: conv.i4
			IL_0043: blt.s IL_001b
		// end loop

		IL_0045: ldloc.0
		IL_0046: ret
	} // end of method Type::GetTypeArray

	.method public hidebysig static 
		valuetype System.TypeCode GetTypeCode (
			class System.Type 'type'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x57d7b
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0007: brfalse.s IL_000b

		IL_0009: ldc.i4.0
		IL_000a: ret

		IL_000b: ldarg.0
		IL_000c: callvirt instance valuetype System.TypeCode System.Type::GetTypeCodeImpl()
		IL_0011: ret
	} // end of method Type::GetTypeCode

	.method family hidebysig newslot virtual 
		instance valuetype System.TypeCode GetTypeCodeImpl () cil managed 
	{
		// Method begins at RVA 0x57d90
		// Code size 34 (0x22)
		.maxstack 2
		.locals (
			[0] class System.Type
		)

		IL_0000: ldarg.0
		IL_0001: callvirt instance class System.Type System.Type::get_UnderlyingSystemType()
		IL_0006: stloc.0
		IL_0007: ldarg.0
		IL_0008: ldloc.0
		IL_0009: call bool System.Type::op_Inequality(class System.Type, class System.Type)
		IL_000e: brfalse.s IL_0020

		IL_0010: ldloc.0
		IL_0011: ldnull
		IL_0012: call bool System.Type::op_Inequality(class System.Type, class System.Type)
		IL_0017: brfalse.s IL_0020

		IL_0019: ldloc.0
		IL_001a: call valuetype System.TypeCode System.Type::GetTypeCode(class System.Type)
		IL_001f: ret

		IL_0020: ldc.i4.1
		IL_0021: ret
	} // end of method Type::GetTypeCodeImpl

	.method public hidebysig specialname newslot abstract virtual 
		instance valuetype System.Guid get_GUID () cil managed 
	{
	} // end of method Type::get_GUID

	.method public hidebysig static 
		class System.Type GetTypeFromCLSID (
			valuetype System.Guid 'clsid'
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x57dbe
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: ldc.i4.0
		IL_0003: call class System.Type System.Type::GetTypeFromCLSID(valuetype System.Guid, string, bool)
		IL_0008: ret
	} // end of method Type::GetTypeFromCLSID

	.method public hidebysig static 
		class System.Type GetTypeFromCLSID (
			valuetype System.Guid 'clsid',
			bool throwOnError
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x57dc8
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: ldarg.1
		IL_0003: call class System.Type System.Type::GetTypeFromCLSID(valuetype System.Guid, string, bool)
		IL_0008: ret
	} // end of method Type::GetTypeFromCLSID

	.method public hidebysig static 
		class System.Type GetTypeFromCLSID (
			valuetype System.Guid 'clsid',
			string server
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x57dd2
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.0
		IL_0003: call class System.Type System.Type::GetTypeFromCLSID(valuetype System.Guid, string, bool)
		IL_0008: ret
	} // end of method Type::GetTypeFromCLSID

	.method public hidebysig static 
		class System.Type GetTypeFromProgID (
			string progID
		) cil managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x57ddc
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: ldc.i4.0
		IL_0003: call class System.Type System.Type::GetTypeFromProgID(string, string, bool)
		IL_0008: ret
	} // end of method Type::GetTypeFromProgID

	.method public hidebysig static 
		class System.Type GetTypeFromProgID (
			string progID,
			bool throwOnError
		) cil managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x57de6
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldnull
		IL_0002: ldarg.1
		IL_0003: call class System.Type System.Type::GetTypeFromProgID(string, string, bool)
		IL_0008: ret
	} // end of method Type::GetTypeFromProgID

	.method public hidebysig static 
		class System.Type GetTypeFromProgID (
			string progID,
			string server
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x57df0
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.0
		IL_0003: call class System.Type System.Type::GetTypeFromProgID(string, string, bool)
		IL_0008: ret
	} // end of method Type::GetTypeFromProgID

	.method public hidebysig specialname newslot abstract virtual 
		instance class System.Type get_BaseType () cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
	} // end of method Type::get_BaseType

	.method public hidebysig 
		instance object InvokeMember (
			string name,
			valuetype System.Reflection.BindingFlags invokeAttr,
			class System.Reflection.Binder binder,
			object target,
			object[] args
		) cil managed 
	{
		.custom instance void System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = (
			01 00 00 00
		)
		.custom instance void System.Diagnostics.DebuggerHiddenAttribute::.ctor() = (
			01 00 00 00
		)
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 ff ff ff ff 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x57dfc
		// Code size 17 (0x11)
		.maxstack 9

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: ldarg.s target
		IL_0006: ldarg.s args
		IL_0008: ldnull
		IL_0009: ldnull
		IL_000a: ldnull
		IL_000b: callvirt instance object System.Type::InvokeMember(string, valuetype System.Reflection.BindingFlags, class System.Reflection.Binder, object, object[], valuetype System.Reflection.ParameterModifier[], class System.Globalization.CultureInfo, string[])
		IL_0010: ret
	} // end of method Type::InvokeMember

	.method public hidebysig 
		instance object InvokeMember (
			string name,
			valuetype System.Reflection.BindingFlags invokeAttr,
			class System.Reflection.Binder binder,
			object target,
			object[] args,
			class System.Globalization.CultureInfo culture
		) cil managed 
	{
		.custom instance void System.Diagnostics.DebuggerHiddenAttribute::.ctor() = (
			01 00 00 00
		)
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void System.Diagnostics.DebuggerStepThroughAttribute::.ctor() = (
			01 00 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 ff ff ff ff 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x57e1c
		// Code size 18 (0x12)
		.maxstack 9

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldarg.2
		IL_0003: ldarg.3
		IL_0004: ldarg.s target
		IL_0006: ldarg.s args
		IL_0008: ldnull
		IL_0009: ldarg.s culture
		IL_000b: ldnull
		IL_000c: callvirt instance object System.Type::InvokeMember(string, valuetype System.Reflection.BindingFlags, class System.Reflection.Binder, object, object[], valuetype System.Reflection.ParameterModifier[], class System.Globalization.CultureInfo, string[])
		IL_0011: ret
	} // end of method Type::InvokeMember

	.method public hidebysig newslot abstract virtual 
		instance object InvokeMember (
			string name,
			valuetype System.Reflection.BindingFlags invokeAttr,
			class System.Reflection.Binder binder,
			object target,
			object[] args,
			valuetype System.Reflection.ParameterModifier[] modifiers,
			class System.Globalization.CultureInfo culture,
			string[] namedParameters
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 ff ff ff ff 00 00
		)
		.param [1]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		.param [8]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8[]) = (
				01 00 02 00 00 00 02 01 00 00
			)
	} // end of method Type::InvokeMember

	.method public hidebysig 
		instance class System.Type GetInterface (
			string name
		) cil managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x57e3a
		// Code size 9 (0x9)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: ldc.i4.0
		IL_0003: callvirt instance class System.Type System.Type::GetInterface(string, bool)
		IL_0008: ret
	} // end of method Type::GetInterface

	.method public hidebysig newslot abstract virtual 
		instance class System.Type GetInterface (
			string name,
			bool ignoreCase
		) cil managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
	} // end of method Type::GetInterface

	.method public hidebysig newslot abstract virtual 
		instance class System.Type[] GetInterfaces () cil managed 
	{
	} // end of method Type::GetInterfaces

	.method public hidebysig newslot virtual 
		instance valuetype System.Reflection.InterfaceMapping GetInterfaceMap (
			class System.Type interfaceType
		) cil managed 
	{
		// Method begins at RVA 0x57e44
		// Code size 11 (0xb)
		.maxstack 1
		.locals (
			[0] valuetype System.Reflection.InterfaceMapping
		)

		IL_0000: call string System.SR::get_NotSupported_SubclassOverride()
		IL_0005: newobj instance void System.NotSupportedException::.ctor(string)
		IL_000a: throw
	} // end of method Type::GetInterfaceMap

	.method public hidebysig newslot virtual 
		instance bool IsInstanceOfType (
			object o
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullWhenAttribute::.ctor(bool) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x57e5b
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: ldarg.1
		IL_0005: callvirt instance class System.Type System.Object::GetType()
		IL_000a: callvirt instance bool System.Type::IsAssignableFrom(class System.Type)
		IL_000f: ret

		IL_0010: ldc.i4.0
		IL_0011: ret
	} // end of method Type::IsInstanceOfType

	.method public hidebysig newslot virtual 
		instance bool IsEquivalentTo (
			class System.Type other
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullWhenAttribute::.ctor(bool) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x57e6e
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0007: ret
	} // end of method Type::IsEquivalentTo

	.method public hidebysig newslot virtual 
		instance class System.Type GetEnumUnderlyingType () cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.UnconditionalSuppressMessageAttribute::.ctor(string, string) = (
			01 00 12 52 65 66 6c 65 63 74 69 6f 6e 41 6e 61
			6c 79 73 69 73 24 49 4c 32 30 38 35 3a 55 6e 72
			65 63 6f 67 6e 69 7a 65 64 52 65 66 6c 65 63 74
			69 6f 6e 50 61 74 74 65 72 6e 01 00 54 0e 0d 4a
			75 73 74 69 66 69 63 61 74 69 6f 6e 38 54 68 65
			20 73 69 6e 67 6c 65 20 69 6e 73 74 61 6e 63 65
			20 66 69 65 6c 64 20 6f 6e 20 65 6e 75 6d 20 74
			79 70 65 73 20 69 73 20 6e 65 76 65 72 20 74 72
			69 6d 6d 65 64
		)
		// Method begins at RVA 0x57e78
		// Code size 67 (0x43)
		.maxstack 2
		.locals (
			[0] class System.Reflection.FieldInfo[]
		)

		IL_0000: ldarg.0
		IL_0001: callvirt instance bool System.Type::get_IsEnum()
		IL_0006: brtrue.s IL_0018

		IL_0008: call string System.SR::get_Arg_MustBeEnum()
		IL_000d: ldstr "enumType"
		IL_0012: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0017: throw

		IL_0018: ldarg.0
		IL_0019: ldc.i4.s 52
		IL_001b: callvirt instance class System.Reflection.FieldInfo[] System.Type::GetFields(valuetype System.Reflection.BindingFlags)
		IL_0020: stloc.0
		IL_0021: ldloc.0
		IL_0022: brfalse.s IL_002a

		IL_0024: ldloc.0
		IL_0025: ldlen
		IL_0026: conv.i4
		IL_0027: ldc.i4.1
		IL_0028: beq.s IL_003a

		IL_002a: call string System.SR::get_Argument_InvalidEnum()
		IL_002f: ldstr "enumType"
		IL_0034: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0039: throw

		IL_003a: ldloc.0
		IL_003b: ldc.i4.0
		IL_003c: ldelem.ref
		IL_003d: callvirt instance class System.Type System.Reflection.FieldInfo::get_FieldType()
		IL_0042: ret
	} // end of method Type::GetEnumUnderlyingType

	.method public hidebysig newslot virtual 
		instance class System.Array GetEnumValues () cil managed 
	{
		// Method begins at RVA 0x57ec7
		// Code size 30 (0x1e)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: callvirt instance bool System.Type::get_IsEnum()
		IL_0006: brtrue.s IL_0018

		IL_0008: call string System.SR::get_Arg_MustBeEnum()
		IL_000d: ldstr "enumType"
		IL_0012: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0017: throw

		IL_0018: call class System.Exception System.NotImplemented::get_ByDesign()
		IL_001d: throw
	} // end of method Type::GetEnumValues

	.method public hidebysig newslot virtual 
		instance class System.Type MakeArrayType () cil managed 
	{
		// Method begins at RVA 0x5784b
		// Code size 6 (0x6)
		.maxstack 8

		IL_0000: newobj instance void System.NotSupportedException::.ctor()
		IL_0005: throw
	} // end of method Type::MakeArrayType

	.method public hidebysig newslot virtual 
		instance class System.Type MakeArrayType (
			int32 rank
		) cil managed 
	{
		// Method begins at RVA 0x5784b
		// Code size 6 (0x6)
		.maxstack 8

		IL_0000: newobj instance void System.NotSupportedException::.ctor()
		IL_0005: throw
	} // end of method Type::MakeArrayType

	.method public hidebysig newslot virtual 
		instance class System.Type MakeByRefType () cil managed 
	{
		// Method begins at RVA 0x5784b
		// Code size 6 (0x6)
		.maxstack 8

		IL_0000: newobj instance void System.NotSupportedException::.ctor()
		IL_0005: throw
	} // end of method Type::MakeByRefType

	.method public hidebysig newslot virtual 
		instance class System.Type MakeGenericType (
			class System.Type[] typeArguments
		) cil managed 
	{
		.param [1]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x5780d
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_NotSupported_SubclassOverride()
		IL_0005: newobj instance void System.NotSupportedException::.ctor(string)
		IL_000a: throw
	} // end of method Type::MakeGenericType

	.method public hidebysig newslot virtual 
		instance class System.Type MakePointerType () cil managed 
	{
		// Method begins at RVA 0x5784b
		// Code size 6 (0x6)
		.maxstack 8

		IL_0000: newobj instance void System.NotSupportedException::.ctor()
		IL_0005: throw
	} // end of method Type::MakePointerType

	.method public hidebysig static 
		class System.Type MakeGenericSignatureType (
			class System.Type genericTypeDefinition,
			class System.Type[] typeArguments
		) cil managed 
	{
		.param [2]
			.custom instance void System.ParamArrayAttribute::.ctor() = (
				01 00 00 00
			)
		// Method begins at RVA 0x57ee6
		// Code size 8 (0x8)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldarg.1
		IL_0002: newobj instance void System.Reflection.SignatureConstructedGenericType::.ctor(class System.Type, class System.Type[])
		IL_0007: ret
	} // end of method Type::MakeGenericSignatureType

	.method public hidebysig static 
		class System.Type MakeGenericMethodParameter (
			int32 position
		) cil managed 
	{
		// Method begins at RVA 0x57eef
		// Code size 27 (0x1b)
		.maxstack 8

		IL_0000: ldarg.0
		IL_0001: ldc.i4.0
		IL_0002: bge.s IL_0014

		IL_0004: call string System.SR::get_ArgumentOutOfRange_NeedNonNegNum()
		IL_0009: ldstr "position"
		IL_000e: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0013: throw

		IL_0014: ldarg.0
		IL_0015: newobj instance void System.Reflection.SignatureGenericMethodParameterType::.ctor(int32)
		IL_001a: ret
	} // end of method Type::MakeGenericMethodParameter

	.method assembly hidebysig 
		instance string FormatTypeName () cil managed 
	{
		// Method begins at RVA 0x57f0c
		// Code size 73 (0x49)
		.maxstack 2
		.locals (
			[0] class System.Type
		)

		IL_0000: ldarg.0
		IL_0001: call instance class System.Type System.Type::GetRootElementType()
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: callvirt instance bool System.Type::get_IsPrimitive()
		IL_000d: brtrue.s IL_003b

		IL_000f: ldloc.0
		IL_0010: callvirt instance bool System.Type::get_IsNested()
		IL_0015: brtrue.s IL_003b

		IL_0017: ldloc.0
		IL_0018: ldtoken System.Void
		IL_001d: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0022: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0027: brtrue.s IL_003b

		IL_0029: ldloc.0
		IL_002a: ldtoken System.TypedReference
		IL_002f: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0034: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0039: brfalse.s IL_0042

		IL_003b: ldarg.0
		IL_003c: callvirt instance string System.Reflection.MemberInfo::get_Name()
		IL_0041: ret

		IL_0042: ldarg.0
		IL_0043: callvirt instance string System.Object::ToString()
		IL_0048: ret
	} // end of method Type::FormatTypeName

	.method public hidebysig virtual 
		instance string ToString () cil managed 
	{
		// Method begins at RVA 0x57f61
		// Code size 17 (0x11)
		.maxstack 8

		IL_0000: ldstr "Type: "
		IL_0005: ldarg.0
		IL_0006: callvirt instance string System.Reflection.MemberInfo::get_Name()
		IL_000b: call string System.String::Concat(string, string)
		IL_0010: ret
	} // end of method Type::ToString

	.method public hidebysig virtual 
		instance bool Equals (
			object o
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x57f73
		// Code size 18 (0x12)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: brfalse.s IL_0010

		IL_0003: ldarg.0
		IL_0004: ldarg.1
		IL_0005: isinst System.Type
		IL_000a: callvirt instance bool System.Type::Equals(class System.Type)
		IL_000f: ret

		IL_0010: ldc.i4.0
		IL_0011: ret
	} // end of method Type::Equals

	.method public hidebysig virtual 
		instance int32 GetHashCode () cil managed 
	{
		// Method begins at RVA 0x57f88
		// Code size 25 (0x19)
		.maxstack 2
		.locals (
			[0] class System.Type
		)

		IL_0000: ldarg.0
		IL_0001: callvirt instance class System.Type System.Type::get_UnderlyingSystemType()
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: ldarg.0
		IL_0009: beq.s IL_0012

		IL_000b: ldloc.0
		IL_000c: callvirt instance int32 System.Object::GetHashCode()
		IL_0011: ret

		IL_0012: ldarg.0
		IL_0013: call instance int32 System.Reflection.MemberInfo::GetHashCode()
		IL_0018: ret
	} // end of method Type::GetHashCode

	.method public hidebysig newslot virtual 
		instance bool Equals (
			class System.Type o
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		// Method begins at RVA 0x57fad
		// Code size 26 (0x1a)
		.maxstack 8

		IL_0000: ldarg.1
		IL_0001: ldnull
		IL_0002: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0007: brtrue.s IL_0018

		IL_0009: ldarg.0
		IL_000a: callvirt instance class System.Type System.Type::get_UnderlyingSystemType()
		IL_000f: ldarg.1
		IL_0010: callvirt instance class System.Type System.Type::get_UnderlyingSystemType()
		IL_0015: ceq
		IL_0017: ret

		IL_0018: ldc.i4.0
		IL_0019: ret
	} // end of method Type::Equals

	.method public hidebysig static 
		class System.Type ReflectionOnlyGetType (
			string typeName,
			bool throwIfNotFound,
			bool ignoreCase
		) cil managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x57fc8
		// Code size 11 (0xb)
		.maxstack 8

		IL_0000: call string System.SR::get_PlatformNotSupported_ReflectionOnly()
		IL_0005: newobj instance void System.PlatformNotSupportedException::.ctor(string)
		IL_000a: throw
	} // end of method Type::ReflectionOnlyGetType

	.method public hidebysig specialname static 
		class System.Reflection.Binder get_DefaultBinder () cil managed 
	{
		// Method begins at RVA 0x57fd4
		// Code size 36 (0x24)
		.maxstack 3
		.locals (
			[0] class System.DefaultBinder
		)

		IL_0000: volatile.
		IL_0002: ldsfld class System.Reflection.Binder modreq(System.Runtime.CompilerServices.IsVolatile) System.Type::s_defaultBinder
		IL_0007: brtrue.s IL_001c

		IL_0009: newobj instance void System.DefaultBinder::.ctor()
		IL_000e: stloc.0
		IL_000f: ldsflda class System.Reflection.Binder modreq(System.Runtime.CompilerServices.IsVolatile) System.Type::s_defaultBinder
		IL_0014: ldloc.0
		IL_0015: ldnull
		IL_0016: call !!0 System.Threading.Interlocked::CompareExchange<class System.Reflection.Binder>(!!0&, !!0, !!0)
		IL_001b: pop

		IL_001c: volatile.
		IL_001e: ldsfld class System.Reflection.Binder modreq(System.Runtime.CompilerServices.IsVolatile) System.Type::s_defaultBinder
		IL_0023: ret
	} // end of method Type::get_DefaultBinder

	.method public hidebysig newslot virtual 
		instance bool IsEnumDefined (
			object 'value'
		) cil managed 
	{
		// Method begins at RVA 0x58004
		// Code size 209 (0xd1)
		.maxstack 3
		.locals (
			[0] class System.Type,
			[1] string[],
			[2] object[],
			[3] class System.Type,
			[4] class System.Array
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "value"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: callvirt instance bool System.Type::get_IsEnum()
		IL_0014: brtrue.s IL_0026

		IL_0016: call string System.SR::get_Arg_MustBeEnum()
		IL_001b: ldstr "value"
		IL_0020: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0025: throw

		IL_0026: ldarg.1
		IL_0027: callvirt instance class System.Type System.Object::GetType()
		IL_002c: stloc.0
		IL_002d: ldloc.0
		IL_002e: callvirt instance bool System.Type::get_IsEnum()
		IL_0033: brfalse.s IL_0057

		IL_0035: ldloc.0
		IL_0036: ldarg.0
		IL_0037: callvirt instance bool System.Type::IsEquivalentTo(class System.Type)
		IL_003c: brtrue.s IL_0050

		IL_003e: call string System.SR::get_Arg_EnumAndObjectMustBeSameType()
		IL_0043: ldloc.0
		IL_0044: ldarg.0
		IL_0045: call string System.SR::Format(string, object, object)
		IL_004a: newobj instance void System.ArgumentException::.ctor(string)
		IL_004f: throw

		IL_0050: ldloc.0
		IL_0051: callvirt instance class System.Type System.Type::GetEnumUnderlyingType()
		IL_0056: stloc.0

		IL_0057: ldloc.0
		IL_0058: ldtoken System.String
		IL_005d: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0062: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0067: brfalse.s IL_0080

		IL_0069: ldarg.0
		IL_006a: callvirt instance string[] System.Type::GetEnumNames()
		IL_006f: stloc.1
		IL_0070: ldloc.1
		IL_0071: stloc.2
		IL_0072: ldloc.2
		IL_0073: ldarg.1
		IL_0074: call int32 System.Array::IndexOf<object>(!!0[], !!0)
		IL_0079: ldc.i4.0
		IL_007a: blt.s IL_007e

		IL_007c: ldc.i4.1
		IL_007d: ret

		IL_007e: ldc.i4.0
		IL_007f: ret

		IL_0080: ldloc.0
		IL_0081: call bool System.Type::IsIntegerType(class System.Type)
		IL_0086: brfalse.s IL_00c6

		IL_0088: ldarg.0
		IL_0089: callvirt instance class System.Type System.Type::GetEnumUnderlyingType()
		IL_008e: stloc.3
		IL_008f: ldloc.3
		IL_0090: callvirt instance valuetype System.TypeCode System.Type::GetTypeCodeImpl()
		IL_0095: ldloc.0
		IL_0096: callvirt instance valuetype System.TypeCode System.Type::GetTypeCodeImpl()
		IL_009b: beq.s IL_00af

		IL_009d: call string System.SR::get_Arg_EnumUnderlyingTypeAndObjectMustBeSameType()
		IL_00a2: ldloc.0
		IL_00a3: ldloc.3
		IL_00a4: call string System.SR::Format(string, object, object)
		IL_00a9: newobj instance void System.ArgumentException::.ctor(string)
		IL_00ae: throw

		IL_00af: ldarg.0
		IL_00b0: call instance class System.Array System.Type::GetEnumRawConstantValues()
		IL_00b5: stloc.s 4
		IL_00b7: ldloc.s 4
		IL_00b9: ldarg.1
		IL_00ba: call int32 System.Type::BinarySearch(class System.Array, object)
		IL_00bf: ldc.i4.0
		IL_00c0: clt
		IL_00c2: ldc.i4.0
		IL_00c3: ceq
		IL_00c5: ret

		IL_00c6: call string System.SR::get_InvalidOperation_UnknownEnumType()
		IL_00cb: newobj instance void System.InvalidOperationException::.ctor(string)
		IL_00d0: throw
	} // end of method Type::IsEnumDefined

	.method public hidebysig newslot virtual 
		instance string GetEnumName (
			object 'value'
		) cil managed 
	{
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x580e4
		// Code size 109 (0x6d)
		.maxstack 2
		.locals (
			[0] class System.Type,
			[1] class System.Array,
			[2] int32,
			[3] string[]
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "value"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: callvirt instance bool System.Type::get_IsEnum()
		IL_0014: brtrue.s IL_0026

		IL_0016: call string System.SR::get_Arg_MustBeEnum()
		IL_001b: ldstr "value"
		IL_0020: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0025: throw

		IL_0026: ldarg.1
		IL_0027: callvirt instance class System.Type System.Object::GetType()
		IL_002c: stloc.0
		IL_002d: ldloc.0
		IL_002e: callvirt instance bool System.Type::get_IsEnum()
		IL_0033: brtrue.s IL_004d

		IL_0035: ldloc.0
		IL_0036: call bool System.Type::IsIntegerType(class System.Type)
		IL_003b: brtrue.s IL_004d

		IL_003d: call string System.SR::get_Arg_MustBeEnumBaseTypeOrEnum()
		IL_0042: ldstr "value"
		IL_0047: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_004c: throw

		IL_004d: ldarg.0
		IL_004e: call instance class System.Array System.Type::GetEnumRawConstantValues()
		IL_0053: stloc.1
		IL_0054: ldloc.1
		IL_0055: ldarg.1
		IL_0056: call int32 System.Type::BinarySearch(class System.Array, object)
		IL_005b: stloc.2
		IL_005c: ldloc.2
		IL_005d: ldc.i4.0
		IL_005e: blt.s IL_006b

		IL_0060: ldarg.0
		IL_0061: callvirt instance string[] System.Type::GetEnumNames()
		IL_0066: stloc.3
		IL_0067: ldloc.3
		IL_0068: ldloc.2
		IL_0069: ldelem.ref
		IL_006a: ret

		IL_006b: ldnull
		IL_006c: ret
	} // end of method Type::GetEnumName

	.method public hidebysig newslot virtual 
		instance string[] GetEnumNames () cil managed 
	{
		// Method begins at RVA 0x58160
		// Code size 36 (0x24)
		.maxstack 3
		.locals (
			[0] string[],
			[1] class System.Array
		)

		IL_0000: ldarg.0
		IL_0001: callvirt instance bool System.Type::get_IsEnum()
		IL_0006: brtrue.s IL_0018

		IL_0008: call string System.SR::get_Arg_MustBeEnum()
		IL_000d: ldstr "enumType"
		IL_0012: newobj instance void System.ArgumentException::.ctor(string, string)
		IL_0017: throw

		IL_0018: ldarg.0
		IL_0019: ldloca.s 0
		IL_001b: ldloca.s 1
		IL_001d: call instance void System.Type::GetEnumData(string[]&, class System.Array&)
		IL_0022: ldloc.0
		IL_0023: ret
	} // end of method Type::GetEnumNames

	.method private hidebysig 
		instance class System.Array GetEnumRawConstantValues () cil managed 
	{
		// Method begins at RVA 0x58190
		// Code size 12 (0xc)
		.maxstack 3
		.locals (
			[0] class System.Array,
			[1] string[]
		)

		IL_0000: ldarg.0
		IL_0001: ldloca.s 1
		IL_0003: ldloca.s 0
		IL_0005: call instance void System.Type::GetEnumData(string[]&, class System.Array&)
		IL_000a: ldloc.0
		IL_000b: ret
	} // end of method Type::GetEnumRawConstantValues

	.method private hidebysig 
		instance void GetEnumData (
			[out] string[]& enumNames,
			[out] class System.Array& enumValues
		) cil managed 
	{
		.custom instance void System.Diagnostics.CodeAnalysis.UnconditionalSuppressMessageAttribute::.ctor(string, string) = (
			01 00 12 52 65 66 6c 65 63 74 69 6f 6e 41 6e 61
			6c 79 73 69 73 24 49 4c 32 30 38 35 3a 55 6e 72
			65 63 6f 67 6e 69 7a 65 64 52 65 66 6c 65 63 74
			69 6f 6e 50 61 74 74 65 72 6e 01 00 54 0e 0d 4a
			75 73 74 69 66 69 63 61 74 69 6f 6e 2c 4c 69 74
			65 72 61 6c 20 66 69 65 6c 64 73 20 6f 6e 20 65
			6e 75 6d 73 20 63 61 6e 20 6e 65 76 65 72 20 62
			65 20 74 72 69 6d 6d 65 64
		)
		// Method begins at RVA 0x581a8
		// Code size 189 (0xbd)
		.maxstack 5
		.locals (
			[0] class System.Reflection.FieldInfo[],
			[1] object[],
			[2] string[],
			[3] class System.Collections.IComparer,
			[4] int32,
			[5] int32,
			[6] int32,
			[7] string,
			[8] object,
			[9] bool
		)

		IL_0000: ldarg.0
		IL_0001: ldc.i4.s 56
		IL_0003: callvirt instance class System.Reflection.FieldInfo[] System.Type::GetFields(valuetype System.Reflection.BindingFlags)
		IL_0008: stloc.0
		IL_0009: ldloc.0
		IL_000a: ldlen
		IL_000b: conv.i4
		IL_000c: newarr System.Object
		IL_0011: stloc.1
		IL_0012: ldloc.0
		IL_0013: ldlen
		IL_0014: conv.i4
		IL_0015: newarr System.String
		IL_001a: stloc.2
		IL_001b: ldc.i4.0
		IL_001c: stloc.s 4
		IL_001e: br.s IL_0040
		// loop start (head: IL_0040)
			IL_0020: ldloc.2
			IL_0021: ldloc.s 4
			IL_0023: ldloc.0
			IL_0024: ldloc.s 4
			IL_0026: ldelem.ref
			IL_0027: callvirt instance string System.Reflection.MemberInfo::get_Name()
			IL_002c: stelem.ref
			IL_002d: ldloc.1
			IL_002e: ldloc.s 4
			IL_0030: ldloc.0
			IL_0031: ldloc.s 4
			IL_0033: ldelem.ref
			IL_0034: callvirt instance object System.Reflection.FieldInfo::GetRawConstantValue()
			IL_0039: stelem.ref
			IL_003a: ldloc.s 4
			IL_003c: ldc.i4.1
			IL_003d: add
			IL_003e: stloc.s 4

			IL_0040: ldloc.s 4
			IL_0042: ldloc.0
			IL_0043: ldlen
			IL_0044: conv.i4
			IL_0045: blt.s IL_0020
		// end loop

		IL_0047: call class System.Collections.Generic.Comparer`1<!0> class System.Collections.Generic.Comparer`1<object>::get_Default()
		IL_004c: stloc.3
		IL_004d: ldc.i4.1
		IL_004e: stloc.s 5
		IL_0050: br.s IL_00af
		// loop start (head: IL_00af)
			IL_0052: ldloc.s 5
			IL_0054: stloc.s 6
			IL_0056: ldloc.2
			IL_0057: ldloc.s 5
			IL_0059: ldelem.ref
			IL_005a: stloc.s 7
			IL_005c: ldloc.1
			IL_005d: ldloc.s 5
			IL_005f: ldelem.ref
			IL_0060: stloc.s 8
			IL_0062: ldc.i4.0
			IL_0063: stloc.s 9
			IL_0065: br.s IL_0088
			// loop start (head: IL_0088)
				IL_0067: ldloc.2
				IL_0068: ldloc.s 6
				IL_006a: ldloc.2
				IL_006b: ldloc.s 6
				IL_006d: ldc.i4.1
				IL_006e: sub
				IL_006f: ldelem.ref
				IL_0070: stelem.ref
				IL_0071: ldloc.1
				IL_0072: ldloc.s 6
				IL_0074: ldloc.1
				IL_0075: ldloc.s 6
				IL_0077: ldc.i4.1
				IL_0078: sub
				IL_0079: ldelem.ref
				IL_007a: stelem.ref
				IL_007b: ldloc.s 6
				IL_007d: ldc.i4.1
				IL_007e: sub
				IL_007f: stloc.s 6
				IL_0081: ldc.i4.1
				IL_0082: stloc.s 9
				IL_0084: ldloc.s 6
				IL_0086: brfalse.s IL_0099

				IL_0088: ldloc.3
				IL_0089: ldloc.1
				IL_008a: ldloc.s 6
				IL_008c: ldc.i4.1
				IL_008d: sub
				IL_008e: ldelem.ref
				IL_008f: ldloc.s 8
				IL_0091: callvirt instance int32 System.Collections.IComparer::Compare(object, object)
				IL_0096: ldc.i4.0
				IL_0097: bgt.s IL_0067
			// end loop

			IL_0099: ldloc.s 9
			IL_009b: brfalse.s IL_00a9

			IL_009d: ldloc.2
			IL_009e: ldloc.s 6
			IL_00a0: ldloc.s 7
			IL_00a2: stelem.ref
			IL_00a3: ldloc.1
			IL_00a4: ldloc.s 6
			IL_00a6: ldloc.s 8
			IL_00a8: stelem.ref

			IL_00a9: ldloc.s 5
			IL_00ab: ldc.i4.1
			IL_00ac: add
			IL_00ad: stloc.s 5

			IL_00af: ldloc.s 5
			IL_00b1: ldloc.1
			IL_00b2: ldlen
			IL_00b3: conv.i4
			IL_00b4: blt.s IL_0052
		// end loop

		IL_00b6: ldarg.1
		IL_00b7: ldloc.2
		IL_00b8: stind.ref
		IL_00b9: ldarg.2
		IL_00ba: ldloc.1
		IL_00bb: stind.ref
		IL_00bc: ret
	} // end of method Type::GetEnumData

	.method private hidebysig static 
		int32 BinarySearch (
			class System.Array 'array',
			object 'value'
		) cil managed 
	{
		// Method begins at RVA 0x58274
		// Code size 59 (0x3b)
		.maxstack 4
		.locals (
			[0] uint64[],
			[1] uint64,
			[2] int32
		)

		IL_0000: ldarg.0
		IL_0001: callvirt instance int32 System.Array::get_Length()
		IL_0006: newarr System.UInt64
		IL_000b: stloc.0
		IL_000c: ldc.i4.0
		IL_000d: stloc.2
		IL_000e: br.s IL_0023
		// loop start (head: IL_0023)
			IL_0010: ldloc.0
			IL_0011: ldloc.2
			IL_0012: ldarg.0
			IL_0013: ldloc.2
			IL_0014: callvirt instance object System.Array::GetValue(int32)
			IL_0019: call uint64 System.Enum::ToUInt64(object)
			IL_001e: stelem.i8
			IL_001f: ldloc.2
			IL_0020: ldc.i4.1
			IL_0021: add
			IL_0022: stloc.2

			IL_0023: ldloc.2
			IL_0024: ldarg.0
			IL_0025: callvirt instance int32 System.Array::get_Length()
			IL_002a: blt.s IL_0010
		// end loop

		IL_002c: ldarg.1
		IL_002d: call uint64 System.Enum::ToUInt64(object)
		IL_0032: stloc.1
		IL_0033: ldloc.0
		IL_0034: ldloc.1
		IL_0035: call int32 System.Array::BinarySearch<uint64>(!!0[], !!0)
		IL_003a: ret
	} // end of method Type::BinarySearch

	.method assembly hidebysig static 
		bool IsIntegerType (
			class System.Type t
		) cil managed 
	{
		// Method begins at RVA 0x582bc
		// Code size 187 (0xbb)
		.maxstack 2

		IL_0000: ldarg.0
		IL_0001: ldtoken System.Int32
		IL_0006: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_000b: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0010: brtrue IL_00b9

		IL_0015: ldarg.0
		IL_0016: ldtoken System.Int16
		IL_001b: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0020: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0025: brtrue IL_00b9

		IL_002a: ldarg.0
		IL_002b: ldtoken System.UInt16
		IL_0030: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0035: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_003a: brtrue.s IL_00b9

		IL_003c: ldarg.0
		IL_003d: ldtoken System.Byte
		IL_0042: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0047: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_004c: brtrue.s IL_00b9

		IL_004e: ldarg.0
		IL_004f: ldtoken System.SByte
		IL_0054: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_0059: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_005e: brtrue.s IL_00b9

		IL_0060: ldarg.0
		IL_0061: ldtoken System.UInt32
		IL_0066: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_006b: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0070: brtrue.s IL_00b9

		IL_0072: ldarg.0
		IL_0073: ldtoken System.Int64
		IL_0078: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_007d: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0082: brtrue.s IL_00b9

		IL_0084: ldarg.0
		IL_0085: ldtoken System.UInt64
		IL_008a: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_008f: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0094: brtrue.s IL_00b9

		IL_0096: ldarg.0
		IL_0097: ldtoken System.Char
		IL_009c: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_00a1: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_00a6: brtrue.s IL_00b9

		IL_00a8: ldarg.0
		IL_00a9: ldtoken System.Boolean
		IL_00ae: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
		IL_00b3: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_00b8: ret

		IL_00b9: ldc.i4.1
		IL_00ba: ret
	} // end of method Type::IsIntegerType

	.method public hidebysig specialname newslot virtual 
		instance bool get_IsSerializable () cil managed 
	{
		// Method begins at RVA 0x58384
		// Code size 87 (0x57)
		.maxstack 2
		.locals (
			[0] class System.Type
		)

		IL_0000: ldarg.0
		IL_0001: callvirt instance valuetype System.Reflection.TypeAttributes System.Type::GetAttributeFlagsImpl()
		IL_0006: ldc.i4 8192
		IL_000b: and
		IL_000c: brfalse.s IL_0010

		IL_000e: ldc.i4.1
		IL_000f: ret

		IL_0010: ldarg.0
		IL_0011: callvirt instance class System.Type System.Type::get_UnderlyingSystemType()
		IL_0016: stloc.0
		IL_0017: ldloc.0
		IL_0018: callvirt instance bool System.Type::IsRuntimeImplemented()
		IL_001d: brfalse.s IL_0055
		// loop start (head: IL_001f)
			IL_001f: ldloc.0
			IL_0020: ldtoken System.Delegate
			IL_0025: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
			IL_002a: call bool System.Type::op_Equality(class System.Type, class System.Type)
			IL_002f: brtrue.s IL_0043

			IL_0031: ldloc.0
			IL_0032: ldtoken System.Enum
			IL_0037: call class System.Type System.Type::GetTypeFromHandle(valuetype System.RuntimeTypeHandle)
			IL_003c: call bool System.Type::op_Equality(class System.Type, class System.Type)
			IL_0041: brfalse.s IL_0045

			IL_0043: ldc.i4.1
			IL_0044: ret

			IL_0045: ldloc.0
			IL_0046: callvirt instance class System.Type System.Type::get_BaseType()
			IL_004b: stloc.0
			IL_004c: ldloc.0
			IL_004d: ldnull
			IL_004e: call bool System.Type::op_Inequality(class System.Type, class System.Type)
			IL_0053: brtrue.s IL_001f
		// end loop

		IL_0055: ldc.i4.0
		IL_0056: ret
	} // end of method Type::get_IsSerializable

	.method public hidebysig specialname newslot virtual 
		instance bool get_ContainsGenericParameters () cil managed 
	{
		// Method begins at RVA 0x583e8
		// Code size 75 (0x4b)
		.maxstack 2
		.locals (
			[0] class System.Type[],
			[1] int32
		)

		IL_0000: ldarg.0
		IL_0001: call instance bool System.Type::get_HasElementType()
		IL_0006: brfalse.s IL_0014

		IL_0008: ldarg.0
		IL_0009: call instance class System.Type System.Type::GetRootElementType()
		IL_000e: callvirt instance bool System.Type::get_ContainsGenericParameters()
		IL_0013: ret

		IL_0014: ldarg.0
		IL_0015: callvirt instance bool System.Type::get_IsGenericParameter()
		IL_001a: brfalse.s IL_001e

		IL_001c: ldc.i4.1
		IL_001d: ret

		IL_001e: ldarg.0
		IL_001f: callvirt instance bool System.Type::get_IsGenericType()
		IL_0024: brtrue.s IL_0028

		IL_0026: ldc.i4.0
		IL_0027: ret

		IL_0028: ldarg.0
		IL_0029: callvirt instance class System.Type[] System.Type::GetGenericArguments()
		IL_002e: stloc.0
		IL_002f: ldc.i4.0
		IL_0030: stloc.1
		IL_0031: br.s IL_0043
		// loop start (head: IL_0043)
			IL_0033: ldloc.0
			IL_0034: ldloc.1
			IL_0035: ldelem.ref
			IL_0036: callvirt instance bool System.Type::get_ContainsGenericParameters()
			IL_003b: brfalse.s IL_003f

			IL_003d: ldc.i4.1
			IL_003e: ret

			IL_003f: ldloc.1
			IL_0040: ldc.i4.1
			IL_0041: add
			IL_0042: stloc.1

			IL_0043: ldloc.1
			IL_0044: ldloc.0
			IL_0045: ldlen
			IL_0046: conv.i4
			IL_0047: blt.s IL_0033
		// end loop

		IL_0049: ldc.i4.0
		IL_004a: ret
	} // end of method Type::get_ContainsGenericParameters

	.method assembly hidebysig 
		instance class System.Type GetRootElementType () cil managed 
	{
		// Method begins at RVA 0x58440
		// Code size 21 (0x15)
		.maxstack 1
		.locals (
			[0] class System.Type
		)

		IL_0000: ldarg.0
		IL_0001: stloc.0
		IL_0002: br.s IL_000b
		// loop start (head: IL_000b)
			IL_0004: ldloc.0
			IL_0005: callvirt instance class System.Type System.Type::GetElementType()
			IL_000a: stloc.0

			IL_000b: ldloc.0
			IL_000c: callvirt instance bool System.Type::get_HasElementType()
			IL_0011: brtrue.s IL_0004
		// end loop

		IL_0013: ldloc.0
		IL_0014: ret
	} // end of method Type::GetRootElementType

	.method public hidebysig specialname 
		instance bool get_IsVisible () cil managed 
	{
		// Method begins at RVA 0x58464
		// Code size 141 (0x8d)
		.maxstack 2
		.locals (
			[0] class System.RuntimeType,
			[1] class System.Type,
			[2] class System.Type[],
			[3] int32,
			[4] class System.Type
		)

		IL_0000: ldarg.0
		IL_0001: isinst System.RuntimeType
		IL_0006: stloc.0
		IL_0007: ldloc.0
		IL_0008: brfalse.s IL_0011

		IL_000a: ldloc.0
		IL_000b: call bool System.RuntimeTypeHandle::IsVisible(class System.RuntimeType)
		IL_0010: ret

		IL_0011: ldarg.0
		IL_0012: callvirt instance bool System.Type::get_IsGenericParameter()
		IL_0017: brfalse.s IL_001b

		IL_0019: ldc.i4.1
		IL_001a: ret

		IL_001b: ldarg.0
		IL_001c: call instance bool System.Type::get_HasElementType()
		IL_0021: brfalse.s IL_002f

		IL_0023: ldarg.0
		IL_0024: callvirt instance class System.Type System.Type::GetElementType()
		IL_0029: callvirt instance bool System.Type::get_IsVisible()
		IL_002e: ret

		IL_002f: ldarg.0
		IL_0030: stloc.1
		IL_0031: br.s IL_0044
		// loop start (head: IL_0044)
			IL_0033: ldloc.1
			IL_0034: callvirt instance bool System.Type::get_IsNestedPublic()
			IL_0039: brtrue.s IL_003d

			IL_003b: ldc.i4.0
			IL_003c: ret

			IL_003d: ldloc.1
			IL_003e: callvirt instance class System.Type System.Reflection.MemberInfo::get_DeclaringType()
			IL_0043: stloc.1

			IL_0044: ldloc.1
			IL_0045: callvirt instance bool System.Type::get_IsNested()
			IL_004a: brtrue.s IL_0033
		// end loop

		IL_004c: ldloc.1
		IL_004d: callvirt instance bool System.Type::get_IsPublic()
		IL_0052: brtrue.s IL_0056

		IL_0054: ldc.i4.0
		IL_0055: ret

		IL_0056: ldarg.0
		IL_0057: callvirt instance bool System.Type::get_IsGenericType()
		IL_005c: brfalse.s IL_008b

		IL_005e: ldarg.0
		IL_005f: callvirt instance bool System.Type::get_IsGenericTypeDefinition()
		IL_0064: brtrue.s IL_008b

		IL_0066: ldarg.0
		IL_0067: callvirt instance class System.Type[] System.Type::GetGenericArguments()
		IL_006c: stloc.2
		IL_006d: ldc.i4.0
		IL_006e: stloc.3
		IL_006f: br.s IL_0085
		// loop start (head: IL_0085)
			IL_0071: ldloc.2
			IL_0072: ldloc.3
			IL_0073: ldelem.ref
			IL_0074: stloc.s 4
			IL_0076: ldloc.s 4
			IL_0078: callvirt instance bool System.Type::get_IsVisible()
			IL_007d: brtrue.s IL_0081

			IL_007f: ldc.i4.0
			IL_0080: ret

			IL_0081: ldloc.3
			IL_0082: ldc.i4.1
			IL_0083: add
			IL_0084: stloc.3

			IL_0085: ldloc.3
			IL_0086: ldloc.2
			IL_0087: ldlen
			IL_0088: conv.i4
			IL_0089: blt.s IL_0071
		// end loop

		IL_008b: ldc.i4.1
		IL_008c: ret
	} // end of method Type::get_IsVisible

	.method public hidebysig newslot virtual 
		instance class System.Type[] FindInterfaces (
			class System.Reflection.TypeFilter 'filter',
			object filterCriteria
		) cil managed 
	{
		.param [2]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 02 00 00
			)
		// Method begins at RVA 0x58500
		// Code size 119 (0x77)
		.maxstack 4
		.locals (
			[0] class System.Type[],
			[1] int32,
			[2] class System.Type[],
			[3] int32,
			[4] int32
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: ldstr "filter"
		IL_0008: newobj instance void System.ArgumentNullException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: callvirt instance class System.Type[] System.Type::GetInterfaces()
		IL_0014: stloc.0
		IL_0015: ldc.i4.0
		IL_0016: stloc.1
		IL_0017: ldc.i4.0
		IL_0018: stloc.3
		IL_0019: br.s IL_0035
		// loop start (head: IL_0035)
			IL_001b: ldarg.1
			IL_001c: ldloc.0
			IL_001d: ldloc.3
			IL_001e: ldelem.ref
			IL_001f: ldarg.2
			IL_0020: callvirt instance bool System.Reflection.TypeFilter::Invoke(class System.Type, object)
			IL_0025: brtrue.s IL_002d

			IL_0027: ldloc.0
			IL_0028: ldloc.3
			IL_0029: ldnull
			IL_002a: stelem.ref
			IL_002b: br.s IL_0031

			IL_002d: ldloc.1
			IL_002e: ldc.i4.1
			IL_002f: add
			IL_0030: stloc.1

			IL_0031: ldloc.3
			IL_0032: ldc.i4.1
			IL_0033: add
			IL_0034: stloc.3

			IL_0035: ldloc.3
			IL_0036: ldloc.0
			IL_0037: ldlen
			IL_0038: conv.i4
			IL_0039: blt.s IL_001b
		// end loop

		IL_003b: ldloc.1
		IL_003c: ldloc.0
		IL_003d: ldlen
		IL_003e: conv.i4
		IL_003f: bne.un.s IL_0043

		IL_0041: ldloc.0
		IL_0042: ret

		IL_0043: ldloc.1
		IL_0044: newarr System.Type
		IL_0049: stloc.2
		IL_004a: ldc.i4.0
		IL_004b: stloc.1
		IL_004c: ldc.i4.0
		IL_004d: stloc.s 4
		IL_004f: br.s IL_006e
		// loop start (head: IL_006e)
			IL_0051: ldloc.0
			IL_0052: ldloc.s 4
			IL_0054: ldelem.ref
			IL_0055: ldnull
			IL_0056: call bool System.Type::op_Inequality(class System.Type, class System.Type)
			IL_005b: brfalse.s IL_0068

			IL_005d: ldloc.2
			IL_005e: ldloc.1
			IL_005f: dup
			IL_0060: ldc.i4.1
			IL_0061: add
			IL_0062: stloc.1
			IL_0063: ldloc.0
			IL_0064: ldloc.s 4
			IL_0066: ldelem.ref
			IL_0067: stelem.ref

			IL_0068: ldloc.s 4
			IL_006a: ldc.i4.1
			IL_006b: add
			IL_006c: stloc.s 4

			IL_006e: ldloc.s 4
			IL_0070: ldloc.0
			IL_0071: ldlen
			IL_0072: conv.i4
			IL_0073: blt.s IL_0051
		// end loop

		IL_0075: ldloc.2
		IL_0076: ret
	} // end of method Type::FindInterfaces

	.method public hidebysig newslot virtual 
		instance class System.Reflection.MemberInfo[] FindMembers (
			valuetype System.Reflection.MemberTypes memberType,
			valuetype System.Reflection.BindingFlags bindingAttr,
			class System.Reflection.MemberFilter 'filter',
			object filterCriteria
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.custom instance void System.Diagnostics.CodeAnalysis.DynamicallyAccessedMembersAttribute::.ctor(valuetype System.Diagnostics.CodeAnalysis.DynamicallyAccessedMemberTypes) = (
			01 00 ff ff ff ff 00 00
		)
		.param [0]
			.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x58584
		// Code size 763 (0x2fb)
		.maxstack 4
		.locals (
			[0] class System.Reflection.MethodInfo[],
			[1] class System.Reflection.ConstructorInfo[],
			[2] class System.Reflection.FieldInfo[],
			[3] class System.Reflection.PropertyInfo[],
			[4] class System.Reflection.EventInfo[],
			[5] class System.Type[],
			[6] int32,
			[7] int32,
			[8] class System.Reflection.MemberInfo[]
		)

		IL_0000: ldnull
		IL_0001: stloc.0
		IL_0002: ldnull
		IL_0003: stloc.1
		IL_0004: ldnull
		IL_0005: stloc.2
		IL_0006: ldnull
		IL_0007: stloc.3
		IL_0008: ldnull
		IL_0009: stloc.s 4
		IL_000b: ldnull
		IL_000c: stloc.s 5
		IL_000e: ldc.i4.0
		IL_000f: stloc.s 7
		IL_0011: ldarg.1
		IL_0012: ldc.i4.8
		IL_0013: and
		IL_0014: brfalse.s IL_0058

		IL_0016: ldarg.0
		IL_0017: ldarg.2
		IL_0018: callvirt instance class System.Reflection.MethodInfo[] System.Type::GetMethods(valuetype System.Reflection.BindingFlags)
		IL_001d: stloc.0
		IL_001e: ldarg.3
		IL_001f: brfalse.s IL_0050

		IL_0021: ldc.i4.0
		IL_0022: stloc.s 6
		IL_0024: br.s IL_0047
		// loop start (head: IL_0047)
			IL_0026: ldarg.3
			IL_0027: ldloc.0
			IL_0028: ldloc.s 6
			IL_002a: ldelem.ref
			IL_002b: ldarg.s filterCriteria
			IL_002d: callvirt instance bool System.Reflection.MemberFilter::Invoke(class System.Reflection.MemberInfo, object)
			IL_0032: brtrue.s IL_003b

			IL_0034: ldloc.0
			IL_0035: ldloc.s 6
			IL_0037: ldnull
			IL_0038: stelem.ref
			IL_0039: br.s IL_0041

			IL_003b: ldloc.s 7
			IL_003d: ldc.i4.1
			IL_003e: add
			IL_003f: stloc.s 7

			IL_0041: ldloc.s 6
			IL_0043: ldc.i4.1
			IL_0044: add
			IL_0045: stloc.s 6

			IL_0047: ldloc.s 6
			IL_0049: ldloc.0
			IL_004a: ldlen
			IL_004b: conv.i4
			IL_004c: blt.s IL_0026
		// end loop

		IL_004e: br.s IL_0058

		IL_0050: ldloc.s 7
		IL_0052: ldloc.0
		IL_0053: ldlen
		IL_0054: conv.i4
		IL_0055: add
		IL_0056: stloc.s 7

		IL_0058: ldarg.1
		IL_0059: ldc.i4.1
		IL_005a: and
		IL_005b: brfalse.s IL_009f

		IL_005d: ldarg.0
		IL_005e: ldarg.2
		IL_005f: callvirt instance class System.Reflection.ConstructorInfo[] System.Type::GetConstructors(valuetype System.Reflection.BindingFlags)
		IL_0064: stloc.1
		IL_0065: ldarg.3
		IL_0066: brfalse.s IL_0097

		IL_0068: ldc.i4.0
		IL_0069: stloc.s 6
		IL_006b: br.s IL_008e
		// loop start (head: IL_008e)
			IL_006d: ldarg.3
			IL_006e: ldloc.1
			IL_006f: ldloc.s 6
			IL_0071: ldelem.ref
			IL_0072: ldarg.s filterCriteria
			IL_0074: callvirt instance bool System.Reflection.MemberFilter::Invoke(class System.Reflection.MemberInfo, object)
			IL_0079: brtrue.s IL_0082

			IL_007b: ldloc.1
			IL_007c: ldloc.s 6
			IL_007e: ldnull
			IL_007f: stelem.ref
			IL_0080: br.s IL_0088

			IL_0082: ldloc.s 7
			IL_0084: ldc.i4.1
			IL_0085: add
			IL_0086: stloc.s 7

			IL_0088: ldloc.s 6
			IL_008a: ldc.i4.1
			IL_008b: add
			IL_008c: stloc.s 6

			IL_008e: ldloc.s 6
			IL_0090: ldloc.1
			IL_0091: ldlen
			IL_0092: conv.i4
			IL_0093: blt.s IL_006d
		// end loop

		IL_0095: br.s IL_009f

		IL_0097: ldloc.s 7
		IL_0099: ldloc.1
		IL_009a: ldlen
		IL_009b: conv.i4
		IL_009c: add
		IL_009d: stloc.s 7

		IL_009f: ldarg.1
		IL_00a0: ldc.i4.4
		IL_00a1: and
		IL_00a2: brfalse.s IL_00e6

		IL_00a4: ldarg.0
		IL_00a5: ldarg.2
		IL_00a6: callvirt instance class System.Reflection.FieldInfo[] System.Type::GetFields(valuetype System.Reflection.BindingFlags)
		IL_00ab: stloc.2
		IL_00ac: ldarg.3
		IL_00ad: brfalse.s IL_00de

		IL_00af: ldc.i4.0
		IL_00b0: stloc.s 6
		IL_00b2: br.s IL_00d5
		// loop start (head: IL_00d5)
			IL_00b4: ldarg.3
			IL_00b5: ldloc.2
			IL_00b6: ldloc.s 6
			IL_00b8: ldelem.ref
			IL_00b9: ldarg.s filterCriteria
			IL_00bb: callvirt instance bool System.Reflection.MemberFilter::Invoke(class System.Reflection.MemberInfo, object)
			IL_00c0: brtrue.s IL_00c9

			IL_00c2: ldloc.2
			IL_00c3: ldloc.s 6
			IL_00c5: ldnull
			IL_00c6: stelem.ref
			IL_00c7: br.s IL_00cf

			IL_00c9: ldloc.s 7
			IL_00cb: ldc.i4.1
			IL_00cc: add
			IL_00cd: stloc.s 7

			IL_00cf: ldloc.s 6
			IL_00d1: ldc.i4.1
			IL_00d2: add
			IL_00d3: stloc.s 6

			IL_00d5: ldloc.s 6
			IL_00d7: ldloc.2
			IL_00d8: ldlen
			IL_00d9: conv.i4
			IL_00da: blt.s IL_00b4
		// end loop

		IL_00dc: br.s IL_00e6

		IL_00de: ldloc.s 7
		IL_00e0: ldloc.2
		IL_00e1: ldlen
		IL_00e2: conv.i4
		IL_00e3: add
		IL_00e4: stloc.s 7

		IL_00e6: ldarg.1
		IL_00e7: ldc.i4.s 16
		IL_00e9: and
		IL_00ea: brfalse.s IL_012e

		IL_00ec: ldarg.0
		IL_00ed: ldarg.2
		IL_00ee: callvirt instance class System.Reflection.PropertyInfo[] System.Type::GetProperties(valuetype System.Reflection.BindingFlags)
		IL_00f3: stloc.3
		IL_00f4: ldarg.3
		IL_00f5: brfalse.s IL_0126

		IL_00f7: ldc.i4.0
		IL_00f8: stloc.s 6
		IL_00fa: br.s IL_011d
		// loop start (head: IL_011d)
			IL_00fc: ldarg.3
			IL_00fd: ldloc.3
			IL_00fe: ldloc.s 6
			IL_0100: ldelem.ref
			IL_0101: ldarg.s filterCriteria
			IL_0103: callvirt instance bool System.Reflection.MemberFilter::Invoke(class System.Reflection.MemberInfo, object)
			IL_0108: brtrue.s IL_0111

			IL_010a: ldloc.3
			IL_010b: ldloc.s 6
			IL_010d: ldnull
			IL_010e: stelem.ref
			IL_010f: br.s IL_0117

			IL_0111: ldloc.s 7
			IL_0113: ldc.i4.1
			IL_0114: add
			IL_0115: stloc.s 7

			IL_0117: ldloc.s 6
			IL_0119: ldc.i4.1
			IL_011a: add
			IL_011b: stloc.s 6

			IL_011d: ldloc.s 6
			IL_011f: ldloc.3
			IL_0120: ldlen
			IL_0121: conv.i4
			IL_0122: blt.s IL_00fc
		// end loop

		IL_0124: br.s IL_012e

		IL_0126: ldloc.s 7
		IL_0128: ldloc.3
		IL_0129: ldlen
		IL_012a: conv.i4
		IL_012b: add
		IL_012c: stloc.s 7

		IL_012e: ldarg.1
		IL_012f: ldc.i4.2
		IL_0130: and
		IL_0131: brfalse.s IL_017a

		IL_0133: ldarg.0
		IL_0134: ldarg.2
		IL_0135: callvirt instance class System.Reflection.EventInfo[] System.Type::GetEvents(valuetype System.Reflection.BindingFlags)
		IL_013a: stloc.s 4
		IL_013c: ldarg.3
		IL_013d: brfalse.s IL_0171

		IL_013f: ldc.i4.0
		IL_0140: stloc.s 6
		IL_0142: br.s IL_0167
		// loop start (head: IL_0167)
			IL_0144: ldarg.3
			IL_0145: ldloc.s 4
			IL_0147: ldloc.s 6
			IL_0149: ldelem.ref
			IL_014a: ldarg.s filterCriteria
			IL_014c: callvirt instance bool System.Reflection.MemberFilter::Invoke(class System.Reflection.MemberInfo, object)
			IL_0151: brtrue.s IL_015b

			IL_0153: ldloc.s 4
			IL_0155: ldloc.s 6
			IL_0157: ldnull
			IL_0158: stelem.ref
			IL_0159: br.s IL_0161

			IL_015b: ldloc.s 7
			IL_015d: ldc.i4.1
			IL_015e: add
			IL_015f: stloc.s 7

			IL_0161: ldloc.s 6
			IL_0163: ldc.i4.1
			IL_0164: add
			IL_0165: stloc.s 6

			IL_0167: ldloc.s 6
			IL_0169: ldloc.s 4
			IL_016b: ldlen
			IL_016c: conv.i4
			IL_016d: blt.s IL_0144
		// end loop

		IL_016f: br.s IL_017a

		IL_0171: ldloc.s 7
		IL_0173: ldloc.s 4
		IL_0175: ldlen
		IL_0176: conv.i4
		IL_0177: add
		IL_0178: stloc.s 7

		IL_017a: ldarg.1
		IL_017b: ldc.i4 128
		IL_0180: and
		IL_0181: brfalse.s IL_01ca

		IL_0183: ldarg.0
		IL_0184: ldarg.2
		IL_0185: callvirt instance class System.Type[] System.Type::GetNestedTypes(valuetype System.Reflection.BindingFlags)
		IL_018a: stloc.s 5
		IL_018c: ldarg.3
		IL_018d: brfalse.s IL_01c1

		IL_018f: ldc.i4.0
		IL_0190: stloc.s 6
		IL_0192: br.s IL_01b7
		// loop start (head: IL_01b7)
			IL_0194: ldarg.3
			IL_0195: ldloc.s 5
			IL_0197: ldloc.s 6
			IL_0199: ldelem.ref
			IL_019a: ldarg.s filterCriteria
			IL_019c: callvirt instance bool System.Reflection.MemberFilter::Invoke(class System.Reflection.MemberInfo, object)
			IL_01a1: brtrue.s IL_01ab

			IL_01a3: ldloc.s 5
			IL_01a5: ldloc.s 6
			IL_01a7: ldnull
			IL_01a8: stelem.ref
			IL_01a9: br.s IL_01b1

			IL_01ab: ldloc.s 7
			IL_01ad: ldc.i4.1
			IL_01ae: add
			IL_01af: stloc.s 7

			IL_01b1: ldloc.s 6
			IL_01b3: ldc.i4.1
			IL_01b4: add
			IL_01b5: stloc.s 6

			IL_01b7: ldloc.s 6
			IL_01b9: ldloc.s 5
			IL_01bb: ldlen
			IL_01bc: conv.i4
			IL_01bd: blt.s IL_0194
		// end loop

		IL_01bf: br.s IL_01ca

		IL_01c1: ldloc.s 7
		IL_01c3: ldloc.s 5
		IL_01c5: ldlen
		IL_01c6: conv.i4
		IL_01c7: add
		IL_01c8: stloc.s 7

		IL_01ca: ldloc.s 7
		IL_01cc: newarr System.Reflection.MemberInfo
		IL_01d1: stloc.s 8
		IL_01d3: ldc.i4.0
		IL_01d4: stloc.s 7
		IL_01d6: ldloc.0
		IL_01d7: brfalse.s IL_0205

		IL_01d9: ldc.i4.0
		IL_01da: stloc.s 6
		IL_01dc: br.s IL_01fe
		// loop start (head: IL_01fe)
			IL_01de: ldloc.0
			IL_01df: ldloc.s 6
			IL_01e1: ldelem.ref
			IL_01e2: ldnull
			IL_01e3: call bool System.Reflection.MethodInfo::op_Inequality(class System.Reflection.MethodInfo, class System.Reflection.MethodInfo)
			IL_01e8: brfalse.s IL_01f8

			IL_01ea: ldloc.s 8
			IL_01ec: ldloc.s 7
			IL_01ee: dup
			IL_01ef: ldc.i4.1
			IL_01f0: add
			IL_01f1: stloc.s 7
			IL_01f3: ldloc.0
			IL_01f4: ldloc.s 6
			IL_01f6: ldelem.ref
			IL_01f7: stelem.ref

			IL_01f8: ldloc.s 6
			IL_01fa: ldc.i4.1
			IL_01fb: add
			IL_01fc: stloc.s 6

			IL_01fe: ldloc.s 6
			IL_0200: ldloc.0
			IL_0201: ldlen
			IL_0202: conv.i4
			IL_0203: blt.s IL_01de
		// end loop

		IL_0205: ldloc.1
		IL_0206: brfalse.s IL_0234

		IL_0208: ldc.i4.0
		IL_0209: stloc.s 6
		IL_020b: br.s IL_022d
		// loop start (head: IL_022d)
			IL_020d: ldloc.1
			IL_020e: ldloc.s 6
			IL_0210: ldelem.ref
			IL_0211: ldnull
			IL_0212: call bool System.Reflection.ConstructorInfo::op_Inequality(class System.Reflection.ConstructorInfo, class System.Reflection.ConstructorInfo)
			IL_0217: brfalse.s IL_0227

			IL_0219: ldloc.s 8
			IL_021b: ldloc.s 7
			IL_021d: dup
			IL_021e: ldc.i4.1
			IL_021f: add
			IL_0220: stloc.s 7
			IL_0222: ldloc.1
			IL_0223: ldloc.s 6
			IL_0225: ldelem.ref
			IL_0226: stelem.ref

			IL_0227: ldloc.s 6
			IL_0229: ldc.i4.1
			IL_022a: add
			IL_022b: stloc.s 6

			IL_022d: ldloc.s 6
			IL_022f: ldloc.1
			IL_0230: ldlen
			IL_0231: conv.i4
			IL_0232: blt.s IL_020d
		// end loop

		IL_0234: ldloc.2
		IL_0235: brfalse.s IL_0263

		IL_0237: ldc.i4.0
		IL_0238: stloc.s 6
		IL_023a: br.s IL_025c
		// loop start (head: IL_025c)
			IL_023c: ldloc.2
			IL_023d: ldloc.s 6
			IL_023f: ldelem.ref
			IL_0240: ldnull
			IL_0241: call bool System.Reflection.FieldInfo::op_Inequality(class System.Reflection.FieldInfo, class System.Reflection.FieldInfo)
			IL_0246: brfalse.s IL_0256

			IL_0248: ldloc.s 8
			IL_024a: ldloc.s 7
			IL_024c: dup
			IL_024d: ldc.i4.1
			IL_024e: add
			IL_024f: stloc.s 7
			IL_0251: ldloc.2
			IL_0252: ldloc.s 6
			IL_0254: ldelem.ref
			IL_0255: stelem.ref

			IL_0256: ldloc.s 6
			IL_0258: ldc.i4.1
			IL_0259: add
			IL_025a: stloc.s 6

			IL_025c: ldloc.s 6
			IL_025e: ldloc.2
			IL_025f: ldlen
			IL_0260: conv.i4
			IL_0261: blt.s IL_023c
		// end loop

		IL_0263: ldloc.3
		IL_0264: brfalse.s IL_0292

		IL_0266: ldc.i4.0
		IL_0267: stloc.s 6
		IL_0269: br.s IL_028b
		// loop start (head: IL_028b)
			IL_026b: ldloc.3
			IL_026c: ldloc.s 6
			IL_026e: ldelem.ref
			IL_026f: ldnull
			IL_0270: call bool System.Reflection.PropertyInfo::op_Inequality(class System.Reflection.PropertyInfo, class System.Reflection.PropertyInfo)
			IL_0275: brfalse.s IL_0285

			IL_0277: ldloc.s 8
			IL_0279: ldloc.s 7
			IL_027b: dup
			IL_027c: ldc.i4.1
			IL_027d: add
			IL_027e: stloc.s 7
			IL_0280: ldloc.3
			IL_0281: ldloc.s 6
			IL_0283: ldelem.ref
			IL_0284: stelem.ref

			IL_0285: ldloc.s 6
			IL_0287: ldc.i4.1
			IL_0288: add
			IL_0289: stloc.s 6

			IL_028b: ldloc.s 6
			IL_028d: ldloc.3
			IL_028e: ldlen
			IL_028f: conv.i4
			IL_0290: blt.s IL_026b
		// end loop

		IL_0292: ldloc.s 4
		IL_0294: brfalse.s IL_02c5

		IL_0296: ldc.i4.0
		IL_0297: stloc.s 6
		IL_0299: br.s IL_02bd
		// loop start (head: IL_02bd)
			IL_029b: ldloc.s 4
			IL_029d: ldloc.s 6
			IL_029f: ldelem.ref
			IL_02a0: ldnull
			IL_02a1: call bool System.Reflection.EventInfo::op_Inequality(class System.Reflection.EventInfo, class System.Reflection.EventInfo)
			IL_02a6: brfalse.s IL_02b7

			IL_02a8: ldloc.s 8
			IL_02aa: ldloc.s 7
			IL_02ac: dup
			IL_02ad: ldc.i4.1
			IL_02ae: add
			IL_02af: stloc.s 7
			IL_02b1: ldloc.s 4
			IL_02b3: ldloc.s 6
			IL_02b5: ldelem.ref
			IL_02b6: stelem.ref

			IL_02b7: ldloc.s 6
			IL_02b9: ldc.i4.1
			IL_02ba: add
			IL_02bb: stloc.s 6

			IL_02bd: ldloc.s 6
			IL_02bf: ldloc.s 4
			IL_02c1: ldlen
			IL_02c2: conv.i4
			IL_02c3: blt.s IL_029b
		// end loop

		IL_02c5: ldloc.s 5
		IL_02c7: brfalse.s IL_02f8

		IL_02c9: ldc.i4.0
		IL_02ca: stloc.s 6
		IL_02cc: br.s IL_02f0
		// loop start (head: IL_02f0)
			IL_02ce: ldloc.s 5
			IL_02d0: ldloc.s 6
			IL_02d2: ldelem.ref
			IL_02d3: ldnull
			IL_02d4: call bool System.Type::op_Inequality(class System.Type, class System.Type)
			IL_02d9: brfalse.s IL_02ea

			IL_02db: ldloc.s 8
			IL_02dd: ldloc.s 7
			IL_02df: dup
			IL_02e0: ldc.i4.1
			IL_02e1: add
			IL_02e2: stloc.s 7
			IL_02e4: ldloc.s 5
			IL_02e6: ldloc.s 6
			IL_02e8: ldelem.ref
			IL_02e9: stelem.ref

			IL_02ea: ldloc.s 6
			IL_02ec: ldc.i4.1
			IL_02ed: add
			IL_02ee: stloc.s 6

			IL_02f0: ldloc.s 6
			IL_02f2: ldloc.s 5
			IL_02f4: ldlen
			IL_02f5: conv.i4
			IL_02f6: blt.s IL_02ce
		// end loop

		IL_02f8: ldloc.s 8
		IL_02fa: ret
	} // end of method Type::FindMembers

	.method public hidebysig newslot virtual 
		instance bool IsSubclassOf (
			class System.Type c
		) cil managed 
	{
		// Method begins at RVA 0x5888c
		// Code size 42 (0x2a)
		.maxstack 2
		.locals (
			[0] class System.Type
		)

		IL_0000: ldarg.0
		IL_0001: stloc.0
		IL_0002: ldloc.0
		IL_0003: ldarg.1
		IL_0004: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0009: brfalse.s IL_001f

		IL_000b: ldc.i4.0
		IL_000c: ret
		// loop start (head: IL_001f)
			IL_000d: ldloc.0
			IL_000e: ldarg.1
			IL_000f: call bool System.Type::op_Equality(class System.Type, class System.Type)
			IL_0014: brfalse.s IL_0018

			IL_0016: ldc.i4.1
			IL_0017: ret

			IL_0018: ldloc.0
			IL_0019: callvirt instance class System.Type System.Type::get_BaseType()
			IL_001e: stloc.0

			IL_001f: ldloc.0
			IL_0020: ldnull
			IL_0021: call bool System.Type::op_Inequality(class System.Type, class System.Type)
			IL_0026: brtrue.s IL_000d
		// end loop

		IL_0028: ldc.i4.0
		IL_0029: ret
	} // end of method Type::IsSubclassOf

	.method public hidebysig newslot virtual 
		instance bool IsAssignableFrom (
			class System.Type c
		) cil managed 
	{
		.custom instance void System.Runtime.CompilerServices.IntrinsicAttribute::.ctor() = (
			01 00 00 00
		)
		.custom instance void System.Runtime.CompilerServices.NullableContextAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.param [1]
			.custom instance void System.Diagnostics.CodeAnalysis.NotNullWhenAttribute::.ctor(bool) = (
				01 00 01 00 00
			)
		// Method begins at RVA 0x588c4
		// Code size 121 (0x79)
		.maxstack 2
		.locals (
			[0] class System.Type,
			[1] class System.Type[],
			[2] int32
		)

		IL_0000: ldarg.1
		IL_0001: ldnull
		IL_0002: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0007: brfalse.s IL_000b

		IL_0009: ldc.i4.0
		IL_000a: ret

		IL_000b: ldarg.0
		IL_000c: ldarg.1
		IL_000d: call bool System.Type::op_Equality(class System.Type, class System.Type)
		IL_0012: brfalse.s IL_0016

		IL_0014: ldc.i4.1
		IL_0015: ret

		IL_0016: ldarg.0
		IL_0017: callvirt instance class System.Type System.Type::get_UnderlyingSystemType()
		IL_001c: stloc.0
		IL_001d: ldloc.0
		IL_001e: brfalse.s IL_0030

		IL_0020: ldloc.0
		IL_0021: call instance bool System.Type::IsRuntimeImplemented()
		IL_0026: brfalse.s IL_0030

		IL_0028: ldloc.0
		IL_0029: ldarg.1
		IL_002a: callvirt instance bool System.Type::IsAssignableFrom(class System.Type)
		IL_002f: ret

		IL_0030: ldarg.1
		IL_0031: ldarg.0
		IL_0032: callvirt instance bool System.Type::IsSubclassOf(class System.Type)
		IL_0037: brfalse.s IL_003b

		IL_0039: ldc.i4.1
		IL_003a: ret

		IL_003b: ldarg.0
		IL_003c: call instance bool System.Type::get_IsInterface()
		IL_0041: brfalse.s IL_004b

		IL_0043: ldarg.1
		IL_0044: ldarg.0
		IL_0045: callvirt instance bool System.Type::ImplementInterface(class System.Type)
		IL_004a: ret

		IL_004b: ldarg.0
		IL_004c: callvirt instance bool System.Type::get_IsGenericParameter()
		IL_0051: brfalse.s IL_0077

		IL_0053: ldarg.0
		IL_0054: callvirt instance class System.Type[] System.Type::GetGenericParameterConstraints()
		IL_0059: stloc.1
		IL_005a: ldc.i4.0
		IL_005b: stloc.2
		IL_005c: br.s IL_006f
		// loop start (head: IL_006f)
			IL_005e: ldloc.1
			IL_005f: ldloc.2
			IL_0060: ldelem.ref
			IL_0061: ldarg.1
			IL_0062: callvirt instance bool System.Type::IsAssignableFrom(class System.Type)
			IL_0067: brtrue.s IL_006b

			IL_0069: ldc.i4.0
			IL_006a: ret

			IL_006b: ldloc.2
			IL_006c: ldc.i4.1
			IL_006d: add
			IL_006e: stloc.2

			IL_006f: ldloc.2
			IL_0070: ldloc.1
			IL_0071: ldlen
			IL_0072: conv.i4
			IL_0073: blt.s IL_005e
		// end loop

		IL_0075: ldc.i4.1
		IL_0076: ret

		IL_0077: ldc.i4.0
		IL_0078: ret
	} // end of method Type::IsAssignableFrom

	.method assembly hidebysig 
		instance bool ImplementInterface (
			class System.Type ifaceType
		) cil managed 
	{
		// Method begins at RVA 0x5894c
		// Code size 81 (0x51)
		.maxstack 2
		.locals (
			[0] class System.Type,
			[1] class System.Type[],
			[2] int32
		)

		IL_0000: ldarg.0
		IL_0001: stloc.0
		IL_0002: br.s IL_0046
		// loop start (head: IL_0046)
			IL_0004: ldloc.0
			IL_0005: callvirt instance class System.Type[] System.Type::GetInterfaces()
			IL_000a: stloc.1
			IL_000b: ldloc.1
			IL_000c: brfalse.s IL_003f

			IL_000e: ldc.i4.0
			IL_000f: stloc.2
			IL_0010: br.s IL_0039
			// loop start (head: IL_0039)
				IL_0012: ldloc.1
				IL_0013: ldloc.2
				IL_0014: ldelem.ref
				IL_0015: ldarg.1
				IL_0016: call bool System.Type::op_Equality(class System.Type, class System.Type)
				IL_001b: brtrue.s IL_0033

				IL_001d: ldloc.1
				IL_001e: ldloc.2
				IL_001f: ldelem.ref
				IL_0020: ldnull
				IL_0021: call bool System.Type::op_Inequality(class System.Type, class System.Type)
				IL_0026: brfalse.s IL_0035

				IL_0028: ldloc.1
				IL_0029: ldloc.2
				IL_002a: ldelem.ref
				IL_002b: ldarg.1
				IL_002c: callvirt instance bool System.Type::ImplementInterface(class System.Type)
				IL_0031: brfalse.s IL_0035

				IL_0033: ldc.i4.1
				IL_0034: ret

				IL_0035: ldloc.2
				IL_0036: ldc.i4.1
				IL_0037: add
				IL_0038: stloc.2

				IL_0039: ldloc.2
				IL_003a: ldloc.1
				IL_003b: ldlen
				IL_003c: conv.i4
				IL_003d: blt.s IL_0012
			// end loop

			IL_003f: ldloc.0
			IL_0040: callvirt instance class System.Type System.Type::get_BaseType()
			IL_0045: stloc.0

			IL_0046: ldloc.0
			IL_0047: ldnull
			IL_0048: call bool System.Type::op_Inequality(class System.Type, class System.Type)
			IL_004d: brtrue.s IL_0004
		// end loop

		IL_004f: ldc.i4.0
		IL_0050: ret
	} // end of method Type::ImplementInterface

	.method private hidebysig static 
		bool FilterAttributeImpl (
			class System.Reflection.MemberInfo m,
			object filterCriteria
		) cil managed 
	{
		// Method begins at RVA 0x589ac
		// Code size 351 (0x15f)
		.maxstack 3
		.locals (
			[0] valuetype System.Reflection.MemberTypes,
			[1] valuetype System.Reflection.MethodAttributes,
			[2] valuetype System.Reflection.MethodAttributes,
			[3] int32,
			[4] valuetype System.Reflection.FieldAttributes,
			[5] valuetype System.Reflection.FieldAttributes,
			[6] int32
		)

		IL_0000: ldarg.1
		IL_0001: brtrue.s IL_000e

		IL_0003: call string System.SR::get_InvalidFilterCriteriaException_CritInt()
		IL_0008: newobj instance void System.Reflection.InvalidFilterCriteriaException::.ctor(string)
		IL_000d: throw

		IL_000e: ldarg.0
		IL_000f: callvirt instance valuetype System.Reflection.MemberTypes System.Reflection.MemberInfo::get_MemberType()
		IL_0014: stloc.0
		IL_0015: ldloc.0
		IL_0016: ldc.i4.1
		IL_0017: beq.s IL_0027

		IL_0019: ldloc.0
		IL_001a: ldc.i4.4
		IL_001b: beq IL_00c5

		IL_0020: ldloc.0
		IL_0021: ldc.i4.8
		IL_0022: bne.un IL_015d

		IL_0027: nop
		.try
		{
			IL_0028: ldarg.1
			IL_0029: unbox.any System.Int32
			IL_002e: stloc.3
			IL_002f: ldloc.3
			IL_0030: stloc.1
			IL_0031: leave.s IL_003f
		} // end .try
		catch System.Object
		{
			IL_0033: pop
			IL_0034: call string System.SR::get_InvalidFilterCriteriaException_CritInt()
			IL_0039: newobj instance void System.Reflection.InvalidFilterCriteriaException::.ctor(string)
			IL_003e: throw
		} // end handler

		IL_003f: ldarg.0
		IL_0040: callvirt instance valuetype System.Reflection.MemberTypes System.Reflection.MemberInfo::get_MemberType()
		IL_0045: ldc.i4.8
		IL_0046: bne.un.s IL_0056

		IL_0048: ldarg.0
		IL_0049: castclass System.Reflection.MethodInfo
		IL_004e: callvirt instance valuetype System.Reflection.MethodAttributes System.Reflection.MethodBase::get_Attributes()
		IL_0053: stloc.2
		IL_0054: br.s IL_0062

		IL_0056: ldarg.0
		IL_0057: castclass System.Reflection.ConstructorInfo
		IL_005c: callvirt instance valuetype System.Reflection.MethodAttributes System.Reflection.MethodBase::get_Attributes()
		IL_0061: stloc.2

		IL_0062: ldloc.1
		IL_0063: ldc.i4.7
		IL_0064: and
		IL_0065: brfalse.s IL_0071

		IL_0067: ldloc.2
		IL_0068: ldc.i4.7
		IL_0069: and
		IL_006a: ldloc.1
		IL_006b: ldc.i4.7
		IL_006c: and
		IL_006d: beq.s IL_0071

		IL_006f: ldc.i4.0
		IL_0070: ret

		IL_0071: ldloc.1
		IL_0072: ldc.i4.s 16
		IL_0074: and
		IL_0075: brfalse.s IL_007f

		IL_0077: ldloc.2
		IL_0078: ldc.i4.s 16
		IL_007a: and
		IL_007b: brtrue.s IL_007f

		IL_007d: ldc.i4.0
		IL_007e: ret

		IL_007f: ldloc.1
		IL_0080: ldc.i4.s 32
		IL_0082: and
		IL_0083: brfalse.s IL_008d

		IL_0085: ldloc.2
		IL_0086: ldc.i4.s 32
		IL_0088: and
		IL_0089: brtrue.s IL_008d

		IL_008b: ldc.i4.0
		IL_008c: ret

		IL_008d: ldloc.1
		IL_008e: ldc.i4.s 64
		IL_0090: and
		IL_0091: brfalse.s IL_009b

		IL_0093: ldloc.2
		IL_0094: ldc.i4.s 64
		IL_0096: and
		IL_0097: brtrue.s IL_009b

		IL_0099: ldc.i4.0
		IL_009a: ret

		IL_009b: ldloc.1
		IL_009c: ldc.i4 1024
		IL_00a1: and
		IL_00a2: brfalse.s IL_00af

		IL_00a4: ldloc.2
		IL_00a5: ldc.i4 1024
		IL_00aa: and
		IL_00ab: brtrue.s IL_00af

		IL_00ad: ldc.i4.0
		IL_00ae: ret

		IL_00af: ldloc.1
		IL_00b0: ldc.i4 2048
		IL_00b5: and
		IL_00b6: brfalse.s IL_00c3

		IL_00b8: ldloc.2
		IL_00b9: ldc.i4 2048
		IL_00be: and
		IL_00bf: brtrue.s IL_00c3

		IL_00c1: ldc.i4.0
		IL_00c2: ret

		IL_00c3: ldc.i4.1
		IL_00c4: ret

		IL_00c5: nop
		.try
		{
			IL_00c6: ldarg.1
			IL_00c7: unbox.any System.Int32
			IL_00cc: stloc.s 6
			IL_00ce: ldloc.s 6
			IL_00d0: stloc.s 4
			IL_00d2: leave.s IL_00e0
		} // end .try
		catch System.Object
		{
			IL_00d4: pop
			IL_00d5: call string System.SR::get_InvalidFilterCriteriaException_CritInt()
			IL_00da: newobj instance void System.Reflection.InvalidFilterCriteriaException::.ctor(string)
			IL_00df: throw
		} // end handler

		IL_00e0: ldarg.0
		IL_00e1: castclass System.Reflection.FieldInfo
		IL_00e6: callvirt instance valuetype System.Reflection.FieldAttributes System.Reflection.FieldInfo::get_Attributes()
		IL_00eb: stloc.s 5
		IL_00ed: ldloc.s 4
		IL_00ef: ldc.i4.7
		IL_00f0: and
		IL_00f1: brfalse.s IL_00ff

		IL_00f3: ldloc.s 5
		IL_00f5: ldc.i4.7
		IL_00f6: and
		IL_00f7: ldloc.s 4
		IL_00f9: ldc.i4.7
		IL_00fa: and
		IL_00fb: beq.s IL_00ff

		IL_00fd: ldc.i4.0
		IL_00fe: ret

		IL_00ff: ldloc.s 4
		IL_0101: ldc.i4.s 16
		IL_0103: and
		IL_0104: brfalse.s IL_010f

		IL_0106: ldloc.s 5
		IL_0108: ldc.i4.s 16
		IL_010a: and
		IL_010b: brtrue.s IL_010f

		IL_010d: ldc.i4.0
		IL_010e: ret

		IL_010f: ldloc.s 4
		IL_0111: ldc.i4.s 32
		IL_0113: and
		IL_0114: brfalse.s IL_011f

		IL_0116: ldloc.s 5
		IL_0118: ldc.i4.s 32
		IL_011a: and
		IL_011b: brtrue.s IL_011f

		IL_011d: ldc.i4.0
		IL_011e: ret

		IL_011f: ldloc.s 4
		IL_0121: ldc.i4.s 64
		IL_0123: and
		IL_0124: brfalse.s IL_012f

		IL_0126: ldloc.s 5
		IL_0128: ldc.i4.s 64
		IL_012a: and
		IL_012b: brtrue.s IL_012f

		IL_012d: ldc.i4.0
		IL_012e: ret

		IL_012f: ldloc.s 4
		IL_0131: ldc.i4 128
		IL_0136: and
		IL_0137: brfalse.s IL_0145

		IL_0139: ldloc.s 5
		IL_013b: ldc.i4 128
		IL_0140: and
		IL_0141: brtrue.s IL_0145

		IL_0143: ldc.i4.0
		IL_0144: ret

		IL_0145: ldloc.s 4
		IL_0147: ldc.i4 8192
		IL_014c: and
		IL_014d: brfalse.s IL_015b

		IL_014f: ldloc.s 5
		IL_0151: ldc.i4 8192
		IL_0156: and
		IL_0157: brtrue.s IL_015b

		IL_0159: ldc.i4.0
		IL_015a: ret

		IL_015b: ldc.i4.1
		IL_015c: ret

		IL_015d: ldc.i4.0
		IL_015e: ret
	} // end of method Type::FilterAttributeImpl

	.method private hidebysig static 
		bool FilterNameImpl (
			class System.Reflection.MemberInfo m,
			object filterCriteria,
			valuetype System.StringComparison comparison
		) cil managed 
	{
		// Method begins at RVA 0x58b34
		// Code size 143 (0x8f)
		.maxstack 4
		.locals (
			[0] string,
			[1] valuetype System.ReadOnlySpan`1<char>,
			[2] valuetype System.ReadOnlySpan`1<char>
		)

		IL_0000: ldarg.1
		IL_0001: isinst System.String
		IL_0006: stloc.1
		IL_0007: ldloc.0
		IL_0008: brtrue.s IL_0015

		IL_000a: call string System.SR::get_InvalidFilterCriteriaException_CritString()
		IL_000f: newobj instance void System.Reflection.InvalidFilterCriteriaException::.ctor(string)
		IL_0014: throw

		IL_0015: ldloc.0
		IL_0016: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::AsSpan(string)
		IL_001b: call valuetype System.ReadOnlySpan`1<char> System.MemoryExtensions::Trim(valuetype System.ReadOnlySpan`1<char>)
		IL_0020: stloc.1
		IL_0021: ldarg.0
		IL_0022: callvirt instance string System.Reflection.MemberInfo::get_Name()
		IL_0027: call valuetype System.ReadOnlySpan`1<char> System.String::op_Implicit(string)
		IL_002c: stloc.2
		IL_002d: ldarg.0
		IL_002e: callvirt instance valuetype System.Reflection.MemberTypes System.Reflection.MemberInfo::get_MemberType()
		IL_0033: ldc.i4 128
		IL_0038: bne.un.s IL_004c

		IL_003a: ldloca.s 2
		IL_003c: ldloc.2
		IL_003d: ldc.i4.s 43
		IL_003f: call int32 System.MemoryExtensions::LastIndexOf<char>(valuetype System.ReadOnlySpan`1<!!0>, !!0)
		IL_0044: ldc.i4.1
		IL_0045: add
		IL_0046: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::Slice(int32)
		IL_004b: stloc.2

		IL_004c: ldloca.s 1
		IL_004e: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0053: ldc.i4.0
		IL_0054: ble.s IL_0086

		IL_0056: ldloca.s 1
		IL_0058: ldloca.s 1
		IL_005a: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_005f: ldc.i4.1
		IL_0060: sub
		IL_0061: call instance !0& modreq(System.Runtime.InteropServices.InAttribute) valuetype System.ReadOnlySpan`1<char>::get_Item(int32)
		IL_0066: ldind.u2
		IL_0067: ldc.i4.s 42
		IL_0069: bne.un.s IL_0086

		IL_006b: ldloca.s 1
		IL_006d: ldc.i4.0
		IL_006e: ldloca.s 1
		IL_0070: call instance int32 valuetype System.ReadOnlySpan`1<char>::get_Length()
		IL_0075: ldc.i4.1
		IL_0076: sub
		IL_0077: call instance valuetype System.ReadOnlySpan`1<!0> valuetype System.ReadOnlySpan`1<char>::Slice(int32, int32)
		IL_007c: stloc.1
		IL_007d: ldloc.2
		IL_007e: ldloc.1
		IL_007f: ldarg.2
		IL_0080: call bool System.MemoryExtensions::StartsWith(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, valuetype System.StringComparison)
		IL_0085: ret

		IL_0086: ldloc.2
		IL_0087: ldloc.1
		IL_0088: ldarg.2
		IL_0089: call bool System.MemoryExtensions::Equals(valuetype System.ReadOnlySpan`1<char>, valuetype System.ReadOnlySpan`1<char>, valuetype System.StringComparison)
		IL_008e: ret
	} // end of method Type::FilterNameImpl

	.method private hidebysig specialname rtspecialname static 
		void .cctor () cil managed 
	{
		// Method begins at RVA 0x58bd0
		// Code size 87 (0x57)
		.maxstack 2

		IL_0000: ldc.i4.s 46
		IL_0002: stsfld char System.Type::Delimiter
		IL_0007: call !!0[] System.Array::Empty<class System.Type>()
		IL_000c: stsfld class System.Type[] System.Type::EmptyTypes
		IL_0011: ldsfld class System.Reflection.Missing System.Reflection.Missing::Value
		IL_0016: stsfld object System.Type::Missing
		IL_001b: ldnull
		IL_001c: ldftn bool System.Type::FilterAttributeImpl(class System.Reflection.MemberInfo, object)
		IL_0022: newobj instance void System.Reflection.MemberFilter::.ctor(object, native int)
		IL_0027: stsfld class System.Reflection.MemberFilter System.Type::FilterAttribute
		IL_002c: ldsfld class System.Type/'<>c' System.Type/'<>c'::'<>9'
		IL_0031: ldftn instance bool System.Type/'<>c'::'<.cctor>b__273_0'(class System.Reflection.MemberInfo, object)
		IL_0037: newobj instance void System.Reflection.MemberFilter::.ctor(object, native int)
		IL_003c: stsfld class System.Reflection.MemberFilter System.Type::FilterName
		IL_0041: ldsfld class System.Type/'<>c' System.Type/'<>c'::'<>9'
		IL_0046: ldftn instance bool System.Type/'<>c'::'<.cctor>b__273_1'(class System.Reflection.MemberInfo, object)
		IL_004c: newobj instance void System.Reflection.MemberFilter::.ctor(object, native int)
		IL_0051: stsfld class System.Reflection.MemberFilter System.Type::FilterNameIgnoreCase
		IL_0056: ret
	} // end of method Type::.cctor

	// Properties
	.property instance bool IsInterface()
	{
		.get instance bool System.Type::get_IsInterface()
	}
	.property instance valuetype System.Reflection.MemberTypes MemberType()
	{
		.get instance valuetype System.Reflection.MemberTypes System.Type::get_MemberType()
	}
	.property instance string Namespace()
	{
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.get instance string System.Type::get_Namespace()
	}
	.property instance string AssemblyQualifiedName()
	{
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.get instance string System.Type::get_AssemblyQualifiedName()
	}
	.property instance string FullName()
	{
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.get instance string System.Type::get_FullName()
	}
	.property instance class System.Reflection.Assembly Assembly()
	{
		.get instance class System.Reflection.Assembly System.Type::get_Assembly()
	}
	.property instance class System.Reflection.Module Module()
	{
		.get instance class System.Reflection.Module System.Type::get_Module()
	}
	.property instance bool IsNested()
	{
		.get instance bool System.Type::get_IsNested()
	}
	.property instance class System.Type DeclaringType()
	{
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.get instance class System.Type System.Type::get_DeclaringType()
	}
	.property instance class System.Reflection.MethodBase DeclaringMethod()
	{
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.get instance class System.Reflection.MethodBase System.Type::get_DeclaringMethod()
	}
	.property instance class System.Type ReflectedType()
	{
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.get instance class System.Type System.Type::get_ReflectedType()
	}
	.property instance class System.Type UnderlyingSystemType()
	{
		.get instance class System.Type System.Type::get_UnderlyingSystemType()
	}
	.property instance bool IsTypeDefinition()
	{
		.get instance bool System.Type::get_IsTypeDefinition()
	}
	.property instance bool IsArray()
	{
		.get instance bool System.Type::get_IsArray()
	}
	.property instance bool IsByRef()
	{
		.get instance bool System.Type::get_IsByRef()
	}
	.property instance bool IsPointer()
	{
		.get instance bool System.Type::get_IsPointer()
	}
	.property instance bool IsConstructedGenericType()
	{
		.get instance bool System.Type::get_IsConstructedGenericType()
	}
	.property instance bool IsGenericParameter()
	{
		.get instance bool System.Type::get_IsGenericParameter()
	}
	.property instance bool IsGenericTypeParameter()
	{
		.get instance bool System.Type::get_IsGenericTypeParameter()
	}
	.property instance bool IsGenericMethodParameter()
	{
		.get instance bool System.Type::get_IsGenericMethodParameter()
	}
	.property instance bool IsGenericType()
	{
		.get instance bool System.Type::get_IsGenericType()
	}
	.property instance bool IsGenericTypeDefinition()
	{
		.get instance bool System.Type::get_IsGenericTypeDefinition()
	}
	.property instance bool IsSZArray()
	{
		.get instance bool System.Type::get_IsSZArray()
	}
	.property instance bool IsVariableBoundArray()
	{
		.get instance bool System.Type::get_IsVariableBoundArray()
	}
	.property instance bool IsByRefLike()
	{
		.get instance bool System.Type::get_IsByRefLike()
	}
	.property instance bool HasElementType()
	{
		.get instance bool System.Type::get_HasElementType()
	}
	.property instance class System.Type[] GenericTypeArguments()
	{
		.get instance class System.Type[] System.Type::get_GenericTypeArguments()
	}
	.property instance int32 GenericParameterPosition()
	{
		.get instance int32 System.Type::get_GenericParameterPosition()
	}
	.property instance valuetype System.Reflection.GenericParameterAttributes GenericParameterAttributes()
	{
		.get instance valuetype System.Reflection.GenericParameterAttributes System.Type::get_GenericParameterAttributes()
	}
	.property instance valuetype System.Reflection.TypeAttributes Attributes()
	{
		.get instance valuetype System.Reflection.TypeAttributes System.Type::get_Attributes()
	}
	.property instance bool IsAbstract()
	{
		.get instance bool System.Type::get_IsAbstract()
	}
	.property instance bool IsImport()
	{
		.get instance bool System.Type::get_IsImport()
	}
	.property instance bool IsSealed()
	{
		.get instance bool System.Type::get_IsSealed()
	}
	.property instance bool IsSpecialName()
	{
		.get instance bool System.Type::get_IsSpecialName()
	}
	.property instance bool IsClass()
	{
		.get instance bool System.Type::get_IsClass()
	}
	.property instance bool IsNestedAssembly()
	{
		.get instance bool System.Type::get_IsNestedAssembly()
	}
	.property instance bool IsNestedFamANDAssem()
	{
		.get instance bool System.Type::get_IsNestedFamANDAssem()
	}
	.property instance bool IsNestedFamily()
	{
		.get instance bool System.Type::get_IsNestedFamily()
	}
	.property instance bool IsNestedFamORAssem()
	{
		.get instance bool System.Type::get_IsNestedFamORAssem()
	}
	.property instance bool IsNestedPrivate()
	{
		.get instance bool System.Type::get_IsNestedPrivate()
	}
	.property instance bool IsNestedPublic()
	{
		.get instance bool System.Type::get_IsNestedPublic()
	}
	.property instance bool IsNotPublic()
	{
		.get instance bool System.Type::get_IsNotPublic()
	}
	.property instance bool IsPublic()
	{
		.get instance bool System.Type::get_IsPublic()
	}
	.property instance bool IsAutoLayout()
	{
		.get instance bool System.Type::get_IsAutoLayout()
	}
	.property instance bool IsExplicitLayout()
	{
		.get instance bool System.Type::get_IsExplicitLayout()
	}
	.property instance bool IsLayoutSequential()
	{
		.get instance bool System.Type::get_IsLayoutSequential()
	}
	.property instance bool IsAnsiClass()
	{
		.get instance bool System.Type::get_IsAnsiClass()
	}
	.property instance bool IsAutoClass()
	{
		.get instance bool System.Type::get_IsAutoClass()
	}
	.property instance bool IsUnicodeClass()
	{
		.get instance bool System.Type::get_IsUnicodeClass()
	}
	.property instance bool IsCOMObject()
	{
		.get instance bool System.Type::get_IsCOMObject()
	}
	.property instance bool IsContextful()
	{
		.get instance bool System.Type::get_IsContextful()
	}
	.property instance bool IsEnum()
	{
		.get instance bool System.Type::get_IsEnum()
	}
	.property instance bool IsMarshalByRef()
	{
		.get instance bool System.Type::get_IsMarshalByRef()
	}
	.property instance bool IsPrimitive()
	{
		.get instance bool System.Type::get_IsPrimitive()
	}
	.property instance bool IsValueType()
	{
		.get instance bool System.Type::get_IsValueType()
	}
	.property instance bool IsSignatureType()
	{
		.get instance bool System.Type::get_IsSignatureType()
	}
	.property instance bool IsSecurityCritical()
	{
		.get instance bool System.Type::get_IsSecurityCritical()
	}
	.property instance bool IsSecuritySafeCritical()
	{
		.get instance bool System.Type::get_IsSecuritySafeCritical()
	}
	.property instance bool IsSecurityTransparent()
	{
		.get instance bool System.Type::get_IsSecurityTransparent()
	}
	.property instance class System.Runtime.InteropServices.StructLayoutAttribute StructLayoutAttribute()
	{
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.get instance class System.Runtime.InteropServices.StructLayoutAttribute System.Type::get_StructLayoutAttribute()
	}
	.property instance class System.Reflection.ConstructorInfo TypeInitializer()
	{
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.get instance class System.Reflection.ConstructorInfo System.Type::get_TypeInitializer()
	}
	.property instance valuetype System.RuntimeTypeHandle TypeHandle()
	{
		.get instance valuetype System.RuntimeTypeHandle System.Type::get_TypeHandle()
	}
	.property instance valuetype System.Guid GUID()
	{
		.get instance valuetype System.Guid System.Type::get_GUID()
	}
	.property instance class System.Type BaseType()
	{
		.custom instance void System.Runtime.CompilerServices.NullableAttribute::.ctor(uint8) = (
			01 00 02 00 00
		)
		.get instance class System.Type System.Type::get_BaseType()
	}
	.property class System.Reflection.Binder DefaultBinder()
	{
		.get class System.Reflection.Binder System.Type::get_DefaultBinder()
	}
	.property instance bool IsSerializable()
	{
		.get instance bool System.Type::get_IsSerializable()
	}
	.property instance bool ContainsGenericParameters()
	{
		.get instance bool System.Type::get_ContainsGenericParameters()
	}
	.property instance bool IsVisible()
	{
		.get instance bool System.Type::get_IsVisible()
	}

} // end of class System.Type