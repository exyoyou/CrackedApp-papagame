package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class FPoint {
    public long ts;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f33815x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public float f33816y;

    public FPoint(float f10, float f11, long j10) {
        this(f10, f11);
        this.ts = j10;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FPoint)) {
            return false;
        }
        FPoint fPoint = (FPoint) obj;
        return this.f33815x == fPoint.f33815x && this.f33816y == fPoint.f33816y;
    }

    public String toString() {
        return "( x = " + this.f33815x + " , y = " + this.f33816y + ")";
    }

    public FPoint(float f10, float f11) {
        this.f33815x = f10;
        this.f33816y = f11;
    }

    public FPoint() {
    }
}
