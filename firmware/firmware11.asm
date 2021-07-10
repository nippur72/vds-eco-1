                                        ; Entry Point
                                        ; --- START PROC L0000 ---
0000: C3 20 00                   L0000: jp      L0020

                                        ; Entry Point
                                        ; --- START PROC L0003 ---
0003: C3 E3 00                   L0003: jp      L00E3

                                        ; Entry Point
                                        ; --- START PROC L0006 ---
0006: C3 54 01                   L0006: jp      L0154

                                        ; Entry Point
                                        ; --- START PROC L0009 ---
0009: C3 18 01                   L0009: jp      L0118

                                        ; Entry Point
                                        ; --- START PROC L000C ---
000C: C3 01 01                   L000C: jp      L0101

                                        ; Entry Point
                                        ; --- START PROC L000F ---
000F: C3 03 01                   L000F: jp      L0103

                                        ; Entry Point
                                        ; --- START PROC L0012 ---
0012: C3 9F 01                   L0012: jp      L019F

                                        ; Entry Point
                                        ; --- START PROC L0015 ---
0015: C3 F9 00                   L0015: jp      L00F9

                                        ; Entry Point
                                        ; --- START PROC L0018 ---
0018: C3 C0 00                   L0018: jp      L00C0

                                        ; Entry Point
                                        ; --- START PROC L001B ---
001B: C3 D6 00                   L001B: jp      L00D6

001E: FF                         L001E: DB      0FFh
001F: FF                                DB      0FFh

                                        ; --- START PROC L0020 ---
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
0057: CD 62 07                          call    L0762
005A: AF                                xor     a
005B: 4F                         L005B: ld      c,a
005C: 06 00                             ld      b,00h
005E: CD 62 07                   L005E: call    L0762
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
008A: CD 62 07                   L008A: call    L0762
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
                                        ; --- START PROC L00BA ---
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

                                        ; --- START PROC L019F ---
019F: 21 8E 03                   L019F: ld      hl,038Eh
                                        ; --- START PROC L01A2 ---
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
0346: 39                                add     hl,sp
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

035C: 50                         L035C: DB      50h     ; 'P'
035D: 10                                DB      10h
035E: E7                                DB      0E7h
035F: 59                                DB      59h     ; 'Y'
0360: 00                                DB      00h
0361: 00                                DB      00h
0362: 00                                DB      00h
0363: 00                                DB      00h
0364: 00                                DB      00h
0365: 10                                DB      10h
0366: 0D                                DB      0Dh
0367: 0A                                DB      0Ah
0368: 45 72 72 6F 72 20                 DB      "Error "
036E: 00                                DB      00h
036F: 00                                DB      00h
0370: 00                                DB      00h
0371: 00                                DB      00h
0372: 00                                DB      00h
0373: 01                                DB      01h
0374: 00                                DB      00h
0375: 20                                DB      20h     ; ' '
0376: 80                                DB      80h
0377: 18                                DB      18h
0378: 2A 43 52 43 2A                    DB      "*CRC*"
037D: 00                                DB      00h
037E: 18                                DB      18h
037F: 0F                                DB      0Fh
0380: 22                                DB      22h     ; '"'
0381: 45 63 6F 20 31 2E 31              DB      "Eco 1.1"
0388: 0F                                DB      0Fh
0389: 20                                DB      20h     ; ' '
038A: 0D                                DB      0Dh
038B: 0A                                DB      0Ah
038C: 0A                                DB      0Ah
038D: 00                                DB      00h
038E: 0D                                DB      0Dh
038F: 0A                                DB      0Ah
0390: 53 79 73 74 65 6D 20 65           DB      "System error"
0398: 72 72 6F 72
039C: 00                                DB      00h

                                        ; --- START PROC L039D ---
039D: 3E CE                      L039D: ld      a,0CEh
039F: D3 0E                             out     (0Eh),a
03A1: D3 0C                             out     (0Ch),a
03A3: 3E 25                             ld      a,25h   ; '%'
03A5: D3 0E                             out     (0Eh),a
03A7: D3 0C                             out     (0Ch),a
03A9: AF                                xor     a
03AA: D3 09                             out     (09h),a
03AC: D3 0A                             out     (0Ah),a
03AE: DB 0D                             in      a,(0Dh)
03B0: DB 0B                             in      a,(0Bh)
                                        ; --- START PROC L03B2 ---
03B2: 21 5B 06                   L03B2: ld      hl,065Bh
03B5: CD D6 00                          call    L00D6
                                        ; --- START PROC L03B8 ---
03B8: 21 F3 06                   L03B8: ld      hl,06F3h
03BB: CD D6 00                          call    L00D6
03BE: CD 62 07                   L03BE: call    L0762
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
03E8: CD 62 07                   L03E8: call    L0762
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
03FD: BA                                cp      d
03FE: C2 FA 03                          jp      nz,L03FA
0401: C3 E8 03                          jp      L03E8

0404: CD 62 07                   L0404: call    L0762
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
0465: CD 62 07                          call    L0762
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

                                        ; --- START PROC L0488 ---
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

                                        ; --- START PROC L04C0 ---
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
                                        ; --- START PROC L04FA ---
04FA: 31 00 18                   L04FA: ld      sp,1800h
                                        ; --- START PROC L04FD ---
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

0539: 47                         L0539: DB      47h     ; 'G'
053A: 3E                                DB      3Eh     ; '>'
053B: 01                                DB      01h
053C: D3                                DB      0D3h
053D: 01                                DB      01h
053E: 78                                DB      78h     ; 'x'
053F: 21                                DB      21h     ; '!'
0540: 00                                DB      00h
0541: 00                                DB      00h
0542: 11                                DB      11h
0543: 00                                DB      00h
0544: E0                                DB      0E0h
0545: CD                                DB      0CDh
0546: 15                                DB      15h
0547: 80                                DB      80h
0548: 47                                DB      47h     ; 'G'
0549: AF                                DB      0AFh
054A: D3                                DB      0D3h
054B: 01                                DB      01h
054C: 78                                DB      78h     ; 'x'
054D: C9                                DB      0C9h
054E: AF                                DB      0AFh
054F: D3                                DB      0D3h
0550: 01                                DB      01h
0551: CD                                DB      0CDh
0552: 5C                                DB      5Ch     ; '\'
0553: 05                                DB      05h
0554: 3E                                DB      3Eh     ; '>'
0555: 01                                DB      01h
0556: D3                                DB      0D3h
0557: 01                                DB      01h
0558: C3                                DB      0C3h
0559: 2E                                DB      2Eh     ; '.'
055A: 80                                DB      80h
055B: 00                                DB      00h

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
0582: CD 62 07                   L0582: call    L0762
0585: C2 82 05                          jp      nz,L0582
0588: E1                                pop     hl
0589: C1                                pop     bc
058A: D1                                pop     de
058B: F1                                pop     af
058C: C9                                ret

                                        ; --- START PROC L058D ---
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
064A: CD 62 07                   L064A: call    L0762
064D: C2 4A 06                          jp      nz,L064A
0650: C9                                ret

                                        ; --- START PROC L0651 ---
0651: E1                         L0651: pop     hl
0652: 21 1E 07                          ld      hl,071Eh
0655: CD D6 00                          call    L00D6
0658: C3 B8 03                          jp      L03B8

065B: 18                         L065B: DB      18h
065C: 0A                                DB      0Ah
065D: 09                                DB      09h
065E: 09                                DB      09h
065F: 09                                DB      09h
0660: 44 69 61 67 6E 6F 73 74           DB      "Diagnostico Eco 1.1"
0668: 69 63 6F 20 45 63 6F 20
0670: 31 2E 31
0673: 0D                                DB      0Dh
0674: 0A                                DB      0Ah
0675: 0A                                DB      0Ah
0676: 09                                DB      09h
0677: 09                                DB      09h
0678: 43 6F 6D 61 6E 64 69 3A           DB      "Comandi:"
0680: 0D                                DB      0Dh
0681: 0A                                DB      0Ah
0682: 0A                                DB      0Ah
0683: 09                                DB      09h
0684: 09                                DB      09h
0685: 46 20 2D 20 46 6C 6F 70           DB      "F - Floppy disk"
068D: 70 79 20 64 69 73 6B
0694: 0D                                DB      0Dh
0695: 0A                                DB      0Ah
0696: 09                                DB      09h
0697: 09                                DB      09h
0698: 49 20 2D 20 49 6E 70 75           DB      "I - Input/output"
06A0: 74 2F 6F 75 74 70 75 74
06A8: 0D                                DB      0Dh
06A9: 0A                                DB      0Ah
06AA: 09                                DB      09h
06AB: 09                                DB      09h
06AC: 52 20 2D 20 36 34 4B 20           DB      "R - 64K RAM"
06B4: 52 41 4D
06B7: 0D                                DB      0Dh
06B8: 0A                                DB      0Ah
06B9: 09                                DB      09h
06BA: 09                                DB      09h
06BB: 50 20 2D 20 50 65 72 69           DB      "P - Periferiche input"
06C3: 66 65 72 69 63 68 65 20
06CB: 69 6E 70 75 74
06D0: 0D                                DB      0Dh
06D1: 0A                                DB      0Ah
06D2: 09                                DB      09h
06D3: 09                                DB      09h
06D4: 54 20 2D 20 54 61 73 74           DB      "T - Tastiera"
06DC: 69 65 72 61
06E0: 0D                                DB      0Dh
06E1: 0A                                DB      0Ah
06E2: 09                                DB      09h
06E3: 09                                DB      09h
06E4: 56 20 2D 20 52 41 4D 20           DB      "V - RAM video"
06EC: 76 69 64 65 6F
06F1: 0A                                DB      0Ah
06F2: 00                                DB      00h
06F3: 0D                                DB      0Dh
06F4: 0A                                DB      0Ah
06F5: 17                                DB      17h
06F6: 46 49 52 50 54 56 3E              DB      "FIRPTV>"
06FD: 07                                DB      07h
06FE: 00                                DB      00h
06FF: 0D                                DB      0Dh
0700: 4C                                DB      4Ch     ; 'L'
0701: 38                                DB      38h     ; '8'
0702: 20                                DB      20h     ; ' '
0703: 20                                DB      20h     ; ' '
0704: 00                                DB      00h
0705: 20 20 41 46 44 54 20 20           DB      "  AFDT  "
070D: 00                                DB      00h
070E: 20 20 53 54 53 20 20              DB      "  STS  "
0715: 00                                DB      00h
0716: 20 20 44 41 54 20 20              DB      "  DAT  "
071D: 00                                DB      00h
071E: 0D                                DB      0Dh
071F: 0A                                DB      0Ah
0720: 44 49 53 4B 20 45 72 72           DB      "DISK Error"
0728: 6F 72
072A: 00                                DB      00h
072B: 0D                                DB      0Dh
072C: 0A                                DB      0Ah
072D: 17                                DB      17h
072E: 52 41 4D 20 45 72 72 6F           DB      "RAM Error  H= "
0736: 72 20 20 48 3D 20
073C: 00                                DB      00h
073D: 20 20 4C 3D 20                    DB      "  L= "
0742: 00                                DB      00h
0743: 20 20 52 3D 20                    DB      "  R= "
0748: 00                                DB      00h
0749: 20 20 57 3D 20                    DB      "  W= "
074E: 00                                DB      00h
074F: 0D                                DB      0Dh
0750: 0A                                DB      0Ah
0751: 17                                DB      17h
0752: 2A 2A 20 4E 6F 20 65 72           DB      "** No errors **"
075A: 72 6F 72 73 20 2A 2A
0761: 00                                DB      00h

                                        ; --- START PROC L0762 ---
0762: DB 05                      L0762: in      a,(05h)
0764: 2F                                cpl
0765: E6 01                             and     01h
0767: C0                                ret     nz
0768: DB 04                             in      a,(04h)
076A: D3 06                             out     (06h),a
076C: 00                                nop
076D: D3 06                             out     (06h),a
076F: C9                                ret

                                        ; --- START PROC L0770 ---
0770: DB 05                      L0770: in      a,(05h)
0772: 2F                                cpl
0773: E6 08                             and     08h
0775: C0                                ret     nz
0776: 78                                ld      a,b
0777: D3 09                             out     (09h),a
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
078A: C9                                ret

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

07B6: 3A                         L07B6: DB      3Ah     ; ':'
07B7: FF                                DB      0FFh
07B8: FF                                DB      0FFh
07B9: FF                                DB      0FFh
07BA: FF                                DB      0FFh
07BB: FF                                DB      0FFh
07BC: FF                                DB      0FFh
07BD: FF                                DB      0FFh
07BE: FF                                DB      0FFh
07BF: FF                                DB      0FFh
07C0: FF                                DB      0FFh
07C1: FF                                DB      0FFh
07C2: FF                                DB      0FFh
07C3: FF                                DB      0FFh
07C4: FF                                DB      0FFh
07C5: FF                                DB      0FFh
07C6: FF                                DB      0FFh
07C7: FF                                DB      0FFh
07C8: FF                                DB      0FFh
07C9: FF                                DB      0FFh
07CA: FF                                DB      0FFh
07CB: FF                                DB      0FFh
07CC: FF                                DB      0FFh
07CD: FF                                DB      0FFh
07CE: FF                                DB      0FFh
07CF: FF                                DB      0FFh
07D0: FF                                DB      0FFh
07D1: FF                                DB      0FFh
07D2: FF                                DB      0FFh
07D3: FF                                DB      0FFh
07D4: FF                                DB      0FFh
07D5: FF                                DB      0FFh
07D6: FF                                DB      0FFh
07D7: FF                                DB      0FFh
07D8: FF                                DB      0FFh
07D9: FF                                DB      0FFh
07DA: FF                                DB      0FFh
07DB: FF                                DB      0FFh
07DC: FF                                DB      0FFh
07DD: FF                                DB      0FFh
07DE: FF                                DB      0FFh
07DF: FF                                DB      0FFh
07E0: FF                                DB      0FFh
07E1: FF                                DB      0FFh
07E2: FF                                DB      0FFh
07E3: FF                                DB      0FFh
07E4: FF                                DB      0FFh
07E5: FF                                DB      0FFh
07E6: FF                                DB      0FFh
07E7: FF                                DB      0FFh
07E8: FF                                DB      0FFh
07E9: FF                                DB      0FFh
07EA: FF                                DB      0FFh
07EB: FF                                DB      0FFh
07EC: FF                                DB      0FFh
07ED: FF                                DB      0FFh
07EE: FF                                DB      0FFh
07EF: FF                                DB      0FFh
07F0: FF                                DB      0FFh
07F1: FF                                DB      0FFh
07F2: FF                                DB      0FFh
07F3: FF                                DB      0FFh
07F4: FF                                DB      0FFh
07F5: FF                                DB      0FFh
07F6: FF                                DB      0FFh
07F7: FF                                DB      0FFh
07F8: FF                                DB      0FFh
07F9: FF                                DB      0FFh
07FA: FF                                DB      0FFh
07FB: FF                                DB      0FFh
07FC: FF                                DB      0FFh
07FD: FF                                DB      0FFh
07FE: FF                                DB      0FFh
07FF: FF                                DB      0FFh

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

references to external address 2000h:
        009F jp z,2000h
        02FB ld hl,2000h
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

references to external address 8000h:
        0488 ld sp,8000h
        048B ld de,8000h
        04A4 ld hl,8000h
        04CC ld sp,8000h
        04D8 ld de,8000h
        04F7 call 8000h

possible references to internal address 0000:
        0035 ld hl,0000h
        00AC ld bc,0000h
        016C ld de,0000h
        0342 ld hl,0000h
        034C ld de,0000h

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

possible references to external address 1C55h:
        0593 ld hl,1C55h

possible references to external address 2000h:
        02FB ld hl,2000h
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

references to port 03h
        0257 out (03h),a

references to port 04h
        0768 in a,(04h)

references to port 05h
        044E in a,(05h)
        0762 in a,(05h)
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

Procedures (59):
  Proc  Length  References Dependants
  L0000  0003            0          1
  L0003  0003            0          1
  L0006  0003            0          1
  L0009  0003            0          1
  L000C  0003            0          1
  L000F  0003            0          1
  L0012  0003            0          1
  L0015  0003            0          1
  L0018  0003            0          1
  L001B  0003            0          1
  L0020  00A1            1          8
  L00BA  0007            1          1
  L00C0  0017            3          1
  L00D6  000D           10          1
  L00E3  0016            4          1
  L00F9  0008            3          1
  L0101  0003            4          1
  L0103  0003            3          1
  L0104  0014            2          0
  L0118  003C            2          3
  L0154  004B            3          2
  L019F  0006            1          1
  L01A2  0006            1          2
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
  L039D  00D1            2         12
  L03B2  0009            3          2
  L03B8  00B6            3         13
  L046E  001A            8          2
  L0488  0038            1          3
  L04C0  0040            1          3
  L04FA  0006            1          1
  L04FD  0009            1          2
  L0506  0033            4          1
  L055C  0031            1          2
  L058D  00AB            1          8
  L0638  000F            4          0
  L0647  000A            3          2
  L0651  000A            1          2
  L0762  000E            9          0
  L0770  0012            1          0
  L0782  0009            1          0
  L078B  000B            1          0
  L0796  000F            1          0
  L07A5  0011            1          0

Call Graph:
L0000 - Entry Point
  L0020
    L01A2
      L00D6
        L00E3
          L01A8
            L030F
              L02A1
            L032F
              L033E
                L0341
            L0314
            L02BF
              L02C6
            L02C4
              L02C6
            L02CA
            L02E1
              L02CA
              L02A1
              L032F
                L033E
                  L0341
            L02FB
              L0341
              L030D
                L030F
                  L02A1
            L030D
              L030F
                L02A1
            L02B8
              L02A1
            L031A
            L02A1
      L00BA
        L00C0
          L00D6
            L00E3
              L01A8
                L030F
                  L02A1
                L032F
                  L033E
                    L0341
                L0314
                L02BF
                  L02C6
                L02C4
                  L02C6
                L02CA
                L02E1
                  L02CA
                  L02A1
                  L032F
                    L033E
                      L0341
                L02FB
                  L0341
                  L030D
                    L030F
                      L02A1
                L030D
                  L030F
                    L02A1
                L02B8
                  L02A1
                L031A
                L02A1
    L00D6
      L00E3
        L01A8
          L030F
            L02A1
          L032F
            L033E
              L0341
          L0314
          L02BF
            L02C6
          L02C4
            L02C6
          L02CA
          L02E1
            L02CA
            L02A1
            L032F
              L033E
                L0341
          L02FB
            L0341
            L030D
              L030F
                L02A1
          L030D
            L030F
              L02A1
          L02B8
            L02A1
          L031A
          L02A1
    L0762
    L039D
      L00D6
        L00E3
          L01A8
            L030F
              L02A1
            L032F
              L033E
                L0341
            L0314
            L02BF
              L02C6
            L02C4
              L02C6
            L02CA
            L02E1
              L02CA
              L02A1
              L032F
                L033E
                  L0341
            L02FB
              L0341
              L030D
                L030F
                  L02A1
            L030D
              L030F
                L02A1
            L02B8
              L02A1
            L031A
            L02A1
      L0762
      L058D
        L00F9
          L0104
        L0638
        L0118
          L0101
            L0103
              L0104
          L0103
            L0104
          L0104
        L0647
          L00C0
            L00D6
              L00E3
                L01A8
                  L030F
                    L02A1
                  L032F
                    L033E
                      L0341
                  L0314
                  L02BF
                    L02C6
                  L02C4
                    L02C6
                  L02CA
                  L02E1
                    L02CA
                    L02A1
                    L032F
                      L033E
                        L0341
                  L02FB
                    L0341
                    L030D
                      L030F
                        L02A1
                  L030D
                    L030F
                      L02A1
                  L02B8
                    L02A1
                  L031A
                  L02A1
          L0762
        L0101
          L0103
            L0104
        L0154
          L0101
            L0103
              L0104
          L0103
            L0104
        L0651
          L00D6
            L00E3
              L01A8
                L030F
                  L02A1
                L032F
                  L033E
                    L0341
                L0314
                L02BF
                  L02C6
                L02C4
                  L02C6
                L02CA
                L02E1
                  L02CA
                  L02A1
                  L032F
                    L033E
                      L0341
                L02FB
                  L0341
                  L030D
                    L030F
                      L02A1
                L030D
                  L030F
                    L02A1
                L02B8
                  L02A1
                L031A
                L02A1
          L03B8
            L00D6
              L00E3
                L01A8
                  L030F
                    L02A1
                  L032F
                    L033E
                      L0341
                  L0314
                  L02BF
                    L02C6
                  L02C4
                    L02C6
                  L02CA
                  L02E1
                    L02CA
                    L02A1
                    L032F
                      L033E
                        L0341
                  L02FB
                    L0341
                    L030D
                      L030F
                        L02A1
                  L030D
                    L030F
                      L02A1
                  L02B8
                    L02A1
                  L031A
                  L02A1
            L0762
            L058D - Recursive
            L04C0
              L0506
                L055C
                  L046E
                    L00D6
                      L00E3
                        L01A8
                          L030F
                            L02A1
                          L032F
                            L033E
                              L0341
                          L0314
                          L02BF
                            L02C6
                          L02C4
                            L02C6
                          L02CA
                          L02E1
                            L02CA
                            L02A1
                            L032F
                              L033E
                                L0341
                          L02FB
                            L0341
                            L030D
                              L030F
                                L02A1
                          L030D
                            L030F
                              L02A1
                          L02B8
                            L02A1
                          L031A
                          L02A1
                    L00E3
                      L01A8
                        L030F
                          L02A1
                        L032F
                          L033E
                            L0341
                        L0314
                        L02BF
                          L02C6
                        L02C4
                          L02C6
                        L02CA
                        L02E1
                          L02CA
                          L02A1
                          L032F
                            L033E
                              L0341
                        L02FB
                          L0341
                          L030D
                            L030F
                              L02A1
                        L030D
                          L030F
                            L02A1
                        L02B8
                          L02A1
                        L031A
                        L02A1
                  L0762
              8000h - External
              L04FD
                L00D6
                  L00E3
                    L01A8
                      L030F
                        L02A1
                      L032F
                        L033E
                          L0341
                      L0314
                      L02BF
                        L02C6
                      L02C4
                        L02C6
                      L02CA
                      L02E1
                        L02CA
                        L02A1
                        L032F
                          L033E
                            L0341
                      L02FB
                        L0341
                        L030D
                          L030F
                            L02A1
                      L030D
                        L030F
                          L02A1
                      L02B8
                        L02A1
                      L031A
                      L02A1
                L03B8 - Recursive
            L0488
              L0506
                L055C
                  L046E
                    L00D6
                      L00E3
                        L01A8
                          L030F
                            L02A1
                          L032F
                            L033E
                              L0341
                          L0314
                          L02BF
                            L02C6
                          L02C4
                            L02C6
                          L02CA
                          L02E1
                            L02CA
                            L02A1
                            L032F
                              L033E
                                L0341
                          L02FB
                            L0341
                            L030D
                              L030F
                                L02A1
                          L030D
                            L030F
                              L02A1
                          L02B8
                            L02A1
                          L031A
                          L02A1
                    L00E3
                      L01A8
                        L030F
                          L02A1
                        L032F
                          L033E
                            L0341
                        L0314
                        L02BF
                          L02C6
                        L02C4
                          L02C6
                        L02CA
                        L02E1
                          L02CA
                          L02A1
                          L032F
                            L033E
                              L0341
                        L02FB
                          L0341
                          L030D
                            L030F
                              L02A1
                        L030D
                          L030F
                            L02A1
                        L02B8
                          L02A1
                        L031A
                        L02A1
                  L0762
              L00D6
                L00E3
                  L01A8
                    L030F
                      L02A1
                    L032F
                      L033E
                        L0341
                    L0314
                    L02BF
                      L02C6
                    L02C4
                      L02C6
                    L02CA
                    L02E1
                      L02CA
                      L02A1
                      L032F
                        L033E
                          L0341
                    L02FB
                      L0341
                      L030D
                        L030F
                          L02A1
                    L030D
                      L030F
                        L02A1
                    L02B8
                      L02A1
                    L031A
                    L02A1
              L04FA
                L04FD
                  L00D6
                    L00E3
                      L01A8
                        L030F
                          L02A1
                        L032F
                          L033E
                            L0341
                        L0314
                        L02BF
                          L02C6
                        L02C4
                          L02C6
                        L02CA
                        L02E1
                          L02CA
                          L02A1
                          L032F
                            L033E
                              L0341
                        L02FB
                          L0341
                          L030D
                            L030F
                              L02A1
                        L030D
                          L030F
                            L02A1
                        L02B8
                          L02A1
                        L031A
                        L02A1
                  L03B8 - Recursive
            L03B2
              L00D6
                L00E3
                  L01A8
                    L030F
                      L02A1
                    L032F
                      L033E
                        L0341
                    L0314
                    L02BF
                      L02C6
                    L02C4
                      L02C6
                    L02CA
                    L02E1
                      L02CA
                      L02A1
                      L032F
                        L033E
                          L0341
                    L02FB
                      L0341
                      L030D
                        L030F
                          L02A1
                    L030D
                      L030F
                        L02A1
                    L02B8
                      L02A1
                    L031A
                    L02A1
              L03B8 - Recursive
            L0770
            L078B
            L0782
            L07A5
            L0796
            L00E3
              L01A8
                L030F
                  L02A1
                L032F
                  L033E
                    L0341
                L0314
                L02BF
                  L02C6
                L02C4
                  L02C6
                L02CA
                L02E1
                  L02CA
                  L02A1
                  L032F
                    L033E
                      L0341
                L02FB
                  L0341
                  L030D
                    L030F
                      L02A1
                L030D
                  L030F
                    L02A1
                L02B8
                  L02A1
                L031A
                L02A1
            L046E
              L00D6
                L00E3
                  L01A8
                    L030F
                      L02A1
                    L032F
                      L033E
                        L0341
                    L0314
                    L02BF
                      L02C6
                    L02C4
                      L02C6
                    L02CA
                    L02E1
                      L02CA
                      L02A1
                      L032F
                        L033E
                          L0341
                    L02FB
                      L0341
                      L030D
                        L030F
                          L02A1
                    L030D
                      L030F
                        L02A1
                    L02B8
                      L02A1
                    L031A
                    L02A1
              L00E3
                L01A8
                  L030F
                    L02A1
                  L032F
                    L033E
                      L0341
                  L0314
                  L02BF
                    L02C6
                  L02C4
                    L02C6
                  L02CA
                  L02E1
                    L02CA
                    L02A1
                    L032F
                      L033E
                        L0341
                  L02FB
                    L0341
                    L030D
                      L030F
                        L02A1
                  L030D
                    L030F
                      L02A1
                  L02B8
                    L02A1
                  L031A
                  L02A1
        L04FD
          L00D6
            L00E3
              L01A8
                L030F
                  L02A1
                L032F
                  L033E
                    L0341
                L0314
                L02BF
                  L02C6
                L02C4
                  L02C6
                L02CA
                L02E1
                  L02CA
                  L02A1
                  L032F
                    L033E
                      L0341
                L02FB
                  L0341
                  L030D
                    L030F
                      L02A1
                L030D
                  L030F
                    L02A1
                L02B8
                  L02A1
                L031A
                L02A1
          L03B8
            L00D6
              L00E3
                L01A8
                  L030F
                    L02A1
                  L032F
                    L033E
                      L0341
                  L0314
                  L02BF
                    L02C6
                  L02C4
                    L02C6
                  L02CA
                  L02E1
                    L02CA
                    L02A1
                    L032F
                      L033E
                        L0341
                  L02FB
                    L0341
                    L030D
                      L030F
                        L02A1
                  L030D
                    L030F
                      L02A1
                  L02B8
                    L02A1
                  L031A
                  L02A1
            L0762
            L058D - Recursive
            L04C0
              L0506
                L055C
                  L046E
                    L00D6
                      L00E3
                        L01A8
                          L030F
                            L02A1
                          L032F
                            L033E
                              L0341
                          L0314
                          L02BF
                            L02C6
                          L02C4
                            L02C6
                          L02CA
                          L02E1
                            L02CA
                            L02A1
                            L032F
                              L033E
                                L0341
                          L02FB
                            L0341
                            L030D
                              L030F
                                L02A1
                          L030D
                            L030F
                              L02A1
                          L02B8
                            L02A1
                          L031A
                          L02A1
                    L00E3
                      L01A8
                        L030F
                          L02A1
                        L032F
                          L033E
                            L0341
                        L0314
                        L02BF
                          L02C6
                        L02C4
                          L02C6
                        L02CA
                        L02E1
                          L02CA
                          L02A1
                          L032F
                            L033E
                              L0341
                        L02FB
                          L0341
                          L030D
                            L030F
                              L02A1
                        L030D
                          L030F
                            L02A1
                        L02B8
                          L02A1
                        L031A
                        L02A1
                  L0762
              8000h - External
              L04FD - Recursive
            L0488
              L0506
                L055C
                  L046E
                    L00D6
                      L00E3
                        L01A8
                          L030F
                            L02A1
                          L032F
                            L033E
                              L0341
                          L0314
                          L02BF
                            L02C6
                          L02C4
                            L02C6
                          L02CA
                          L02E1
                            L02CA
                            L02A1
                            L032F
                              L033E
                                L0341
                          L02FB
                            L0341
                            L030D
                              L030F
                                L02A1
                          L030D
                            L030F
                              L02A1
                          L02B8
                            L02A1
                          L031A
                          L02A1
                    L00E3
                      L01A8
                        L030F
                          L02A1
                        L032F
                          L033E
                            L0341
                        L0314
                        L02BF
                          L02C6
                        L02C4
                          L02C6
                        L02CA
                        L02E1
                          L02CA
                          L02A1
                          L032F
                            L033E
                              L0341
                        L02FB
                          L0341
                          L030D
                            L030F
                              L02A1
                        L030D
                          L030F
                            L02A1
                        L02B8
                          L02A1
                        L031A
                        L02A1
                  L0762
              L00D6
                L00E3
                  L01A8
                    L030F
                      L02A1
                    L032F
                      L033E
                        L0341
                    L0314
                    L02BF
                      L02C6
                    L02C4
                      L02C6
                    L02CA
                    L02E1
                      L02CA
                      L02A1
                      L032F
                        L033E
                          L0341
                    L02FB
                      L0341
                      L030D
                        L030F
                          L02A1
                    L030D
                      L030F
                        L02A1
                    L02B8
                      L02A1
                    L031A
                    L02A1
              L04FA
                L04FD - Recursive
            L03B2
              L00D6
                L00E3
                  L01A8
                    L030F
                      L02A1
                    L032F
                      L033E
                        L0341
                    L0314
                    L02BF
                      L02C6
                    L02C4
                      L02C6
                    L02CA
                    L02E1
                      L02CA
                      L02A1
                      L032F
                        L033E
                          L0341
                    L02FB
                      L0341
                      L030D
                        L030F
                          L02A1
                    L030D
                      L030F
                        L02A1
                    L02B8
                      L02A1
                    L031A
                    L02A1
              L03B8 - Recursive
            L0770
            L078B
            L0782
            L07A5
            L0796
            L00E3
              L01A8
                L030F
                  L02A1
                L032F
                  L033E
                    L0341
                L0314
                L02BF
                  L02C6
                L02C4
                  L02C6
                L02CA
                L02E1
                  L02CA
                  L02A1
                  L032F
                    L033E
                      L0341
                L02FB
                  L0341
                  L030D
                    L030F
                      L02A1
                L030D
                  L030F
                    L02A1
                L02B8
                  L02A1
                L031A
                L02A1
            L046E
              L00D6
                L00E3
                  L01A8
                    L030F
                      L02A1
                    L032F
                      L033E
                        L0341
                    L0314
                    L02BF
                      L02C6
                    L02C4
                      L02C6
                    L02CA
                    L02E1
                      L02CA
                      L02A1
                      L032F
                        L033E
                          L0341
                    L02FB
                      L0341
                      L030D
                        L030F
                          L02A1
                    L030D
                      L030F
                        L02A1
                    L02B8
                      L02A1
                    L031A
                    L02A1
              L00E3
                L01A8
                  L030F
                    L02A1
                  L032F
                    L033E
                      L0341
                  L0314
                  L02BF
                    L02C6
                  L02C4
                    L02C6
                  L02CA
                  L02E1
                    L02CA
                    L02A1
                    L032F
                      L033E
                        L0341
                  L02FB
                    L0341
                    L030D
                      L030F
                        L02A1
                  L030D
                    L030F
                      L02A1
                  L02B8
                    L02A1
                  L031A
                  L02A1
      L04C0
        L0506
          L055C
            L046E
              L00D6
                L00E3
                  L01A8
                    L030F
                      L02A1
                    L032F
                      L033E
                        L0341
                    L0314
                    L02BF
                      L02C6
                    L02C4
                      L02C6
                    L02CA
                    L02E1
                      L02CA
                      L02A1
                      L032F
                        L033E
                          L0341
                    L02FB
                      L0341
                      L030D
                        L030F
                          L02A1
                    L030D
                      L030F
                        L02A1
                    L02B8
                      L02A1
                    L031A
                    L02A1
              L00E3
                L01A8
                  L030F
                    L02A1
                  L032F
                    L033E
                      L0341
                  L0314
                  L02BF
                    L02C6
                  L02C4
                    L02C6
                  L02CA
                  L02E1
                    L02CA
                    L02A1
                    L032F
                      L033E
                        L0341
                  L02FB
                    L0341
                    L030D
                      L030F
                        L02A1
                  L030D
                    L030F
                      L02A1
                  L02B8
                    L02A1
                  L031A
                  L02A1
            L0762
        8000h - External
        L04FD
          L00D6
            L00E3
              L01A8
                L030F
                  L02A1
                L032F
                  L033E
                    L0341
                L0314
                L02BF
                  L02C6
                L02C4
                  L02C6
                L02CA
                L02E1
                  L02CA
                  L02A1
                  L032F
                    L033E
                      L0341
                L02FB
                  L0341
                  L030D
                    L030F
                      L02A1
                L030D
                  L030F
                    L02A1
                L02B8
                  L02A1
                L031A
                L02A1
          L03B8
            L00D6
              L00E3
                L01A8
                  L030F
                    L02A1
                  L032F
                    L033E
                      L0341
                  L0314
                  L02BF
                    L02C6
                  L02C4
                    L02C6
                  L02CA
                  L02E1
                    L02CA
                    L02A1
                    L032F
                      L033E
                        L0341
                  L02FB
                    L0341
                    L030D
                      L030F
                        L02A1
                  L030D
                    L030F
                      L02A1
                  L02B8
                    L02A1
                  L031A
                  L02A1
            L0762
            L058D
              L00F9
                L0104
              L0638
              L0118
                L0101
                  L0103
                    L0104
                L0103
                  L0104
                L0104
              L0647
                L00C0
                  L00D6
                    L00E3
                      L01A8
                        L030F
                          L02A1
                        L032F
                          L033E
                            L0341
                        L0314
                        L02BF
                          L02C6
                        L02C4
                          L02C6
                        L02CA
                        L02E1
                          L02CA
                          L02A1
                          L032F
                            L033E
                              L0341
                        L02FB
                          L0341
                          L030D
                            L030F
                              L02A1
                        L030D
                          L030F
                            L02A1
                        L02B8
                          L02A1
                        L031A
                        L02A1
                L0762
              L0101
                L0103
                  L0104
              L0154
                L0101
                  L0103
                    L0104
                L0103
                  L0104
              L0651
                L00D6
                  L00E3
                    L01A8
                      L030F
                        L02A1
                      L032F
                        L033E
                          L0341
                      L0314
                      L02BF
                        L02C6
                      L02C4
                        L02C6
                      L02CA
                      L02E1
                        L02CA
                        L02A1
                        L032F
                          L033E
                            L0341
                      L02FB
                        L0341
                        L030D
                          L030F
                            L02A1
                      L030D
                        L030F
                          L02A1
                      L02B8
                        L02A1
                      L031A
                      L02A1
                L03B8 - Recursive
              L04FD - Recursive
            L04C0 - Recursive
            L0488
              L0506
                L055C
                  L046E
                    L00D6
                      L00E3
                        L01A8
                          L030F
                            L02A1
                          L032F
                            L033E
                              L0341
                          L0314
                          L02BF
                            L02C6
                          L02C4
                            L02C6
                          L02CA
                          L02E1
                            L02CA
                            L02A1
                            L032F
                              L033E
                                L0341
                          L02FB
                            L0341
                            L030D
                              L030F
                                L02A1
                          L030D
                            L030F
                              L02A1
                          L02B8
                            L02A1
                          L031A
                          L02A1
                    L00E3
                      L01A8
                        L030F
                          L02A1
                        L032F
                          L033E
                            L0341
                        L0314
                        L02BF
                          L02C6
                        L02C4
                          L02C6
                        L02CA
                        L02E1
                          L02CA
                          L02A1
                          L032F
                            L033E
                              L0341
                        L02FB
                          L0341
                          L030D
                            L030F
                              L02A1
                        L030D
                          L030F
                            L02A1
                        L02B8
                          L02A1
                        L031A
                        L02A1
                  L0762
              L00D6
                L00E3
                  L01A8
                    L030F
                      L02A1
                    L032F
                      L033E
                        L0341
                    L0314
                    L02BF
                      L02C6
                    L02C4
                      L02C6
                    L02CA
                    L02E1
                      L02CA
                      L02A1
                      L032F
                        L033E
                          L0341
                    L02FB
                      L0341
                      L030D
                        L030F
                          L02A1
                    L030D
                      L030F
                        L02A1
                    L02B8
                      L02A1
                    L031A
                    L02A1
              L04FA
                L04FD - Recursive
            L03B2
              L00D6
                L00E3
                  L01A8
                    L030F
                      L02A1
                    L032F
                      L033E
                        L0341
                    L0314
                    L02BF
                      L02C6
                    L02C4
                      L02C6
                    L02CA
                    L02E1
                      L02CA
                      L02A1
                      L032F
                        L033E
                          L0341
                    L02FB
                      L0341
                      L030D
                        L030F
                          L02A1
                    L030D
                      L030F
                        L02A1
                    L02B8
                      L02A1
                    L031A
                    L02A1
              L03B8 - Recursive
            L0770
            L078B
            L0782
            L07A5
            L0796
            L00E3
              L01A8
                L030F
                  L02A1
                L032F
                  L033E
                    L0341
                L0314
                L02BF
                  L02C6
                L02C4
                  L02C6
                L02CA
                L02E1
                  L02CA
                  L02A1
                  L032F
                    L033E
                      L0341
                L02FB
                  L0341
                  L030D
                    L030F
                      L02A1
                L030D
                  L030F
                    L02A1
                L02B8
                  L02A1
                L031A
                L02A1
            L046E
              L00D6
                L00E3
                  L01A8
                    L030F
                      L02A1
                    L032F
                      L033E
                        L0341
                    L0314
                    L02BF
                      L02C6
                    L02C4
                      L02C6
                    L02CA
                    L02E1
                      L02CA
                      L02A1
                      L032F
                        L033E
                          L0341
                    L02FB
                      L0341
                      L030D
                        L030F
                          L02A1
                    L030D
                      L030F
                        L02A1
                    L02B8
                      L02A1
                    L031A
                    L02A1
              L00E3
                L01A8
                  L030F
                    L02A1
                  L032F
                    L033E
                      L0341
                  L0314
                  L02BF
                    L02C6
                  L02C4
                    L02C6
                  L02CA
                  L02E1
                    L02CA
                    L02A1
                    L032F
                      L033E
                        L0341
                  L02FB
                    L0341
                    L030D
                      L030F
                        L02A1
                  L030D
                    L030F
                      L02A1
                  L02B8
                    L02A1
                  L031A
                  L02A1
      L0488
        L0506
          L055C
            L046E
              L00D6
                L00E3
                  L01A8
                    L030F
                      L02A1
                    L032F
                      L033E
                        L0341
                    L0314
                    L02BF
                      L02C6
                    L02C4
                      L02C6
                    L02CA
                    L02E1
                      L02CA
                      L02A1
                      L032F
                        L033E
                          L0341
                    L02FB
                      L0341
                      L030D
                        L030F
                          L02A1
                    L030D
                      L030F
                        L02A1
                    L02B8
                      L02A1
                    L031A
                    L02A1
              L00E3
                L01A8
                  L030F
                    L02A1
                  L032F
                    L033E
                      L0341
                  L0314
                  L02BF
                    L02C6
                  L02C4
                    L02C6
                  L02CA
                  L02E1
                    L02CA
                    L02A1
                    L032F
                      L033E
                        L0341
                  L02FB
                    L0341
                    L030D
                      L030F
                        L02A1
                  L030D
                    L030F
                      L02A1
                  L02B8
                    L02A1
                  L031A
                  L02A1
            L0762
        L00D6
          L00E3
            L01A8
              L030F
                L02A1
              L032F
                L033E
                  L0341
              L0314
              L02BF
                L02C6
              L02C4
                L02C6
              L02CA
              L02E1
                L02CA
                L02A1
                L032F
                  L033E
                    L0341
              L02FB
                L0341
                L030D
                  L030F
                    L02A1
              L030D
                L030F
                  L02A1
              L02B8
                L02A1
              L031A
              L02A1
        L04FA
          L04FD
            L00D6
              L00E3
                L01A8
                  L030F
                    L02A1
                  L032F
                    L033E
                      L0341
                  L0314
                  L02BF
                    L02C6
                  L02C4
                    L02C6
                  L02CA
                  L02E1
                    L02CA
                    L02A1
                    L032F
                      L033E
                        L0341
                  L02FB
                    L0341
                    L030D
                      L030F
                        L02A1
                  L030D
                    L030F
                      L02A1
                  L02B8
                    L02A1
                  L031A
                  L02A1
            L03B8
              L00D6
                L00E3
                  L01A8
                    L030F
                      L02A1
                    L032F
                      L033E
                        L0341
                    L0314
                    L02BF
                      L02C6
                    L02C4
                      L02C6
                    L02CA
                    L02E1
                      L02CA
                      L02A1
                      L032F
                        L033E
                          L0341
                    L02FB
                      L0341
                      L030D
                        L030F
                          L02A1
                    L030D
                      L030F
                        L02A1
                    L02B8
                      L02A1
                    L031A
                    L02A1
              L0762
              L058D
                L00F9
                  L0104
                L0638
                L0118
                  L0101
                    L0103
                      L0104
                  L0103
                    L0104
                  L0104
                L0647
                  L00C0
                    L00D6
                      L00E3
                        L01A8
                          L030F
                            L02A1
                          L032F
                            L033E
                              L0341
                          L0314
                          L02BF
                            L02C6
                          L02C4
                            L02C6
                          L02CA
                          L02E1
                            L02CA
                            L02A1
                            L032F
                              L033E
                                L0341
                          L02FB
                            L0341
                            L030D
                              L030F
                                L02A1
                          L030D
                            L030F
                              L02A1
                          L02B8
                            L02A1
                          L031A
                          L02A1
                  L0762
                L0101
                  L0103
                    L0104
                L0154
                  L0101
                    L0103
                      L0104
                  L0103
                    L0104
                L0651
                  L00D6
                    L00E3
                      L01A8
                        L030F
                          L02A1
                        L032F
                          L033E
                            L0341
                        L0314
                        L02BF
                          L02C6
                        L02C4
                          L02C6
                        L02CA
                        L02E1
                          L02CA
                          L02A1
                          L032F
                            L033E
                              L0341
                        L02FB
                          L0341
                          L030D
                            L030F
                              L02A1
                        L030D
                          L030F
                            L02A1
                        L02B8
                          L02A1
                        L031A
                        L02A1
                  L03B8 - Recursive
                L04FD - Recursive
              L04C0
                L0506
                  L055C
                    L046E
                      L00D6
                        L00E3
                          L01A8
                            L030F
                              L02A1
                            L032F
                              L033E
                                L0341
                            L0314
                            L02BF
                              L02C6
                            L02C4
                              L02C6
                            L02CA
                            L02E1
                              L02CA
                              L02A1
                              L032F
                                L033E
                                  L0341
                            L02FB
                              L0341
                              L030D
                                L030F
                                  L02A1
                            L030D
                              L030F
                                L02A1
                            L02B8
                              L02A1
                            L031A
                            L02A1
                      L00E3
                        L01A8
                          L030F
                            L02A1
                          L032F
                            L033E
                              L0341
                          L0314
                          L02BF
                            L02C6
                          L02C4
                            L02C6
                          L02CA
                          L02E1
                            L02CA
                            L02A1
                            L032F
                              L033E
                                L0341
                          L02FB
                            L0341
                            L030D
                              L030F
                                L02A1
                          L030D
                            L030F
                              L02A1
                          L02B8
                            L02A1
                          L031A
                          L02A1
                    L0762
                8000h - External
                L04FD - Recursive
              L0488 - Recursive
              L03B2
                L00D6
                  L00E3
                    L01A8
                      L030F
                        L02A1
                      L032F
                        L033E
                          L0341
                      L0314
                      L02BF
                        L02C6
                      L02C4
                        L02C6
                      L02CA
                      L02E1
                        L02CA
                        L02A1
                        L032F
                          L033E
                            L0341
                      L02FB
                        L0341
                        L030D
                          L030F
                            L02A1
                      L030D
                        L030F
                          L02A1
                      L02B8
                        L02A1
                      L031A
                      L02A1
                L03B8 - Recursive
              L0770
              L078B
              L0782
              L07A5
              L0796
              L00E3
                L01A8
                  L030F
                    L02A1
                  L032F
                    L033E
                      L0341
                  L0314
                  L02BF
                    L02C6
                  L02C4
                    L02C6
                  L02CA
                  L02E1
                    L02CA
                    L02A1
                    L032F
                      L033E
                        L0341
                  L02FB
                    L0341
                    L030D
                      L030F
                        L02A1
                  L030D
                    L030F
                      L02A1
                  L02B8
                    L02A1
                  L031A
                  L02A1
              L046E
                L00D6
                  L00E3
                    L01A8
                      L030F
                        L02A1
                      L032F
                        L033E
                          L0341
                      L0314
                      L02BF
                        L02C6
                      L02C4
                        L02C6
                      L02CA
                      L02E1
                        L02CA
                        L02A1
                        L032F
                          L033E
                            L0341
                      L02FB
                        L0341
                        L030D
                          L030F
                            L02A1
                      L030D
                        L030F
                          L02A1
                      L02B8
                        L02A1
                      L031A
                      L02A1
                L00E3
                  L01A8
                    L030F
                      L02A1
                    L032F
                      L033E
                        L0341
                    L0314
                    L02BF
                      L02C6
                    L02C4
                      L02C6
                    L02CA
                    L02E1
                      L02CA
                      L02A1
                      L032F
                        L033E
                          L0341
                    L02FB
                      L0341
                      L030D
                        L030F
                          L02A1
                    L030D
                      L030F
                        L02A1
                    L02B8
                      L02A1
                    L031A
                    L02A1
      L0770
      L078B
      L0782
      L07A5
      L0796
      L00E3
        L01A8
          L030F
            L02A1
          L032F
            L033E
              L0341
          L0314
          L02BF
            L02C6
          L02C4
            L02C6
          L02CA
          L02E1
            L02CA
            L02A1
            L032F
              L033E
                L0341
          L02FB
            L0341
            L030D
              L030F
                L02A1
          L030D
            L030F
              L02A1
          L02B8
            L02A1
          L031A
          L02A1
      L046E
        L00D6
          L00E3
            L01A8
              L030F
                L02A1
              L032F
                L033E
                  L0341
              L0314
              L02BF
                L02C6
              L02C4
                L02C6
              L02CA
              L02E1
                L02CA
                L02A1
                L032F
                  L033E
                    L0341
              L02FB
                L0341
                L030D
                  L030F
                    L02A1
              L030D
                L030F
                  L02A1
              L02B8
                L02A1
              L031A
              L02A1
        L00E3
          L01A8
            L030F
              L02A1
            L032F
              L033E
                L0341
            L0314
            L02BF
              L02C6
            L02C4
              L02C6
            L02CA
            L02E1
              L02CA
              L02A1
              L032F
                L033E
                  L0341
            L02FB
              L0341
              L030D
                L030F
                  L02A1
            L030D
              L030F
                L02A1
            L02B8
              L02A1
            L031A
            L02A1
    L00F9
      L0104
    L0154
      L0101
        L0103
          L0104
      L0103
        L0104
    2000h - External
    L00C0
      L00D6
        L00E3
          L01A8
            L030F
              L02A1
            L032F
              L033E
                L0341
            L0314
            L02BF
              L02C6
            L02C4
              L02C6
            L02CA
            L02E1
              L02CA
              L02A1
              L032F
                L033E
                  L0341
            L02FB
              L0341
              L030D
                L030F
                  L02A1
            L030D
              L030F
                L02A1
            L02B8
              L02A1
            L031A
            L02A1
L0003 - Entry Point
  L00E3
    L01A8
      L030F
        L02A1
      L032F
        L033E
          L0341
      L0314
      L02BF
        L02C6
      L02C4
        L02C6
      L02CA
      L02E1
        L02CA
        L02A1
        L032F
          L033E
            L0341
      L02FB
        L0341
        L030D
          L030F
            L02A1
      L030D
        L030F
          L02A1
      L02B8
        L02A1
      L031A
      L02A1
L0006 - Entry Point
  L0154
    L0101
      L0103
        L0104
    L0103
      L0104
L0009 - Entry Point
  L0118
    L0101
      L0103
        L0104
    L0103
      L0104
    L0104
L000C - Entry Point
  L0101
    L0103
      L0104
L000F - Entry Point
  L0103
    L0104
L0012 - Entry Point
  L019F
    L01A2
      L00D6
        L00E3
          L01A8
            L030F
              L02A1
            L032F
              L033E
                L0341
            L0314
            L02BF
              L02C6
            L02C4
              L02C6
            L02CA
            L02E1
              L02CA
              L02A1
              L032F
                L033E
                  L0341
            L02FB
              L0341
              L030D
                L030F
                  L02A1
            L030D
              L030F
                L02A1
            L02B8
              L02A1
            L031A
            L02A1
      L00BA
        L00C0
          L00D6
            L00E3
              L01A8
                L030F
                  L02A1
                L032F
                  L033E
                    L0341
                L0314
                L02BF
                  L02C6
                L02C4
                  L02C6
                L02CA
                L02E1
                  L02CA
                  L02A1
                  L032F
                    L033E
                      L0341
                L02FB
                  L0341
                  L030D
                    L030F
                      L02A1
                L030D
                  L030F
                    L02A1
                L02B8
                  L02A1
                L031A
                L02A1
L0015 - Entry Point
  L00F9
    L0104
L0018 - Entry Point
  L00C0
    L00D6
      L00E3
        L01A8
          L030F
            L02A1
          L032F
            L033E
              L0341
          L0314
          L02BF
            L02C6
          L02C4
            L02C6
          L02CA
          L02E1
            L02CA
            L02A1
            L032F
              L033E
                L0341
          L02FB
            L0341
            L030D
              L030F
                L02A1
          L030D
            L030F
              L02A1
          L02B8
            L02A1
          L031A
          L02A1
L001B - Entry Point
  L00D6
    L00E3
      L01A8
        L030F
          L02A1
        L032F
          L033E
            L0341
        L0314
        L02BF
          L02C6
        L02C4
          L02C6
        L02CA
        L02E1
          L02CA
          L02A1
          L032F
            L033E
              L0341
        L02FB
          L0341
          L030D
            L030F
              L02A1
        L030D
          L030F
            L02A1
        L02B8
          L02A1
        L031A
        L02A1
