package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

/* JADX INFO: loaded from: classes5.dex */
public final class MonochromeRectangleDetector {
    private static final int MAX_MODULES = 32;
    private final BitMatrix image;

    public MonochromeRectangleDetector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0020  */
    /* JADX WARN: Code duplicated, block: B:40:0x0057  */
    /* JADX WARN: Code duplicated, block: B:67:0x002b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x0031 A[EDGE_INSN: B:68:0x0031->B:22:0x0031 BREAK  A[LOOP:1: B:13:0x001c->B:72:0x001c], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x0031 A[EDGE_INSN: B:69:0x0031->B:22:0x0031 BREAK  A[LOOP:1: B:13:0x001c->B:72:0x001c], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x0024 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x0031 A[EDGE_INSN: B:71:0x0031->B:22:0x0031 BREAK  A[LOOP:1: B:13:0x001c->B:72:0x001c], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x001c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:74:0x001c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x0068 A[EDGE_INSN: B:85:0x0068->B:47:0x0068 BREAK  A[LOOP:3: B:38:0x0053->B:90:0x0053], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x0062 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:87:0x0068 A[EDGE_INSN: B:87:0x0068->B:47:0x0068 BREAK  A[LOOP:3: B:38:0x0053->B:90:0x0053], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x005b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:89:0x0068 A[EDGE_INSN: B:89:0x0068->B:47:0x0068 BREAK  A[LOOP:3: B:38:0x0053->B:90:0x0053], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x0053 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x0053 A[SYNTHETIC] */
    private int[] blackWhiteRange(int i10, int i11, int i12, int i13, boolean z10) {
        int i14;
        BitMatrix bitMatrix;
        int i15;
        BitMatrix bitMatrix2;
        int i16 = (i12 + i13) >> 1;
        int i17 = i16;
        while (i17 >= i12) {
            BitMatrix bitMatrix3 = this.image;
            if (!z10) {
                if (!bitMatrix3.get(i10, i17)) {
                    i15 = i17;
                    while (true) {
                        i15--;
                        if (i15 >= i12) {
                            break;
                            break;
                        }
                        bitMatrix2 = this.image;
                        if (z10) {
                            if (bitMatrix2.get(i15, i10)) {
                                break;
                                break;
                            }
                        } else if (bitMatrix2.get(i10, i15)) {
                            break;
                            break;
                        }
                    }
                    int i18 = i17 - i15;
                    if (i15 < i12) {
                        break;
                    }
                    break;
                    break;
                }
                i17--;
            } else if (bitMatrix3.get(i17, i10)) {
                i17--;
            } else {
                i15 = i17;
                while (true) {
                    i15--;
                    if (i15 >= i12) {
                        break;
                    }
                    bitMatrix2 = this.image;
                    if (z10) {
                        if (bitMatrix2.get(i15, i10)) {
                            break;
                        }
                    } else if (bitMatrix2.get(i10, i15)) {
                        break;
                    }
                }
                int i19 = i17 - i15;
                if (i15 < i12 || i19 > i11) {
                    break;
                }
                i17 = i15;
            }
        }
        int i20 = i17 + 1;
        while (i16 < i13) {
            BitMatrix bitMatrix4 = this.image;
            if (!z10) {
                if (!bitMatrix4.get(i10, i16)) {
                    i14 = i16;
                    while (true) {
                        i14++;
                        if (i14 < i13) {
                            break;
                            break;
                        }
                        bitMatrix = this.image;
                        if (z10) {
                            if (bitMatrix.get(i14, i10)) {
                                break;
                                break;
                            }
                        } else if (bitMatrix.get(i10, i14)) {
                            break;
                            break;
                        }
                    }
                    int i21 = i14 - i16;
                    if (i14 >= i13) {
                        break;
                    }
                    break;
                    break;
                }
                i16++;
            } else if (bitMatrix4.get(i16, i10)) {
                i16++;
            } else {
                i14 = i16;
                while (true) {
                    i14++;
                    if (i14 < i13) {
                        break;
                    }
                    bitMatrix = this.image;
                    if (z10) {
                        if (bitMatrix.get(i14, i10)) {
                            break;
                        }
                    } else if (bitMatrix.get(i10, i14)) {
                        break;
                    }
                }
                int i22 = i14 - i16;
                if (i14 >= i13 || i22 > i11) {
                    break;
                }
                i16 = i14;
            }
        }
        int i23 = i16 - 1;
        if (i23 > i20) {
            return new int[]{i20, i23};
        }
        return null;
    }

    private ResultPoint findCornerFromCenter(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) throws NotFoundException {
        int[] iArr = null;
        int i19 = i10;
        int i20 = i14;
        while (i20 < i17 && i20 >= i16 && i19 < i13 && i19 >= i12) {
            int[] iArrBlackWhiteRange = i11 == 0 ? blackWhiteRange(i20, i18, i12, i13, true) : blackWhiteRange(i19, i18, i16, i17, false);
            if (iArrBlackWhiteRange == null) {
                if (iArr == null) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (i11 == 0) {
                    int i21 = i20 - i15;
                    int i22 = iArr[0];
                    if (i22 >= i10) {
                        return new ResultPoint(iArr[1], i21);
                    }
                    int i23 = iArr[1];
                    if (i23 > i10) {
                        return new ResultPoint(i15 > 0 ? i22 : i23, i21);
                    }
                    return new ResultPoint(i22, i21);
                }
                int i24 = i19 - i11;
                int i25 = iArr[0];
                if (i25 >= i14) {
                    return new ResultPoint(i24, iArr[1]);
                }
                int i26 = iArr[1];
                if (i26 > i14) {
                    return new ResultPoint(i24, i11 < 0 ? i25 : i26);
                }
                return new ResultPoint(i24, i25);
            }
            i20 += i15;
            i19 += i11;
            iArr = iArrBlackWhiteRange;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public ResultPoint[] detect() throws NotFoundException {
        int height = this.image.getHeight();
        int width = this.image.getWidth();
        int i10 = height >> 1;
        int i11 = width >> 1;
        int iMax = Math.max(1, height / 256);
        int iMax2 = Math.max(1, width / 256);
        int i12 = -iMax;
        int i13 = i11 >> 1;
        int y10 = ((int) findCornerFromCenter(i11, 0, 0, width, i10, i12, 0, height, i13).getY()) - 1;
        int i14 = i10 >> 1;
        ResultPoint resultPointFindCornerFromCenter = findCornerFromCenter(i11, -iMax2, 0, width, i10, 0, y10, height, i14);
        int x10 = ((int) resultPointFindCornerFromCenter.getX()) - 1;
        ResultPoint resultPointFindCornerFromCenter2 = findCornerFromCenter(i11, iMax2, x10, width, i10, 0, y10, height, i14);
        int x11 = ((int) resultPointFindCornerFromCenter2.getX()) + 1;
        ResultPoint resultPointFindCornerFromCenter3 = findCornerFromCenter(i11, 0, x10, x11, i10, iMax, y10, height, i13);
        return new ResultPoint[]{findCornerFromCenter(i11, 0, x10, x11, i10, i12, y10, ((int) resultPointFindCornerFromCenter3.getY()) + 1, i11 >> 2), resultPointFindCornerFromCenter, resultPointFindCornerFromCenter2, resultPointFindCornerFromCenter3};
    }
}
