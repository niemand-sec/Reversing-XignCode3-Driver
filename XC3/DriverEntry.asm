.text:00000001400047B8 ; =============== S U B R O U T I N E =======================================
.text:00000001400047B8
.text:00000001400047B8 ; Attributes: bp-based frame
.text:00000001400047B8
.text:00000001400047B8 ; __int64 __fastcall DriverEntry(PDRIVER_OBJECT DriverObject, PUNICODE_STRING RegistryPath)
.text:00000001400047B8 DriverEntry     proc near               ; CODE XREF: start+25↓j
.text:00000001400047B8                                         ; DATA XREF: .pdata:000000014000D3E4↓o ...
.text:00000001400047B8
.text:00000001400047B8 DeviceCharacteristics= dword ptr -50h
.text:00000001400047B8 Exclusive       = byte ptr -48h
.text:00000001400047B8 DeviceObject    = qword ptr -40h
.text:00000001400047B8 var_30          = xmmword ptr -30h
.text:00000001400047B8 DeviceName      = UNICODE_STRING ptr -20h
.text:00000001400047B8 SymbolicLinkName= UNICODE_STRING ptr -10h
.text:00000001400047B8 var_s0          = byte ptr  0
.text:00000001400047B8 arg_0           = qword ptr  10h
.text:00000001400047B8 arg_8           = qword ptr  18h
.text:00000001400047B8 arg_10          = qword ptr  20h
.text:00000001400047B8 arg_18          = qword ptr  28h
.text:00000001400047B8
.text:00000001400047B8                 mov     [rsp-8+arg_0], rbx
.text:00000001400047BD                 mov     [rsp-8+arg_10], rsi
.text:00000001400047C2                 mov     [rsp-8+arg_18], rdi
.text:00000001400047C7                 push    rbp
.text:00000001400047C8                 mov     rbp, rsp
.text:00000001400047CB                 sub     rsp, 70h
.text:00000001400047CF                 xor     esi, esi
.text:00000001400047D1                 mov     rdi, rcx
.text:00000001400047D4                 mov     [rbp+arg_8], rsi
.text:00000001400047D8                 cmp     [rdx], si
.text:00000001400047DB                 jnz     short loc_1400047E7
.text:00000001400047DD
.text:00000001400047DD loc_1400047DD:                          ; CODE XREF: DriverEntry+3A↓j
.text:00000001400047DD                                         ; DriverEntry+56↓j
.text:00000001400047DD                 mov     eax, 0C0000001h
.text:00000001400047E2                 jmp     loc_140004922
.text:00000001400047E7 ; ---------------------------------------------------------------------------
.text:00000001400047E7
.text:00000001400047E7 loc_1400047E7:                          ; CODE XREF: DriverEntry+23↑j
.text:00000001400047E7                 lea     rcx, [rbp+var_30]
.text:00000001400047EB                 call    sub_140004A58
.text:00000001400047F0                 test    eax, eax
.text:00000001400047F2                 js      short loc_1400047DD
.text:00000001400047F4                 lea     rdx, [rbp+var_30]
.text:00000001400047F8                 lea     rcx, [rbp+SymbolicLinkName]
.text:00000001400047FC                 call    sub_140003A50
.text:0000000140004801                 test    eax, eax
.text:0000000140004803                 jns     short loc_140004810
.text:0000000140004805                 lea     rcx, [rbp+var_30]
.text:0000000140004809                 call    sub_140004AC0
.text:000000014000480E                 jmp     short loc_1400047DD
.text:0000000140004810 ; ---------------------------------------------------------------------------
.text:0000000140004810
.text:0000000140004810 loc_140004810:                          ; CODE XREF: DriverEntry+4B↑j
.text:0000000140004810                 lea     rdx, [rbp+var_30]
.text:0000000140004814                 lea     rcx, [rbp+DeviceName]
.text:0000000140004818                 call    sub_1400039B0
.text:000000014000481D                 test    eax, eax
.text:000000014000481F                 jns     short loc_140004831
.text:0000000140004821                 lea     rcx, [rbp+var_30]
.text:0000000140004825                 call    sub_140004AC0
.text:000000014000482A                 mov     ebx, 0C0000001h
.text:000000014000482F                 jmp     short loc_1400048A2
.text:0000000140004831 ; ---------------------------------------------------------------------------
.text:0000000140004831
.text:0000000140004831 loc_140004831:                          ; CODE XREF: DriverEntry+67↑j
.text:0000000140004831                 lea     rax, sub_140004938
.text:0000000140004838                 mov     r9d, 22h        ; DeviceType
.text:000000014000483E                 mov     [rdi+68h], rax
.text:0000000140004842                 lea     r8, [rbp+DeviceName] ; DeviceName
.text:0000000140004846                 lea     rax, sub_1400045D0
.text:000000014000484D                 xor     edx, edx        ; DeviceExtensionSize
.text:000000014000484F                 mov     [rdi+70h], rax
.text:0000000140004853                 mov     rcx, rdi        ; DriverObject
.text:0000000140004856                 lea     rax, sub_140004580
.text:000000014000485D                 mov     [rdi+80h], rax
.text:0000000140004864                 lea     rax, sub_140004604
.text:000000014000486B                 mov     [rdi+90h], rax
.text:0000000140004872                 lea     rax, [rbp+arg_8]
.text:0000000140004876                 mov     [rsp+70h+DeviceObject], rax ; DeviceObject
.text:000000014000487B                 mov     [rsp+70h+Exclusive], sil ; Exclusive
.text:0000000140004880                 mov     [rsp+70h+DeviceCharacteristics], esi ; DeviceCharacteristics
.text:0000000140004884                 call    cs:IoCreateDevice
.text:000000014000488A                 mov     ebx, eax
.text:000000014000488C                 test    eax, eax
.text:000000014000488E                 jns     short loc_1400048A8
.text:0000000140004890                 lea     rcx, [rbp+var_30]
.text:0000000140004894                 call    sub_140004AC0
.text:0000000140004899                 lea     rcx, [rbp+DeviceName]
.text:000000014000489D                 call    sub_140004AC0
.text:00000001400048A2
.text:00000001400048A2 loc_1400048A2:                          ; CODE XREF: DriverEntry+77↑j
.text:00000001400048A2                 lea     rcx, [rbp+SymbolicLinkName]
.text:00000001400048A6                 jmp     short loc_14000491B
.text:00000001400048A8 ; ---------------------------------------------------------------------------
.text:00000001400048A8
.text:00000001400048A8 loc_1400048A8:                          ; CODE XREF: DriverEntry+D6↑j
.text:00000001400048A8                 mov     rax, [rbp+arg_8]
.text:00000001400048AC                 or      dword ptr [rax+30h], 4
.text:00000001400048B0                 movups  xmm0, [rbp+var_30]
.text:00000001400048B4                 movups  xmm1, xmmword ptr [rbp+SymbolicLinkName.Length]
.text:00000001400048B8                 movdqu  cs:xmmword_14000CD78, xmm0
.text:00000001400048C0                 movdqu  xmmword ptr cs:SymbolicLinkName.Length, xmm1
.text:00000001400048C8                 call    sub_1400015F8
.text:00000001400048CD                 mov     rcx, rdi
.text:00000001400048D0                 call    sub_140003550
.text:00000001400048D5                 mov     ebx, eax
.text:00000001400048D7                 test    eax, eax
.text:00000001400048D9                 js      short loc_140004909
.text:00000001400048DB                 call    sub_140002A18
.text:00000001400048E0                 mov     ebx, eax
.text:00000001400048E2                 test    eax, eax
.text:00000001400048E4                 js      short loc_1400048FF
.text:00000001400048E6                 lea     rdx, [rbp+DeviceName] ; DeviceName
.text:00000001400048EA                 lea     rcx, [rbp+SymbolicLinkName] ; SymbolicLinkName
.text:00000001400048EE                 call    cs:IoCreateSymbolicLink
.text:00000001400048F4                 mov     ebx, eax
.text:00000001400048F6                 test    eax, eax
.text:00000001400048F8                 jns     short loc_140004915
.text:00000001400048FA                 call    nullsub_1
.text:00000001400048FF
.text:00000001400048FF loc_1400048FF:                          ; CODE XREF: DriverEntry+12C↑j
.text:00000001400048FF                 call    sub_1400034D8
.text:0000000140004904                 call    nullsub_1
.text:0000000140004909
.text:0000000140004909 loc_140004909:                          ; CODE XREF: DriverEntry+121↑j
.text:0000000140004909                 mov     rcx, [rbp+arg_8] ; DeviceObject
.text:000000014000490D                 call    cs:IoDeleteDevice
.text:0000000140004913                 jmp     short loc_140004917
.text:0000000140004915 ; ---------------------------------------------------------------------------
.text:0000000140004915
.text:0000000140004915 loc_140004915:                          ; CODE XREF: DriverEntry+140↑j
.text:0000000140004915                 mov     ebx, esi
.text:0000000140004917
.text:0000000140004917 loc_140004917:                          ; CODE XREF: DriverEntry+15B↑j
.text:0000000140004917                 lea     rcx, [rbp+DeviceName]
.text:000000014000491B
.text:000000014000491B loc_14000491B:                          ; CODE XREF: DriverEntry+EE↑j
.text:000000014000491B                 call    sub_140004AC0
.text:0000000140004920                 mov     eax, ebx
.text:0000000140004922
.text:0000000140004922 loc_140004922:                          ; CODE XREF: DriverEntry+2A↑j
.text:0000000140004922                 lea     r11, [rsp+70h+var_s0]
.text:0000000140004927                 mov     rbx, [r11+10h]
.text:000000014000492B                 mov     rsi, [r11+20h]
.text:000000014000492F                 mov     rdi, [r11+28h]
.text:0000000140004933                 mov     rsp, r11
.text:0000000140004936                 pop     rbp
.text:0000000140004937                 retn
.text:0000000140004937 DriverEntry     endp
.text:0000000140004937
