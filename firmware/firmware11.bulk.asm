0000: C3 20 00                          jp      L0020

0003: C3 E3 00                   L0003: jp      L00E3

0006: C3 54 01                   L0006: jp      L0154

0009: C3 18 01                   L0009: jp      L0118

000C: C3 01 01                   L000C: jp      L0101

000F: C3 03 01                   L000F: jp      L0103

0012: C3 9F 01                   L0012: jp      L019F

0015: C3 F9 00                   L0015: jp      L00F9

0018: C3 C0 00                   L0018: jp      L00C0

001B: C3 D6 00                   L001B: jp      L00D6

001E: FF                         L001E: rst     0x38

001F: FF                         L001F: rst     0x38

0020: 31 00 18                   L0020: ld      sp,1800h
0023: 21 5C 03                          ld      hl,035Ch
0026: 11 D0 17                          ld      de,17D0h
0029: 01 15 00                          ld      bc,0015h
002C: ED B0                             ldir
002E: 3A 00 10                          ld      a,(1000h)
0031: 3E 80                             ld      a,80h
0033: D3 00                             out     (00h),a
0035: 21 00 00                          ld      hl,0000h
0038: AF                                xor     a
0039: 86                         L0039: add     a,(hl)
003A: 23                                inc     hl
003B: 47                                ld      b,a
003C: 3E 08                             ld      a,08h
003E: BC                                cp      h
003F: 78                                ld      a,b
0040: C2 39 00                          jp      nz,L0039
0043: 2A 1E 00                          ld      hl,(L001E)
0046: 94                                sub     h
0047: 95                                sub     l
0048: CA 51 00                          jp      z,L0051
004B: 21 77 03                          ld      hl,0377h
004E: C3 A2 01                          jp      L01A2

0051: 21 7E 03                   L0051: ld      hl,037Eh
0054: CD D6 00                          call    L00D6
0057: CD 62 07                          call    L0760+2 ; reference not aligned to instruction
005A: AF                                xor     a
005B: 4F                         L005B: ld      c,a
005C: 06 00                             ld      b,00h
005E: CD 62 07                   L005E: call    L0760+2 ; reference not aligned to instruction
0061: C2 69 00                          jp      nz,L0069
0064: FE 04                             cp      04h
0066: CA 9D 03                          jp      z,L039D
0069: DB 10                      L0069: in      a,(10h)
006B: B9                                cp      c
006C: C2 5B 00                          jp      nz,L005B
006F: 05                                dec     b
0070: C2 5E 00                          jp      nz,L005E
0073: FE F8                             cp      0F8h
0075: CA B7 00                          jp      z,L00B7
0078: FE F9                             cp      0F9h
007A: CA B7 00                          jp      z,L00B7
007D: FE 80                             cp      80h
007F: C2 5E 00                          jp      nz,L005E
0082: 01 00 10                          ld      bc,1000h
0085: CD F9 00                   L0085: call    L00F9
0088: 06 00                      L0088: ld      b,00h
008A: CD 62 07                   L008A: call    L0760+2 ; reference not aligned to instruction
008D: C2 95 00                          jp      nz,L0095
0090: FE 04                             cp      04h
0092: CA 9D 03                          jp      z,L039D
0095: 05                         L0095: dec     b
0096: C2 8A 00                          jp      nz,L008A
0099: 21 71 03                          ld      hl,0371h
009C: CD 54 01                          call    L0154
009F: CA 00 20                          jp      z,2000h
00A2: FE 40                             cp      40h     ; '@'
00A4: CA 88 00                          jp      z,L0088
00A7: FE 43                             cp      43h     ; 'C'
00A9: C2 B7 00                          jp      nz,L00B7
00AC: 01 00 00                          ld      bc,0000h
00AF: DB 11                             in      a,(11h)
00B1: B7                                or      a
00B2: 3E 43                             ld      a,43h   ; 'C'
00B4: CA 85 00                          jp      z,L0085
00B7: CD C0 00                   L00B7: call    L00C0
00BA: 2A D8 17                   L00BA: ld      hl,(17D8h)
00BD: 36 00                             ld      (hl),00h
00BF: 76                                halt
                                        ; --- START PROC L00C0 ---
00C0: 47                         L00C0: ld      b,a
00C1: 0F                                rrca
00C2: 0F                                rrca
00C3: 0F                                rrca
00C4: E6 07                             and     07h
00C6: C6 30                             add     a,30h   ; '0'
00C8: 32 E2 17                          ld      (17E2h),a
00CB: 78                                ld      a,b
00CC: E6 07                             and     07h
00CE: C6 30                             add     a,30h   ; '0'
00D0: 32 E3 17                          ld      (17E3h),a
00D3: 21 DA 17                          ld      hl,17DAh
                                        ; --- START PROC L00D6 ---
00D6: E5                         L00D6: push    hl
00D7: 4E                                ld      c,(hl)
00D8: CD E3 00                          call    L00E3
00DB: E1                                pop     hl
00DC: 23                                inc     hl
00DD: 7E                                ld      a,(hl)
00DE: B7                                or      a
00DF: C2 D6 00                          jp      nz,L00D6
00E2: C9                                ret

                                        ; --- START PROC L00E3 ---
00E3: 2A D6 17                   L00E3: ld      hl,(17D6h)
00E6: EB                                ex      de,hl
00E7: 2A D8 17                          ld      hl,(17D8h)
00EA: CD A8 01                          call    L01A8
00ED: 3E 80                             ld      a,80h
00EF: B6                                or      (hl)
00F0: 77                                ld      (hl),a
00F1: 22 D8 17                          ld      (17D8h),hl
00F4: EB                                ex      de,hl
00F5: 22 D6 17                          ld      (17D6h),hl
00F8: C9                                ret

                                        ; --- START PROC L00F9 ---
00F9: 3E 18                      L00F9: ld      a,18h
00FB: B1                                or      c
00FC: 57                                ld      d,a
00FD: 78                                ld      a,b
00FE: C3 04 01                          jp      L0104

                                        ; --- START PROC L0101 ---
0101: 56                         L0101: ld      d,(hl)
0102: 23                                inc     hl
                                        ; --- START PROC L0103 ---
0103: 7E                         L0103: ld      a,(hl)
                                        ; --- START PROC L0104 ---
0104: D3 11                      L0104: out     (11h),a
0106: 7A                                ld      a,d
0107: D3 10                             out     (10h),a
0109: DB 10                      L0109: in      a,(10h)
010B: B7                                or      a
010C: FA 09 01                          jp      m,L0109
010F: DB 10                      L010F: in      a,(10h)
0111: B7                                or      a
0112: F2 0F 01                          jp      p,L010F
0115: E6 7F                             and     7Fh     ; ''
0117: C9                                ret

                                        ; --- START PROC L0118 ---
0118: CD 01 01                   L0118: call    L0101
011B: C0                                ret     nz
011C: 3E 08                             ld      a,08h
011E: 23                                inc     hl
011F: B2                                or      d
0120: 57                                ld      d,a
0121: CD 03 01                          call    L0103
0124: C0                                ret     nz
0125: 23                                inc     hl
0126: 5E                                ld      e,(hl)
0127: 23                                inc     hl
0128: 56                                ld      d,(hl)
0129: 23                                inc     hl
012A: 46                                ld      b,(hl)
012B: EB                                ex      de,hl
012C: 0E 10                             ld      c,10h
012E: AF                                xor     a
012F: B8                                cp      b
0130: C2 41 01                          jp      nz,L0141
0133: 86                         L0133: add     a,(hl)
0134: 0C                                inc     c
0135: ED A3                             outi
0137: 86                                add     a,(hl)
0138: 0D                                dec     c
0139: ED A3                             outi
013B: 00                                nop
013C: 00                                nop
013D: 00                                nop
013E: C2 33 01                          jp      nz,L0133
0141: 86                         L0141: add     a,(hl)
0142: 0C                                inc     c
0143: ED A3                             outi
0145: 86                                add     a,(hl)
0146: 0D                                dec     c
0147: ED A3                             outi
0149: 00                                nop
014A: 00                                nop
014B: 00                                nop
014C: C2 41 01                          jp      nz,L0141
014F: 00                                nop
0150: 00                                nop
0151: C3 04 01                          jp      L0104

                                        ; --- START PROC L0154 ---
0154: CD 01 01                   L0154: call    L0101
0157: C0                                ret     nz
0158: 3E 04                             ld      a,04h
015A: 23                                inc     hl
015B: B2                                or      d
015C: 57                                ld      d,a
015D: CD 03 01                          call    L0103
0160: C0                                ret     nz
0161: 23                                inc     hl
0162: 5E                                ld      e,(hl)
0163: 23                                inc     hl
0164: 56                                ld      d,(hl)
0165: D3 10                             out     (10h),a
0167: 23                                inc     hl
0168: 46                                ld      b,(hl)
0169: EB                                ex      de,hl
016A: 0E 10                             ld      c,10h
016C: 11 00 00                          ld      de,0000h
016F: AF                                xor     a
0170: B8                                cp      b
0171: C2 85 01                          jp      nz,L0185
0174: 82                         L0174: add     a,d
0175: 83                                add     a,e
0176: 0C                                inc     c
0177: ED A2                             ini
0179: ED 50                             in      d,(c)
017B: 0D                                dec     c
017C: ED 58                             in      e,(c)
017E: D3 10                             out     (10h),a
0180: ED A2                             ini
0182: C2 74 01                          jp      nz,L0174
0185: 82                         L0185: add     a,d
0186: 83                                add     a,e
0187: 0C                                inc     c
0188: ED A2                             ini
018A: ED 50                             in      d,(c)
018C: 0D                                dec     c
018D: ED 58                             in      e,(c)
018F: D3 10                             out     (10h),a
0191: ED A2                             ini
0193: C2 85 01                          jp      nz,L0185
0196: 82                                add     a,d
0197: 83                                add     a,e
0198: 47                                ld      b,a
0199: DB 11                             in      a,(11h)
019B: B8                                cp      b
019C: 3E 7B                             ld      a,7Bh   ; '{'
019E: C9                                ret

019F: 21 8E 03                   L019F: ld      hl,038Eh
01A2: CD D6 00                   L01A2: call    L00D6
01A5: C3 BA 00                          jp      L00BA

                                        ; --- START PROC L01A8 ---
01A8: 3E 7F                      L01A8: ld      a,7Fh   ; ''
01AA: A6                                and     (hl)
01AB: 77                                ld      (hl),a
01AC: 3A D5 17                          ld      a,(17D5h)
01AF: B7                                or      a
01B0: C2 80 02                          jp      nz,L0280
01B3: 79                                ld      a,c
01B4: FE 7F                             cp      7Fh     ; ''
01B6: C8                                ret     z
01B7: FE 20                             cp      20h     ; ' '
01B9: DA 0E 02                          jp      c,L020E
01BC: 71                                ld      (hl),c
01BD: E5                                push    hl
01BE: 01 00 08                          ld      bc,0800h
01C1: 09                                add     hl,bc
01C2: 3A D4 17                          ld      a,(17D4h)
01C5: 77                                ld      (hl),a
01C6: E1                                pop     hl
01C7: 23                         L01C7: inc     hl
01C8: 1C                                inc     e
01C9: 3E 50                      L01C9: ld      a,50h   ; 'P'
01CB: BB                                cp      e
01CC: C0                                ret     nz
01CD: 1E 00                             ld      e,00h
01CF: 3A D2 17                   L01CF: ld      a,(17D2h)
01D2: 14                                inc     d
01D3: 82                                add     a,d
01D4: C2 DA 01                          jp      nz,L01DA
01D7: 26 10                             ld      h,10h
01D9: 6B                                ld      l,e
01DA: 3E 18                      L01DA: ld      a,18h
01DC: BA                                cp      d
01DD: C0                                ret     nz
01DE: 3A D3 17                          ld      a,(17D3h)
01E1: FE 59                             cp      59h     ; 'Y'
01E3: C2 0F 03                          jp      nz,L030F
01E6: 15                                dec     d
01E7: E5                                push    hl
01E8: D5                                push    de
01E9: 2A D0 17                          ld      hl,(17D0h)
01EC: CD 2F 03                          call    L032F
01EF: 3A 00 10                          ld      a,(1000h)
01F2: AF                                xor     a
01F3: D3 00                             out     (00h),a
01F5: 01 50 00                          ld      bc,0050h
01F8: 09                                add     hl,bc
01F9: D1                                pop     de
01FA: 3A D2 17                          ld      a,(17D2h)
01FD: 3C                                inc     a
01FE: C2 06 02                          jp      nz,L0206
0201: 21 50 10                          ld      hl,1050h
0204: 3E E7                             ld      a,0E7h
0206: 32 D2 17                   L0206: ld      (17D2h),a
0209: 22 D0 17                          ld      (17D0h),hl
020C: E1                                pop     hl
020D: C9                                ret

020E: FE 08                      L020E: cp      08h
0210: CA 5A 02                          jp      z,L025A
0213: FE 09                             cp      09h
0215: CA 60 02                          jp      z,L0260
0218: FE 0A                             cp      0Ah
021A: CA 75 02                          jp      z,L0275
021D: FE 0D                             cp      0Dh
021F: CA 6B 02                          jp      z,L026B
0222: FE 0F                             cp      0Fh
0224: CA 14 03                          jp      z,L0314
0227: FE 10                             cp      10h
0229: CA 7C 02                          jp      z,L027C
022C: FE 12                             cp      12h
022E: CA BF 02                          jp      z,L02BF
0231: FE 14                             cp      14h
0233: CA C4 02                          jp      z,L02C4
0236: FE 15                             cp      15h
0238: CA C7 01                          jp      z,L01C7
023B: FE 16                             cp      16h
023D: CA CA 02                          jp      z,L02CA
0240: FE 17                             cp      17h
0242: CA E1 02                          jp      z,L02E1
0245: FE 18                             cp      18h
0247: CA FB 02                          jp      z,L02FB
024A: FE 19                             cp      19h
024C: CA 0D 03                          jp      z,L030D
024F: FE 1A                             cp      1Ah
0251: CA B8 02                          jp      z,L02B8
0254: FE 07                             cp      07h
0256: C0                                ret     nz
0257: D3 03                             out     (03h),a
0259: C9                                ret

025A: AF                         L025A: xor     a
025B: BB                                cp      e
025C: C8                                ret     z
025D: 1D                                dec     e
025E: 2B                                dec     hl
025F: C9                                ret

0260: 1C                         L0260: inc     e
0261: 23                                inc     hl
0262: 7B                                ld      a,e
0263: E6 07                             and     07h
0265: C2 60 02                          jp      nz,L0260
0268: C3 C9 01                          jp      L01C9

026B: 7D                         L026B: ld      a,l
026C: 93                                sub     e
026D: 6F                                ld      l,a
026E: D2 72 02                          jp      nc,L0272
0271: 25                                dec     h
0272: 1E 00                      L0272: ld      e,00h
0274: C9                                ret

0275: 01 50 00                   L0275: ld      bc,0050h
0278: 09                                add     hl,bc
0279: C3 CF 01                          jp      L01CF

027C: 32 D5 17                   L027C: ld      (17D5h),a
027F: C9                                ret

0280: 2F                         L0280: cpl
0281: F2 86 02                          jp      p,L0286
0284: 3E 00                             ld      a,00h
0286: 32 D5 17                   L0286: ld      (17D5h),a
0289: 79                                ld      a,c
028A: F2 9A 02                          jp      p,L029A
028D: EA 1A 03                          jp      pe,L031A
0290: D6 20                             sub     20h     ; ' '
0292: D8                                ret     c
0293: FE 50                             cp      50h     ; 'P'
0295: D0                                ret     nc
0296: 5F                                ld      e,a
0297: C3 A1 02                          jp      L02A1

029A: D6 20                      L029A: sub     20h     ; ' '
029C: D8                                ret     c
029D: FE 18                             cp      18h
029F: D0                                ret     nc
02A0: 57                                ld      d,a
                                        ; --- START PROC L02A1 ---
02A1: 01 50 00                   L02A1: ld      bc,0050h
02A4: 21 B0 0F                          ld      hl,0FB0h
02A7: 3A D2 17                          ld      a,(17D2h)
02AA: 82                                add     a,d
02AB: F2 B0 02                          jp      p,L02B0
02AE: C6 19                             add     a,19h
02B0: 09                         L02B0: add     hl,bc
02B1: 3D                                dec     a
02B2: F2 B0 02                          jp      p,L02B0
02B5: 4B                                ld      c,e
02B6: 09                                add     hl,bc
02B7: C9                                ret

                                        ; --- START PROC L02B8 ---
02B8: AF                         L02B8: xor     a
02B9: BA                                cp      d
02BA: C8                                ret     z
02BB: 15                                dec     d
02BC: C3 A1 02                          jp      L02A1

                                        ; --- START PROC L02BF ---
02BF: 3E 59                      L02BF: ld      a,59h   ; 'Y'
02C1: C3 C6 02                          jp      L02C6

                                        ; --- START PROC L02C4 ---
02C4: 3E 4E                      L02C4: ld      a,4Eh   ; 'N'
                                        ; --- START PROC L02C6 ---
02C6: 32 D3 17                   L02C6: ld      (17D3h),a
02C9: C9                                ret

                                        ; --- START PROC L02CA ---
02CA: E5                         L02CA: push    hl
02CB: D5                                push    de
02CC: 44                                ld      b,h
02CD: 4D                                ld      c,l
02CE: 21 00 08                          ld      hl,0800h
02D1: 09                                add     hl,bc
02D2: AF                         L02D2: xor     a
02D3: 77                                ld      (hl),a
02D4: 02                                ld      (bc),a
02D5: 23                                inc     hl
02D6: 03                                inc     bc
02D7: 1C                                inc     e
02D8: 3E 50                             ld      a,50h   ; 'P'
02DA: BB                                cp      e
02DB: C2 D2 02                          jp      nz,L02D2
02DE: D1                                pop     de
02DF: E1                                pop     hl
02E0: C9                                ret

                                        ; --- START PROC L02E1 ---
02E1: 3E 17                      L02E1: ld      a,17h
02E3: BA                         L02E3: cp      d
02E4: CA CA 02                          jp      z,L02CA
02E7: F5                                push    af
02E8: D5                                push    de
02E9: E5                                push    hl
02EA: 57                                ld      d,a
02EB: 1E 4F                             ld      e,4Fh   ; 'O'
02ED: CD A1 02                          call    L02A1
02F0: 23                                inc     hl
02F1: CD 2F 03                          call    L032F
02F4: E1                                pop     hl
02F5: D1                                pop     de
02F6: F1                                pop     af
02F7: 3D                                dec     a
02F8: C3 E3 02                          jp      L02E3

                                        ; --- START PROC L02FB ---
02FB: 21 00 20                   L02FB: ld      hl,2000h
02FE: 01 00 FE                          ld      bc,0FE00h
0301: CD 41 03                          call    L0341
0304: 21 D0 17                          ld      hl,17D0h
0307: 01 0C FE                          ld      bc,0FE0Ch
030A: CD 41 03                          call    L0341
                                        ; --- START PROC L030D ---
030D: 1E 00                      L030D: ld      e,00h
                                        ; --- START PROC L030F ---
030F: 16 00                      L030F: ld      d,00h
0311: C3 A1 02                          jp      L02A1

                                        ; --- START PROC L0314 ---
0314: 3E 81                      L0314: ld      a,81h
0316: 32 D5 17                          ld      (17D5h),a
0319: C9                                ret

                                        ; --- START PROC L031A ---
031A: D6 20                      L031A: sub     20h     ; ' '
031C: D8                                ret     c
031D: FE 10                             cp      10h
031F: D0                                ret     nc
0320: 07                                rlca
0321: 47                                ld      b,a
0322: E6 10                             and     10h
0324: 78                                ld      a,b
0325: CA 29 03                          jp      z,L0329
0328: 3C                                inc     a
0329: E6 0F                      L0329: and     0Fh
032B: 32 D4 17                          ld      (17D4h),a
032E: C9                                ret

                                        ; --- START PROC L032F ---
032F: E5                         L032F: push    hl
0330: CD 3E 03                          call    L033E
0333: E1                                pop     hl
0334: E5                                push    hl
0335: 01 00 08                          ld      bc,0800h
0338: 09                                add     hl,bc
0339: CD 3E 03                          call    L033E
033C: E1                                pop     hl
033D: C9                                ret

                                        ; --- START PROC L033E ---
033E: 01 EC FF                   L033E: ld      bc,0FFECh
                                        ; --- START PROC L0341 ---
0341: EB                         L0341: ex      de,hl
0342: 21 00 00                          ld      hl,0000h
0345: 1A                                ld      a,(de)
0346: 39                         L0346: add     hl,sp
0347: 22 E5 17                          ld      (17E5h),hl
034A: EB                                ex      de,hl
034B: F9                                ld      sp,hl
034C: 11 00 00                          ld      de,0000h
034F: AF                                xor     a
0350: D5                         L0350: push    de
0351: D5                                push    de
0352: 03                                inc     bc
0353: B8                                cp      b
0354: C2 50 03                          jp      nz,L0350
0357: 2A E5 17                          ld      hl,(17E5h)
035A: F9                                ld      sp,hl
035B: C9                                ret

035C: 50                         L035C: ld      d,b
035D: 10 E7                             djnz    L0346
035F: 59                                ld      e,c
0360: 00                                nop
0361: 00                                nop
0362: 00                                nop
0363: 00                                nop
0364: 00                                nop
0365: 10 0D                             djnz    L0373+1 ; reference not aligned to instruction
0367: 0A                                ld      a,(bc)
0368: 45                                ld      b,l
0369: 72                                ld      (hl),d
036A: 72                                ld      (hl),d
036B: 6F                                ld      l,a
036C: 72                                ld      (hl),d
036D: 20 00                             jr      nz,L036F
036F: 00                         L036F: nop
0370: 00                                nop
0371: 00                                nop
0372: 00                                nop
0373: 01 00 20                   L0373: ld      bc,2000h
0376: 80                                add     a,b
0377: 18 2A                             jr      L03A3

0379: 43                         L0379: ld      b,e
037A: 52                                ld      d,d
037B: 43                                ld      b,e
037C: 2A 00 18                          ld      hl,(1800h)
037F: 0F                                rrca
0380: 22 45 63                          ld      (6345h),hl
0383: 6F                                ld      l,a
0384: 20 31                             jr      nz,L03B5+2      ; reference not aligned to instruction
0386: 2E 31                             ld      l,31h   ; '1'
0388: 0F                                rrca
0389: 20 0D                             jr      nz,L0398
038B: 0A                                ld      a,(bc)
038C: 0A                                ld      a,(bc)
038D: 00                                nop
038E: 0D                                dec     c
038F: 0A                                ld      a,(bc)
0390: 53                                ld      d,e
0391: 79                                ld      a,c
0392: 73                                ld      (hl),e
0393: 74                                ld      (hl),h
0394: 65                                ld      h,l
0395: 6D                                ld      l,l
0396: 20 65                             jr      nz,L03FD
0398: 72                         L0398: ld      (hl),d
0399: 72                                ld      (hl),d
039A: 6F                                ld      l,a
039B: 72                                ld      (hl),d
039C: 00                                nop
039D: 3E CE                      L039D: ld      a,0CEh
039F: D3 0E                             out     (0Eh),a
03A1: D3 0C                             out     (0Ch),a
03A3: 3E 25                      L03A3: ld      a,25h   ; '%'
03A5: D3 0E                             out     (0Eh),a
03A7: D3 0C                             out     (0Ch),a
03A9: AF                                xor     a
03AA: D3 09                             out     (09h),a
03AC: D3 0A                             out     (0Ah),a
03AE: DB 0D                             in      a,(0Dh)
03B0: DB 0B                             in      a,(0Bh)
03B2: 21 5B 06                   L03B2: ld      hl,065Bh
03B5: CD D6 00                   L03B5: call    L00D6
03B8: 21 F3 06                   L03B8: ld      hl,06F3h
03BB: CD D6 00                          call    L00D6
03BE: CD 62 07                   L03BE: call    L0760+2 ; reference not aligned to instruction
03C1: C2 BE 03                          jp      nz,L03BE
03C4: 2A D8 17                          ld      hl,(17D8h)
03C7: 77                                ld      (hl),a
03C8: E6 DF                             and     0DFh
03CA: FE 50                             cp      50h     ; 'P'
03CC: CA 3E 04                          jp      z,L043E
03CF: FE 49                             cp      49h     ; 'I'
03D1: CA 04 04                          jp      z,L0404
03D4: FE 46                             cp      46h     ; 'F'
03D6: CA 8D 05                          jp      z,L058D
03D9: FE 52                             cp      52h     ; 'R'
03DB: CA C0 04                          jp      z,L04C0
03DE: FE 56                             cp      56h     ; 'V'
03E0: CA 88 04                          jp      z,L0488
03E3: FE 54                             cp      54h     ; 'T'
03E5: C2 B8 03                          jp      nz,L03B8
03E8: CD 62 07                   L03E8: call    L0760+2 ; reference not aligned to instruction
03EB: C2 E8 03                          jp      nz,L03E8
03EE: B7                                or      a
03EF: FA B2 03                          jp      m,L03B2
03F2: 47                                ld      b,a
03F3: AF                                xor     a
03F4: 21 00 10                          ld      hl,1000h
03F7: 11 30 F8                          ld      de,0F830h
03FA: 70                         L03FA: ld      (hl),b
03FB: 23                                inc     hl
03FC: 13                                inc     de
03FD: BA                         L03FD: cp      d
03FE: C2 FA 03                          jp      nz,L03FA
0401: C3 E8 03                          jp      L03E8

0404: CD 62 07                   L0404: call    L0760+2 ; reference not aligned to instruction
0407: C2 04 04                          jp      nz,L0404
040A: B7                                or      a
040B: FA B2 03                          jp      m,L03B2
040E: 47                                ld      b,a
040F: 21 00 10                          ld      hl,1000h
0412: 11 30 F8                          ld      de,0F830h
0415: CD 70 07                   L0415: call    L0770
0418: C2 15 04                          jp      nz,L0415
041B: CD 8B 07                   L041B: call    L078B
041E: C2 1B 04                          jp      nz,L041B
0421: CD 82 07                   L0421: call    L0782
0424: C2 21 04                          jp      nz,L0421
0427: CD A5 07                   L0427: call    L07A5
042A: C2 27 04                          jp      nz,L0427
042D: CD 96 07                   L042D: call    L0796
0430: C2 2D 04                          jp      nz,L042D
0433: 77                                ld      (hl),a
0434: 23                                inc     hl
0435: 13                                inc     de
0436: AF                                xor     a
0437: BA                                cp      d
0438: C2 15 04                          jp      nz,L0415
043B: C3 04 04                          jp      L0404

043E: 0E 0A                      L043E: ld      c,0Ah
0440: CD E3 00                          call    L00E3
0443: 21 FF 06                   L0443: ld      hl,06FFh
0446: DB 01                             in      a,(01h)
0448: CD 6E 04                          call    L046E
044B: 21 05 07                          ld      hl,0705h
044E: DB 05                             in      a,(05h)
0450: E6 0F                             and     0Fh
0452: CD 6E 04                          call    L046E
0455: 21 0E 07                          ld      hl,070Eh
0458: DB 10                             in      a,(10h)
045A: CD 6E 04                          call    L046E
045D: 21 16 07                          ld      hl,0716h
0460: DB 11                             in      a,(11h)
0462: CD 6E 04                          call    L046E
0465: CD 62 07                          call    L0760+2 ; reference not aligned to instruction
0468: C2 43 04                          jp      nz,L0443
046B: C3 B2 03                          jp      L03B2

                                        ; --- START PROC L046E ---
046E: F5                         L046E: push    af
046F: CD D6 00                          call    L00D6
0472: F1                                pop     af
0473: 16 08                             ld      d,08h
0475: 07                         L0475: rlca
0476: D5                                push    de
0477: F5                                push    af
0478: 0E 30                             ld      c,30h   ; '0'
047A: D2 7E 04                          jp      nc,L047E
047D: 0C                                inc     c
047E: CD E3 00                   L047E: call    L00E3
0481: F1                                pop     af
0482: D1                                pop     de
0483: 15                                dec     d
0484: C2 75 04                          jp      nz,L0475
0487: C9                                ret

0488: 31 00 80                   L0488: ld      sp,8000h
048B: 11 00 80                          ld      de,8000h
048E: 21 D0 17                          ld      hl,17D0h
0491: 01 15 00                          ld      bc,0015h
0494: ED B0                             ldir
0496: 3E FF                             ld      a,0FFh
0498: 21 00 10                          ld      hl,1000h
049B: 11 00 F8                          ld      de,0F800h
049E: CD 06 05                          call    L0506
04A1: 11 D0 17                          ld      de,17D0h
04A4: 21 00 80                          ld      hl,8000h
04A7: 01 15 00                          ld      bc,0015h
04AA: ED B0                             ldir
04AC: 11 00 F8                          ld      de,0F800h
04AF: 21 00 18                          ld      hl,1800h
04B2: 3E 0F                             ld      a,0Fh
04B4: CD 06 05                          call    L0506
04B7: 21 5B 06                          ld      hl,065Bh
04BA: CD D6 00                          call    L00D6
04BD: C3 FA 04                          jp      L04FA

04C0: 3E FF                      L04C0: ld      a,0FFh
04C2: 21 00 40                          ld      hl,4000h
04C5: F9                                ld      sp,hl
04C6: 11 00 40                          ld      de,4000h
04C9: CD 06 05                          call    L0506
04CC: 31 00 80                          ld      sp,8000h
04CF: 21 00 20                          ld      hl,2000h
04D2: 11 00 E0                          ld      de,0E000h
04D5: CD 06 05                          call    L0506
04D8: 11 00 80                          ld      de,8000h
04DB: 01 15 00                          ld      bc,0015h
04DE: 21 39 05                          ld      hl,0539h
04E1: ED B0                             ldir
04E3: 21 06 05                          ld      hl,0506h
04E6: 01 2D 00                          ld      bc,002Dh
04E9: ED B0                             ldir
04EB: 21 4E 05                          ld      hl,054Eh
04EE: 01 0D 00                          ld      bc,000Dh
04F1: ED B0                             ldir
04F3: DD 21 19 80                       ld      ix,8019h
04F7: CD 00 80                          call    8000h
04FA: 31 00 18                   L04FA: ld      sp,1800h
04FD: 21 4F 07                   L04FD: ld      hl,074Fh
0500: CD D6 00                          call    L00D6
0503: C3 B8 03                          jp      L03B8

                                        ; --- START PROC L0506 ---
0506: 0E 01                      L0506: ld      c,01h
0508: 47                                ld      b,a
0509: E5                         L0509: push    hl
050A: D5                                push    de
050B: 79                                ld      a,c
050C: 77                         L050C: ld      (hl),a
050D: 23                                inc     hl
050E: 07                                rlca
050F: 1C                                inc     e
0510: 20 FA                             jr      nz,L050C
0512: 14                                inc     d
0513: 20 F7                             jr      nz,L050C
0515: D1                                pop     de
0516: E1                                pop     hl
0517: C5                                push    bc
0518: E5                                push    hl
0519: D5                                push    de
051A: 7E                         L051A: ld      a,(hl)
051B: A9                                xor     c
051C: A0                                and     b
051D: 20 14                             jr      nz,L0533
051F: 23                         L051F: inc     hl
0520: 79                                ld      a,c
0521: 07                                rlca
0522: 4F                                ld      c,a
0523: 1C                                inc     e
0524: 20 F4                             jr      nz,L051A
0526: 14                                inc     d
0527: 20 F1                             jr      nz,L051A
0529: D1                                pop     de
052A: E1                                pop     hl
052B: C1                                pop     bc
052C: 79                                ld      a,c
052D: 07                                rlca
052E: 4F                                ld      c,a
052F: 30 D8                             jr      nc,L0509
0531: 78                                ld      a,b
0532: C9                                ret

0533: CD 5C 05                   L0533: call    L055C
0536: C3 1F 05                          jp      L051F

0539: 47                         L0539: ld      b,a
053A: 3E 01                             ld      a,01h
053C: D3 01                             out     (01h),a
053E: 78                                ld      a,b
053F: 21 00 00                          ld      hl,0000h
0542: 11 00 E0                          ld      de,0E000h
0545: CD 15 80                          call    8015h
0548: 47                                ld      b,a
0549: AF                                xor     a
054A: D3 01                             out     (01h),a
054C: 78                                ld      a,b
054D: C9                                ret

054E: AF                         L054E: xor     a
054F: D3 01                             out     (01h),a
0551: CD 5C 05                          call    L055C
0554: 3E 01                             ld      a,01h
0556: D3 01                             out     (01h),a
0558: C3 2E 80                          jp      802Eh

055B: 00                         L055B: nop
                                        ; --- START PROC L055C ---
055C: F5                         L055C: push    af
055D: D5                                push    de
055E: C5                                push    bc
055F: E5                                push    hl
0560: C5                                push    bc
0561: E5                                push    hl
0562: 7C                                ld      a,h
0563: 21 2B 07                          ld      hl,072Bh
0566: CD 6E 04                          call    L046E
0569: E1                                pop     hl
056A: E5                                push    hl
056B: 7D                                ld      a,l
056C: 21 3D 07                          ld      hl,073Dh
056F: CD 6E 04                          call    L046E
0572: E1                                pop     hl
0573: 7E                                ld      a,(hl)
0574: 21 43 07                          ld      hl,0743h
0577: CD 6E 04                          call    L046E
057A: C1                                pop     bc
057B: 79                                ld      a,c
057C: 21 49 07                          ld      hl,0749h
057F: CD 6E 04                          call    L046E
0582: CD 62 07                   L0582: call    L0760+2 ; reference not aligned to instruction
0585: C2 82 05                          jp      nz,L0582
0588: E1                                pop     hl
0589: C1                                pop     bc
058A: D1                                pop     de
058B: F1                                pop     af
058C: C9                                ret

058D: 01 00 32                   L058D: ld      bc,3200h
0590: CD F9 00                          call    L00F9
0593: 21 55 1C                          ld      hl,1C55h
0596: 22 00 20                          ld      (2000h),hl
0599: AF                                xor     a
059A: 32 02 20                          ld      (2002h),a
059D: 32 07 20                          ld      (2007h),a
05A0: 21 01 FF                          ld      hl,0FF01h
05A3: E5                         L05A3: push    hl
05A4: 2A 00 20                          ld      hl,(2000h)
05A7: 11 00 04                          ld      de,0400h
05AA: 19                                add     hl,de
05AB: 7C                                ld      a,h
05AC: FE FC                             cp      0FCh
05AE: DA B4 05                          jp      c,L05B4
05B1: 21 55 20                          ld      hl,2055h
05B4: 22 00 20                   L05B4: ld      (2000h),hl
05B7: 22 05 20                          ld      (2005h),hl
05BA: 11 00 FE                          ld      de,0FE00h
05BD: 3A 08 20                          ld      a,(2008h)
05C0: CD 38 06                          call    L0638
05C3: CD 38 06                   L05C3: call    L0638
05C6: 77                                ld      (hl),a
05C7: 23                                inc     hl
05C8: 1C                                inc     e
05C9: C2 C3 05                          jp      nz,L05C3
05CC: 14                                inc     d
05CD: C2 C3 05                          jp      nz,L05C3
05D0: CD 38 06                          call    L0638
05D3: 4F                                ld      c,a
05D4: 2F                                cpl
05D5: E6 7F                             and     7Fh     ; ''
05D7: FE 4C                             cp      4Ch     ; 'L'
05D9: DA DE 05                          jp      c,L05DE
05DC: E6 3F                             and     3Fh     ; '?'
05DE: 3C                         L05DE: inc     a
05DF: 32 03 20                          ld      (2003h),a
05E2: 79                                ld      a,c
05E3: CD 38 06                          call    L0638
05E6: 32 08 20                          ld      (2008h),a
05E9: 2F                                cpl
05EA: E6 1F                             and     1Fh
05EC: 3C                                inc     a
05ED: 32 04 20                          ld      (2004h),a
05F0: 21 02 20                          ld      hl,2002h
05F3: CD 18 01                          call    L0118
05F6: C4 47 06                          call    nz,L0647
05F9: 21 71 03                          ld      hl,0371h
05FC: CD 01 01                          call    L0101
05FF: C4 47 06                          call    nz,L0647
0602: 2A 00 20                          ld      hl,(2000h)
0605: 11 00 02                          ld      de,0200h
0608: 19                                add     hl,de
0609: 22 05 20                          ld      (2005h),hl
060C: 21 02 20                          ld      hl,2002h
060F: CD 54 01                          call    L0154
0612: C4 47 06                          call    nz,L0647
0615: 2A 00 20                          ld      hl,(2000h)
0618: EB                                ex      de,hl
0619: 21 00 02                          ld      hl,0200h
061C: 19                                add     hl,de
061D: EB                                ex      de,hl
061E: 01 00 FE                          ld      bc,0FE00h
0621: 1A                         L0621: ld      a,(de)
0622: BE                                cp      (hl)
0623: C2 51 06                          jp      nz,L0651
0626: 23                                inc     hl
0627: 13                                inc     de
0628: 03                                inc     bc
0629: AF                                xor     a
062A: B8                                cp      b
062B: C2 21 06                          jp      nz,L0621
062E: E1                                pop     hl
062F: 23                                inc     hl
0630: AF                                xor     a
0631: BC                                cp      h
0632: C2 A3 05                          jp      nz,L05A3
0635: C3 FD 04                          jp      L04FD

                                        ; --- START PROC L0638 ---
0638: B7                         L0638: or      a
0639: C2 3D 06                          jp      nz,L063D
063C: 2F                                cpl
063D: 47                         L063D: ld      b,a
063E: E6 1D                             and     1Dh
0640: EA 44 06                          jp      pe,L0644
0643: 37                                scf
0644: 78                         L0644: ld      a,b
0645: 1F                                rra
0646: C9                                ret

                                        ; --- START PROC L0647 ---
0647: CD C0 00                   L0647: call    L00C0
064A: CD 62 07                   L064A: call    L0760+2 ; reference not aligned to instruction
064D: C2 4A 06                          jp      nz,L064A
0650: C9                                ret

0651: E1                         L0651: pop     hl
0652: 21 1E 07                          ld      hl,071Eh
0655: CD D6 00                          call    L00D6
0658: C3 B8 03                          jp      L03B8

065B: 18 0A                      L065B: jr      L0667

065D: 09                         L065D: add     hl,bc
065E: 09                                add     hl,bc
065F: 09                                add     hl,bc
0660: 44                                ld      b,h
0661: 69                                ld      l,c
0662: 61                                ld      h,c
0663: 67                                ld      h,a
0664: 6E                                ld      l,(hl)
0665: 6F                                ld      l,a
0666: 73                                ld      (hl),e
0667: 74                         L0667: ld      (hl),h
0668: 69                                ld      l,c
0669: 63                                ld      h,e
066A: 6F                                ld      l,a
066B: 20 45                             jr      nz,L06B2
066D: 63                                ld      h,e
066E: 6F                                ld      l,a
066F: 20 31                             jr      nz,L06A2
0671: 2E 31                             ld      l,31h   ; '1'
0673: 0D                                dec     c
0674: 0A                                ld      a,(bc)
0675: 0A                                ld      a,(bc)
0676: 09                                add     hl,bc
0677: 09                                add     hl,bc
0678: 43                                ld      b,e
0679: 6F                                ld      l,a
067A: 6D                                ld      l,l
067B: 61                                ld      h,c
067C: 6E                                ld      l,(hl)
067D: 64                                ld      h,h
067E: 69                                ld      l,c
067F: 3A 0D 0A                          ld      a,(0A0Dh)
0682: 0A                                ld      a,(bc)
0683: 09                                add     hl,bc
0684: 09                                add     hl,bc
0685: 46                                ld      b,(hl)
0686: 20 2D                             jr      nz,L06B5
0688: 20 46                             jr      nz,L06D0
068A: 6C                                ld      l,h
068B: 6F                                ld      l,a
068C: 70                                ld      (hl),b
068D: 70                                ld      (hl),b
068E: 79                                ld      a,c
068F: 20 64                             jr      nz,L06F5
0691: 69                                ld      l,c
0692: 73                                ld      (hl),e
0693: 6B                                ld      l,e
0694: 0D                                dec     c
0695: 0A                                ld      a,(bc)
0696: 09                                add     hl,bc
0697: 09                                add     hl,bc
0698: 49                                ld      c,c
0699: 20 2D                             jr      nz,L06C8
069B: 20 49                             jr      nz,L06E5+1      ; reference not aligned to instruction
069D: 6E                                ld      l,(hl)
069E: 70                                ld      (hl),b
069F: 75                                ld      (hl),l
06A0: 74                                ld      (hl),h
06A1: 2F                                cpl
06A2: 6F                         L06A2: ld      l,a
06A3: 75                                ld      (hl),l
06A4: 74                                ld      (hl),h
06A5: 70                                ld      (hl),b
06A6: 75                                ld      (hl),l
06A7: 74                                ld      (hl),h
06A8: 0D                                dec     c
06A9: 0A                                ld      a,(bc)
06AA: 09                                add     hl,bc
06AB: 09                                add     hl,bc
06AC: 52                                ld      d,d
06AD: 20 2D                             jr      nz,L06DC
06AF: 20 36                             jr      nz,L06E7
06B1: 34                                inc     (hl)
06B2: 4B                         L06B2: ld      c,e
06B3: 20 52                             jr      nz,L0707
06B5: 41                         L06B5: ld      b,c
06B6: 4D                                ld      c,l
06B7: 0D                                dec     c
06B8: 0A                                ld      a,(bc)
06B9: 09                                add     hl,bc
06BA: 09                                add     hl,bc
06BB: 50                                ld      d,b
06BC: 20 2D                             jr      nz,L06EB
06BE: 20 50                             jr      nz,L0710
06C0: 65                                ld      h,l
06C1: 72                                ld      (hl),d
06C2: 69                                ld      l,c
06C3: 66                                ld      h,(hl)
06C4: 65                                ld      h,l
06C5: 72                                ld      (hl),d
06C6: 69                                ld      l,c
06C7: 63                                ld      h,e
06C8: 68                         L06C8: ld      l,b
06C9: 65                                ld      h,l
06CA: 20 69                             jr      nz,L0735
06CC: 6E                                ld      l,(hl)
06CD: 70                                ld      (hl),b
06CE: 75                                ld      (hl),l
06CF: 74                                ld      (hl),h
06D0: 0D                         L06D0: dec     c
06D1: 0A                                ld      a,(bc)
06D2: 09                                add     hl,bc
06D3: 09                                add     hl,bc
06D4: 54                                ld      d,h
06D5: 20 2D                             jr      nz,L0703+1      ; reference not aligned to instruction
06D7: 20 54                             jr      nz,L072D
06D9: 61                                ld      h,c
06DA: 73                                ld      (hl),e
06DB: 74                                ld      (hl),h
06DC: 69                         L06DC: ld      l,c
06DD: 65                                ld      h,l
06DE: 72                                ld      (hl),d
06DF: 61                                ld      h,c
06E0: 0D                                dec     c
06E1: 0A                                ld      a,(bc)
06E2: 09                                add     hl,bc
06E3: 09                                add     hl,bc
06E4: 56                                ld      d,(hl)
06E5: 20 2D                      L06E5: jr      nz,L0713+1      ; reference not aligned to instruction
06E7: 20 52                      L06E7: jr      nz,L073B
06E9: 41                                ld      b,c
06EA: 4D                                ld      c,l
06EB: 20 76                      L06EB: jr      nz,L0763
06ED: 69                                ld      l,c
06EE: 64                                ld      h,h
06EF: 65                                ld      h,l
06F0: 6F                                ld      l,a
06F1: 0A                                ld      a,(bc)
06F2: 00                                nop
06F3: 0D                                dec     c
06F4: 0A                                ld      a,(bc)
06F5: 17                         L06F5: rla
06F6: 46                                ld      b,(hl)
06F7: 49                                ld      c,c
06F8: 52                                ld      d,d
06F9: 50                                ld      d,b
06FA: 54                                ld      d,h
06FB: 56                                ld      d,(hl)
06FC: 3E 07                             ld      a,07h
06FE: 00                                nop
06FF: 0D                                dec     c
0700: 4C                                ld      c,h
0701: 38 20                             jr      c,L0723
0703: 20 00                      L0703: jr      nz,L0705
0705: 20 20                      L0705: jr      nz,L0727
0707: 41                         L0707: ld      b,c
0708: 46                                ld      b,(hl)
0709: 44                                ld      b,h
070A: 54                                ld      d,h
070B: 20 20                             jr      nz,L072D
070D: 00                                nop
070E: 20 20                             jr      nz,L0730
0710: 53                         L0710: ld      d,e
0711: 54                                ld      d,h
0712: 53                                ld      d,e
0713: 20 20                      L0713: jr      nz,L0735
0715: 00                                nop
0716: 20 20                             jr      nz,L0737+1      ; reference not aligned to instruction
0718: 44                                ld      b,h
0719: 41                                ld      b,c
071A: 54                                ld      d,h
071B: 20 20                             jr      nz,L073D
071D: 00                                nop
071E: 0D                                dec     c
071F: 0A                                ld      a,(bc)
0720: 44                                ld      b,h
0721: 49                                ld      c,c
0722: 53                                ld      d,e
0723: 4B                         L0723: ld      c,e
0724: 20 45                             jr      nz,L076A+1      ; reference not aligned to instruction
0726: 72                                ld      (hl),d
0727: 72                         L0727: ld      (hl),d
0728: 6F                                ld      l,a
0729: 72                                ld      (hl),d
072A: 00                                nop
072B: 0D                                dec     c
072C: 0A                                ld      a,(bc)
072D: 17                         L072D: rla
072E: 52                                ld      d,d
072F: 41                                ld      b,c
0730: 4D                         L0730: ld      c,l
0731: 20 45                             jr      nz,L0777+1      ; reference not aligned to instruction
0733: 72                                ld      (hl),d
0734: 72                                ld      (hl),d
0735: 6F                         L0735: ld      l,a
0736: 72                                ld      (hl),d
0737: 20 20                      L0737: jr      nz,L0759
0739: 48                                ld      c,b
073A: 3D                                dec     a
073B: 20 00                      L073B: jr      nz,L073D
073D: 20 20                      L073D: jr      nz,L075E+1      ; reference not aligned to instruction
073F: 4C                                ld      c,h
0740: 3D                                dec     a
0741: 20 00                             jr      nz,L0743
0743: 20 20                      L0743: jr      nz,L0765
0745: 52                                ld      d,d
0746: 3D                                dec     a
0747: 20 00                             jr      nz,L0749
0749: 20 20                      L0749: jr      nz,L076A+1      ; reference not aligned to instruction
074B: 57                                ld      d,a
074C: 3D                                dec     a
074D: 20 00                             jr      nz,L074F
074F: 0D                         L074F: dec     c
0750: 0A                                ld      a,(bc)
0751: 17                                rla
0752: 2A 2A 20                          ld      hl,(202Ah)
0755: 4E                                ld      c,(hl)
0756: 6F                                ld      l,a
0757: 20 65                             jr      nz,L07BE
0759: 72                         L0759: ld      (hl),d
075A: 72                                ld      (hl),d
075B: 6F                                ld      l,a
075C: 72                                ld      (hl),d
075D: 73                                ld      (hl),e
075E: 20 2A                      L075E: jr      nz,L078A
0760: 2A 00 DB                   L0760: ld      hl,(0DB00h)
0763: 05                         L0763: dec     b
0764: 2F                                cpl
0765: E6 01                      L0765: and     01h
0767: C0                                ret     nz
0768: DB 04                             in      a,(04h)
076A: D3 06                      L076A: out     (06h),a
076C: 00                                nop
076D: D3 06                             out     (06h),a
076F: C9                                ret

                                        ; --- START PROC L0770 ---
0770: DB 05                      L0770: in      a,(05h)
0772: 2F                                cpl
0773: E6 08                             and     08h
0775: C0                                ret     nz
0776: 78                                ld      a,b
0777: D3 09                      L0777: out     (09h),a
0779: DB 05                             in      a,(05h)
077B: E6 08                             and     08h
077D: C0                                ret     nz
077E: D3 0A                             out     (0Ah),a
0780: AF                                xor     a
0781: C9                                ret

                                        ; --- START PROC L0782 ---
0782: DB 0E                      L0782: in      a,(0Eh)
0784: 2F                                cpl
0785: E6 02                             and     02h
0787: C0                                ret     nz
0788: DB 0D                             in      a,(0Dh)
078A: C9                         L078A: ret

                                        ; --- START PROC L078B ---
078B: DB 0E                      L078B: in      a,(0Eh)
078D: 2F                                cpl
078E: E6 01                             and     01h
0790: C0                                ret     nz
0791: 78                                ld      a,b
0792: D3 0D                             out     (0Dh),a
0794: AF                                xor     a
0795: C9                                ret

                                        ; --- START PROC L0796 ---
0796: DB 01                      L0796: in      a,(01h)
0798: E6 80                             and     80h
079A: 78                                ld      a,b
079B: C8                                ret     z
079C: DB 0C                             in      a,(0Ch)
079E: 2F                                cpl
079F: E6 02                             and     02h
07A1: C0                                ret     nz
07A2: DB 0B                             in      a,(0Bh)
07A4: C9                                ret

                                        ; --- START PROC L07A5 ---
07A5: DB 01                      L07A5: in      a,(01h)
07A7: B7                                or      a
07A8: F2 B4 07                          jp      p,L07B4
07AB: DB 0C                             in      a,(0Ch)
07AD: 2F                                cpl
07AE: E6 01                             and     01h
07B0: C0                                ret     nz
07B1: 78                                ld      a,b
07B2: D3 0B                             out     (0Bh),a
07B4: AF                         L07B4: xor     a
07B5: C9                                ret

07B6: 3A FF FF                   L07B6: ld      a,(0FFFFh)
07B9: FF                                rst     0x38

07BA: FF                         L07BA: rst     0x38

07BB: FF                         L07BB: rst     0x38

07BC: FF                         L07BC: rst     0x38

07BD: FF                         L07BD: rst     0x38

07BE: FF                         L07BE: rst     0x38

07BF: FF                         L07BF: rst     0x38

07C0: FF                         L07C0: rst     0x38

07C1: FF                         L07C1: rst     0x38

07C2: FF                         L07C2: rst     0x38

07C3: FF                         L07C3: rst     0x38

07C4: FF                         L07C4: rst     0x38

07C5: FF                         L07C5: rst     0x38

07C6: FF                         L07C6: rst     0x38

07C7: FF                         L07C7: rst     0x38

07C8: FF                         L07C8: rst     0x38

07C9: FF                         L07C9: rst     0x38

07CA: FF                         L07CA: rst     0x38

07CB: FF                         L07CB: rst     0x38

07CC: FF                         L07CC: rst     0x38

07CD: FF                         L07CD: rst     0x38

07CE: FF                         L07CE: rst     0x38

07CF: FF                         L07CF: rst     0x38

07D0: FF                         L07D0: rst     0x38

07D1: FF                         L07D1: rst     0x38

07D2: FF                         L07D2: rst     0x38

07D3: FF                         L07D3: rst     0x38

07D4: FF                         L07D4: rst     0x38

07D5: FF                         L07D5: rst     0x38

07D6: FF                         L07D6: rst     0x38

07D7: FF                         L07D7: rst     0x38

07D8: FF                         L07D8: rst     0x38

07D9: FF                         L07D9: rst     0x38

07DA: FF                         L07DA: rst     0x38

07DB: FF                         L07DB: rst     0x38

07DC: FF                         L07DC: rst     0x38

07DD: FF                         L07DD: rst     0x38

07DE: FF                         L07DE: rst     0x38

07DF: FF                         L07DF: rst     0x38

07E0: FF                         L07E0: rst     0x38

07E1: FF                         L07E1: rst     0x38

07E2: FF                         L07E2: rst     0x38

07E3: FF                         L07E3: rst     0x38

07E4: FF                         L07E4: rst     0x38

07E5: FF                         L07E5: rst     0x38

07E6: FF                         L07E6: rst     0x38

07E7: FF                         L07E7: rst     0x38

07E8: FF                         L07E8: rst     0x38

07E9: FF                         L07E9: rst     0x38

07EA: FF                         L07EA: rst     0x38

07EB: FF                         L07EB: rst     0x38

07EC: FF                         L07EC: rst     0x38

07ED: FF                         L07ED: rst     0x38

07EE: FF                         L07EE: rst     0x38

07EF: FF                         L07EF: rst     0x38

07F0: FF                         L07F0: rst     0x38

07F1: FF                         L07F1: rst     0x38

07F2: FF                         L07F2: rst     0x38

07F3: FF                         L07F3: rst     0x38

07F4: FF                         L07F4: rst     0x38

07F5: FF                         L07F5: rst     0x38

07F6: FF                         L07F6: rst     0x38

07F7: FF                         L07F7: rst     0x38

07F8: FF                         L07F8: rst     0x38

07F9: FF                         L07F9: rst     0x38

07FA: FF                         L07FA: rst     0x38

07FB: FF                         L07FB: rst     0x38

07FC: FF                         L07FC: rst     0x38

07FD: FF                         L07FD: rst     0x38

07FE: FF                         L07FE: rst     0x38

07FF: FF                         L07FF: rst     0x38


references to external address 0A0Dh:
        067F ld a,(0A0Dh)

references to external address 1000h:
        002E ld a,(1000h)
        0082 ld bc,1000h
        01EF ld a,(1000h)
        03F4 ld hl,1000h
        040F ld hl,1000h
        0498 ld hl,1000h

references to external address 17D0h:
        0026 ld de,17D0h
        01E9 ld hl,(17D0h)
        0209 ld (17D0h),hl
        0304 ld hl,17D0h
        048E ld hl,17D0h
        04A1 ld de,17D0h

references to external address 17D2h:
        01CF ld a,(17D2h)
        01FA ld a,(17D2h)
        0206 ld (17D2h),a
        02A7 ld a,(17D2h)

references to external address 17D3h:
        01DE ld a,(17D3h)
        02C6 ld (17D3h),a

references to external address 17D4h:
        01C2 ld a,(17D4h)
        032B ld (17D4h),a

references to external address 17D5h:
        01AC ld a,(17D5h)
        027C ld (17D5h),a
        0286 ld (17D5h),a
        0316 ld (17D5h),a

references to external address 17D6h:
        00E3 ld hl,(17D6h)
        00F5 ld (17D6h),hl

references to external address 17D8h:
        00BA ld hl,(17D8h)
        00E7 ld hl,(17D8h)
        00F1 ld (17D8h),hl
        03C4 ld hl,(17D8h)

references to external address 17E2h:
        00C8 ld (17E2h),a

references to external address 17E3h:
        00D0 ld (17E3h),a

references to external address 17E5h:
        0347 ld (17E5h),hl
        0357 ld hl,(17E5h)

references to external address 1800h:
        0020 ld sp,1800h
        037C ld hl,(1800h)
        04AF ld hl,1800h
        04FA ld sp,1800h

references to external address 2000h:
        009F jp z,2000h
        02FB ld hl,2000h
        0373 ld bc,2000h
        04CF ld hl,2000h
        0596 ld (2000h),hl
        05A4 ld hl,(2000h)
        05B4 ld (2000h),hl
        0602 ld hl,(2000h)
        0615 ld hl,(2000h)

references to external address 2002h:
        059A ld (2002h),a
        05F0 ld hl,2002h
        060C ld hl,2002h

references to external address 2003h:
        05DF ld (2003h),a

references to external address 2004h:
        05ED ld (2004h),a

references to external address 2005h:
        05B7 ld (2005h),hl
        0609 ld (2005h),hl

references to external address 2007h:
        059D ld (2007h),a

references to external address 2008h:
        05BD ld a,(2008h)
        05E6 ld (2008h),a

references to external address 202Ah:
        0752 ld hl,(202Ah)

references to external address 6345h:
        0380 ld (6345h),hl

references to external address 8000h:
        0488 ld sp,8000h
        048B ld de,8000h
        04A4 ld hl,8000h
        04CC ld sp,8000h
        04D8 ld de,8000h
        04F7 call 8000h

references to external address 8015h:
        0545 call 8015h

references to external address 802Eh:
        0558 jp 802Eh

references to external address 0DB00h:
        0760 ld hl,(0DB00h)

references to external address 0FFFFh:
        07B6 ld a,(0FFFFh)

possible references to internal address 0000:
        0035 ld hl,0000h
        00AC ld bc,0000h
        016C ld de,0000h
        0342 ld hl,0000h
        034C ld de,0000h
        053F ld hl,0000h

possible references to internal address 000D:
        04EE ld bc,000Dh

possible references to internal address 0015:
        0029 ld bc,0015h
        0491 ld bc,0015h
        04A7 ld bc,0015h
        04DB ld bc,0015h

possible references to internal address 002D:
        04E6 ld bc,002Dh

possible references to internal address 0050:
        01F5 ld bc,0050h
        0275 ld bc,0050h
        02A1 ld bc,0050h

possible references to internal address 0200:
        0605 ld de,0200h
        0619 ld hl,0200h

possible references to internal address 035C:
        0023 ld hl,035Ch

possible references to internal address 0371:
        0099 ld hl,0371h
        05F9 ld hl,0371h

possible references to internal address 0377:
        004B ld hl,0377h

possible references to internal address 037E:
        0051 ld hl,037Eh

possible references to internal address 038E:
        019F ld hl,038Eh

possible references to internal address 0400:
        05A7 ld de,0400h

possible references to internal address 0506:
        04E3 ld hl,0506h
        ----------
        049E call L0506
        04B4 call L0506
        04C9 call L0506
        04D5 call L0506

possible references to internal address 0539:
        04DE ld hl,0539h

possible references to internal address 054E:
        04EB ld hl,054Eh

possible references to internal address 065B:
        03B2 ld hl,065Bh
        04B7 ld hl,065Bh

possible references to internal address 06F3:
        03B8 ld hl,06F3h

possible references to internal address 06FF:
        0443 ld hl,06FFh

possible references to internal address 0705:
        044B ld hl,0705h

possible references to internal address 070E:
        0455 ld hl,070Eh

possible references to internal address 0716:
        045D ld hl,0716h

possible references to internal address 071E:
        0652 ld hl,071Eh

possible references to internal address 072B:
        0563 ld hl,072Bh

possible references to internal address 073D:
        056C ld hl,073Dh

possible references to internal address 0743:
        0574 ld hl,0743h

possible references to internal address 0749:
        057C ld hl,0749h

possible references to internal address 074F:
        04FD ld hl,074Fh

possible references to external address 0800h:
        01BE ld bc,0800h
        02CE ld hl,0800h
        0335 ld bc,0800h

possible references to external address 0FB0h:
        02A4 ld hl,0FB0h

possible references to external address 1000h:
        0082 ld bc,1000h
        03F4 ld hl,1000h
        040F ld hl,1000h
        0498 ld hl,1000h
        ----------
        002E ld a,(1000h)
        01EF ld a,(1000h)

possible references to external address 1050h:
        0201 ld hl,1050h

possible references to external address 17D0h:
        0026 ld de,17D0h
        0304 ld hl,17D0h
        048E ld hl,17D0h
        04A1 ld de,17D0h
        ----------
        01E9 ld hl,(17D0h)
        0209 ld (17D0h),hl

possible references to external address 17DAh:
        00D3 ld hl,17DAh

possible references to external address 1800h:
        0020 ld sp,1800h
        04AF ld hl,1800h
        04FA ld sp,1800h
        ----------
        037C ld hl,(1800h)

possible references to external address 1C55h:
        0593 ld hl,1C55h

possible references to external address 2000h:
        02FB ld hl,2000h
        0373 ld bc,2000h
        04CF ld hl,2000h
        ----------
        009F jp z,2000h
        0596 ld (2000h),hl
        05A4 ld hl,(2000h)
        05B4 ld (2000h),hl
        0602 ld hl,(2000h)
        0615 ld hl,(2000h)

possible references to external address 2002h:
        05F0 ld hl,2002h
        060C ld hl,2002h
        ----------
        059A ld (2002h),a

possible references to external address 2055h:
        05B1 ld hl,2055h

possible references to external address 3200h:
        058D ld bc,3200h

possible references to external address 4000h:
        04C2 ld hl,4000h
        04C6 ld de,4000h

possible references to external address 8000h:
        0488 ld sp,8000h
        048B ld de,8000h
        04A4 ld hl,8000h
        04CC ld sp,8000h
        04D8 ld de,8000h
        ----------
        04F7 call 8000h

possible references to external address 8019h:
        04F3 ld ix,8019h

possible references to external address 0E000h:
        04D2 ld de,0E000h
        0542 ld de,0E000h

possible references to external address 0F800h:
        049B ld de,0F800h
        04AC ld de,0F800h

possible references to external address 0F830h:
        03F7 ld de,0F830h
        0412 ld de,0F830h

possible references to external address 0FE00h:
        02FE ld bc,0FE00h
        05BA ld de,0FE00h
        061E ld bc,0FE00h

possible references to external address 0FE0Ch:
        0307 ld bc,0FE0Ch

possible references to external address 0FF01h:
        05A0 ld hl,0FF01h

possible references to external address 0FFECh:
        033E ld bc,0FFECh

port references through a register:
        0179 in d,(c)
        017C in e,(c)
        018A in d,(c)
        018D in e,(c)

references to port 00h
        0033 out (00h),a
        01F3 out (00h),a

references to port 01h
        0446 in a,(01h)
        0796 in a,(01h)
        07A5 in a,(01h)
        053C out (01h),a
        054A out (01h),a
        054F out (01h),a
        0556 out (01h),a

references to port 03h
        0257 out (03h),a

references to port 04h
        0768 in a,(04h)

references to port 05h
        044E in a,(05h)
        0770 in a,(05h)
        0779 in a,(05h)

references to port 06h
        076A out (06h),a
        076D out (06h),a

references to port 09h
        03AA out (09h),a
        0777 out (09h),a

references to port 0Ah
        03AC out (0Ah),a
        077E out (0Ah),a

references to port 0Bh
        03B0 in a,(0Bh)
        07A2 in a,(0Bh)
        07B2 out (0Bh),a

references to port 0Ch
        079C in a,(0Ch)
        07AB in a,(0Ch)
        03A1 out (0Ch),a
        03A7 out (0Ch),a

references to port 0Dh
        03AE in a,(0Dh)
        0788 in a,(0Dh)
        0792 out (0Dh),a

references to port 0Eh
        0782 in a,(0Eh)
        078B in a,(0Eh)
        039F out (0Eh),a
        03A5 out (0Eh),a

references to port 10h
        0069 in a,(10h)
        0109 in a,(10h)
        010F in a,(10h)
        0458 in a,(10h)
        0107 out (10h),a
        0165 out (10h),a
        017E out (10h),a
        018F out (10h),a

references to port 11h
        00AF in a,(11h)
        0199 in a,(11h)
        0460 in a,(11h)
        0104 out (11h),a

Procedures (35):
  Proc  Length  References Dependants
  L00C0  0017            3          1
  L00D6  000D           10          1
  L00E3  0016            4          1
  L00F9  0008            3          1
  L0101  0003            4          1
  L0103  0003            3          1
  L0104  0014            2          0
  L0118  003C            2          3
  L0154  004B            3          2
  L01A8  00FC            1         12
  L02A1  0017            4          0
  L02B8  0007            1          1
  L02BF  0005            1          1
  L02C4  0005            1          1
  L02C6  0004            1          0
  L02CA  0017            2          0
  L02E1  001A            1          3
  L02FB  0014            1          2
  L030D  0004            1          1
  L030F  0005            1          1
  L0314  0006            1          0
  L031A  0015            1          0
  L032F  000F            2          1
  L033E  0004            2          1
  L0341  001B            2          0
  L046E  001A            8          2
  L0506  0033            4          1
  L055C  0031            2          2
  L0638  000F            4          0
  L0647  000A            3          2
  L0770  0012            1          0
  L0782  0009            1          0
  L078B  000B            1          0
  L0796  000F            1          0
  L07A5  0011            1          0

Call Graph:
