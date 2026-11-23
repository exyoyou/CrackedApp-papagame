package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class EAN8Writer extends UPCEANWriter {
    private static final int CODE_WIDTH = 67;

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.EAN_8) {
            return super.encode(str, barcodeFormat, i10, i11, map);
        }
        throw new IllegalArgumentException("Can only encode EAN_8, but got " + barcodeFormat);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public byte[] encode(String str) {
        if (str.length() == 8) {
            byte[] bArr = new byte[67];
            int iAppendPattern = OneDimensionalCodeWriter.appendPattern(bArr, 0, UPCEANReader.START_END_PATTERN, 1) + 0;
            int i10 = 0;
            while (i10 <= 3) {
                int i11 = i10 + 1;
                iAppendPattern += OneDimensionalCodeWriter.appendPattern(bArr, iAppendPattern, UPCEANReader.L_PATTERNS[Integer.parseInt(str.substring(i10, i11))], 0);
                i10 = i11;
            }
            int iAppendPattern2 = iAppendPattern + OneDimensionalCodeWriter.appendPattern(bArr, iAppendPattern, UPCEANReader.MIDDLE_PATTERN, 0);
            int i12 = 4;
            while (i12 <= 7) {
                int i13 = i12 + 1;
                iAppendPattern2 += OneDimensionalCodeWriter.appendPattern(bArr, iAppendPattern2, UPCEANReader.L_PATTERNS[Integer.parseInt(str.substring(i12, i13))], 1);
                i12 = i13;
            }
            OneDimensionalCodeWriter.appendPattern(bArr, iAppendPattern2, UPCEANReader.START_END_PATTERN, 1);
            return bArr;
        }
        throw new IllegalArgumentException("Requested contents should be 8 digits long, but got " + str.length());
    }
}
