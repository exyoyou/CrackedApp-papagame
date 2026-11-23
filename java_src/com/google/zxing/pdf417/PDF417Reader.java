package com.google.zxing.pdf417;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.pdf417.decoder.Decoder;
import com.google.zxing.pdf417.detector.Detector;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class PDF417Reader implements Reader {
    private static final ResultPoint[] NO_POINTS = new ResultPoint[0];
    private final Decoder decoder = new Decoder();

    private static BitMatrix extractPureBits(BitMatrix bitMatrix) throws NotFoundException {
        int[] topLeftOnBit = bitMatrix.getTopLeftOnBit();
        int[] bottomRightOnBit = bitMatrix.getBottomRightOnBit();
        if (topLeftOnBit == null || bottomRightOnBit == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iModuleSize = moduleSize(topLeftOnBit, bitMatrix);
        int i10 = topLeftOnBit[1];
        int i11 = bottomRightOnBit[1];
        int iFindPatternStart = findPatternStart(topLeftOnBit[0], i10, bitMatrix);
        int iFindPatternEnd = ((findPatternEnd(topLeftOnBit[0], i10, bitMatrix) - iFindPatternStart) + 1) / iModuleSize;
        int i12 = ((i11 - i10) + 1) / iModuleSize;
        if (iFindPatternEnd <= 0 || i12 <= 0) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i13 = iModuleSize >> 1;
        int i14 = i10 + i13;
        int i15 = iFindPatternStart + i13;
        BitMatrix bitMatrix2 = new BitMatrix(iFindPatternEnd, i12);
        for (int i16 = 0; i16 < i12; i16++) {
            int i17 = (i16 * iModuleSize) + i14;
            for (int i18 = 0; i18 < iFindPatternEnd; i18++) {
                if (bitMatrix.get((i18 * iModuleSize) + i15, i17)) {
                    bitMatrix2.set(i18, i16);
                }
            }
        }
        return bitMatrix2;
    }

    private static int findPatternEnd(int i10, int i11, BitMatrix bitMatrix) throws NotFoundException {
        boolean z10 = true;
        int width = bitMatrix.getWidth() - 1;
        while (width > i10 && !bitMatrix.get(width, i11)) {
            width--;
        }
        int i12 = 0;
        while (width > i10 && i12 < 9) {
            width--;
            boolean z11 = bitMatrix.get(width, i11);
            if (z10 != z11) {
                i12++;
            }
            z10 = z11;
        }
        if (width != i10) {
            return width;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int findPatternStart(int i10, int i11, BitMatrix bitMatrix) throws NotFoundException {
        int i12;
        int width = bitMatrix.getWidth();
        int i13 = 0;
        boolean z10 = true;
        while (true) {
            i12 = width - 1;
            if (i10 >= i12 || i13 >= 8) {
                break;
            }
            i10++;
            boolean z11 = bitMatrix.get(i10, i11);
            if (z10 != z11) {
                i13++;
            }
            z10 = z11;
        }
        if (i10 != i12) {
            return i10;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int moduleSize(int[] iArr, BitMatrix bitMatrix) throws NotFoundException {
        int i10 = iArr[0];
        int i11 = iArr[1];
        int width = bitMatrix.getWidth();
        while (i10 < width && bitMatrix.get(i10, i11)) {
            i10++;
        }
        if (i10 == width) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i12 = (i10 - iArr[0]) >>> 3;
        if (i12 != 0) {
            return i12;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) throws NotFoundException, FormatException {
        return decode(binaryBitmap, null);
    }

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        ResultPoint[] points;
        DecoderResult decoderResultDecode;
        if (map == null || !map.containsKey(DecodeHintType.PURE_BARCODE)) {
            DetectorResult detectorResultDetect = new Detector(binaryBitmap).detect();
            DecoderResult decoderResultDecode2 = this.decoder.decode(detectorResultDetect.getBits());
            points = detectorResultDetect.getPoints();
            decoderResultDecode = decoderResultDecode2;
        } else {
            decoderResultDecode = this.decoder.decode(extractPureBits(binaryBitmap.getBlackMatrix()));
            points = NO_POINTS;
        }
        return new Result(decoderResultDecode.getText(), decoderResultDecode.getRawBytes(), points, BarcodeFormat.PDF_417);
    }
}
