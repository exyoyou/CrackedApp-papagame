package com.google.zxing.pdf417.encoder;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.lang.reflect.Array;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class PDF417Writer implements Writer {
    private static BitMatrix bitMatrixFromEncoder(PDF417 pdf417, String str, int i10, int i11) throws WriterException {
        boolean z10;
        pdf417.generateBarcodeLogic(str, 2);
        byte[][] scaledMatrix = pdf417.getBarcodeMatrix().getScaledMatrix(2, 8);
        if ((i11 > i10) ^ (scaledMatrix[0].length < scaledMatrix.length)) {
            scaledMatrix = rotateArray(scaledMatrix);
            z10 = true;
        } else {
            z10 = false;
        }
        int length = i10 / scaledMatrix[0].length;
        int length2 = i11 / scaledMatrix.length;
        if (length >= length2) {
            length = length2;
        }
        if (length <= 1) {
            return bitMatrixFrombitArray(scaledMatrix);
        }
        byte[][] scaledMatrix2 = pdf417.getBarcodeMatrix().getScaledMatrix(length * 2, length * 4 * 2);
        if (z10) {
            scaledMatrix2 = rotateArray(scaledMatrix2);
        }
        return bitMatrixFrombitArray(scaledMatrix2);
    }

    private static BitMatrix bitMatrixFrombitArray(byte[][] bArr) {
        BitMatrix bitMatrix = new BitMatrix(bArr.length + 60, bArr[0].length + 60);
        bitMatrix.clear();
        for (int i10 = 0; i10 < bArr.length; i10++) {
            for (int i11 = 0; i11 < bArr[0].length; i11++) {
                if (bArr[i10][i11] == 1) {
                    bitMatrix.set(i10 + 30, i11 + 30);
                }
            }
        }
        return bitMatrix;
    }

    private static PDF417 initializeEncoder(BarcodeFormat barcodeFormat, boolean z10) {
        if (barcodeFormat == BarcodeFormat.PDF_417) {
            PDF417 pdf417 = new PDF417();
            pdf417.setCompact(z10);
            return pdf417;
        }
        throw new IllegalArgumentException("Can only encode PDF_417, but got " + barcodeFormat);
    }

    private static byte[][] rotateArray(byte[][] bArr) {
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, bArr[0].length, bArr.length);
        for (int i10 = 0; i10 < bArr.length; i10++) {
            int length = (bArr.length - i10) - 1;
            for (int i11 = 0; i11 < bArr[0].length; i11++) {
                bArr2[i11][length] = bArr[i10][i11];
            }
        }
        return bArr2;
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map<EncodeHintType, ?> map) throws WriterException {
        return encode(str, barcodeFormat, i10, i11);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i10, int i11) throws WriterException {
        return bitMatrixFromEncoder(initializeEncoder(barcodeFormat, false), str, i10, i11);
    }

    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, boolean z10, int i10, int i11, int i12, int i13, int i14, int i15, Compaction compaction) throws WriterException {
        PDF417 pdf417InitializeEncoder = initializeEncoder(barcodeFormat, z10);
        pdf417InitializeEncoder.setDimensions(i13, i12, i15, i14);
        pdf417InitializeEncoder.setCompaction(compaction);
        return bitMatrixFromEncoder(pdf417InitializeEncoder, str, i10, i11);
    }
}
