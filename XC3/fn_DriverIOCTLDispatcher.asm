.text:0000000140004604 ; =============== S U B R O U T I N E =======================================
.text:0000000140004604
.text:0000000140004604
.text:0000000140004604 sub_140004604   proc near               ; DATA XREF: DriverEntry+AC↓o
.text:0000000140004604                                         ; .pdata:000000014000D3D8↓o ...
.text:0000000140004604
.text:0000000140004604 var_338         = dword ptr -338h
.text:0000000140004604 var_334         = dword ptr -334h
.text:0000000140004604 var_330         = qword ptr -330h
.text:0000000140004604 var_328         = qword ptr -328h
.text:0000000140004604 MemoryDescriptorList= qword ptr -320h
.text:0000000140004604 v13             = qword ptr -318h
.text:0000000140004604 var_18          = qword ptr -18h
.text:0000000140004604 var_8           = byte ptr -8
.text:0000000140004604 arg_0           = qword ptr  8
.text:0000000140004604 arg_10          = qword ptr  18h
.text:0000000140004604 arg_18          = qword ptr  20h
.text:0000000140004604
.text:0000000140004604 ; __unwind { // __GSHandlerCheck_SEH
.text:0000000140004604                 mov     [rsp+arg_0], rbx
.text:0000000140004609                 mov     [rsp+arg_10], rsi
.text:000000014000460E                 mov     [rsp+arg_18], rdi
.text:0000000140004613                 push    r14
.text:0000000140004615                 sub     rsp, 350h
.text:000000014000461C                 mov     rax, cs:__security_cookie
.text:0000000140004623                 xor     rax, rsp
.text:0000000140004626                 mov     [rsp+358h+var_18], rax
.text:000000014000462E                 mov     rbx, rdx
.text:0000000140004631                 mov     [rsp+358h+var_328], rdx
.text:0000000140004636                 mov     rax, [rdx+0B8h]
.text:000000014000463D                 xor     esi, esi
.text:000000014000463F                 mov     [rsp+358h+var_338], esi
.text:0000000140004643                 mov     edi, 0C0000001h
.text:0000000140004648                 mov     [rsp+358h+var_334], edi
.text:000000014000464C                 mov     ecx, 270h
.text:0000000140004651                 cmp     [rax+8], ecx
.text:0000000140004654                 jnz     loc_140004778
.text:000000014000465A                 mov     r14, [rdx+18h]
.text:000000014000465E                 cmp     [r14], ecx
.text:0000000140004661                 jnz     loc_140004778
.text:0000000140004667                 cmp     dword ptr [r14+4], 345821ABh
.text:000000014000466F                 jnz     loc_140004778
.text:0000000140004675                 lea     rdx, [rsp+358h+v13] ; a2
.text:000000014000467A                 mov     rcx, r14        ; a1
.text:000000014000467D                 call    fn_DispatchIOCTLMethod
.text:0000000140004682                 mov     rcx, [r14+10h]
.text:0000000140004686                 lea     r8, [rsp+358h+MemoryDescriptorList]
.text:000000014000468B                 mov     r14d, 2FAh
.text:0000000140004691                 mov     edx, r14d
.text:0000000140004694                 call    sub_140003DBC
.text:0000000140004699                 mov     r8, rax
.text:000000014000469C                 mov     [rsp+358h+var_330], rax
.text:00000001400046A1                 test    rax, rax
.text:00000001400046A4                 jz      loc_140004778
.text:00000001400046AA
.text:00000001400046AA loc_1400046AA:                          ; DATA XREF: .rdata:0000000140008A5C↓o
.text:00000001400046AA ;   __try { // __except at loc_140004759
.text:00000001400046AA                 mov     rcx, rax
.text:00000001400046AD                 lea     rdx, [rsp+358h+v13]
.text:00000001400046B2                 lea     eax, [rsi+5]
.text:00000001400046B5                 lea     r9d, [rax+7Bh]
.text:00000001400046B9
.text:00000001400046B9 loc_1400046B9:                          ; CODE XREF: sub_140004604+FD↓j
.text:00000001400046B9                 movups  xmm0, xmmword ptr [rdx]
.text:00000001400046BC                 movups  xmmword ptr [rcx], xmm0
.text:00000001400046BF                 movups  xmm1, xmmword ptr [rdx+10h]
.text:00000001400046C3                 movups  xmmword ptr [rcx+10h], xmm1
.text:00000001400046C7                 movups  xmm0, xmmword ptr [rdx+20h]
.text:00000001400046CB                 movups  xmmword ptr [rcx+20h], xmm0
.text:00000001400046CF                 movups  xmm1, xmmword ptr [rdx+30h]
.text:00000001400046D3                 movups  xmmword ptr [rcx+30h], xmm1
.text:00000001400046D7                 movups  xmm0, xmmword ptr [rdx+40h]
.text:00000001400046DB                 movups  xmmword ptr [rcx+40h], xmm0
.text:00000001400046DF                 movups  xmm1, xmmword ptr [rdx+50h]
.text:00000001400046E3                 movups  xmmword ptr [rcx+50h], xmm1
.text:00000001400046E7                 movups  xmm0, xmmword ptr [rdx+60h]
.text:00000001400046EB                 movups  xmmword ptr [rcx+60h], xmm0
.text:00000001400046EF                 add     rcx, r9
.text:00000001400046F2                 movups  xmm1, xmmword ptr [rdx+70h]
.text:00000001400046F6                 movups  xmmword ptr [rcx-10h], xmm1
.text:00000001400046FA                 add     rdx, r9
.text:00000001400046FD                 sub     rax, 1
.text:0000000140004701                 jnz     short loc_1400046B9
.text:0000000140004703                 movups  xmm0, xmmword ptr [rdx]
.text:0000000140004706                 movups  xmmword ptr [rcx], xmm0
.text:0000000140004709                 movups  xmm1, xmmword ptr [rdx+10h]
.text:000000014000470D                 movups  xmmword ptr [rcx+10h], xmm1
.text:0000000140004711                 movups  xmm0, xmmword ptr [rdx+20h]
.text:0000000140004715                 movups  xmmword ptr [rcx+20h], xmm0
.text:0000000140004719                 movups  xmm1, xmmword ptr [rdx+30h]
.text:000000014000471D                 movups  xmmword ptr [rcx+30h], xmm1
.text:0000000140004721                 movups  xmm0, xmmword ptr [rdx+40h]
.text:0000000140004725                 movups  xmmword ptr [rcx+40h], xmm0
.text:0000000140004729                 movups  xmm1, xmmword ptr [rdx+50h]
.text:000000014000472D                 movups  xmmword ptr [rcx+50h], xmm1
.text:0000000140004731                 movups  xmm0, xmmword ptr [rdx+60h]
.text:0000000140004735                 movups  xmmword ptr [rcx+60h], xmm0
.text:0000000140004739                 mov     rax, [rdx+70h]
.text:000000014000473D                 mov     [rcx+70h], rax
.text:0000000140004741                 movzx   eax, word ptr [rdx+78h]
.text:0000000140004745                 mov     [rcx+78h], ax
.text:0000000140004749                 mov     edi, esi
.text:000000014000474B                 mov     [rsp+358h+var_334], esi
.text:000000014000474F                 mov     esi, r14d
.text:0000000140004752                 mov     [rsp+358h+var_338], r14d
.text:0000000140004757                 jmp     short loc_14000476B
.text:0000000140004757 ;   } // starts at 1400046AA
.text:0000000140004759 ; ---------------------------------------------------------------------------
.text:0000000140004759
.text:0000000140004759 loc_140004759:                          ; DATA XREF: .rdata:0000000140008A5C↓o
.text:0000000140004759 ;   __except(1) // owned by 1400046AA
.text:0000000140004759                 mov     esi, [rsp+358h+var_338]
.text:000000014000475D                 mov     edi, [rsp+358h+var_334]
.text:0000000140004761                 mov     r8, [rsp+358h+var_330]
.text:0000000140004766                 mov     rbx, [rsp+358h+var_328]
.text:000000014000476B
.text:000000014000476B loc_14000476B:                          ; CODE XREF: sub_140004604+153↑j
.text:000000014000476B                 mov     rdx, r8         ; BaseAddress
.text:000000014000476E                 mov     rcx, [rsp+358h+MemoryDescriptorList] ; MemoryDescriptorList
.text:0000000140004773                 call    sub_140003980
.text:0000000140004778
.text:0000000140004778 loc_140004778:                          ; CODE XREF: sub_140004604+50↑j
.text:0000000140004778                                         ; sub_140004604+5D↑j ...
.text:0000000140004778                 mov     [rbx+30h], edi
.text:000000014000477B                 mov     edx, esi
.text:000000014000477D                 mov     [rbx+38h], rdx
.text:0000000140004781                 xor     edx, edx        ; PriorityBoost
.text:0000000140004783                 mov     rcx, rbx        ; Irp
.text:0000000140004786                 call    cs:IofCompleteRequest
.text:000000014000478C                 mov     eax, edi
.text:000000014000478E                 mov     rcx, [rsp+358h+var_18]
.text:0000000140004796                 xor     rcx, rsp
.text:0000000140004799                 call    __security_check_cookie
.text:000000014000479E                 lea     r11, [rsp+358h+var_8]
.text:00000001400047A6                 mov     rbx, [r11+10h]
.text:00000001400047AA                 mov     rsi, [r11+20h]
.text:00000001400047AE                 mov     rdi, [r11+28h]
.text:00000001400047B2                 mov     rsp, r11
.text:00000001400047B5                 pop     r14
.text:00000001400047B7                 retn
.text:00000001400047B7 ; } // starts at 140004604
.text:00000001400047B7 sub_140004604   endp
.text:00000001400047B7