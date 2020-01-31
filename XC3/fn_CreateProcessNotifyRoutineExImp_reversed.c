void __fastcall fn_CreateProcessNotifyRoutineExImp(PEPROCESS Process, __int64 ProcessId, PVOID CreateInfo)
{
	if (CreateInfo)                             //  If CreateInfo parameter is NULL, the specified process is exiting.
		fn_Analyze_CreateProcessNotifyRoutine(ProcessId);
	else
		fn_Analyze_ExitProcessNotifyRoutine(ProcessId);
}