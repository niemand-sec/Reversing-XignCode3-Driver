__int64 __fastcall DriverEntry(PDRIVER_OBJECT DriverObject, _WORD *a2)
{
	PDRIVER_OBJECT v2; // rdi
	NTSTATUS v4; // ebx
	UNICODE_STRING *v5; // rcx
	__m128i v6; // [rsp+40h] [rbp-30h]
	UNICODE_STRING DeviceName; // [rsp+50h] [rbp-20h]
	UNICODE_STRING SymbolicLinkName; // [rsp+60h] [rbp-10h]
	PDEVICE_OBJECT DeviceObject; // [rsp+88h] [rbp+18h]

	v2 = DriverObject;
	DeviceObject = 0i64;
	if (!*a2 || (signed int)sub_140004A58(&v6) < 0)
		return 3221225473i64;
	if ((signed int)sub_140003A50(&SymbolicLinkName, &v6) < 0)
	{
		sub_140004AC0(&v6);
		return 3221225473i64;
	}
	if ((signed int)sub_1400039B0(&DeviceName, &v6) >= 0)
	{
		v2->DriverUnload = (PDRIVER_UNLOAD)sub_140004938;
		v2->MajorFunction[0] = (PDRIVER_DISPATCH)&sub_1400045D0;
		v2->MajorFunction[2] = (PDRIVER_DISPATCH)&sub_140004580;
		v2->MajorFunction[4] = (PDRIVER_DISPATCH)&sub_140004604;
		v4 = IoCreateDevice(v2, 0, &DeviceName, 0x22u, 0, 0, &DeviceObject);
		if (v4 < 0)
		{
			sub_140004AC0(&v6);
			sub_140004AC0(&DeviceName);
			goto LABEL_10;
		}
		DeviceObject->Flags |= 4u;
		_mm_storeu_si128((__m128i *)&xmmword_14000CD78, v6);
		_mm_storeu_si128((__m128i *)&::SymbolicLinkName, (__m128i)SymbolicLinkName);
		sub_1400015F8();
		v4 = sub_140003550(v2);
		if (v4 >= 0)
		{
			v4 = sub_140002A18();
			if (v4 >= 0)
			{
				v4 = IoCreateSymbolicLink(&SymbolicLinkName, &DeviceName);
				if (v4 >= 0)
				{
					v4 = 0;
					goto LABEL_18;
				}
				nullsub_1();
			}
			sub_1400034D8();
			nullsub_1();
		}
		IoDeleteDevice(DeviceObject);
	LABEL_18:
		v5 = &DeviceName;
		goto LABEL_19;
	}
	sub_140004AC0(&v6);
	v4 = -1073741823;
LABEL_10:
	v5 = &SymbolicLinkName;
LABEL_19:
	sub_140004AC0(v5);
	return (unsigned int)v4;
}