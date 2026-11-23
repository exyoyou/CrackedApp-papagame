package com.airbnb.lottie.value;

import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes7.dex */
public class b<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f6148a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f6149b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private T f6150c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private T f6151d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f6152e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f6153f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f6154g;

    public float a() {
        return this.f6149b;
    }

    public T b() {
        return this.f6151d;
    }

    public float c() {
        return this.f6153f;
    }

    public float d() {
        return this.f6152e;
    }

    public float e() {
        return this.f6154g;
    }

    public float f() {
        return this.f6148a;
    }

    public T g() {
        return this.f6150c;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public b<T> h(float f10, float f11, T t10, T t11, float f12, float f13, float f14) {
        this.f6148a = f10;
        this.f6149b = f11;
        this.f6150c = t10;
        this.f6151d = t11;
        this.f6152e = f12;
        this.f6153f = f13;
        this.f6154g = f14;
        return this;
    }
}
