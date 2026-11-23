package com.google.zxing.multi;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class GenericMultipleBarcodeReader implements MultipleBarcodeReader {
    private static final int MIN_DIMENSION_TO_RECUR = 100;
    private final Reader delegate;

    public GenericMultipleBarcodeReader(Reader reader) {
        this.delegate = reader;
    }

    private void doDecodeMultiple(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map, List<Result> list, int i10, int i11) {
        boolean z10;
        try {
            Result resultDecode = this.delegate.decode(binaryBitmap, map);
            Iterator<Result> it2 = list.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (it2.next().getText().equals(resultDecode.getText())) {
                        z10 = true;
                        break;
                    }
                } else {
                    z10 = false;
                    break;
                }
            }
            if (z10) {
                return;
            }
            list.add(translateResultPoints(resultDecode, i10, i11));
            ResultPoint[] resultPoints = resultDecode.getResultPoints();
            if (resultPoints == null || resultPoints.length == 0) {
                return;
            }
            int width = binaryBitmap.getWidth();
            int height = binaryBitmap.getHeight();
            float f10 = width;
            float f11 = 0.0f;
            float f12 = height;
            float f13 = 0.0f;
            for (ResultPoint resultPoint : resultPoints) {
                float x10 = resultPoint.getX();
                float y10 = resultPoint.getY();
                if (x10 < f10) {
                    f10 = x10;
                }
                if (y10 < f12) {
                    f12 = y10;
                }
                if (x10 > f13) {
                    f13 = x10;
                }
                if (y10 > f11) {
                    f11 = y10;
                }
            }
            if (f10 > 100.0f) {
                doDecodeMultiple(binaryBitmap.crop(0, 0, (int) f10, height), map, list, i10, i11);
            }
            if (f12 > 100.0f) {
                doDecodeMultiple(binaryBitmap.crop(0, 0, width, (int) f12), map, list, i10, i11);
            }
            float f14 = f13;
            if (f14 < width - 100) {
                int i12 = (int) f14;
                doDecodeMultiple(binaryBitmap.crop(i12, 0, width - i12, height), map, list, i10 + i12, i11);
            }
            float f15 = f11;
            if (f15 < height - 100) {
                int i13 = (int) f15;
                doDecodeMultiple(binaryBitmap.crop(0, i13, width, height - i13), map, list, i10, i11 + i13);
            }
        } catch (ReaderException unused) {
        }
    }

    private static Result translateResultPoints(Result result, int i10, int i11) {
        ResultPoint[] resultPoints = result.getResultPoints();
        if (resultPoints == null) {
            return result;
        }
        ResultPoint[] resultPointArr = new ResultPoint[resultPoints.length];
        for (int i12 = 0; i12 < resultPoints.length; i12++) {
            ResultPoint resultPoint = resultPoints[i12];
            resultPointArr[i12] = new ResultPoint(resultPoint.getX() + i10, resultPoint.getY() + i11);
        }
        return new Result(result.getText(), result.getRawBytes(), resultPointArr, result.getBarcodeFormat());
    }

    @Override // com.google.zxing.multi.MultipleBarcodeReader
    public Result[] decodeMultiple(BinaryBitmap binaryBitmap) throws NotFoundException {
        return decodeMultiple(binaryBitmap, null);
    }

    @Override // com.google.zxing.multi.MultipleBarcodeReader
    public Result[] decodeMultiple(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException {
        ArrayList arrayList = new ArrayList();
        doDecodeMultiple(binaryBitmap, map, arrayList, 0, 0);
        if (arrayList.isEmpty()) {
            throw NotFoundException.getNotFoundInstance();
        }
        return (Result[]) arrayList.toArray(new Result[arrayList.size()]);
    }
}
