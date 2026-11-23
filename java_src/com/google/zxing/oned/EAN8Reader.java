package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

/* JADX INFO: loaded from: classes5.dex */
public final class EAN8Reader extends UPCEANReader {
    private final int[] decodeMiddleCounters = new int[4];

    @Override // com.google.zxing.oned.UPCEANReader
    protected int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb2) throws NotFoundException {
        int[] iArr2 = this.decodeMiddleCounters;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int size = bitArray.getSize();
        int i10 = iArr[1];
        for (int i11 = 0; i11 < 4 && i10 < size; i11++) {
            sb2.append((char) (UPCEANReader.decodeDigit(bitArray, iArr2, i10, UPCEANReader.L_PATTERNS) + 48));
            for (int i12 : iArr2) {
                i10 += i12;
            }
        }
        int i13 = UPCEANReader.findGuardPattern(bitArray, i10, true, UPCEANReader.MIDDLE_PATTERN)[1];
        for (int i14 = 0; i14 < 4 && i13 < size; i14++) {
            sb2.append((char) (UPCEANReader.decodeDigit(bitArray, iArr2, i13, UPCEANReader.L_PATTERNS) + 48));
            for (int i15 : iArr2) {
                i13 += i15;
            }
        }
        return i13;
    }

    @Override // com.google.zxing.oned.UPCEANReader
    BarcodeFormat getBarcodeFormat() {
        return BarcodeFormat.EAN_8;
    }
}
