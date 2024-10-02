GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccIycmkP.s 			page 1


   1              		.file	"PersisteAluno.c"
   2              		.intel_syntax noprefix
   3              		.text
   4              	.Ltext0:
   5              		.cfi_sections	.debug_frame
   6              		.section .rdata,"dr"
   7              	.LC0:
   8 0000 6100     		.ascii "a\0"
   9              	.LC1:
  10 0002 616C756E 		.ascii "aluno.txt\0"
  10      6F2E7478 
  10      7400
  11              	.LC2:
  12 000c 4572726F 		.ascii "Erro ao abrir o arquivo!\0"
  12      20616F20 
  12      61627269 
  12      72206F20 
  12      61727175 
  13 0025 000000   		.align 8
  14              	.LC3:
  15 0028 4E6F6D65 		.ascii "Nome: %s\12Idade: %d\12Classifica\347\343o: %s\12\12\0"
  15      3A202573 
  15      0A496461 
  15      64653A20 
  15      25640A43 
  16              	.LC4:
  17 004f 416C756E 		.ascii "Aluno gravado com sucesso!\0"
  17      6F206772 
  17      61766164 
  17      6F20636F 
  17      6D207375 
  18 006a 00000000 		.text
  18      0000
  19              		.globl	persisteAluno
  21              		.seh_proc	persisteAluno
  22              	persisteAluno:
  23              	.LFB16:
  24              		.file 1 "C:/Users/Computer/ies/ies/IEST2/PersisteAluno.c"
   1:C:/Users/Computer/ies/ies/IEST2\PersisteAluno.c **** #include <stdio.h>
   2:C:/Users/Computer/ies/ies/IEST2\PersisteAluno.c **** #include <stdlib.h>
   3:C:/Users/Computer/ies/ies/IEST2\PersisteAluno.c **** 
   4:C:/Users/Computer/ies/ies/IEST2\PersisteAluno.c **** extern char nome[100];
   5:C:/Users/Computer/ies/ies/IEST2\PersisteAluno.c **** extern int idade;
   6:C:/Users/Computer/ies/ies/IEST2\PersisteAluno.c **** 
   7:C:/Users/Computer/ies/ies/IEST2\PersisteAluno.c **** void persisteAluno(const char *classificacao) {
  25              		.loc 1 7 47
  26              		.cfi_startproc
  27 0000 55       		push	rbp
  28              		.seh_pushreg	rbp
  29              		.cfi_def_cfa_offset 16
  30              		.cfi_offset 6, -16
  31 0001 4889E5   		mov	rbp, rsp
  32              		.seh_setframe	rbp, 0
  33              		.cfi_def_cfa_register 6
  34 0004 4883EC40 		sub	rsp, 64
  35              		.seh_stackalloc	64
  36              		.seh_endprologue
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccIycmkP.s 			page 2


  37 0008 48894D10 		mov	QWORD PTR 16[rbp], rcx
   8:C:/Users/Computer/ies/ies/IEST2\PersisteAluno.c ****     FILE *arquivo = fopen("aluno.txt", "a");  // Mudado para aluno.txt
  38              		.loc 1 8 21
  39 000c 488D1500 		lea	rdx, .LC0[rip]
  39      000000
  40 0013 488D0D02 		lea	rcx, .LC1[rip]
  40      000000
  41 001a E8000000 		call	fopen
  41      00
  42 001f 488945F8 		mov	QWORD PTR -8[rbp], rax
   9:C:/Users/Computer/ies/ies/IEST2\PersisteAluno.c ****     if (arquivo == NULL) {
  43              		.loc 1 9 8
  44 0023 48837DF8 		cmp	QWORD PTR -8[rbp], 0
  44      00
  45 0028 750E     		jne	.L2
  10:C:/Users/Computer/ies/ies/IEST2\PersisteAluno.c ****         printf("Erro ao abrir o arquivo!\n");
  46              		.loc 1 10 9
  47 002a 488D0D0C 		lea	rcx, .LC2[rip]
  47      000000
  48 0031 E8000000 		call	puts
  48      00
  11:C:/Users/Computer/ies/ies/IEST2\PersisteAluno.c ****         return;
  49              		.loc 1 11 9
  50 0036 EB48     		jmp	.L1
  51              	.L2:
  12:C:/Users/Computer/ies/ies/IEST2\PersisteAluno.c ****     }
  13:C:/Users/Computer/ies/ies/IEST2\PersisteAluno.c **** 
  14:C:/Users/Computer/ies/ies/IEST2\PersisteAluno.c ****     fprintf(arquivo, "Nome: %s\nIdade: %d\nClassificação: %s\n\n", nome, idade, classificacao);
  52              		.loc 1 14 5
  53 0038 488B0500 		mov	rax, QWORD PTR .refptr.idade[rip]
  53      000000
  54 003f 8B08     		mov	ecx, DWORD PTR [rax]
  55 0041 488B45F8 		mov	rax, QWORD PTR -8[rbp]
  56 0045 488B5510 		mov	rdx, QWORD PTR 16[rbp]
  57 0049 48895424 		mov	QWORD PTR 32[rsp], rdx
  57      20
  58 004e 4189C9   		mov	r9d, ecx
  59 0051 4C8B0500 		mov	r8, QWORD PTR .refptr.nome[rip]
  59      000000
  60 0058 488D1528 		lea	rdx, .LC3[rip]
  60      000000
  61 005f 4889C1   		mov	rcx, rax
  62 0062 E8000000 		call	fprintf
  62      00
  15:C:/Users/Computer/ies/ies/IEST2\PersisteAluno.c **** 
  16:C:/Users/Computer/ies/ies/IEST2\PersisteAluno.c ****     fclose(arquivo);
  63              		.loc 1 16 5
  64 0067 488B45F8 		mov	rax, QWORD PTR -8[rbp]
  65 006b 4889C1   		mov	rcx, rax
  66 006e E8000000 		call	fclose
  66      00
  17:C:/Users/Computer/ies/ies/IEST2\PersisteAluno.c ****     printf("Aluno gravado com sucesso!\n");
  67              		.loc 1 17 5
  68 0073 488D0D4F 		lea	rcx, .LC4[rip]
  68      000000
  69 007a E8000000 		call	puts
  69      00
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccIycmkP.s 			page 3


  70 007f 90       		nop
  71              	.L1:
  18:C:/Users/Computer/ies/ies/IEST2\PersisteAluno.c **** }
  72              		.loc 1 18 1
  73 0080 4883C440 		add	rsp, 64
  74 0084 5D       		pop	rbp
  75              		.cfi_restore 6
  76              		.cfi_def_cfa 7, 8
  77 0085 C3       		ret
  78              		.cfi_endproc
  79              	.LFE16:
  80              		.seh_endproc
  81              	.Letext0:
  82              		.file 2 "C:/Program Files/CodeBlocks/MinGW/x86_64-w64-mingw32/include/stdio.h"
  83              		.file 3 "C:/Program Files/CodeBlocks/MinGW/x86_64-w64-mingw32/include/crtdefs.h"
  84              		.file 4 "C:/Program Files/CodeBlocks/MinGW/x86_64-w64-mingw32/include/stdlib.h"
  85              		.file 5 "C:/Program Files/CodeBlocks/MinGW/x86_64-w64-mingw32/include/malloc.h"
  86 0086 90909090 		.section	.debug_info,"dr"
  86      90909090 
  86      9090
  87              	.Ldebug_info0:
  88 0000 49040000 		.long	0x449
  89 0004 0400     		.word	0x4
  90 0006 00000000 		.secrel32	.Ldebug_abbrev0
  91 000a 08       		.byte	0x8
  92 000b 01       		.uleb128 0x1
  93 000c 474E5520 		.ascii "GNU C17 8.1.0 -masm=intel -mtune=core2 -march=nocona -g\0"
  93      43313720 
  93      382E312E 
  93      30202D6D 
  93      61736D3D 
  94 0044 0C       		.byte	0xc
  95 0045 433A5C55 		.ascii "C:\\Users\\Computer\\ies\\ies\\IEST2\\PersisteAluno.c\0"
  95      73657273 
  95      5C436F6D 
  95      70757465 
  95      725C6965 
  96 0075 433A5C55 		.ascii "C:\\Users\\Computer\\ies\\ies\\IEST2\0"
  96      73657273 
  96      5C436F6D 
  96      70757465 
  96      725C6965 
  97 0095 00000000 		.quad	.Ltext0
  97      00000000 
  98 009d 86000000 		.quad	.Letext0-.Ltext0
  98      00000000 
  99 00a5 00000000 		.secrel32	.Ldebug_line0
 100 00a9 02       		.uleb128 0x2
 101 00aa 01       		.byte	0x1
 102 00ab 06       		.byte	0x6
 103 00ac 63686172 		.ascii "char\0"
 103      00
 104 00b1 03       		.uleb128 0x3
 105 00b2 A9000000 		.long	0xa9
 106 00b6 02       		.uleb128 0x2
 107 00b7 08       		.byte	0x8
 108 00b8 07       		.byte	0x7
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccIycmkP.s 			page 4


 109 00b9 6C6F6E67 		.ascii "long long unsigned int\0"
 109      206C6F6E 
 109      6720756E 
 109      7369676E 
 109      65642069 
 110 00d0 02       		.uleb128 0x2
 111 00d1 08       		.byte	0x8
 112 00d2 05       		.byte	0x5
 113 00d3 6C6F6E67 		.ascii "long long int\0"
 113      206C6F6E 
 113      6720696E 
 113      7400
 114 00e1 04       		.uleb128 0x4
 115 00e2 77636861 		.ascii "wchar_t\0"
 115      725F7400 
 116 00ea 03       		.byte	0x3
 117 00eb 62       		.byte	0x62
 118 00ec 18       		.byte	0x18
 119 00ed F1000000 		.long	0xf1
 120 00f1 02       		.uleb128 0x2
 121 00f2 02       		.byte	0x2
 122 00f3 07       		.byte	0x7
 123 00f4 73686F72 		.ascii "short unsigned int\0"
 123      7420756E 
 123      7369676E 
 123      65642069 
 123      6E7400
 124 0107 02       		.uleb128 0x2
 125 0108 04       		.byte	0x4
 126 0109 05       		.byte	0x5
 127 010a 696E7400 		.ascii "int\0"
 128 010e 02       		.uleb128 0x2
 129 010f 04       		.byte	0x4
 130 0110 05       		.byte	0x5
 131 0111 6C6F6E67 		.ascii "long int\0"
 131      20696E74 
 131      00
 132 011a 05       		.uleb128 0x5
 133 011b 08       		.byte	0x8
 134 011c A9000000 		.long	0xa9
 135 0120 05       		.uleb128 0x5
 136 0121 08       		.byte	0x8
 137 0122 E1000000 		.long	0xe1
 138 0126 05       		.uleb128 0x5
 139 0127 08       		.byte	0x8
 140 0128 07010000 		.long	0x107
 141 012c 02       		.uleb128 0x2
 142 012d 04       		.byte	0x4
 143 012e 07       		.byte	0x7
 144 012f 756E7369 		.ascii "unsigned int\0"
 144      676E6564 
 144      20696E74 
 144      00
 145 013c 02       		.uleb128 0x2
 146 013d 04       		.byte	0x4
 147 013e 07       		.byte	0x7
 148 013f 6C6F6E67 		.ascii "long unsigned int\0"
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccIycmkP.s 			page 5


 148      20756E73 
 148      69676E65 
 148      6420696E 
 148      7400
 149 0151 02       		.uleb128 0x2
 150 0152 01       		.byte	0x1
 151 0153 08       		.byte	0x8
 152 0154 756E7369 		.ascii "unsigned char\0"
 152      676E6564 
 152      20636861 
 152      7200
 153 0162 06       		.uleb128 0x6
 154 0163 5F696F62 		.ascii "_iobuf\0"
 154      756600
 155 016a 30       		.byte	0x30
 156 016b 02       		.byte	0x2
 157 016c 1A       		.byte	0x1a
 158 016d 0A       		.byte	0xa
 159 016e F2010000 		.long	0x1f2
 160 0172 07       		.uleb128 0x7
 161 0173 5F707472 		.ascii "_ptr\0"
 161      00
 162 0178 02       		.byte	0x2
 163 0179 1B       		.byte	0x1b
 164 017a 0B       		.byte	0xb
 165 017b 1A010000 		.long	0x11a
 166 017f 00       		.byte	0
 167 0180 07       		.uleb128 0x7
 168 0181 5F636E74 		.ascii "_cnt\0"
 168      00
 169 0186 02       		.byte	0x2
 170 0187 1C       		.byte	0x1c
 171 0188 09       		.byte	0x9
 172 0189 07010000 		.long	0x107
 173 018d 08       		.byte	0x8
 174 018e 07       		.uleb128 0x7
 175 018f 5F626173 		.ascii "_base\0"
 175      6500
 176 0195 02       		.byte	0x2
 177 0196 1D       		.byte	0x1d
 178 0197 0B       		.byte	0xb
 179 0198 1A010000 		.long	0x11a
 180 019c 10       		.byte	0x10
 181 019d 07       		.uleb128 0x7
 182 019e 5F666C61 		.ascii "_flag\0"
 182      6700
 183 01a4 02       		.byte	0x2
 184 01a5 1E       		.byte	0x1e
 185 01a6 09       		.byte	0x9
 186 01a7 07010000 		.long	0x107
 187 01ab 18       		.byte	0x18
 188 01ac 07       		.uleb128 0x7
 189 01ad 5F66696C 		.ascii "_file\0"
 189      6500
 190 01b3 02       		.byte	0x2
 191 01b4 1F       		.byte	0x1f
 192 01b5 09       		.byte	0x9
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccIycmkP.s 			page 6


 193 01b6 07010000 		.long	0x107
 194 01ba 1C       		.byte	0x1c
 195 01bb 07       		.uleb128 0x7
 196 01bc 5F636861 		.ascii "_charbuf\0"
 196      72627566 
 196      00
 197 01c5 02       		.byte	0x2
 198 01c6 20       		.byte	0x20
 199 01c7 09       		.byte	0x9
 200 01c8 07010000 		.long	0x107
 201 01cc 20       		.byte	0x20
 202 01cd 07       		.uleb128 0x7
 203 01ce 5F627566 		.ascii "_bufsiz\0"
 203      73697A00 
 204 01d6 02       		.byte	0x2
 205 01d7 21       		.byte	0x21
 206 01d8 09       		.byte	0x9
 207 01d9 07010000 		.long	0x107
 208 01dd 24       		.byte	0x24
 209 01de 07       		.uleb128 0x7
 210 01df 5F746D70 		.ascii "_tmpfname\0"
 210      666E616D 
 210      6500
 211 01e9 02       		.byte	0x2
 212 01ea 22       		.byte	0x22
 213 01eb 0B       		.byte	0xb
 214 01ec 1A010000 		.long	0x11a
 215 01f0 28       		.byte	0x28
 216 01f1 00       		.byte	0
 217 01f2 04       		.uleb128 0x4
 218 01f3 46494C45 		.ascii "FILE\0"
 218      00
 219 01f8 02       		.byte	0x2
 220 01f9 24       		.byte	0x24
 221 01fa 19       		.byte	0x19
 222 01fb 62010000 		.long	0x162
 223 01ff 02       		.uleb128 0x2
 224 0200 08       		.byte	0x8
 225 0201 04       		.byte	0x4
 226 0202 646F7562 		.ascii "double\0"
 226      6C6500
 227 0209 02       		.uleb128 0x2
 228 020a 04       		.byte	0x4
 229 020b 04       		.byte	0x4
 230 020c 666C6F61 		.ascii "float\0"
 230      7400
 231 0212 02       		.uleb128 0x2
 232 0213 10       		.byte	0x10
 233 0214 04       		.byte	0x4
 234 0215 6C6F6E67 		.ascii "long double\0"
 234      20646F75 
 234      626C6500 
 235 0221 08       		.uleb128 0x8
 236 0222 5F5F696D 		.ascii "__imp___mb_cur_max\0"
 236      705F5F5F 
 236      6D625F63 
 236      75725F6D 
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccIycmkP.s 			page 7


 236      617800
 237 0235 04       		.byte	0x4
 238 0236 73       		.byte	0x73
 239 0237 10       		.byte	0x10
 240 0238 26010000 		.long	0x126
 241 023c 09       		.uleb128 0x9
 242 023d 1A010000 		.long	0x11a
 243 0241 4C020000 		.long	0x24c
 244 0245 0A       		.uleb128 0xa
 245 0246 B6000000 		.long	0xb6
 246 024a 00       		.byte	0
 247 024b 00       		.byte	0
 248 024c 08       		.uleb128 0x8
 249 024d 5F737973 		.ascii "_sys_errlist\0"
 249      5F657272 
 249      6C697374 
 249      00
 250 025a 04       		.byte	0x4
 251 025b AC       		.byte	0xac
 252 025c 26       		.byte	0x26
 253 025d 3C020000 		.long	0x23c
 254 0261 08       		.uleb128 0x8
 255 0262 5F737973 		.ascii "_sys_nerr\0"
 255      5F6E6572 
 255      7200
 256 026c 04       		.byte	0x4
 257 026d AD       		.byte	0xad
 258 026e 24       		.byte	0x24
 259 026f 07010000 		.long	0x107
 260 0273 0B       		.uleb128 0xb
 261 0274 5F5F696D 		.ascii "__imp___argc\0"
 261      705F5F5F 
 261      61726763 
 261      00
 262 0281 04       		.byte	0x4
 263 0282 1901     		.word	0x119
 264 0284 10       		.byte	0x10
 265 0285 26010000 		.long	0x126
 266 0289 0B       		.uleb128 0xb
 267 028a 5F5F696D 		.ascii "__imp___argv\0"
 267      705F5F5F 
 267      61726776 
 267      00
 268 0297 04       		.byte	0x4
 269 0298 1D01     		.word	0x11d
 270 029a 13       		.byte	0x13
 271 029b 9F020000 		.long	0x29f
 272 029f 05       		.uleb128 0x5
 273 02a0 08       		.byte	0x8
 274 02a1 A5020000 		.long	0x2a5
 275 02a5 05       		.uleb128 0x5
 276 02a6 08       		.byte	0x8
 277 02a7 1A010000 		.long	0x11a
 278 02ab 0B       		.uleb128 0xb
 279 02ac 5F5F696D 		.ascii "__imp___wargv\0"
 279      705F5F5F 
 279      77617267 
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccIycmkP.s 			page 8


 279      7600
 280 02ba 04       		.byte	0x4
 281 02bb 2101     		.word	0x121
 282 02bd 16       		.byte	0x16
 283 02be C2020000 		.long	0x2c2
 284 02c2 05       		.uleb128 0x5
 285 02c3 08       		.byte	0x8
 286 02c4 C8020000 		.long	0x2c8
 287 02c8 05       		.uleb128 0x5
 288 02c9 08       		.byte	0x8
 289 02ca 20010000 		.long	0x120
 290 02ce 0B       		.uleb128 0xb
 291 02cf 5F5F696D 		.ascii "__imp__environ\0"
 291      705F5F65 
 291      6E766972 
 291      6F6E00
 292 02de 04       		.byte	0x4
 293 02df 2701     		.word	0x127
 294 02e1 13       		.byte	0x13
 295 02e2 9F020000 		.long	0x29f
 296 02e6 0B       		.uleb128 0xb
 297 02e7 5F5F696D 		.ascii "__imp__wenviron\0"
 297      705F5F77 
 297      656E7669 
 297      726F6E00 
 298 02f7 04       		.byte	0x4
 299 02f8 2C01     		.word	0x12c
 300 02fa 16       		.byte	0x16
 301 02fb C2020000 		.long	0x2c2
 302 02ff 0B       		.uleb128 0xb
 303 0300 5F5F696D 		.ascii "__imp__pgmptr\0"
 303      705F5F70 
 303      676D7074 
 303      7200
 304 030e 04       		.byte	0x4
 305 030f 3201     		.word	0x132
 306 0311 12       		.byte	0x12
 307 0312 A5020000 		.long	0x2a5
 308 0316 0B       		.uleb128 0xb
 309 0317 5F5F696D 		.ascii "__imp__wpgmptr\0"
 309      705F5F77 
 309      70676D70 
 309      747200
 310 0326 04       		.byte	0x4
 311 0327 3701     		.word	0x137
 312 0329 15       		.byte	0x15
 313 032a C8020000 		.long	0x2c8
 314 032e 0B       		.uleb128 0xb
 315 032f 5F5F696D 		.ascii "__imp__osplatform\0"
 315      705F5F6F 
 315      73706C61 
 315      74666F72 
 315      6D00
 316 0341 04       		.byte	0x4
 317 0342 3C01     		.word	0x13c
 318 0344 19       		.byte	0x19
 319 0345 49030000 		.long	0x349
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccIycmkP.s 			page 9


 320 0349 05       		.uleb128 0x5
 321 034a 08       		.byte	0x8
 322 034b 2C010000 		.long	0x12c
 323 034f 0B       		.uleb128 0xb
 324 0350 5F5F696D 		.ascii "__imp__osver\0"
 324      705F5F6F 
 324      73766572 
 324      00
 325 035d 04       		.byte	0x4
 326 035e 4101     		.word	0x141
 327 0360 19       		.byte	0x19
 328 0361 49030000 		.long	0x349
 329 0365 0B       		.uleb128 0xb
 330 0366 5F5F696D 		.ascii "__imp__winver\0"
 330      705F5F77 
 330      696E7665 
 330      7200
 331 0374 04       		.byte	0x4
 332 0375 4601     		.word	0x146
 333 0377 19       		.byte	0x19
 334 0378 49030000 		.long	0x349
 335 037c 0B       		.uleb128 0xb
 336 037d 5F5F696D 		.ascii "__imp__winmajor\0"
 336      705F5F77 
 336      696E6D61 
 336      6A6F7200 
 337 038d 04       		.byte	0x4
 338 038e 4B01     		.word	0x14b
 339 0390 19       		.byte	0x19
 340 0391 49030000 		.long	0x349
 341 0395 0B       		.uleb128 0xb
 342 0396 5F5F696D 		.ascii "__imp__winminor\0"
 342      705F5F77 
 342      696E6D69 
 342      6E6F7200 
 343 03a6 04       		.byte	0x4
 344 03a7 5001     		.word	0x150
 345 03a9 19       		.byte	0x19
 346 03aa 49030000 		.long	0x349
 347 03ae 08       		.uleb128 0x8
 348 03af 5F616D62 		.ascii "_amblksiz\0"
 348      6C6B7369 
 348      7A00
 349 03b9 05       		.byte	0x5
 350 03ba 35       		.byte	0x35
 351 03bb 17       		.byte	0x17
 352 03bc 2C010000 		.long	0x12c
 353 03c0 09       		.uleb128 0x9
 354 03c1 A9000000 		.long	0xa9
 355 03c5 D0030000 		.long	0x3d0
 356 03c9 0A       		.uleb128 0xa
 357 03ca B6000000 		.long	0xb6
 358 03ce 63       		.byte	0x63
 359 03cf 00       		.byte	0
 360 03d0 08       		.uleb128 0x8
 361 03d1 6E6F6D65 		.ascii "nome\0"
 361      00
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccIycmkP.s 			page 10


 362 03d6 01       		.byte	0x1
 363 03d7 04       		.byte	0x4
 364 03d8 0D       		.byte	0xd
 365 03d9 C0030000 		.long	0x3c0
 366 03dd 08       		.uleb128 0x8
 367 03de 69646164 		.ascii "idade\0"
 367      6500
 368 03e4 01       		.byte	0x1
 369 03e5 05       		.byte	0x5
 370 03e6 0C       		.byte	0xc
 371 03e7 07010000 		.long	0x107
 372 03eb 0C       		.uleb128 0xc
 373 03ec 70657273 		.ascii "persisteAluno\0"
 373      69737465 
 373      416C756E 
 373      6F00
 374 03fa 01       		.byte	0x1
 375 03fb 07       		.byte	0x7
 376 03fc 06       		.byte	0x6
 377 03fd 00000000 		.quad	.LFB16
 377      00000000 
 378 0405 86000000 		.quad	.LFE16-.LFB16
 378      00000000 
 379 040d 01       		.uleb128 0x1
 380 040e 9C       		.byte	0x9c
 381 040f 40040000 		.long	0x440
 382 0413 0D       		.uleb128 0xd
 383 0414 636C6173 		.ascii "classificacao\0"
 383      73696669 
 383      63616361 
 383      6F00
 384 0422 01       		.byte	0x1
 385 0423 07       		.byte	0x7
 386 0424 20       		.byte	0x20
 387 0425 40040000 		.long	0x440
 388 0429 02       		.uleb128 0x2
 389 042a 91       		.byte	0x91
 390 042b 00       		.sleb128 0
 391 042c 0E       		.uleb128 0xe
 392 042d 61727175 		.ascii "arquivo\0"
 392      69766F00 
 393 0435 01       		.byte	0x1
 394 0436 08       		.byte	0x8
 395 0437 0B       		.byte	0xb
 396 0438 46040000 		.long	0x446
 397 043c 02       		.uleb128 0x2
 398 043d 91       		.byte	0x91
 399 043e 68       		.sleb128 -24
 400 043f 00       		.byte	0
 401 0440 05       		.uleb128 0x5
 402 0441 08       		.byte	0x8
 403 0442 B1000000 		.long	0xb1
 404 0446 05       		.uleb128 0x5
 405 0447 08       		.byte	0x8
 406 0448 F2010000 		.long	0x1f2
 407 044c 00       		.byte	0
 408              		.section	.debug_abbrev,"dr"
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccIycmkP.s 			page 11


 409              	.Ldebug_abbrev0:
 410 0000 01       		.uleb128 0x1
 411 0001 11       		.uleb128 0x11
 412 0002 01       		.byte	0x1
 413 0003 25       		.uleb128 0x25
 414 0004 08       		.uleb128 0x8
 415 0005 13       		.uleb128 0x13
 416 0006 0B       		.uleb128 0xb
 417 0007 03       		.uleb128 0x3
 418 0008 08       		.uleb128 0x8
 419 0009 1B       		.uleb128 0x1b
 420 000a 08       		.uleb128 0x8
 421 000b 11       		.uleb128 0x11
 422 000c 01       		.uleb128 0x1
 423 000d 12       		.uleb128 0x12
 424 000e 07       		.uleb128 0x7
 425 000f 10       		.uleb128 0x10
 426 0010 17       		.uleb128 0x17
 427 0011 00       		.byte	0
 428 0012 00       		.byte	0
 429 0013 02       		.uleb128 0x2
 430 0014 24       		.uleb128 0x24
 431 0015 00       		.byte	0
 432 0016 0B       		.uleb128 0xb
 433 0017 0B       		.uleb128 0xb
 434 0018 3E       		.uleb128 0x3e
 435 0019 0B       		.uleb128 0xb
 436 001a 03       		.uleb128 0x3
 437 001b 08       		.uleb128 0x8
 438 001c 00       		.byte	0
 439 001d 00       		.byte	0
 440 001e 03       		.uleb128 0x3
 441 001f 26       		.uleb128 0x26
 442 0020 00       		.byte	0
 443 0021 49       		.uleb128 0x49
 444 0022 13       		.uleb128 0x13
 445 0023 00       		.byte	0
 446 0024 00       		.byte	0
 447 0025 04       		.uleb128 0x4
 448 0026 16       		.uleb128 0x16
 449 0027 00       		.byte	0
 450 0028 03       		.uleb128 0x3
 451 0029 08       		.uleb128 0x8
 452 002a 3A       		.uleb128 0x3a
 453 002b 0B       		.uleb128 0xb
 454 002c 3B       		.uleb128 0x3b
 455 002d 0B       		.uleb128 0xb
 456 002e 39       		.uleb128 0x39
 457 002f 0B       		.uleb128 0xb
 458 0030 49       		.uleb128 0x49
 459 0031 13       		.uleb128 0x13
 460 0032 00       		.byte	0
 461 0033 00       		.byte	0
 462 0034 05       		.uleb128 0x5
 463 0035 0F       		.uleb128 0xf
 464 0036 00       		.byte	0
 465 0037 0B       		.uleb128 0xb
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccIycmkP.s 			page 12


 466 0038 0B       		.uleb128 0xb
 467 0039 49       		.uleb128 0x49
 468 003a 13       		.uleb128 0x13
 469 003b 00       		.byte	0
 470 003c 00       		.byte	0
 471 003d 06       		.uleb128 0x6
 472 003e 13       		.uleb128 0x13
 473 003f 01       		.byte	0x1
 474 0040 03       		.uleb128 0x3
 475 0041 08       		.uleb128 0x8
 476 0042 0B       		.uleb128 0xb
 477 0043 0B       		.uleb128 0xb
 478 0044 3A       		.uleb128 0x3a
 479 0045 0B       		.uleb128 0xb
 480 0046 3B       		.uleb128 0x3b
 481 0047 0B       		.uleb128 0xb
 482 0048 39       		.uleb128 0x39
 483 0049 0B       		.uleb128 0xb
 484 004a 01       		.uleb128 0x1
 485 004b 13       		.uleb128 0x13
 486 004c 00       		.byte	0
 487 004d 00       		.byte	0
 488 004e 07       		.uleb128 0x7
 489 004f 0D       		.uleb128 0xd
 490 0050 00       		.byte	0
 491 0051 03       		.uleb128 0x3
 492 0052 08       		.uleb128 0x8
 493 0053 3A       		.uleb128 0x3a
 494 0054 0B       		.uleb128 0xb
 495 0055 3B       		.uleb128 0x3b
 496 0056 0B       		.uleb128 0xb
 497 0057 39       		.uleb128 0x39
 498 0058 0B       		.uleb128 0xb
 499 0059 49       		.uleb128 0x49
 500 005a 13       		.uleb128 0x13
 501 005b 38       		.uleb128 0x38
 502 005c 0B       		.uleb128 0xb
 503 005d 00       		.byte	0
 504 005e 00       		.byte	0
 505 005f 08       		.uleb128 0x8
 506 0060 34       		.uleb128 0x34
 507 0061 00       		.byte	0
 508 0062 03       		.uleb128 0x3
 509 0063 08       		.uleb128 0x8
 510 0064 3A       		.uleb128 0x3a
 511 0065 0B       		.uleb128 0xb
 512 0066 3B       		.uleb128 0x3b
 513 0067 0B       		.uleb128 0xb
 514 0068 39       		.uleb128 0x39
 515 0069 0B       		.uleb128 0xb
 516 006a 49       		.uleb128 0x49
 517 006b 13       		.uleb128 0x13
 518 006c 3F       		.uleb128 0x3f
 519 006d 19       		.uleb128 0x19
 520 006e 3C       		.uleb128 0x3c
 521 006f 19       		.uleb128 0x19
 522 0070 00       		.byte	0
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccIycmkP.s 			page 13


 523 0071 00       		.byte	0
 524 0072 09       		.uleb128 0x9
 525 0073 01       		.uleb128 0x1
 526 0074 01       		.byte	0x1
 527 0075 49       		.uleb128 0x49
 528 0076 13       		.uleb128 0x13
 529 0077 01       		.uleb128 0x1
 530 0078 13       		.uleb128 0x13
 531 0079 00       		.byte	0
 532 007a 00       		.byte	0
 533 007b 0A       		.uleb128 0xa
 534 007c 21       		.uleb128 0x21
 535 007d 00       		.byte	0
 536 007e 49       		.uleb128 0x49
 537 007f 13       		.uleb128 0x13
 538 0080 2F       		.uleb128 0x2f
 539 0081 0B       		.uleb128 0xb
 540 0082 00       		.byte	0
 541 0083 00       		.byte	0
 542 0084 0B       		.uleb128 0xb
 543 0085 34       		.uleb128 0x34
 544 0086 00       		.byte	0
 545 0087 03       		.uleb128 0x3
 546 0088 08       		.uleb128 0x8
 547 0089 3A       		.uleb128 0x3a
 548 008a 0B       		.uleb128 0xb
 549 008b 3B       		.uleb128 0x3b
 550 008c 05       		.uleb128 0x5
 551 008d 39       		.uleb128 0x39
 552 008e 0B       		.uleb128 0xb
 553 008f 49       		.uleb128 0x49
 554 0090 13       		.uleb128 0x13
 555 0091 3F       		.uleb128 0x3f
 556 0092 19       		.uleb128 0x19
 557 0093 3C       		.uleb128 0x3c
 558 0094 19       		.uleb128 0x19
 559 0095 00       		.byte	0
 560 0096 00       		.byte	0
 561 0097 0C       		.uleb128 0xc
 562 0098 2E       		.uleb128 0x2e
 563 0099 01       		.byte	0x1
 564 009a 3F       		.uleb128 0x3f
 565 009b 19       		.uleb128 0x19
 566 009c 03       		.uleb128 0x3
 567 009d 08       		.uleb128 0x8
 568 009e 3A       		.uleb128 0x3a
 569 009f 0B       		.uleb128 0xb
 570 00a0 3B       		.uleb128 0x3b
 571 00a1 0B       		.uleb128 0xb
 572 00a2 39       		.uleb128 0x39
 573 00a3 0B       		.uleb128 0xb
 574 00a4 27       		.uleb128 0x27
 575 00a5 19       		.uleb128 0x19
 576 00a6 11       		.uleb128 0x11
 577 00a7 01       		.uleb128 0x1
 578 00a8 12       		.uleb128 0x12
 579 00a9 07       		.uleb128 0x7
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccIycmkP.s 			page 14


 580 00aa 40       		.uleb128 0x40
 581 00ab 18       		.uleb128 0x18
 582 00ac 9642     		.uleb128 0x2116
 583 00ae 19       		.uleb128 0x19
 584 00af 01       		.uleb128 0x1
 585 00b0 13       		.uleb128 0x13
 586 00b1 00       		.byte	0
 587 00b2 00       		.byte	0
 588 00b3 0D       		.uleb128 0xd
 589 00b4 05       		.uleb128 0x5
 590 00b5 00       		.byte	0
 591 00b6 03       		.uleb128 0x3
 592 00b7 08       		.uleb128 0x8
 593 00b8 3A       		.uleb128 0x3a
 594 00b9 0B       		.uleb128 0xb
 595 00ba 3B       		.uleb128 0x3b
 596 00bb 0B       		.uleb128 0xb
 597 00bc 39       		.uleb128 0x39
 598 00bd 0B       		.uleb128 0xb
 599 00be 49       		.uleb128 0x49
 600 00bf 13       		.uleb128 0x13
 601 00c0 02       		.uleb128 0x2
 602 00c1 18       		.uleb128 0x18
 603 00c2 00       		.byte	0
 604 00c3 00       		.byte	0
 605 00c4 0E       		.uleb128 0xe
 606 00c5 34       		.uleb128 0x34
 607 00c6 00       		.byte	0
 608 00c7 03       		.uleb128 0x3
 609 00c8 08       		.uleb128 0x8
 610 00c9 3A       		.uleb128 0x3a
 611 00ca 0B       		.uleb128 0xb
 612 00cb 3B       		.uleb128 0x3b
 613 00cc 0B       		.uleb128 0xb
 614 00cd 39       		.uleb128 0x39
 615 00ce 0B       		.uleb128 0xb
 616 00cf 49       		.uleb128 0x49
 617 00d0 13       		.uleb128 0x13
 618 00d1 02       		.uleb128 0x2
 619 00d2 18       		.uleb128 0x18
 620 00d3 00       		.byte	0
 621 00d4 00       		.byte	0
 622 00d5 00       		.byte	0
 623              		.section	.debug_aranges,"dr"
 624 0000 2C000000 		.long	0x2c
 625 0004 0200     		.word	0x2
 626 0006 00000000 		.secrel32	.Ldebug_info0
 627 000a 08       		.byte	0x8
 628 000b 00       		.byte	0
 629 000c 0000     		.word	0
 630 000e 0000     		.word	0
 631 0010 00000000 		.quad	.Ltext0
 631      00000000 
 632 0018 86000000 		.quad	.Letext0-.Ltext0
 632      00000000 
 633 0020 00000000 		.quad	0
 633      00000000 
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccIycmkP.s 			page 15


 634 0028 00000000 		.quad	0
 634      00000000 
 635              		.section	.debug_line,"dr"
 636              	.Ldebug_line0:
 637 0000 E1000000 		.section	.debug_str,"dr"
 637      0200B300 
 637      00000101 
 637      FB0E0D00 
 637      01010101 
 638              		.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
 643              		.section	.rdata$.refptr.nome, "dr"
 644              		.globl	.refptr.nome
 645              		.linkonce	discard
 646              	.refptr.nome:
 647 0000 00000000 		.quad	nome
 647      00000000 
 648 0008 00000000 		.section	.rdata$.refptr.idade, "dr"
 648      00000000 
 649              		.globl	.refptr.idade
 650              		.linkonce	discard
 651              	.refptr.idade:
 652 0000 00000000 		.quad	idade
 652      00000000 
 652      00000000 
 652      00000000 
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccIycmkP.s 			page 16


DEFINED SYMBOLS
                            *ABS*:0000000000000000 PersisteAluno.c
C:\Users\Computer\AppData\Local\Temp\ccIycmkP.s:22     .text:0000000000000000 persisteAluno
C:\Users\Computer\AppData\Local\Temp\ccIycmkP.s:651    .rdata$.refptr.idade:0000000000000000 .refptr.idade
C:\Users\Computer\AppData\Local\Temp\ccIycmkP.s:646    .rdata$.refptr.nome:0000000000000000 .refptr.nome

UNDEFINED SYMBOLS
fopen
puts
fprintf
fclose
nome
idade
