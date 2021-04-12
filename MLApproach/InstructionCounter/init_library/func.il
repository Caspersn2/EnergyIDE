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
