package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.common.BitArray;

/* JADX INFO: loaded from: classes5.dex */
abstract class AI01weightDecoder extends AI01decoder {
    AI01weightDecoder(BitArray bitArray) {
        super(bitArray);
    }

    protected abstract void addWeightCode(StringBuilder sb2, int i10);

    protected abstract int checkWeight(int i10);

    protected void encodeCompressedWeight(StringBuilder sb2, int i10, int i11) {
        int iExtractNumericValueFromBitArray = getGeneralDecoder().extractNumericValueFromBitArray(i10, i11);
        addWeightCode(sb2, iExtractNumericValueFromBitArray);
        int iCheckWeight = checkWeight(iExtractNumericValueFromBitArray);
        int i12 = 100000;
        for (int i13 = 0; i13 < 5; i13++) {
            if (iCheckWeight / i12 == 0) {
                sb2.append('0');
            }
            i12 /= 10;
        }
        sb2.append(iCheckWeight);
    }
}
