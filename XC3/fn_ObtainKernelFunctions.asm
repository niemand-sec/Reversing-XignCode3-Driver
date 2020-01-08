.text:0000000140002A18
.text:0000000140002A18 ; =============== S U B R O U T I N E =======================================
.text:0000000140002A18
.text:0000000140002A18
.text:0000000140002A18 sub_140002A18   proc near               ; CODE XREF: DriverEntry+123↓p
.text:0000000140002A18                                         ; DATA XREF: .pdata:000000014000D1B0↓o
.text:0000000140002A18
.text:0000000140002A18 DestinationString= UNICODE_STRING ptr -18h
.text:0000000140002A18
.text:0000000140002A18                 sub     rsp, 38h
.text:0000000140002A1C                 lea     rdx, SourceString ; "ObGetFilterVersion"
.text:0000000140002A23                 lea     rcx, [rsp+38h+DestinationString] ; DestinationString
.text:0000000140002A28                 call    cs:RtlInitUnicodeString
.text:0000000140002A2E                 lea     rcx, [rsp+38h+DestinationString] ; SystemRoutineName
.text:0000000140002A33                 call    cs:MmGetSystemRoutineAddress
.text:0000000140002A39                 lea     rdx, aObregistercall ; "ObRegisterCallbacks"
.text:0000000140002A40                 mov     cs:qword_14000A288, rax
.text:0000000140002A47                 lea     rcx, [rsp+38h+DestinationString] ; DestinationString
.text:0000000140002A4C                 call    cs:RtlInitUnicodeString
.text:0000000140002A52                 lea     rcx, [rsp+38h+DestinationString] ; SystemRoutineName
.text:0000000140002A57                 call    cs:MmGetSystemRoutineAddress
.text:0000000140002A5D                 lea     rdx, aObunregisterca ; "ObUnRegisterCallbacks"
.text:0000000140002A64                 mov     cs:qword_14000A278, rax
.text:0000000140002A6B                 lea     rcx, [rsp+38h+DestinationString] ; DestinationString
.text:0000000140002A70                 call    cs:RtlInitUnicodeString
.text:0000000140002A76                 lea     rcx, [rsp+38h+DestinationString] ; SystemRoutineName
.text:0000000140002A7B                 call    cs:MmGetSystemRoutineAddress
.text:0000000140002A81                 lea     rdx, aExfacquirepush ; "ExfAcquirePushLockExclusive"
.text:0000000140002A88                 mov     cs:qword_14000A280, rax
.text:0000000140002A8F                 lea     rcx, [rsp+38h+DestinationString] ; DestinationString
.text:0000000140002A94                 call    cs:RtlInitUnicodeString
.text:0000000140002A9A                 lea     rcx, [rsp+38h+DestinationString] ; SystemRoutineName
.text:0000000140002A9F                 call    cs:MmGetSystemRoutineAddress
.text:0000000140002AA5                 lea     rdx, aExfreleasepush ; "ExfReleasePushLockExclusive"
.text:0000000140002AAC                 mov     cs:qword_14000A290, rax
.text:0000000140002AB3                 lea     rcx, [rsp+38h+DestinationString] ; DestinationString
.text:0000000140002AB8                 call    cs:RtlInitUnicodeString
.text:0000000140002ABE                 lea     rcx, [rsp+38h+DestinationString] ; SystemRoutineName
.text:0000000140002AC3                 call    cs:MmGetSystemRoutineAddress
.text:0000000140002AC9                 mov     cs:qword_14000A298, rax
.text:0000000140002AD0                 xor     eax, eax
.text:0000000140002AD2                 add     rsp, 38h
.text:0000000140002AD6                 retn
.text:0000000140002AD6 sub_140002A18   endp
.text:0000000140002AD6
.text:0000000140002AD6 ; ---------------------------------------------------------------------------