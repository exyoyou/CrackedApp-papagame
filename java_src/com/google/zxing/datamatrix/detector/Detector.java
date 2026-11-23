package com.google.zxing.datamatrix.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.detector.WhiteRectangleDetector;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes5.dex */
public final class Detector {
    private final BitMatrix image;
    private final WhiteRectangleDetector rectangleDetector;

    private static class ResultPointsAndTransitions {
        private final ResultPoint from;
        private final ResultPoint to;
        private final int transitions;

        ResultPoint getFrom() {
            return this.from;
        }

        ResultPoint getTo() {
            return this.to;
        }

        public int getTransitions() {
            return this.transitions;
        }

        public String toString() {
            return this.from + e.F0 + this.to + '/' + this.transitions;
        }

        private ResultPointsAndTransitions(ResultPoint resultPoint, ResultPoint resultPoint2, int i10) {
            this.from = resultPoint;
            this.to = resultPoint2;
            this.transitions = i10;
        }
    }

    private static class ResultPointsAndTransitionsComparator implements Comparator<ResultPointsAndTransitions>, Serializable {
        private ResultPointsAndTransitionsComparator() {
        }

        @Override // java.util.Comparator
        public int compare(ResultPointsAndTransitions resultPointsAndTransitions, ResultPointsAndTransitions resultPointsAndTransitions2) {
            return resultPointsAndTransitions.getTransitions() - resultPointsAndTransitions2.getTransitions();
        }
    }

    public Detector(BitMatrix bitMatrix) throws NotFoundException {
        this.image = bitMatrix;
        this.rectangleDetector = new WhiteRectangleDetector(bitMatrix);
    }

    private ResultPoint correctTopRight(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i10) {
        float f10 = i10;
        float fDistance = distance(resultPoint, resultPoint2) / f10;
        float fDistance2 = distance(resultPoint3, resultPoint4);
        ResultPoint resultPoint5 = new ResultPoint(resultPoint4.getX() + (((resultPoint4.getX() - resultPoint3.getX()) / fDistance2) * fDistance), resultPoint4.getY() + (fDistance * ((resultPoint4.getY() - resultPoint3.getY()) / fDistance2)));
        float fDistance3 = distance(resultPoint, resultPoint2) / f10;
        float fDistance4 = distance(resultPoint2, resultPoint4);
        ResultPoint resultPoint6 = new ResultPoint(resultPoint4.getX() + (((resultPoint4.getX() - resultPoint2.getX()) / fDistance4) * fDistance3), resultPoint4.getY() + (fDistance3 * ((resultPoint4.getY() - resultPoint2.getY()) / fDistance4)));
        if (isValid(resultPoint5)) {
            return (isValid(resultPoint6) && Math.abs(transitionsBetween(resultPoint3, resultPoint5).getTransitions() - transitionsBetween(resultPoint2, resultPoint5).getTransitions()) > Math.abs(transitionsBetween(resultPoint3, resultPoint6).getTransitions() - transitionsBetween(resultPoint2, resultPoint6).getTransitions())) ? resultPoint6 : resultPoint5;
        }
        if (isValid(resultPoint6)) {
            return resultPoint6;
        }
        return null;
    }

    private ResultPoint correctTopRightRectangular(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i10, int i11) {
        float fDistance = distance(resultPoint, resultPoint2) / i10;
        float fDistance2 = distance(resultPoint3, resultPoint4);
        ResultPoint resultPoint5 = new ResultPoint(resultPoint4.getX() + (((resultPoint4.getX() - resultPoint3.getX()) / fDistance2) * fDistance), resultPoint4.getY() + (fDistance * ((resultPoint4.getY() - resultPoint3.getY()) / fDistance2)));
        float fDistance3 = distance(resultPoint, resultPoint3) / i11;
        float fDistance4 = distance(resultPoint2, resultPoint4);
        ResultPoint resultPoint6 = new ResultPoint(resultPoint4.getX() + (((resultPoint4.getX() - resultPoint2.getX()) / fDistance4) * fDistance3), resultPoint4.getY() + (fDistance3 * ((resultPoint4.getY() - resultPoint2.getY()) / fDistance4)));
        if (isValid(resultPoint5)) {
            return (isValid(resultPoint6) && Math.abs(i10 - transitionsBetween(resultPoint3, resultPoint5).getTransitions()) + Math.abs(i11 - transitionsBetween(resultPoint2, resultPoint5).getTransitions()) > Math.abs(i10 - transitionsBetween(resultPoint3, resultPoint6).getTransitions()) + Math.abs(i11 - transitionsBetween(resultPoint2, resultPoint6).getTransitions())) ? resultPoint6 : resultPoint5;
        }
        if (isValid(resultPoint6)) {
            return resultPoint6;
        }
        return null;
    }

    private static int distance(ResultPoint resultPoint, ResultPoint resultPoint2) {
        return round((float) Math.sqrt(((resultPoint.getX() - resultPoint2.getX()) * (resultPoint.getX() - resultPoint2.getX())) + ((resultPoint.getY() - resultPoint2.getY()) * (resultPoint.getY() - resultPoint2.getY()))));
    }

    private static void increment(Map<ResultPoint, Integer> map, ResultPoint resultPoint) {
        Integer num = map.get(resultPoint);
        map.put(resultPoint, Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    private boolean isValid(ResultPoint resultPoint) {
        return resultPoint.getX() >= 0.0f && resultPoint.getX() < ((float) this.image.getWidth()) && resultPoint.getY() > 0.0f && resultPoint.getY() < ((float) this.image.getHeight());
    }

    private static int round(float f10) {
        return (int) (f10 + 0.5f);
    }

    private static BitMatrix sampleGrid(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i10, int i11) throws NotFoundException {
        float f10 = i10 - 0.5f;
        float f11 = i11 - 0.5f;
        return GridSampler.getInstance().sampleGrid(bitMatrix, i10, i11, 0.5f, 0.5f, f10, 0.5f, f10, f11, 0.5f, f11, resultPoint.getX(), resultPoint.getY(), resultPoint4.getX(), resultPoint4.getY(), resultPoint3.getX(), resultPoint3.getY(), resultPoint2.getX(), resultPoint2.getY());
    }

    private ResultPointsAndTransitions transitionsBetween(ResultPoint resultPoint, ResultPoint resultPoint2) {
        int x10 = (int) resultPoint.getX();
        int y10 = (int) resultPoint.getY();
        int x11 = (int) resultPoint2.getX();
        int y11 = (int) resultPoint2.getY();
        int i10 = 0;
        boolean z10 = Math.abs(y11 - y10) > Math.abs(x11 - x10);
        if (z10) {
            y10 = x10;
            x10 = y10;
            y11 = x11;
            x11 = y11;
        }
        int iAbs = Math.abs(x11 - x10);
        int iAbs2 = Math.abs(y11 - y10);
        int i11 = (-iAbs) >> 1;
        int i12 = y10 < y11 ? 1 : -1;
        int i13 = x10 >= x11 ? -1 : 1;
        boolean z11 = this.image.get(z10 ? y10 : x10, z10 ? x10 : y10);
        while (x10 != x11) {
            boolean z12 = this.image.get(z10 ? y10 : x10, z10 ? x10 : y10);
            if (z12 != z11) {
                i10++;
                z11 = z12;
            }
            i11 += iAbs2;
            if (i11 > 0) {
                if (y10 == y11) {
                    break;
                }
                y10 += i12;
                i11 -= iAbs;
            }
            x10 += i13;
        }
        return new ResultPointsAndTransitions(resultPoint, resultPoint2, i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DetectorResult detect() throws NotFoundException {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        BitMatrix bitMatrixSampleGrid;
        ResultPoint[] resultPointArrDetect = this.rectangleDetector.detect();
        ResultPoint resultPoint3 = resultPointArrDetect[0];
        ResultPoint resultPoint4 = resultPointArrDetect[1];
        ResultPoint resultPoint5 = resultPointArrDetect[2];
        ResultPoint resultPoint6 = resultPointArrDetect[3];
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(transitionsBetween(resultPoint3, resultPoint4));
        arrayList.add(transitionsBetween(resultPoint3, resultPoint5));
        arrayList.add(transitionsBetween(resultPoint4, resultPoint6));
        arrayList.add(transitionsBetween(resultPoint5, resultPoint6));
        ResultPoint resultPoint7 = null;
        Collections.sort(arrayList, new ResultPointsAndTransitionsComparator());
        ResultPointsAndTransitions resultPointsAndTransitions = (ResultPointsAndTransitions) arrayList.get(0);
        ResultPointsAndTransitions resultPointsAndTransitions2 = (ResultPointsAndTransitions) arrayList.get(1);
        HashMap map = new HashMap();
        increment(map, resultPointsAndTransitions.getFrom());
        increment(map, resultPointsAndTransitions.getTo());
        increment(map, resultPointsAndTransitions2.getFrom());
        increment(map, resultPointsAndTransitions2.getTo());
        ResultPoint resultPoint8 = null;
        ResultPoint resultPoint9 = null;
        for (Map.Entry entry : map.entrySet()) {
            ResultPoint resultPoint10 = (ResultPoint) entry.getKey();
            if (((Integer) entry.getValue()).intValue() == 2) {
                resultPoint8 = resultPoint10;
            } else if (resultPoint7 == null) {
                resultPoint7 = resultPoint10;
            } else {
                resultPoint9 = resultPoint10;
            }
        }
        if (resultPoint7 == null || resultPoint8 == null || resultPoint9 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        ResultPoint[] resultPointArr = {resultPoint7, resultPoint8, resultPoint9};
        ResultPoint.orderBestPatterns(resultPointArr);
        ResultPoint resultPoint11 = resultPointArr[0];
        ResultPoint resultPoint12 = resultPointArr[1];
        ResultPoint resultPoint13 = resultPointArr[2];
        if (!map.containsKey(resultPoint3)) {
            resultPoint = resultPoint3;
        } else if (map.containsKey(resultPoint4)) {
            resultPoint = !map.containsKey(resultPoint5) ? resultPoint5 : resultPoint6;
        } else {
            resultPoint = resultPoint4;
        }
        int transitions = transitionsBetween(resultPoint13, resultPoint).getTransitions();
        int transitions2 = transitionsBetween(resultPoint11, resultPoint).getTransitions();
        if ((transitions & 1) == 1) {
            transitions++;
        }
        int i10 = transitions + 2;
        if ((transitions2 & 1) == 1) {
            transitions2++;
        }
        int i11 = transitions2 + 2;
        if (i10 * 4 >= i11 * 7 || i11 * 4 >= i10 * 7) {
            resultPoint2 = resultPoint13;
            ResultPoint resultPointCorrectTopRightRectangular = correctTopRightRectangular(resultPoint12, resultPoint11, resultPoint13, resultPoint, i10, i11);
            if (resultPointCorrectTopRightRectangular != null) {
                resultPoint = resultPointCorrectTopRightRectangular;
            }
            int transitions3 = transitionsBetween(resultPoint2, resultPoint).getTransitions();
            int transitions4 = transitionsBetween(resultPoint11, resultPoint).getTransitions();
            if ((transitions3 & 1) == 1) {
                transitions3++;
            }
            int i12 = transitions3;
            if ((transitions4 & 1) == 1) {
                transitions4++;
            }
            bitMatrixSampleGrid = sampleGrid(this.image, resultPoint2, resultPoint12, resultPoint11, resultPoint, i12, transitions4);
        } else {
            ResultPoint resultPointCorrectTopRight = correctTopRight(resultPoint12, resultPoint11, resultPoint13, resultPoint, Math.min(i11, i10));
            if (resultPointCorrectTopRight != null) {
                resultPoint = resultPointCorrectTopRight;
            }
            int iMax = Math.max(transitionsBetween(resultPoint13, resultPoint).getTransitions(), transitionsBetween(resultPoint11, resultPoint).getTransitions()) + 1;
            if ((iMax & 1) == 1) {
                iMax++;
            }
            int i13 = iMax;
            bitMatrixSampleGrid = sampleGrid(this.image, resultPoint13, resultPoint12, resultPoint11, resultPoint, i13, i13);
            resultPoint2 = resultPoint13;
        }
        return new DetectorResult(bitMatrixSampleGrid, new ResultPoint[]{resultPoint2, resultPoint12, resultPoint11, resultPoint});
    }
}
