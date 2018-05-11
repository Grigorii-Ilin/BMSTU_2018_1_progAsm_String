.586P
.MODEL FLAT, C

PUBLIC DlinaStroki; int DlinaStroki(char *S)

.data
.code
DlinaStroki PROC NEAR

STR_1    EQU    DWORD PTR [EBP+8]
         PUSH   EBP  ;пролог
         MOV    EBP,ESP

         MOV    EDI,STR_1

		 MOV	AL,0
		 MOV	ECX,-1
		 CLD
         REPNE SCASB
         
		 NEG    ECX
         SUB ECX, 2

         MOV    EAX,ECX
         POP     EBP
         RET

DlinaStroki ENDP
END
