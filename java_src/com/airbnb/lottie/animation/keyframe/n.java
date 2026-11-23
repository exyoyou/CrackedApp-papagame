package com.airbnb.lottie.animation.keyframe;

import android.graphics.PointF;
import androidx.annotation.Nullable;
import java.util.Collections;

/* JADX INFO: loaded from: classes7.dex */
public class n extends a<PointF, PointF> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final PointF f5548i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final PointF f5549j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final a<Float, Float> f5550k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final a<Float, Float> f5551l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    protected com.airbnb.lottie.value.j<Float> f5552m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    protected com.airbnb.lottie.value.j<Float> f5553n;

    public n(a<Float, Float> aVar, a<Float, Float> aVar2) {
        super(Collections.emptyList());
        this.f5548i = new PointF();
        this.f5549j = new PointF();
        this.f5550k = aVar;
        this.f5551l = aVar2;
        m(f());
    }

    @Override // com.airbnb.lottie.animation.keyframe.a
    public void m(float f10) {
        this.f5550k.m(f10);
        this.f5551l.m(f10);
        this.f5548i.set(this.f5550k.h().floatValue(), this.f5551l.h().floatValue());
        for (int i10 = 0; i10 < this.f5509a.size(); i10++) {
            this.f5509a.get(i10).d();
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.a
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public PointF h() {
        return i(null, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.airbnb.lottie.animation.keyframe.a
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public PointF i(com.airbnb.lottie.value.a<PointF> aVar, float f10) {
        Float fB;
        com.airbnb.lottie.value.a<Float> aVarB;
        com.airbnb.lottie.value.a<Float> aVarB2;
        Float fB2 = null;
        if (this.f5552m == null || (aVarB2 = this.f5550k.b()) == null) {
            fB = null;
        } else {
            float fD = this.f5550k.d();
            Float f11 = aVarB2.f6139h;
            com.airbnb.lottie.value.j<Float> jVar = this.f5552m;
            float f12 = aVarB2.f6138g;
            fB = jVar.b(f12, f11 == null ? f12 : f11.floatValue(), aVarB2.f6133b, aVarB2.f6134c, f10, f10, fD);
        }
        if (this.f5553n != null && (aVarB = this.f5551l.b()) != null) {
            float fD2 = this.f5551l.d();
            Float f13 = aVarB.f6139h;
            com.airbnb.lottie.value.j<Float> jVar2 = this.f5553n;
            float f14 = aVarB.f6138g;
            fB2 = jVar2.b(f14, f13 == null ? f14 : f13.floatValue(), aVarB.f6133b, aVarB.f6134c, f10, f10, fD2);
        }
        if (fB == null) {
            this.f5549j.set(this.f5548i.x, 0.0f);
        } else {
            this.f5549j.set(fB.floatValue(), 0.0f);
        }
        if (fB2 == null) {
            PointF pointF = this.f5549j;
            pointF.set(pointF.x, this.f5548i.y);
        } else {
            PointF pointF2 = this.f5549j;
            pointF2.set(pointF2.x, fB2.floatValue());
        }
        return this.f5549j;
    }

    public void r(@Nullable com.airbnb.lottie.value.j<Float> jVar) {
        com.airbnb.lottie.value.j<Float> jVar2 = this.f5552m;
        if (jVar2 != null) {
            jVar2.c(null);
        }
        this.f5552m = jVar;
        if (jVar != null) {
            jVar.c(this);
        }
    }

    public void s(@Nullable com.airbnb.lottie.value.j<Float> jVar) {
        com.airbnb.lottie.value.j<Float> jVar2 = this.f5553n;
        if (jVar2 != null) {
            jVar2.c(null);
        }
        this.f5553n = jVar;
        if (jVar != null) {
            jVar.c(this);
        }
    }
}
