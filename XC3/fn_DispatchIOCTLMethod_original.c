__int64 __fastcall fn_DispatchIOCTLMethod(__int64 a1, __int64 a2)
{
	int v2; // er8

	v2 = 0;
	if (!dword_14000A240)
		return 3221225473i64;
	while (dword_140009E40[4 * v2] != *(_DWORD *)(a1 + 0xC))
	{
		if (++v2 >= (unsigned int)dword_14000A240)
			return 3221225473i64;
	}
	return (*(__int64(__fastcall **)(__int64, __int64))&dword_140009E40[4 * v2 + 2])(a1, a2);
}