package com.google.zxing.qrcode.detector;

import com.google.zxing.ResultPoint;

/* JADX INFO: loaded from: classes5.dex */
public final class FinderPattern extends ResultPoint {
    private int count;
    private final float estimatedModuleSize;

    FinderPattern(float f10, float f11, float f12) {
        this(f10, f11, f12, 1);
    }

    boolean aboutEquals(float f10, float f11, float f12) {
        if (Math.abs(f11 - getY()) > f10 || Math.abs(f12 - getX()) > f10) {
            return false;
        }
        float fAbs = Math.abs(f10 - this.estimatedModuleSize);
        return fAbs <= 1.0f || fAbs <= this.estimatedModuleSize;
    }

    FinderPattern combineEstimate(float f10, float f11, float f12) {
        int i10 = this.count;
        int i11 = i10 + 1;
        float x10 = (i10 * getX()) + f11;
        float f13 = i11;
        return new FinderPattern(x10 / f13, ((this.count * getY()) + f10) / f13, ((this.count * this.estimatedModuleSize) + f12) / f13, i11);
    }

    int getCount() {
        return this.count;
    }

    public float getEstimatedModuleSize() {
        return this.estimatedModuleSize;
    }

    void incrementCount() {
        this.count++;
    }

    FinderPattern(float f10, float f11, float f12, int i10) {
        super(f10, f11);
        this.estimatedModuleSize = f12;
        this.count = i10;
    }
}
