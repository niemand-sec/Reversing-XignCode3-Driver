__int64 fn_ObtainKernelFunctions()
{
	UNICODE_STRING DestinationString; // [rsp+20h] [rbp-18h]

	RtlInitUnicodeString(&DestinationString, L"ObGetFilterVersion");
	ObGetFilterVersion_ = MmGetSystemRoutineAddress(&DestinationString);
	RtlInitUnicodeString(&DestinationString, L"ObRegisterCallbacks");
	ObRegisterCallbacks_ = MmGetSystemRoutineAddress(&DestinationString);
	RtlInitUnicodeString(&DestinationString, L"ObUnRegisterCallbacks");
	ObUnRegisterCallbacks_ = MmGetSystemRoutineAddress(&DestinationString);
	RtlInitUnicodeString(&DestinationString, L"ExfAcquirePushLockExclusive");
	ExfAcquirePushLockExclusive = MmGetSystemRoutineAddress(&DestinationString);
	RtlInitUnicodeString(&DestinationString, L"ExfReleasePushLockExclusive");
	ExfReleasePushLockExclusive = MmGetSystemRoutineAddress(&DestinationString);
	return 0i64;
}