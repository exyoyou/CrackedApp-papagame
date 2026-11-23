package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.common.BitArray;

/* JADX INFO: loaded from: classes5.dex */
abstract class AI01decoder extends AbstractExpandedDecoder {
    protected static final int GTIN_SIZE = 40;

    AI01decoder(BitArray bitArray) {
        super(bitArray);
    }

    private static void appendCheckDigit(StringBuilder sb2, int i10) {
        int i11 = 0;
        for (int i12 = 0; i12 < 13; i12++) {
            int iCharAt = sb2.charAt(i12 + i10) - '0';
            if ((i12 & 1) == 0) {
                iCharAt *= 3;
            }
            i11 += iCharAt;
        }
        int i13 = 10 - (i11 % 10);
        sb2.append(i13 != 10 ? i13 : 0);
    }

    protected void encodeCompressedGtin(StringBuilder sb2, int i10) {
        sb2.append("(01)");
        int length = sb2.length();
        sb2.append('9');
        encodeCompressedGtinWithoutAI(sb2, i10, length);
    }

    protected void encodeCompressedGtinWithoutAI(StringBuilder sb2, int i10, int i11) {
        for (int i12 = 0; i12 < 4; i12++) {
            int iExtractNumericValueFromBitArray = getGeneralDecoder().extractNumericValueFromBitArray((i12 * 10) + i10, 10);
            if (iExtractNumericValueFromBitArray / 100 == 0) {
                sb2.append('0');
            }
            if (iExtractNumericValueFromBitArray / 10 == 0) {
                sb2.append('0');
            }
            sb2.append(iExtractNumericValueFromBitArray);
        }
        appendCheckDigit(sb2, i11);
    }
}
