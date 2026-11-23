package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class OneDimensionalCodeWriter implements Writer {
    private final int sidesMargin;

    protected OneDimensionalCodeWriter(int i10) {
        this.sidesMargin = i10;
    }

    protected static int appendPattern(byte[] bArr, int i10, int[] iArr, int i11) {
        if (i11 != 0 && i11 != 1) {
            throw new IllegalArgumentException("startColor must be either 0 or 1, but got: " + i11);
        }
        byte b10 = (byte) i11;
        int i12 = 0;
        for (int i13 : iArr) {
            for (int i14 = 0; i14 < i13; i14++) {
                bArr[i10] = b10;
                i10++;
                i12++;
            }
            b10 = (byte) (b10 ^ 1);
        }
        return i12;
    }

    private BitMatrix renderResult(byte[] bArr, int i10, int i11) {
        int length = bArr.length;
        int i12 = this.sidesMargin + length;
        int iMax = Math.max(i10, i12);
        int iMax2 = Math.max(1, i11);
        int i13 = iMax / i12;
        int i14 = (iMax - (length * i13)) / 2;
        BitMatrix bitMatrix = new BitMatrix(iMax, iMax2);
        int i15 = 0;
        while (i15 < length) {
            if (bArr[i15] == 1) {
                bitMatrix.setRegion(i14, 0, i13, iMax2);
            }
            i15++;
            i14 += i13;
        }
        return bitMatrix;
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i10, int i11) throws WriterException {
        return encode(str, barcodeFormat, i10, i11, null);
    }

    public abstract byte[] encode(String str);

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map<EncodeHintType, ?> map) throws WriterException {
        if (str.length() == 0) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (i10 >= 0 && i11 >= 0) {
            return renderResult(encode(str), i10, i11);
        }
        throw new IllegalArgumentException("Negative size is not allowed. Input: " + i10 + 'x' + i11);
    }
}
