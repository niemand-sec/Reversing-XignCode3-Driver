__int64 __fastcall fn_DispatchIOCTLMethod(DrvInputBuffer *SystemBuffer, DrvOutputBuffer *a2)
{
	int counter; // er8

	counter = 0;
	if (!FunctionsCount)
		return 0xC0000001i64;
	while (IOCTLFunctionArray[counter].Index != SystemBuffer->FnIndex)
	{
		if (++counter >= FunctionsCount)
			return 0xC0000001i64;
	}
	return (IOCTLFunctionArray[counter].FnPtr)(SystemBuffer, a2);
}