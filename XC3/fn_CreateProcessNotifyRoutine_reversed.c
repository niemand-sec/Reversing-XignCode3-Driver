__int64 __fastcall fn_CreateProcessNotifyRoutine(HANDLE ParentId, HANDLE ProcessId, BOOLEAN Create)
{
	__int64 result; // rax

	if (Create)
		fn_Analyze_CreateProcessNotifyRoutine(ProcessId);
	else
		fn_Analyze_ExitProcessNotifyRoutine(ProcessId);
	return result;
}