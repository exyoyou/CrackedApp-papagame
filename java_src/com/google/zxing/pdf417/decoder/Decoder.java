package com.google.zxing.pdf417.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;

/* JADX INFO: loaded from: classes5.dex */
public final class Decoder {
    private static final int MAX_EC_CODEWORDS = 512;
    private static final int MAX_ERRORS = 3;

    private static int correctErrors(int[] iArr, int[] iArr2, int i10) throws FormatException {
        if (iArr2.length > (i10 / 2) + 3 || i10 < 0 || i10 > 512) {
            throw FormatException.getFormatInstance();
        }
        if (iArr2.length <= 3) {
            return 0;
        }
        throw FormatException.getFormatInstance();
    }

    private static void verifyCodewordCount(int[] iArr, int i10) throws FormatException {
        if (iArr.length < 4) {
            throw FormatException.getFormatInstance();
        }
        int i11 = iArr[0];
        if (i11 > iArr.length) {
            throw FormatException.getFormatInstance();
        }
        if (i11 == 0) {
            if (i10 >= iArr.length) {
                throw FormatException.getFormatInstance();
            }
            iArr[0] = iArr.length - i10;
        }
    }

    public DecoderResult decode(boolean[][] zArr) throws FormatException {
        int length = zArr.length;
        BitMatrix bitMatrix = new BitMatrix(length);
        for (int i10 = 0; i10 < length; i10++) {
            for (int i11 = 0; i11 < length; i11++) {
                if (zArr[i11][i10]) {
                    bitMatrix.set(i11, i10);
                }
            }
        }
        return decode(bitMatrix);
    }

    public DecoderResult decode(BitMatrix bitMatrix) throws FormatException {
        BitMatrixParser bitMatrixParser = new BitMatrixParser(bitMatrix);
        int[] codewords = bitMatrixParser.readCodewords();
        if (codewords.length != 0) {
            int eCLevel = 1 << (bitMatrixParser.getECLevel() + 1);
            correctErrors(codewords, bitMatrixParser.getErasures(), eCLevel);
            verifyCodewordCount(codewords, eCLevel);
            return DecodedBitStreamParser.decode(codewords);
        }
        throw FormatException.getFormatInstance();
    }
}
