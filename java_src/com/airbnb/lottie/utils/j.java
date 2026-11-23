package com.airbnb.lottie.utils;

/* JADX INFO: loaded from: classes7.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f6116a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f6117b;

    public void a(float f10) {
        float f11 = this.f6116a + f10;
        this.f6116a = f11;
        int i10 = this.f6117b + 1;
        this.f6117b = i10;
        if (i10 == Integer.MAX_VALUE) {
            this.f6116a = f11 / 2.0f;
            this.f6117b = i10 / 2;
        }
    }

    public float b() {
        int i10 = this.f6117b;
        if (i10 == 0) {
            return 0.0f;
        }
        return this.f6116a / i10;
    }
}
