package com.google.zxing;

import io.netty.util.internal.StringUtil;

/* JADX INFO: loaded from: classes5.dex */
public class ResultPoint {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final float f32799x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final float f32800y;

    public ResultPoint(float f10, float f11) {
        this.f32799x = f10;
        this.f32800y = f11;
    }

    private static float crossProductZ(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3) {
        float f10 = resultPoint2.f32799x;
        float f11 = resultPoint2.f32800y;
        return ((resultPoint3.f32799x - f10) * (resultPoint.f32800y - f11)) - ((resultPoint3.f32800y - f11) * (resultPoint.f32799x - f10));
    }

    public static float distance(ResultPoint resultPoint, ResultPoint resultPoint2) {
        float f10 = resultPoint.f32799x - resultPoint2.f32799x;
        float f11 = resultPoint.f32800y - resultPoint2.f32800y;
        return (float) Math.sqrt((f10 * f10) + (f11 * f11));
    }

    public static void orderBestPatterns(ResultPoint[] resultPointArr) {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint resultPoint3;
        float fDistance = distance(resultPointArr[0], resultPointArr[1]);
        float fDistance2 = distance(resultPointArr[1], resultPointArr[2]);
        float fDistance3 = distance(resultPointArr[0], resultPointArr[2]);
        if (fDistance2 >= fDistance && fDistance2 >= fDistance3) {
            resultPoint = resultPointArr[0];
            resultPoint2 = resultPointArr[1];
            resultPoint3 = resultPointArr[2];
        } else if (fDistance3 < fDistance2 || fDistance3 < fDistance) {
            resultPoint = resultPointArr[2];
            resultPoint2 = resultPointArr[0];
            resultPoint3 = resultPointArr[1];
        } else {
            resultPoint = resultPointArr[1];
            resultPoint2 = resultPointArr[0];
            resultPoint3 = resultPointArr[2];
        }
        if (crossProductZ(resultPoint2, resultPoint, resultPoint3) < 0.0f) {
            ResultPoint resultPoint4 = resultPoint3;
            resultPoint3 = resultPoint2;
            resultPoint2 = resultPoint4;
        }
        resultPointArr[0] = resultPoint2;
        resultPointArr[1] = resultPoint;
        resultPointArr[2] = resultPoint3;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ResultPoint)) {
            return false;
        }
        ResultPoint resultPoint = (ResultPoint) obj;
        return this.f32799x == resultPoint.f32799x && this.f32800y == resultPoint.f32800y;
    }

    public final float getX() {
        return this.f32799x;
    }

    public final float getY() {
        return this.f32800y;
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.f32799x) * 31) + Float.floatToIntBits(this.f32800y);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(25);
        sb2.append('(');
        sb2.append(this.f32799x);
        sb2.append(StringUtil.COMMA);
        sb2.append(this.f32800y);
        sb2.append(')');
        return sb2.toString();
    }
}
