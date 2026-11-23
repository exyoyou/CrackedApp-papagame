package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import com.google.zxing.NotFoundException;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes5.dex */
public final class HybridBinarizer extends GlobalHistogramBinarizer {
    private static final int BLOCK_SIZE = 8;
    private static final int BLOCK_SIZE_MASK = 7;
    private static final int BLOCK_SIZE_POWER = 3;
    private static final int MINIMUM_DIMENSION = 40;
    private BitMatrix matrix;

    public HybridBinarizer(LuminanceSource luminanceSource) {
        super(luminanceSource);
    }

    private static int[][] calculateBlackPoints(byte[] bArr, int i10, int i11, int i12, int i13) {
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i11, i10);
        for (int i14 = 0; i14 < i11; i14++) {
            int i15 = i14 << 3;
            if (i15 + 8 >= i13) {
                i15 = i13 - 8;
            }
            for (int i16 = 0; i16 < i10; i16++) {
                int i17 = i16 << 3;
                if (i17 + 8 >= i12) {
                    i17 = i12 - 8;
                }
                int i18 = (i15 * i12) + i17;
                int i19 = 0;
                int i20 = 0;
                int i21 = 0;
                int i22 = 255;
                while (true) {
                    if (i19 >= 8) {
                        break;
                    }
                    int i23 = 0;
                    for (int i24 = 8; i23 < i24; i24 = 8) {
                        int i25 = bArr[i18 + i23] & 255;
                        i20 += i25;
                        if (i25 < i22) {
                            i22 = i25;
                        }
                        if (i25 > i21) {
                            i21 = i25;
                        }
                        i23++;
                    }
                    i19++;
                    i18 += i12;
                }
                int i26 = i20 >> 6;
                if (i21 - i22 <= 24) {
                    i26 = i22 >> 1;
                    if (i14 > 0 && i16 > 0) {
                        int[] iArr2 = iArr[i14 - 1];
                        int i27 = i16 - 1;
                        int i28 = ((iArr2[i16] + (iArr[i14][i27] * 2)) + iArr2[i27]) >> 2;
                        if (i22 < i28) {
                            i26 = i28;
                        }
                    }
                }
                iArr[i14][i16] = i26;
            }
        }
        return iArr;
    }

    private static void calculateThresholdForBlock(byte[] bArr, int i10, int i11, int i12, int i13, int[][] iArr, BitMatrix bitMatrix) {
        int i14 = 0;
        while (i14 < i11) {
            int i15 = i14 << 3;
            if (i15 + 8 >= i13) {
                i15 = i13 - 8;
            }
            int i16 = i15;
            int i17 = 0;
            while (i17 < i10) {
                int i18 = i17 << 3;
                if (i18 + 8 >= i12) {
                    i18 = i12 - 8;
                }
                int i19 = i18;
                int i20 = i17 > 1 ? i17 : 2;
                if (i20 >= i10 - 2) {
                    i20 = i10 - 3;
                }
                int i21 = i14 > 1 ? i14 : 2;
                if (i21 >= i11 - 2) {
                    i21 = i11 - 3;
                }
                int i22 = 0;
                for (int i23 = -2; i23 <= 2; i23++) {
                    int[] iArr2 = iArr[i21 + i23];
                    i22 += iArr2[i20 - 2] + iArr2[i20 - 1] + iArr2[i20] + iArr2[i20 + 1] + iArr2[i20 + 2];
                }
                threshold8x8Block(bArr, i19, i16, i22 / 25, i12, bitMatrix);
                i17++;
            }
            i14++;
        }
    }

    private static void threshold8x8Block(byte[] bArr, int i10, int i11, int i12, int i13, BitMatrix bitMatrix) {
        int i14 = (i11 * i13) + i10;
        int i15 = 0;
        while (i15 < 8) {
            for (int i16 = 0; i16 < 8; i16++) {
                if ((bArr[i14 + i16] & 255) <= i12) {
                    bitMatrix.set(i10 + i16, i11 + i15);
                }
            }
            i15++;
            i14 += i13;
        }
    }

    @Override // com.google.zxing.common.GlobalHistogramBinarizer, com.google.zxing.Binarizer
    public Binarizer createBinarizer(LuminanceSource luminanceSource) {
        return new HybridBinarizer(luminanceSource);
    }

    @Override // com.google.zxing.common.GlobalHistogramBinarizer, com.google.zxing.Binarizer
    public BitMatrix getBlackMatrix() throws NotFoundException {
        BitMatrix bitMatrix = this.matrix;
        if (bitMatrix != null) {
            return bitMatrix;
        }
        LuminanceSource luminanceSource = getLuminanceSource();
        if (luminanceSource.getWidth() < 40 || luminanceSource.getHeight() < 40) {
            this.matrix = super.getBlackMatrix();
        } else {
            byte[] matrix = luminanceSource.getMatrix();
            int width = luminanceSource.getWidth();
            int height = luminanceSource.getHeight();
            int i10 = width >> 3;
            if ((width & 7) != 0) {
                i10++;
            }
            int i11 = i10;
            int i12 = height >> 3;
            if ((height & 7) != 0) {
                i12++;
            }
            int i13 = i12;
            int[][] iArrCalculateBlackPoints = calculateBlackPoints(matrix, i11, i13, width, height);
            BitMatrix bitMatrix2 = new BitMatrix(width, height);
            calculateThresholdForBlock(matrix, i11, i13, width, height, iArrCalculateBlackPoints, bitMatrix2);
            this.matrix = bitMatrix2;
        }
        return this.matrix;
    }
}
