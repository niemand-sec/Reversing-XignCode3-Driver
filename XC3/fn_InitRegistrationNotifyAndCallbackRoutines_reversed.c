signed __int64 fn_InitRegistrationNotifyAndCallbackRoutines()
{
	_QWORD *v0; // rax
	_QWORD *v1; // rbx
	wchar_t *v2; // rax
	signed __int64 result; // rax
	__int64(__fastcall *PsSetCreateProcessNotifyRoutineEx)(PVOID, BOOLEAN); // rax
	int ntStatus; // eax
	signed int v6; // ecx
	signed int ntStatus_1; // ebx
	__int64 _RemoveRoutine; // rdx
	UNICODE_STRING DestinationString; // [rsp+20h] [rbp-18h]

	v0 = ExAllocatePoolWithTag(0, 0x28ui64, 0x78687A31u);
	qword_14000CD70 = v0;
	v1 = v0;
	if (!v0)
		return 0xC000009Ai64;
	memset(v0, 0, 0x28ui64);
	*v1 = 0i64;
	task_status_NotifyCallbackRoutine = 0;        // Task mutex
	bNotifyCallbackRoutines = 0;
	KeInitializeMutex(&BlackCipherMutex, 0);
	v2 = ExAllocatePoolWithTag(0, 0x2000ui64, 0x78687A31u);
	Str1 = v2;
	if (!v2)
		return 0xC000009Ai64;
	*v2 = 0;
	qword_14000CD08 = 0i64;
	someMaxValue = 0x1000i64;
	result = j_fn_ConfigWindowsVersion();
	if (result < 0)
		return result;
	fn_InitWeirdVariables_();
	fn_InitWeirdVariables2_();
	status_PsSetCreateProcessNotifyRoutine = 0;
	status_PsSetCreateProcessNotifyRoutineEx = 0;
	RtlInitUnicodeString(&DestinationString, L"PsSetCreateProcessNotifyRoutineEx");
	PsSetCreateProcessNotifyRoutineEx = MmGetSystemRoutineAddress(&DestinationString);
	fn_pPsSetCreateProcessNotifyRoutineEx = PsSetCreateProcessNotifyRoutineEx;
	if (PsSetCreateProcessNotifyRoutineEx)
	{
		ntStatus = PsSetCreateProcessNotifyRoutineEx(fn_CreateProcessNotifyRoutineExImp, 0i64);
		v6 = status_PsSetCreateProcessNotifyRoutineEx;
		if (ntStatus >= 0)
			v6 = 1;
		status_PsSetCreateProcessNotifyRoutineEx = v6;
	}
	else
	{
		v6 = status_PsSetCreateProcessNotifyRoutineEx;
	}
	if (!v6)
	{
		ntStatus_1 = PsSetCreateProcessNotifyRoutine(fn_CreateProcessNotifyRoutine, 0i64);
		if (ntStatus_1 < 0)
		{
			status_PsSetCreateProcessNotifyRoutine = 0;
			goto LABEL_13;
		}
		status_PsSetCreateProcessNotifyRoutine = 1;
	}
	ntStatus_1 = 0;
LABEL_13:
	if (ntStatus_1 < 0)
	{

	label_exit:
		fn_InitWeirdVariables3_();
		nullsub_1();
		return ntStatus_1;

	}


	ntStatus_1 = fn_RegisterCallbackFunction();

	if (ntStatus_1 < 0)                         // In case the registerCallbackFunction failed, we need to remove the Notify routines previously registered.
	{

		if (status_PsSetCreateProcessNotifyRoutineEx && fn_pPsSetCreateProcessNotifyRoutineEx)
			fn_pPsSetCreateProcessNotifyRoutineEx(fn_CreateProcessNotifyRoutineExImp, 1u);// 2nd Parameter equal to 1 == remove
		if (status_PsSetCreateProcessNotifyRoutine)
		{
			LOBYTE(_RemoveRoutine) = 1;
			PsSetCreateProcessNotifyRoutine(fn_CreateProcessNotifyRoutine, _RemoveRoutine);
		}
		goto label_exit;

	}
	return 0i64;
}