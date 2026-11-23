package com.airbnb.lottie.value;

/* JADX INFO: loaded from: classes7.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f6163a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f6164b;

    public k(float f10, float f11) {
        this.f6163a = f10;
        this.f6164b = f11;
    }

    public boolean a(float f10, float f11) {
        return this.f6163a == f10 && this.f6164b == f11;
    }

    public float b() {
        return this.f6163a;
    }

    public float c() {
        return this.f6164b;
    }

    public void d(float f10, float f11) {
        this.f6163a = f10;
        this.f6164b = f11;
    }

    public String toString() {
        return b() + "x" + c();
    }

    public k() {
        this(1.0f, 1.0f);
    }
}
