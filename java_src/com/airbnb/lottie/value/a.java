package com.airbnb.lottie.value;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public class a<T> {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final float f6130q = -3987645.8f;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f6131r = 784923401;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final com.airbnb.lottie.j f6132a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    public final T f6133b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    public T f6134c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    public final Interpolator f6135d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    public final Interpolator f6136e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    public final Interpolator f6137f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float f6138g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    public Float f6139h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f6140i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f6141j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f6142k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f6143l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f6144m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f6145n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public PointF f6146o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public PointF f6147p;

    public a(com.airbnb.lottie.j jVar, @Nullable T t10, @Nullable T t11, @Nullable Interpolator interpolator, float f10, @Nullable Float f11) {
        this.f6140i = f6130q;
        this.f6141j = f6130q;
        this.f6142k = f6131r;
        this.f6143l = f6131r;
        this.f6144m = Float.MIN_VALUE;
        this.f6145n = Float.MIN_VALUE;
        this.f6146o = null;
        this.f6147p = null;
        this.f6132a = jVar;
        this.f6133b = t10;
        this.f6134c = t11;
        this.f6135d = interpolator;
        this.f6136e = null;
        this.f6137f = null;
        this.f6138g = f10;
        this.f6139h = f11;
    }

    public boolean a(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10) {
        return f10 >= f() && f10 < c();
    }

    public a<T> b(T t10, T t11) {
        return new a<>(t10, t11);
    }

    public float c() {
        if (this.f6132a == null) {
            return 1.0f;
        }
        if (this.f6145n == Float.MIN_VALUE) {
            if (this.f6139h == null) {
                this.f6145n = 1.0f;
            } else {
                this.f6145n = f() + ((this.f6139h.floatValue() - this.f6138g) / this.f6132a.e());
            }
        }
        return this.f6145n;
    }

    public float d() {
        if (this.f6141j == f6130q) {
            this.f6141j = ((Float) this.f6134c).floatValue();
        }
        return this.f6141j;
    }

    public int e() {
        if (this.f6143l == f6131r) {
            this.f6143l = ((Integer) this.f6134c).intValue();
        }
        return this.f6143l;
    }

    public float f() {
        com.airbnb.lottie.j jVar = this.f6132a;
        if (jVar == null) {
            return 0.0f;
        }
        if (this.f6144m == Float.MIN_VALUE) {
            this.f6144m = (this.f6138g - jVar.r()) / this.f6132a.e();
        }
        return this.f6144m;
    }

    public float g() {
        if (this.f6140i == f6130q) {
            this.f6140i = ((Float) this.f6133b).floatValue();
        }
        return this.f6140i;
    }

    public int h() {
        if (this.f6142k == f6131r) {
            this.f6142k = ((Integer) this.f6133b).intValue();
        }
        return this.f6142k;
    }

    public boolean i() {
        return this.f6135d == null && this.f6136e == null && this.f6137f == null;
    }

    public String toString() {
        return "Keyframe{startValue=" + this.f6133b + ", endValue=" + this.f6134c + ", startFrame=" + this.f6138g + ", endFrame=" + this.f6139h + ", interpolator=" + this.f6135d + '}';
    }

    public a(com.airbnb.lottie.j jVar, @Nullable T t10, @Nullable T t11, @Nullable Interpolator interpolator, @Nullable Interpolator interpolator2, float f10, @Nullable Float f11) {
        this.f6140i = f6130q;
        this.f6141j = f6130q;
        this.f6142k = f6131r;
        this.f6143l = f6131r;
        this.f6144m = Float.MIN_VALUE;
        this.f6145n = Float.MIN_VALUE;
        this.f6146o = null;
        this.f6147p = null;
        this.f6132a = jVar;
        this.f6133b = t10;
        this.f6134c = t11;
        this.f6135d = null;
        this.f6136e = interpolator;
        this.f6137f = interpolator2;
        this.f6138g = f10;
        this.f6139h = f11;
    }

    protected a(com.airbnb.lottie.j jVar, @Nullable T t10, @Nullable T t11, @Nullable Interpolator interpolator, @Nullable Interpolator interpolator2, @Nullable Interpolator interpolator3, float f10, @Nullable Float f11) {
        this.f6140i = f6130q;
        this.f6141j = f6130q;
        this.f6142k = f6131r;
        this.f6143l = f6131r;
        this.f6144m = Float.MIN_VALUE;
        this.f6145n = Float.MIN_VALUE;
        this.f6146o = null;
        this.f6147p = null;
        this.f6132a = jVar;
        this.f6133b = t10;
        this.f6134c = t11;
        this.f6135d = interpolator;
        this.f6136e = interpolator2;
        this.f6137f = interpolator3;
        this.f6138g = f10;
        this.f6139h = f11;
    }

    public a(T t10) {
        this.f6140i = f6130q;
        this.f6141j = f6130q;
        this.f6142k = f6131r;
        this.f6143l = f6131r;
        this.f6144m = Float.MIN_VALUE;
        this.f6145n = Float.MIN_VALUE;
        this.f6146o = null;
        this.f6147p = null;
        this.f6132a = null;
        this.f6133b = t10;
        this.f6134c = t10;
        this.f6135d = null;
        this.f6136e = null;
        this.f6137f = null;
        this.f6138g = Float.MIN_VALUE;
        this.f6139h = Float.valueOf(Float.MAX_VALUE);
    }

    private a(T t10, T t11) {
        this.f6140i = f6130q;
        this.f6141j = f6130q;
        this.f6142k = f6131r;
        this.f6143l = f6131r;
        this.f6144m = Float.MIN_VALUE;
        this.f6145n = Float.MIN_VALUE;
        this.f6146o = null;
        this.f6147p = null;
        this.f6132a = null;
        this.f6133b = t10;
        this.f6134c = t11;
        this.f6135d = null;
        this.f6136e = null;
        this.f6137f = null;
        this.f6138g = Float.MIN_VALUE;
        this.f6139h = Float.valueOf(Float.MAX_VALUE);
    }
}
