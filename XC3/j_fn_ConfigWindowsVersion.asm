.text:0000000140003C38
.text:0000000140003C38 ; =============== S U B R O U T I N E =======================================
.text:0000000140003C38
.text:0000000140003C38 ; Attributes: thunk
.text:0000000140003C38
.text:0000000140003C38 sub_140003C38   proc near               ; CODE XREF: sub_140003550+9A↑p
.text:0000000140003C38                 jmp     sub_14000646C
.text:0000000140003C38 sub_140003C38   endp
.text:0000000140003C38
.text:0000000140003C38 ; ---------------------------------------------------------------------------




.text:000000014000646C ; =============== S U B R O U T I N E =======================================
.text:000000014000646C
.text:000000014000646C
.text:000000014000646C sub_14000646C   proc near               ; CODE XREF: sub_140003C38↑j
.text:000000014000646C                                         ; DATA XREF: .pdata:000000014000D588↓o
.text:000000014000646C
.text:000000014000646C arg_0           = dword ptr  8
.text:000000014000646C arg_8           = dword ptr  10h
.text:000000014000646C arg_10          = dword ptr  18h
.text:000000014000646C
.text:000000014000646C                 sub     rsp, 28h
.text:0000000140006470                 xor     r9d, r9d
.text:0000000140006473                 lea     r8, [rsp+28h+arg_8]
.text:0000000140006478                 lea     rdx, [rsp+28h+arg_0]
.text:000000014000647D                 lea     rcx, [rsp+28h+arg_10]
.text:0000000140006482                 call    cs:PsGetVersion
.text:0000000140006488                 mov     ecx, [rsp+28h+arg_10]
.text:000000014000648C                 mov     eax, [rsp+28h+arg_8]
.text:0000000140006490                 mov     cs:dword_14000CDEC, eax
.text:0000000140006496                 cmp     ecx, 0Ah
.text:0000000140006499                 jnz     loc_1400067B0
.text:000000014000649F                 cmp     [rsp+28h+arg_0], 0
.text:00000001400064A4                 jnz     loc_140006A42
.text:00000001400064AA                 mov     ecx, 295Ah
.text:00000001400064AF                 cmp     eax, ecx
.text:00000001400064B1                 jnb     short loc_14000652B
.text:00000001400064B3                 lea     rax, off_140009A00
.text:00000001400064BA                 mov     cs:dword_14000CDE8, 9
.text:00000001400064C4                 mov     cs:qword_14000CDF0, rax
.text:00000001400064CB                 lea     rax, off_140009A48
.text:00000001400064D2                 mov     cs:qword_14000CDF8, rax
.text:00000001400064D9                 lea     rax, off_140009A68
.text:00000001400064E0                 mov     cs:qword_14000CE00, rax
.text:00000001400064E7                 lea     rax, off_140009A70
.text:00000001400064EE                 mov     cs:qword_14000CE08, rax
.text:00000001400064F5                 lea     rax, off_140009A78
.text:00000001400064FC                 mov     cs:qword_14000CE10, rax
.text:0000000140006503                 lea     rax, off_140009A80
.text:000000014000650A                 mov     cs:qword_14000CE18, rax
.text:0000000140006511                 lea     rax, off_140009AA8
.text:0000000140006518                 mov     cs:qword_14000CE20, rax
.text:000000014000651F                 lea     rax, off_140009AB8
.text:0000000140006526                 jmp     loc_140006A37
.text:000000014000652B ; ---------------------------------------------------------------------------
.text:000000014000652B
.text:000000014000652B loc_14000652B:                          ; CODE XREF: sub_14000646C+45↑j
.text:000000014000652B                 ja      short loc_1400065A5
.text:000000014000652D                 lea     rax, off_140009AD0
.text:0000000140006534                 mov     cs:dword_14000CDE8, 0Ah
.text:000000014000653E                 mov     cs:qword_14000CDF0, rax
.text:0000000140006545                 lea     rax, off_140009B18
.text:000000014000654C                 mov     cs:qword_14000CDF8, rax
.text:0000000140006553                 lea     rax, off_140009B38
.text:000000014000655A                 mov     cs:qword_14000CE00, rax
.text:0000000140006561                 lea     rax, off_140009B40
.text:0000000140006568                 mov     cs:qword_14000CE08, rax
.text:000000014000656F                 lea     rax, off_140009B48
.text:0000000140006576                 mov     cs:qword_14000CE10, rax
.text:000000014000657D                 lea     rax, off_140009B50
.text:0000000140006584                 mov     cs:qword_14000CE18, rax
.text:000000014000658B                 lea     rax, off_140009B78
.text:0000000140006592                 mov     cs:qword_14000CE20, rax
.text:0000000140006599                 lea     rax, off_140009B88
.text:00000001400065A0                 jmp     loc_140006A37
.text:00000001400065A5 ; ---------------------------------------------------------------------------
.text:00000001400065A5
.text:00000001400065A5 loc_1400065A5:                          ; CODE XREF: sub_14000646C:loc_14000652B↑j
.text:00000001400065A5                 cmp     eax, 3839h
.text:00000001400065AA                 ja      short loc_140006624
.text:00000001400065AC                 lea     rax, off_140009D40
.text:00000001400065B3                 mov     cs:dword_14000CDE8, 0Bh
.text:00000001400065BD                 mov     cs:qword_14000CDF0, rax
.text:00000001400065C4                 lea     rax, off_140009D88
.text:00000001400065CB                 mov     cs:qword_14000CDF8, rax
.text:00000001400065D2                 lea     rax, off_140009D38
.text:00000001400065D9                 mov     cs:qword_14000CE00, rax
.text:00000001400065E0                 lea     rax, off_140009DA8
.text:00000001400065E7                 mov     cs:qword_14000CE08, rax
.text:00000001400065EE                 lea     rax, off_140009DB0
.text:00000001400065F5                 mov     cs:qword_14000CE10, rax
.text:00000001400065FC                 lea     rax, off_140009DB8
.text:0000000140006603                 mov     cs:qword_14000CE18, rax
.text:000000014000660A                 lea     rax, off_140009DE0
.text:0000000140006611                 mov     cs:qword_14000CE20, rax
.text:0000000140006618                 lea     rax, off_140009DF0
.text:000000014000661F                 jmp     loc_140006A37
.text:0000000140006624 ; ---------------------------------------------------------------------------
.text:0000000140006624
.text:0000000140006624 loc_140006624:                          ; CODE XREF: sub_14000646C+13E↑j
.text:0000000140006624                 cmp     eax, 3AD7h
.text:0000000140006629                 ja      short loc_1400066A3
.text:000000014000662B                 mov     cs:dword_14000CDE8, 0Ch
.text:0000000140006635
.text:0000000140006635 loc_140006635:                          ; CODE XREF: sub_14000646C+33F↓j
.text:0000000140006635                 lea     rax, off_140009520
.text:000000014000663C                 mov     cs:qword_14000CDF0, rax
.text:0000000140006643                 lea     rax, off_140009568
.text:000000014000664A                 mov     cs:qword_14000CDF8, rax
.text:0000000140006651                 lea     rax, off_140009588
.text:0000000140006658                 mov     cs:qword_14000CE00, rax
.text:000000014000665F                 lea     rax, off_140009590
.text:0000000140006666                 mov     cs:qword_14000CE08, rax
.text:000000014000666D                 lea     rax, off_140009598
.text:0000000140006674                 mov     cs:qword_14000CE10, rax
.text:000000014000667B                 lea     rax, off_1400095A0
.text:0000000140006682                 mov     cs:qword_14000CE18, rax
.text:0000000140006689                 lea     rax, off_1400095C8
.text:0000000140006690                 mov     cs:qword_14000CE20, rax
.text:0000000140006697                 lea     rax, off_1400096A8
.text:000000014000669E                 jmp     loc_140006A37
.text:00000001400066A3 ; ---------------------------------------------------------------------------
.text:00000001400066A3
.text:00000001400066A3 loc_1400066A3:                          ; CODE XREF: sub_14000646C+1BD↑j
.text:00000001400066A3                 cmp     eax, 3FABh
.text:00000001400066A8                 ja      short loc_140006722
.text:00000001400066AA                 lea     rax, off_140009BA0
.text:00000001400066B1                 mov     cs:dword_14000CDE8, 0Dh
.text:00000001400066BB                 mov     cs:qword_14000CDF0, rax
.text:00000001400066C2                 lea     rax, off_140009BE8
.text:00000001400066C9                 mov     cs:qword_14000CDF8, rax
.text:00000001400066D0                 lea     rax, off_140009C08
.text:00000001400066D7                 mov     cs:qword_14000CE00, rax
.text:00000001400066DE                 lea     rax, off_140009C10
.text:00000001400066E5                 mov     cs:qword_14000CE08, rax
.text:00000001400066EC                 lea     rax, off_140009C18
.text:00000001400066F3                 mov     cs:qword_14000CE10, rax
.text:00000001400066FA                 lea     rax, off_140009C20
.text:0000000140006701                 mov     cs:qword_14000CE18, rax
.text:0000000140006708                 lea     rax, off_140009C48
.text:000000014000670F                 mov     cs:qword_14000CE20, rax
.text:0000000140006716                 lea     rax, off_140009C58
.text:000000014000671D                 jmp     loc_140006A37
.text:0000000140006722 ; ---------------------------------------------------------------------------
.text:0000000140006722
.text:0000000140006722 loc_140006722:                          ; CODE XREF: sub_14000646C+23C↑j
.text:0000000140006722                 cmp     eax, 42EEh
.text:0000000140006727                 ja      short loc_1400067A1
.text:0000000140006729                 lea     rax, off_140009C70
.text:0000000140006730                 mov     cs:dword_14000CDE8, 0Eh
.text:000000014000673A                 mov     cs:qword_14000CDF0, rax
.text:0000000140006741                 lea     rax, off_140009CB8
.text:0000000140006748                 mov     cs:qword_14000CDF8, rax
.text:000000014000674F                 lea     rax, unk_14000CE30
.text:0000000140006756                 mov     cs:qword_14000CE00, rax
.text:000000014000675D                 lea     rax, off_140009CD8
.text:0000000140006764                 mov     cs:qword_14000CE08, rax
.text:000000014000676B                 lea     rax, off_140009CE0
.text:0000000140006772                 mov     cs:qword_14000CE10, rax
.text:0000000140006779                 lea     rax, off_140009CE8
.text:0000000140006780                 mov     cs:qword_14000CE18, rax
.text:0000000140006787                 lea     rax, off_140009D10
.text:000000014000678E                 mov     cs:qword_14000CE20, rax
.text:0000000140006795                 lea     rax, off_140009D20
.text:000000014000679C                 jmp     loc_140006A37
.text:00000001400067A1 ; ---------------------------------------------------------------------------
.text:00000001400067A1
.text:00000001400067A1 loc_1400067A1:                          ; CODE XREF: sub_14000646C+2BB↑j
.text:00000001400067A1                 mov     cs:dword_14000CDE8, 0Fh
.text:00000001400067AB                 jmp     loc_140006635
.text:00000001400067B0 ; ---------------------------------------------------------------------------
.text:00000001400067B0
.text:00000001400067B0 loc_1400067B0:                          ; CODE XREF: sub_14000646C+2D↑j
.text:00000001400067B0                 cmp     ecx, 6
.text:00000001400067B3                 jnz     loc_1400069B4
.text:00000001400067B9                 mov     eax, [rsp+28h+arg_0]
.text:00000001400067BD                 cmp     eax, 3
.text:00000001400067C0                 jnz     short loc_14000683A
.text:00000001400067C2                 lea     rax, off_140009930
.text:00000001400067C9                 mov     cs:dword_14000CDE8, 8
.text:00000001400067D3                 mov     cs:qword_14000CDF0, rax
.text:00000001400067DA                 lea     rax, off_140009978
.text:00000001400067E1                 mov     cs:qword_14000CDF8, rax
.text:00000001400067E8                 lea     rax, off_140009998
.text:00000001400067EF                 mov     cs:qword_14000CE00, rax
.text:00000001400067F6                 lea     rax, off_1400099A0
.text:00000001400067FD                 mov     cs:qword_14000CE08, rax
.text:0000000140006804                 lea     rax, off_1400099A8
.text:000000014000680B                 mov     cs:qword_14000CE10, rax
.text:0000000140006812                 lea     rax, off_1400099B0
.text:0000000140006819                 mov     cs:qword_14000CE18, rax
.text:0000000140006820                 lea     rax, off_1400099D8
.text:0000000140006827                 mov     cs:qword_14000CE20, rax
.text:000000014000682E                 lea     rax, off_1400099E8
.text:0000000140006835                 jmp     loc_140006A37
.text:000000014000683A ; ---------------------------------------------------------------------------
.text:000000014000683A
.text:000000014000683A loc_14000683A:                          ; CODE XREF: sub_14000646C+354↑j
.text:000000014000683A                 cmp     eax, 2
.text:000000014000683D                 jnz     short loc_1400068B7
.text:000000014000683F                 lea     rax, off_140009860
.text:0000000140006846                 mov     cs:dword_14000CDE8, 7
.text:0000000140006850                 mov     cs:qword_14000CDF0, rax
.text:0000000140006857                 lea     rax, off_1400098A8
.text:000000014000685E                 mov     cs:qword_14000CDF8, rax
.text:0000000140006865                 lea     rax, off_1400098C8
.text:000000014000686C                 mov     cs:qword_14000CE00, rax
.text:0000000140006873                 lea     rax, off_1400098D0
.text:000000014000687A                 mov     cs:qword_14000CE08, rax
.text:0000000140006881                 lea     rax, off_1400098D8
.text:0000000140006888                 mov     cs:qword_14000CE10, rax
.text:000000014000688F                 lea     rax, off_1400098E0
.text:0000000140006896                 mov     cs:qword_14000CE18, rax
.text:000000014000689D                 lea     rax, off_140009908
.text:00000001400068A4                 mov     cs:qword_14000CE20, rax
.text:00000001400068AB                 lea     rax, off_140009918
.text:00000001400068B2                 jmp     loc_140006A37
.text:00000001400068B7 ; ---------------------------------------------------------------------------
.text:00000001400068B7
.text:00000001400068B7 loc_1400068B7:                          ; CODE XREF: sub_14000646C+3D1↑j
.text:00000001400068B7                 cmp     eax, 1
.text:00000001400068BA                 jnz     short loc_140006934
.text:00000001400068BC                 lea     rax, off_1400095E0
.text:00000001400068C3                 mov     cs:dword_14000CDE8, 6
.text:00000001400068CD                 mov     cs:qword_14000CDF0, rax
.text:00000001400068D4                 lea     rax, off_140009628
.text:00000001400068DB                 mov     cs:qword_14000CDF8, rax
.text:00000001400068E2                 lea     rax, off_1400095D8
.text:00000001400068E9                 mov     cs:qword_14000CE00, rax
.text:00000001400068F0                 lea     rax, off_140009648
.text:00000001400068F7                 mov     cs:qword_14000CE08, rax
.text:00000001400068FE                 lea     rax, off_140009650
.text:0000000140006905                 mov     cs:qword_14000CE10, rax
.text:000000014000690C                 lea     rax, off_140009658
.text:0000000140006913                 mov     cs:qword_14000CE18, rax
.text:000000014000691A                 lea     rax, off_140009680
.text:0000000140006921                 mov     cs:qword_14000CE20, rax
.text:0000000140006928                 lea     rax, off_140009690
.text:000000014000692F                 jmp     loc_140006A37
.text:0000000140006934 ; ---------------------------------------------------------------------------
.text:0000000140006934
.text:0000000140006934 loc_140006934:                          ; CODE XREF: sub_14000646C+44E↑j
.text:0000000140006934                 test    eax, eax
.text:0000000140006936                 jnz     loc_140006A42
.text:000000014000693C                 lea     rax, off_140009790
.text:0000000140006943                 mov     cs:dword_14000CDE8, 4
.text:000000014000694D                 mov     cs:qword_14000CDF0, rax
.text:0000000140006954                 lea     rax, off_1400097D8
.text:000000014000695B                 mov     cs:qword_14000CDF8, rax
.text:0000000140006962                 lea     rax, off_1400097F8
.text:0000000140006969                 mov     cs:qword_14000CE00, rax
.text:0000000140006970                 lea     rax, off_140009800
.text:0000000140006977                 mov     cs:qword_14000CE08, rax
.text:000000014000697E                 lea     rax, off_140009808
.text:0000000140006985                 mov     cs:qword_14000CE10, rax
.text:000000014000698C                 lea     rax, off_140009810
.text:0000000140006993                 mov     cs:qword_14000CE18, rax
.text:000000014000699A                 lea     rax, off_140009838
.text:00000001400069A1                 mov     cs:qword_14000CE20, rax
.text:00000001400069A8                 lea     rax, off_140009848
.text:00000001400069AF                 jmp     loc_140006A37
.text:00000001400069B4 ; ---------------------------------------------------------------------------
.text:00000001400069B4
.text:00000001400069B4 loc_1400069B4:                          ; CODE XREF: sub_14000646C+347↑j
.text:00000001400069B4                 cmp     ecx, 5
.text:00000001400069B7                 jnz     loc_140006A42
.text:00000001400069BD                 cmp     [rsp+28h+arg_0], 2
.text:00000001400069C2                 jnz     short loc_140006A42
.text:00000001400069C4                 lea     rax, off_1400096C0
.text:00000001400069CB                 mov     cs:dword_14000CDE8, 3
.text:00000001400069D5                 mov     cs:qword_14000CDF0, rax
.text:00000001400069DC                 lea     rax, off_140009708
.text:00000001400069E3                 mov     cs:qword_14000CDF8, rax
.text:00000001400069EA                 lea     rax, off_140009728
.text:00000001400069F1                 mov     cs:qword_14000CE00, rax
.text:00000001400069F8                 lea     rax, off_140009730
.text:00000001400069FF                 mov     cs:qword_14000CE08, rax
.text:0000000140006A06                 lea     rax, off_140009738
.text:0000000140006A0D                 mov     cs:qword_14000CE10, rax
.text:0000000140006A14                 lea     rax, off_140009740
.text:0000000140006A1B                 mov     cs:qword_14000CE18, rax
.text:0000000140006A22                 lea     rax, off_140009768
.text:0000000140006A29                 mov     cs:qword_14000CE20, rax
.text:0000000140006A30                 lea     rax, off_140009778
.text:0000000140006A37
.text:0000000140006A37 loc_140006A37:                          ; CODE XREF: sub_14000646C+BA↑j
.text:0000000140006A37                                         ; sub_14000646C+134↑j ...
.text:0000000140006A37                 mov     cs:qword_14000CE28, rax
.text:0000000140006A3E                 xor     eax, eax
.text:0000000140006A40                 jmp     short loc_140006A4E
.text:0000000140006A42 ; ---------------------------------------------------------------------------
.text:0000000140006A42
.text:0000000140006A42 loc_140006A42:                          ; CODE XREF: sub_14000646C+38↑j
.text:0000000140006A42                                         ; sub_14000646C+4CA↑j ...
.text:0000000140006A42                 and     cs:dword_14000CDE8, 0
.text:0000000140006A49                 mov     eax, 0C0000001h
.text:0000000140006A4E
.text:0000000140006A4E loc_140006A4E:                          ; CODE XREF: sub_14000646C+5D4↑j
.text:0000000140006A4E                 add     rsp, 28h
.text:0000000140006A52                 retn
.text:0000000140006A52 sub_14000646C   endp
.text:0000000140006A52
.text:0000000140006A52 ; ---------------------------------------------------------------------------