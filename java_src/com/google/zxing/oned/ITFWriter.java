package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class ITFWriter extends UPCEANWriter {
    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.ITF) {
            return super.encode(str, barcodeFormat, i10, i11, map);
        }
        throw new IllegalArgumentException("Can only encode ITF, but got " + barcodeFormat);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public byte[] encode(String str) {
        int length = str.length();
        if (length % 2 != 0) {
            throw new IllegalArgumentException("The lenght of the input should be even");
        }
        if (length <= 80) {
            byte[] bArr = new byte[(length * 9) + 9];
            int iAppendPattern = OneDimensionalCodeWriter.appendPattern(bArr, 0, new int[]{1, 1, 1, 1}, 1);
            for (int i10 = 0; i10 < length; i10 += 2) {
                int iDigit = Character.digit(str.charAt(i10), 10);
                int iDigit2 = Character.digit(str.charAt(i10 + 1), 10);
                int[] iArr = new int[18];
                for (int i11 = 0; i11 < 5; i11++) {
                    int i12 = i11 << 1;
                    int[][] iArr2 = ITFReader.PATTERNS;
                    iArr[i12] = iArr2[iDigit][i11];
                    iArr[i12 + 1] = iArr2[iDigit2][i11];
                }
                iAppendPattern += OneDimensionalCodeWriter.appendPattern(bArr, iAppendPattern, iArr, 1);
            }
            OneDimensionalCodeWriter.appendPattern(bArr, iAppendPattern, new int[]{3, 1, 1}, 1);
            return bArr;
        }
        throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + length);
    }
}
