package com.airbnb.lottie.model.content;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class f implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5809a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final GradientType f5810b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.c f5811c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.d f5812d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.f f5813e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.f f5814f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f5815g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ShapeStroke.LineCapType f5816h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ShapeStroke.LineJoinType f5817i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final float f5818j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final List<com.airbnb.lottie.model.animatable.b> f5819k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private final com.airbnb.lottie.model.animatable.b f5820l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final boolean f5821m;

    public f(String str, GradientType gradientType, com.airbnb.lottie.model.animatable.c cVar, com.airbnb.lottie.model.animatable.d dVar, com.airbnb.lottie.model.animatable.f fVar, com.airbnb.lottie.model.animatable.f fVar2, com.airbnb.lottie.model.animatable.b bVar, ShapeStroke.LineCapType lineCapType, ShapeStroke.LineJoinType lineJoinType, float f10, List<com.airbnb.lottie.model.animatable.b> list, @Nullable com.airbnb.lottie.model.animatable.b bVar2, boolean z10) {
        this.f5809a = str;
        this.f5810b = gradientType;
        this.f5811c = cVar;
        this.f5812d = dVar;
        this.f5813e = fVar;
        this.f5814f = fVar2;
        this.f5815g = bVar;
        this.f5816h = lineCapType;
        this.f5817i = lineJoinType;
        this.f5818j = f10;
        this.f5819k = list;
        this.f5820l = bVar2;
        this.f5821m = z10;
    }

    @Override // com.airbnb.lottie.model.content.c
    public com.airbnb.lottie.animation.content.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.j jVar, com.airbnb.lottie.model.layer.b bVar) {
        return new com.airbnb.lottie.animation.content.i(lottieDrawable, bVar, this);
    }

    public ShapeStroke.LineCapType b() {
        return this.f5816h;
    }

    @Nullable
    public com.airbnb.lottie.model.animatable.b c() {
        return this.f5820l;
    }

    public com.airbnb.lottie.model.animatable.f d() {
        return this.f5814f;
    }

    public com.airbnb.lottie.model.animatable.c e() {
        return this.f5811c;
    }

    public GradientType f() {
        return this.f5810b;
    }

    public ShapeStroke.LineJoinType g() {
        return this.f5817i;
    }

    public List<com.airbnb.lottie.model.animatable.b> h() {
        return this.f5819k;
    }

    public float i() {
        return this.f5818j;
    }

    public String j() {
        return this.f5809a;
    }

    public com.airbnb.lottie.model.animatable.d k() {
        return this.f5812d;
    }

    public com.airbnb.lottie.model.animatable.f l() {
        return this.f5813e;
    }

    public com.airbnb.lottie.model.animatable.b m() {
        return this.f5815g;
    }

    public boolean n() {
        return this.f5821m;
    }
}
