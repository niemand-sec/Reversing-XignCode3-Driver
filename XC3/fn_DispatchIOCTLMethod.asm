.text:0000000140001E00
.text:0000000140001E00 ; =============== S U B R O U T I N E =======================================
.text:0000000140001E00
.text:0000000140001E00
.text:0000000140001E00 ; __int64 __fastcall fn_DispatchIOCTLMethod(__int64 a1, __int64 a1)
.text:0000000140001E00 fn_DispatchIOCTLMethod proc near        ; CODE XREF: sub_140004604+79↓p
.text:0000000140001E00                 mov     r9d, cs:dword_14000A240
.text:0000000140001E07                 xor     r8d, r8d
.text:0000000140001E0A                 test    r9d, r9d
.text:0000000140001E0D                 jz      short loc_140001E2E
.text:0000000140001E0F                 mov     r10d, [rcx+0Ch]
.text:0000000140001E13                 lea     r11, dword_140009E40
.text:0000000140001E1A
.text:0000000140001E1A loc_140001E1A:                          ; CODE XREF: fn_DispatchIOCTLMethod+2C↓j
.text:0000000140001E1A                 mov     eax, r8d
.text:0000000140001E1D                 add     rax, rax
.text:0000000140001E20                 cmp     [r11+rax*8], r10d
.text:0000000140001E24                 jz      short loc_140001E34
.text:0000000140001E26                 inc     r8d
.text:0000000140001E29                 cmp     r8d, r9d
.text:0000000140001E2C                 jb      short loc_140001E1A
.text:0000000140001E2E
.text:0000000140001E2E loc_140001E2E:                          ; CODE XREF: fn_DispatchIOCTLMethod+D↑j
.text:0000000140001E2E                 mov     eax, 0C0000001h
.text:0000000140001E33                 retn
.text:0000000140001E34 ; ---------------------------------------------------------------------------
.text:0000000140001E34
.text:0000000140001E34 loc_140001E34:                          ; CODE XREF: fn_DispatchIOCTLMethod+24↑j
.text:0000000140001E34                 mov     eax, r8d
.text:0000000140001E37                 add     rax, rax
.text:0000000140001E3A                 jmp     qword ptr [r11+rax*8+8]
.text:0000000140001E3A fn_DispatchIOCTLMethod endp
.text:0000000140001E3A
.text:0000000140001E3A ; ---------------------------------------------------------------------------