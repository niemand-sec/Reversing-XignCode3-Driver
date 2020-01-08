__int64 __fastcall DriverEntry(PDRIVER_OBJECT DriverObject, PUNICODE_STRING RegistryPath)
{
	PDRIVER_OBJECT _DriverObject; // rdi
	signed int ntStatus; // ebx
	UNICODE_STRING *v5; // rcx
	char Dest[16]; // [rsp+40h] [rbp-30h]
	UNICODE_STRING DeviceName; // [rsp+50h] [rbp-20h]
	UNICODE_STRING SymbolicLinkName; // [rsp+60h] [rbp-10h]
	PDEVICE_OBJECT DeviceObject; // [rsp+88h] [rbp+18h]

	_DriverObject = DriverObject;
	DeviceObject = 0i64;
	if (!RegistryPath->Length || fn_strcat(Dest, RegistryPath) < 0)
		return 0xC0000001i64;
	if (sub_140003A50(&SymbolicLinkName, Dest) < 0)
	{
		Real_Driver_Entry(Dest);
		return 0xC0000001i64;
	}
	if (sub_1400039B0(&DeviceName, Dest) >= 0)
	{
		_DriverObject->DriverUnload = fn_DriverUnloadDispatcher;
		_DriverObject->MajorFunction[0] = fn_DispatchCreate;// IRP_MJ_CREATE
		_DriverObject->MajorFunction[2] = fn_DispatchClose;// IRP_MJ_CLOSE                        
		_DriverObject->MajorFunction[4] = fn_DriverIOCTLDistpacher;// IRP_MJ_WRITE                        
		ntStatus = IoCreateDevice(_DriverObject, 0, &DeviceName, 0x22u, 0, 0, &DeviceObject);
		if (ntStatus < 0)
		{
			Real_Driver_Entry(Dest);
			Real_Driver_Entry(&DeviceName);
			goto LABEL_10;
		}
		DeviceObject->Flags |= 4u;
		_mm_storeu_si128(&xmmword_14000CD78, *Dest);
		_mm_storeu_si128(&::SymbolicLinkName, SymbolicLinkName);
		fn_InitDispatchMethodArray();
		ntStatus = fn_InitRegistrationNotifyAndCallbackRoutines();
		if (ntStatus >= 0)
		{
			ntStatus = fn_ObtainKernelFunctions();
			if (ntStatus >= 0)
			{
				ntStatus = IoCreateSymbolicLink(&SymbolicLinkName, &DeviceName);
				if (ntStatus >= 0)
				{
					ntStatus = 0;
					goto LABEL_18;
				}
				nullsub_1();
			}
			fn_RegisterCreateProcessNotifyRoutine();
			nullsub_1();
		}
		IoDeleteDevice(DeviceObject);
	LABEL_18:
		v5 = &DeviceName;
		goto LABEL_19;
	}
	Real_Driver_Entry(Dest);
	ntStatus = 0xC0000001;
LABEL_10:
	v5 = &SymbolicLinkName;
LABEL_19:
	Real_Driver_Entry(v5);
	return ntStatus;
}