#include "stdafx.h"
#include <stdlib.h>

extern "C" int DlinaStroki(char *s);
extern "C" char *CopyStr(char *s1, char *s2, int L);

int _tmain(int argc, _TCHAR* argv[])
{
	char s[100];
	printf("Vvedite Stroky\n");
	scanf_s("%99s", s,100);

	int L = 0;
	L = DlinaStroki(s);
	printf("DlinaStroki= %d\n", L);

	int kopiyaNachalo = 0;
	printf("Vvedite, s kakogo simvola kopirovat\n");
	scanf_s("%d", &kopiyaNachalo);

	
	char *ps1 = &s[0], *ps2 = &s[kopiyaNachalo], *ps;
	ps = CopyStr(ps2, ps1, L);

	printf("Stroka 2:\n");

	int i;
	for (i = 0; i<L && *ps != 0; i++)
	{
		printf("%c", *ps);
		ps++;
	}
	printf("\n");
	
	system("pause");
	return 0;
}
