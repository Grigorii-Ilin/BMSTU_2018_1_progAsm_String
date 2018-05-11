
.586P
.MODEL FLAT, C

PUBLIC CopyStr; 
.data
.code
CopyStr PROC NEAR
STR_1   EQU    DWORD PTR [EBP+8]
STR_2   EQU    DWORD PTR [EBP+12]
L		EQU    DWORD PTR [EBP+16]
         PUSH   EBP
         MOV    EBP,ESP
         PUSH   ES ;DS
         PUSH   ESI
         PUSH   EDI

         MOV    EDI,STR_2
         MOV    ESI,STR_1
		 MOV ECX,L
		 CMP	ESI,EDI
		 JE		M0
		 JL		M1
		 STC
		 REP  MOVSB
		 JMP	M0
M1:		
		 STD
		 ADD	EDI,L
		 ADD	ESI,L
		 DEC	EDI
		 DEC	ESI
		 REP  MOVSB

M0:     
         MOV    EAX,STR_2

         POP     EDI
         POP     ESI
         POP     ES
         POP     EBP
         RET
CopyStr ENDP
END
