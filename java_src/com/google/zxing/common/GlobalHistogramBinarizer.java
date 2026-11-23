package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import com.google.zxing.NotFoundException;

/* JADX INFO: loaded from: classes5.dex */
public class GlobalHistogramBinarizer extends Binarizer {
    private static final int LUMINANCE_BITS = 5;
    private static final int LUMINANCE_BUCKETS = 32;
    private static final int LUMINANCE_SHIFT = 3;
    private final int[] buckets;
    private byte[] luminances;

    public GlobalHistogramBinarizer(LuminanceSource luminanceSource) {
        super(luminanceSource);
        this.luminances = new byte[0];
        this.buckets = new int[32];
    }

    private static int estimateBlackPoint(int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13++) {
            int i14 = iArr[i13];
            if (i14 > i10) {
                i12 = i13;
                i10 = i14;
            }
            if (i14 > i11) {
                i11 = i14;
            }
        }
        int i15 = 0;
        int i16 = 0;
        for (int i17 = 0; i17 < length; i17++) {
            int i18 = i17 - i12;
            int i19 = iArr[i17] * i18 * i18;
            if (i19 > i16) {
                i15 = i17;
                i16 = i19;
            }
        }
        if (i12 <= i15) {
            int i20 = i12;
            i12 = i15;
            i15 = i20;
        }
        if (i12 - i15 <= (length >> 4)) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i21 = i12 - 1;
        int i22 = i21;
        int i23 = -1;
        while (i21 > i15) {
            int i24 = i21 - i15;
            int i25 = i24 * i24 * (i12 - i21) * (i11 - iArr[i21]);
            if (i25 > i23) {
                i22 = i21;
                i23 = i25;
            }
            i21--;
        }
        return i22 << 3;
    }

    private void initArrays(int i10) {
        if (this.luminances.length < i10) {
            this.luminances = new byte[i10];
        }
        for (int i11 = 0; i11 < 32; i11++) {
            this.buckets[i11] = 0;
        }
    }

    @Override // com.google.zxing.Binarizer
    public Binarizer createBinarizer(LuminanceSource luminanceSource) {
        return new GlobalHistogramBinarizer(luminanceSource);
    }

    @Override // com.google.zxing.Binarizer
    public BitMatrix getBlackMatrix() throws NotFoundException {
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        int height = luminanceSource.getHeight();
        BitMatrix bitMatrix = new BitMatrix(width, height);
        initArrays(width);
        int[] iArr = this.buckets;
        for (int i10 = 1; i10 < 5; i10++) {
            byte[] row = luminanceSource.getRow((height * i10) / 5, this.luminances);
            int i11 = (width << 2) / 5;
            for (int i12 = width / 5; i12 < i11; i12++) {
                int i13 = (row[i12] & 255) >> 3;
                iArr[i13] = iArr[i13] + 1;
            }
        }
        int iEstimateBlackPoint = estimateBlackPoint(iArr);
        byte[] matrix = luminanceSource.getMatrix();
        for (int i14 = 0; i14 < height; i14++) {
            int i15 = i14 * width;
            for (int i16 = 0; i16 < width; i16++) {
                if ((matrix[i15 + i16] & 255) < iEstimateBlackPoint) {
                    bitMatrix.set(i16, i14);
                }
            }
        }
        return bitMatrix;
    }

    @Override // com.google.zxing.Binarizer
    public BitArray getBlackRow(int i10, BitArray bitArray) throws NotFoundException {
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        if (bitArray == null || bitArray.getSize() < width) {
            bitArray = new BitArray(width);
        } else {
            bitArray.clear();
        }
        initArrays(width);
        byte[] row = luminanceSource.getRow(i10, this.luminances);
        int[] iArr = this.buckets;
        for (int i11 = 0; i11 < width; i11++) {
            int i12 = (row[i11] & 255) >> 3;
            iArr[i12] = iArr[i12] + 1;
        }
        int iEstimateBlackPoint = estimateBlackPoint(iArr);
        int i13 = 1;
        int i14 = row[0] & 255;
        int i15 = row[1] & 255;
        while (i13 < width - 1) {
            int i16 = i13 + 1;
            int i17 = row[i16] & 255;
            if (((((i15 << 2) - i14) - i17) >> 1) < iEstimateBlackPoint) {
                bitArray.set(i13);
            }
            i14 = i15;
            i13 = i16;
            i15 = i17;
        }
        return bitArray;
    }
}
