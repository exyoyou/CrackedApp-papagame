package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class UPCEANReader extends OneDReader {
    static final int[][] L_AND_G_PATTERNS;
    static final int[][] L_PATTERNS;
    private static final int MAX_AVG_VARIANCE = 122;
    private static final int MAX_INDIVIDUAL_VARIANCE = 179;
    static final int[] START_END_PATTERN = {1, 1, 1};
    static final int[] MIDDLE_PATTERN = {1, 1, 1, 1, 1};
    private final StringBuilder decodeRowStringBuffer = new StringBuilder(20);
    private final UPCEANExtensionSupport extensionReader = new UPCEANExtensionSupport();
    private final EANManufacturerOrgSupport eanManSupport = new EANManufacturerOrgSupport();

    static {
        int[][] iArr = {new int[]{3, 2, 1, 1}, new int[]{2, 2, 2, 1}, new int[]{2, 1, 2, 2}, new int[]{1, 4, 1, 1}, new int[]{1, 1, 3, 2}, new int[]{1, 2, 3, 1}, new int[]{1, 1, 1, 4}, new int[]{1, 3, 1, 2}, new int[]{1, 2, 1, 3}, new int[]{3, 1, 1, 2}};
        L_PATTERNS = iArr;
        int[][] iArr2 = new int[20][];
        L_AND_G_PATTERNS = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, 10);
        for (int i10 = 10; i10 < 20; i10++) {
            int[] iArr3 = L_PATTERNS[i10 - 10];
            int[] iArr4 = new int[iArr3.length];
            for (int i11 = 0; i11 < iArr3.length; i11++) {
                iArr4[i11] = iArr3[(iArr3.length - i11) - 1];
            }
            L_AND_G_PATTERNS[i10] = iArr4;
        }
    }

    protected UPCEANReader() {
    }

    private static boolean checkStandardUPCEANChecksum(CharSequence charSequence) throws FormatException {
        int length = charSequence.length();
        if (length == 0) {
            return false;
        }
        int i10 = 0;
        for (int i11 = length - 2; i11 >= 0; i11 -= 2) {
            int iCharAt = charSequence.charAt(i11) - '0';
            if (iCharAt < 0 || iCharAt > 9) {
                throw FormatException.getFormatInstance();
            }
            i10 += iCharAt;
        }
        int i12 = i10 * 3;
        for (int i13 = length - 1; i13 >= 0; i13 -= 2) {
            int iCharAt2 = charSequence.charAt(i13) - '0';
            if (iCharAt2 < 0 || iCharAt2 > 9) {
                throw FormatException.getFormatInstance();
            }
            i12 += iCharAt2;
        }
        return i12 % 10 == 0;
    }

    static int decodeDigit(BitArray bitArray, int[] iArr, int i10, int[][] iArr2) throws NotFoundException {
        OneDReader.recordPattern(bitArray, i10, iArr);
        int length = iArr2.length;
        int i11 = 122;
        int i12 = -1;
        for (int i13 = 0; i13 < length; i13++) {
            int iPatternMatchVariance = OneDReader.patternMatchVariance(iArr, iArr2[i13], 179);
            if (iPatternMatchVariance < i11) {
                i12 = i13;
                i11 = iPatternMatchVariance;
            }
        }
        if (i12 >= 0) {
            return i12;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    static int[] findGuardPattern(BitArray bitArray, int i10, boolean z10, int[] iArr) throws NotFoundException {
        return findGuardPattern(bitArray, i10, z10, iArr, new int[iArr.length]);
    }

    static int[] findStartGuardPattern(BitArray bitArray) throws NotFoundException {
        int[] iArr = new int[START_END_PATTERN.length];
        int[] iArrFindGuardPattern = null;
        boolean zIsRange = false;
        int i10 = 0;
        while (!zIsRange) {
            int[] iArr2 = START_END_PATTERN;
            Arrays.fill(iArr, 0, iArr2.length, 0);
            iArrFindGuardPattern = findGuardPattern(bitArray, i10, false, iArr2, iArr);
            int i11 = iArrFindGuardPattern[0];
            int i12 = iArrFindGuardPattern[1];
            int i13 = i11 - (i12 - i11);
            if (i13 >= 0) {
                zIsRange = bitArray.isRange(i13, i11, false);
            }
            i10 = i12;
        }
        return iArrFindGuardPattern;
    }

    boolean checkChecksum(String str) throws ChecksumException, FormatException {
        return checkStandardUPCEANChecksum(str);
    }

    int[] decodeEnd(BitArray bitArray, int i10) throws NotFoundException {
        return findGuardPattern(bitArray, i10, false, START_END_PATTERN);
    }

    protected abstract int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb2) throws NotFoundException;

    @Override // com.google.zxing.oned.OneDReader
    public Result decodeRow(int i10, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        return decodeRow(i10, bitArray, findStartGuardPattern(bitArray), map);
    }

    abstract BarcodeFormat getBarcodeFormat();

    static int[] findGuardPattern(BitArray bitArray, int i10, boolean z10, int[] iArr, int[] iArr2) throws NotFoundException {
        int length = iArr.length;
        int size = bitArray.getSize();
        int nextUnset = z10 ? bitArray.getNextUnset(i10) : bitArray.getNextSet(i10);
        boolean z11 = z10;
        int i11 = 0;
        int i12 = nextUnset;
        while (nextUnset < size) {
            if (bitArray.get(nextUnset) ^ z11) {
                iArr2[i11] = iArr2[i11] + 1;
            } else {
                int i13 = length - 1;
                if (i11 != i13) {
                    i11++;
                } else {
                    if (OneDReader.patternMatchVariance(iArr2, iArr, 179) < 122) {
                        return new int[]{i12, nextUnset};
                    }
                    i12 += iArr2[0] + iArr2[1];
                    int i14 = length - 2;
                    System.arraycopy(iArr2, 2, iArr2, 0, i14);
                    iArr2[i14] = 0;
                    iArr2[i13] = 0;
                    i11--;
                }
                iArr2[i11] = 1;
                z11 = !z11;
            }
            nextUnset++;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public Result decodeRow(int i10, BitArray bitArray, int[] iArr, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        String strLookupCountryIdentifier;
        ResultPointCallback resultPointCallback = map == null ? null : (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
        if (resultPointCallback != null) {
            resultPointCallback.foundPossibleResultPoint(new ResultPoint((iArr[0] + iArr[1]) / 2.0f, i10));
        }
        StringBuilder sb2 = this.decodeRowStringBuffer;
        sb2.setLength(0);
        int iDecodeMiddle = decodeMiddle(bitArray, iArr, sb2);
        if (resultPointCallback != null) {
            resultPointCallback.foundPossibleResultPoint(new ResultPoint(iDecodeMiddle, i10));
        }
        int[] iArrDecodeEnd = decodeEnd(bitArray, iDecodeMiddle);
        if (resultPointCallback != null) {
            resultPointCallback.foundPossibleResultPoint(new ResultPoint((iArrDecodeEnd[0] + iArrDecodeEnd[1]) / 2.0f, i10));
        }
        int i11 = iArrDecodeEnd[1];
        int i12 = (i11 - iArrDecodeEnd[0]) + i11;
        if (i12 >= bitArray.getSize() || !bitArray.isRange(i11, i12, false)) {
            throw NotFoundException.getNotFoundInstance();
        }
        String string = sb2.toString();
        if (!checkChecksum(string)) {
            throw ChecksumException.getChecksumInstance();
        }
        float f10 = (iArr[1] + iArr[0]) / 2.0f;
        float f11 = (iArrDecodeEnd[1] + iArrDecodeEnd[0]) / 2.0f;
        BarcodeFormat barcodeFormat = getBarcodeFormat();
        float f12 = i10;
        Result result = new Result(string, null, new ResultPoint[]{new ResultPoint(f10, f12), new ResultPoint(f11, f12)}, barcodeFormat);
        try {
            Result resultDecodeRow = this.extensionReader.decodeRow(i10, bitArray, iArrDecodeEnd[1]);
            result.putAllMetadata(resultDecodeRow.getResultMetadata());
            result.addResultPoints(resultDecodeRow.getResultPoints());
        } catch (ReaderException unused) {
        }
        if ((barcodeFormat == BarcodeFormat.EAN_13 || barcodeFormat == BarcodeFormat.UPC_A) && (strLookupCountryIdentifier = this.eanManSupport.lookupCountryIdentifier(string)) != null) {
            result.putMetadata(ResultMetadataType.POSSIBLE_COUNTRY, strLookupCountryIdentifier);
        }
        return result;
    }
}
