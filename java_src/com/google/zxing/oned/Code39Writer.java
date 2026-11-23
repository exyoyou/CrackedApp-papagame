package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class Code39Writer extends UPCEANWriter {
    private static void toIntArray(int i10, int[] iArr) {
        for (int i11 = 0; i11 < 9; i11++) {
            int i12 = 1;
            if (((1 << i11) & i10) != 0) {
                i12 = 2;
            }
            iArr[i11] = i12;
        }
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.CODE_39) {
            return super.encode(str, barcodeFormat, i10, i11, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_39, but got " + barcodeFormat);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public byte[] encode(String str) {
        int length = str.length();
        if (length <= 80) {
            int[] iArr = new int[9];
            int i10 = length + 25;
            for (int i11 = 0; i11 < length; i11++) {
                toIntArray(Code39Reader.CHARACTER_ENCODINGS["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".indexOf(str.charAt(i11))], iArr);
                for (int i12 = 0; i12 < 9; i12++) {
                    i10 += iArr[i12];
                }
            }
            byte[] bArr = new byte[i10];
            toIntArray(Code39Reader.CHARACTER_ENCODINGS[39], iArr);
            int iAppendPattern = OneDimensionalCodeWriter.appendPattern(bArr, 0, iArr, 1);
            int[] iArr2 = {1};
            int iAppendPattern2 = iAppendPattern + OneDimensionalCodeWriter.appendPattern(bArr, iAppendPattern, iArr2, 0);
            for (int i13 = length - 1; i13 >= 0; i13--) {
                toIntArray(Code39Reader.CHARACTER_ENCODINGS["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".indexOf(str.charAt(i13))], iArr);
                int iAppendPattern3 = iAppendPattern2 + OneDimensionalCodeWriter.appendPattern(bArr, iAppendPattern2, iArr, 1);
                iAppendPattern2 = iAppendPattern3 + OneDimensionalCodeWriter.appendPattern(bArr, iAppendPattern3, iArr2, 0);
            }
            toIntArray(Code39Reader.CHARACTER_ENCODINGS[39], iArr);
            OneDimensionalCodeWriter.appendPattern(bArr, iAppendPattern2, iArr, 1);
            return bArr;
        }
        throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + length);
    }
}
