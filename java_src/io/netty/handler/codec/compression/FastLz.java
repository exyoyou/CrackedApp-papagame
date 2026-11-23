package io.netty.handler.codec.compression;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes.dex */
final class FastLz {
    static final byte BLOCK_TYPE_COMPRESSED = 1;
    static final byte BLOCK_TYPE_NON_COMPRESSED = 0;
    static final byte BLOCK_WITHOUT_CHECKSUM = 0;
    static final byte BLOCK_WITH_CHECKSUM = 16;
    static final int CHECKSUM_OFFSET = 4;
    private static final int HASH_LOG = 13;
    private static final int HASH_MASK = 8191;
    private static final int HASH_SIZE = 8192;
    static final int LEVEL_1 = 1;
    static final int LEVEL_2 = 2;
    static final int LEVEL_AUTO = 0;
    static final int MAGIC_NUMBER = 4607066;
    static final int MAX_CHUNK_LENGTH = 65535;
    private static final int MAX_COPY = 32;
    private static final int MAX_DISTANCE = 8191;
    private static final int MAX_FARDISTANCE = 73725;
    private static final int MAX_LEN = 264;
    static final int MIN_LENGTH_TO_COMPRESSION = 32;
    private static final int MIN_RECOMENDED_LENGTH_FOR_LEVEL_2 = 65536;
    static final int OPTIONS_OFFSET = 3;

    private FastLz() {
    }

    static int calculateOutputBufferLength(int i10) {
        return Math.max((int) (((double) i10) * 1.06d), 66);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:103:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:105:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:108:0x01f7 A[LOOP:7: B:104:0x01e5->B:108:0x01f7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:110:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:111:0x0207  */
    /* JADX WARN: Code duplicated, block: B:114:0x0217  */
    /* JADX WARN: Code duplicated, block: B:116:0x021e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:117:0x0220  */
    /* JADX WARN: Code duplicated, block: B:118:0x023a  */
    /* JADX WARN: Code duplicated, block: B:120:0x024a A[LOOP:4: B:119:0x0248->B:120:0x024a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:122:0x0267 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:123:0x0269  */
    /* JADX WARN: Code duplicated, block: B:124:0x0293  */
    /* JADX WARN: Code duplicated, block: B:126:0x029f A[LOOP:5: B:125:0x029d->B:126:0x029f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:128:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:130:0x02cf A[ADDED_TO_REGION, LOOP:6: B:130:0x02cf->B:131:0x02d1, LOOP_START, PHI: r3 r9 r11 r14 r15
      0x02cf: PHI (r3v27 int) = (r3v17 int), (r3v28 int) binds: [B:129:0x02cd, B:131:0x02d1] A[DONT_GENERATE, DONT_INLINE]
      0x02cf: PHI (r9v22 long) = (r9v13 long), (r9v25 long) binds: [B:129:0x02cd, B:131:0x02d1] A[DONT_GENERATE, DONT_INLINE]
      0x02cf: PHI (r11v13 int) = (r11v11 int), (r11v17 int) binds: [B:129:0x02cd, B:131:0x02d1] A[DONT_GENERATE, DONT_INLINE]
      0x02cf: PHI (r14v5 char) = (r14v2 char), (r14v10 char) binds: [B:129:0x02cd, B:131:0x02d1] A[DONT_GENERATE, DONT_INLINE]
      0x02cf: PHI (r15v2 int) = (r15v1 int), (r15v4 int) binds: [B:129:0x02cd, B:131:0x02d1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:131:0x02d1 A[LOOP:6: B:130:0x02cf->B:131:0x02d1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:133:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:134:0x0314  */
    /* JADX WARN: Code duplicated, block: B:153:0x013e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:154:0x012d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:164:0x01fa A[EDGE_INSN: B:164:0x01fa->B:109:0x01fa BREAK  A[LOOP:3: B:74:0x0157->B:78:0x0163], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:169:0x0175 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x0087  */
    /* JADX WARN: Code duplicated, block: B:64:0x011d  */
    /* JADX WARN: Code duplicated, block: B:73:0x0151  */
    /* JADX WARN: Code duplicated, block: B:75:0x0159  */
    /* JADX WARN: Code duplicated, block: B:78:0x0163 A[LOOP:3: B:74:0x0157->B:78:0x0163, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:79:0x0167  */
    /* JADX WARN: Code duplicated, block: B:81:0x0175 A[PHI: r7
      0x0175: PHI (r7v16 int) = (r7v3 int), (r7v6 int), (r7v9 int), (r7v12 int), (r7v15 int) binds: [B:80:0x0173, B:86:0x0195, B:92:0x01b3, B:98:0x01d1, B:169:0x0175] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:82:0x0178  */
    /* JADX WARN: Code duplicated, block: B:84:0x0186 A[PHI: r3
      0x0186: PHI (r3v16 int) = (r3v5 int), (r3v8 int), (r3v11 int), (r3v14 int) binds: [B:83:0x0184, B:89:0x01a4, B:95:0x01c2, B:101:0x01e0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:85:0x0189  */
    /* JADX WARN: Code duplicated, block: B:88:0x0198  */
    /* JADX WARN: Code duplicated, block: B:91:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:94:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:97:0x01c5  */
    static int compress(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        int i14;
        long j10;
        int i15;
        boolean z10;
        int i16;
        int i17;
        long j11;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        long j12;
        char c10;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        int i36;
        byte b10;
        int i37;
        int i38;
        int i39;
        int i40 = 2;
        int i41 = i13 == 0 ? i11 < 65536 ? 1 : 2 : i13;
        int i42 = i11 + 0;
        int i43 = i42 - 2;
        int i44 = i42 - 12;
        int[] iArr = new int[8192];
        if (i11 < 4) {
            if (i11 == 0) {
                return 0;
            }
            bArr2[i12 + 0] = (byte) (i11 - 1);
            int i45 = i43 + 1;
            int i46 = 1;
            for (int i47 = 0; i47 <= i45; i47++) {
                bArr2[i12 + i46] = bArr[i10 + i47];
                i46++;
            }
            return i11 + 1;
        }
        for (int i48 = 0; i48 < 8192; i48++) {
            iArr[i48] = 0;
        }
        bArr2[i12 + 0] = 31;
        bArr2[i12 + 1] = bArr[i10 + 0];
        bArr2[i12 + 2] = bArr[i10 + 1];
        int i49 = 2;
        int i50 = 3;
        int i51 = 2;
        while (i49 < i44) {
            if (i41 == i40) {
                int i52 = i10 + i49;
                int i53 = i52 - 1;
                if (bArr[i52] == bArr[i53] && readU16(bArr, i53) == readU16(bArr, i52 + 1)) {
                    i14 = i49 + 3;
                    i15 = i49 + 2;
                    z10 = true;
                    j10 = 1;
                } else {
                    i14 = i49;
                    j10 = 0;
                    i15 = 0;
                    z10 = false;
                }
            } else {
                i14 = i49;
                j10 = 0;
                i15 = 0;
                z10 = false;
            }
            if (!z10) {
                int i54 = i10 + i14;
                int iHashFunction = hashFunction(bArr, i54);
                int i55 = iArr[iHashFunction];
                long j13 = i49 - i55;
                iArr[iHashFunction] = i49;
                if (j13 == 0 || (i41 != 1 ? j13 >= 73725 : j13 >= 8191)) {
                    i38 = i50 + 1;
                    i39 = i49 + 1;
                    bArr2[i12 + i50] = bArr[i10 + i49];
                    i51++;
                    if (i51 == 32) {
                        i50 = i38 + 1;
                        bArr2[i12 + i38] = 31;
                        i49 = i39;
                        i40 = 2;
                        i51 = 0;
                    } else {
                        i50 = i38;
                        i49 = i39;
                        i40 = 2;
                    }
                } else {
                    int i56 = i55 + 1;
                    int i57 = i14 + 1;
                    if (bArr[i10 + i55] == bArr[i54]) {
                        int i58 = i56 + 1;
                        int i59 = i57 + 1;
                        if (bArr[i10 + i56] == bArr[i10 + i57]) {
                            int i60 = i58 + 1;
                            byte b11 = bArr[i10 + i58];
                            int i61 = i59 + 1;
                            if (b11 != bArr[i10 + i59]) {
                                i38 = i50 + 1;
                                i39 = i49 + 1;
                                bArr2[i12 + i50] = bArr[i10 + i49];
                                i51++;
                                if (i51 == 32) {
                                    i50 = i38 + 1;
                                    bArr2[i12 + i38] = 31;
                                    i49 = i39;
                                    i40 = 2;
                                    i51 = 0;
                                } else {
                                    i50 = i38;
                                    i49 = i39;
                                    i40 = 2;
                                }
                            } else {
                                if (i41 != 2 || j13 < 8191) {
                                    i15 = i60;
                                    j10 = j13;
                                } else {
                                    int i62 = i61 + 1;
                                    int i63 = i60 + 1;
                                    if (bArr[i10 + i61] == bArr[i10 + i60]) {
                                        i15 = i63 + 1;
                                        if (bArr[i10 + i62] == bArr[i10 + i63]) {
                                            i16 = 5;
                                            j10 = j13;
                                        }
                                    }
                                    i38 = i50 + 1;
                                    i39 = i49 + 1;
                                    bArr2[i12 + i50] = bArr[i10 + i49];
                                    i51++;
                                    if (i51 == 32) {
                                        i50 = i38 + 1;
                                        bArr2[i12 + i38] = 31;
                                        i49 = i39;
                                        i40 = 2;
                                        i51 = 0;
                                    } else {
                                        i50 = i38;
                                        i49 = i39;
                                        i40 = 2;
                                    }
                                }
                                i17 = i16 + i49;
                                j11 = j10 - 1;
                                if (j11 == 0) {
                                    b10 = bArr[(i10 + i17) - 1];
                                    while (i17 < i43) {
                                        i37 = i15 + 1;
                                        if (bArr[i10 + i15] != b10) {
                                            break;
                                        }
                                        i17++;
                                        i15 = i37;
                                    }
                                } else {
                                    i18 = i15 + 1;
                                    i19 = i17 + 1;
                                    if (bArr[i10 + i15] != bArr[i10 + i17]) {
                                        i17 = i19;
                                        break;
                                    }
                                    i20 = i18 + 1;
                                    i21 = i19 + 1;
                                    if (bArr[i10 + i18] != bArr[i10 + i19]) {
                                        i17 = i21;
                                    } else {
                                        i22 = i20 + 1;
                                        i19 = i21 + 1;
                                        if (bArr[i10 + i20] != bArr[i10 + i21]) {
                                            i17 = i19;
                                            break;
                                        }
                                        i23 = i22 + 1;
                                        i21 = i19 + 1;
                                        if (bArr[i10 + i22] != bArr[i10 + i19]) {
                                            i17 = i21;
                                        } else {
                                            i24 = i23 + 1;
                                            i19 = i21 + 1;
                                            if (bArr[i10 + i23] != bArr[i10 + i21]) {
                                                i17 = i19;
                                                break;
                                            }
                                            i25 = i24 + 1;
                                            i21 = i19 + 1;
                                            if (bArr[i10 + i24] != bArr[i10 + i19]) {
                                                i17 = i21;
                                            } else {
                                                i26 = i25 + 1;
                                                i19 = i21 + 1;
                                                if (bArr[i10 + i25] != bArr[i10 + i21]) {
                                                    i17 = i19;
                                                    break;
                                                }
                                                i27 = i26 + 1;
                                                i21 = i19 + 1;
                                                if (bArr[i10 + i26] != bArr[i10 + i19]) {
                                                    i17 = i21;
                                                } else {
                                                    i28 = i27;
                                                    i17 = i21;
                                                    while (i17 < i43) {
                                                        i29 = i28 + 1;
                                                        i19 = i17 + 1;
                                                        if (bArr[i10 + i28] != bArr[i10 + i17]) {
                                                            i17 = i19;
                                                            break;
                                                        }
                                                        i28 = i29;
                                                        i17 = i19;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                if (i51 != 0) {
                                    bArr2[((i12 + i50) - i51) - 1] = (byte) (i51 - 1);
                                } else {
                                    i50--;
                                }
                                int i64 = i17 - 3;
                                i30 = i64 - i49;
                                j12 = 224;
                                c10 = '\b';
                                if (i41 == 2) {
                                    if (i30 > 262) {
                                        for (i31 = MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC; i30 > i31; i31 = MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC) {
                                            int i65 = i50 + 1;
                                            bArr2[i12 + i50] = (byte) ((j11 >>> c10) + j12);
                                            int i66 = i65 + 1;
                                            bArr2[i12 + i65] = -3;
                                            bArr2[i12 + i66] = (byte) (j11 & 255);
                                            i30 -= 262;
                                            i50 = i66 + 1;
                                            j12 = 224;
                                            c10 = '\b';
                                        }
                                    }
                                    if (i30 < 7) {
                                        int i67 = i50 + 1;
                                        bArr2[i12 + i50] = (byte) (((long) (i30 << 5)) + (j11 >>> 8));
                                        i32 = i67 + 1;
                                        bArr2[i12 + i67] = (byte) (j11 & 255);
                                    } else {
                                        int i68 = i50 + 1;
                                        bArr2[i12 + i50] = (byte) ((j11 >>> 8) + 224);
                                        int i69 = i68 + 1;
                                        bArr2[i12 + i68] = (byte) (i30 - 7);
                                        i32 = i69 + 1;
                                        bArr2[i12 + i69] = (byte) (j11 & 255);
                                    }
                                } else if (j11 < 8191) {
                                    if (i30 < 7) {
                                        int i70 = i50 + 1;
                                        bArr2[i12 + i50] = (byte) (((long) (i30 << 5)) + (j11 >>> 8));
                                        i32 = i70 + 1;
                                        bArr2[i12 + i70] = (byte) (j11 & 255);
                                    } else {
                                        i35 = i50 + 1;
                                        bArr2[i12 + i50] = (byte) ((j11 >>> 8) + 224);
                                        i36 = i30 - 7;
                                        while (i36 >= 255) {
                                            bArr2[i12 + i35] = -1;
                                            i36 -= 255;
                                            i35++;
                                        }
                                        int i71 = i35 + 1;
                                        bArr2[i12 + i35] = (byte) i36;
                                        i32 = i71 + 1;
                                        bArr2[i12 + i71] = (byte) (j11 & 255);
                                    }
                                } else if (i30 < 7) {
                                    long j14 = j11 - 8191;
                                    int i72 = i50 + 1;
                                    bArr2[i12 + i50] = (byte) ((i30 << 5) + 31);
                                    int i73 = i72 + 1;
                                    bArr2[i12 + i72] = -1;
                                    int i74 = i73 + 1;
                                    bArr2[i12 + i73] = (byte) (j14 >>> 8);
                                    i32 = i74 + 1;
                                    bArr2[i12 + i74] = (byte) (j14 & 255);
                                } else {
                                    long j15 = j11 - 8191;
                                    i33 = i50 + 1;
                                    bArr2[i12 + i50] = -1;
                                    i34 = i30 - 7;
                                    while (i34 >= 255) {
                                        bArr2[i12 + i33] = -1;
                                        i34 -= 255;
                                        i33++;
                                    }
                                    int i75 = i33 + 1;
                                    bArr2[i12 + i33] = (byte) i34;
                                    int i76 = i75 + 1;
                                    bArr2[i12 + i75] = -1;
                                    int i77 = i76 + 1;
                                    bArr2[i12 + i76] = (byte) (j15 >>> 8);
                                    i32 = i77 + 1;
                                    bArr2[i12 + i77] = (byte) (j15 & 255);
                                }
                                int i78 = i64 + 1;
                                iArr[hashFunction(bArr, i10 + i64)] = i64;
                                i49 = i78 + 1;
                                iArr[hashFunction(bArr, i10 + i78)] = i78;
                                i50 = i32 + 1;
                                bArr2[i12 + i32] = 31;
                                i40 = 2;
                                i51 = 0;
                            }
                        } else {
                            i38 = i50 + 1;
                            i39 = i49 + 1;
                            bArr2[i12 + i50] = bArr[i10 + i49];
                            i51++;
                            if (i51 == 32) {
                                i50 = i38 + 1;
                                bArr2[i12 + i38] = 31;
                                i49 = i39;
                                i40 = 2;
                                i51 = 0;
                            } else {
                                i50 = i38;
                                i49 = i39;
                                i40 = 2;
                            }
                        }
                    } else {
                        i38 = i50 + 1;
                        i39 = i49 + 1;
                        bArr2[i12 + i50] = bArr[i10 + i49];
                        i51++;
                        if (i51 == 32) {
                            i50 = i38 + 1;
                            bArr2[i12 + i38] = 31;
                            i49 = i39;
                            i40 = 2;
                            i51 = 0;
                        } else {
                            i50 = i38;
                            i49 = i39;
                            i40 = 2;
                        }
                    }
                }
            }
            i16 = 3;
            i17 = i16 + i49;
            j11 = j10 - 1;
            if (j11 == 0) {
                b10 = bArr[(i10 + i17) - 1];
                while (i17 < i43) {
                    i37 = i15 + 1;
                    if (bArr[i10 + i15] != b10) {
                        break;
                        break;
                    }
                    i17++;
                    i15 = i37;
                }
            } else {
                i18 = i15 + 1;
                i19 = i17 + 1;
                if (bArr[i10 + i15] != bArr[i10 + i17]) {
                    i17 = i19;
                    break;
                }
                i20 = i18 + 1;
                i21 = i19 + 1;
                if (bArr[i10 + i18] != bArr[i10 + i19]) {
                    i17 = i21;
                } else {
                    i22 = i20 + 1;
                    i19 = i21 + 1;
                    if (bArr[i10 + i20] != bArr[i10 + i21]) {
                        i17 = i19;
                        break;
                    }
                    i23 = i22 + 1;
                    i21 = i19 + 1;
                    if (bArr[i10 + i22] != bArr[i10 + i19]) {
                        i17 = i21;
                    } else {
                        i24 = i23 + 1;
                        i19 = i21 + 1;
                        if (bArr[i10 + i23] != bArr[i10 + i21]) {
                            i17 = i19;
                            break;
                        }
                        i25 = i24 + 1;
                        i21 = i19 + 1;
                        if (bArr[i10 + i24] != bArr[i10 + i19]) {
                            i17 = i21;
                        } else {
                            i26 = i25 + 1;
                            i19 = i21 + 1;
                            if (bArr[i10 + i25] != bArr[i10 + i21]) {
                                i17 = i19;
                                break;
                            }
                            i27 = i26 + 1;
                            i21 = i19 + 1;
                            if (bArr[i10 + i26] != bArr[i10 + i19]) {
                                i17 = i21;
                            } else {
                                i28 = i27;
                                i17 = i21;
                                while (i17 < i43) {
                                    i29 = i28 + 1;
                                    i19 = i17 + 1;
                                    if (bArr[i10 + i28] != bArr[i10 + i17]) {
                                        i17 = i19;
                                        break;
                                    }
                                    i28 = i29;
                                    i17 = i19;
                                }
                            }
                        }
                    }
                }
            }
            if (i51 != 0) {
                bArr2[((i12 + i50) - i51) - 1] = (byte) (i51 - 1);
            } else {
                i50--;
            }
            int i610 = i17 - 3;
            i30 = i610 - i49;
            j12 = 224;
            c10 = '\b';
            if (i41 == 2) {
                if (i30 > 262) {
                    while (i30 > i31) {
                        int i611 = i50 + 1;
                        bArr2[i12 + i50] = (byte) ((j11 >>> c10) + j12);
                        int i612 = i611 + 1;
                        bArr2[i12 + i611] = -3;
                        bArr2[i12 + i612] = (byte) (j11 & 255);
                        i30 -= 262;
                        i50 = i612 + 1;
                        j12 = 224;
                        c10 = '\b';
                    }
                }
                if (i30 < 7) {
                    int i613 = i50 + 1;
                    bArr2[i12 + i50] = (byte) (((long) (i30 << 5)) + (j11 >>> 8));
                    i32 = i613 + 1;
                    bArr2[i12 + i613] = (byte) (j11 & 255);
                } else {
                    int i614 = i50 + 1;
                    bArr2[i12 + i50] = (byte) ((j11 >>> 8) + 224);
                    int i615 = i614 + 1;
                    bArr2[i12 + i614] = (byte) (i30 - 7);
                    i32 = i615 + 1;
                    bArr2[i12 + i615] = (byte) (j11 & 255);
                }
            } else if (j11 < 8191) {
                if (i30 < 7) {
                    int i79 = i50 + 1;
                    bArr2[i12 + i50] = (byte) (((long) (i30 << 5)) + (j11 >>> 8));
                    i32 = i79 + 1;
                    bArr2[i12 + i79] = (byte) (j11 & 255);
                } else {
                    i35 = i50 + 1;
                    bArr2[i12 + i50] = (byte) ((j11 >>> 8) + 224);
                    i36 = i30 - 7;
                    while (i36 >= 255) {
                        bArr2[i12 + i35] = -1;
                        i36 -= 255;
                        i35++;
                    }
                    int i710 = i35 + 1;
                    bArr2[i12 + i35] = (byte) i36;
                    i32 = i710 + 1;
                    bArr2[i12 + i710] = (byte) (j11 & 255);
                }
            } else if (i30 < 7) {
                long j16 = j11 - 8191;
                int i711 = i50 + 1;
                bArr2[i12 + i50] = (byte) ((i30 << 5) + 31);
                int i712 = i711 + 1;
                bArr2[i12 + i711] = -1;
                int i713 = i712 + 1;
                bArr2[i12 + i712] = (byte) (j16 >>> 8);
                i32 = i713 + 1;
                bArr2[i12 + i713] = (byte) (j16 & 255);
            } else {
                long j17 = j11 - 8191;
                i33 = i50 + 1;
                bArr2[i12 + i50] = -1;
                i34 = i30 - 7;
                while (i34 >= 255) {
                    bArr2[i12 + i33] = -1;
                    i34 -= 255;
                    i33++;
                }
                int i714 = i33 + 1;
                bArr2[i12 + i33] = (byte) i34;
                int i715 = i714 + 1;
                bArr2[i12 + i714] = -1;
                int i716 = i715 + 1;
                bArr2[i12 + i715] = (byte) (j17 >>> 8);
                i32 = i716 + 1;
                bArr2[i12 + i716] = (byte) (j17 & 255);
            }
            int i717 = i610 + 1;
            iArr[hashFunction(bArr, i10 + i610)] = i610;
            i49 = i717 + 1;
            iArr[hashFunction(bArr, i10 + i717)] = i717;
            i50 = i32 + 1;
            bArr2[i12 + i32] = 31;
            i40 = 2;
            i51 = 0;
        }
        int i80 = i43 + 1;
        while (i49 <= i80) {
            int i81 = i50 + 1;
            i49++;
            bArr2[i12 + i50] = bArr[i10 + i49];
            i51++;
            if (i51 == 32) {
                i50 = i81 + 1;
                bArr2[i12 + i81] = 31;
                i51 = 0;
            } else {
                i50 = i81;
            }
        }
        if (i51 != 0) {
            bArr2[((i12 + i50) - i51) - 1] = (byte) (i51 - 1);
        } else {
            i50--;
        }
        if (i41 == 2) {
            bArr2[i12] = (byte) (bArr2[i12] | 32);
        }
        return i50;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0092  */
    /* JADX WARN: Code duplicated, block: B:26:0x009b  */
    /* JADX WARN: Code duplicated, block: B:39:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:40:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:45:0x0109 A[LOOP:1: B:43:0x0105->B:45:0x0109, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:47:0x0118  */
    /* JADX WARN: Code duplicated, block: B:50:0x0143 A[LOOP:2: B:48:0x013f->B:50:0x0143, LOOP_END] */
    static int decompress(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, int i13) {
        boolean z10;
        byte b10;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        byte b11;
        int i20;
        char c10 = 5;
        int i21 = (bArr[i10] >> 5) + 1;
        if (i21 != 1 && i21 != 2) {
            throw new DecompressionException(String.format("invalid level: %d (expected: %d or %d)", Integer.valueOf(i21), 1, 2));
        }
        long j10 = bArr[i10 + 0] & 31;
        int i22 = 0;
        int i23 = 1;
        boolean z11 = true;
        while (true) {
            long j11 = j10 >> c10;
            long j12 = (31 & j10) << 8;
            if (j10 >= 32) {
                long j13 = j11 - 1;
                long j14 = j10;
                long j15 = i22;
                int i24 = (int) (j15 - j12);
                if (j13 == 6) {
                    if (i21 == 1) {
                        i22 = i22;
                        j13 += (long) (bArr[i10 + i23] & 255);
                        i23++;
                        z10 = z11;
                        i14 = 1;
                        b10 = 255;
                    } else {
                        while (true) {
                            b10 = 255;
                            int i25 = bArr[i10 + i23] & 255;
                            z10 = z11;
                            j13 += (long) i25;
                            i23++;
                            if (i25 != 255) {
                                break;
                            }
                            z11 = z10;
                        }
                    }
                    if (i21 == i14) {
                        i15 = i23 + 1;
                        i17 = i24 - (bArr[i10 + i23] & b10);
                    } else {
                        i15 = i23 + 1;
                        i16 = bArr[i10 + i23] & b10;
                        i17 = i24 - i16;
                        if (i16 == b10 && j12 == 7936) {
                            int i26 = i15 + 1;
                            long j16 = (bArr[i10 + i15] & b10) << 8;
                            i15 = i26 + 1;
                            i17 = (int) ((j15 - (j16 + ((long) (bArr[i10 + i26] & b10)))) - 8191);
                        }
                    }
                    if (j15 + j13 + 3 <= i13 || i17 - 1 < 0) {
                        return 0;
                    }
                    if (i15 < i11) {
                        i18 = i15 + 1;
                        j10 = bArr[i10 + i15] & 255;
                        z11 = z10;
                    } else {
                        i18 = i15;
                        j10 = j14;
                        z11 = false;
                    }
                    if (i17 == i22) {
                        b11 = bArr2[(i12 + i17) - 1];
                        int i27 = i22 + 1;
                        bArr2[i12 + i22] = b11;
                        int i28 = i27 + 1;
                        bArr2[i12 + i27] = b11;
                        i20 = i28 + 1;
                        bArr2[i12 + i28] = b11;
                        while (j13 != 0) {
                            bArr2[i12 + i20] = b11;
                            j13--;
                            i20++;
                        }
                        i22 = i20;
                        i23 = i18;
                    } else {
                        int i29 = i17 - 1;
                        int i30 = i22 + 1;
                        int i31 = i29 + 1;
                        bArr2[i12 + i22] = bArr2[i12 + i29];
                        int i32 = i30 + 1;
                        int i33 = i12 + i30;
                        int i34 = i31 + 1;
                        bArr2[i33] = bArr2[i12 + i31];
                        i22 = i32 + 1;
                        i19 = i34 + 1;
                        bArr2[i12 + i32] = bArr2[i12 + i34];
                        while (j13 != 0) {
                            bArr2[i12 + i22] = bArr2[i12 + i19];
                            j13--;
                            i22++;
                            i19++;
                        }
                        i23 = i18;
                    }
                } else {
                    z10 = z11;
                    b10 = 255;
                }
                i14 = 1;
                if (i21 == i14) {
                    i15 = i23 + 1;
                    i17 = i24 - (bArr[i10 + i23] & b10);
                } else {
                    i15 = i23 + 1;
                    i16 = bArr[i10 + i23] & b10;
                    i17 = i24 - i16;
                    if (i16 == b10) {
                        int i210 = i15 + 1;
                        long j17 = (bArr[i10 + i15] & b10) << 8;
                        i15 = i210 + 1;
                        i17 = (int) ((j15 - (j17 + ((long) (bArr[i10 + i210] & b10)))) - 8191);
                    }
                }
                if (j15 + j13 + 3 <= i13) {
                    return 0;
                }
                if (i15 < i11) {
                    i18 = i15 + 1;
                    j10 = bArr[i10 + i15] & 255;
                    z11 = z10;
                } else {
                    i18 = i15;
                    j10 = j14;
                    z11 = false;
                }
                if (i17 == i22) {
                    b11 = bArr2[(i12 + i17) - 1];
                    int i211 = i22 + 1;
                    bArr2[i12 + i22] = b11;
                    int i212 = i211 + 1;
                    bArr2[i12 + i211] = b11;
                    i20 = i212 + 1;
                    bArr2[i12 + i212] = b11;
                    while (j13 != 0) {
                        bArr2[i12 + i20] = b11;
                        j13--;
                        i20++;
                    }
                    i22 = i20;
                    i23 = i18;
                } else {
                    int i213 = i17 - 1;
                    int i35 = i22 + 1;
                    int i36 = i213 + 1;
                    bArr2[i12 + i22] = bArr2[i12 + i213];
                    int i37 = i35 + 1;
                    int i38 = i12 + i35;
                    int i39 = i36 + 1;
                    bArr2[i38] = bArr2[i12 + i36];
                    i22 = i37 + 1;
                    i19 = i39 + 1;
                    bArr2[i12 + i37] = bArr2[i12 + i39];
                    while (j13 != 0) {
                        bArr2[i12 + i22] = bArr2[i12 + i19];
                        j13--;
                        i22++;
                        i19++;
                    }
                    i23 = i18;
                }
            } else {
                long j18 = j10 + 1;
                if (((long) i22) + j18 > i13 || ((long) i23) + j18 > i11) {
                    return 0;
                }
                int i40 = i22 + 1;
                int i41 = i23 + 1;
                bArr2[i12 + i22] = bArr[i10 + i23];
                j10 = j18 - 1;
                while (j10 != 0) {
                    bArr2[i12 + i40] = bArr[i10 + i41];
                    j10--;
                    i40++;
                    i41++;
                }
                boolean z12 = i41 < i11;
                if (z12) {
                    long j19 = bArr[i10 + i41] & 255;
                    boolean z13 = z12;
                    i22 = i40;
                    i23 = i41 + 1;
                    z11 = z13;
                    j10 = j19;
                } else {
                    i23 = i41;
                    z11 = z12;
                    i22 = i40;
                }
            }
            if (!z11) {
                return i22;
            }
            c10 = 5;
        }
    }

    private static int hashFunction(byte[] bArr, int i10) {
        int u16 = readU16(bArr, i10);
        return ((readU16(bArr, i10 + 1) ^ (u16 >> 3)) ^ u16) & 8191;
    }

    private static int readU16(byte[] bArr, int i10) {
        int i11 = i10 + 1;
        if (i11 >= bArr.length) {
            return bArr[i10] & 255;
        }
        return (bArr[i10] & 255) | ((bArr[i11] & 255) << 8);
    }
}
