.text:0000000140003550
.text:0000000140003550 ; =============== S U B R O U T I N E =======================================
.text:0000000140003550
.text:0000000140003550
.text:0000000140003550 sub_140003550   proc near               ; CODE XREF: DriverEntry+118↓p
.text:0000000140003550                                         ; DATA XREF: .pdata:000000014000D288↓o
.text:0000000140003550
.text:0000000140003550 DestinationString= UNICODE_STRING ptr -18h
.text:0000000140003550 arg_0           = qword ptr  8
.text:0000000140003550 arg_8           = qword ptr  10h
.text:0000000140003550
.text:0000000140003550                 mov     [rsp+arg_0], rbx
.text:0000000140003555                 mov     [rsp+arg_8], rsi
.text:000000014000355A                 push    rdi
.text:000000014000355B                 sub     rsp, 30h
.text:000000014000355F                 mov     esi, 78687A31h
.text:0000000140003564                 mov     edx, 28h        ; NumberOfBytes
.text:0000000140003569                 mov     r8d, esi        ; Tag
.text:000000014000356C                 xor     ecx, ecx        ; PoolType
.text:000000014000356E                 call    cs:ExAllocatePoolWithTag
.text:0000000140003574                 xor     edi, edi
.text:0000000140003576                 mov     cs:qword_14000CD70, rax
.text:000000014000357D                 mov     rbx, rax
.text:0000000140003580                 test    rax, rax
.text:0000000140003583                 jz      loc_1400036E1
.text:0000000140003589                 xor     edx, edx        ; Val
.text:000000014000358B                 lea     r8d, [rdi+28h]  ; Size
.text:000000014000358F                 mov     rcx, rax        ; Dst
.text:0000000140003592                 call    memset
.text:0000000140003597                 mov     [rbx], rdi
.text:000000014000359A                 lea     rcx, Mutex      ; Mutex
.text:00000001400035A1                 xor     edx, edx        ; Level
.text:00000001400035A3                 mov     cs:dword_14000CD18, edi
.text:00000001400035A9                 mov     cs:dword_14000CD1C, edi
.text:00000001400035AF                 call    cs:KeInitializeMutex
.text:00000001400035B5                 mov     r8d, esi        ; Tag
.text:00000001400035B8                 mov     edx, 2000h      ; NumberOfBytes
.text:00000001400035BD                 xor     ecx, ecx        ; PoolType
.text:00000001400035BF                 call    cs:ExAllocatePoolWithTag
.text:00000001400035C5                 mov     cs:Str1, rax
.text:00000001400035CC                 test    rax, rax
.text:00000001400035CF                 jz      loc_1400036E1
.text:00000001400035D5                 mov     [rax], di
.text:00000001400035D8                 mov     cs:qword_14000CD08, rdi
.text:00000001400035DF                 mov     cs:qword_14000CD10, 1000h
.text:00000001400035EA                 call    sub_140003C38
.text:00000001400035EF                 test    eax, eax
.text:00000001400035F1                 js      loc_1400036E6
.text:00000001400035F7                 call    sub_140002D60
.text:00000001400035FC                 call    sub_140002ED8
.text:0000000140003601                 lea     rdx, aPssetcreatepro ; "PsSetCreateProcessNotifyRoutineEx"
.text:0000000140003608                 mov     cs:dword_14000CD34, edi
.text:000000014000360E                 lea     rcx, [rsp+38h+DestinationString] ; DestinationString
.text:0000000140003613                 mov     cs:dword_14000CD30, edi
.text:0000000140003619                 call    cs:RtlInitUnicodeString
.text:000000014000361F                 lea     rcx, [rsp+38h+DestinationString] ; SystemRoutineName
.text:0000000140003624                 call    cs:MmGetSystemRoutineAddress
.text:000000014000362A                 mov     cs:qword_14000CD28, rax
.text:0000000140003631                 lea     esi, [rdi+1]
.text:0000000140003634                 test    rax, rax
.text:0000000140003637                 jz      short loc_140003657
.text:0000000140003639                 xor     edx, edx
.text:000000014000363B                 lea     rcx, sub_1400034C4
.text:0000000140003642                 call    rax
.text:0000000140003644                 mov     ecx, cs:dword_14000CD30
.text:000000014000364A                 test    eax, eax
.text:000000014000364C                 cmovns  ecx, esi
.text:000000014000364F                 mov     cs:dword_14000CD30, ecx
.text:0000000140003655                 jmp     short loc_14000365D
.text:0000000140003657 ; ---------------------------------------------------------------------------
.text:0000000140003657
.text:0000000140003657 loc_140003657:                          ; CODE XREF: sub_140003550+E7↑j
.text:0000000140003657                 mov     ecx, cs:dword_14000CD30
.text:000000014000365D
.text:000000014000365D loc_14000365D:                          ; CODE XREF: sub_140003550+105↑j
.text:000000014000365D                 test    ecx, ecx
.text:000000014000365F                 jnz     short loc_14000367C
.text:0000000140003661                 xor     edx, edx
.text:0000000140003663                 lea     rcx, sub_1400034B0
.text:000000014000366A                 call    cs:PsSetCreateProcessNotifyRoutine
.text:0000000140003670                 mov     ebx, eax
.text:0000000140003672                 test    eax, eax
.text:0000000140003674                 js      short loc_140003690
.text:0000000140003676                 mov     cs:dword_14000CD34, esi
.text:000000014000367C
.text:000000014000367C loc_14000367C:                          ; CODE XREF: sub_140003550+10F↑j
.text:000000014000367C                 mov     ebx, edi
.text:000000014000367E
.text:000000014000367E loc_14000367E:                          ; CODE XREF: sub_140003550+146↓j
.text:000000014000367E                 test    ebx, ebx
.text:0000000140003680                 jns     short loc_140003698
.text:0000000140003682
.text:0000000140003682 loc_140003682:                          ; CODE XREF: sub_140003550+179↓j
.text:0000000140003682                                         ; sub_140003550+18B↓j
.text:0000000140003682                 call    sub_140002E50
.text:0000000140003687                 call    nullsub_1
.text:000000014000368C                 mov     eax, ebx
.text:000000014000368E                 jmp     short loc_1400036E6
.text:0000000140003690 ; ---------------------------------------------------------------------------
.text:0000000140003690
.text:0000000140003690 loc_140003690:                          ; CODE XREF: sub_140003550+124↑j
.text:0000000140003690                 mov     cs:dword_14000CD34, edi
.text:0000000140003696                 jmp     short loc_14000367E
.text:0000000140003698 ; ---------------------------------------------------------------------------
.text:0000000140003698
.text:0000000140003698 loc_140003698:                          ; CODE XREF: sub_140003550+130↑j
.text:0000000140003698                 call    sub_14000213C
.text:000000014000369D                 mov     ebx, eax
.text:000000014000369F                 test    eax, eax
.text:00000001400036A1                 jns     short loc_1400036DD
.text:00000001400036A3                 cmp     cs:dword_14000CD30, edi
.text:00000001400036A9                 jz      short loc_1400036C3
.text:00000001400036AB                 mov     rax, cs:qword_14000CD28
.text:00000001400036B2                 test    rax, rax
.text:00000001400036B5                 jz      short loc_1400036C3
.text:00000001400036B7                 mov     dl, sil
.text:00000001400036BA                 lea     rcx, sub_1400034C4
.text:00000001400036C1                 call    rax ; qword_14000CD28
.text:00000001400036C3
.text:00000001400036C3 loc_1400036C3:                          ; CODE XREF: sub_140003550+159↑j
.text:00000001400036C3                                         ; sub_140003550+165↑j
.text:00000001400036C3                 cmp     cs:dword_14000CD34, edi
.text:00000001400036C9                 jz      short loc_140003682
.text:00000001400036CB                 mov     dl, sil
.text:00000001400036CE                 lea     rcx, sub_1400034B0
.text:00000001400036D5                 call    cs:PsSetCreateProcessNotifyRoutine
.text:00000001400036DB                 jmp     short loc_140003682
.text:00000001400036DD ; ---------------------------------------------------------------------------
.text:00000001400036DD
.text:00000001400036DD loc_1400036DD:                          ; CODE XREF: sub_140003550+151↑j
.text:00000001400036DD                 xor     eax, eax
.text:00000001400036DF                 jmp     short loc_1400036E6
.text:00000001400036E1 ; ---------------------------------------------------------------------------
.text:00000001400036E1
.text:00000001400036E1 loc_1400036E1:                          ; CODE XREF: sub_140003550+33↑j
.text:00000001400036E1                                         ; sub_140003550+7F↑j
.text:00000001400036E1                 mov     eax, 0C000009Ah
.text:00000001400036E6
.text:00000001400036E6 loc_1400036E6:                          ; CODE XREF: sub_140003550+A1↑j
.text:00000001400036E6                                         ; sub_140003550+13E↑j ...
.text:00000001400036E6                 mov     rbx, [rsp+38h+arg_0]
.text:00000001400036EB                 mov     rsi, [rsp+38h+arg_8]
.text:00000001400036F0                 add     rsp, 30h
.text:00000001400036F4                 pop     rdi
.text:00000001400036F5                 retn
.text:00000001400036F5 sub_140003550   endp
.text:00000001400036F5
.text:00000001400036F5 ; ---------------------------------------------------------------------------