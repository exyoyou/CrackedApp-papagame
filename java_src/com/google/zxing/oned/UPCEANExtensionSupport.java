package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import external.org.apache.commons.lang3.d;
import java.util.EnumMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
final class UPCEANExtensionSupport {
    private final int[] decodeMiddleCounters = new int[4];
    private final StringBuilder decodeRowStringBuffer = new StringBuilder();
    private static final int[] EXTENSION_START_PATTERN = {1, 1, 2};
    private static final int[] CHECK_DIGIT_ENCODINGS = {24, 20, 18, 17, 12, 6, 3, 10, 9, 5};

    UPCEANExtensionSupport() {
    }

    private static int determineCheckDigit(int i10) throws NotFoundException {
        for (int i11 = 0; i11 < 10; i11++) {
            if (i10 == CHECK_DIGIT_ENCODINGS[i11]) {
                return i11;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int extensionChecksum(CharSequence charSequence) {
        int length = charSequence.length();
        int iCharAt = 0;
        for (int i10 = length - 2; i10 >= 0; i10 -= 2) {
            iCharAt += charSequence.charAt(i10) - '0';
        }
        int iCharAt2 = iCharAt * 3;
        for (int i11 = length - 1; i11 >= 0; i11 -= 2) {
            iCharAt2 += charSequence.charAt(i11) - '0';
        }
        return (iCharAt2 * 3) % 10;
    }

    private static Integer parseExtension2String(String str) {
        return Integer.valueOf(str);
    }

    private static String parseExtension5String(String str) {
        String str2;
        String strValueOf;
        char cCharAt = str.charAt(0);
        if (cCharAt == '0') {
            str2 = "£";
        } else if (cCharAt != '5') {
            str2 = "";
            if (cCharAt == '9') {
                if ("90000".equals(str)) {
                    return null;
                }
                if ("99991".equals(str)) {
                    return "0.00";
                }
                if ("99990".equals(str)) {
                    return "Used";
                }
            }
        } else {
            str2 = "$";
        }
        int i10 = Integer.parseInt(str.substring(1));
        String strValueOf2 = String.valueOf(i10 / 100);
        int i11 = i10 % 100;
        if (i11 < 10) {
            strValueOf = "0" + i11;
        } else {
            strValueOf = String.valueOf(i11);
        }
        return str2 + strValueOf2 + d.f90941a + strValueOf;
    }

    private static Map<ResultMetadataType, Object> parseExtensionString(String str) {
        ResultMetadataType resultMetadataType;
        Object extension2String;
        int length = str.length();
        if (length == 2) {
            resultMetadataType = ResultMetadataType.ISSUE_NUMBER;
            extension2String = parseExtension2String(str);
        } else {
            if (length != 5) {
                return null;
            }
            resultMetadataType = ResultMetadataType.SUGGESTED_PRICE;
            extension2String = parseExtension5String(str);
        }
        if (extension2String == null) {
            return null;
        }
        EnumMap enumMap = new EnumMap(ResultMetadataType.class);
        enumMap.put(resultMetadataType, extension2String);
        return enumMap;
    }

    int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb2) throws NotFoundException {
        int[] iArr2 = this.decodeMiddleCounters;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int size = bitArray.getSize();
        int nextUnset = iArr[1];
        int i10 = 0;
        for (int i11 = 0; i11 < 5 && nextUnset < size; i11++) {
            int iDecodeDigit = UPCEANReader.decodeDigit(bitArray, iArr2, nextUnset, UPCEANReader.L_AND_G_PATTERNS);
            sb2.append((char) ((iDecodeDigit % 10) + 48));
            for (int i12 : iArr2) {
                nextUnset += i12;
            }
            if (iDecodeDigit >= 10) {
                i10 |= 1 << (4 - i11);
            }
            if (i11 != 4) {
                nextUnset = bitArray.getNextUnset(bitArray.getNextSet(nextUnset));
            }
        }
        if (sb2.length() != 5) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (extensionChecksum(sb2.toString()) == determineCheckDigit(i10)) {
            return nextUnset;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    Result decodeRow(int i10, BitArray bitArray, int i11) throws NotFoundException {
        int[] iArrFindGuardPattern = UPCEANReader.findGuardPattern(bitArray, i11, false, EXTENSION_START_PATTERN);
        StringBuilder sb2 = this.decodeRowStringBuffer;
        sb2.setLength(0);
        int iDecodeMiddle = decodeMiddle(bitArray, iArrFindGuardPattern, sb2);
        String string = sb2.toString();
        Map<ResultMetadataType, Object> extensionString = parseExtensionString(string);
        float f10 = i10;
        Result result = new Result(string, null, new ResultPoint[]{new ResultPoint((iArrFindGuardPattern[0] + iArrFindGuardPattern[1]) / 2.0f, f10), new ResultPoint(iDecodeMiddle, f10)}, BarcodeFormat.UPC_EAN_EXTENSION);
        if (extensionString != null) {
            result.putAllMetadata(extensionString);
        }
        return result;
    }
}
