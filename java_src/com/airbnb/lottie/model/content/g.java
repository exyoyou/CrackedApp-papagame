package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.p;

/* JADX INFO: loaded from: classes7.dex */
public class g implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5822a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.m<PointF, PointF> f5823b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.m<PointF, PointF> f5824c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f5825d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f5826e;

    public g(String str, com.airbnb.lottie.model.animatable.m<PointF, PointF> mVar, com.airbnb.lottie.model.animatable.m<PointF, PointF> mVar2, com.airbnb.lottie.model.animatable.b bVar, boolean z10) {
        this.f5822a = str;
        this.f5823b = mVar;
        this.f5824c = mVar2;
        this.f5825d = bVar;
        this.f5826e = z10;
    }

    @Override // com.airbnb.lottie.model.content.c
    public com.airbnb.lottie.animation.content.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.j jVar, com.airbnb.lottie.model.layer.b bVar) {
        return new p(lottieDrawable, bVar, this);
    }

    public com.airbnb.lottie.model.animatable.b b() {
        return this.f5825d;
    }

    public String c() {
        return this.f5822a;
    }

    public com.airbnb.lottie.model.animatable.m<PointF, PointF> d() {
        return this.f5823b;
    }

    public com.airbnb.lottie.model.animatable.m<PointF, PointF> e() {
        return this.f5824c;
    }

    public boolean f() {
        return this.f5826e;
    }

    public String toString() {
        return "RectangleShape{position=" + this.f5823b + ", size=" + this.f5824c + '}';
    }
}
