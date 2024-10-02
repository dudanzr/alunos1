GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccCJDMIL.s 			page 1


   1              		.file	"ControleAluno.c"
   2              		.intel_syntax noprefix
   3              		.text
   4              	.Ltext0:
   5              		.cfi_sections	.debug_frame
   6              		.section .rdata,"dr"
   7              	.LC0:
   8 0000 4A756E69 		.ascii "Junior\0"
   8      6F7200
   9              	.LC1:
  10 0007 53656E69 		.ascii "Senior\0"
  10      6F7200
  11 000e 0000     		.text
  12              		.globl	classificaAluno
  14              		.seh_proc	classificaAluno
  15              	classificaAluno:
  16              	.LFB13:
  17              		.file 1 "C:/Users/Computer/ies/ies/IEST2/ControleAluno.c"
   1:C:/Users/Computer/ies/ies/IEST2\ControleAluno.c **** #include <stdio.h>
   2:C:/Users/Computer/ies/ies/IEST2\ControleAluno.c **** 
   3:C:/Users/Computer/ies/ies/IEST2\ControleAluno.c **** extern char nome[100];
   4:C:/Users/Computer/ies/ies/IEST2\ControleAluno.c **** extern int idade;
   5:C:/Users/Computer/ies/ies/IEST2\ControleAluno.c **** 
   6:C:/Users/Computer/ies/ies/IEST2\ControleAluno.c **** void classificaAluno(char *classificacao) {
  18              		.loc 1 6 43
  19              		.cfi_startproc
  20 0000 55       		push	rbp
  21              		.seh_pushreg	rbp
  22              		.cfi_def_cfa_offset 16
  23              		.cfi_offset 6, -16
  24 0001 4889E5   		mov	rbp, rsp
  25              		.seh_setframe	rbp, 0
  26              		.cfi_def_cfa_register 6
  27 0004 4883EC20 		sub	rsp, 32
  28              		.seh_stackalloc	32
  29              		.seh_endprologue
  30 0008 48894D10 		mov	QWORD PTR 16[rbp], rcx
   7:C:/Users/Computer/ies/ies/IEST2\ControleAluno.c ****     if (idade < 18) {
  31              		.loc 1 7 15
  32 000c 488B0500 		mov	rax, QWORD PTR .refptr.idade[rip]
  32      000000
  33 0013 8B00     		mov	eax, DWORD PTR [rax]
  34              		.loc 1 7 8
  35 0015 83F811   		cmp	eax, 17
  36 0018 7F12     		jg	.L2
   8:C:/Users/Computer/ies/ies/IEST2\ControleAluno.c ****         sprintf(classificacao, "Junior");
  37              		.loc 1 8 9
  38 001a 488D1500 		lea	rdx, .LC0[rip]
  38      000000
  39 0021 488B4D10 		mov	rcx, QWORD PTR 16[rbp]
  40 0025 E8000000 		call	sprintf
  40      00
   9:C:/Users/Computer/ies/ies/IEST2\ControleAluno.c ****     } else {
  10:C:/Users/Computer/ies/ies/IEST2\ControleAluno.c ****         sprintf(classificacao, "Senior");
  11:C:/Users/Computer/ies/ies/IEST2\ControleAluno.c ****     }
  12:C:/Users/Computer/ies/ies/IEST2\ControleAluno.c **** }
  41              		.loc 1 12 1
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccCJDMIL.s 			page 2


  42 002a EB10     		jmp	.L4
  43              	.L2:
  10:C:/Users/Computer/ies/ies/IEST2\ControleAluno.c ****     }
  44              		.loc 1 10 9
  45 002c 488D1507 		lea	rdx, .LC1[rip]
  45      000000
  46 0033 488B4D10 		mov	rcx, QWORD PTR 16[rbp]
  47 0037 E8000000 		call	sprintf
  47      00
  48              	.L4:
  49              		.loc 1 12 1
  50 003c 90       		nop
  51 003d 4883C420 		add	rsp, 32
  52 0041 5D       		pop	rbp
  53              		.cfi_restore 6
  54              		.cfi_def_cfa 7, 8
  55 0042 C3       		ret
  56              		.cfi_endproc
  57              	.LFE13:
  58              		.seh_endproc
  59              	.Letext0:
  60 0043 90909090 		.section	.debug_info,"dr"
  60      90909090 
  60      90909090 
  60      90
  61              	.Ldebug_info0:
  62 0000 A9010000 		.long	0x1a9
  63 0004 0400     		.word	0x4
  64 0006 00000000 		.secrel32	.Ldebug_abbrev0
  65 000a 08       		.byte	0x8
  66 000b 01       		.uleb128 0x1
  67 000c 474E5520 		.ascii "GNU C17 8.1.0 -masm=intel -mtune=core2 -march=nocona -g\0"
  67      43313720 
  67      382E312E 
  67      30202D6D 
  67      61736D3D 
  68 0044 0C       		.byte	0xc
  69 0045 433A5C55 		.ascii "C:\\Users\\Computer\\ies\\ies\\IEST2\\ControleAluno.c\0"
  69      73657273 
  69      5C436F6D 
  69      70757465 
  69      725C6965 
  70 0075 433A5C55 		.ascii "C:\\Users\\Computer\\ies\\ies\\IEST2\0"
  70      73657273 
  70      5C436F6D 
  70      70757465 
  70      725C6965 
  71 0095 00000000 		.quad	.Ltext0
  71      00000000 
  72 009d 43000000 		.quad	.Letext0-.Ltext0
  72      00000000 
  73 00a5 00000000 		.secrel32	.Ldebug_line0
  74 00a9 02       		.uleb128 0x2
  75 00aa 01       		.byte	0x1
  76 00ab 06       		.byte	0x6
  77 00ac 63686172 		.ascii "char\0"
  77      00
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccCJDMIL.s 			page 3


  78 00b1 02       		.uleb128 0x2
  79 00b2 08       		.byte	0x8
  80 00b3 07       		.byte	0x7
  81 00b4 6C6F6E67 		.ascii "long long unsigned int\0"
  81      206C6F6E 
  81      6720756E 
  81      7369676E 
  81      65642069 
  82 00cb 02       		.uleb128 0x2
  83 00cc 08       		.byte	0x8
  84 00cd 05       		.byte	0x5
  85 00ce 6C6F6E67 		.ascii "long long int\0"
  85      206C6F6E 
  85      6720696E 
  85      7400
  86 00dc 02       		.uleb128 0x2
  87 00dd 02       		.byte	0x2
  88 00de 07       		.byte	0x7
  89 00df 73686F72 		.ascii "short unsigned int\0"
  89      7420756E 
  89      7369676E 
  89      65642069 
  89      6E7400
  90 00f2 02       		.uleb128 0x2
  91 00f3 04       		.byte	0x4
  92 00f4 05       		.byte	0x5
  93 00f5 696E7400 		.ascii "int\0"
  94 00f9 02       		.uleb128 0x2
  95 00fa 04       		.byte	0x4
  96 00fb 05       		.byte	0x5
  97 00fc 6C6F6E67 		.ascii "long int\0"
  97      20696E74 
  97      00
  98 0105 03       		.uleb128 0x3
  99 0106 08       		.byte	0x8
 100 0107 A9000000 		.long	0xa9
 101 010b 02       		.uleb128 0x2
 102 010c 04       		.byte	0x4
 103 010d 07       		.byte	0x7
 104 010e 756E7369 		.ascii "unsigned int\0"
 104      676E6564 
 104      20696E74 
 104      00
 105 011b 02       		.uleb128 0x2
 106 011c 04       		.byte	0x4
 107 011d 07       		.byte	0x7
 108 011e 6C6F6E67 		.ascii "long unsigned int\0"
 108      20756E73 
 108      69676E65 
 108      6420696E 
 108      7400
 109 0130 02       		.uleb128 0x2
 110 0131 01       		.byte	0x1
 111 0132 08       		.byte	0x8
 112 0133 756E7369 		.ascii "unsigned char\0"
 112      676E6564 
 112      20636861 
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccCJDMIL.s 			page 4


 112      7200
 113 0141 04       		.uleb128 0x4
 114 0142 A9000000 		.long	0xa9
 115 0146 51010000 		.long	0x151
 116 014a 05       		.uleb128 0x5
 117 014b B1000000 		.long	0xb1
 118 014f 63       		.byte	0x63
 119 0150 00       		.byte	0
 120 0151 06       		.uleb128 0x6
 121 0152 6E6F6D65 		.ascii "nome\0"
 121      00
 122 0157 01       		.byte	0x1
 123 0158 03       		.byte	0x3
 124 0159 0D       		.byte	0xd
 125 015a 41010000 		.long	0x141
 126 015e 06       		.uleb128 0x6
 127 015f 69646164 		.ascii "idade\0"
 127      6500
 128 0165 01       		.byte	0x1
 129 0166 04       		.byte	0x4
 130 0167 0C       		.byte	0xc
 131 0168 F2000000 		.long	0xf2
 132 016c 07       		.uleb128 0x7
 133 016d 636C6173 		.ascii "classificaAluno\0"
 133      73696669 
 133      6361416C 
 133      756E6F00 
 134 017d 01       		.byte	0x1
 135 017e 06       		.byte	0x6
 136 017f 06       		.byte	0x6
 137 0180 00000000 		.quad	.LFB13
 137      00000000 
 138 0188 43000000 		.quad	.LFE13-.LFB13
 138      00000000 
 139 0190 01       		.uleb128 0x1
 140 0191 9C       		.byte	0x9c
 141 0192 08       		.uleb128 0x8
 142 0193 636C6173 		.ascii "classificacao\0"
 142      73696669 
 142      63616361 
 142      6F00
 143 01a1 01       		.byte	0x1
 144 01a2 06       		.byte	0x6
 145 01a3 1C       		.byte	0x1c
 146 01a4 05010000 		.long	0x105
 147 01a8 02       		.uleb128 0x2
 148 01a9 91       		.byte	0x91
 149 01aa 00       		.sleb128 0
 150 01ab 00       		.byte	0
 151 01ac 00       		.byte	0
 152              		.section	.debug_abbrev,"dr"
 153              	.Ldebug_abbrev0:
 154 0000 01       		.uleb128 0x1
 155 0001 11       		.uleb128 0x11
 156 0002 01       		.byte	0x1
 157 0003 25       		.uleb128 0x25
 158 0004 08       		.uleb128 0x8
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccCJDMIL.s 			page 5


 159 0005 13       		.uleb128 0x13
 160 0006 0B       		.uleb128 0xb
 161 0007 03       		.uleb128 0x3
 162 0008 08       		.uleb128 0x8
 163 0009 1B       		.uleb128 0x1b
 164 000a 08       		.uleb128 0x8
 165 000b 11       		.uleb128 0x11
 166 000c 01       		.uleb128 0x1
 167 000d 12       		.uleb128 0x12
 168 000e 07       		.uleb128 0x7
 169 000f 10       		.uleb128 0x10
 170 0010 17       		.uleb128 0x17
 171 0011 00       		.byte	0
 172 0012 00       		.byte	0
 173 0013 02       		.uleb128 0x2
 174 0014 24       		.uleb128 0x24
 175 0015 00       		.byte	0
 176 0016 0B       		.uleb128 0xb
 177 0017 0B       		.uleb128 0xb
 178 0018 3E       		.uleb128 0x3e
 179 0019 0B       		.uleb128 0xb
 180 001a 03       		.uleb128 0x3
 181 001b 08       		.uleb128 0x8
 182 001c 00       		.byte	0
 183 001d 00       		.byte	0
 184 001e 03       		.uleb128 0x3
 185 001f 0F       		.uleb128 0xf
 186 0020 00       		.byte	0
 187 0021 0B       		.uleb128 0xb
 188 0022 0B       		.uleb128 0xb
 189 0023 49       		.uleb128 0x49
 190 0024 13       		.uleb128 0x13
 191 0025 00       		.byte	0
 192 0026 00       		.byte	0
 193 0027 04       		.uleb128 0x4
 194 0028 01       		.uleb128 0x1
 195 0029 01       		.byte	0x1
 196 002a 49       		.uleb128 0x49
 197 002b 13       		.uleb128 0x13
 198 002c 01       		.uleb128 0x1
 199 002d 13       		.uleb128 0x13
 200 002e 00       		.byte	0
 201 002f 00       		.byte	0
 202 0030 05       		.uleb128 0x5
 203 0031 21       		.uleb128 0x21
 204 0032 00       		.byte	0
 205 0033 49       		.uleb128 0x49
 206 0034 13       		.uleb128 0x13
 207 0035 2F       		.uleb128 0x2f
 208 0036 0B       		.uleb128 0xb
 209 0037 00       		.byte	0
 210 0038 00       		.byte	0
 211 0039 06       		.uleb128 0x6
 212 003a 34       		.uleb128 0x34
 213 003b 00       		.byte	0
 214 003c 03       		.uleb128 0x3
 215 003d 08       		.uleb128 0x8
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccCJDMIL.s 			page 6


 216 003e 3A       		.uleb128 0x3a
 217 003f 0B       		.uleb128 0xb
 218 0040 3B       		.uleb128 0x3b
 219 0041 0B       		.uleb128 0xb
 220 0042 39       		.uleb128 0x39
 221 0043 0B       		.uleb128 0xb
 222 0044 49       		.uleb128 0x49
 223 0045 13       		.uleb128 0x13
 224 0046 3F       		.uleb128 0x3f
 225 0047 19       		.uleb128 0x19
 226 0048 3C       		.uleb128 0x3c
 227 0049 19       		.uleb128 0x19
 228 004a 00       		.byte	0
 229 004b 00       		.byte	0
 230 004c 07       		.uleb128 0x7
 231 004d 2E       		.uleb128 0x2e
 232 004e 01       		.byte	0x1
 233 004f 3F       		.uleb128 0x3f
 234 0050 19       		.uleb128 0x19
 235 0051 03       		.uleb128 0x3
 236 0052 08       		.uleb128 0x8
 237 0053 3A       		.uleb128 0x3a
 238 0054 0B       		.uleb128 0xb
 239 0055 3B       		.uleb128 0x3b
 240 0056 0B       		.uleb128 0xb
 241 0057 39       		.uleb128 0x39
 242 0058 0B       		.uleb128 0xb
 243 0059 27       		.uleb128 0x27
 244 005a 19       		.uleb128 0x19
 245 005b 11       		.uleb128 0x11
 246 005c 01       		.uleb128 0x1
 247 005d 12       		.uleb128 0x12
 248 005e 07       		.uleb128 0x7
 249 005f 40       		.uleb128 0x40
 250 0060 18       		.uleb128 0x18
 251 0061 9642     		.uleb128 0x2116
 252 0063 19       		.uleb128 0x19
 253 0064 00       		.byte	0
 254 0065 00       		.byte	0
 255 0066 08       		.uleb128 0x8
 256 0067 05       		.uleb128 0x5
 257 0068 00       		.byte	0
 258 0069 03       		.uleb128 0x3
 259 006a 08       		.uleb128 0x8
 260 006b 3A       		.uleb128 0x3a
 261 006c 0B       		.uleb128 0xb
 262 006d 3B       		.uleb128 0x3b
 263 006e 0B       		.uleb128 0xb
 264 006f 39       		.uleb128 0x39
 265 0070 0B       		.uleb128 0xb
 266 0071 49       		.uleb128 0x49
 267 0072 13       		.uleb128 0x13
 268 0073 02       		.uleb128 0x2
 269 0074 18       		.uleb128 0x18
 270 0075 00       		.byte	0
 271 0076 00       		.byte	0
 272 0077 00       		.byte	0
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccCJDMIL.s 			page 7


 273              		.section	.debug_aranges,"dr"
 274 0000 2C000000 		.long	0x2c
 275 0004 0200     		.word	0x2
 276 0006 00000000 		.secrel32	.Ldebug_info0
 277 000a 08       		.byte	0x8
 278 000b 00       		.byte	0
 279 000c 0000     		.word	0
 280 000e 0000     		.word	0
 281 0010 00000000 		.quad	.Ltext0
 281      00000000 
 282 0018 43000000 		.quad	.Letext0-.Ltext0
 282      00000000 
 283 0020 00000000 		.quad	0
 283      00000000 
 284 0028 00000000 		.quad	0
 284      00000000 
 285              		.section	.debug_line,"dr"
 286              	.Ldebug_line0:
 287 0000 71000000 		.section	.debug_str,"dr"
 287      02004600 
 287      00000101 
 287      FB0E0D00 
 287      01010101 
 288              		.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
 290              		.section	.rdata$.refptr.idade, "dr"
 291              		.globl	.refptr.idade
 292              		.linkonce	discard
 293              	.refptr.idade:
 294 0000 00000000 		.quad	idade
 294      00000000 
 294      00000000 
 294      00000000 
GAS LISTING C:\Users\Computer\AppData\Local\Temp\ccCJDMIL.s 			page 8


DEFINED SYMBOLS
                            *ABS*:0000000000000000 ControleAluno.c
C:\Users\Computer\AppData\Local\Temp\ccCJDMIL.s:15     .text:0000000000000000 classificaAluno
C:\Users\Computer\AppData\Local\Temp\ccCJDMIL.s:293    .rdata$.refptr.idade:0000000000000000 .refptr.idade

UNDEFINED SYMBOLS
sprintf
idade
