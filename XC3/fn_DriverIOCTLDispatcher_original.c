__int64 __fastcall sub_140004604(__int64 a1, _IRP *a2)
{
	_IRP *v2; // rbx
	unsigned int v3; // esi
	unsigned int v4; // edi
	_IRP *v5; // r14
	__int64 v6; // rax
	void *v7; // r8
	__int64 v8; // rcx
	__int64 *v9; // rdx
	signed __int64 v10; // rax
	PMDL MemoryDescriptorList; // [rsp+38h] [rbp-320h]
	__int64 v13; // [rsp+40h] [rbp-318h]

	v2 = a2;
	v3 = 0;
	v4 = -1073741823;
	if (LODWORD(a2->Tail.Overlay.CurrentStackLocation->Parameters.Others.Argument1) == 0x270)
	{
		v5 = a2->AssociatedIrp.MasterIrp;
		if (*&v5->Type == 0x270 && *(&v5->Size + 1) == 0x345821AB)
		{
			fn_DispatchIOCTLMethod(v5, &v13);
			v6 = sub_140003DBC(*&v5->Flags, 762i64, &MemoryDescriptorList);
			v7 = v6;
			if (v6)
			{
				v8 = v6;
				v9 = &v13;
				v10 = 5i64;
				do
				{
					*v8 = *v9;
					*(v8 + 16) = *(v9 + 1);
					*(v8 + 32) = *(v9 + 2);
					*(v8 + 48) = *(v9 + 3);
					*(v8 + 64) = *(v9 + 4);
					*(v8 + 80) = *(v9 + 5);
					*(v8 + 96) = *(v9 + 6);
					v8 += 128i64;
					*(v8 - 16) = *(v9 + 7);
					v9 += 16;
					--v10;
				} while (v10);
				*v8 = *v9;
				*(v8 + 16) = *(v9 + 1);
				*(v8 + 32) = *(v9 + 2);
				*(v8 + 48) = *(v9 + 3);
				*(v8 + 64) = *(v9 + 4);
				*(v8 + 80) = *(v9 + 5);
				*(v8 + 96) = *(v9 + 6);
				*(v8 + 112) = v9[14];
				*(v8 + 120) = *(v9 + 60);
				v4 = 0;
				v3 = 762;
				sub_140003980(MemoryDescriptorList, v7);
			}
		}
	}
	v2->IoStatus.Status = v4;
	v2->IoStatus.Information = v3;
	IofCompleteRequest(v2, 0);
	return v4;
}