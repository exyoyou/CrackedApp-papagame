package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class EAN13Writer extends UPCEANWriter {
    private static final int CODE_WIDTH = 95;

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter, com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.EAN_13) {
            return super.encode(str, barcodeFormat, i10, i11, map);
        }
        throw new IllegalArgumentException("Can only encode EAN_13, but got " + barcodeFormat);
    }

    @Override // com.google.zxing.oned.OneDimensionalCodeWriter
    public byte[] encode(String str) {
        if (str.length() == 13) {
            int i10 = EAN13Reader.FIRST_DIGIT_ENCODINGS[Integer.parseInt(str.substring(0, 1))];
            byte[] bArr = new byte[95];
            int iAppendPattern = OneDimensionalCodeWriter.appendPattern(bArr, 0, UPCEANReader.START_END_PATTERN, 1) + 0;
            int i11 = 1;
            while (i11 <= 6) {
                int i12 = i11 + 1;
                int i13 = Integer.parseInt(str.substring(i11, i12));
                if (((i10 >> (6 - i11)) & 1) == 1) {
                    i13 += 10;
                }
                iAppendPattern += OneDimensionalCodeWriter.appendPattern(bArr, iAppendPattern, UPCEANReader.L_AND_G_PATTERNS[i13], 0);
                i11 = i12;
            }
            int iAppendPattern2 = iAppendPattern + OneDimensionalCodeWriter.appendPattern(bArr, iAppendPattern, UPCEANReader.MIDDLE_PATTERN, 0);
            int i14 = 7;
            while (i14 <= 12) {
                int i15 = i14 + 1;
                iAppendPattern2 += OneDimensionalCodeWriter.appendPattern(bArr, iAppendPattern2, UPCEANReader.L_PATTERNS[Integer.parseInt(str.substring(i14, i15))], 1);
                i14 = i15;
            }
            OneDimensionalCodeWriter.appendPattern(bArr, iAppendPattern2, UPCEANReader.START_END_PATTERN, 1);
            return bArr;
        }
        throw new IllegalArgumentException("Requested contents should be 13 digits long, but got " + str.length());
    }
}
