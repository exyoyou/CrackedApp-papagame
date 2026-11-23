package com.tencent.stat.common;

/* JADX INFO: loaded from: classes2.dex */
class i extends h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f83901c = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f83902d = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f83903e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f83904f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int[] f83905g;

    public i(int i10, byte[] bArr) {
        this.f83899a = bArr;
        this.f83905g = (i10 & 8) == 0 ? f83901c : f83902d;
        this.f83903e = 0;
        this.f83904f = 0;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00d4  */
    public boolean a(byte[] bArr, int i10, int i11, boolean z10) {
        int i12 = this.f83903e;
        if (i12 == 6) {
            return false;
        }
        int i13 = i11 + i10;
        int i14 = this.f83904f;
        byte[] bArr2 = this.f83899a;
        int[] iArr = this.f83905g;
        int i15 = i14;
        int i16 = 0;
        int i17 = i12;
        int i18 = i10;
        while (i18 < i13) {
            if (i17 == 0) {
                while (true) {
                    int i19 = i18 + 4;
                    if (i19 > i13 || (i15 = (iArr[bArr[i18] & 255] << 18) | (iArr[bArr[i18 + 1] & 255] << 12) | (iArr[bArr[i18 + 2] & 255] << 6) | iArr[bArr[i18 + 3] & 255]) < 0) {
                        break;
                    }
                    bArr2[i16 + 2] = (byte) i15;
                    bArr2[i16 + 1] = (byte) (i15 >> 8);
                    bArr2[i16] = (byte) (i15 >> 16);
                    i16 += 3;
                    i18 = i19;
                }
                if (i18 >= i13) {
                    break;
                }
            }
            int i20 = i18 + 1;
            int i21 = iArr[bArr[i18] & 255];
            if (i17 != 0) {
                if (i17 != 1) {
                    if (i17 != 2) {
                        if (i17 != 3) {
                            if (i17 != 4) {
                                if (i17 == 5 && i21 != -1) {
                                    this.f83903e = 6;
                                    return false;
                                }
                            } else if (i21 == -2) {
                                i17++;
                            } else if (i21 != -1) {
                                this.f83903e = 6;
                                return false;
                            }
                        } else if (i21 >= 0) {
                            int i22 = i21 | (i15 << 6);
                            bArr2[i16 + 2] = (byte) i22;
                            bArr2[i16 + 1] = (byte) (i22 >> 8);
                            bArr2[i16] = (byte) (i22 >> 16);
                            i16 += 3;
                            i15 = i22;
                            i17 = 0;
                        } else if (i21 == -2) {
                            bArr2[i16 + 1] = (byte) (i15 >> 2);
                            bArr2[i16] = (byte) (i15 >> 10);
                            i16 += 2;
                            i17 = 5;
                        } else if (i21 != -1) {
                            this.f83903e = 6;
                            return false;
                        }
                    } else if (i21 >= 0) {
                        i21 |= i15 << 6;
                        i17++;
                        i15 = i21;
                    } else if (i21 == -2) {
                        bArr2[i16] = (byte) (i15 >> 4);
                        i16++;
                        i17 = 4;
                    } else if (i21 != -1) {
                        this.f83903e = 6;
                        return false;
                    }
                } else if (i21 >= 0) {
                    i21 |= i15 << 6;
                    i17++;
                    i15 = i21;
                } else if (i21 != -1) {
                    this.f83903e = 6;
                    return false;
                }
            } else if (i21 >= 0) {
                i17++;
                i15 = i21;
            } else if (i21 != -1) {
                this.f83903e = 6;
                return false;
            }
            i18 = i20;
        }
        if (!z10) {
            this.f83903e = i17;
            this.f83904f = i15;
        } else {
            if (i17 == 1) {
                this.f83903e = 6;
                return false;
            }
            if (i17 == 2) {
                bArr2[i16] = (byte) (i15 >> 4);
                i16++;
            } else if (i17 == 3) {
                int i23 = i16 + 1;
                bArr2[i16] = (byte) (i15 >> 10);
                i16 = i23 + 1;
                bArr2[i23] = (byte) (i15 >> 2);
            } else if (i17 == 4) {
                this.f83903e = 6;
                return false;
            }
            this.f83903e = i17;
        }
        this.f83900b = i16;
        return true;
    }
}
