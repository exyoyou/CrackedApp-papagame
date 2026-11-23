package com.google.zxing.qrcode.encoder;

/* JADX INFO: loaded from: classes5.dex */
final class MaskUtil {
    private MaskUtil() {
    }

    static int applyMaskPenaltyRule1(ByteMatrix byteMatrix) {
        return applyMaskPenaltyRule1Internal(byteMatrix, true) + applyMaskPenaltyRule1Internal(byteMatrix, false);
    }

    private static int applyMaskPenaltyRule1Internal(ByteMatrix byteMatrix, boolean z10) {
        int height = z10 ? byteMatrix.getHeight() : byteMatrix.getWidth();
        int width = z10 ? byteMatrix.getWidth() : byteMatrix.getHeight();
        byte[][] array = byteMatrix.getArray();
        byte b10 = -1;
        int i10 = 0;
        for (int i11 = 0; i11 < height; i11++) {
            int i12 = 0;
            for (int i13 = 0; i13 < width; i13++) {
                byte b11 = z10 ? array[i11][i13] : array[i13][i11];
                if (b11 == b10) {
                    i12++;
                    if (i12 == 5) {
                        i10 += 3;
                    } else if (i12 > 5) {
                        i10++;
                    }
                } else {
                    b10 = b11;
                    i12 = 1;
                }
            }
        }
        return i10;
    }

    static int applyMaskPenaltyRule2(ByteMatrix byteMatrix) {
        byte[][] array = byteMatrix.getArray();
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        int i10 = 0;
        for (int i11 = 0; i11 < height - 1; i11++) {
            int i12 = 0;
            while (i12 < width - 1) {
                byte[] bArr = array[i11];
                byte b10 = bArr[i12];
                int i13 = i12 + 1;
                if (b10 == bArr[i13]) {
                    byte[] bArr2 = array[i11 + 1];
                    if (b10 == bArr2[i12] && b10 == bArr2[i13]) {
                        i10 += 3;
                    }
                }
                i12 = i13;
            }
        }
        return i10;
    }

    static int applyMaskPenaltyRule3(ByteMatrix byteMatrix) {
        int i10;
        int i11;
        int i12;
        int i13;
        byte[][] array = byteMatrix.getArray();
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        int i14 = 0;
        for (int i15 = 0; i15 < height; i15++) {
            for (int i16 = 0; i16 < width; i16++) {
                int i17 = i16 + 6;
                if (i17 < width) {
                    byte[] bArr = array[i15];
                    if (bArr[i16] == 1 && bArr[i16 + 1] == 0 && bArr[i16 + 2] == 1 && bArr[i16 + 3] == 1 && bArr[i16 + 4] == 1 && bArr[i16 + 5] == 0 && bArr[i17] == 1 && (((i12 = i16 + 10) < width && bArr[i16 + 7] == 0 && bArr[i16 + 8] == 0 && bArr[i16 + 9] == 0 && bArr[i12] == 0) || ((i13 = i16 - 4) >= 0 && bArr[i16 - 1] == 0 && bArr[i16 - 2] == 0 && bArr[i16 - 3] == 0 && bArr[i13] == 0))) {
                        i14 += 40;
                    }
                }
                int i18 = i15 + 6;
                if (i18 < height && array[i15][i16] == 1 && array[i15 + 1][i16] == 0 && array[i15 + 2][i16] == 1 && array[i15 + 3][i16] == 1 && array[i15 + 4][i16] == 1 && array[i15 + 5][i16] == 0 && array[i18][i16] == 1 && (((i10 = i15 + 10) < height && array[i15 + 7][i16] == 0 && array[i15 + 8][i16] == 0 && array[i15 + 9][i16] == 0 && array[i10][i16] == 0) || ((i11 = i15 - 4) >= 0 && array[i15 - 1][i16] == 0 && array[i15 - 2][i16] == 0 && array[i15 - 3][i16] == 0 && array[i11][i16] == 0))) {
                    i14 += 40;
                }
            }
        }
        return i14;
    }

    static int applyMaskPenaltyRule4(ByteMatrix byteMatrix) {
        byte[][] array = byteMatrix.getArray();
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        int i10 = 0;
        for (int i11 = 0; i11 < height; i11++) {
            for (int i12 = 0; i12 < width; i12++) {
                if (array[i11][i12] == 1) {
                    i10++;
                }
            }
        }
        return (Math.abs((int) (((((double) i10) / ((double) (byteMatrix.getHeight() * byteMatrix.getWidth()))) * 100.0d) - 50.0d)) / 5) * 10;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004d A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:? A[RETURN, SYNTHETIC] */
    static boolean getDataMaskBit(int i10, int i11, int i12) {
        int i13;
        int i14;
        int i15;
        int i16;
        if (!QRCode.isValidMaskPattern(i10)) {
            throw new IllegalArgumentException("Invalid mask pattern");
        }
        switch (i10) {
            case 0:
                i12 += i11;
            case 1:
                i13 = i12 & 1;
                if (i13 == 0) {
                    return true;
                }
                return false;
            case 2:
                i13 = i11 % 3;
                if (i13 == 0) {
                    return true;
                }
                return false;
            case 3:
                i13 = (i12 + i11) % 3;
                if (i13 == 0) {
                    return true;
                }
                return false;
            case 4:
                i14 = i12 >>> 1;
                i15 = i11 / 3;
                i16 = i14 + i15;
                i13 = i16 & 1;
                if (i13 == 0) {
                    return true;
                }
                return false;
            case 5:
                int i17 = i12 * i11;
                i13 = (i17 & 1) + (i17 % 3);
                if (i13 == 0) {
                    return true;
                }
                return false;
            case 6:
                int i18 = i12 * i11;
                i16 = (i18 & 1) + (i18 % 3);
                i13 = i16 & 1;
                if (i13 == 0) {
                    return true;
                }
                return false;
            case 7:
                i14 = (i12 * i11) % 3;
                i15 = (i12 + i11) & 1;
                i16 = i14 + i15;
                i13 = i16 & 1;
                if (i13 == 0) {
                    return true;
                }
                return false;
            default:
                throw new IllegalArgumentException("Invalid mask pattern: " + i10);
        }
    }
}
