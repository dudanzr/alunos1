GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccpqaw8t.s 			page 1


   1              		.file	"Alunomain.c"
   2              		.intel_syntax noprefix
   3              		.text
   5              		.globl	main
   7              		.seh_proc	main
   8              	main:
   9 0000 55       		push	rbp
  10              		.seh_pushreg	rbp
  11 0001 4889E5   		mov	rbp, rsp
  12              		.seh_setframe	rbp, 0
  13 0004 4883EC40 		sub	rsp, 64
  14              		.seh_stackalloc	64
  15              		.seh_endprologue
  16 0008 E8000000 		call	__main
  16      00
  17 000d E8000000 		call	valida_nome
  17      00
  18 0012 E8000000 		call	valida_idade
  18      00
  19 0017 488D45E0 		lea	rax, -32[rbp]
  20 001b 4889C1   		mov	rcx, rax
  21 001e E8000000 		call	classificaAluno
  21      00
  22 0023 488D45E0 		lea	rax, -32[rbp]
  23 0027 4889C1   		mov	rcx, rax
  24 002a E8000000 		call	persisteAluno
  24      00
  25 002f B8000000 		mov	eax, 0
  25      00
  26 0034 4883C440 		add	rsp, 64
  27 0038 5D       		pop	rbp
  28 0039 C3       		ret
  29              		.seh_endproc
  30              		.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccpqaw8t.s 			page 2


DEFINED SYMBOLS
                            *ABS*:0000000000000000 Alunomain.c
C:\Users\Computer\AppData\Local\Temp\ccpqaw8t.s:8      .text:0000000000000000 main

UNDEFINED SYMBOLS
__main
valida_nome
valida_idade
classificaAluno
persisteAluno
