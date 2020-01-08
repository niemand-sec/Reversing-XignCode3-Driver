.text:00000001400015F8 ; =============== S U B R O U T I N E =======================================
.text:00000001400015F8
.text:00000001400015F8
.text:00000001400015F8 sub_1400015F8   proc near               ; CODE XREF: DriverEntry+110↓p
.text:00000001400015F8                                         ; DATA XREF: .pdata:000000014000D084↓o
.text:00000001400015F8                 sub     rsp, 28h
.text:00000001400015FC                 xor     edx, edx        ; Val
.text:00000001400015FE                 lea     rcx, dword_140009E40 ; Dst
.text:0000000140001605                 mov     r8d, 400h       ; Size
.text:000000014000160B                 call    memset
.text:0000000140001610                 lea     rax, sub_140001058
.text:0000000140001617                 mov     cs:dword_140009E40, 306h
.text:0000000140001621                 mov     cs:qword_140009E48, rax
.text:0000000140001628                 lea     rax, sub_14000101C
.text:000000014000162F                 mov     cs:qword_140009E58, rax
.text:0000000140001636                 lea     rax, sub_140001CC8
.text:000000014000163D                 mov     cs:qword_140009E68, rax
.text:0000000140001644                 lea     rax, sub_140001BFC
.text:000000014000164B                 mov     cs:qword_140009E78, rax
.text:0000000140001652                 lea     rax, sub_140001DC0
.text:0000000140001659                 mov     cs:qword_140009E88, rax
.text:0000000140001660                 lea     rax, sub_140001B50
.text:0000000140001667                 mov     cs:qword_140009E98, rax
.text:000000014000166E                 lea     rax, sub_140001C3C
.text:0000000140001675                 mov     cs:qword_140009EA8, rax
.text:000000014000167C                 lea     rax, sub_140001D04
.text:0000000140001683                 mov     cs:qword_140009EB8, rax
.text:000000014000168A                 lea     rax, sub_14000137C
.text:0000000140001691                 mov     cs:qword_140009EC8, rax
.text:0000000140001698                 lea     rax, sub_14000191C
.text:000000014000169F                 mov     cs:qword_140009ED8, rax
.text:00000001400016A6                 lea     rax, sub_140001340
.text:00000001400016AD                 mov     cs:qword_140009EE8, rax
.text:00000001400016B4                 lea     rax, sub_140001A58
.text:00000001400016BB                 mov     cs:qword_140009EF8, rax
.text:00000001400016C2                 lea     rax, sub_1400019A4
.text:00000001400016C9                 mov     cs:qword_140009F08, rax
.text:00000001400016D0                 lea     rax, sub_140001224
.text:00000001400016D7                 mov     cs:qword_140009F18, rax
.text:00000001400016DE                 lea     rax, sub_14000187C
.text:00000001400016E5                 mov     cs:qword_140009F28, rax
.text:00000001400016EC                 lea     rax, sub_140001488
.text:00000001400016F3                 mov     cs:qword_140009F38, rax
.text:00000001400016FA                 lea     rax, sub_140001548
.text:0000000140001701                 mov     cs:qword_140009F48, rax
.text:0000000140001708                 lea     rax, sub_1400013B8
.text:000000014000170F                 mov     cs:qword_140009F58, rax
.text:0000000140001716                 lea     rax, sub_140001264
.text:000000014000171D                 mov     cs:qword_140009F68, rax
.text:0000000140001724                 lea     rax, sub_14000150C
.text:000000014000172B                 mov     cs:qword_140009F78, rax
.text:0000000140001732                 lea     rax, sub_140001174
.text:0000000140001739                 mov     cs:qword_140009F88, rax
.text:0000000140001740                 lea     rax, sub_1400015CC
.text:0000000140001747                 mov     cs:qword_140009F98, rax
.text:000000014000174E                 lea     rax, sub_14000107C
.text:0000000140001755                 mov     cs:qword_140009FA8, rax
.text:000000014000175C                 lea     rax, sub_140001D4C
.text:0000000140001763                 mov     cs:qword_140009FB8, rax
.text:000000014000176A                 lea     rax, sub_140001D88
.text:0000000140001771                 mov     cs:qword_140009FC8, rax
.text:0000000140001778                 xor     eax, eax
.text:000000014000177A                 mov     cs:dword_140009E50, 307h
.text:0000000140001784                 mov     cs:dword_140009E60, 308h
.text:000000014000178E                 mov     cs:dword_140009E70, 309h
.text:0000000140001798                 mov     cs:dword_140009E80, 30Ah
.text:00000001400017A2                 mov     cs:dword_140009E90, 30Bh
.text:00000001400017AC                 mov     cs:dword_140009EA0, 316h
.text:00000001400017B6                 mov     cs:dword_140009EB0, 30Eh
.text:00000001400017C0                 mov     cs:dword_140009EC0, 30Fh
.text:00000001400017CA                 mov     cs:dword_140009ED0, 311h
.text:00000001400017D4                 mov     cs:dword_140009EE0, 312h
.text:00000001400017DE                 mov     cs:dword_140009EF0, 313h
.text:00000001400017E8                 mov     cs:dword_140009F00, 314h
.text:00000001400017F2                 mov     cs:dword_140009F10, 315h
.text:00000001400017FC                 mov     cs:dword_140009F20, 317h
.text:0000000140001806                 mov     cs:dword_140009F30, 318h
.text:0000000140001810                 mov     cs:dword_140009F40, 319h
.text:000000014000181A                 mov     cs:dword_140009F50, 31Ah
.text:0000000140001824                 mov     cs:dword_140009F60, 31Ch
.text:000000014000182E                 mov     cs:dword_140009F70, 31Dh
.text:0000000140001838                 mov     cs:dword_140009F80, 31Eh
.text:0000000140001842                 mov     cs:dword_140009F90, 31Fh
.text:000000014000184C                 mov     cs:dword_140009FA0, 320h
.text:0000000140001856                 mov     cs:dword_140009FB0, 321h
.text:0000000140001860                 mov     cs:dword_140009FC0, 322h
.text:000000014000186A                 mov     cs:dword_14000A240, 19h
.text:0000000140001874                 add     rsp, 28h
.text:0000000140001878                 retn
.text:0000000140001878 sub_1400015F8   endp
.text:0000000140001878