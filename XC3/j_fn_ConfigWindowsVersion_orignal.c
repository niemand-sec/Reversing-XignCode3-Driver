__int64 sub_140003C38(void)
{
	return sub_14000646C();
}


signed __int64 sub_14000646C()
{
	__int64(__fastcall **v0)(); // rax
	int v2; // [rsp+30h] [rbp+8h]
	unsigned int v3; // [rsp+38h] [rbp+10h]
	int v4; // [rsp+40h] [rbp+18h]

	PsGetVersion(&v4, &v2, &v3, 0i64);
	dword_14000CDEC = v3;
	if (v4 == 10)
	{
		if (!v2)
		{
			if (v3 >= 0x295A)
			{
				if (v3 > 0x295A)
				{
					if (v3 > 0x3839)
					{
						if (v3 > 0x3AD7)
						{
							if (v3 <= 0x3FAB)
							{
								dword_14000CDE8 = 13;
								qword_14000CDF0 = off_140009BA0;
								qword_14000CDF8 = off_140009BE8;
								qword_14000CE00 = off_140009C08;
								qword_14000CE08 = off_140009C10;
								qword_14000CE10 = off_140009C18;
								qword_14000CE18 = off_140009C20;
								qword_14000CE20 = off_140009C48;
								v0 = off_140009C58;
								goto LABEL_29;
							}
							if (v3 <= 0x42EE)
							{
								dword_14000CDE8 = 14;
								qword_14000CDF0 = off_140009C70;
								qword_14000CDF8 = off_140009CB8;
								qword_14000CE00 = &unk_14000CE30;
								qword_14000CE08 = off_140009CD8;
								qword_14000CE10 = off_140009CE0;
								qword_14000CE18 = off_140009CE8;
								qword_14000CE20 = off_140009D10;
								v0 = off_140009D20;
								goto LABEL_29;
							}
							dword_14000CDE8 = 15;
						}
						else
						{
							dword_14000CDE8 = 12;
						}
						qword_14000CDF0 = off_140009520;
						qword_14000CDF8 = off_140009568;
						qword_14000CE00 = off_140009588;
						qword_14000CE08 = off_140009590;
						qword_14000CE10 = off_140009598;
						qword_14000CE18 = off_1400095A0;
						qword_14000CE20 = off_1400095C8;
						v0 = off_1400096A8;
					}
					else
					{
						dword_14000CDE8 = 11;
						qword_14000CDF0 = off_140009D40;
						qword_14000CDF8 = off_140009D88;
						qword_14000CE00 = off_140009D38;
						qword_14000CE08 = off_140009DA8;
						qword_14000CE10 = off_140009DB0;
						qword_14000CE18 = off_140009DB8;
						qword_14000CE20 = off_140009DE0;
						v0 = off_140009DF0;
					}
				}
				else
				{
					dword_14000CDE8 = 10;
					qword_14000CDF0 = off_140009AD0;
					qword_14000CDF8 = off_140009B18;
					qword_14000CE00 = off_140009B38;
					qword_14000CE08 = off_140009B40;
					qword_14000CE10 = off_140009B48;
					qword_14000CE18 = off_140009B50;
					qword_14000CE20 = off_140009B78;
					v0 = off_140009B88;
				}
			}
			else
			{
				dword_14000CDE8 = 9;
				qword_14000CDF0 = off_140009A00;
				qword_14000CDF8 = off_140009A48;
				qword_14000CE00 = off_140009A68;
				qword_14000CE08 = off_140009A70;
				qword_14000CE10 = off_140009A78;
				qword_14000CE18 = off_140009A80;
				qword_14000CE20 = off_140009AA8;
				v0 = off_140009AB8;
			}
		LABEL_29:
			qword_14000CE28 = v0;
			return 0i64;
		}
	}
	else if (v4 == 6)
	{
		switch (v2)
		{
		case 3:
			dword_14000CDE8 = 8;
			qword_14000CDF0 = off_140009930;
			qword_14000CDF8 = off_140009978;
			qword_14000CE00 = off_140009998;
			qword_14000CE08 = off_1400099A0;
			qword_14000CE10 = off_1400099A8;
			qword_14000CE18 = off_1400099B0;
			qword_14000CE20 = off_1400099D8;
			v0 = off_1400099E8;
			goto LABEL_29;
		case 2:
			dword_14000CDE8 = 7;
			qword_14000CDF0 = off_140009860;
			qword_14000CDF8 = off_1400098A8;
			qword_14000CE00 = off_1400098C8;
			qword_14000CE08 = off_1400098D0;
			qword_14000CE10 = off_1400098D8;
			qword_14000CE18 = off_1400098E0;
			qword_14000CE20 = off_140009908;
			v0 = off_140009918;
			goto LABEL_29;
		case 1:
			dword_14000CDE8 = 6;
			qword_14000CDF0 = off_1400095E0;
			qword_14000CDF8 = off_140009628;
			qword_14000CE00 = off_1400095D8;
			qword_14000CE08 = off_140009648;
			qword_14000CE10 = off_140009650;
			qword_14000CE18 = off_140009658;
			qword_14000CE20 = off_140009680;
			v0 = off_140009690;
			goto LABEL_29;
		case 0:
			dword_14000CDE8 = 4;
			qword_14000CDF0 = off_140009790;
			qword_14000CDF8 = off_1400097D8;
			qword_14000CE00 = off_1400097F8;
			qword_14000CE08 = off_140009800;
			qword_14000CE10 = &off_140009808;
			qword_14000CE18 = &off_140009810;
			qword_14000CE20 = off_140009838;
			v0 = off_140009848;
			goto LABEL_29;
		}
	}
	else if (v4 == 5 && v2 == 2)
	{
		dword_14000CDE8 = 3;
		qword_14000CDF0 = off_1400096C0;
		qword_14000CDF8 = off_140009708;
		qword_14000CE00 = off_140009728;
		qword_14000CE08 = off_140009730;
		qword_14000CE10 = &off_140009738;
		qword_14000CE18 = &off_140009740;
		qword_14000CE20 = off_140009768;
		v0 = off_140009778;
		goto LABEL_29;
	}
	dword_14000CDE8 = 0;
	return 3221225473i64;
}