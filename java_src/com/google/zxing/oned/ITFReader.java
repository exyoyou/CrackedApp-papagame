package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class ITFReader extends OneDReader {
    private static final int MAX_AVG_VARIANCE = 107;
    private static final int MAX_INDIVIDUAL_VARIANCE = 204;
    private static final int N = 1;
    private static final int W = 3;
    private int narrowLineWidth = -1;
    private static final int[] DEFAULT_ALLOWED_LENGTHS = {44, 24, 20, 18, 16, 14, 12, 10, 8, 6};
    private static final int[] START_PATTERN = {1, 1, 1, 1};
    private static final int[] END_PATTERN_REVERSED = {1, 1, 3};
    static final int[][] PATTERNS = {new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    private static int decodeDigit(int[] iArr) throws NotFoundException {
        int length = PATTERNS.length;
        int i10 = 107;
        int i11 = -1;
        for (int i12 = 0; i12 < length; i12++) {
            int iPatternMatchVariance = OneDReader.patternMatchVariance(iArr, PATTERNS[i12], 204);
            if (iPatternMatchVariance < i10) {
                i11 = i12;
                i10 = iPatternMatchVariance;
            }
        }
        if (i11 >= 0) {
            return i11;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static void decodeMiddle(BitArray bitArray, int i10, int i11, StringBuilder sb2) throws NotFoundException {
        int[] iArr = new int[10];
        int[] iArr2 = new int[5];
        int[] iArr3 = new int[5];
        while (i10 < i11) {
            OneDReader.recordPattern(bitArray, i10, iArr);
            for (int i12 = 0; i12 < 5; i12++) {
                int i13 = i12 << 1;
                iArr2[i12] = iArr[i13];
                iArr3[i12] = iArr[i13 + 1];
            }
            sb2.append((char) (decodeDigit(iArr2) + 48));
            sb2.append((char) (decodeDigit(iArr3) + 48));
            for (int i14 = 0; i14 < 10; i14++) {
                i10 += iArr[i14];
            }
        }
    }

    private static int[] findGuardPattern(BitArray bitArray, int i10, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int size = bitArray.getSize();
        int i11 = i10;
        boolean z10 = false;
        int i12 = 0;
        while (i10 < size) {
            if (bitArray.get(i10) ^ z10) {
                iArr2[i12] = iArr2[i12] + 1;
            } else {
                int i13 = length - 1;
                if (i12 != i13) {
                    i12++;
                } else {
                    if (OneDReader.patternMatchVariance(iArr2, iArr, 204) < 107) {
                        return new int[]{i11, i10};
                    }
                    i11 += iArr2[0] + iArr2[1];
                    int i14 = length - 2;
                    System.arraycopy(iArr2, 2, iArr2, 0, i14);
                    iArr2[i14] = 0;
                    iArr2[i13] = 0;
                    i12--;
                }
                iArr2[i12] = 1;
                z10 = !z10;
            }
            i10++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int skipWhiteSpace(BitArray bitArray) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        if (nextSet != size) {
            return nextSet;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private void validateQuietZone(BitArray bitArray, int i10) throws NotFoundException {
        int i11 = this.narrowLineWidth * 10;
        for (int i12 = i10 - 1; i11 > 0 && i12 >= 0 && !bitArray.get(i12); i12--) {
            i11--;
        }
        if (i11 != 0) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    int[] decodeEnd(BitArray bitArray) throws NotFoundException {
        bitArray.reverse();
        try {
            int[] iArrFindGuardPattern = findGuardPattern(bitArray, skipWhiteSpace(bitArray), END_PATTERN_REVERSED);
            validateQuietZone(bitArray, iArrFindGuardPattern[0]);
            int i10 = iArrFindGuardPattern[0];
            iArrFindGuardPattern[0] = bitArray.getSize() - iArrFindGuardPattern[1];
            iArrFindGuardPattern[1] = bitArray.getSize() - i10;
            return iArrFindGuardPattern;
        } finally {
            bitArray.reverse();
        }
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i10, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        boolean z10;
        int[] iArrDecodeStart = decodeStart(bitArray);
        int[] iArrDecodeEnd = decodeEnd(bitArray);
        StringBuilder sb2 = new StringBuilder(20);
        decodeMiddle(bitArray, iArrDecodeStart[1], iArrDecodeEnd[0], sb2);
        String string = sb2.toString();
        int[] iArr = map != null ? (int[]) map.get(DecodeHintType.ALLOWED_LENGTHS) : null;
        if (iArr == null) {
            iArr = DEFAULT_ALLOWED_LENGTHS;
        }
        int length = string.length();
        int length2 = iArr.length;
        int i11 = 0;
        while (true) {
            if (i11 >= length2) {
                z10 = false;
                break;
            }
            if (length == iArr[i11]) {
                z10 = true;
                break;
            }
            i11++;
        }
        if (!z10) {
            throw FormatException.getFormatInstance();
        }
        float f10 = i10;
        return new Result(string, null, new ResultPoint[]{new ResultPoint(iArrDecodeStart[1], f10), new ResultPoint(iArrDecodeEnd[0], f10)}, BarcodeFormat.ITF);
    }

    int[] decodeStart(BitArray bitArray) throws NotFoundException {
        int[] iArrFindGuardPattern = findGuardPattern(bitArray, skipWhiteSpace(bitArray), START_PATTERN);
        int i10 = iArrFindGuardPattern[1];
        int i11 = iArrFindGuardPattern[0];
        this.narrowLineWidth = (i10 - i11) >> 2;
        validateQuietZone(bitArray, i11);
        return iArrFindGuardPattern;
    }
}
