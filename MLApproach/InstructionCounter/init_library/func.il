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