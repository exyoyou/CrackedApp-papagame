package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class CodaBarReader extends OneDReader {
    private static final int minCharacterLength = 6;
    private static final String ALPHABET_STRING = "0123456789-$:/.+ABCDTN";
    static final char[] ALPHABET = ALPHABET_STRING.toCharArray();
    static final int[] CHARACTER_ENCODINGS = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14, 26, 41};
    private static final char[] STARTEND_ENCODING = {'E', '*', 'A', 'B', 'C', 'D', 'T', 'N'};

    static boolean arrayContains(char[] cArr, char c10) {
        if (cArr != null) {
            for (char c11 : cArr) {
                if (c11 == c10) {
                    return true;
                }
            }
        }
        return false;
    }

    private static int[] findAsteriskPattern(BitArray bitArray) throws NotFoundException {
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        int[] iArr = new int[7];
        int i10 = nextSet;
        boolean z10 = false;
        int i11 = 0;
        while (nextSet < size) {
            if (bitArray.get(nextSet) ^ z10) {
                iArr[i11] = iArr[i11] + 1;
            } else {
                if (i11 == 6) {
                    try {
                        if (arrayContains(STARTEND_ENCODING, toNarrowWidePattern(iArr)) && bitArray.isRange(Math.max(0, i10 - ((nextSet - i10) / 2)), i10, false)) {
                            return new int[]{i10, nextSet};
                        }
                    } catch (IllegalArgumentException unused) {
                    }
                    i10 += iArr[0] + iArr[1];
                    System.arraycopy(iArr, 2, iArr, 0, 5);
                    iArr[5] = 0;
                    iArr[6] = 0;
                    i11--;
                } else {
                    i11++;
                }
                iArr[i11] = 1;
                z10 = !z10;
            }
            nextSet++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static char toNarrowWidePattern(int[] iArr) {
        int length = iArr.length;
        int i10 = Integer.MAX_VALUE;
        int i11 = 0;
        for (int i12 : iArr) {
            if (i12 < i10) {
                i10 = i12;
            }
            if (i12 > i11) {
                i11 = i12;
            }
        }
        do {
            int i13 = 0;
            int i14 = 0;
            for (int i15 = 0; i15 < length; i15++) {
                if (iArr[i15] > i11) {
                    i14 |= 1 << ((length - 1) - i15);
                    i13++;
                }
            }
            if (i13 == 2 || i13 == 3) {
                int i16 = 0;
                while (true) {
                    int[] iArr2 = CHARACTER_ENCODINGS;
                    if (i16 >= iArr2.length) {
                        break;
                    }
                    if (iArr2[i16] == i14) {
                        return ALPHABET[i16];
                    }
                    i16++;
                }
            }
            i11--;
        } while (i11 > i10);
        return '!';
    }

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i10, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException {
        int i11;
        int[] iArrFindAsteriskPattern = findAsteriskPattern(bitArray);
        iArrFindAsteriskPattern[1] = 0;
        int nextSet = bitArray.getNextSet(0);
        int size = bitArray.getSize();
        StringBuilder sb2 = new StringBuilder();
        int[] iArr = new int[7];
        while (true) {
            for (int i12 = 0; i12 < 7; i12++) {
                iArr[i12] = 0;
            }
            OneDReader.recordPattern(bitArray, nextSet, iArr);
            char narrowWidePattern = toNarrowWidePattern(iArr);
            if (narrowWidePattern == '!') {
                throw NotFoundException.getNotFoundInstance();
            }
            sb2.append(narrowWidePattern);
            int i13 = nextSet;
            for (int i14 = 0; i14 < 7; i14++) {
                i13 += iArr[i14];
            }
            int nextSet2 = bitArray.getNextSet(i13);
            if (nextSet2 >= size) {
                int i15 = 0;
                for (int i16 = 0; i16 < 7; i16++) {
                    i15 += iArr[i16];
                }
                int i17 = (nextSet2 - nextSet) - i15;
                if (nextSet2 != size && i17 / 2 < i15) {
                    throw NotFoundException.getNotFoundInstance();
                }
                if (sb2.length() < 2) {
                    throw NotFoundException.getNotFoundInstance();
                }
                char cCharAt = sb2.charAt(0);
                if (!arrayContains(STARTEND_ENCODING, cCharAt)) {
                    throw NotFoundException.getNotFoundInstance();
                }
                for (int i18 = 1; i18 < sb2.length(); i18++) {
                    if (sb2.charAt(i18) == cCharAt && (i11 = i18 + 1) != sb2.length()) {
                        sb2.delete(i11, sb2.length() - 1);
                        break;
                    }
                }
                if (sb2.length() <= 6) {
                    throw NotFoundException.getNotFoundInstance();
                }
                sb2.deleteCharAt(sb2.length() - 1);
                sb2.deleteCharAt(0);
                float f10 = i10;
                return new Result(sb2.toString(), null, new ResultPoint[]{new ResultPoint((iArrFindAsteriskPattern[1] + iArrFindAsteriskPattern[0]) / 2.0f, f10), new ResultPoint((nextSet2 + nextSet) / 2.0f, f10)}, BarcodeFormat.CODABAR);
            }
            nextSet = nextSet2;
        }
    }
}
