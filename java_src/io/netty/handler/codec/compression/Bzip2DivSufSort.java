package io.netty.handler.codec.compression;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes.dex */
final class Bzip2DivSufSort {
    private static final int BUCKET_A_SIZE = 256;
    private static final int BUCKET_B_SIZE = 65536;
    private static final int INSERTIONSORT_THRESHOLD = 8;
    private static final int[] LOG_2_TABLE = {-1, 0, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7};
    private static final int SS_BLOCKSIZE = 1024;
    private static final int STACK_SIZE = 64;
    private final int[] SA;
    private final byte[] T;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f91625n;

    private static class PartitionResult {
        final int first;
        final int last;

        PartitionResult(int i10, int i11) {
            this.first = i10;
            this.last = i11;
        }
    }

    private static class StackEntry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f91626a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f91627b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final int f91628c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int f91629d;

        StackEntry(int i10, int i11, int i12, int i13) {
            this.f91626a = i10;
            this.f91627b = i11;
            this.f91628c = i12;
            this.f91629d = i13;
        }
    }

    private static class TRBudget {
        int budget;
        int chance;

        TRBudget(int i10, int i11) {
            this.budget = i10;
            this.chance = i11;
        }

        boolean update(int i10, int i11) {
            int i12 = this.budget - i11;
            this.budget = i12;
            if (i12 <= 0) {
                int i13 = this.chance - 1;
                this.chance = i13;
                if (i13 == 0) {
                    return false;
                }
                this.budget = i12 + i10;
            }
            return true;
        }
    }

    Bzip2DivSufSort(byte[] bArr, int[] iArr, int i10) {
        this.T = bArr;
        this.SA = iArr;
        this.f91625n = i10;
    }

    private static int BUCKET_B(int i10, int i11) {
        return i10 | (i11 << 8);
    }

    private static int BUCKET_BSTAR(int i10, int i11) {
        return (i10 << 8) | i11;
    }

    private int constructBWT(int[] iArr, int[] iArr2) {
        byte[] bArr = this.T;
        int[] iArr3 = this.SA;
        int i10 = this.f91625n;
        int i11 = 254;
        int i12 = 0;
        int i13 = 0;
        while (i11 >= 0) {
            int i14 = i11 + 1;
            int i15 = iArr2[BUCKET_BSTAR(i11, i14)];
            int i16 = 0;
            int i17 = -1;
            for (int i18 = iArr[i14]; i15 <= i18; i18--) {
                int i19 = iArr3[i18];
                if (i19 >= 0) {
                    int i20 = i19 - 1;
                    if (i20 < 0) {
                        i20 = i10 - 1;
                    }
                    int i21 = bArr[i20] & 255;
                    if (i21 <= i11) {
                        iArr3[i18] = ~i19;
                        if (i20 > 0 && (bArr[i20 - 1] & 255) > i21) {
                            i20 = ~i20;
                        }
                        if (i17 == i21) {
                            i16--;
                            iArr3[i16] = i20;
                        } else {
                            if (i17 >= 0) {
                                iArr2[BUCKET_B(i17, i11)] = i16;
                            }
                            i16 = iArr2[BUCKET_B(i21, i11)] - 1;
                            iArr3[i16] = i20;
                            i17 = i21;
                        }
                    }
                } else {
                    iArr3[i18] = ~i19;
                }
            }
            i11--;
            i12 = i16;
            i13 = i17;
        }
        int i22 = -1;
        for (int i23 = 0; i23 < i10; i23++) {
            int i24 = iArr3[i23];
            if (i24 >= 0) {
                int i25 = i24 - 1;
                if (i25 < 0) {
                    i25 = i10 - 1;
                }
                int i26 = bArr[i25] & 255;
                if (i26 >= (bArr[i25 + 1] & 255)) {
                    if (i25 > 0 && (bArr[i25 - 1] & 255) < i26) {
                        i25 = ~i25;
                    }
                    if (i26 == i13) {
                        i12++;
                        iArr3[i12] = i25;
                    } else {
                        if (i13 != -1) {
                            iArr[i13] = i12;
                        }
                        i12 = iArr[i26] + 1;
                        iArr3[i12] = i25;
                        i13 = i26;
                    }
                }
            } else {
                i24 = ~i24;
            }
            if (i24 == 0) {
                iArr3[i23] = bArr[i10 - 1];
                i22 = i23;
            } else {
                iArr3[i23] = bArr[i24 - 1];
            }
        }
        return i22;
    }

    private static int getIDX(int i10) {
        return i10 >= 0 ? i10 : ~i10;
    }

    /* JADX WARN: Code duplicated, block: B:149:0x011e A[EDGE_INSN: B:149:0x011e->B:155:? BREAK  A[LOOP:6: B:60:0x0107->B:66:0x0119], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:150:0x011c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:152:0x0119 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x010a  */
    /* JADX WARN: Code duplicated, block: B:64:0x0112 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:65:0x0114  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x0128 -> B:56:0x00fc). Please report as a decompilation issue!!! */
    /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
        java.lang.StackOverflowError
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
        */
    private void lsIntroSort(int r21, int r22, int r23, int r24, int r25) {
        /*
            Method dump skipped, instruction units count: 462
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.netty.handler.codec.compression.Bzip2DivSufSort.lsIntroSort(int, int, int, int, int):void");
    }

    private void lsSort(int i10, int i11, int i12) {
        int i13;
        int[] iArr = this.SA;
        int i14 = i12 + i10;
        while (true) {
            int i15 = 0;
            if ((-i11) >= iArr[0]) {
                return;
            }
            int i16 = 0;
            int i17 = 0;
            do {
                int i18 = iArr[i17];
                if (i18 < 0) {
                    i17 -= i18;
                    i16 += i18;
                } else {
                    if (i16 != 0) {
                        iArr[i17 + i16] = i16;
                        i13 = 0;
                    } else {
                        i13 = i16;
                    }
                    int i19 = iArr[i18 + i10] + 1;
                    lsIntroSort(i10, i14, i10 + i11, i17, i19);
                    i16 = i13;
                    i17 = i19;
                }
            } while (i17 < i11);
            if (i16 != 0) {
                iArr[i17 + i16] = i16;
            }
            int i20 = i14 - i10;
            if (i11 < i20) {
                do {
                    int i21 = iArr[i15];
                    if (i21 < 0) {
                        i15 -= i21;
                    } else {
                        int i22 = iArr[i21 + i10] + 1;
                        while (i15 < i22) {
                            iArr[iArr[i15] + i10] = i15;
                            i15++;
                        }
                        i15 = i22;
                    }
                } while (i15 < i11);
                return;
            }
            i14 += i20;
        }
    }

    private void lsUpdateGroup(int i10, int i11, int i12) {
        int[] iArr = this.SA;
        while (i11 < i12) {
            if (iArr[i11] >= 0) {
                int i13 = i11;
                do {
                    iArr[iArr[i13] + i10] = i13;
                    i13++;
                    if (i13 >= i12) {
                        break;
                    }
                } while (iArr[i13] >= 0);
                iArr[i11] = i11 - i13;
                if (i12 <= i13) {
                    return;
                } else {
                    i11 = i13;
                }
            }
            int i14 = i11;
            do {
                iArr[i14] = ~iArr[i14];
                i14++;
            } while (iArr[i14] < 0);
            do {
                iArr[iArr[i11] + i10] = i14;
                i11++;
            } while (i11 <= i14);
            i11 = i14 + 1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0211 A[LOOP:13: B:105:0x0211->B:164:?, LOOP_START, PHI: r0
      0x0211: PHI (r0v18 int) = (r0v10 int), (r0v19 int) binds: [B:104:0x020f, B:164:?] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:107:0x0215  */
    /* JADX WARN: Code duplicated, block: B:114:0x022e  */
    /* JADX WARN: Code duplicated, block: B:119:0x023f  */
    /* JADX WARN: Code duplicated, block: B:121:0x0243  */
    /* JADX WARN: Code duplicated, block: B:123:0x025d A[LOOP:17: B:122:0x025b->B:123:0x025d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:127:0x027b  */
    /* JADX WARN: Code duplicated, block: B:156:0x0222 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:158:0x020f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:159:0x020f A[EDGE_INSN: B:159:0x020f->B:157:0x020f BREAK  A[LOOP:14: B:112:0x022a->B:165:?], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:162:0x0220 A[EDGE_INSN: B:162:0x0220->B:110:0x0220 BREAK  A[LOOP:13: B:105:0x0211->B:164:?], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:168:0x0284 A[SYNTHETIC] */
    private int sortTypeBstar(int[] iArr, int[] iArr2) {
        boolean z10;
        int i10;
        int i11;
        int i12;
        int i13;
        int[] iArr3;
        int i14;
        int i15;
        byte b10;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        byte[] bArr = this.T;
        int[] iArr4 = this.SA;
        int i24 = this.f91625n;
        int[] iArr5 = new int[256];
        int i25 = 1;
        while (true) {
            if (i25 < i24) {
                byte b11 = bArr[i25 - 1];
                byte b12 = bArr[i25];
                if (b11 != b12) {
                    if ((b11 & 255) > (b12 & 255)) {
                        z10 = false;
                        break;
                    }
                } else {
                    i25++;
                }
            }
            z10 = true;
            break;
        }
        int i26 = i24 - 1;
        byte b13 = bArr[i26];
        int i27 = b13 & 255;
        byte b14 = bArr[0];
        int i28 = b14 & 255;
        if (i27 >= i28 && (b13 != b14 || !z10)) {
            i10 = i24;
            i11 = i26;
            break;
        }
        if (z10) {
            int iBUCKET_B = BUCKET_B(i27, i28);
            iArr2[iBUCKET_B] = iArr2[iBUCKET_B] + 1;
            i10 = i24;
        } else {
            int iBUCKET_BSTAR = BUCKET_BSTAR(i27, i28);
            iArr2[iBUCKET_BSTAR] = iArr2[iBUCKET_BSTAR] + 1;
            i10 = i24 - 1;
            iArr4[i10] = i26;
        }
        i11 = i26 - 1;
        while (i11 >= 0) {
            int i29 = bArr[i11] & 255;
            int i30 = bArr[i11 + 1] & 255;
            if (i29 > i30) {
                break;
            }
            int iBUCKET_B2 = BUCKET_B(i29, i30);
            iArr2[iBUCKET_B2] = iArr2[iBUCKET_B2] + 1;
            i11--;
        }
        while (i11 >= 0) {
            do {
                int i31 = bArr[i11] & 255;
                iArr[i31] = iArr[i31] + 1;
                i11--;
                if (i11 < 0) {
                    break;
                }
            } while ((bArr[i11] & 255) >= (bArr[i11 + 1] & 255));
            if (i11 >= 0) {
                int iBUCKET_BSTAR2 = BUCKET_BSTAR(bArr[i11] & 255, bArr[i11 + 1] & 255);
                iArr2[iBUCKET_BSTAR2] = iArr2[iBUCKET_BSTAR2] + 1;
                i10--;
                iArr4[i10] = i11;
                while (true) {
                    i11--;
                    if (i11 < 0 || (i22 = bArr[i11] & 255) > (i23 = bArr[i11 + 1] & 255)) {
                        break;
                    }
                    int iBUCKET_B3 = BUCKET_B(i22, i23);
                    iArr2[iBUCKET_B3] = iArr2[iBUCKET_B3] + 1;
                }
            }
        }
        int i32 = i24 - i10;
        if (i32 == 0) {
            for (int i33 = 0; i33 < i24; i33++) {
                iArr4[i33] = i33;
            }
            return 0;
        }
        int i34 = 0;
        int i35 = -1;
        int i36 = 0;
        while (i34 < 256) {
            int i37 = iArr[i34] + i35;
            iArr[i34] = i35 + i36;
            int i38 = i37 + iArr2[BUCKET_B(i34, i34)];
            int i39 = i34 + 1;
            for (int i40 = i39; i40 < 256; i40++) {
                i36 += iArr2[BUCKET_BSTAR(i34, i40)];
                iArr2[(i34 << 8) | i40] = i36;
                i38 += iArr2[BUCKET_B(i34, i40)];
            }
            i34 = i39;
            i35 = i38;
        }
        int i41 = i24 - i32;
        for (int i42 = i32 - 2; i42 >= 0; i42--) {
            int i43 = iArr4[i41 + i42];
            int iBUCKET_BSTAR3 = BUCKET_BSTAR(bArr[i43] & 255, bArr[i43 + 1] & 255);
            int i44 = iArr2[iBUCKET_BSTAR3] - 1;
            iArr2[iBUCKET_BSTAR3] = i44;
            iArr4[i44] = i42;
        }
        int i45 = iArr4[(i41 + i32) - 1];
        int iBUCKET_BSTAR4 = BUCKET_BSTAR(bArr[i45] & 255, bArr[i45 + 1] & 255);
        int i46 = iArr2[iBUCKET_BSTAR4] - 1;
        iArr2[iBUCKET_BSTAR4] = i46;
        int i47 = i32 - 1;
        iArr4[i46] = i47;
        int i48 = i24 - (i32 * 2);
        if (i48 <= 256) {
            iArr3 = iArr5;
            i12 = 256;
            i13 = 0;
        } else {
            i12 = i48;
            i13 = i32;
            iArr3 = iArr4;
        }
        int i49 = i32;
        int i50 = 255;
        while (i49 > 0) {
            int i51 = i49;
            int i52 = 255;
            while (i50 < i52) {
                int i53 = iArr2[BUCKET_BSTAR(i50, i52)];
                if (1 < i51 - i53) {
                    subStringSort(i41, i53, i51, iArr3, i13, i12, 2, iArr4[i53] == i47, i24);
                }
                i52--;
                i32 = i32;
                i51 = i53;
                i50 = i50;
                i47 = i47;
            }
            i50--;
            i49 = i51;
        }
        int i54 = i47;
        int i55 = i32;
        while (i47 >= 0) {
            if (iArr4[i47] >= 0) {
                int i56 = i47;
                do {
                    iArr4[i55 + iArr4[i56]] = i56;
                    i56--;
                    if (i56 < 0) {
                        break;
                    }
                } while (iArr4[i56] >= 0);
                iArr4[i56 + 1] = i56 - i47;
                if (i56 <= 0) {
                    break;
                }
                i47 = i56;
            }
            int i57 = i47;
            do {
                int i58 = ~iArr4[i57];
                iArr4[i57] = i58;
                iArr4[i55 + i58] = i47;
                i57--;
                i21 = iArr4[i57];
            } while (i21 < 0);
            iArr4[i55 + i21] = i47;
            i47 = i57 - 1;
        }
        trSort(i55, i55, 1);
        byte b15 = bArr[i26];
        int i59 = b15 & 255;
        byte b16 = bArr[0];
        if (i59 < (b16 & 255) || (b15 == b16 && z10)) {
            if (z10) {
                i14 = i55;
            } else {
                i14 = i55 - 1;
                iArr4[iArr4[i55 + i14]] = i26;
            }
            i15 = i26 - 1;
            while (true) {
                if (i15 >= 0) {
                    b10 = 255;
                    if ((bArr[i15] & 255) > (bArr[i15 + 1] & 255)) {
                        break;
                    }
                    i15--;
                }
            }
            while (i15 >= 0) {
                do {
                    i15--;
                    if (i15 >= 0) {
                        break;
                    }
                } while ((bArr[i15] & b10) >= (bArr[i15 + 1] & b10));
                if (i15 >= 0) {
                    i14--;
                    iArr4[iArr4[i55 + i14]] = i15;
                    do {
                        i15--;
                        if (i15 >= 0) {
                            break;
                        }
                    } while ((bArr[i15] & b10) <= (bArr[i15 + 1] & b10));
                }
            }
            i16 = i54;
            for (i17 = 255; i17 >= 0; i17--) {
                for (i18 = 255; i17 < i18; i18--) {
                    int i60 = i26 - iArr2[BUCKET_B(i17, i18)];
                    iArr2[BUCKET_B(i17, i18)] = i26 + 1;
                    i20 = iArr2[BUCKET_BSTAR(i17, i18)];
                    i26 = i60;
                    while (i20 <= i16) {
                        iArr4[i26] = iArr4[i16];
                        i26--;
                        i16--;
                    }
                }
                i19 = i26 - iArr2[BUCKET_B(i17, i17)];
                iArr2[BUCKET_B(i17, i17)] = i26 + 1;
                if (i17 < b10) {
                    iArr2[BUCKET_BSTAR(i17, i17 + 1)] = i19 + 1;
                }
                i26 = iArr[i17];
            }
            return i55;
        }
        i14 = i55;
        i15 = i26;
        b10 = 255;
        while (i15 >= 0) {
            do {
                i15--;
                if (i15 >= 0) {
                    break;
                    break;
                }
            } while ((bArr[i15] & b10) >= (bArr[i15 + 1] & b10));
            if (i15 >= 0) {
                i14--;
                iArr4[iArr4[i55 + i14]] = i15;
                do {
                    i15--;
                    if (i15 >= 0) {
                        break;
                        break;
                    }
                } while ((bArr[i15] & b10) <= (bArr[i15 + 1] & b10));
            }
        }
        i16 = i54;
        while (i17 >= 0) {
            while (i17 < i18) {
                int i61 = i26 - iArr2[BUCKET_B(i17, i18)];
                iArr2[BUCKET_B(i17, i18)] = i26 + 1;
                i20 = iArr2[BUCKET_BSTAR(i17, i18)];
                i26 = i61;
                while (i20 <= i16) {
                    iArr4[i26] = iArr4[i16];
                    i26--;
                    i16--;
                }
            }
            i19 = i26 - iArr2[BUCKET_B(i17, i17)];
            iArr2[BUCKET_B(i17, i17)] = i26 + 1;
            if (i17 < b10) {
                iArr2[BUCKET_BSTAR(i17, i17 + 1)] = i19 + 1;
            }
            i26 = iArr[i17];
        }
        return i55;
    }

    private static void ssBlockSwap(int[] iArr, int i10, int[] iArr2, int i11, int i12) {
        while (i12 > 0) {
            swapElements(iArr, i10, iArr2, i11);
            i12--;
            i10++;
            i11++;
        }
    }

    private int ssCompare(int i10, int i11, int i12) {
        int[] iArr = this.SA;
        byte[] bArr = this.T;
        int i13 = iArr[i10 + 1] + 2;
        int i14 = iArr[i11 + 1] + 2;
        int i15 = iArr[i10] + i12;
        int i16 = i12 + iArr[i11];
        while (i15 < i13 && i16 < i14 && bArr[i15] == bArr[i16]) {
            i15++;
            i16++;
        }
        if (i15 >= i13) {
            return i16 < i14 ? -1 : 0;
        }
        if (i16 < i14) {
            return (bArr[i15] & 255) - (bArr[i16] & 255);
        }
        return 1;
    }

    private int ssCompareLast(int i10, int i11, int i12, int i13, int i14) {
        int[] iArr = this.SA;
        byte[] bArr = this.T;
        int i15 = iArr[i11] + i13;
        int i16 = i13 + iArr[i12];
        int i17 = iArr[i12 + 1] + 2;
        while (i15 < i14 && i16 < i17 && bArr[i15] == bArr[i16]) {
            i15++;
            i16++;
        }
        if (i15 < i14) {
            if (i16 < i17) {
                return (bArr[i15] & 255) - (bArr[i16] & 255);
            }
            return 1;
        }
        if (i16 == i17) {
            return 1;
        }
        int i18 = i15 % i14;
        int i19 = iArr[i10] + 2;
        while (i18 < i19 && i16 < i17 && bArr[i18] == bArr[i16]) {
            i18++;
            i16++;
        }
        if (i18 >= i19) {
            return i16 < i17 ? -1 : 0;
        }
        if (i16 < i17) {
            return (bArr[i18] & 255) - (bArr[i16] & 255);
        }
        return 1;
    }

    private void ssFixdown(int i10, int i11, int i12, int i13, int i14) {
        int[] iArr = this.SA;
        byte[] bArr = this.T;
        int i15 = iArr[i12 + i13];
        int i16 = bArr[iArr[i11 + i15] + i10] & 255;
        while (true) {
            int i17 = (i13 * 2) + 1;
            if (i17 >= i14) {
                break;
            }
            int i18 = i17 + 1;
            int i19 = bArr[iArr[iArr[i12 + i17] + i11] + i10] & 255;
            int i20 = bArr[iArr[iArr[i12 + i18] + i11] + i10] & 255;
            if (i19 < i20) {
                i17 = i18;
                i19 = i20;
            }
            if (i19 <= i16) {
                break;
            }
            iArr[i13 + i12] = iArr[i12 + i17];
            i13 = i17;
        }
        iArr[i12 + i13] = i15;
    }

    private void ssHeapSort(int i10, int i11, int i12, int i13) {
        int i14;
        int[] iArr = this.SA;
        byte[] bArr = this.T;
        int i15 = i13 % 2;
        if (i15 == 0) {
            int i16 = i13 - 1;
            int i17 = (i16 / 2) + i12;
            int i18 = i12 + i16;
            if ((bArr[iArr[iArr[i17] + i11] + i10] & 255) < (bArr[iArr[iArr[i18] + i11] + i10] & 255)) {
                swapElements(iArr, i18, iArr, i17);
            }
            i14 = i16;
        } else {
            i14 = i13;
        }
        for (int i19 = (i14 / 2) - 1; i19 >= 0; i19--) {
            ssFixdown(i10, i11, i12, i19, i14);
        }
        if (i15 == 0) {
            swapElements(iArr, i12, iArr, i12 + i14);
            ssFixdown(i10, i11, i12, 0, i14);
        }
        for (int i20 = i14 - 1; i20 > 0; i20--) {
            int i21 = iArr[i12];
            int i22 = i12 + i20;
            iArr[i12] = iArr[i22];
            ssFixdown(i10, i11, i12, 0, i20);
            iArr[i22] = i21;
        }
    }

    private void ssInsertionSort(int i10, int i11, int i12, int i13) {
        int iSsCompare;
        int[] iArr = this.SA;
        for (int i14 = i12 - 2; i11 <= i14; i14--) {
            int i15 = iArr[i14];
            int i16 = i14 + 1;
            do {
                iSsCompare = ssCompare(i10 + i15, iArr[i16] + i10, i13);
                if (iSsCompare <= 0) {
                    break;
                }
                do {
                    iArr[i16 - 1] = iArr[i16];
                    i16++;
                    if (i16 >= i12) {
                        break;
                    }
                } while (iArr[i16] < 0);
            } while (i12 > i16);
            if (iSsCompare == 0) {
                iArr[i16] = ~iArr[i16];
            }
            iArr[i16 - 1] = i15;
        }
    }

    private static int ssLog(int i10) {
        return (65280 & i10) != 0 ? LOG_2_TABLE[(i10 >> 8) & 255] + 8 : LOG_2_TABLE[i10 & 255];
    }

    private int ssMedian3(int i10, int i11, int i12, int i13, int i14) {
        int[] iArr = this.SA;
        byte[] bArr = this.T;
        int i15 = bArr[iArr[iArr[i12] + i11] + i10] & 255;
        int i16 = bArr[iArr[iArr[i13] + i11] + i10] & 255;
        int i17 = bArr[i10 + iArr[i11 + iArr[i14]]] & 255;
        if (i15 <= i16) {
            i13 = i12;
            i12 = i13;
            i16 = i15;
            i15 = i16;
        }
        if (i15 > i17) {
            return i16 > i17 ? i13 : i14;
        }
        return i12;
    }

    private int ssMedian5(int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int[] iArr = this.SA;
        byte[] bArr = this.T;
        int i26 = bArr[iArr[iArr[i12] + i11] + i10] & 255;
        int i27 = bArr[iArr[iArr[i13] + i11] + i10] & 255;
        int i28 = bArr[iArr[iArr[i14] + i11] + i10] & 255;
        int i29 = bArr[iArr[iArr[i15] + i11] + i10] & 255;
        int i30 = bArr[iArr[iArr[i16] + i11] + i10] & 255;
        if (i27 > i28) {
            i17 = i14;
            i18 = i27;
            i19 = i13;
        } else {
            i17 = i13;
            i18 = i28;
            i28 = i27;
            i19 = i14;
        }
        if (i29 > i30) {
            i21 = i30;
            i20 = i29;
            i23 = i15;
            i22 = i16;
        } else {
            i20 = i30;
            i21 = i29;
            i22 = i15;
            i23 = i16;
        }
        if (i28 > i21) {
            int i31 = i19;
            i19 = i23;
            i23 = i31;
            int i32 = i20;
            i20 = i18;
            i18 = i32;
        } else {
            i17 = i22;
            i28 = i21;
        }
        if (i26 > i18) {
            i24 = i26;
            i25 = i12;
        } else {
            i24 = i18;
            i18 = i26;
            i25 = i19;
            i19 = i12;
        }
        if (i18 > i28) {
            i17 = i19;
            i28 = i18;
        } else {
            i23 = i25;
            i20 = i24;
        }
        return i20 > i28 ? i17 : i23;
    }

    private void ssMerge(int i10, int i11, int i12, int i13, int[] iArr, int i14, int i15, int i16) {
        int i17;
        int i18;
        int i19;
        int i20;
        int[] iArr2 = this.SA;
        StackEntry[] stackEntryArr = new StackEntry[64];
        int i21 = i11;
        int i22 = i12;
        int i23 = i13;
        int i24 = 0;
        int i25 = 0;
        while (true) {
            int i26 = i23 - i22;
            if (i26 <= i15) {
                if (i21 < i22 && i22 < i23) {
                    ssMergeBackward(i10, iArr, i14, i21, i22, i23, i16);
                }
                if ((i24 & 1) != 0) {
                    ssMergeCheckEqual(i10, i16, i21);
                }
                if ((i24 & 2) != 0) {
                    ssMergeCheckEqual(i10, i16, i23);
                }
                if (i25 == 0) {
                    return;
                }
                i25--;
                StackEntry stackEntry = stackEntryArr[i25];
                i21 = stackEntry.f91626a;
                i22 = stackEntry.f91627b;
                i23 = stackEntry.f91628c;
                i17 = stackEntry.f91629d;
            } else {
                int i27 = i23;
                int i28 = i22 - i21;
                if (i28 <= i15) {
                    if (i21 < i22) {
                        ssMergeForward(i10, iArr, i14, i21, i22, i27, i16);
                    }
                    if ((i24 & 1) != 0) {
                        ssMergeCheckEqual(i10, i16, i21);
                    }
                    if ((i24 & 2) != 0) {
                        ssMergeCheckEqual(i10, i16, i27);
                    }
                    if (i25 == 0) {
                        return;
                    }
                    i25--;
                    StackEntry stackEntry2 = stackEntryArr[i25];
                    i21 = stackEntry2.f91626a;
                    i22 = stackEntry2.f91627b;
                    i23 = stackEntry2.f91628c;
                    i17 = stackEntry2.f91629d;
                } else {
                    int iMin = Math.min(i28, i26);
                    int i29 = iMin >> 1;
                    int i30 = 0;
                    while (iMin > 0) {
                        if (ssCompare(getIDX(iArr2[i22 + i30 + i29]) + i10, getIDX(iArr2[((i22 - i30) - i29) - 1]) + i10, i16) < 0) {
                            i30 += i29 + 1;
                            i29 -= (iMin & 1) ^ 1;
                        }
                        iMin = i29;
                        i29 = iMin >> 1;
                    }
                    if (i30 > 0) {
                        int i31 = i22 - i30;
                        ssBlockSwap(iArr2, i31, iArr2, i22, i30);
                        int i32 = i22 + i30;
                        if (i32 < i27) {
                            if (iArr2[i32] < 0) {
                                i20 = i22;
                                while (iArr2[i20 - 1] < 0) {
                                    i20--;
                                }
                                iArr2[i32] = ~iArr2[i32];
                            } else {
                                i20 = i22;
                            }
                            i18 = i22;
                            while (iArr2[i18] < 0) {
                                i18++;
                            }
                            i23 = i20;
                            i19 = 1;
                        } else {
                            i18 = i22;
                            i23 = i18;
                            i19 = 0;
                        }
                        if (i23 - i21 <= i27 - i18) {
                            stackEntryArr[i25] = new StackEntry(i18, i32, i27, (i19 & 1) | (i24 & 2));
                            i24 &= 1;
                            i22 = i31;
                            i25++;
                        } else {
                            if (i23 == i22 && i22 == i18) {
                                i19 <<= 1;
                            }
                            stackEntryArr[i25] = new StackEntry(i21, i31, i23, (i24 & 1) | (i19 & 2));
                            i24 = (i24 & 2) | (i19 & 1);
                            i22 = i32;
                            i25++;
                            i21 = i18;
                            i23 = i27;
                        }
                    } else {
                        if ((i24 & 1) != 0) {
                            ssMergeCheckEqual(i10, i16, i21);
                        }
                        ssMergeCheckEqual(i10, i16, i22);
                        if ((i24 & 2) != 0) {
                            ssMergeCheckEqual(i10, i16, i27);
                        }
                        if (i25 == 0) {
                            return;
                        }
                        i25--;
                        StackEntry stackEntry3 = stackEntryArr[i25];
                        i21 = stackEntry3.f91626a;
                        i22 = stackEntry3.f91627b;
                        i23 = stackEntry3.f91628c;
                        i17 = stackEntry3.f91629d;
                    }
                }
            }
            i24 = i17;
        }
    }

    private void ssMergeBackward(int i10, int[] iArr, int i11, int i12, int i13, int i14, int i15) {
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int[] iArr2 = this.SA;
        int i26 = i14 - i13;
        ssBlockSwap(iArr, i11, iArr2, i13, i26);
        int i27 = (i11 + i26) - 1;
        int i28 = iArr[i27];
        if (i28 < 0) {
            i16 = i10 + (~i28);
            i17 = 1;
        } else {
            i16 = i10 + i28;
            i17 = 0;
        }
        int i29 = i13 - 1;
        int i30 = iArr2[i29];
        if (i30 < 0) {
            i17 |= 2;
            i30 = ~i30;
        }
        int i31 = i10 + i30;
        int i32 = i14 - 1;
        int i33 = iArr2[i32];
        while (true) {
            int iSsCompare = ssCompare(i16, i31, i15);
            if (iSsCompare > 0) {
                if ((i17 & 1) != 0) {
                    while (true) {
                        i18 = i32 - 1;
                        iArr2[i32] = iArr[i27];
                        i19 = i27 - 1;
                        iArr[i27] = iArr2[i18];
                        if (iArr[i19] >= 0) {
                            break;
                        }
                        i27 = i19;
                        i32 = i18;
                    }
                    i17 ^= 1;
                    i27 = i19;
                    i32 = i18;
                }
                int i34 = i32 - 1;
                iArr2[i32] = iArr[i27];
                if (i27 <= i11) {
                    iArr[i27] = i33;
                    return;
                }
                int i35 = i27 - 1;
                iArr[i27] = iArr2[i34];
                int i36 = iArr[i35];
                if (i36 < 0) {
                    i17 |= 1;
                    i36 = ~i36;
                }
                int i37 = i10 + i36;
                i27 = i35;
                i32 = i34;
                i16 = i37;
            } else if (iSsCompare < 0) {
                if ((i17 & 2) != 0) {
                    while (true) {
                        i20 = i32 - 1;
                        iArr2[i32] = iArr2[i29];
                        i21 = i29 - 1;
                        iArr2[i29] = iArr2[i20];
                        if (iArr2[i21] >= 0) {
                            break;
                        }
                        i29 = i21;
                        i32 = i20;
                    }
                    i17 ^= 2;
                    i29 = i21;
                    i32 = i20;
                }
                int i38 = i32 - 1;
                iArr2[i32] = iArr2[i29];
                int i39 = i29 - 1;
                iArr2[i29] = iArr2[i38];
                if (i39 < i12) {
                    while (i11 < i27) {
                        int i40 = i38 - 1;
                        iArr2[i38] = iArr[i27];
                        iArr[i27] = iArr2[i40];
                        i38 = i40;
                        i27--;
                    }
                    iArr2[i38] = iArr[i27];
                    iArr[i27] = i33;
                    return;
                }
                int i41 = iArr2[i39];
                if (i41 < 0) {
                    i17 |= 2;
                    i41 = ~i41;
                }
                i31 = i10 + i41;
                i29 = i39;
                i32 = i38;
            } else {
                if ((i17 & 1) != 0) {
                    while (true) {
                        i24 = i32 - 1;
                        iArr2[i32] = iArr[i27];
                        i25 = i27 - 1;
                        iArr[i27] = iArr2[i24];
                        if (iArr[i25] >= 0) {
                            break;
                        }
                        i27 = i25;
                        i32 = i24;
                    }
                    i17 ^= 1;
                    i27 = i25;
                    i32 = i24;
                }
                int i42 = i32 - 1;
                iArr2[i32] = ~iArr[i27];
                if (i27 <= i11) {
                    iArr[i27] = i33;
                    return;
                }
                int i43 = i27 - 1;
                iArr[i27] = iArr2[i42];
                if ((i17 & 2) != 0) {
                    while (true) {
                        i22 = i42 - 1;
                        iArr2[i42] = iArr2[i29];
                        i23 = i29 - 1;
                        iArr2[i29] = iArr2[i22];
                        if (iArr2[i23] >= 0) {
                            break;
                        }
                        i29 = i23;
                        i42 = i22;
                    }
                    i17 ^= 2;
                    i29 = i23;
                    i42 = i22;
                }
                int i44 = i42 - 1;
                iArr2[i42] = iArr2[i29];
                int i45 = i29 - 1;
                iArr2[i29] = iArr2[i44];
                if (i45 < i12) {
                    while (i11 < i43) {
                        int i46 = i44 - 1;
                        iArr2[i44] = iArr[i43];
                        iArr[i43] = iArr2[i46];
                        i44 = i46;
                        i43--;
                    }
                    iArr2[i44] = iArr[i43];
                    iArr[i43] = i33;
                    return;
                }
                int i47 = iArr[i43];
                if (i47 < 0) {
                    i17 |= 1;
                    i47 = ~i47;
                }
                int i48 = i10 + i47;
                int i49 = iArr2[i45];
                if (i49 < 0) {
                    i17 |= 2;
                    i49 = ~i49;
                }
                i31 = i10 + i49;
                i16 = i48;
                i29 = i45;
                i27 = i43;
                i32 = i44;
            }
        }
    }

    private void ssMergeCheckEqual(int i10, int i11, int i12) {
        int[] iArr = this.SA;
        if (iArr[i12] < 0 || ssCompare(getIDX(iArr[i12 - 1]) + i10, i10 + iArr[i12], i11) != 0) {
            return;
        }
        iArr[i12] = ~iArr[i12];
    }

    private void ssMergeForward(int i10, int[] iArr, int i11, int i12, int i13, int i14, int i15) {
        int i16;
        int[] iArr2 = this.SA;
        int i17 = i13 - i12;
        int i18 = (i11 + i17) - 1;
        ssBlockSwap(iArr, i11, iArr2, i12, i17);
        int i19 = iArr2[i12];
        while (true) {
            int iSsCompare = ssCompare(iArr[i11] + i10, iArr2[i13] + i10, i15);
            if (iSsCompare < 0) {
                while (true) {
                    i16 = i12 + 1;
                    iArr2[i12] = iArr[i11];
                    if (i18 <= i11) {
                        iArr[i11] = i19;
                        return;
                    }
                    int i20 = i11 + 1;
                    iArr[i11] = iArr2[i16];
                    if (iArr[i20] >= 0) {
                        i11 = i20;
                        break;
                    } else {
                        i11 = i20;
                        i12 = i16;
                    }
                }
            } else if (iSsCompare > 0) {
                while (true) {
                    i16 = i12 + 1;
                    iArr2[i12] = iArr2[i13];
                    int i21 = i13 + 1;
                    iArr2[i13] = iArr2[i16];
                    if (i14 <= i21) {
                        while (i11 < i18) {
                            int i22 = i16 + 1;
                            iArr2[i16] = iArr[i11];
                            iArr[i11] = iArr2[i22];
                            i16 = i22;
                            i11++;
                        }
                        iArr2[i16] = iArr[i11];
                        iArr[i11] = i19;
                        return;
                    }
                    if (iArr2[i21] >= 0) {
                        i13 = i21;
                        break;
                    } else {
                        i13 = i21;
                        i12 = i16;
                    }
                }
            } else {
                iArr2[i13] = ~iArr2[i13];
                while (true) {
                    int i23 = i12 + 1;
                    iArr2[i12] = iArr[i11];
                    if (i18 <= i11) {
                        iArr[i11] = i19;
                        return;
                    }
                    int i24 = i11 + 1;
                    iArr[i11] = iArr2[i23];
                    if (iArr[i24] >= 0) {
                        while (true) {
                            int i25 = i23 + 1;
                            iArr2[i23] = iArr2[i13];
                            int i26 = i13 + 1;
                            iArr2[i13] = iArr2[i25];
                            if (i14 <= i26) {
                                while (i24 < i18) {
                                    int i27 = i25 + 1;
                                    iArr2[i25] = iArr[i24];
                                    iArr[i24] = iArr2[i27];
                                    i24++;
                                    i25 = i27;
                                }
                                iArr2[i25] = iArr[i24];
                                iArr[i24] = i19;
                                return;
                            }
                            if (iArr2[i26] >= 0) {
                                i13 = i26;
                                i12 = i25;
                                i11 = i24;
                                break;
                            }
                            i13 = i26;
                            i23 = i25;
                        }
                    } else {
                        i11 = i24;
                        i12 = i23;
                    }
                }
            }
            i12 = i16;
        }
    }

    private void ssMultiKeyIntroSort(int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        Bzip2DivSufSort bzip2DivSufSort = this;
        int[] iArr = bzip2DivSufSort.SA;
        byte[] bArr = bzip2DivSufSort.T;
        StackEntry[] stackEntryArr = new StackEntry[64];
        int i19 = i12;
        int i20 = i13;
        int iSsLog = ssLog(i12 - i11);
        int i21 = 0;
        int i22 = 0;
        int iSsSubstringPartition = i11;
        while (true) {
            int i23 = i19 - iSsSubstringPartition;
            if (i23 <= 8) {
                if (1 < i23) {
                    bzip2DivSufSort.ssInsertionSort(i10, iSsSubstringPartition, i19, i20);
                }
                if (i21 == 0) {
                    return;
                }
                i21--;
                StackEntry stackEntry = stackEntryArr[i21];
                int i24 = stackEntry.f91626a;
                int i25 = stackEntry.f91627b;
                int i26 = stackEntry.f91628c;
                iSsLog = stackEntry.f91629d;
                iSsSubstringPartition = i24;
                i19 = i25;
                i20 = i26;
            } else {
                int i27 = iSsLog - 1;
                if (iSsLog == 0) {
                    bzip2DivSufSort.ssHeapSort(i20, i10, iSsSubstringPartition, i23);
                }
                iSsLog = -1;
                if (i27 < 0) {
                    int i28 = bArr[iArr[iArr[iSsSubstringPartition] + i10] + i20] & 255;
                    int i29 = i22;
                    int iSsSubstringPartition2 = iSsSubstringPartition;
                    iSsSubstringPartition++;
                    int i30 = i29;
                    while (iSsSubstringPartition < i19) {
                        i30 = bArr[iArr[iArr[iSsSubstringPartition] + i10] + i20] & 255;
                        if (i30 != i28) {
                            if (1 < iSsSubstringPartition - iSsSubstringPartition2) {
                                break;
                            }
                            iSsSubstringPartition2 = iSsSubstringPartition;
                            i28 = i30;
                        }
                        iSsSubstringPartition++;
                    }
                    if ((bArr[(iArr[iArr[iSsSubstringPartition2] + i10] + i20) - 1] & 255) < i28) {
                        iSsSubstringPartition2 = bzip2DivSufSort.ssSubstringPartition(i10, iSsSubstringPartition2, iSsSubstringPartition, i20);
                    }
                    int i31 = iSsSubstringPartition - iSsSubstringPartition2;
                    int i32 = i19 - iSsSubstringPartition;
                    if (i31 <= i32) {
                        if (1 < i31) {
                            i14 = i21 + 1;
                            stackEntryArr[i21] = new StackEntry(iSsSubstringPartition, i19, i20, -1);
                            i20++;
                            iSsLog = ssLog(i31);
                            i19 = iSsSubstringPartition;
                            iSsSubstringPartition = iSsSubstringPartition2;
                            i22 = i30;
                            i21 = i14;
                        } else {
                            i22 = i30;
                        }
                    } else if (1 < i32) {
                        i14 = i21 + 1;
                        stackEntryArr[i21] = new StackEntry(iSsSubstringPartition2, iSsSubstringPartition, i20 + 1, ssLog(i31));
                        i22 = i30;
                        i21 = i14;
                    } else {
                        i20++;
                        iSsLog = ssLog(i31);
                        i19 = iSsSubstringPartition;
                        iSsSubstringPartition = iSsSubstringPartition2;
                        i22 = i30;
                    }
                } else {
                    int iSsPivot = bzip2DivSufSort.ssPivot(i20, i10, iSsSubstringPartition, i19);
                    int i33 = bArr[iArr[iArr[iSsPivot] + i10] + i20] & 255;
                    swapElements(iArr, iSsSubstringPartition, iArr, iSsPivot);
                    int i34 = iSsSubstringPartition + 1;
                    while (i34 < i19) {
                        i22 = bArr[iArr[iArr[i34] + i10] + i20] & 255;
                        if (i22 != i33) {
                            break;
                        } else {
                            i34++;
                        }
                    }
                    if (i34 >= i19 || i22 >= i33) {
                        i15 = i34;
                    } else {
                        i15 = i34;
                        while (true) {
                            i34++;
                            if (i34 >= i19 || (i22 = bArr[iArr[iArr[i34] + i10] + i20] & 255) > i33) {
                                break;
                            } else if (i22 == i33) {
                                swapElements(iArr, i34, iArr, i15);
                                i15++;
                            }
                        }
                    }
                    int i35 = i19 - 1;
                    while (i34 < i35) {
                        i22 = bArr[iArr[iArr[i35] + i10] + i20] & 255;
                        if (i22 != i33) {
                            break;
                        } else {
                            i35--;
                        }
                    }
                    if (i34 < i35 && i22 > i33) {
                        int i36 = i22;
                        int i37 = i35;
                        while (true) {
                            i35 += iSsLog;
                            if (i34 >= i35) {
                                i16 = i37;
                                i22 = i36;
                                break;
                            }
                            int i38 = bArr[i20 + iArr[i10 + iArr[i35]]] & 255;
                            if (i38 < i33) {
                                int i39 = i37;
                                i22 = i38;
                                i16 = i39;
                                break;
                            } else {
                                if (i38 == i33) {
                                    swapElements(iArr, i35, iArr, i37);
                                    i37--;
                                }
                                i36 = i38;
                                iSsLog = -1;
                            }
                        }
                    } else {
                        i16 = i35;
                    }
                    while (i34 < i35) {
                        swapElements(iArr, i34, iArr, i35);
                        while (true) {
                            i34++;
                            if (i34 >= i35 || (i22 = bArr[iArr[iArr[i34] + i10] + i20] & 255) > i33) {
                                break;
                            } else if (i22 == i33) {
                                swapElements(iArr, i34, iArr, i15);
                                i15++;
                            }
                        }
                        while (true) {
                            i35--;
                            if (i34 >= i35 || (i22 = bArr[iArr[iArr[i35] + i10] + i20] & 255) < i33) {
                                break;
                            } else if (i22 == i33) {
                                swapElements(iArr, i35, iArr, i16);
                                i16--;
                            }
                        }
                    }
                    if (i15 <= i16) {
                        int i40 = i34 - 1;
                        i17 = i22;
                        int i41 = i15 - iSsSubstringPartition;
                        int i42 = i34 - i15;
                        if (i41 > i42) {
                            i41 = i42;
                        }
                        int i43 = iSsSubstringPartition;
                        int i44 = i34;
                        int i45 = i34 - i41;
                        while (i41 > 0) {
                            swapElements(iArr, i43, iArr, i45);
                            i41--;
                            i43++;
                            i45++;
                        }
                        int i46 = i16 - i40;
                        int i47 = (i19 - i16) - 1;
                        if (i46 <= i47) {
                            i47 = i46;
                        }
                        int i48 = i19 - i47;
                        int i49 = i44;
                        while (i47 > 0) {
                            swapElements(iArr, i49, iArr, i48);
                            i47--;
                            i49++;
                            i48++;
                        }
                        int i50 = iSsSubstringPartition + i42;
                        int i51 = i19 - i46;
                        int iSsSubstringPartition3 = i33 <= (bArr[(iArr[iArr[i50] + i10] + i20) + (-1)] & 255) ? i50 : bzip2DivSufSort.ssSubstringPartition(i10, i50, i51, i20);
                        int i52 = i50 - iSsSubstringPartition;
                        int i53 = i19 - i51;
                        if (i52 <= i53) {
                            int i54 = i51 - iSsSubstringPartition3;
                            if (i53 <= i54) {
                                int i55 = i21 + 1;
                                stackEntryArr[i21] = new StackEntry(iSsSubstringPartition3, i51, i20 + 1, ssLog(i54));
                                i21 = i55 + 1;
                                i18 = i27;
                                stackEntryArr[i55] = new StackEntry(i51, i19, i20, i18);
                            } else {
                                i18 = i27;
                                if (i52 <= i54) {
                                    int i56 = i21 + 1;
                                    stackEntryArr[i21] = new StackEntry(i51, i19, i20, i18);
                                    i21 = i56 + 1;
                                    stackEntryArr[i56] = new StackEntry(iSsSubstringPartition3, i51, i20 + 1, ssLog(i54));
                                } else {
                                    int i57 = i21 + 1;
                                    stackEntryArr[i21] = new StackEntry(i51, i19, i20, i18);
                                    i21 = i57 + 1;
                                    stackEntryArr[i57] = new StackEntry(iSsSubstringPartition, i50, i20, i18);
                                    i20++;
                                    iSsLog = ssLog(i54);
                                }
                            }
                            i22 = i17;
                            i19 = i50;
                            iSsLog = i18;
                        } else {
                            int i58 = i51 - iSsSubstringPartition3;
                            if (i52 <= i58) {
                                int i59 = i21 + 1;
                                stackEntryArr[i21] = new StackEntry(iSsSubstringPartition3, i51, i20 + 1, ssLog(i58));
                                i21 = i59 + 1;
                                stackEntryArr[i59] = new StackEntry(iSsSubstringPartition, i50, i20, i27);
                            } else if (i53 <= i58) {
                                int i60 = i21 + 1;
                                stackEntryArr[i21] = new StackEntry(iSsSubstringPartition, i50, i20, i27);
                                i21 = i60 + 1;
                                stackEntryArr[i60] = new StackEntry(iSsSubstringPartition3, i51, i20 + 1, ssLog(i58));
                            } else {
                                int i61 = i21 + 1;
                                stackEntryArr[i21] = new StackEntry(iSsSubstringPartition, i50, i20, i27);
                                i21 = i61 + 1;
                                stackEntryArr[i61] = new StackEntry(i51, i19, i20, i27);
                                i20++;
                                iSsLog = ssLog(i58);
                                bzip2DivSufSort = this;
                            }
                            bzip2DivSufSort = this;
                            iSsSubstringPartition = i51;
                            iSsLog = i27;
                        }
                        i19 = i51;
                        iSsSubstringPartition = iSsSubstringPartition3;
                    } else {
                        i17 = i22;
                        int i62 = i27 + 1;
                        if ((bArr[(iArr[iArr[iSsSubstringPartition] + i10] + i20) - 1] & 255) < i33) {
                            bzip2DivSufSort = this;
                            iSsSubstringPartition = bzip2DivSufSort.ssSubstringPartition(i10, iSsSubstringPartition, i19, i20);
                            iSsLog = ssLog(i19 - iSsSubstringPartition);
                        } else {
                            bzip2DivSufSort = this;
                            iSsLog = i62;
                        }
                        i20++;
                    }
                    i22 = i17;
                }
            }
        }
    }

    private int ssPivot(int i10, int i11, int i12, int i13) {
        int i14 = i13 - i12;
        int i15 = i12 + (i14 / 2);
        if (i14 <= 512) {
            if (i14 <= 32) {
                return ssMedian3(i10, i11, i12, i15, i13 - 1);
            }
            int i16 = i14 >> 2;
            int i17 = i13 - 1;
            return ssMedian5(i10, i11, i12, i12 + i16, i15, i17 - i16, i17);
        }
        int i18 = i14 >> 3;
        int i19 = i18 << 1;
        int i20 = i13 - 1;
        return ssMedian3(i10, i11, ssMedian3(i10, i11, i12, i12 + i18, i12 + i19), ssMedian3(i10, i11, i15 - i18, i15, i15 + i18), ssMedian3(i10, i11, i20 - i19, i20 - i18, i20));
    }

    private int ssSubstringPartition(int i10, int i11, int i12, int i13) {
        int i14;
        int[] iArr = this.SA;
        int i15 = i11 - 1;
        while (true) {
            i15++;
            if (i15 < i12) {
                int i16 = iArr[i15];
                if (iArr[i10 + i16] + i13 >= iArr[i10 + i16 + 1] + 1) {
                    iArr[i15] = ~i16;
                }
            }
            do {
                i12--;
                if (i15 >= i12) {
                    break;
                }
                i14 = iArr[i12];
            } while (iArr[i10 + i14] + i13 < iArr[i14 + i10 + 1] + 1);
            if (i12 <= i15) {
                break;
            }
            int i17 = ~iArr[i12];
            iArr[i12] = iArr[i15];
            iArr[i15] = i17;
        }
        if (i11 < i15) {
            iArr[i11] = ~iArr[i11];
        }
        return i15;
    }

    private void subStringSort(int i10, int i11, int i12, int[] iArr, int i13, int i14, int i15, boolean z10, int i16) {
        int i17;
        int i18;
        int[] iArr2;
        int[] iArr3 = this.SA;
        int i19 = z10 ? i11 + 1 : i11;
        int i20 = i19;
        int i21 = 0;
        while (true) {
            int i22 = i20 + 1024;
            if (i22 >= i12) {
                break;
            }
            ssMultiKeyIntroSort(i10, i20, i22, i15);
            int i23 = i12 - i22;
            if (i23 <= i14) {
                iArr2 = iArr;
                i18 = i13;
                i17 = i14;
            } else {
                i17 = i23;
                i18 = i22;
                iArr2 = iArr3;
            }
            int i24 = i20;
            int i25 = i21;
            int i26 = 1024;
            while ((i25 & 1) != 0) {
                int i27 = i24 - i26;
                ssMerge(i10, i27, i24, i24 + i26, iArr2, i18, i17, i15);
                i26 <<= 1;
                i25 >>>= 1;
                i24 = i27;
                i22 = i22;
            }
            i21++;
            i20 = i22;
        }
        ssMultiKeyIntroSort(i10, i20, i12, i15);
        int i28 = i20;
        int i29 = 1024;
        for (int i30 = i21; i30 != 0; i30 >>= 1) {
            if ((i30 & 1) != 0) {
                int i31 = i28 - i29;
                ssMerge(i10, i31, i28, i12, iArr, i13, i14, i15);
                i28 = i31;
            }
            i29 <<= 1;
        }
        if (z10) {
            int i32 = iArr3[i19 - 1];
            int iSsCompareLast = 1;
            while (i19 < i12) {
                int i33 = iArr3[i19];
                if (i33 >= 0 && (iSsCompareLast = ssCompareLast(i10, i10 + i32, i10 + i33, i15, i16)) <= 0) {
                    break;
                }
                iArr3[i19 - 1] = iArr3[i19];
                i19++;
            }
            if (iSsCompareLast == 0) {
                iArr3[i19] = ~iArr3[i19];
            }
            iArr3[i19 - 1] = i32;
        }
    }

    private static void swapElements(int[] iArr, int i10, int[] iArr2, int i11) {
        int i12 = iArr[i10];
        iArr[i10] = iArr2[i11];
        iArr2[i11] = i12;
    }

    private void trCopy(int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        int[] iArr = this.SA;
        int i17 = i14 - 1;
        int i18 = i13 - 1;
        while (i12 <= i18) {
            int i19 = iArr[i12] - i16;
            if (i19 < 0) {
                i19 += i11 - i10;
            }
            int i20 = i10 + i19;
            if (iArr[i20] == i17) {
                i18++;
                iArr[i18] = i19;
                iArr[i20] = i18;
            }
            i12++;
        }
        int i21 = i15 - 1;
        int i22 = i18 + 1;
        while (i22 < i14) {
            int i23 = iArr[i21] - i16;
            if (i23 < 0) {
                i23 += i11 - i10;
            }
            int i24 = i10 + i23;
            if (iArr[i24] == i17) {
                i14--;
                iArr[i14] = i23;
                iArr[i24] = i14;
            }
            i21--;
        }
    }

    private void trFixdown(int i10, int i11, int i12, int i13, int i14, int i15) {
        int[] iArr = this.SA;
        int i16 = iArr[i13 + i14];
        int iTrGetC = trGetC(i10, i11, i12, i16);
        while (true) {
            int i17 = (i14 * 2) + 1;
            if (i17 >= i15) {
                break;
            }
            int i18 = i17 + 1;
            int iTrGetC2 = trGetC(i10, i11, i12, iArr[i13 + i17]);
            int iTrGetC3 = trGetC(i10, i11, i12, iArr[i13 + i18]);
            if (iTrGetC2 < iTrGetC3) {
                i17 = i18;
                iTrGetC2 = iTrGetC3;
            }
            if (iTrGetC2 <= iTrGetC) {
                break;
            }
            iArr[i14 + i13] = iArr[i13 + i17];
            i14 = i17;
        }
        iArr[i13 + i14] = i16;
    }

    private int trGetC(int i10, int i11, int i12, int i13) {
        int i14 = i11 + i13;
        return i14 < i12 ? this.SA[i14] : this.SA[i10 + (((i11 - i10) + i13) % (i12 - i10))];
    }

    private void trHeapSort(int i10, int i11, int i12, int i13, int i14) {
        int i15;
        int[] iArr = this.SA;
        int i16 = i14 % 2;
        if (i16 == 0) {
            int i17 = i14 - 1;
            int i18 = (i17 / 2) + i13;
            int i19 = i13 + i17;
            if (trGetC(i10, i11, i12, iArr[i18]) < trGetC(i10, i11, i12, iArr[i19])) {
                swapElements(iArr, i19, iArr, i18);
            }
            i15 = i17;
        } else {
            i15 = i14;
        }
        for (int i20 = (i15 / 2) - 1; i20 >= 0; i20--) {
            trFixdown(i10, i11, i12, i13, i20, i15);
        }
        if (i16 == 0) {
            swapElements(iArr, i13, iArr, i13 + i15);
            trFixdown(i10, i11, i12, i13, 0, i15);
        }
        for (int i21 = i15 - 1; i21 > 0; i21--) {
            int i22 = iArr[i13];
            int i23 = i13 + i21;
            iArr[i13] = iArr[i23];
            trFixdown(i10, i11, i12, i13, 0, i21);
            iArr[i23] = i22;
        }
    }

    private void trInsertionSort(int i10, int i11, int i12, int i13, int i14) {
        int iTrGetC;
        int[] iArr = this.SA;
        for (int i15 = i13 + 1; i15 < i14; i15++) {
            int i16 = iArr[i15];
            int i17 = i15 - 1;
            do {
                iTrGetC = trGetC(i10, i11, i12, i16) - trGetC(i10, i11, i12, iArr[i17]);
                if (iTrGetC >= 0) {
                    break;
                }
                do {
                    iArr[i17 + 1] = iArr[i17];
                    i17--;
                    if (i13 > i17) {
                        break;
                    }
                } while (iArr[i17] < 0);
            } while (i17 >= i13);
            if (iTrGetC == 0) {
                iArr[i17] = ~iArr[i17];
            }
            iArr[i17 + 1] = i16;
        }
    }

    private void trIntroSort(int i10, int i11, int i12, int i13, int i14, TRBudget tRBudget, int i15) {
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int iTrLog;
        int i21;
        int i22;
        int iTrGetC;
        int iTrGetC2;
        int i23;
        int i24;
        int i25;
        int[] iArr;
        int i26;
        this = this;
        int i27 = i10;
        int[] iArr2 = this.SA;
        StackEntry[] stackEntryArr = new StackEntry[64];
        int iTrLog2 = trLog(i14 - i13);
        int i28 = i11;
        int i29 = i13;
        i29 = i14;
        int i30 = 0;
        int i31 = 0;
        while (true) {
            if (iTrLog2 >= 0) {
                i16 = i30;
                i21 = i29;
                i29 = i29;
                int i32 = i29 - i21;
                if (i32 > 8) {
                    int i33 = iTrLog2 - 1;
                    if (iTrLog2 != 0) {
                        this = this;
                        i29 = i21;
                        swapElements(iArr2, i29, iArr2, trPivot(i10, i28, i12, i21, i29));
                        int iTrGetC3 = this.trGetC(i27, i28, i12, iArr2[i29]);
                        int i34 = i29 + 1;
                        while (true) {
                            if (i34 >= i29) {
                                iTrGetC = i31;
                                break;
                            }
                            iTrGetC = this.trGetC(i27, i28, i12, iArr2[i34]);
                            if (iTrGetC != iTrGetC3) {
                                break;
                            }
                            i34++;
                            i31 = iTrGetC;
                        }
                        if (i34 >= i29 || iTrGetC >= iTrGetC3) {
                            iTrGetC2 = iTrGetC;
                            i23 = i34;
                        } else {
                            iTrGetC2 = iTrGetC;
                            int i35 = 1;
                            i23 = i34;
                            while (true) {
                                i34 += i35;
                                if (i34 >= i29 || (iTrGetC2 = this.trGetC(i27, i28, i12, iArr2[i34])) > iTrGetC3) {
                                    break;
                                }
                                if (iTrGetC2 == iTrGetC3) {
                                    swapElements(iArr2, i34, iArr2, i23);
                                    i23++;
                                }
                                i35 = 1;
                            }
                        }
                        int i36 = i29 - 1;
                        while (i34 < i36) {
                            iTrGetC2 = this.trGetC(i27, i28, i12, iArr2[i36]);
                            if (iTrGetC2 != iTrGetC3) {
                                break;
                            } else {
                                i36--;
                            }
                        }
                        if (i34 >= i36 || iTrGetC2 <= iTrGetC3) {
                            i24 = i23;
                            i31 = iTrGetC2;
                            i25 = i36;
                        } else {
                            int i37 = i23;
                            int i38 = i36;
                            while (true) {
                                i36--;
                                if (i34 >= i36 || (iTrGetC2 = this.trGetC(i27, i28, i12, iArr2[i36])) < iTrGetC3) {
                                    break;
                                } else if (iTrGetC2 == iTrGetC3) {
                                    swapElements(iArr2, i36, iArr2, i38);
                                    i38--;
                                }
                            }
                            i31 = iTrGetC2;
                            i25 = i38;
                            i24 = i37;
                        }
                        while (i34 < i36) {
                            swapElements(iArr2, i34, iArr2, i36);
                            while (true) {
                                i34++;
                                int i39 = i36;
                                if (i34 >= i36) {
                                    break;
                                }
                                int iTrGetC4 = this.trGetC(i27, i28, i12, iArr2[i34]);
                                if (iTrGetC4 > iTrGetC3) {
                                    i31 = iTrGetC4;
                                    i36 = i39;
                                    break;
                                } else {
                                    if (iTrGetC4 == iTrGetC3) {
                                        swapElements(iArr2, i34, iArr2, i24);
                                        i24++;
                                    }
                                    i31 = iTrGetC4;
                                    i36 = i39;
                                }
                            }
                            while (true) {
                                i36--;
                                int i40 = i34;
                                if (i34 >= i36) {
                                    break;
                                }
                                int iTrGetC5 = this.trGetC(i27, i28, i12, iArr2[i36]);
                                if (iTrGetC5 < iTrGetC3) {
                                    i31 = iTrGetC5;
                                    i34 = i40;
                                    break;
                                } else {
                                    if (iTrGetC5 == iTrGetC3) {
                                        swapElements(iArr2, i36, iArr2, i25);
                                        i25--;
                                    }
                                    i31 = iTrGetC5;
                                    i34 = i40;
                                }
                            }
                        }
                        if (i24 <= i25) {
                            int i41 = i34 - 1;
                            int i42 = i24 - i29;
                            int i43 = i34 - i24;
                            if (i42 > i43) {
                                i42 = i43;
                            }
                            int i44 = i34;
                            int i45 = i34 - i42;
                            int i46 = i42;
                            int i47 = i29;
                            while (i46 > 0) {
                                swapElements(iArr2, i47, iArr2, i45);
                                i46--;
                                i47++;
                                i45++;
                            }
                            int i48 = i25 - i41;
                            int i49 = (i29 - i25) - 1;
                            if (i48 <= i49) {
                                i49 = i48;
                            }
                            int i50 = i49;
                            int i51 = i29 - i49;
                            int i52 = i44;
                            while (i50 > 0) {
                                swapElements(iArr2, i52, iArr2, i51);
                                i50--;
                                i52++;
                                i51++;
                            }
                            i29 += i43;
                            int i53 = i29 - i48;
                            iTrLog2 = iArr2[iArr2[i29] + i27] != iTrGetC3 ? trLog(i53 - i29) : -1;
                            int i54 = i29 - 1;
                            for (int i55 = i29; i55 < i29; i55++) {
                                iArr2[iArr2[i55] + i27] = i54;
                            }
                            if (i53 < i29) {
                                int i56 = i53 - 1;
                                for (int i57 = i29; i57 < i53; i57++) {
                                    iArr2[iArr2[i57] + i27] = i56;
                                }
                            }
                            int i58 = i29 - i29;
                            int i59 = i29 - i53;
                            if (i58 <= i59) {
                                int i60 = i53 - i29;
                                if (i59 <= i60) {
                                    iArr = iArr2;
                                    if (1 < i58) {
                                        int i61 = i16 + 1;
                                        stackEntryArr[i16] = new StackEntry(i28 + 1, i29, i53, iTrLog2);
                                        i26 = i33;
                                        stackEntryArr[i61] = new StackEntry(i28, i53, i29, i26);
                                        i30 = i61 + 1;
                                    } else {
                                        i26 = i33;
                                        if (1 < i59) {
                                            i30 = i16 + 1;
                                            stackEntryArr[i16] = new StackEntry(i28 + 1, i29, i53, iTrLog2);
                                            iTrLog2 = i26;
                                            iArr2 = iArr;
                                            i29 = i53;
                                        } else if (1 < i60) {
                                            i28++;
                                            i30 = i16;
                                            iArr2 = iArr;
                                            i29 = i53;
                                        } else {
                                            if (i16 == 0) {
                                                return;
                                            }
                                            i30 = i16 - 1;
                                            StackEntry stackEntry = stackEntryArr[i30];
                                            i28 = stackEntry.f91626a;
                                            i29 = stackEntry.f91627b;
                                            i29 = stackEntry.f91628c;
                                            iTrLog2 = stackEntry.f91629d;
                                        }
                                    }
                                    iArr2 = iArr;
                                } else {
                                    iArr = iArr2;
                                    i26 = i33;
                                    if (i58 <= i60) {
                                        if (1 < i58) {
                                            int i62 = i16 + 1;
                                            stackEntryArr[i16] = new StackEntry(i28, i53, i29, i26);
                                            stackEntryArr[i62] = new StackEntry(i28 + 1, i29, i53, iTrLog2);
                                            i30 = i62 + 1;
                                            iTrLog2 = i26;
                                            iArr2 = iArr;
                                        } else if (1 < i60) {
                                            i30 = i16 + 1;
                                            stackEntryArr[i16] = new StackEntry(i28, i53, i29, i26);
                                            i28++;
                                        } else {
                                            iTrLog2 = i26;
                                            i30 = i16;
                                            iArr2 = iArr;
                                            i29 = i53;
                                        }
                                    } else if (1 < i60) {
                                        int i63 = i16 + 1;
                                        stackEntryArr[i16] = new StackEntry(i28, i53, i29, i26);
                                        stackEntryArr[i63] = new StackEntry(i28, i29, i29, i26);
                                        i28++;
                                        i30 = i63 + 1;
                                    } else {
                                        i30 = i16 + 1;
                                        stackEntryArr[i16] = new StackEntry(i28, i53, i29, i26);
                                    }
                                    iArr2 = iArr;
                                    i29 = i53;
                                }
                                iTrLog2 = i26;
                                iArr2 = iArr;
                            } else {
                                iArr = iArr2;
                                i26 = i33;
                                int i64 = i53 - i29;
                                if (i58 <= i64) {
                                    if (1 < i59) {
                                        int i65 = i16 + 1;
                                        stackEntryArr[i16] = new StackEntry(i28 + 1, i29, i53, iTrLog2);
                                        stackEntryArr[i65] = new StackEntry(i28, i29, i29, i26);
                                        i27 = i10;
                                        i30 = i65 + 1;
                                    } else if (1 < i58) {
                                        i30 = i16 + 1;
                                        stackEntryArr[i16] = new StackEntry(i28 + 1, i29, i53, iTrLog2);
                                        i27 = i10;
                                        iTrLog2 = i26;
                                        iArr2 = iArr;
                                    } else if (1 < i64) {
                                        i28++;
                                        i27 = i10;
                                        i30 = i16;
                                        iArr2 = iArr;
                                        i29 = i53;
                                    } else {
                                        i30 = i16 + 1;
                                        stackEntryArr[i16] = new StackEntry(i28, i29, i29, i26);
                                        i27 = i10;
                                        iTrLog2 = i26;
                                    }
                                } else if (i59 <= i64) {
                                    if (1 < i59) {
                                        int i66 = i16 + 1;
                                        stackEntryArr[i16] = new StackEntry(i28, i29, i29, i26);
                                        stackEntryArr[i66] = new StackEntry(i28 + 1, i29, i53, iTrLog2);
                                        i27 = i10;
                                        i30 = i66 + 1;
                                    } else if (1 < i64) {
                                        i30 = i16 + 1;
                                        stackEntryArr[i16] = new StackEntry(i28, i29, i29, i26);
                                        i28++;
                                        i27 = i10;
                                        iArr2 = iArr;
                                        i29 = i53;
                                    } else {
                                        i27 = i10;
                                        i29 = i29;
                                        iTrLog2 = i26;
                                        i30 = i16;
                                        iArr2 = iArr;
                                    }
                                } else if (1 < i64) {
                                    int i67 = i16 + 1;
                                    stackEntryArr[i16] = new StackEntry(i28, i29, i29, i26);
                                    stackEntryArr[i67] = new StackEntry(i28, i53, i29, i26);
                                    i28++;
                                    i27 = i10;
                                    i30 = i67 + 1;
                                    iArr2 = iArr;
                                    i29 = i53;
                                } else {
                                    i30 = i16 + 1;
                                    stackEntryArr[i16] = new StackEntry(i28, i29, i29, i26);
                                    i27 = i10;
                                }
                                iTrLog2 = i26;
                                iArr2 = iArr;
                                i29 = i53;
                            }
                        } else {
                            iArr = iArr2;
                            if (!tRBudget.update(i15, i32)) {
                                break;
                            }
                            iTrLog2 = i33 + 1;
                            i28++;
                            i27 = i10;
                            i30 = i16;
                        }
                        iArr2 = iArr;
                    } else if (tRBudget.update(i15, i32)) {
                        trHeapSort(i10, i28, i12, i21, i32);
                        int i68 = i29 - 1;
                        while (i21 < i68) {
                            int i69 = i21;
                            int iTrGetC6 = trGetC(i27, i28, i12, iArr2[i68]);
                            i68--;
                            while (i69 <= i68 && trGetC(i27, i28, i12, iArr2[i68]) == iTrGetC6) {
                                iArr2[i68] = ~iArr2[i68];
                                i68--;
                            }
                            i31 = iTrGetC6;
                            i21 = i69;
                        }
                        i29 = i21;
                        iTrLog2 = -3;
                        this = this;
                        i29 = i29;
                        i30 = i16;
                    }
                    i29 = i29;
                } else if (tRBudget.update(i15, i32)) {
                    i29 = i29;
                    trInsertionSort(i10, i28, i12, i21, i29);
                    iTrLog2 = -3;
                    i29 = i21;
                    i30 = i16;
                }
                this = this;
                break;
            }
            if (iTrLog2 != -1) {
                i16 = i30;
                i21 = i29;
                int i70 = i29;
                if (iTrLog2 == -2) {
                    int i71 = i16 - 1;
                    StackEntry stackEntry2 = stackEntryArr[i71];
                    trCopy(i10, i12, i21, stackEntry2.f91627b, stackEntry2.f91628c, i70, i28 - i27);
                    if (i71 == 0) {
                        return;
                    }
                    i30 = i71 - 1;
                    StackEntry stackEntry3 = stackEntryArr[i30];
                    i28 = stackEntry3.f91626a;
                    i29 = stackEntry3.f91627b;
                    i29 = stackEntry3.f91628c;
                    iTrLog2 = stackEntry3.f91629d;
                } else {
                    if (iArr2[i21] >= 0) {
                        do {
                            iArr2[iArr2[i21] + i27] = i21;
                            i21++;
                            if (i21 >= i70) {
                                break;
                            }
                        } while (iArr2[i21] >= 0);
                    }
                    if (i21 < i70) {
                        int i72 = i21;
                        do {
                            iArr2[i72] = ~iArr2[i72];
                            i72++;
                            i22 = iArr2[i72];
                        } while (i22 < 0);
                        int iTrLog3 = iArr2[i27 + i22] != iArr2[i22 + i28] ? trLog((i72 - i21) + 1) : -1;
                        i29 = i72 + 1;
                        if (i29 < i70) {
                            int i73 = i29 - 1;
                            for (int i74 = i21; i74 < i29; i74++) {
                                iArr2[iArr2[i74] + i27] = i73;
                            }
                        }
                        int i75 = i70 - i29;
                        if (i29 - i21 <= i75) {
                            i30 = i16 + 1;
                            stackEntryArr[i16] = new StackEntry(i28, i29, i70, -3);
                            i28++;
                            this = this;
                            iTrLog2 = iTrLog3;
                            i29 = i21;
                        } else if (1 < i75) {
                            i30 = i16 + 1;
                            stackEntryArr[i16] = new StackEntry(i28 + 1, i21, i29, iTrLog3);
                            iTrLog2 = -3;
                            this = this;
                            i29 = i29;
                            i29 = i70;
                        } else {
                            i28++;
                            iTrLog2 = iTrLog3;
                            i29 = i21;
                            i30 = i16;
                        }
                    } else {
                        if (i16 == 0) {
                            return;
                        }
                        i30 = i16 - 1;
                        StackEntry stackEntry4 = stackEntryArr[i30];
                        i28 = stackEntry4.f91626a;
                        i29 = stackEntry4.f91627b;
                        i29 = stackEntry4.f91628c;
                        iTrLog2 = stackEntry4.f91629d;
                    }
                }
                this = this;
            } else {
                if (!tRBudget.update(i15, i29 - i29)) {
                    i16 = i30;
                    this = this;
                    break;
                }
                int i76 = i28 - 1;
                int i77 = i30;
                int i78 = i29;
                int i79 = i29;
                PartitionResult partitionResultTrPartition = trPartition(i10, i76, i12, i29, i29, i29 - 1);
                int i80 = partitionResultTrPartition.first;
                int i81 = partitionResultTrPartition.last;
                if (i79 < i80 || i81 < i78) {
                    if (i80 < i78) {
                        int i82 = i80 - 1;
                        for (int i83 = i79; i83 < i80; i83++) {
                            iArr2[iArr2[i83] + i27] = i82;
                        }
                    }
                    if (i81 < i78) {
                        int i84 = i81 - 1;
                        for (int i85 = i80; i85 < i81; i85++) {
                            iArr2[iArr2[i85] + i27] = i84;
                        }
                    }
                    int i86 = i77 + 1;
                    stackEntryArr[i77] = new StackEntry(0, i80, i81, 0);
                    int i87 = i86 + 1;
                    stackEntryArr[i86] = new StackEntry(i76, i79, i78, -2);
                    int i88 = i80 - i79;
                    int i89 = i78 - i81;
                    if (i88 <= i89) {
                        if (1 < i88) {
                            stackEntryArr[i87] = new StackEntry(i28, i81, i78, trLog(i89));
                            iTrLog2 = trLog(i88);
                            i30 = i87 + 1;
                            i29 = i79;
                        } else if (1 < i89) {
                            iTrLog = trLog(i89);
                            i30 = i87;
                            i29 = i81;
                            iTrLog2 = iTrLog;
                            i80 = i78;
                        } else {
                            if (i87 == 0) {
                                return;
                            }
                            i17 = i87 - 1;
                            StackEntry stackEntry5 = stackEntryArr[i17];
                            i18 = stackEntry5.f91626a;
                            i19 = stackEntry5.f91627b;
                            i20 = stackEntry5.f91628c;
                            iTrLog2 = stackEntry5.f91629d;
                            i28 = i18;
                            i29 = i19;
                            i80 = i20;
                            i30 = i17;
                        }
                    } else if (1 < i89) {
                        stackEntryArr[i87] = new StackEntry(i28, i79, i80, trLog(i88));
                        iTrLog = trLog(i89);
                        i30 = i87 + 1;
                        i29 = i81;
                        iTrLog2 = iTrLog;
                        i80 = i78;
                    } else if (1 < i88) {
                        iTrLog2 = trLog(i88);
                        i30 = i87;
                        i29 = i79;
                    } else {
                        if (i87 == 0) {
                            return;
                        }
                        i17 = i87 - 1;
                        StackEntry stackEntry6 = stackEntryArr[i17];
                        i18 = stackEntry6.f91626a;
                        i19 = stackEntry6.f91627b;
                        i20 = stackEntry6.f91628c;
                        iTrLog2 = stackEntry6.f91629d;
                        i28 = i18;
                        i29 = i19;
                        i80 = i20;
                        i30 = i17;
                    }
                } else {
                    while (i79 < i78) {
                        iArr2[iArr2[i79] + i27] = i79;
                        i79++;
                    }
                    if (i77 == 0) {
                        return;
                    }
                    i30 = i77 - 1;
                    StackEntry stackEntry7 = stackEntryArr[i30];
                    int i90 = stackEntry7.f91626a;
                    int i91 = stackEntry7.f91627b;
                    int i92 = stackEntry7.f91628c;
                    iTrLog2 = stackEntry7.f91629d;
                    i28 = i90;
                    i29 = i91;
                    i80 = i92;
                }
                this = this;
                i29 = i80;
            }
        }
        for (int i93 = 0; i93 < i16; i93++) {
            StackEntry stackEntry8 = stackEntryArr[i93];
            if (stackEntry8.f91629d == -3) {
                this.lsUpdateGroup(i10, stackEntry8.f91627b, stackEntry8.f91628c);
            }
        }
    }

    private static int trLog(int i10) {
        if (((-65536) & i10) != 0) {
            return ((-16777216) & i10) != 0 ? LOG_2_TABLE[(i10 >> 24) & 255] + 24 : LOG_2_TABLE[(i10 >> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SWITCH_CACHE_TIME];
        }
        return (65280 & i10) != 0 ? LOG_2_TABLE[(i10 >> 8) & 255] + 8 : LOG_2_TABLE[i10 & 255];
    }

    private int trMedian3(int i10, int i11, int i12, int i13, int i14, int i15) {
        int[] iArr = this.SA;
        int iTrGetC = trGetC(i10, i11, i12, iArr[i13]);
        int iTrGetC2 = trGetC(i10, i11, i12, iArr[i14]);
        int iTrGetC3 = trGetC(i10, i11, i12, iArr[i15]);
        if (iTrGetC <= iTrGetC2) {
            i14 = i13;
            i13 = i14;
            iTrGetC2 = iTrGetC;
            iTrGetC = iTrGetC2;
        }
        if (iTrGetC > iTrGetC3) {
            return iTrGetC2 > iTrGetC3 ? i14 : i15;
        }
        return i13;
    }

    private int trMedian5(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        int[] iArr = this.SA;
        int iTrGetC = trGetC(i10, i11, i12, iArr[i13]);
        int iTrGetC2 = trGetC(i10, i11, i12, iArr[i14]);
        int iTrGetC3 = trGetC(i10, i11, i12, iArr[i15]);
        int iTrGetC4 = trGetC(i10, i11, i12, iArr[i16]);
        int iTrGetC5 = trGetC(i10, i11, i12, iArr[i17]);
        if (iTrGetC2 > iTrGetC3) {
            i15 = i14;
            i14 = i15;
            iTrGetC3 = iTrGetC2;
            iTrGetC2 = iTrGetC3;
        }
        if (iTrGetC4 > iTrGetC5) {
            iTrGetC4 = iTrGetC5;
            iTrGetC5 = iTrGetC4;
        } else {
            i17 = i16;
            i16 = i17;
        }
        if (iTrGetC2 > iTrGetC4) {
            int i18 = iTrGetC3;
            iTrGetC3 = iTrGetC5;
            iTrGetC5 = i18;
            int i19 = i16;
            i16 = i15;
            i15 = i19;
        } else {
            i14 = i17;
            iTrGetC2 = iTrGetC4;
        }
        if (iTrGetC > iTrGetC3) {
            int i20 = i15;
            i15 = i13;
            i13 = i20;
            int i21 = iTrGetC3;
            iTrGetC3 = iTrGetC;
            iTrGetC = i21;
        }
        if (iTrGetC > iTrGetC2) {
            i14 = i13;
            iTrGetC2 = iTrGetC;
        } else {
            i16 = i15;
            iTrGetC5 = iTrGetC3;
        }
        return iTrGetC5 > iTrGetC2 ? i14 : i16;
    }

    private PartitionResult trPartition(int i10, int i11, int i12, int i13, int i14, int i15) {
        int i16;
        int i17;
        int iTrGetC;
        int iTrGetC2;
        int iTrGetC3;
        int[] iArr = this.SA;
        int iTrGetC4 = 0;
        int i18 = i13;
        while (i18 < i14) {
            iTrGetC4 = trGetC(i10, i11, i12, iArr[i18]);
            if (iTrGetC4 != i15) {
                break;
            }
            i18++;
        }
        if (i18 >= i14 || iTrGetC4 >= i15) {
            i16 = i18;
        } else {
            i16 = i18;
            while (true) {
                i18++;
                if (i18 >= i14 || (iTrGetC4 = trGetC(i10, i11, i12, iArr[i18])) > i15) {
                    break;
                }
                if (iTrGetC4 == i15) {
                    swapElements(iArr, i18, iArr, i16);
                    i16++;
                }
            }
        }
        int i19 = i14 - 1;
        while (i18 < i19) {
            iTrGetC4 = trGetC(i10, i11, i12, iArr[i19]);
            if (iTrGetC4 != i15) {
                break;
            }
            i19--;
        }
        if (i18 >= i19 || iTrGetC4 <= i15) {
            i17 = i19;
        } else {
            i17 = i19;
            while (true) {
                i19--;
                if (i18 >= i19 || (iTrGetC3 = trGetC(i10, i11, i12, iArr[i19])) < i15) {
                    break;
                }
                if (iTrGetC3 == i15) {
                    swapElements(iArr, i19, iArr, i17);
                    i17--;
                }
            }
        }
        while (i18 < i19) {
            swapElements(iArr, i18, iArr, i19);
            while (true) {
                i18++;
                if (i18 >= i19 || (iTrGetC2 = trGetC(i10, i11, i12, iArr[i18])) > i15) {
                    break;
                }
                if (iTrGetC2 == i15) {
                    swapElements(iArr, i18, iArr, i16);
                    i16++;
                }
            }
            while (true) {
                i19--;
                if (i18 >= i19 || (iTrGetC = trGetC(i10, i11, i12, iArr[i19])) < i15) {
                    break;
                }
                if (iTrGetC == i15) {
                    swapElements(iArr, i19, iArr, i17);
                    i17--;
                }
            }
        }
        if (i16 <= i17) {
            int i20 = i18 - 1;
            int i21 = i16 - i13;
            int i22 = i18 - i16;
            if (i21 > i22) {
                i21 = i22;
            }
            int i23 = i18 - i21;
            int i24 = i13;
            while (i21 > 0) {
                swapElements(iArr, i24, iArr, i23);
                i21--;
                i24++;
                i23++;
            }
            int i25 = i17 - i20;
            int i26 = (i14 - i17) - 1;
            if (i25 <= i26) {
                i26 = i25;
            }
            int i27 = i14 - i26;
            while (i26 > 0) {
                swapElements(iArr, i18, iArr, i27);
                i26--;
                i18++;
                i27++;
            }
            i13 += i22;
            i14 -= i25;
        }
        return new PartitionResult(i13, i14);
    }

    private int trPivot(int i10, int i11, int i12, int i13, int i14) {
        int i15 = i14 - i13;
        int i16 = i13 + (i15 / 2);
        if (i15 <= 512) {
            if (i15 <= 32) {
                return trMedian3(i10, i11, i12, i13, i16, i14 - 1);
            }
            int i17 = i15 >> 2;
            int i18 = i14 - 1;
            return trMedian5(i10, i11, i12, i13, i13 + i17, i16, i18 - i17, i18);
        }
        int i19 = i15 >> 3;
        int i20 = i19 << 1;
        int i21 = i14 - 1;
        return trMedian3(i10, i11, i12, trMedian3(i10, i11, i12, i13, i13 + i19, i13 + i20), trMedian3(i10, i11, i12, i16 - i19, i16, i16 + i19), trMedian3(i10, i11, i12, i21 - i20, i21 - i19, i21));
    }

    private void trSort(int i10, int i11, int i12) {
        int[] iArr = this.SA;
        if ((-i11) < iArr[0]) {
            TRBudget tRBudget = new TRBudget(i11, ((trLog(i11) * 2) / 3) + 1);
            int i13 = 0;
            do {
                int i14 = iArr[i13];
                if (i14 < 0) {
                    i13 -= i14;
                } else {
                    int i15 = iArr[i10 + i14] + 1;
                    if (1 < i15 - i13) {
                        trIntroSort(i10, i10 + i12, i10 + i11, i13, i15, tRBudget, i11);
                        if (tRBudget.chance == 0) {
                            if (i13 > 0) {
                                iArr[0] = -i13;
                            }
                            lsSort(i10, i11, i12);
                            return;
                        }
                    }
                    i13 = i15;
                }
            } while (i13 < i11);
        }
    }

    public int bwt() {
        int[] iArr = this.SA;
        byte[] bArr = this.T;
        int i10 = this.f91625n;
        int[] iArr2 = new int[256];
        int[] iArr3 = new int[65536];
        if (i10 == 0) {
            return 0;
        }
        if (i10 == 1) {
            iArr[0] = bArr[0];
            return 0;
        }
        if (sortTypeBstar(iArr2, iArr3) > 0) {
            return constructBWT(iArr2, iArr3);
        }
        return 0;
    }
}
