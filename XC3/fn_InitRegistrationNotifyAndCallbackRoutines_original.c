__int64 sub_140003550()
{
	_QWORD *v0; // rax
	_QWORD *v1; // rbx
	wchar_t *v2; // rax
	__int64 result; // rax
	PVOID v4; // rax
	int v5; // eax
	signed int v6; // ecx
	signed int v7; // ebx
	__int64 v8; // rdx
	UNICODE_STRING DestinationString; // [rsp+20h] [rbp-18h]

	v0 = ExAllocatePoolWithTag(0, 0x28ui64, 0x78687A31u);
	qword_14000CD70 = v0;
	v1 = v0;
	if (!v0)
		return 3221225626i64;
	memset(v0, 0, 0x28ui64);
	*v1 = 0i64;
	dword_14000CD18 = 0;
	dword_14000CD1C = 0;
	KeInitializeMutex(&Mutex, 0);
	v2 = ExAllocatePoolWithTag(0, 0x2000ui64, 0x78687A31u);
	Str1 = v2;
	if (!v2)
		return 3221225626i64;
	*v2 = 0;
	qword_14000CD08 = 0i64;
	qword_14000CD10 = 4096i64;
	result = sub_140003C38();
	if (result < 0)
		return result;
	sub_140002D60();
	sub_140002ED8();
	dword_14000CD34 = 0;
	dword_14000CD30 = 0;
	RtlInitUnicodeString(&DestinationString, L"PsSetCreateProcessNotifyRoutineEx");
	v4 = MmGetSystemRoutineAddress(&DestinationString);
	qword_14000CD28 = v4;
	if (v4)
	{
		v5 = (v4)(sub_1400034C4, 0i64);
		v6 = dword_14000CD30;
		if (v5 >= 0)
			v6 = 1;
		dword_14000CD30 = v6;
	}
	else
	{
		v6 = dword_14000CD30;
	}
	if (!v6)
	{
		v7 = PsSetCreateProcessNotifyRoutine(sub_1400034B0, 0i64);
		if (v7 < 0)
		{
			dword_14000CD34 = 0;
			goto LABEL_13;
		}
		dword_14000CD34 = 1;
	}
	v7 = 0;
LABEL_13:
	if (v7 < 0)
	{
	LABEL_14:
		sub_140002E50();
		nullsub_1();
		return v7;
	}
	v7 = sub_14000213C();
	if (v7 < 0)
	{
		if (dword_14000CD30 && qword_14000CD28)
		{
			LOBYTE(v8) = 1;
			qword_14000CD28(sub_1400034C4, v8);
		}
		if (dword_14000CD34)
		{
			LOBYTE(v8) = 1;
			PsSetCreateProcessNotifyRoutine(sub_1400034B0, v8);
		}
		goto LABEL_14;
	}
	return 0i64;
}