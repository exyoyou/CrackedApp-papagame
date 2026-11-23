package com.airbnb.lottie.model.animatable;

import android.graphics.PointF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.keyframe.p;

/* JADX INFO: loaded from: classes7.dex */
public class l implements com.airbnb.lottie.animation.content.m, com.airbnb.lottie.model.content.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final e f5732a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final m<PointF, PointF> f5733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final g f5734c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private final b f5735d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private final d f5736e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private final b f5737f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private final b f5738g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private final b f5739h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private final b f5740i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f5741j;

    public l() {
        this(null, null, null, null, null, null, null, null, null);
    }

    @Override // com.airbnb.lottie.model.content.c
    @Nullable
    public com.airbnb.lottie.animation.content.c a(LottieDrawable lottieDrawable, com.airbnb.lottie.j jVar, com.airbnb.lottie.model.layer.b bVar) {
        return null;
    }

    public p b() {
        return new p(this);
    }

    @Nullable
    public e c() {
        return this.f5732a;
    }

    @Nullable
    public b d() {
        return this.f5740i;
    }

    @Nullable
    public d e() {
        return this.f5736e;
    }

    @Nullable
    public m<PointF, PointF> f() {
        return this.f5733b;
    }

    @Nullable
    public b g() {
        return this.f5735d;
    }

    @Nullable
    public g h() {
        return this.f5734c;
    }

    @Nullable
    public b i() {
        return this.f5737f;
    }

    @Nullable
    public b j() {
        return this.f5738g;
    }

    @Nullable
    public b k() {
        return this.f5739h;
    }

    public boolean l() {
        return this.f5741j;
    }

    public void m(boolean z10) {
        this.f5741j = z10;
    }

    public l(@Nullable e eVar, @Nullable m<PointF, PointF> mVar, @Nullable g gVar, @Nullable b bVar, @Nullable d dVar, @Nullable b bVar2, @Nullable b bVar3, @Nullable b bVar4, @Nullable b bVar5) {
        this.f5741j = false;
        this.f5732a = eVar;
        this.f5733b = mVar;
        this.f5734c = gVar;
        this.f5735d = bVar;
        this.f5736e = dVar;
        this.f5739h = bVar2;
        this.f5740i = bVar3;
        this.f5737f = bVar4;
        this.f5738g = bVar5;
    }
}
