package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;

/* JADX INFO: loaded from: classes7.dex */
public class b implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5792a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.m<PointF, PointF> f5793b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.f f5794c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f5795d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f5796e;

    public b(String str, com.airbnb.lottie.model.animatable.m<PointF, PointF> mVar, com.airbnb.lottie.model.animatable.f fVar, boolean z10, boolean z11) {
        this.f5792a = str;
        this.f5793b = mVar;
        this.f5794c = fVar;
        this.f5795d = z10;
        this.f5796e = z11;
    }

    @Override // com.airbnb.lottie.model.content.c
    public com.airbnb.lottie.animation.content.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.j jVar, com.airbnb.lottie.model.layer.b bVar) {
        return new com.airbnb.lottie.animation.content.f(lottieDrawable, bVar, this);
    }

    public String b() {
        return this.f5792a;
    }

    public com.airbnb.lottie.model.animatable.m<PointF, PointF> c() {
        return this.f5793b;
    }

    public com.airbnb.lottie.model.animatable.f d() {
        return this.f5794c;
    }

    public boolean e() {
        return this.f5796e;
    }

    public boolean f() {
        return this.f5795d;
    }
}
