package com.google.zxing.pdf417.detector;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class Detector {
    private static final int MAX_AVG_VARIANCE = 107;
    private static final int MAX_INDIVIDUAL_VARIANCE = 204;
    private static final int SKEW_THRESHOLD = 2;
    private static final int[] START_PATTERN = {8, 1, 1, 1, 1, 1, 1, 3};
    private static final int[] START_PATTERN_REVERSE = {3, 1, 1, 1, 1, 1, 1, 8};
    private static final int[] STOP_PATTERN = {7, 1, 1, 3, 1, 1, 1, 2, 1};
    private static final int[] STOP_PATTERN_REVERSE = {1, 2, 1, 1, 1, 3, 1, 1, 7};
    private final BinaryBitmap image;

    public Detector(BinaryBitmap binaryBitmap) {
        this.image = binaryBitmap;
    }

    private static int computeDimension(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, float f10) {
        return ((((round(ResultPoint.distance(resultPoint, resultPoint2) / f10) + round(ResultPoint.distance(resultPoint3, resultPoint4) / f10)) >> 1) + 8) / 17) * 17;
    }

    private static float computeModuleWidth(ResultPoint[] resultPointArr) {
        return (((ResultPoint.distance(resultPointArr[0], resultPointArr[4]) + ResultPoint.distance(resultPointArr[1], resultPointArr[5])) / 34.0f) + ((ResultPoint.distance(resultPointArr[6], resultPointArr[2]) + ResultPoint.distance(resultPointArr[7], resultPointArr[3])) / 36.0f)) / 2.0f;
    }

    private static void correctCodeWordVertices(ResultPoint[] resultPointArr, boolean z10) {
        float y10 = resultPointArr[4].getY() - resultPointArr[6].getY();
        if (z10) {
            y10 = -y10;
        }
        if (y10 > 2.0f) {
            float x10 = resultPointArr[4].getX() - resultPointArr[0].getX();
            resultPointArr[4] = new ResultPoint(resultPointArr[4].getX(), resultPointArr[4].getY() + ((x10 * (resultPointArr[6].getY() - resultPointArr[0].getY())) / (resultPointArr[6].getX() - resultPointArr[0].getX())));
        } else if ((-y10) > 2.0f) {
            float x11 = resultPointArr[2].getX() - resultPointArr[6].getX();
            resultPointArr[6] = new ResultPoint(resultPointArr[6].getX(), resultPointArr[6].getY() - ((x11 * (resultPointArr[2].getY() - resultPointArr[4].getY())) / (resultPointArr[2].getX() - resultPointArr[4].getX())));
        }
        float y11 = resultPointArr[7].getY() - resultPointArr[5].getY();
        if (z10) {
            y11 = -y11;
        }
        if (y11 > 2.0f) {
            float x12 = resultPointArr[5].getX() - resultPointArr[1].getX();
            resultPointArr[5] = new ResultPoint(resultPointArr[5].getX(), resultPointArr[5].getY() + ((x12 * (resultPointArr[7].getY() - resultPointArr[1].getY())) / (resultPointArr[7].getX() - resultPointArr[1].getX())));
            return;
        }
        if ((-y11) > 2.0f) {
            float x13 = resultPointArr[3].getX() - resultPointArr[7].getX();
            resultPointArr[7] = new ResultPoint(resultPointArr[7].getX(), resultPointArr[7].getY() - ((x13 * (resultPointArr[3].getY() - resultPointArr[5].getY())) / (resultPointArr[3].getX() - resultPointArr[5].getX())));
        }
    }

    private static int[] findGuardPattern(BitMatrix bitMatrix, int i10, int i11, int i12, boolean z10, int[] iArr, int[] iArr2) {
        Arrays.fill(iArr2, 0, iArr2.length, 0);
        int length = iArr.length;
        int i13 = i10;
        int i14 = i13;
        int i15 = 0;
        while (i13 < i10 + i12) {
            if (bitMatrix.get(i13, i11) ^ z10) {
                iArr2[i15] = iArr2[i15] + 1;
            } else {
                int i16 = length - 1;
                if (i15 != i16) {
                    i15++;
                } else {
                    if (patternMatchVariance(iArr2, iArr, 204) < 107) {
                        return new int[]{i14, i13};
                    }
                    i14 += iArr2[0] + iArr2[1];
                    int i17 = length - 2;
                    System.arraycopy(iArr2, 2, iArr2, 0, i17);
                    iArr2[i17] = 0;
                    iArr2[i16] = 0;
                    i15--;
                }
                iArr2[i15] = 1;
                z10 = !z10;
            }
            i13++;
        }
        return null;
    }

    private static ResultPoint[] findVertices(BitMatrix bitMatrix) {
        boolean z10;
        int height = bitMatrix.getHeight();
        int width = bitMatrix.getWidth();
        ResultPoint[] resultPointArr = new ResultPoint[8];
        int[] iArr = new int[START_PATTERN.length];
        boolean z11 = false;
        int i10 = 0;
        while (true) {
            if (i10 >= height) {
                z10 = false;
                break;
            }
            int[] iArrFindGuardPattern = findGuardPattern(bitMatrix, 0, i10, width, false, START_PATTERN, iArr);
            if (iArrFindGuardPattern != null) {
                float f10 = i10;
                resultPointArr[0] = new ResultPoint(iArrFindGuardPattern[0], f10);
                resultPointArr[4] = new ResultPoint(iArrFindGuardPattern[1], f10);
                z10 = true;
                break;
            }
            i10++;
        }
        if (z10) {
            int i11 = height - 1;
            while (true) {
                if (i11 <= 0) {
                    z10 = false;
                    break;
                }
                int[] iArrFindGuardPattern2 = findGuardPattern(bitMatrix, 0, i11, width, false, START_PATTERN, iArr);
                if (iArrFindGuardPattern2 != null) {
                    float f11 = i11;
                    resultPointArr[1] = new ResultPoint(iArrFindGuardPattern2[0], f11);
                    resultPointArr[5] = new ResultPoint(iArrFindGuardPattern2[1], f11);
                    z10 = true;
                    break;
                }
                i11--;
            }
        }
        int[] iArr2 = new int[STOP_PATTERN.length];
        if (z10) {
            int i12 = 0;
            while (true) {
                if (i12 >= height) {
                    z10 = false;
                    break;
                }
                int[] iArrFindGuardPattern3 = findGuardPattern(bitMatrix, 0, i12, width, false, STOP_PATTERN, iArr2);
                if (iArrFindGuardPattern3 != null) {
                    float f12 = i12;
                    resultPointArr[2] = new ResultPoint(iArrFindGuardPattern3[1], f12);
                    resultPointArr[6] = new ResultPoint(iArrFindGuardPattern3[0], f12);
                    z10 = true;
                    break;
                }
                i12++;
            }
        }
        if (z10) {
            for (int i13 = height - 1; i13 > 0; i13--) {
                int[] iArrFindGuardPattern4 = findGuardPattern(bitMatrix, 0, i13, width, false, STOP_PATTERN, iArr2);
                if (iArrFindGuardPattern4 != null) {
                    float f13 = i13;
                    resultPointArr[3] = new ResultPoint(iArrFindGuardPattern4[1], f13);
                    resultPointArr[7] = new ResultPoint(iArrFindGuardPattern4[0], f13);
                    z11 = true;
                    break;
                }
            }
        } else {
            z11 = z10;
        }
        if (z11) {
            return resultPointArr;
        }
        return null;
    }

    private static ResultPoint[] findVertices180(BitMatrix bitMatrix) {
        boolean z10;
        int height = bitMatrix.getHeight();
        boolean z11 = true;
        int width = bitMatrix.getWidth() >> 1;
        ResultPoint[] resultPointArr = new ResultPoint[8];
        int[] iArr = new int[START_PATTERN_REVERSE.length];
        int i10 = height - 1;
        int i11 = i10;
        while (true) {
            if (i11 <= 0) {
                z10 = false;
                break;
            }
            int[] iArrFindGuardPattern = findGuardPattern(bitMatrix, width, i11, width, true, START_PATTERN_REVERSE, iArr);
            if (iArrFindGuardPattern != null) {
                float f10 = i11;
                resultPointArr[0] = new ResultPoint(iArrFindGuardPattern[1], f10);
                resultPointArr[4] = new ResultPoint(iArrFindGuardPattern[0], f10);
                z10 = true;
                break;
            }
            i11--;
        }
        if (z10) {
            int i12 = 0;
            while (true) {
                if (i12 >= height) {
                    z10 = false;
                    break;
                }
                int[] iArrFindGuardPattern2 = findGuardPattern(bitMatrix, width, i12, width, true, START_PATTERN_REVERSE, iArr);
                if (iArrFindGuardPattern2 != null) {
                    float f11 = i12;
                    resultPointArr[1] = new ResultPoint(iArrFindGuardPattern2[1], f11);
                    resultPointArr[5] = new ResultPoint(iArrFindGuardPattern2[0], f11);
                    z10 = true;
                    break;
                }
                i12++;
            }
        }
        int[] iArr2 = new int[STOP_PATTERN_REVERSE.length];
        if (z10) {
            while (true) {
                if (i10 <= 0) {
                    z10 = false;
                    break;
                }
                int[] iArrFindGuardPattern3 = findGuardPattern(bitMatrix, 0, i10, width, false, STOP_PATTERN_REVERSE, iArr2);
                if (iArrFindGuardPattern3 != null) {
                    float f12 = i10;
                    resultPointArr[2] = new ResultPoint(iArrFindGuardPattern3[0], f12);
                    resultPointArr[6] = new ResultPoint(iArrFindGuardPattern3[1], f12);
                    z10 = true;
                    break;
                }
                i10--;
            }
        }
        if (z10) {
            for (int i13 = 0; i13 < height; i13++) {
                int[] iArrFindGuardPattern4 = findGuardPattern(bitMatrix, 0, i13, width, false, STOP_PATTERN_REVERSE, iArr2);
                if (iArrFindGuardPattern4 != null) {
                    float f13 = i13;
                    resultPointArr[3] = new ResultPoint(iArrFindGuardPattern4[0], f13);
                    resultPointArr[7] = new ResultPoint(iArrFindGuardPattern4[1], f13);
                }
            }
            z11 = false;
        } else {
            z11 = z10;
        }
        if (z11) {
            return resultPointArr;
        }
        return null;
    }

    private static int patternMatchVariance(int[] iArr, int[] iArr2, int i10) {
        int length = iArr.length;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13++) {
            i11 += iArr[i13];
            i12 += iArr2[i13];
        }
        if (i11 < i12) {
            return Integer.MAX_VALUE;
        }
        int i14 = (i11 << 8) / i12;
        int i15 = (i10 * i14) >> 8;
        int i16 = 0;
        for (int i17 = 0; i17 < length; i17++) {
            int i18 = iArr[i17] << 8;
            int i19 = iArr2[i17] * i14;
            int i20 = i18 > i19 ? i18 - i19 : i19 - i18;
            if (i20 > i15) {
                return Integer.MAX_VALUE;
            }
            i16 += i20;
        }
        return i16 / i11;
    }

    private static int round(float f10) {
        return (int) (f10 + 0.5f);
    }

    private static BitMatrix sampleGrid(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i10) throws NotFoundException {
        float f10 = i10;
        return GridSampler.getInstance().sampleGrid(bitMatrix, i10, i10, 0.0f, 0.0f, f10, 0.0f, f10, f10, 0.0f, f10, resultPoint.getX(), resultPoint.getY(), resultPoint3.getX(), resultPoint3.getY(), resultPoint4.getX(), resultPoint4.getY(), resultPoint2.getX(), resultPoint2.getY());
    }

    public DetectorResult detect() throws NotFoundException {
        return detect(null);
    }

    public DetectorResult detect(Map<DecodeHintType, ?> map) throws NotFoundException {
        BitMatrix blackMatrix = this.image.getBlackMatrix();
        ResultPoint[] resultPointArrFindVertices = findVertices(blackMatrix);
        if (resultPointArrFindVertices == null) {
            resultPointArrFindVertices = findVertices180(blackMatrix);
            if (resultPointArrFindVertices != null) {
                correctCodeWordVertices(resultPointArrFindVertices, true);
            }
        } else {
            correctCodeWordVertices(resultPointArrFindVertices, false);
        }
        if (resultPointArrFindVertices == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        float fComputeModuleWidth = computeModuleWidth(resultPointArrFindVertices);
        if (fComputeModuleWidth < 1.0f) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iComputeDimension = computeDimension(resultPointArrFindVertices[4], resultPointArrFindVertices[6], resultPointArrFindVertices[5], resultPointArrFindVertices[7], fComputeModuleWidth);
        if (iComputeDimension >= 1) {
            return new DetectorResult(sampleGrid(blackMatrix, resultPointArrFindVertices[4], resultPointArrFindVertices[5], resultPointArrFindVertices[6], resultPointArrFindVertices[7], iComputeDimension), new ResultPoint[]{resultPointArrFindVertices[5], resultPointArrFindVertices[4], resultPointArrFindVertices[6], resultPointArrFindVertices[7]});
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
