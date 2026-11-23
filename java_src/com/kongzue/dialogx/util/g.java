package com.kongzue.dialogx.util;

/* JADX INFO: loaded from: classes3.dex */
public class g {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f74176e = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f74177a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f74178b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f74179c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f74180d;

    public float a() {
        return this.f74180d;
    }

    public float b() {
        return this.f74179c;
    }

    public float c() {
        return this.f74177a;
    }

    public float d() {
        return this.f74178b;
    }

    public boolean e(int[] iArr) {
        if (iArr.length == 2) {
            return this.f74177a == ((float) iArr[0]) && this.f74178b == ((float) iArr[1]);
        }
        return iArr.length == 4 && this.f74177a == ((float) iArr[0]) && this.f74178b == ((float) iArr[1]) && this.f74179c == ((float) iArr[2]) && this.f74180d == ((float) iArr[3]);
    }

    public void f(int[] iArr) {
        if (iArr.length == 2) {
            if (f74176e) {
                int i10 = iArr[0];
                if (i10 != 0) {
                    this.f74177a = i10;
                }
                int i11 = iArr[1];
                if (i11 != 0) {
                    this.f74178b = i11;
                }
            } else {
                this.f74177a = iArr[0];
                this.f74178b = iArr[1];
            }
        }
        if (iArr.length == 4) {
            if (f74176e) {
                int i12 = iArr[0];
                if (i12 != 0) {
                    this.f74177a = i12;
                }
                int i13 = iArr[1];
                if (i13 != 0) {
                    this.f74178b = i13;
                }
            } else {
                this.f74177a = iArr[0];
                this.f74178b = iArr[1];
            }
            this.f74179c = iArr[2];
            this.f74180d = iArr[3];
        }
    }

    public g g(float f10) {
        this.f74180d = f10;
        return this;
    }

    public g h(float f10) {
        this.f74179c = f10;
        return this;
    }

    public g i(float f10) {
        this.f74177a = f10;
        return this;
    }

    public g j(float f10) {
        this.f74178b = f10;
        return this;
    }
}
