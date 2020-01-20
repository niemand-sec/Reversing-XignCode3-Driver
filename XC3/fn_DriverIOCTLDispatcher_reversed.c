__int64 __fastcall fn_DriverIOCTLDispatcher(PDEVICE_OBJECT a1, struct _IRP *_irp_request)
{
	unsigned int Size; // esi
	unsigned int _errorCode; // edi
	DrvInputBuffer *_inputBuffer; // r14
	PVOID Mdl; // rax MAPDST
	PVOID v8; // rcx
	PVOID response; // rdx
	signed __int64 counter; // rax
	PMDL MemoryDescriptorList; // [rsp+38h] [rbp-320h]
	DrvOutputBuffer _irp_response; // [rsp+40h] [rbp-318h]

	Size = 0;
	_errorCode = 0xC0000001;
	// Indicates how many bytes to transfer, needs to be equal to 0x270
	if (_irp_request->Tail.Overlay.CurrentStackLocation->Parameters.Read.Length == 0x270)
	{
		_inputBuffer = _irp_request->AssociatedIrp.SystemBuffer;
		if (_inputBuffer->Size == 0x270 && _inputBuffer->MagicNumber == 0x345821AB)
		{
			fn_DispatchIOCTLMethod(_inputBuffer, &_irp_response);
			Mdl = fn_AllocateMdl(_inputBuffer->pvoid10, 0x2FAu, &MemoryDescriptorList);
			if (Mdl)
			{
				v8 = Mdl;
				response = &_irp_response;
				counter = 5i64;
				do
				{
					*v8 = *response;
					*(v8 + 1) = *(response + 1);
					*(v8 + 2) = *(response + 2);
					*(v8 + 3) = *(response + 3);
					*(v8 + 4) = *(response + 4);
					*(v8 + 5) = *(response + 5);
					*(v8 + 6) = *(response + 6);
					v8 = v8 + 128;
					*(v8 - 1) = *(response + 7);
					response = response + 128;
					--counter;
				} while (counter);
				*v8 = *response;
				*(v8 + 1) = *(response + 1);
				*(v8 + 2) = *(response + 2);
				*(v8 + 3) = *(response + 3);
				*(v8 + 4) = *(response + 4);
				*(v8 + 5) = *(response + 5);
				*(v8 + 6) = *(response + 6);
				*(v8 + 14) = *(response + 14);
				*(v8 + 60) = *(response + 60);
				_errorCode = 0;
				Size = 0x2FA;
				sub_140003980(MemoryDescriptorList, Mdl);
			}
		}
	}
	_irp_request->IoStatus.Status = _errorCode;
	_irp_request->IoStatus.Information = Size;
	IofCompleteRequest(_irp_request, 0);
	return _errorCode;
}