__int64 sub_140002A18()
{
	UNICODE_STRING DestinationString; // [rsp+20h] [rbp-18h]

	RtlInitUnicodeString(&DestinationString, L"ObGetFilterVersion");
	qword_14000A288 = (__int64)MmGetSystemRoutineAddress(&DestinationString);
	RtlInitUnicodeString(&DestinationString, L"ObRegisterCallbacks");
	qword_14000A278 = (__int64)MmGetSystemRoutineAddress(&DestinationString);
	RtlInitUnicodeString(&DestinationString, L"ObUnRegisterCallbacks");
	qword_14000A280 = (__int64)MmGetSystemRoutineAddress(&DestinationString);
	RtlInitUnicodeString(&DestinationString, L"ExfAcquirePushLockExclusive");
	qword_14000A290 = (__int64)MmGetSystemRoutineAddress(&DestinationString);
	RtlInitUnicodeString(&DestinationString, L"ExfReleasePushLockExclusive");
	qword_14000A298 = (__int64)MmGetSystemRoutineAddress(&DestinationString);
	return 0i64;
}