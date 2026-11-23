package com.airbnb.lottie.animation.keyframe;

import android.graphics.Color;
import android.graphics.Paint;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public class c implements com.airbnb.lottie.animation.keyframe.a.b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final double f5523h = 0.017453292519943295d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a.b f5524a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<Integer, Integer> f5525b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<Float, Float> f5526c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<Float, Float> f5527d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<Float, Float> f5528e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<Float, Float> f5529f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f5530g = true;

    class a extends com.airbnb.lottie.value.j<Float> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.airbnb.lottie.value.j f5531d;

        a(com.airbnb.lottie.value.j jVar) {
            this.f5531d = jVar;
        }

        @Override // com.airbnb.lottie.value.j
        @Nullable
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Float a(com.airbnb.lottie.value.b<Float> bVar) {
            Float f10 = (Float) this.f5531d.a(bVar);
            if (f10 == null) {
                return null;
            }
            return Float.valueOf(f10.floatValue() * 2.55f);
        }
    }

    public c(com.airbnb.lottie.animation.keyframe.a.b bVar, com.airbnb.lottie.model.layer.b bVar2, com.airbnb.lottie.parser.j jVar) {
        this.f5524a = bVar;
        com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVarA = jVar.a().a();
        this.f5525b = aVarA;
        aVarA.a(this);
        bVar2.i(aVarA);
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA2 = jVar.d().a();
        this.f5526c = aVarA2;
        aVarA2.a(this);
        bVar2.i(aVarA2);
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA3 = jVar.b().a();
        this.f5527d = aVarA3;
        aVarA3.a(this);
        bVar2.i(aVarA3);
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA4 = jVar.c().a();
        this.f5528e = aVarA4;
        aVarA4.a(this);
        bVar2.i(aVarA4);
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA5 = jVar.e().a();
        this.f5529f = aVarA5;
        aVarA5.a(this);
        bVar2.i(aVarA5);
    }

    public void a(Paint paint) {
        if (this.f5530g) {
            this.f5530g = false;
            double dFloatValue = ((double) this.f5527d.h().floatValue()) * f5523h;
            float fFloatValue = this.f5528e.h().floatValue();
            float fSin = ((float) Math.sin(dFloatValue)) * fFloatValue;
            float fCos = ((float) Math.cos(dFloatValue + 3.141592653589793d)) * fFloatValue;
            int iIntValue = this.f5525b.h().intValue();
            paint.setShadowLayer(this.f5529f.h().floatValue(), fSin, fCos, Color.argb(Math.round(this.f5526c.h().floatValue()), Color.red(iIntValue), Color.green(iIntValue), Color.blue(iIntValue)));
        }
    }

    public void b(@Nullable com.airbnb.lottie.value.j<Integer> jVar) {
        this.f5525b.n(jVar);
    }

    public void c(@Nullable com.airbnb.lottie.value.j<Float> jVar) {
        this.f5527d.n(jVar);
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.b
    public void d() {
        this.f5530g = true;
        this.f5524a.d();
    }

    public void e(@Nullable com.airbnb.lottie.value.j<Float> jVar) {
        this.f5528e.n(jVar);
    }

    public void f(@Nullable com.airbnb.lottie.value.j<Float> jVar) {
        if (jVar == null) {
            this.f5526c.n(null);
        } else {
            this.f5526c.n(new a(jVar));
        }
    }

    public void g(@Nullable com.airbnb.lottie.value.j<Float> jVar) {
        this.f5529f.n(jVar);
    }
}
