package com.google.zxing.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.encoder.ByteMatrix;
import com.google.zxing.qrcode.encoder.Encoder;
import com.google.zxing.qrcode.encoder.QRCode;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class QRCodeWriter implements Writer {
    private static final int QUIET_ZONE_SIZE = 4;

    private static BitMatrix renderResult(QRCode qRCode, int i10, int i11) {
        ByteMatrix matrix = qRCode.getMatrix();
        if (matrix == null) {
            throw new IllegalStateException();
        }
        int width = matrix.getWidth();
        int height = matrix.getHeight();
        int i12 = width + 8;
        int i13 = height + 8;
        int iMax = Math.max(i10, i12);
        int iMax2 = Math.max(i11, i13);
        int iMin = Math.min(iMax / i12, iMax2 / i13);
        int i14 = (iMax - (width * iMin)) / 2;
        int i15 = (iMax2 - (height * iMin)) / 2;
        BitMatrix bitMatrix = new BitMatrix(iMax, iMax2);
        int i16 = 0;
        while (i16 < height) {
            int i17 = i14;
            int i18 = 0;
            while (i18 < width) {
                if (matrix.get(i18, i16) == 1) {
                    bitMatrix.setRegion(i17, i15, iMin, iMin);
                }
                i18++;
                i17 += iMin;
            }
            i16++;
            i15 += iMin;
        }
        return bitMatrix;
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i10, int i11) throws WriterException {
        return encode(str, barcodeFormat, i10, i11, null);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map<EncodeHintType, ?> map) throws WriterException {
        ErrorCorrectionLevel errorCorrectionLevel;
        if (str.length() == 0) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (barcodeFormat != BarcodeFormat.QR_CODE) {
            throw new IllegalArgumentException("Can only encode QR_CODE, but got " + barcodeFormat);
        }
        if (i10 < 0 || i11 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i10 + 'x' + i11);
        }
        ErrorCorrectionLevel errorCorrectionLevel2 = ErrorCorrectionLevel.L;
        if (map != null && (errorCorrectionLevel = (ErrorCorrectionLevel) map.get(EncodeHintType.ERROR_CORRECTION)) != null) {
            errorCorrectionLevel2 = errorCorrectionLevel;
        }
        QRCode qRCode = new QRCode();
        Encoder.encode(str, errorCorrectionLevel2, map, qRCode);
        return renderResult(qRCode, i10, i11);
    }
}
