package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

/* JADX INFO: loaded from: classes5.dex */
public final class WhiteRectangleDetector {
    private static final int CORR = 1;
    private static final int INIT_SIZE = 30;
    private final int downInit;
    private final int height;
    private final BitMatrix image;
    private final int leftInit;
    private final int rightInit;
    private final int upInit;
    private final int width;

    public WhiteRectangleDetector(BitMatrix bitMatrix) throws NotFoundException {
        this.image = bitMatrix;
        int height = bitMatrix.getHeight();
        this.height = height;
        int width = bitMatrix.getWidth();
        this.width = width;
        int i10 = (width - 30) >> 1;
        this.leftInit = i10;
        int i11 = (width + 30) >> 1;
        this.rightInit = i11;
        int i12 = (height - 30) >> 1;
        this.upInit = i12;
        int i13 = (height + 30) >> 1;
        this.downInit = i13;
        if (i12 < 0 || i10 < 0 || i13 >= height || i11 >= width) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    private ResultPoint[] centerEdges(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4) {
        float x10 = resultPoint.getX();
        float y10 = resultPoint.getY();
        float x11 = resultPoint2.getX();
        float y11 = resultPoint2.getY();
        float x12 = resultPoint3.getX();
        float y12 = resultPoint3.getY();
        float x13 = resultPoint4.getX();
        float y13 = resultPoint4.getY();
        return x10 < ((float) (this.width / 2)) ? new ResultPoint[]{new ResultPoint(x13 - 1.0f, y13 + 1.0f), new ResultPoint(x11 + 1.0f, y11 + 1.0f), new ResultPoint(x12 - 1.0f, y12 - 1.0f), new ResultPoint(x10 + 1.0f, y10 - 1.0f)} : new ResultPoint[]{new ResultPoint(x13 + 1.0f, y13 + 1.0f), new ResultPoint(x11 + 1.0f, y11 - 1.0f), new ResultPoint(x12 - 1.0f, y12 + 1.0f), new ResultPoint(x10 - 1.0f, y10 - 1.0f)};
    }

    private boolean containsBlackPoint(int i10, int i11, int i12, boolean z10) {
        if (z10) {
            while (i10 <= i11) {
                if (this.image.get(i10, i12)) {
                    return true;
                }
                i10++;
            }
            return false;
        }
        while (i10 <= i11) {
            if (this.image.get(i12, i10)) {
                return true;
            }
            i10++;
        }
        return false;
    }

    private static int distanceL2(float f10, float f11, float f12, float f13) {
        float f14 = f10 - f12;
        float f15 = f11 - f13;
        return round((float) Math.sqrt((f14 * f14) + (f15 * f15)));
    }

    private ResultPoint getBlackPointOnSegment(float f10, float f11, float f12, float f13) {
        int iDistanceL2 = distanceL2(f10, f11, f12, f13);
        float f14 = iDistanceL2;
        float f15 = (f12 - f10) / f14;
        float f16 = (f13 - f11) / f14;
        for (int i10 = 0; i10 < iDistanceL2; i10++) {
            float f17 = i10;
            int iRound = round((f17 * f15) + f10);
            int iRound2 = round((f17 * f16) + f11);
            if (this.image.get(iRound, iRound2)) {
                return new ResultPoint(iRound, iRound2);
            }
        }
        return null;
    }

    private static int round(float f10) {
        return (int) (f10 + 0.5f);
    }

    public ResultPoint[] detect() throws NotFoundException {
        int i10 = this.leftInit;
        int i11 = this.rightInit;
        int i12 = this.upInit;
        int i13 = this.downInit;
        boolean z10 = false;
        boolean z11 = true;
        boolean z12 = false;
        while (z11) {
            boolean zContainsBlackPoint = true;
            boolean z13 = false;
            while (zContainsBlackPoint && i11 < this.width) {
                zContainsBlackPoint = containsBlackPoint(i12, i13, i11, false);
                if (zContainsBlackPoint) {
                    i11++;
                    z13 = true;
                }
            }
            if (i11 < this.width) {
                boolean zContainsBlackPoint2 = true;
                while (zContainsBlackPoint2 && i13 < this.height) {
                    zContainsBlackPoint2 = containsBlackPoint(i10, i11, i13, true);
                    if (zContainsBlackPoint2) {
                        i13++;
                        z13 = true;
                    }
                }
                if (i13 < this.height) {
                    boolean zContainsBlackPoint3 = true;
                    while (zContainsBlackPoint3 && i10 >= 0) {
                        zContainsBlackPoint3 = containsBlackPoint(i12, i13, i10, false);
                        if (zContainsBlackPoint3) {
                            i10--;
                            z13 = true;
                        }
                    }
                    if (i10 >= 0) {
                        z11 = z13;
                        boolean zContainsBlackPoint4 = true;
                        while (zContainsBlackPoint4 && i12 >= 0) {
                            zContainsBlackPoint4 = containsBlackPoint(i10, i11, i12, true);
                            if (zContainsBlackPoint4) {
                                i12--;
                                z11 = true;
                            }
                        }
                        if (i12 >= 0) {
                            if (z11) {
                                z12 = true;
                            }
                        }
                    }
                }
            }
            z10 = true;
            break;
        }
        if (z10 || !z12) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i14 = i11 - i10;
        ResultPoint blackPointOnSegment = null;
        ResultPoint blackPointOnSegment2 = null;
        for (int i15 = 1; i15 < i14; i15++) {
            blackPointOnSegment2 = getBlackPointOnSegment(i10, i13 - i15, i10 + i15, i13);
            if (blackPointOnSegment2 != null) {
                break;
            }
        }
        if (blackPointOnSegment2 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        ResultPoint blackPointOnSegment3 = null;
        for (int i16 = 1; i16 < i14; i16++) {
            blackPointOnSegment3 = getBlackPointOnSegment(i10, i12 + i16, i10 + i16, i12);
            if (blackPointOnSegment3 != null) {
                break;
            }
        }
        if (blackPointOnSegment3 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        ResultPoint blackPointOnSegment4 = null;
        for (int i17 = 1; i17 < i14; i17++) {
            blackPointOnSegment4 = getBlackPointOnSegment(i11, i12 + i17, i11 - i17, i12);
            if (blackPointOnSegment4 != null) {
                break;
            }
        }
        if (blackPointOnSegment4 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        for (int i18 = 1; i18 < i14; i18++) {
            blackPointOnSegment = getBlackPointOnSegment(i11, i13 - i18, i11 - i18, i13);
            if (blackPointOnSegment != null) {
                break;
            }
        }
        if (blackPointOnSegment != null) {
            return centerEdges(blackPointOnSegment, blackPointOnSegment2, blackPointOnSegment4, blackPointOnSegment3);
        }
        throw NotFoundException.getNotFoundInstance();
    }

    public WhiteRectangleDetector(BitMatrix bitMatrix, int i10, int i11, int i12) throws NotFoundException {
        this.image = bitMatrix;
        int height = bitMatrix.getHeight();
        this.height = height;
        int width = bitMatrix.getWidth();
        this.width = width;
        int i13 = i10 >> 1;
        int i14 = i11 - i13;
        this.leftInit = i14;
        int i15 = i11 + i13;
        this.rightInit = i15;
        int i16 = i12 - i13;
        this.upInit = i16;
        int i17 = i12 + i13;
        this.downInit = i17;
        if (i16 < 0 || i14 < 0 || i17 >= height || i15 >= width) {
            throw NotFoundException.getNotFoundInstance();
        }
    }
}
