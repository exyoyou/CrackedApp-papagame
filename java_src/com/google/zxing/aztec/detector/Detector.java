package com.google.zxing.aztec.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.aztec.AztecDetectorResult;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.detector.WhiteRectangleDetector;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;

/* JADX INFO: loaded from: classes5.dex */
public final class Detector {
    private boolean compact;
    private final BitMatrix image;
    private int nbCenterLayers;
    private int nbDataBlocks;
    private int nbLayers;
    private int shift;

    private static class Point {

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public final int f32801x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public final int f32802y;

        public ResultPoint toResultPoint() {
            return new ResultPoint(this.f32801x, this.f32802y);
        }

        private Point(int i10, int i11) {
            this.f32801x = i10;
            this.f32802y = i11;
        }
    }

    public Detector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
    }

    private static void correctParameterData(boolean[] zArr, boolean z10) throws NotFoundException {
        int i10;
        int i11;
        if (z10) {
            i10 = 7;
            i11 = 2;
        } else {
            i10 = 10;
            i11 = 4;
        }
        int i12 = i10 - i11;
        int[] iArr = new int[i10];
        int i13 = 0;
        while (true) {
            if (i13 >= i10) {
                try {
                    break;
                } catch (ReedSolomonException unused) {
                    throw NotFoundException.getNotFoundInstance();
                }
            }
            int i14 = 1;
            for (int i15 = 1; i15 <= 4; i15++) {
                if (zArr[((4 * i13) + 4) - i15]) {
                    iArr[i13] = iArr[i13] + i14;
                }
                i14 <<= 1;
            }
            i13++;
        }
        new ReedSolomonDecoder(GenericGF.AZTEC_PARAM).decode(iArr, i12);
        for (int i16 = 0; i16 < i11; i16++) {
            int i17 = 1;
            for (int i18 = 1; i18 <= 4; i18++) {
                zArr[((i16 * 4) + 4) - i18] = (iArr[i16] & i17) == i17;
                i17 <<= 1;
            }
        }
    }

    private static float distance(Point point, Point point2) {
        int i10 = point.f32801x;
        int i11 = point2.f32801x;
        int i12 = point.f32802y;
        int i13 = point2.f32802y;
        return (float) Math.sqrt(((i10 - i11) * (i10 - i11)) + ((i12 - i13) * (i12 - i13)));
    }

    private void extractParameters(Point[] pointArr) throws NotFoundException {
        boolean[] zArr;
        int i10 = 0;
        boolean[] zArrSampleLine = sampleLine(pointArr[0], pointArr[1], (this.nbCenterLayers * 2) + 1);
        boolean[] zArrSampleLine2 = sampleLine(pointArr[1], pointArr[2], (this.nbCenterLayers * 2) + 1);
        boolean[] zArrSampleLine3 = sampleLine(pointArr[2], pointArr[3], (this.nbCenterLayers * 2) + 1);
        boolean[] zArrSampleLine4 = sampleLine(pointArr[3], pointArr[0], (this.nbCenterLayers * 2) + 1);
        if (zArrSampleLine[0] && zArrSampleLine[this.nbCenterLayers * 2]) {
            this.shift = 0;
        } else if (zArrSampleLine2[0] && zArrSampleLine2[this.nbCenterLayers * 2]) {
            this.shift = 1;
        } else if (zArrSampleLine3[0] && zArrSampleLine3[this.nbCenterLayers * 2]) {
            this.shift = 2;
        } else {
            if (!zArrSampleLine4[0] || !zArrSampleLine4[this.nbCenterLayers * 2]) {
                throw NotFoundException.getNotFoundInstance();
            }
            this.shift = 3;
        }
        if (this.compact) {
            boolean[] zArr2 = new boolean[28];
            for (int i11 = 0; i11 < 7; i11++) {
                int i12 = i11 + 2;
                zArr2[i11] = zArrSampleLine[i12];
                zArr2[i11 + 7] = zArrSampleLine2[i12];
                zArr2[i11 + 14] = zArrSampleLine3[i12];
                zArr2[i11 + 21] = zArrSampleLine4[i12];
            }
            zArr = new boolean[28];
            while (i10 < 28) {
                zArr[i10] = zArr2[((this.shift * 7) + i10) % 28];
                i10++;
            }
        } else {
            boolean[] zArr3 = new boolean[40];
            for (int i13 = 0; i13 < 11; i13++) {
                if (i13 < 5) {
                    int i14 = i13 + 2;
                    zArr3[i13] = zArrSampleLine[i14];
                    zArr3[i13 + 10] = zArrSampleLine2[i14];
                    zArr3[i13 + 20] = zArrSampleLine3[i14];
                    zArr3[i13 + 30] = zArrSampleLine4[i14];
                }
                if (i13 > 5) {
                    int i15 = i13 + 2;
                    zArr3[i13 - 1] = zArrSampleLine[i15];
                    zArr3[(i13 + 10) - 1] = zArrSampleLine2[i15];
                    zArr3[(i13 + 20) - 1] = zArrSampleLine3[i15];
                    zArr3[(i13 + 30) - 1] = zArrSampleLine4[i15];
                }
            }
            zArr = new boolean[40];
            while (i10 < 40) {
                zArr[i10] = zArr3[((this.shift * 10) + i10) % 40];
                i10++;
            }
        }
        correctParameterData(zArr, this.compact);
        getParameters(zArr);
    }

    private Point[] getBullEyeCornerPoints(Point point) throws NotFoundException {
        this.nbCenterLayers = 1;
        Point point2 = point;
        Point point3 = point2;
        Point point4 = point3;
        Point point5 = point4;
        boolean z10 = true;
        while (this.nbCenterLayers < 9) {
            Point firstDifferent = getFirstDifferent(point2, z10, 1, -1);
            Point firstDifferent2 = getFirstDifferent(point3, z10, 1, 1);
            Point firstDifferent3 = getFirstDifferent(point4, z10, -1, 1);
            Point firstDifferent4 = getFirstDifferent(point5, z10, -1, -1);
            if (this.nbCenterLayers > 2) {
                double dDistance = (distance(firstDifferent4, firstDifferent) * this.nbCenterLayers) / (distance(point5, point2) * (this.nbCenterLayers + 2));
                if (dDistance < 0.75d || dDistance > 1.25d || !isWhiteOrBlackRectangle(firstDifferent, firstDifferent2, firstDifferent3, firstDifferent4)) {
                    break;
                }
            }
            z10 = !z10;
            this.nbCenterLayers++;
            point5 = firstDifferent4;
            point2 = firstDifferent;
            point3 = firstDifferent2;
            point4 = firstDifferent3;
        }
        int i10 = this.nbCenterLayers;
        if (i10 != 5 && i10 != 7) {
            throw NotFoundException.getNotFoundInstance();
        }
        this.compact = i10 == 5;
        float f10 = 1.5f / ((i10 * 2) - 3);
        int i11 = point2.f32801x;
        int i12 = point4.f32801x;
        int i13 = point2.f32802y - point4.f32802y;
        float f11 = (i11 - i12) * f10;
        int iRound = round(i12 - f11);
        float f12 = i13 * f10;
        int iRound2 = round(point4.f32802y - f12);
        int iRound3 = round(point2.f32801x + f11);
        int iRound4 = round(point2.f32802y + f12);
        int i14 = point3.f32801x;
        int i15 = point5.f32801x;
        int i16 = point3.f32802y - point5.f32802y;
        float f13 = (i14 - i15) * f10;
        int iRound5 = round(i15 - f13);
        float f14 = f10 * i16;
        int iRound6 = round(point5.f32802y - f14);
        int iRound7 = round(point3.f32801x + f13);
        int iRound8 = round(point3.f32802y + f14);
        if (!isValid(iRound3, iRound4) || !isValid(iRound7, iRound8) || !isValid(iRound, iRound2) || !isValid(iRound5, iRound6)) {
            throw NotFoundException.getNotFoundInstance();
        }
        return new Point[]{new Point(iRound3, iRound4), new Point(iRound7, iRound8), new Point(iRound, iRound2), new Point(iRound5, iRound6)};
    }

    private int getColor(Point point, Point point2) {
        float fDistance = distance(point, point2);
        int i10 = point2.f32801x;
        int i11 = point.f32801x;
        float f10 = (i10 - i11) / fDistance;
        int i12 = point2.f32802y;
        int i13 = point.f32802y;
        float f11 = (i12 - i13) / fDistance;
        float f12 = i11;
        float f13 = i13;
        boolean z10 = this.image.get(i11, i13);
        int i14 = 0;
        for (int i15 = 0; i15 < fDistance; i15++) {
            f12 += f10;
            f13 += f11;
            if (this.image.get(round(f12), round(f13)) != z10) {
                i14++;
            }
        }
        double d10 = i14 / fDistance;
        if (d10 > 0.1d && d10 < 0.9d) {
            return 0;
        }
        if (d10 <= 0.1d) {
            return z10 ? 1 : -1;
        }
        return z10 ? -1 : 1;
    }

    private Point getFirstDifferent(Point point, boolean z10, int i10, int i11) {
        int i12 = point.f32801x + i10;
        int i13 = point.f32802y;
        while (true) {
            i13 += i11;
            if (!isValid(i12, i13) || this.image.get(i12, i13) != z10) {
                break;
            }
            i12 += i10;
        }
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        while (isValid(i14, i15) && this.image.get(i14, i15) == z10) {
            i14 += i10;
        }
        int i16 = i14 - i10;
        while (isValid(i16, i15) && this.image.get(i16, i15) == z10) {
            i15 += i11;
        }
        return new Point(i16, i15 - i11);
    }

    private Point getMatrixCenter() {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint resultPoint3;
        ResultPoint resultPoint4;
        ResultPoint resultPoint5;
        ResultPoint resultPoint6;
        ResultPoint resultPoint7;
        ResultPoint resultPoint8;
        try {
            ResultPoint[] resultPointArrDetect = new WhiteRectangleDetector(this.image).detect();
            resultPoint3 = resultPointArrDetect[0];
            resultPoint4 = resultPointArrDetect[1];
            resultPoint2 = resultPointArrDetect[2];
            resultPoint = resultPointArrDetect[3];
        } catch (NotFoundException unused) {
            int width = this.image.getWidth() / 2;
            int height = this.image.getHeight() / 2;
            int i10 = width + 7;
            int i11 = height - 7;
            ResultPoint resultPoint9 = getFirstDifferent(new Point(i10, i11), false, 1, -1).toResultPoint();
            int i12 = height + 7;
            ResultPoint resultPoint10 = getFirstDifferent(new Point(i10, i12), false, 1, 1).toResultPoint();
            int i13 = width - 7;
            ResultPoint resultPoint11 = getFirstDifferent(new Point(i13, i12), false, -1, 1).toResultPoint();
            resultPoint = getFirstDifferent(new Point(i13, i11), false, -1, -1).toResultPoint();
            resultPoint2 = resultPoint11;
            resultPoint3 = resultPoint9;
            resultPoint4 = resultPoint10;
        }
        int iRound = round((((resultPoint3.getX() + resultPoint.getX()) + resultPoint4.getX()) + resultPoint2.getX()) / 4.0f);
        int iRound2 = round((((resultPoint3.getY() + resultPoint.getY()) + resultPoint4.getY()) + resultPoint2.getY()) / 4.0f);
        try {
            ResultPoint[] resultPointArrDetect2 = new WhiteRectangleDetector(this.image, 15, iRound, iRound2).detect();
            resultPoint5 = resultPointArrDetect2[0];
            resultPoint6 = resultPointArrDetect2[1];
            resultPoint7 = resultPointArrDetect2[2];
            resultPoint8 = resultPointArrDetect2[3];
        } catch (NotFoundException unused2) {
            int i14 = iRound + 7;
            int i15 = iRound2 - 7;
            resultPoint5 = getFirstDifferent(new Point(i14, i15), false, 1, -1).toResultPoint();
            int i16 = iRound2 + 7;
            resultPoint6 = getFirstDifferent(new Point(i14, i16), false, 1, 1).toResultPoint();
            int i17 = iRound - 7;
            resultPoint7 = getFirstDifferent(new Point(i17, i16), false, -1, 1).toResultPoint();
            resultPoint8 = getFirstDifferent(new Point(i17, i15), false, -1, -1).toResultPoint();
        }
        return new Point(round((((resultPoint5.getX() + resultPoint8.getX()) + resultPoint6.getX()) + resultPoint7.getX()) / 4.0f), round((((resultPoint5.getY() + resultPoint8.getY()) + resultPoint6.getY()) + resultPoint7.getY()) / 4.0f));
    }

    private ResultPoint[] getMatrixCornerPoints(Point[] pointArr) throws NotFoundException {
        int i10 = this.nbLayers;
        float f10 = (((i10 * 2) + (i10 > 4 ? 1 : 0)) + ((i10 - 4) / 8)) / (this.nbCenterLayers * 2.0f);
        Point point = pointArr[0];
        int i11 = point.f32801x;
        Point point2 = pointArr[2];
        int i12 = point2.f32801x;
        int i13 = i11 - i12;
        int i14 = i13 + (i13 > 0 ? 1 : -1);
        int i15 = point.f32802y - point2.f32802y;
        int i16 = i15 + (i15 > 0 ? 1 : -1);
        float f11 = i14 * f10;
        int iRound = round(i12 - f11);
        float f12 = i16 * f10;
        int iRound2 = round(pointArr[2].f32802y - f12);
        int iRound3 = round(pointArr[0].f32801x + f11);
        int iRound4 = round(pointArr[0].f32802y + f12);
        Point point3 = pointArr[1];
        int i17 = point3.f32801x;
        Point point4 = pointArr[3];
        int i18 = point4.f32801x;
        int i19 = i17 - i18;
        int i20 = i19 + (i19 > 0 ? 1 : -1);
        int i21 = point3.f32802y - point4.f32802y;
        int i22 = i21 + (i21 > 0 ? 1 : -1);
        float f13 = i20 * f10;
        int iRound5 = round(i18 - f13);
        float f14 = f10 * i22;
        int iRound6 = round(pointArr[3].f32802y - f14);
        int iRound7 = round(pointArr[1].f32801x + f13);
        int iRound8 = round(pointArr[1].f32802y + f14);
        if (isValid(iRound3, iRound4) && isValid(iRound7, iRound8) && isValid(iRound, iRound2) && isValid(iRound5, iRound6)) {
            return new ResultPoint[]{new ResultPoint(iRound3, iRound4), new ResultPoint(iRound7, iRound8), new ResultPoint(iRound, iRound2), new ResultPoint(iRound5, iRound6)};
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private void getParameters(boolean[] zArr) {
        int i10;
        int i11;
        if (this.compact) {
            i10 = 2;
            i11 = 6;
        } else {
            i10 = 5;
            i11 = 11;
        }
        for (int i12 = 0; i12 < i10; i12++) {
            int i13 = this.nbLayers << 1;
            this.nbLayers = i13;
            if (zArr[i12]) {
                this.nbLayers = i13 + 1;
            }
        }
        for (int i14 = i10; i14 < i10 + i11; i14++) {
            int i15 = this.nbDataBlocks << 1;
            this.nbDataBlocks = i15;
            if (zArr[i14]) {
                this.nbDataBlocks = i15 + 1;
            }
        }
        this.nbLayers++;
        this.nbDataBlocks++;
    }

    private boolean isValid(int i10, int i11) {
        return i10 >= 0 && i10 < this.image.getWidth() && i11 > 0 && i11 < this.image.getHeight();
    }

    private boolean isWhiteOrBlackRectangle(Point point, Point point2, Point point3, Point point4) {
        Point point5 = new Point(point.f32801x - 3, point.f32802y + 3);
        Point point6 = new Point(point2.f32801x - 3, point2.f32802y - 3);
        Point point7 = new Point(point3.f32801x + 3, point3.f32802y - 3);
        Point point8 = new Point(point4.f32801x + 3, point4.f32802y + 3);
        int color = getColor(point8, point5);
        return color != 0 && getColor(point5, point6) == color && getColor(point6, point7) == color && getColor(point7, point8) == color;
    }

    private static int round(float f10) {
        return (int) (f10 + 0.5f);
    }

    private BitMatrix sampleGrid(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4) throws NotFoundException {
        int i10;
        if (this.compact) {
            i10 = (this.nbLayers * 4) + 11;
        } else {
            int i11 = this.nbLayers;
            i10 = i11 <= 4 ? (i11 * 4) + 15 : (i11 * 4) + ((((i11 - 4) / 8) + 1) * 2) + 15;
        }
        int i12 = i10;
        float f10 = i12 - 0.5f;
        return GridSampler.getInstance().sampleGrid(bitMatrix, i12, i12, 0.5f, 0.5f, f10, 0.5f, f10, f10, 0.5f, f10, resultPoint.getX(), resultPoint.getY(), resultPoint4.getX(), resultPoint4.getY(), resultPoint3.getX(), resultPoint3.getY(), resultPoint2.getX(), resultPoint2.getY());
    }

    private boolean[] sampleLine(Point point, Point point2, int i10) {
        boolean[] zArr = new boolean[i10];
        float fDistance = distance(point, point2);
        float f10 = fDistance / (i10 - 1);
        int i11 = point2.f32801x;
        int i12 = point.f32801x;
        float f11 = ((i11 - i12) * f10) / fDistance;
        int i13 = point2.f32802y;
        int i14 = point.f32802y;
        float f12 = (f10 * (i13 - i14)) / fDistance;
        float f13 = i12;
        float f14 = i14;
        for (int i15 = 0; i15 < i10; i15++) {
            zArr[i15] = this.image.get(round(f13), round(f14));
            f13 += f11;
            f14 += f12;
        }
        return zArr;
    }

    public AztecDetectorResult detect() throws NotFoundException {
        Point[] bullEyeCornerPoints = getBullEyeCornerPoints(getMatrixCenter());
        extractParameters(bullEyeCornerPoints);
        ResultPoint[] matrixCornerPoints = getMatrixCornerPoints(bullEyeCornerPoints);
        BitMatrix bitMatrix = this.image;
        int i10 = this.shift;
        return new AztecDetectorResult(sampleGrid(bitMatrix, matrixCornerPoints[i10 % 4], matrixCornerPoints[(i10 + 3) % 4], matrixCornerPoints[(i10 + 2) % 4], matrixCornerPoints[(i10 + 1) % 4]), matrixCornerPoints, this.compact, this.nbDataBlocks, this.nbLayers);
    }
}
