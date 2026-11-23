package com.google.zxing.oned.rss;

import com.google.zxing.NotFoundException;
import com.google.zxing.oned.OneDReader;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractRSSReader extends OneDReader {
    private static final int MAX_AVG_VARIANCE = 51;
    private static final float MAX_FINDER_PATTERN_RATIO = 0.89285713f;
    private static final int MAX_INDIVIDUAL_VARIANCE = 102;
    private static final float MIN_FINDER_PATTERN_RATIO = 0.7916667f;
    private final int[] dataCharacterCounters;
    private final int[] evenCounts;
    private final int[] oddCounts;
    private final int[] decodeFinderCounters = new int[4];
    private final float[] oddRoundingErrors = new float[4];
    private final float[] evenRoundingErrors = new float[4];

    protected AbstractRSSReader() {
        int[] iArr = new int[8];
        this.dataCharacterCounters = iArr;
        this.oddCounts = new int[iArr.length / 2];
        this.evenCounts = new int[iArr.length / 2];
    }

    protected static int count(int[] iArr) {
        int i10 = 0;
        for (int i11 : iArr) {
            i10 += i11;
        }
        return i10;
    }

    protected static void decrement(int[] iArr, float[] fArr) {
        int i10 = 0;
        float f10 = fArr[0];
        for (int i11 = 1; i11 < iArr.length; i11++) {
            float f11 = fArr[i11];
            if (f11 < f10) {
                i10 = i11;
                f10 = f11;
            }
        }
        iArr[i10] = iArr[i10] - 1;
    }

    protected static void increment(int[] iArr, float[] fArr) {
        int i10 = 0;
        float f10 = fArr[0];
        for (int i11 = 1; i11 < iArr.length; i11++) {
            float f11 = fArr[i11];
            if (f11 > f10) {
                i10 = i11;
                f10 = f11;
            }
        }
        iArr[i10] = iArr[i10] + 1;
    }

    protected static boolean isFinderPattern(int[] iArr) {
        int i10 = iArr[0] + iArr[1];
        float f10 = i10 / ((iArr[2] + i10) + iArr[3]);
        if (f10 < MIN_FINDER_PATTERN_RATIO || f10 > MAX_FINDER_PATTERN_RATIO) {
            return false;
        }
        int i11 = Integer.MAX_VALUE;
        int i12 = Integer.MIN_VALUE;
        for (int i13 : iArr) {
            if (i13 > i12) {
                i12 = i13;
            }
            if (i13 < i11) {
                i11 = i13;
            }
        }
        return i12 < i11 * 10;
    }

    protected static int parseFinderValue(int[] iArr, int[][] iArr2) throws NotFoundException {
        for (int i10 = 0; i10 < iArr2.length; i10++) {
            if (OneDReader.patternMatchVariance(iArr, iArr2[i10], 102) < 51) {
                return i10;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    protected int[] getDataCharacterCounters() {
        return this.dataCharacterCounters;
    }

    protected int[] getDecodeFinderCounters() {
        return this.decodeFinderCounters;
    }

    protected int[] getEvenCounts() {
        return this.evenCounts;
    }

    protected float[] getEvenRoundingErrors() {
        return this.evenRoundingErrors;
    }

    protected int[] getOddCounts() {
        return this.oddCounts;
    }

    protected float[] getOddRoundingErrors() {
        return this.oddRoundingErrors;
    }
}
