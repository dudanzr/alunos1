GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 1


   1              		.file	"InterfaceAluno.c"
   2              		.intel_syntax noprefix
   3              		.text
   4              	.Ltext0:
   5              		.cfi_sections	.debug_frame
   6              		.comm	nome, 100, 5
   7              		.comm	idade, 4, 2
   8              		.section .rdata,"dr"
   9              	.LC0:
  10 0000 44696769 		.ascii "Digite seu nome: \0"
  10      74652073 
  10      6575206E 
  10      6F6D653A 
  10      2000
  11 0012 00000000 		.align 8
  11      0000
  12              	.LC1:
  13 0018 456E7472 		.ascii "Entrada invalida. Por favor, digite apenas letras.\0"
  13      61646120 
  13      696E7661 
  13      6C696461 
  13      2E20506F 
  14              		.text
  15              		.globl	valida_nome
  17              		.seh_proc	valida_nome
  18              	valida_nome:
  19              	.LFB13:
  20              		.file 1 "C:/Users/Computer/ies/ies/IEST2/InterfaceAluno.c"
   1:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c **** #include <stdio.h>
   2:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c **** #include <ctype.h>
   3:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c **** 
   4:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c **** char nome[100];
   5:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c **** int idade;
   6:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c **** 
   7:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c **** void valida_nome() {
  21              		.loc 1 7 20
  22              		.cfi_startproc
  23 0000 55       		push	rbp
  24              		.seh_pushreg	rbp
  25              		.cfi_def_cfa_offset 16
  26              		.cfi_offset 6, -16
  27 0001 4889E5   		mov	rbp, rsp
  28              		.seh_setframe	rbp, 0
  29              		.cfi_def_cfa_register 6
  30 0004 4883EC30 		sub	rsp, 48
  31              		.seh_stackalloc	48
  32              		.seh_endprologue
   8:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****     int validoNome = 0;
  33              		.loc 1 8 9
  34 0008 C745FC00 		mov	DWORD PTR -4[rbp], 0
  34      000000
   9:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c **** 
  10:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****     while (!validoNome) {
  35              		.loc 1 10 11
  36 000f E9B80000 		jmp	.L2
  36      00
  37              	.L6:
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 2


  11:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****         printf("Digite seu nome: ");
  38              		.loc 1 11 9
  39 0014 488D0D00 		lea	rcx, .LC0[rip]
  39      000000
  40 001b E8000000 		call	printf
  40      00
  12:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****         fgets(nome, sizeof(nome), stdin);
  41              		.loc 1 12 9
  42 0020 B9000000 		mov	ecx, 0
  42      00
  43 0025 488B0500 		mov	rax, QWORD PTR __imp___acrt_iob_func[rip]
  43      000000
  44 002c FFD0     		call	rax
  45              	.LVL0:
  46 002e 4989C0   		mov	r8, rax
  47 0031 BA640000 		mov	edx, 100
  47      00
  48 0036 488D0500 		lea	rax, nome[rip]
  48      000000
  49 003d 4889C1   		mov	rcx, rax
  50 0040 E8000000 		call	fgets
  50      00
  13:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****         validoNome = 1;
  51              		.loc 1 13 20
  52 0045 C745FC01 		mov	DWORD PTR -4[rbp], 1
  52      000000
  53              	.LBB2:
  14:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****         for (int i = 0; nome[i] != '\0' && nome[i] != '\n'; i++) {
  54              		.loc 1 14 18
  55 004c C745F800 		mov	DWORD PTR -8[rbp], 0
  55      000000
  56              		.loc 1 14 9
  57 0053 EB4F     		jmp	.L3
  58              	.L5:
  15:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****             if (!isalpha(nome[i]) && nome[i] != ' ') {
  59              		.loc 1 15 30
  60 0055 488D1500 		lea	rdx, nome[rip]
  60      000000
  61 005c 8B45F8   		mov	eax, DWORD PTR -8[rbp]
  62 005f 4898     		cdqe
  63 0061 0FB60402 		movzx	eax, BYTE PTR [rdx+rax]
  64              		.loc 1 15 18
  65 0065 0FBEC0   		movsx	eax, al
  66 0068 89C1     		mov	ecx, eax
  67 006a 488B0500 		mov	rax, QWORD PTR __imp_isalpha[rip]
  67      000000
  68 0071 FFD0     		call	rax
  69              	.LVL1:
  70              		.loc 1 15 16
  71 0073 85C0     		test	eax, eax
  72 0075 7529     		jne	.L4
  73              		.loc 1 15 42 discriminator 1
  74 0077 488D1500 		lea	rdx, nome[rip]
  74      000000
  75 007e 8B45F8   		mov	eax, DWORD PTR -8[rbp]
  76 0081 4898     		cdqe
  77 0083 0FB60402 		movzx	eax, BYTE PTR [rdx+rax]
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 3


  78              		.loc 1 15 35 discriminator 1
  79 0087 3C20     		cmp	al, 32
  80 0089 7415     		je	.L4
  16:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****                 validoNome = 0;
  81              		.loc 1 16 28
  82 008b C745FC00 		mov	DWORD PTR -4[rbp], 0
  82      000000
  17:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****                 printf("Entrada invalida. Por favor, digite apenas letras.\n");
  83              		.loc 1 17 17
  84 0092 488D0D18 		lea	rcx, .LC1[rip]
  84      000000
  85 0099 E8000000 		call	puts
  85      00
  18:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****                 break;
  86              		.loc 1 18 17
  87 009e EB2C     		jmp	.L2
  88              	.L4:
  14:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****             if (!isalpha(nome[i]) && nome[i] != ' ') {
  89              		.loc 1 14 62 discriminator 2
  90 00a0 8345F801 		add	DWORD PTR -8[rbp], 1
  91              	.L3:
  14:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****             if (!isalpha(nome[i]) && nome[i] != ' ') {
  92              		.loc 1 14 29 discriminator 1
  93 00a4 488D1500 		lea	rdx, nome[rip]
  93      000000
  94 00ab 8B45F8   		mov	eax, DWORD PTR -8[rbp]
  95 00ae 4898     		cdqe
  96 00b0 0FB60402 		movzx	eax, BYTE PTR [rdx+rax]
  14:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****             if (!isalpha(nome[i]) && nome[i] != ' ') {
  97              		.loc 1 14 9 discriminator 1
  98 00b4 84C0     		test	al, al
  99 00b6 7414     		je	.L2
  14:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****             if (!isalpha(nome[i]) && nome[i] != ' ') {
 100              		.loc 1 14 48 discriminator 3
 101 00b8 488D1500 		lea	rdx, nome[rip]
 101      000000
 102 00bf 8B45F8   		mov	eax, DWORD PTR -8[rbp]
 103 00c2 4898     		cdqe
 104 00c4 0FB60402 		movzx	eax, BYTE PTR [rdx+rax]
  14:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****             if (!isalpha(nome[i]) && nome[i] != ' ') {
 105              		.loc 1 14 41 discriminator 3
 106 00c8 3C0A     		cmp	al, 10
 107 00ca 7589     		jne	.L5
 108              	.L2:
 109              	.LBE2:
  10:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****         printf("Digite seu nome: ");
 110              		.loc 1 10 11
 111 00cc 837DFC00 		cmp	DWORD PTR -4[rbp], 0
 112 00d0 0F843EFF 		je	.L6
 112      FFFF
  19:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****             }
  20:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****         }
  21:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****     }
  22:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c **** }
 113              		.loc 1 22 1
 114 00d6 90       		nop
 115 00d7 4883C430 		add	rsp, 48
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 4


 116 00db 5D       		pop	rbp
 117              		.cfi_restore 6
 118              		.cfi_def_cfa 7, 8
 119 00dc C3       		ret
 120              		.cfi_endproc
 121              	.LFE13:
 122              		.seh_endproc
 123              		.section .rdata,"dr"
 124              	.LC2:
 125 004b 44696769 		.ascii "Digite sua idade: \0"
 125      74652073 
 125      75612069 
 125      64616465 
 125      3A2000
 126              	.LC3:
 127 005e 256400   		.ascii "%d\0"
 128 0061 00000000 		.align 8
 128      000000
 129              	.LC4:
 130 0068 456E7472 		.ascii "Entrada invalida. Por favor, digite apenas numeros inteiros.\0"
 130      61646120 
 130      696E7661 
 130      6C696461 
 130      2E20506F 
 131 00a5 00000000 		.text
 131      00000000 
 131      000000
 132              		.globl	valida_idade
 134              		.seh_proc	valida_idade
 135              	valida_idade:
 136              	.LFB14:
  23:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c **** 
  24:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c **** void valida_idade() {
 137              		.loc 1 24 21
 138              		.cfi_startproc
 139 00dd 55       		push	rbp
 140              		.seh_pushreg	rbp
 141              		.cfi_def_cfa_offset 16
 142              		.cfi_offset 6, -16
 143 00de 4889E5   		mov	rbp, rsp
 144              		.seh_setframe	rbp, 0
 145              		.cfi_def_cfa_register 6
 146 00e1 4883EC30 		sub	rsp, 48
 147              		.seh_stackalloc	48
 148              		.seh_endprologue
  25:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****     int validoIdade = 0;
 149              		.loc 1 25 9
 150 00e5 C745FC00 		mov	DWORD PTR -4[rbp], 0
 150      000000
  26:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****     char c;
  27:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c **** 
  28:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****     while (!validoIdade) {
 151              		.loc 1 28 11
 152 00ec EB3C     		jmp	.L8
 153              	.L10:
  29:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****         printf("Digite sua idade: ");
 154              		.loc 1 29 9
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 5


 155 00ee 488D0D4B 		lea	rcx, .LC2[rip]
 155      000000
 156 00f5 E8000000 		call	printf
 156      00
  30:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****         if (scanf("%d", &idade) == 1) {
 157              		.loc 1 30 13
 158 00fa 488D0500 		lea	rax, idade[rip]
 158      000000
 159 0101 4889C2   		mov	rdx, rax
 160 0104 488D0D5E 		lea	rcx, .LC3[rip]
 160      000000
 161 010b E8000000 		call	scanf
 161      00
 162              		.loc 1 30 12
 163 0110 83F801   		cmp	eax, 1
 164 0113 7509     		jne	.L9
  31:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****             validoIdade = 1;
 165              		.loc 1 31 25
 166 0115 C745FC01 		mov	DWORD PTR -4[rbp], 1
 166      000000
 167 011c EB0C     		jmp	.L8
 168              	.L9:
  32:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****         } else {
  33:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****             printf("Entrada invalida. Por favor, digite apenas numeros inteiros.\n");
 169              		.loc 1 33 13
 170 011e 488D0D68 		lea	rcx, .LC4[rip]
 170      000000
 171 0125 E8000000 		call	puts
 171      00
 172              	.L8:
  28:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****         printf("Digite sua idade: ");
 173              		.loc 1 28 11
 174 012a 837DFC00 		cmp	DWORD PTR -4[rbp], 0
 175 012e 74BE     		je	.L10
  34:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****         }
  35:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c ****     }
  36:C:/Users/Computer/ies/ies/IEST2\InterfaceAluno.c **** }
 176              		.loc 1 36 1
 177 0130 90       		nop
 178 0131 4883C430 		add	rsp, 48
 179 0135 5D       		pop	rbp
 180              		.cfi_restore 6
 181              		.cfi_def_cfa 7, 8
 182 0136 C3       		ret
 183              		.cfi_endproc
 184              	.LFE14:
 185              		.seh_endproc
 186              	.Letext0:
 187              		.file 2 "C:/Program Files/CodeBlocks/MinGW/x86_64-w64-mingw32/include/crtdefs.h"
 188              		.file 3 "C:/Program Files/CodeBlocks/MinGW/x86_64-w64-mingw32/include/ctype.h"
 189              		.file 4 "<built-in>"
 190              		.file 5 "C:/Program Files/CodeBlocks/MinGW/x86_64-w64-mingw32/include/stdio.h"
 191 0137 90909090 		.section	.debug_info,"dr"
 191      90909090 
 191      90
 192              	.Ldebug_info0:
 193 0000 2B070000 		.long	0x72b
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 6


 194 0004 0400     		.word	0x4
 195 0006 00000000 		.secrel32	.Ldebug_abbrev0
 196 000a 08       		.byte	0x8
 197 000b 01       		.uleb128 0x1
 198 000c 474E5520 		.ascii "GNU C17 8.1.0 -masm=intel -mtune=core2 -march=nocona -g\0"
 198      43313720 
 198      382E312E 
 198      30202D6D 
 198      61736D3D 
 199 0044 0C       		.byte	0xc
 200 0045 433A5C55 		.ascii "C:\\Users\\Computer\\ies\\ies\\IEST2\\InterfaceAluno.c\0"
 200      73657273 
 200      5C436F6D 
 200      70757465 
 200      725C6965 
 201 0076 433A5C55 		.ascii "C:\\Users\\Computer\\ies\\ies\\IEST2\0"
 201      73657273 
 201      5C436F6D 
 201      70757465 
 201      725C6965 
 202 0096 00000000 		.quad	.Ltext0
 202      00000000 
 203 009e 37010000 		.quad	.Letext0-.Ltext0
 203      00000000 
 204 00a6 00000000 		.secrel32	.Ldebug_line0
 205 00aa 02       		.uleb128 0x2
 206 00ab 01       		.byte	0x1
 207 00ac 06       		.byte	0x6
 208 00ad 63686172 		.ascii "char\0"
 208      00
 209 00b2 02       		.uleb128 0x2
 210 00b3 08       		.byte	0x8
 211 00b4 07       		.byte	0x7
 212 00b5 6C6F6E67 		.ascii "long long unsigned int\0"
 212      206C6F6E 
 212      6720756E 
 212      7369676E 
 212      65642069 
 213 00cc 02       		.uleb128 0x2
 214 00cd 08       		.byte	0x8
 215 00ce 05       		.byte	0x5
 216 00cf 6C6F6E67 		.ascii "long long int\0"
 216      206C6F6E 
 216      6720696E 
 216      7400
 217 00dd 03       		.uleb128 0x3
 218 00de 77636861 		.ascii "wchar_t\0"
 218      725F7400 
 219 00e6 02       		.byte	0x2
 220 00e7 62       		.byte	0x62
 221 00e8 18       		.byte	0x18
 222 00e9 ED000000 		.long	0xed
 223 00ed 02       		.uleb128 0x2
 224 00ee 02       		.byte	0x2
 225 00ef 07       		.byte	0x7
 226 00f0 73686F72 		.ascii "short unsigned int\0"
 226      7420756E 
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 7


 226      7369676E 
 226      65642069 
 226      6E7400
 227 0103 04       		.uleb128 0x4
 228 0104 ED000000 		.long	0xed
 229 0108 02       		.uleb128 0x2
 230 0109 04       		.byte	0x4
 231 010a 05       		.byte	0x5
 232 010b 696E7400 		.ascii "int\0"
 233 010f 02       		.uleb128 0x2
 234 0110 04       		.byte	0x4
 235 0111 05       		.byte	0x5
 236 0112 6C6F6E67 		.ascii "long int\0"
 236      20696E74 
 236      00
 237 011b 05       		.uleb128 0x5
 238 011c 70746872 		.ascii "pthreadlocinfo\0"
 238      6561646C 
 238      6F63696E 
 238      666F00
 239 012b 02       		.byte	0x2
 240 012c A801     		.word	0x1a8
 241 012e 28       		.byte	0x28
 242 012f 33010000 		.long	0x133
 243 0133 06       		.uleb128 0x6
 244 0134 08       		.byte	0x8
 245 0135 39010000 		.long	0x139
 246 0139 07       		.uleb128 0x7
 247 013a 74687265 		.ascii "threadlocaleinfostruct\0"
 247      61646C6F 
 247      63616C65 
 247      696E666F 
 247      73747275 
 248 0151 6001     		.word	0x160
 249 0153 02       		.byte	0x2
 250 0154 BC01     		.word	0x1bc
 251 0156 10       		.byte	0x10
 252 0157 E3020000 		.long	0x2e3
 253 015b 08       		.uleb128 0x8
 254 015c 00000000 		.secrel32	.LASF0
 255 0160 02       		.byte	0x2
 256 0161 BD01     		.word	0x1bd
 257 0163 07       		.byte	0x7
 258 0164 08010000 		.long	0x108
 259 0168 00       		.byte	0
 260 0169 09       		.uleb128 0x9
 261 016a 6C635F63 		.ascii "lc_codepage\0"
 261      6F646570 
 261      61676500 
 262 0176 02       		.byte	0x2
 263 0177 BE01     		.word	0x1be
 264 0179 10       		.byte	0x10
 265 017a 30040000 		.long	0x430
 266 017e 04       		.byte	0x4
 267 017f 09       		.uleb128 0x9
 268 0180 6C635F63 		.ascii "lc_collate_cp\0"
 268      6F6C6C61 
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 8


 268      74655F63 
 268      7000
 269 018e 02       		.byte	0x2
 270 018f BF01     		.word	0x1bf
 271 0191 10       		.byte	0x10
 272 0192 30040000 		.long	0x430
 273 0196 08       		.byte	0x8
 274 0197 09       		.uleb128 0x9
 275 0198 6C635F68 		.ascii "lc_handle\0"
 275      616E646C 
 275      6500
 276 01a2 02       		.byte	0x2
 277 01a3 C001     		.word	0x1c0
 278 01a5 11       		.byte	0x11
 279 01a6 40040000 		.long	0x440
 280 01aa 0C       		.byte	0xc
 281 01ab 09       		.uleb128 0x9
 282 01ac 6C635F69 		.ascii "lc_id\0"
 282      6400
 283 01b2 02       		.byte	0x2
 284 01b3 C101     		.word	0x1c1
 285 01b5 09       		.byte	0x9
 286 01b6 65040000 		.long	0x465
 287 01ba 24       		.byte	0x24
 288 01bb 09       		.uleb128 0x9
 289 01bc 6C635F63 		.ascii "lc_category\0"
 289      61746567 
 289      6F727900 
 290 01c8 02       		.byte	0x2
 291 01c9 C701     		.word	0x1c7
 292 01cb 05       		.byte	0x5
 293 01cc 75040000 		.long	0x475
 294 01d0 48       		.byte	0x48
 295 01d1 0A       		.uleb128 0xa
 296 01d2 6C635F63 		.ascii "lc_clike\0"
 296      6C696B65 
 296      00
 297 01db 02       		.byte	0x2
 298 01dc C801     		.word	0x1c8
 299 01de 07       		.byte	0x7
 300 01df 08010000 		.long	0x108
 301 01e3 0801     		.word	0x108
 302 01e5 0A       		.uleb128 0xa
 303 01e6 6D625F63 		.ascii "mb_cur_max\0"
 303      75725F6D 
 303      617800
 304 01f1 02       		.byte	0x2
 305 01f2 C901     		.word	0x1c9
 306 01f4 07       		.byte	0x7
 307 01f5 08010000 		.long	0x108
 308 01f9 0C01     		.word	0x10c
 309 01fb 0A       		.uleb128 0xa
 310 01fc 6C636F6E 		.ascii "lconv_intl_refcount\0"
 310      765F696E 
 310      746C5F72 
 310      6566636F 
 310      756E7400 
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 9


 311 0210 02       		.byte	0x2
 312 0211 CA01     		.word	0x1ca
 313 0213 08       		.byte	0x8
 314 0214 2A040000 		.long	0x42a
 315 0218 1001     		.word	0x110
 316 021a 0A       		.uleb128 0xa
 317 021b 6C636F6E 		.ascii "lconv_num_refcount\0"
 317      765F6E75 
 317      6D5F7265 
 317      66636F75 
 317      6E7400
 318 022e 02       		.byte	0x2
 319 022f CB01     		.word	0x1cb
 320 0231 08       		.byte	0x8
 321 0232 2A040000 		.long	0x42a
 322 0236 1801     		.word	0x118
 323 0238 0A       		.uleb128 0xa
 324 0239 6C636F6E 		.ascii "lconv_mon_refcount\0"
 324      765F6D6F 
 324      6E5F7265 
 324      66636F75 
 324      6E7400
 325 024c 02       		.byte	0x2
 326 024d CC01     		.word	0x1cc
 327 024f 08       		.byte	0x8
 328 0250 2A040000 		.long	0x42a
 329 0254 2001     		.word	0x120
 330 0256 0A       		.uleb128 0xa
 331 0257 6C636F6E 		.ascii "lconv\0"
 331      7600
 332 025d 02       		.byte	0x2
 333 025e CD01     		.word	0x1cd
 334 0260 11       		.byte	0x11
 335 0261 8C040000 		.long	0x48c
 336 0265 2801     		.word	0x128
 337 0267 0A       		.uleb128 0xa
 338 0268 63747970 		.ascii "ctype1_refcount\0"
 338      65315F72 
 338      6566636F 
 338      756E7400 
 339 0278 02       		.byte	0x2
 340 0279 CE01     		.word	0x1ce
 341 027b 08       		.byte	0x8
 342 027c 2A040000 		.long	0x42a
 343 0280 3001     		.word	0x130
 344 0282 0A       		.uleb128 0xa
 345 0283 63747970 		.ascii "ctype1\0"
 345      653100
 346 028a 02       		.byte	0x2
 347 028b CF01     		.word	0x1cf
 348 028d 13       		.byte	0x13
 349 028e 92040000 		.long	0x492
 350 0292 3801     		.word	0x138
 351 0294 0A       		.uleb128 0xa
 352 0295 70637479 		.ascii "pctype\0"
 352      706500
 353 029c 02       		.byte	0x2
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 10


 354 029d D001     		.word	0x1d0
 355 029f 19       		.byte	0x19
 356 02a0 98040000 		.long	0x498
 357 02a4 4001     		.word	0x140
 358 02a6 0A       		.uleb128 0xa
 359 02a7 70636C6D 		.ascii "pclmap\0"
 359      617000
 360 02ae 02       		.byte	0x2
 361 02af D101     		.word	0x1d1
 362 02b1 18       		.byte	0x18
 363 02b2 9E040000 		.long	0x49e
 364 02b6 4801     		.word	0x148
 365 02b8 0A       		.uleb128 0xa
 366 02b9 7063756D 		.ascii "pcumap\0"
 366      617000
 367 02c0 02       		.byte	0x2
 368 02c1 D201     		.word	0x1d2
 369 02c3 18       		.byte	0x18
 370 02c4 9E040000 		.long	0x49e
 371 02c8 5001     		.word	0x150
 372 02ca 0A       		.uleb128 0xa
 373 02cb 6C635F74 		.ascii "lc_time_curr\0"
 373      696D655F 
 373      63757272 
 373      00
 374 02d8 02       		.byte	0x2
 375 02d9 D301     		.word	0x1d3
 376 02db 1A       		.byte	0x1a
 377 02dc CA040000 		.long	0x4ca
 378 02e0 5801     		.word	0x158
 379 02e2 00       		.byte	0
 380 02e3 05       		.uleb128 0x5
 381 02e4 70746872 		.ascii "pthreadmbcinfo\0"
 381      6561646D 
 381      6263696E 
 381      666F00
 382 02f3 02       		.byte	0x2
 383 02f4 A901     		.word	0x1a9
 384 02f6 25       		.byte	0x25
 385 02f7 FB020000 		.long	0x2fb
 386 02fb 06       		.uleb128 0x6
 387 02fc 08       		.byte	0x8
 388 02fd 01030000 		.long	0x301
 389 0301 0B       		.uleb128 0xb
 390 0302 74687265 		.ascii "threadmbcinfostruct\0"
 390      61646D62 
 390      63696E66 
 390      6F737472 
 390      75637400 
 391 0316 0C       		.uleb128 0xc
 392 0317 6C6F6361 		.ascii "localeinfo_struct\0"
 392      6C65696E 
 392      666F5F73 
 392      74727563 
 392      7400
 393 0329 10       		.byte	0x10
 394 032a 02       		.byte	0x2
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 11


 395 032b AC01     		.word	0x1ac
 396 032d 10       		.byte	0x10
 397 032e 57030000 		.long	0x357
 398 0332 09       		.uleb128 0x9
 399 0333 6C6F6369 		.ascii "locinfo\0"
 399      6E666F00 
 400 033b 02       		.byte	0x2
 401 033c AD01     		.word	0x1ad
 402 033e 12       		.byte	0x12
 403 033f 1B010000 		.long	0x11b
 404 0343 00       		.byte	0
 405 0344 09       		.uleb128 0x9
 406 0345 6D626369 		.ascii "mbcinfo\0"
 406      6E666F00 
 407 034d 02       		.byte	0x2
 408 034e AE01     		.word	0x1ae
 409 0350 12       		.byte	0x12
 410 0351 E3020000 		.long	0x2e3
 411 0355 08       		.byte	0x8
 412 0356 00       		.byte	0
 413 0357 05       		.uleb128 0x5
 414 0358 5F6C6F63 		.ascii "_locale_tstruct\0"
 414      616C655F 
 414      74737472 
 414      75637400 
 415 0368 02       		.byte	0x2
 416 0369 AF01     		.word	0x1af
 417 036b 03       		.byte	0x3
 418 036c 16030000 		.long	0x316
 419 0370 0C       		.uleb128 0xc
 420 0371 7461674C 		.ascii "tagLC_ID\0"
 420      435F4944 
 420      00
 421 037a 06       		.byte	0x6
 422 037b 02       		.byte	0x2
 423 037c B301     		.word	0x1b3
 424 037e 10       		.byte	0x10
 425 037f BF030000 		.long	0x3bf
 426 0383 09       		.uleb128 0x9
 427 0384 774C616E 		.ascii "wLanguage\0"
 427      67756167 
 427      6500
 428 038e 02       		.byte	0x2
 429 038f B401     		.word	0x1b4
 430 0391 12       		.byte	0x12
 431 0392 ED000000 		.long	0xed
 432 0396 00       		.byte	0
 433 0397 09       		.uleb128 0x9
 434 0398 77436F75 		.ascii "wCountry\0"
 434      6E747279 
 434      00
 435 03a1 02       		.byte	0x2
 436 03a2 B501     		.word	0x1b5
 437 03a4 12       		.byte	0x12
 438 03a5 ED000000 		.long	0xed
 439 03a9 02       		.byte	0x2
 440 03aa 09       		.uleb128 0x9
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 12


 441 03ab 77436F64 		.ascii "wCodePage\0"
 441      65506167 
 441      6500
 442 03b5 02       		.byte	0x2
 443 03b6 B601     		.word	0x1b6
 444 03b8 12       		.byte	0x12
 445 03b9 ED000000 		.long	0xed
 446 03bd 04       		.byte	0x4
 447 03be 00       		.byte	0
 448 03bf 05       		.uleb128 0x5
 449 03c0 4C435F49 		.ascii "LC_ID\0"
 449      4400
 450 03c6 02       		.byte	0x2
 451 03c7 B701     		.word	0x1b7
 452 03c9 03       		.byte	0x3
 453 03ca 70030000 		.long	0x370
 454 03ce 0D       		.uleb128 0xd
 455 03cf 20       		.byte	0x20
 456 03d0 02       		.byte	0x2
 457 03d1 C201     		.word	0x1c2
 458 03d3 03       		.byte	0x3
 459 03d4 1E040000 		.long	0x41e
 460 03d8 09       		.uleb128 0x9
 461 03d9 6C6F6361 		.ascii "locale\0"
 461      6C6500
 462 03e0 02       		.byte	0x2
 463 03e1 C301     		.word	0x1c3
 464 03e3 0B       		.byte	0xb
 465 03e4 1E040000 		.long	0x41e
 466 03e8 00       		.byte	0
 467 03e9 09       		.uleb128 0x9
 468 03ea 776C6F63 		.ascii "wlocale\0"
 468      616C6500 
 469 03f2 02       		.byte	0x2
 470 03f3 C401     		.word	0x1c4
 471 03f5 0E       		.byte	0xe
 472 03f6 24040000 		.long	0x424
 473 03fa 08       		.byte	0x8
 474 03fb 08       		.uleb128 0x8
 475 03fc 00000000 		.secrel32	.LASF0
 476 0400 02       		.byte	0x2
 477 0401 C501     		.word	0x1c5
 478 0403 0A       		.byte	0xa
 479 0404 2A040000 		.long	0x42a
 480 0408 10       		.byte	0x10
 481 0409 09       		.uleb128 0x9
 482 040a 77726566 		.ascii "wrefcount\0"
 482      636F756E 
 482      7400
 483 0414 02       		.byte	0x2
 484 0415 C601     		.word	0x1c6
 485 0417 0A       		.byte	0xa
 486 0418 2A040000 		.long	0x42a
 487 041c 18       		.byte	0x18
 488 041d 00       		.byte	0
 489 041e 06       		.uleb128 0x6
 490 041f 08       		.byte	0x8
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 13


 491 0420 AA000000 		.long	0xaa
 492 0424 06       		.uleb128 0x6
 493 0425 08       		.byte	0x8
 494 0426 DD000000 		.long	0xdd
 495 042a 06       		.uleb128 0x6
 496 042b 08       		.byte	0x8
 497 042c 08010000 		.long	0x108
 498 0430 02       		.uleb128 0x2
 499 0431 04       		.byte	0x4
 500 0432 07       		.byte	0x7
 501 0433 756E7369 		.ascii "unsigned int\0"
 501      676E6564 
 501      20696E74 
 501      00
 502 0440 0E       		.uleb128 0xe
 503 0441 50040000 		.long	0x450
 504 0445 50040000 		.long	0x450
 505 0449 0F       		.uleb128 0xf
 506 044a B2000000 		.long	0xb2
 507 044e 05       		.byte	0x5
 508 044f 00       		.byte	0
 509 0450 02       		.uleb128 0x2
 510 0451 04       		.byte	0x4
 511 0452 07       		.byte	0x7
 512 0453 6C6F6E67 		.ascii "long unsigned int\0"
 512      20756E73 
 512      69676E65 
 512      6420696E 
 512      7400
 513 0465 0E       		.uleb128 0xe
 514 0466 BF030000 		.long	0x3bf
 515 046a 75040000 		.long	0x475
 516 046e 0F       		.uleb128 0xf
 517 046f B2000000 		.long	0xb2
 518 0473 05       		.byte	0x5
 519 0474 00       		.byte	0
 520 0475 0E       		.uleb128 0xe
 521 0476 CE030000 		.long	0x3ce
 522 047a 85040000 		.long	0x485
 523 047e 0F       		.uleb128 0xf
 524 047f B2000000 		.long	0xb2
 525 0483 05       		.byte	0x5
 526 0484 00       		.byte	0
 527 0485 0B       		.uleb128 0xb
 528 0486 6C636F6E 		.ascii "lconv\0"
 528      7600
 529 048c 06       		.uleb128 0x6
 530 048d 08       		.byte	0x8
 531 048e 85040000 		.long	0x485
 532 0492 06       		.uleb128 0x6
 533 0493 08       		.byte	0x8
 534 0494 ED000000 		.long	0xed
 535 0498 06       		.uleb128 0x6
 536 0499 08       		.byte	0x8
 537 049a 03010000 		.long	0x103
 538 049e 06       		.uleb128 0x6
 539 049f 08       		.byte	0x8
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 14


 540 04a0 B5040000 		.long	0x4b5
 541 04a4 02       		.uleb128 0x2
 542 04a5 01       		.byte	0x1
 543 04a6 08       		.byte	0x8
 544 04a7 756E7369 		.ascii "unsigned char\0"
 544      676E6564 
 544      20636861 
 544      7200
 545 04b5 04       		.uleb128 0x4
 546 04b6 A4040000 		.long	0x4a4
 547 04ba 0B       		.uleb128 0xb
 548 04bb 5F5F6C63 		.ascii "__lc_time_data\0"
 548      5F74696D 
 548      655F6461 
 548      746100
 549 04ca 06       		.uleb128 0x6
 550 04cb 08       		.byte	0x8
 551 04cc BA040000 		.long	0x4ba
 552 04d0 10       		.uleb128 0x10
 553 04d1 5F5F696D 		.ascii "__imp__pctype\0"
 553      705F5F70 
 553      63747970 
 553      6500
 554 04df 03       		.byte	0x3
 555 04e0 2B       		.byte	0x2b
 556 04e1 1C       		.byte	0x1c
 557 04e2 E6040000 		.long	0x4e6
 558 04e6 06       		.uleb128 0x6
 559 04e7 08       		.byte	0x8
 560 04e8 92040000 		.long	0x492
 561 04ec 10       		.uleb128 0x10
 562 04ed 5F5F696D 		.ascii "__imp__wctype\0"
 562      705F5F77 
 562      63747970 
 562      6500
 563 04fb 03       		.byte	0x3
 564 04fc 3B       		.byte	0x3b
 565 04fd 1C       		.byte	0x1c
 566 04fe E6040000 		.long	0x4e6
 567 0502 10       		.uleb128 0x10
 568 0503 5F5F696D 		.ascii "__imp__pwctype\0"
 568      705F5F70 
 568      77637479 
 568      706500
 569 0512 03       		.byte	0x3
 570 0513 47       		.byte	0x47
 571 0514 1C       		.byte	0x1c
 572 0515 E6040000 		.long	0x4e6
 573 0519 0E       		.uleb128 0xe
 574 051a B5040000 		.long	0x4b5
 575 051e 24050000 		.long	0x524
 576 0522 11       		.uleb128 0x11
 577 0523 00       		.byte	0
 578 0524 04       		.uleb128 0x4
 579 0525 19050000 		.long	0x519
 580 0529 10       		.uleb128 0x10
 581 052a 5F5F6E65 		.ascii "__newclmap\0"
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 15


 581      77636C6D 
 581      617000
 582 0535 03       		.byte	0x3
 583 0536 50       		.byte	0x50
 584 0537 1E       		.byte	0x1e
 585 0538 24050000 		.long	0x524
 586 053c 10       		.uleb128 0x10
 587 053d 5F5F6E65 		.ascii "__newcumap\0"
 587      7763756D 
 587      617000
 588 0548 03       		.byte	0x3
 589 0549 51       		.byte	0x51
 590 054a 1E       		.byte	0x1e
 591 054b 24050000 		.long	0x524
 592 054f 10       		.uleb128 0x10
 593 0550 5F5F7074 		.ascii "__ptlocinfo\0"
 593      6C6F6369 
 593      6E666F00 
 594 055c 03       		.byte	0x3
 595 055d 52       		.byte	0x52
 596 055e 19       		.byte	0x19
 597 055f 1B010000 		.long	0x11b
 598 0563 10       		.uleb128 0x10
 599 0564 5F5F7074 		.ascii "__ptmbcinfo\0"
 599      6D626369 
 599      6E666F00 
 600 0570 03       		.byte	0x3
 601 0571 53       		.byte	0x53
 602 0572 19       		.byte	0x19
 603 0573 E3020000 		.long	0x2e3
 604 0577 10       		.uleb128 0x10
 605 0578 5F5F676C 		.ascii "__globallocalestatus\0"
 605      6F62616C 
 605      6C6F6361 
 605      6C657374 
 605      61747573 
 606 058d 03       		.byte	0x3
 607 058e 54       		.byte	0x54
 608 058f 0E       		.byte	0xe
 609 0590 08010000 		.long	0x108
 610 0594 10       		.uleb128 0x10
 611 0595 5F5F6C6F 		.ascii "__locale_changed\0"
 611      63616C65 
 611      5F636861 
 611      6E676564 
 611      00
 612 05a6 03       		.byte	0x3
 613 05a7 55       		.byte	0x55
 614 05a8 0E       		.byte	0xe
 615 05a9 08010000 		.long	0x108
 616 05ad 10       		.uleb128 0x10
 617 05ae 5F5F696E 		.ascii "__initiallocinfo\0"
 617      69746961 
 617      6C6C6F63 
 617      696E666F 
 617      00
 618 05bf 03       		.byte	0x3
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 16


 619 05c0 56       		.byte	0x56
 620 05c1 28       		.byte	0x28
 621 05c2 39010000 		.long	0x139
 622 05c6 10       		.uleb128 0x10
 623 05c7 5F5F696E 		.ascii "__initiallocalestructinfo\0"
 623      69746961 
 623      6C6C6F63 
 623      616C6573 
 623      74727563 
 624 05e1 03       		.byte	0x3
 625 05e2 57       		.byte	0x57
 626 05e3 1A       		.byte	0x1a
 627 05e4 57030000 		.long	0x357
 628 05e8 10       		.uleb128 0x10
 629 05e9 5F5F696D 		.ascii "__imp___mb_cur_max\0"
 629      705F5F5F 
 629      6D625F63 
 629      75725F6D 
 629      617800
 630 05fc 03       		.byte	0x3
 631 05fd CB       		.byte	0xcb
 632 05fe 10       		.byte	0x10
 633 05ff 2A040000 		.long	0x42a
 634 0603 0E       		.uleb128 0xe
 635 0604 AA000000 		.long	0xaa
 636 0608 13060000 		.long	0x613
 637 060c 0F       		.uleb128 0xf
 638 060d B2000000 		.long	0xb2
 639 0611 63       		.byte	0x63
 640 0612 00       		.byte	0
 641 0613 12       		.uleb128 0x12
 642 0614 6E6F6D65 		.ascii "nome\0"
 642      00
 643 0619 01       		.byte	0x1
 644 061a 04       		.byte	0x4
 645 061b 06       		.byte	0x6
 646 061c 03060000 		.long	0x603
 647 0620 09       		.uleb128 0x9
 648 0621 03       		.byte	0x3
 649 0622 00000000 		.quad	nome
 649      00000000 
 650 062a 12       		.uleb128 0x12
 651 062b 69646164 		.ascii "idade\0"
 651      6500
 652 0631 01       		.byte	0x1
 653 0632 05       		.byte	0x5
 654 0633 05       		.byte	0x5
 655 0634 08010000 		.long	0x108
 656 0638 09       		.uleb128 0x9
 657 0639 03       		.byte	0x3
 658 063a 00000000 		.quad	idade
 658      00000000 
 659 0642 13       		.uleb128 0x13
 660 0643 76616C69 		.ascii "valida_idade\0"
 660      64615F69 
 660      64616465 
 660      00
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 17


 661 0650 01       		.byte	0x1
 662 0651 18       		.byte	0x18
 663 0652 06       		.byte	0x6
 664 0653 DD000000 		.quad	.LFB14
 664      00000000 
 665 065b 5A000000 		.quad	.LFE14-.LFB14
 665      00000000 
 666 0663 01       		.uleb128 0x1
 667 0664 9C       		.byte	0x9c
 668 0665 8B060000 		.long	0x68b
 669 0669 14       		.uleb128 0x14
 670 066a 76616C69 		.ascii "validoIdade\0"
 670      646F4964 
 670      61646500 
 671 0676 01       		.byte	0x1
 672 0677 19       		.byte	0x19
 673 0678 09       		.byte	0x9
 674 0679 08010000 		.long	0x108
 675 067d 02       		.uleb128 0x2
 676 067e 91       		.byte	0x91
 677 067f 6C       		.sleb128 -20
 678 0680 15       		.uleb128 0x15
 679 0681 6300     		.ascii "c\0"
 680 0683 01       		.byte	0x1
 681 0684 1A       		.byte	0x1a
 682 0685 0A       		.byte	0xa
 683 0686 AA000000 		.long	0xaa
 684 068a 00       		.byte	0
 685 068b 13       		.uleb128 0x13
 686 068c 76616C69 		.ascii "valida_nome\0"
 686      64615F6E 
 686      6F6D6500 
 687 0698 01       		.byte	0x1
 688 0699 07       		.byte	0x7
 689 069a 06       		.byte	0x6
 690 069b 00000000 		.quad	.LFB13
 690      00000000 
 691 06a3 DD000000 		.quad	.LFE13-.LFB13
 691      00000000 
 692 06ab 01       		.uleb128 0x1
 693 06ac 9C       		.byte	0x9c
 694 06ad 05070000 		.long	0x705
 695 06b1 14       		.uleb128 0x14
 696 06b2 76616C69 		.ascii "validoNome\0"
 696      646F4E6F 
 696      6D6500
 697 06bd 01       		.byte	0x1
 698 06be 08       		.byte	0x8
 699 06bf 09       		.byte	0x9
 700 06c0 08010000 		.long	0x108
 701 06c4 02       		.uleb128 0x2
 702 06c5 91       		.byte	0x91
 703 06c6 6C       		.sleb128 -20
 704 06c7 16       		.uleb128 0x16
 705 06c8 4C000000 		.quad	.LBB2
 705      00000000 
 706 06d0 80000000 		.quad	.LBE2-.LBB2
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 18


 706      00000000 
 707 06d8 F7060000 		.long	0x6f7
 708 06dc 14       		.uleb128 0x14
 709 06dd 6900     		.ascii "i\0"
 710 06df 01       		.byte	0x1
 711 06e0 0E       		.byte	0xe
 712 06e1 12       		.byte	0x12
 713 06e2 08010000 		.long	0x108
 714 06e6 02       		.uleb128 0x2
 715 06e7 91       		.byte	0x91
 716 06e8 68       		.sleb128 -24
 717 06e9 17       		.uleb128 0x17
 718 06ea 73000000 		.quad	.LVL1
 718      00000000 
 719 06f2 05070000 		.long	0x705
 720 06f6 00       		.byte	0
 721 06f7 17       		.uleb128 0x17
 722 06f8 2E000000 		.quad	.LVL0
 722      00000000 
 723 0700 22070000 		.long	0x722
 724 0704 00       		.byte	0
 725 0705 18       		.uleb128 0x18
 726 0706 6973616C 		.ascii "isalpha\0"
 726      70686100 
 727 070e 5F5F6275 		.ascii "__builtin_isalpha\0"
 727      696C7469 
 727      6E5F6973 
 727      616C7068 
 727      6100
 728 0720 04       		.byte	0x4
 729 0721 00       		.byte	0
 730 0722 19       		.uleb128 0x19
 731 0723 09000000 		.secrel32	.LASF1
 732 0727 09000000 		.secrel32	.LASF1
 733 072b 05       		.byte	0x5
 734 072c 52       		.byte	0x52
 735 072d 17       		.byte	0x17
 736 072e 00       		.byte	0
 737              		.section	.debug_abbrev,"dr"
 738              	.Ldebug_abbrev0:
 739 0000 01       		.uleb128 0x1
 740 0001 11       		.uleb128 0x11
 741 0002 01       		.byte	0x1
 742 0003 25       		.uleb128 0x25
 743 0004 08       		.uleb128 0x8
 744 0005 13       		.uleb128 0x13
 745 0006 0B       		.uleb128 0xb
 746 0007 03       		.uleb128 0x3
 747 0008 08       		.uleb128 0x8
 748 0009 1B       		.uleb128 0x1b
 749 000a 08       		.uleb128 0x8
 750 000b 11       		.uleb128 0x11
 751 000c 01       		.uleb128 0x1
 752 000d 12       		.uleb128 0x12
 753 000e 07       		.uleb128 0x7
 754 000f 10       		.uleb128 0x10
 755 0010 17       		.uleb128 0x17
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 19


 756 0011 00       		.byte	0
 757 0012 00       		.byte	0
 758 0013 02       		.uleb128 0x2
 759 0014 24       		.uleb128 0x24
 760 0015 00       		.byte	0
 761 0016 0B       		.uleb128 0xb
 762 0017 0B       		.uleb128 0xb
 763 0018 3E       		.uleb128 0x3e
 764 0019 0B       		.uleb128 0xb
 765 001a 03       		.uleb128 0x3
 766 001b 08       		.uleb128 0x8
 767 001c 00       		.byte	0
 768 001d 00       		.byte	0
 769 001e 03       		.uleb128 0x3
 770 001f 16       		.uleb128 0x16
 771 0020 00       		.byte	0
 772 0021 03       		.uleb128 0x3
 773 0022 08       		.uleb128 0x8
 774 0023 3A       		.uleb128 0x3a
 775 0024 0B       		.uleb128 0xb
 776 0025 3B       		.uleb128 0x3b
 777 0026 0B       		.uleb128 0xb
 778 0027 39       		.uleb128 0x39
 779 0028 0B       		.uleb128 0xb
 780 0029 49       		.uleb128 0x49
 781 002a 13       		.uleb128 0x13
 782 002b 00       		.byte	0
 783 002c 00       		.byte	0
 784 002d 04       		.uleb128 0x4
 785 002e 26       		.uleb128 0x26
 786 002f 00       		.byte	0
 787 0030 49       		.uleb128 0x49
 788 0031 13       		.uleb128 0x13
 789 0032 00       		.byte	0
 790 0033 00       		.byte	0
 791 0034 05       		.uleb128 0x5
 792 0035 16       		.uleb128 0x16
 793 0036 00       		.byte	0
 794 0037 03       		.uleb128 0x3
 795 0038 08       		.uleb128 0x8
 796 0039 3A       		.uleb128 0x3a
 797 003a 0B       		.uleb128 0xb
 798 003b 3B       		.uleb128 0x3b
 799 003c 05       		.uleb128 0x5
 800 003d 39       		.uleb128 0x39
 801 003e 0B       		.uleb128 0xb
 802 003f 49       		.uleb128 0x49
 803 0040 13       		.uleb128 0x13
 804 0041 00       		.byte	0
 805 0042 00       		.byte	0
 806 0043 06       		.uleb128 0x6
 807 0044 0F       		.uleb128 0xf
 808 0045 00       		.byte	0
 809 0046 0B       		.uleb128 0xb
 810 0047 0B       		.uleb128 0xb
 811 0048 49       		.uleb128 0x49
 812 0049 13       		.uleb128 0x13
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 20


 813 004a 00       		.byte	0
 814 004b 00       		.byte	0
 815 004c 07       		.uleb128 0x7
 816 004d 13       		.uleb128 0x13
 817 004e 01       		.byte	0x1
 818 004f 03       		.uleb128 0x3
 819 0050 08       		.uleb128 0x8
 820 0051 0B       		.uleb128 0xb
 821 0052 05       		.uleb128 0x5
 822 0053 3A       		.uleb128 0x3a
 823 0054 0B       		.uleb128 0xb
 824 0055 3B       		.uleb128 0x3b
 825 0056 05       		.uleb128 0x5
 826 0057 39       		.uleb128 0x39
 827 0058 0B       		.uleb128 0xb
 828 0059 01       		.uleb128 0x1
 829 005a 13       		.uleb128 0x13
 830 005b 00       		.byte	0
 831 005c 00       		.byte	0
 832 005d 08       		.uleb128 0x8
 833 005e 0D       		.uleb128 0xd
 834 005f 00       		.byte	0
 835 0060 03       		.uleb128 0x3
 836 0061 0E       		.uleb128 0xe
 837 0062 3A       		.uleb128 0x3a
 838 0063 0B       		.uleb128 0xb
 839 0064 3B       		.uleb128 0x3b
 840 0065 05       		.uleb128 0x5
 841 0066 39       		.uleb128 0x39
 842 0067 0B       		.uleb128 0xb
 843 0068 49       		.uleb128 0x49
 844 0069 13       		.uleb128 0x13
 845 006a 38       		.uleb128 0x38
 846 006b 0B       		.uleb128 0xb
 847 006c 00       		.byte	0
 848 006d 00       		.byte	0
 849 006e 09       		.uleb128 0x9
 850 006f 0D       		.uleb128 0xd
 851 0070 00       		.byte	0
 852 0071 03       		.uleb128 0x3
 853 0072 08       		.uleb128 0x8
 854 0073 3A       		.uleb128 0x3a
 855 0074 0B       		.uleb128 0xb
 856 0075 3B       		.uleb128 0x3b
 857 0076 05       		.uleb128 0x5
 858 0077 39       		.uleb128 0x39
 859 0078 0B       		.uleb128 0xb
 860 0079 49       		.uleb128 0x49
 861 007a 13       		.uleb128 0x13
 862 007b 38       		.uleb128 0x38
 863 007c 0B       		.uleb128 0xb
 864 007d 00       		.byte	0
 865 007e 00       		.byte	0
 866 007f 0A       		.uleb128 0xa
 867 0080 0D       		.uleb128 0xd
 868 0081 00       		.byte	0
 869 0082 03       		.uleb128 0x3
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 21


 870 0083 08       		.uleb128 0x8
 871 0084 3A       		.uleb128 0x3a
 872 0085 0B       		.uleb128 0xb
 873 0086 3B       		.uleb128 0x3b
 874 0087 05       		.uleb128 0x5
 875 0088 39       		.uleb128 0x39
 876 0089 0B       		.uleb128 0xb
 877 008a 49       		.uleb128 0x49
 878 008b 13       		.uleb128 0x13
 879 008c 38       		.uleb128 0x38
 880 008d 05       		.uleb128 0x5
 881 008e 00       		.byte	0
 882 008f 00       		.byte	0
 883 0090 0B       		.uleb128 0xb
 884 0091 13       		.uleb128 0x13
 885 0092 00       		.byte	0
 886 0093 03       		.uleb128 0x3
 887 0094 08       		.uleb128 0x8
 888 0095 3C       		.uleb128 0x3c
 889 0096 19       		.uleb128 0x19
 890 0097 00       		.byte	0
 891 0098 00       		.byte	0
 892 0099 0C       		.uleb128 0xc
 893 009a 13       		.uleb128 0x13
 894 009b 01       		.byte	0x1
 895 009c 03       		.uleb128 0x3
 896 009d 08       		.uleb128 0x8
 897 009e 0B       		.uleb128 0xb
 898 009f 0B       		.uleb128 0xb
 899 00a0 3A       		.uleb128 0x3a
 900 00a1 0B       		.uleb128 0xb
 901 00a2 3B       		.uleb128 0x3b
 902 00a3 05       		.uleb128 0x5
 903 00a4 39       		.uleb128 0x39
 904 00a5 0B       		.uleb128 0xb
 905 00a6 01       		.uleb128 0x1
 906 00a7 13       		.uleb128 0x13
 907 00a8 00       		.byte	0
 908 00a9 00       		.byte	0
 909 00aa 0D       		.uleb128 0xd
 910 00ab 13       		.uleb128 0x13
 911 00ac 01       		.byte	0x1
 912 00ad 0B       		.uleb128 0xb
 913 00ae 0B       		.uleb128 0xb
 914 00af 3A       		.uleb128 0x3a
 915 00b0 0B       		.uleb128 0xb
 916 00b1 3B       		.uleb128 0x3b
 917 00b2 05       		.uleb128 0x5
 918 00b3 39       		.uleb128 0x39
 919 00b4 0B       		.uleb128 0xb
 920 00b5 01       		.uleb128 0x1
 921 00b6 13       		.uleb128 0x13
 922 00b7 00       		.byte	0
 923 00b8 00       		.byte	0
 924 00b9 0E       		.uleb128 0xe
 925 00ba 01       		.uleb128 0x1
 926 00bb 01       		.byte	0x1
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 22


 927 00bc 49       		.uleb128 0x49
 928 00bd 13       		.uleb128 0x13
 929 00be 01       		.uleb128 0x1
 930 00bf 13       		.uleb128 0x13
 931 00c0 00       		.byte	0
 932 00c1 00       		.byte	0
 933 00c2 0F       		.uleb128 0xf
 934 00c3 21       		.uleb128 0x21
 935 00c4 00       		.byte	0
 936 00c5 49       		.uleb128 0x49
 937 00c6 13       		.uleb128 0x13
 938 00c7 2F       		.uleb128 0x2f
 939 00c8 0B       		.uleb128 0xb
 940 00c9 00       		.byte	0
 941 00ca 00       		.byte	0
 942 00cb 10       		.uleb128 0x10
 943 00cc 34       		.uleb128 0x34
 944 00cd 00       		.byte	0
 945 00ce 03       		.uleb128 0x3
 946 00cf 08       		.uleb128 0x8
 947 00d0 3A       		.uleb128 0x3a
 948 00d1 0B       		.uleb128 0xb
 949 00d2 3B       		.uleb128 0x3b
 950 00d3 0B       		.uleb128 0xb
 951 00d4 39       		.uleb128 0x39
 952 00d5 0B       		.uleb128 0xb
 953 00d6 49       		.uleb128 0x49
 954 00d7 13       		.uleb128 0x13
 955 00d8 3F       		.uleb128 0x3f
 956 00d9 19       		.uleb128 0x19
 957 00da 3C       		.uleb128 0x3c
 958 00db 19       		.uleb128 0x19
 959 00dc 00       		.byte	0
 960 00dd 00       		.byte	0
 961 00de 11       		.uleb128 0x11
 962 00df 21       		.uleb128 0x21
 963 00e0 00       		.byte	0
 964 00e1 00       		.byte	0
 965 00e2 00       		.byte	0
 966 00e3 12       		.uleb128 0x12
 967 00e4 34       		.uleb128 0x34
 968 00e5 00       		.byte	0
 969 00e6 03       		.uleb128 0x3
 970 00e7 08       		.uleb128 0x8
 971 00e8 3A       		.uleb128 0x3a
 972 00e9 0B       		.uleb128 0xb
 973 00ea 3B       		.uleb128 0x3b
 974 00eb 0B       		.uleb128 0xb
 975 00ec 39       		.uleb128 0x39
 976 00ed 0B       		.uleb128 0xb
 977 00ee 49       		.uleb128 0x49
 978 00ef 13       		.uleb128 0x13
 979 00f0 3F       		.uleb128 0x3f
 980 00f1 19       		.uleb128 0x19
 981 00f2 02       		.uleb128 0x2
 982 00f3 18       		.uleb128 0x18
 983 00f4 00       		.byte	0
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 23


 984 00f5 00       		.byte	0
 985 00f6 13       		.uleb128 0x13
 986 00f7 2E       		.uleb128 0x2e
 987 00f8 01       		.byte	0x1
 988 00f9 3F       		.uleb128 0x3f
 989 00fa 19       		.uleb128 0x19
 990 00fb 03       		.uleb128 0x3
 991 00fc 08       		.uleb128 0x8
 992 00fd 3A       		.uleb128 0x3a
 993 00fe 0B       		.uleb128 0xb
 994 00ff 3B       		.uleb128 0x3b
 995 0100 0B       		.uleb128 0xb
 996 0101 39       		.uleb128 0x39
 997 0102 0B       		.uleb128 0xb
 998 0103 11       		.uleb128 0x11
 999 0104 01       		.uleb128 0x1
 1000 0105 12       		.uleb128 0x12
 1001 0106 07       		.uleb128 0x7
 1002 0107 40       		.uleb128 0x40
 1003 0108 18       		.uleb128 0x18
 1004 0109 9642     		.uleb128 0x2116
 1005 010b 19       		.uleb128 0x19
 1006 010c 01       		.uleb128 0x1
 1007 010d 13       		.uleb128 0x13
 1008 010e 00       		.byte	0
 1009 010f 00       		.byte	0
 1010 0110 14       		.uleb128 0x14
 1011 0111 34       		.uleb128 0x34
 1012 0112 00       		.byte	0
 1013 0113 03       		.uleb128 0x3
 1014 0114 08       		.uleb128 0x8
 1015 0115 3A       		.uleb128 0x3a
 1016 0116 0B       		.uleb128 0xb
 1017 0117 3B       		.uleb128 0x3b
 1018 0118 0B       		.uleb128 0xb
 1019 0119 39       		.uleb128 0x39
 1020 011a 0B       		.uleb128 0xb
 1021 011b 49       		.uleb128 0x49
 1022 011c 13       		.uleb128 0x13
 1023 011d 02       		.uleb128 0x2
 1024 011e 18       		.uleb128 0x18
 1025 011f 00       		.byte	0
 1026 0120 00       		.byte	0
 1027 0121 15       		.uleb128 0x15
 1028 0122 34       		.uleb128 0x34
 1029 0123 00       		.byte	0
 1030 0124 03       		.uleb128 0x3
 1031 0125 08       		.uleb128 0x8
 1032 0126 3A       		.uleb128 0x3a
 1033 0127 0B       		.uleb128 0xb
 1034 0128 3B       		.uleb128 0x3b
 1035 0129 0B       		.uleb128 0xb
 1036 012a 39       		.uleb128 0x39
 1037 012b 0B       		.uleb128 0xb
 1038 012c 49       		.uleb128 0x49
 1039 012d 13       		.uleb128 0x13
 1040 012e 00       		.byte	0
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 24


 1041 012f 00       		.byte	0
 1042 0130 16       		.uleb128 0x16
 1043 0131 0B       		.uleb128 0xb
 1044 0132 01       		.byte	0x1
 1045 0133 11       		.uleb128 0x11
 1046 0134 01       		.uleb128 0x1
 1047 0135 12       		.uleb128 0x12
 1048 0136 07       		.uleb128 0x7
 1049 0137 01       		.uleb128 0x1
 1050 0138 13       		.uleb128 0x13
 1051 0139 00       		.byte	0
 1052 013a 00       		.byte	0
 1053 013b 17       		.uleb128 0x17
 1054 013c 898201   		.uleb128 0x4109
 1055 013f 00       		.byte	0
 1056 0140 11       		.uleb128 0x11
 1057 0141 01       		.uleb128 0x1
 1058 0142 31       		.uleb128 0x31
 1059 0143 13       		.uleb128 0x13
 1060 0144 00       		.byte	0
 1061 0145 00       		.byte	0
 1062 0146 18       		.uleb128 0x18
 1063 0147 2E       		.uleb128 0x2e
 1064 0148 00       		.byte	0
 1065 0149 3F       		.uleb128 0x3f
 1066 014a 19       		.uleb128 0x19
 1067 014b 3C       		.uleb128 0x3c
 1068 014c 19       		.uleb128 0x19
 1069 014d 6E       		.uleb128 0x6e
 1070 014e 08       		.uleb128 0x8
 1071 014f 03       		.uleb128 0x3
 1072 0150 08       		.uleb128 0x8
 1073 0151 3A       		.uleb128 0x3a
 1074 0152 0B       		.uleb128 0xb
 1075 0153 3B       		.uleb128 0x3b
 1076 0154 0B       		.uleb128 0xb
 1077 0155 00       		.byte	0
 1078 0156 00       		.byte	0
 1079 0157 19       		.uleb128 0x19
 1080 0158 2E       		.uleb128 0x2e
 1081 0159 00       		.byte	0
 1082 015a 3F       		.uleb128 0x3f
 1083 015b 19       		.uleb128 0x19
 1084 015c 3C       		.uleb128 0x3c
 1085 015d 19       		.uleb128 0x19
 1086 015e 6E       		.uleb128 0x6e
 1087 015f 0E       		.uleb128 0xe
 1088 0160 03       		.uleb128 0x3
 1089 0161 0E       		.uleb128 0xe
 1090 0162 3A       		.uleb128 0x3a
 1091 0163 0B       		.uleb128 0xb
 1092 0164 3B       		.uleb128 0x3b
 1093 0165 0B       		.uleb128 0xb
 1094 0166 39       		.uleb128 0x39
 1095 0167 0B       		.uleb128 0xb
 1096 0168 00       		.byte	0
 1097 0169 00       		.byte	0
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 25


 1098 016a 00       		.byte	0
 1099              		.section	.debug_aranges,"dr"
 1100 0000 2C000000 		.long	0x2c
 1101 0004 0200     		.word	0x2
 1102 0006 00000000 		.secrel32	.Ldebug_info0
 1103 000a 08       		.byte	0x8
 1104 000b 00       		.byte	0
 1105 000c 0000     		.word	0
 1106 000e 0000     		.word	0
 1107 0010 00000000 		.quad	.Ltext0
 1107      00000000 
 1108 0018 37010000 		.quad	.Letext0-.Ltext0
 1108      00000000 
 1109 0020 00000000 		.quad	0
 1109      00000000 
 1110 0028 00000000 		.quad	0
 1110      00000000 
 1111              		.section	.debug_line,"dr"
 1112              	.Ldebug_line0:
 1113 0000 4B010000 		.section	.debug_str,"dr"
 1113      0200B500 
 1113      00000101 
 1113      FB0E0D00 
 1113      01010101 
 1114              	.LASF0:
 1115 0000 72656663 		.ascii "refcount\0"
 1115      6F756E74 
 1115      00
 1116              	.LASF1:
 1117 0009 5F5F6163 		.ascii "__acrt_iob_func\0"
 1117      72745F69 
 1117      6F625F66 
 1117      756E6300 
 1118              		.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s 			page 26


DEFINED SYMBOLS
                            *ABS*:0000000000000000 InterfaceAluno.c
                            *COM*:0000000000000064 nome
                            *COM*:0000000000000004 idade
C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s:18     .text:0000000000000000 valida_nome
C:\Users\Computer\AppData\Local\Temp\ccMTNQWb.s:135    .text:00000000000000dd valida_idade

UNDEFINED SYMBOLS
__imp___acrt_iob_func
__imp_isalpha
printf
fgets
puts
scanf
