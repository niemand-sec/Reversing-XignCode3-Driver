__int64 fn_InitDispatchMethodArray()
{
	__int64 result; // rax

	memset(IOCTLFunctionArray, 0, 0x400ui64);
	IOCTLFunctionArray[0].Index = 774;            // 9E40
	IOCTLFunctionArray[0].FnPtr = sub_140001058;
	IOCTLFunctionArray[1].FnPtr = sub_14000101C;
	IOCTLFunctionArray[2].FnPtr = sub_140001CC8;
	IOCTLFunctionArray[3].FnPtr = sub_140001BFC;
	IOCTLFunctionArray[4].FnPtr = sub_140001DC0;
	IOCTLFunctionArray[5].FnPtr = sub_140001B50;
	IOCTLFunctionArray[6].FnPtr = sub_140001C3C;
	IOCTLFunctionArray[7].FnPtr = sub_140001D04;
	IOCTLFunctionArray[8].FnPtr = sub_14000137C;
	IOCTLFunctionArray[9].FnPtr = sub_14000191C;
	IOCTLFunctionArray[10].FnPtr = sub_140001340;
	IOCTLFunctionArray[11].FnPtr = sub_140001A58;
	IOCTLFunctionArray[12].FnPtr = sub_1400019A4;
	IOCTLFunctionArray[13].FnPtr = sub_140001224;
	IOCTLFunctionArray[14].FnPtr = sub_14000187C;
	IOCTLFunctionArray[15].FnPtr = sub_140001488;
	IOCTLFunctionArray[16].FnPtr = sub_140001548;
	IOCTLFunctionArray[17].FnPtr = sub_1400013B8;
	IOCTLFunctionArray[18].FnPtr = fn_ReadFileContent_;
	IOCTLFunctionArray[19].FnPtr = fn_IOCTL_ValidatePidPEB;
	IOCTLFunctionArray[20].FnPtr = fn_IOCTL_ControlCallbackRoutines;
	IOCTLFunctionArray[21].FnPtr = sub_1400015CC;
	IOCTLFunctionArray[22].FnPtr = sub_14000107C;
	IOCTLFunctionArray[23].FnPtr = sub_140001D4C; // CR0
	IOCTLFunctionArray[24].FnPtr = sub_140001D88;
	result = 0i64;
	IOCTLFunctionArray[1].Index = 775;
	IOCTLFunctionArray[2].Index = 776;
	IOCTLFunctionArray[3].Index = 777;
	IOCTLFunctionArray[4].Index = 778;
	IOCTLFunctionArray[5].Index = 779;
	IOCTLFunctionArray[6].Index = 790;
	IOCTLFunctionArray[7].Index = 782;
	IOCTLFunctionArray[8].Index = 783;
	IOCTLFunctionArray[9].Index = 785;
	IOCTLFunctionArray[10].Index = 786;
	IOCTLFunctionArray[11].Index = 787;
	IOCTLFunctionArray[12].Index = 788;
	IOCTLFunctionArray[13].Index = 789;
	IOCTLFunctionArray[14].Index = 791;
	IOCTLFunctionArray[15].Index = 792;
	IOCTLFunctionArray[16].Index = 793;
	IOCTLFunctionArray[17].Index = 794;
	IOCTLFunctionArray[18].Index = 796;
	IOCTLFunctionArray[19].Index = 797;
	IOCTLFunctionArray[20].Index = 798;
	IOCTLFunctionArray[21].Index = 799;
	IOCTLFunctionArray[22].Index = 800;
	IOCTLFunctionArray[23].Index = 801;
	IOCTLFunctionArray[24].Index = 802;
	FunctionsCount = 0x19;
	return result;
}