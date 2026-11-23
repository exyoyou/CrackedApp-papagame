package com.google.zxing.qrcode.encoder;

import com.google.zxing.WriterException;
import com.google.zxing.common.BitArray;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;

/* JADX INFO: loaded from: classes5.dex */
final class MatrixUtil {
    private static final int TYPE_INFO_MASK_PATTERN = 21522;
    private static final int TYPE_INFO_POLY = 1335;
    private static final int VERSION_INFO_POLY = 7973;
    private static final int[][] POSITION_DETECTION_PATTERN = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};
    private static final int[][] HORIZONTAL_SEPARATION_PATTERN = {new int[]{0, 0, 0, 0, 0, 0, 0, 0}};
    private static final int[][] VERTICAL_SEPARATION_PATTERN = {new int[]{0}, new int[]{0}, new int[]{0}, new int[]{0}, new int[]{0}, new int[]{0}, new int[]{0}};
    private static final int[][] POSITION_ADJUSTMENT_PATTERN = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};
    private static final int[][] POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, 102, 126, -1}, new int[]{6, 26, 52, 78, 104, 130, -1}, new int[]{6, 30, 56, 82, 108, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, 146, -1}, new int[]{6, 30, 54, 78, 102, 126, 150}, new int[]{6, 24, 50, 76, 102, 128, 154}, new int[]{6, 28, 54, 80, 106, 132, 158}, new int[]{6, 32, 58, 84, 110, 136, 162}, new int[]{6, 26, 54, 82, 110, 138, 166}, new int[]{6, 30, 58, 86, 114, 142, 170}};
    private static final int[][] TYPE_INFO_COORDINATES = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    private MatrixUtil() {
    }

    static void buildMatrix(BitArray bitArray, ErrorCorrectionLevel errorCorrectionLevel, int i10, int i11, ByteMatrix byteMatrix) throws WriterException {
        clearMatrix(byteMatrix);
        embedBasicPatterns(i10, byteMatrix);
        embedTypeInfo(errorCorrectionLevel, i11, byteMatrix);
        maybeEmbedVersionInfo(i10, byteMatrix);
        embedDataBits(bitArray, i11, byteMatrix);
    }

    static int calculateBCHCode(int i10, int i11) {
        int iFindMSBSet = findMSBSet(i11);
        int iFindMSBSet2 = i10 << (iFindMSBSet - 1);
        while (findMSBSet(iFindMSBSet2) >= iFindMSBSet) {
            iFindMSBSet2 ^= i11 << (findMSBSet(iFindMSBSet2) - iFindMSBSet);
        }
        return iFindMSBSet2;
    }

    static void clearMatrix(ByteMatrix byteMatrix) {
        byteMatrix.clear((byte) -1);
    }

    static void embedBasicPatterns(int i10, ByteMatrix byteMatrix) throws WriterException {
        embedPositionDetectionPatternsAndSeparators(byteMatrix);
        embedDarkDotAtLeftBottomCorner(byteMatrix);
        maybeEmbedPositionAdjustmentPatterns(i10, byteMatrix);
        embedTimingPatterns(byteMatrix);
    }

    private static void embedDarkDotAtLeftBottomCorner(ByteMatrix byteMatrix) throws WriterException {
        if (byteMatrix.get(8, byteMatrix.getHeight() - 8) == 0) {
            throw new WriterException();
        }
        byteMatrix.set(8, byteMatrix.getHeight() - 8, 1);
    }

    static void embedDataBits(BitArray bitArray, int i10, ByteMatrix byteMatrix) throws WriterException {
        boolean z10;
        int width = byteMatrix.getWidth() - 1;
        int height = byteMatrix.getHeight() - 1;
        int i11 = 0;
        int i12 = -1;
        while (width > 0) {
            if (width == 6) {
                width--;
            }
            while (height >= 0 && height < byteMatrix.getHeight()) {
                for (int i13 = 0; i13 < 2; i13++) {
                    int i14 = width - i13;
                    if (isEmpty(byteMatrix.get(i14, height))) {
                        if (i11 < bitArray.getSize()) {
                            z10 = bitArray.get(i11);
                            i11++;
                        } else {
                            z10 = false;
                        }
                        if (i10 != -1 && MaskUtil.getDataMaskBit(i10, i14, height)) {
                            z10 = !z10;
                        }
                        byteMatrix.set(i14, height, z10);
                    }
                }
                height += i12;
            }
            i12 = -i12;
            height += i12;
            width -= 2;
        }
        if (i11 == bitArray.getSize()) {
            return;
        }
        throw new WriterException("Not all bits consumed: " + i11 + '/' + bitArray.getSize());
    }

    private static void embedHorizontalSeparationPattern(int i10, int i11, ByteMatrix byteMatrix) throws WriterException {
        int[][] iArr = HORIZONTAL_SEPARATION_PATTERN;
        if (iArr[0].length != 8 || iArr.length != 1) {
            throw new WriterException("Bad horizontal separation pattern");
        }
        for (int i12 = 0; i12 < 8; i12++) {
            int i13 = i10 + i12;
            if (!isEmpty(byteMatrix.get(i13, i11))) {
                throw new WriterException();
            }
            byteMatrix.set(i13, i11, HORIZONTAL_SEPARATION_PATTERN[0][i12]);
        }
    }

    private static void embedPositionAdjustmentPattern(int i10, int i11, ByteMatrix byteMatrix) throws WriterException {
        int[][] iArr = POSITION_ADJUSTMENT_PATTERN;
        if (iArr[0].length != 5 || iArr.length != 5) {
            throw new WriterException("Bad position adjustment");
        }
        for (int i12 = 0; i12 < 5; i12++) {
            for (int i13 = 0; i13 < 5; i13++) {
                int i14 = i10 + i13;
                int i15 = i11 + i12;
                if (!isEmpty(byteMatrix.get(i14, i15))) {
                    throw new WriterException();
                }
                byteMatrix.set(i14, i15, POSITION_ADJUSTMENT_PATTERN[i12][i13]);
            }
        }
    }

    private static void embedPositionDetectionPattern(int i10, int i11, ByteMatrix byteMatrix) throws WriterException {
        int[][] iArr = POSITION_DETECTION_PATTERN;
        if (iArr[0].length != 7 || iArr.length != 7) {
            throw new WriterException("Bad position detection pattern");
        }
        for (int i12 = 0; i12 < 7; i12++) {
            for (int i13 = 0; i13 < 7; i13++) {
                int i14 = i10 + i13;
                int i15 = i11 + i12;
                if (!isEmpty(byteMatrix.get(i14, i15))) {
                    throw new WriterException();
                }
                byteMatrix.set(i14, i15, POSITION_DETECTION_PATTERN[i12][i13]);
            }
        }
    }

    private static void embedPositionDetectionPatternsAndSeparators(ByteMatrix byteMatrix) throws WriterException {
        int length = POSITION_DETECTION_PATTERN[0].length;
        embedPositionDetectionPattern(0, 0, byteMatrix);
        embedPositionDetectionPattern(byteMatrix.getWidth() - length, 0, byteMatrix);
        embedPositionDetectionPattern(0, byteMatrix.getWidth() - length, byteMatrix);
        int length2 = HORIZONTAL_SEPARATION_PATTERN[0].length;
        int i10 = length2 - 1;
        embedHorizontalSeparationPattern(0, i10, byteMatrix);
        embedHorizontalSeparationPattern(byteMatrix.getWidth() - length2, i10, byteMatrix);
        embedHorizontalSeparationPattern(0, byteMatrix.getWidth() - length2, byteMatrix);
        int length3 = VERTICAL_SEPARATION_PATTERN.length;
        embedVerticalSeparationPattern(length3, 0, byteMatrix);
        embedVerticalSeparationPattern((byteMatrix.getHeight() - length3) - 1, 0, byteMatrix);
        embedVerticalSeparationPattern(length3, byteMatrix.getHeight() - length3, byteMatrix);
    }

    private static void embedTimingPatterns(ByteMatrix byteMatrix) throws WriterException {
        int i10 = 8;
        while (i10 < byteMatrix.getWidth() - 8) {
            int i11 = i10 + 1;
            int i12 = i11 % 2;
            if (!isValidValue(byteMatrix.get(i10, 6))) {
                throw new WriterException();
            }
            if (isEmpty(byteMatrix.get(i10, 6))) {
                byteMatrix.set(i10, 6, i12);
            }
            if (!isValidValue(byteMatrix.get(6, i10))) {
                throw new WriterException();
            }
            if (isEmpty(byteMatrix.get(6, i10))) {
                byteMatrix.set(6, i10, i12);
            }
            i10 = i11;
        }
    }

    static void embedTypeInfo(ErrorCorrectionLevel errorCorrectionLevel, int i10, ByteMatrix byteMatrix) throws WriterException {
        BitArray bitArray = new BitArray();
        makeTypeInfoBits(errorCorrectionLevel, i10, bitArray);
        for (int i11 = 0; i11 < bitArray.getSize(); i11++) {
            boolean z10 = bitArray.get((bitArray.getSize() - 1) - i11);
            int[] iArr = TYPE_INFO_COORDINATES[i11];
            byteMatrix.set(iArr[0], iArr[1], z10);
            if (i11 < 8) {
                byteMatrix.set((byteMatrix.getWidth() - i11) - 1, 8, z10);
            } else {
                byteMatrix.set(8, (byteMatrix.getHeight() - 7) + (i11 - 8), z10);
            }
        }
    }

    private static void embedVerticalSeparationPattern(int i10, int i11, ByteMatrix byteMatrix) throws WriterException {
        int[][] iArr = VERTICAL_SEPARATION_PATTERN;
        if (iArr[0].length != 1 || iArr.length != 7) {
            throw new WriterException("Bad vertical separation pattern");
        }
        for (int i12 = 0; i12 < 7; i12++) {
            int i13 = i11 + i12;
            if (!isEmpty(byteMatrix.get(i10, i13))) {
                throw new WriterException();
            }
            byteMatrix.set(i10, i13, VERTICAL_SEPARATION_PATTERN[i12][0]);
        }
    }

    static int findMSBSet(int i10) {
        int i11 = 0;
        while (i10 != 0) {
            i10 >>>= 1;
            i11++;
        }
        return i11;
    }

    private static boolean isEmpty(int i10) {
        return i10 == -1;
    }

    private static boolean isValidValue(int i10) {
        return i10 == -1 || i10 == 0 || i10 == 1;
    }

    static void makeTypeInfoBits(ErrorCorrectionLevel errorCorrectionLevel, int i10, BitArray bitArray) throws WriterException {
        if (!QRCode.isValidMaskPattern(i10)) {
            throw new WriterException("Invalid mask pattern");
        }
        int bits = (errorCorrectionLevel.getBits() << 3) | i10;
        bitArray.appendBits(bits, 5);
        bitArray.appendBits(calculateBCHCode(bits, TYPE_INFO_POLY), 10);
        BitArray bitArray2 = new BitArray();
        bitArray2.appendBits(TYPE_INFO_MASK_PATTERN, 15);
        bitArray.xor(bitArray2);
        if (bitArray.getSize() == 15) {
            return;
        }
        throw new WriterException("should not happen but we got: " + bitArray.getSize());
    }

    static void makeVersionInfoBits(int i10, BitArray bitArray) throws WriterException {
        bitArray.appendBits(i10, 6);
        bitArray.appendBits(calculateBCHCode(i10, VERSION_INFO_POLY), 12);
        if (bitArray.getSize() == 18) {
            return;
        }
        throw new WriterException("should not happen but we got: " + bitArray.getSize());
    }

    private static void maybeEmbedPositionAdjustmentPatterns(int i10, ByteMatrix byteMatrix) throws WriterException {
        if (i10 < 2) {
            return;
        }
        int[] iArr = POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE[i10 - 1];
        for (int i11 : iArr) {
            for (int i12 : iArr) {
                if (i12 != -1 && i11 != -1 && isEmpty(byteMatrix.get(i12, i11))) {
                    embedPositionAdjustmentPattern(i12 - 2, i11 - 2, byteMatrix);
                }
            }
        }
    }

    static void maybeEmbedVersionInfo(int i10, ByteMatrix byteMatrix) throws WriterException {
        if (i10 < 7) {
            return;
        }
        BitArray bitArray = new BitArray();
        makeVersionInfoBits(i10, bitArray);
        int i11 = 17;
        for (int i12 = 0; i12 < 6; i12++) {
            for (int i13 = 0; i13 < 3; i13++) {
                boolean z10 = bitArray.get(i11);
                i11--;
                byteMatrix.set(i12, (byteMatrix.getHeight() - 11) + i13, z10);
                byteMatrix.set((byteMatrix.getHeight() - 11) + i13, i12, z10);
            }
        }
    }
}
