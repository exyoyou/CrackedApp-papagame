package com.airbnb.lottie.animation.keyframe;

import android.graphics.Matrix;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.b1;
import java.util.Collections;

/* JADX INFO: loaded from: classes7.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Matrix f5558a = new Matrix();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Matrix f5559b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Matrix f5560c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Matrix f5561d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float[] f5562e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private a<PointF, PointF> f5563f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private a<?, PointF> f5564g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private a<com.airbnb.lottie.value.k, com.airbnb.lottie.value.k> f5565h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private a<Float, Float> f5566i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private a<Integer, Integer> f5567j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private d f5568k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private d f5569l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private a<?, Float> f5570m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private a<?, Float> f5571n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f5572o;

    public p(com.airbnb.lottie.model.animatable.l lVar) {
        this.f5563f = lVar.c() == null ? null : lVar.c().a();
        this.f5564g = lVar.f() == null ? null : lVar.f().a();
        this.f5565h = lVar.h() == null ? null : lVar.h().a();
        this.f5566i = lVar.g() == null ? null : lVar.g().a();
        this.f5568k = lVar.i() == null ? null : (d) lVar.i().a();
        this.f5572o = lVar.l();
        if (this.f5568k != null) {
            this.f5559b = new Matrix();
            this.f5560c = new Matrix();
            this.f5561d = new Matrix();
            this.f5562e = new float[9];
        } else {
            this.f5559b = null;
            this.f5560c = null;
            this.f5561d = null;
            this.f5562e = null;
        }
        this.f5569l = lVar.j() == null ? null : (d) lVar.j().a();
        if (lVar.e() != null) {
            this.f5567j = lVar.e().a();
        }
        if (lVar.k() != null) {
            this.f5570m = lVar.k().a();
        } else {
            this.f5570m = null;
        }
        if (lVar.d() != null) {
            this.f5571n = lVar.d().a();
        } else {
            this.f5571n = null;
        }
    }

    private void d() {
        for (int i10 = 0; i10 < 9; i10++) {
            this.f5562e[i10] = 0.0f;
        }
    }

    public void a(com.airbnb.lottie.model.layer.b bVar) {
        bVar.i(this.f5567j);
        bVar.i(this.f5570m);
        bVar.i(this.f5571n);
        bVar.i(this.f5563f);
        bVar.i(this.f5564g);
        bVar.i(this.f5565h);
        bVar.i(this.f5566i);
        bVar.i(this.f5568k);
        bVar.i(this.f5569l);
    }

    public void b(a.b bVar) {
        a<Integer, Integer> aVar = this.f5567j;
        if (aVar != null) {
            aVar.a(bVar);
        }
        a<?, Float> aVar2 = this.f5570m;
        if (aVar2 != null) {
            aVar2.a(bVar);
        }
        a<?, Float> aVar3 = this.f5571n;
        if (aVar3 != null) {
            aVar3.a(bVar);
        }
        a<PointF, PointF> aVar4 = this.f5563f;
        if (aVar4 != null) {
            aVar4.a(bVar);
        }
        a<?, PointF> aVar5 = this.f5564g;
        if (aVar5 != null) {
            aVar5.a(bVar);
        }
        a<com.airbnb.lottie.value.k, com.airbnb.lottie.value.k> aVar6 = this.f5565h;
        if (aVar6 != null) {
            aVar6.a(bVar);
        }
        a<Float, Float> aVar7 = this.f5566i;
        if (aVar7 != null) {
            aVar7.a(bVar);
        }
        d dVar = this.f5568k;
        if (dVar != null) {
            dVar.a(bVar);
        }
        d dVar2 = this.f5569l;
        if (dVar2 != null) {
            dVar2.a(bVar);
        }
    }

    public <T> boolean c(T t10, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        if (t10 == b1.f5582f) {
            a<PointF, PointF> aVar = this.f5563f;
            if (aVar == null) {
                this.f5563f = new q(jVar, new PointF());
                return true;
            }
            aVar.n(jVar);
            return true;
        }
        if (t10 == b1.f5583g) {
            a<?, PointF> aVar2 = this.f5564g;
            if (aVar2 == null) {
                this.f5564g = new q(jVar, new PointF());
                return true;
            }
            aVar2.n(jVar);
            return true;
        }
        if (t10 == b1.f5584h) {
            a<?, PointF> aVar3 = this.f5564g;
            if (aVar3 instanceof n) {
                ((n) aVar3).r(jVar);
                return true;
            }
        }
        if (t10 == b1.f5585i) {
            a<?, PointF> aVar4 = this.f5564g;
            if (aVar4 instanceof n) {
                ((n) aVar4).s(jVar);
                return true;
            }
        }
        if (t10 == b1.f5591o) {
            a<com.airbnb.lottie.value.k, com.airbnb.lottie.value.k> aVar5 = this.f5565h;
            if (aVar5 == null) {
                this.f5565h = new q(jVar, new com.airbnb.lottie.value.k());
                return true;
            }
            aVar5.n(jVar);
            return true;
        }
        if (t10 == b1.f5592p) {
            a<Float, Float> aVar6 = this.f5566i;
            if (aVar6 == null) {
                this.f5566i = new q(jVar, Float.valueOf(0.0f));
                return true;
            }
            aVar6.n(jVar);
            return true;
        }
        if (t10 == b1.f5579c) {
            a<Integer, Integer> aVar7 = this.f5567j;
            if (aVar7 == null) {
                this.f5567j = new q(jVar, 100);
                return true;
            }
            aVar7.n(jVar);
            return true;
        }
        if (t10 == b1.C) {
            a<?, Float> aVar8 = this.f5570m;
            if (aVar8 == null) {
                this.f5570m = new q(jVar, Float.valueOf(100.0f));
                return true;
            }
            aVar8.n(jVar);
            return true;
        }
        if (t10 == b1.D) {
            a<?, Float> aVar9 = this.f5571n;
            if (aVar9 == null) {
                this.f5571n = new q(jVar, Float.valueOf(100.0f));
                return true;
            }
            aVar9.n(jVar);
            return true;
        }
        if (t10 == b1.f5593q) {
            if (this.f5568k == null) {
                this.f5568k = new d(Collections.singletonList(new com.airbnb.lottie.value.a(Float.valueOf(0.0f))));
            }
            this.f5568k.n(jVar);
            return true;
        }
        if (t10 != b1.f5594r) {
            return false;
        }
        if (this.f5569l == null) {
            this.f5569l = new d(Collections.singletonList(new com.airbnb.lottie.value.a(Float.valueOf(0.0f))));
        }
        this.f5569l.n(jVar);
        return true;
    }

    @Nullable
    public a<?, Float> e() {
        return this.f5571n;
    }

    public Matrix f() {
        PointF pointFH;
        com.airbnb.lottie.value.k kVarH;
        PointF pointFH2;
        this.f5558a.reset();
        a<?, PointF> aVar = this.f5564g;
        if (aVar != null && (pointFH2 = aVar.h()) != null) {
            float f10 = pointFH2.x;
            if (f10 != 0.0f || pointFH2.y != 0.0f) {
                this.f5558a.preTranslate(f10, pointFH2.y);
            }
        }
        if (!this.f5572o) {
            a<Float, Float> aVar2 = this.f5566i;
            if (aVar2 != null) {
                float fFloatValue = aVar2 instanceof q ? aVar2.h().floatValue() : ((d) aVar2).p();
                if (fFloatValue != 0.0f) {
                    this.f5558a.preRotate(fFloatValue);
                }
            }
        } else if (aVar != null) {
            float f11 = aVar.f();
            PointF pointFH3 = aVar.h();
            float f12 = pointFH3.x;
            float f13 = pointFH3.y;
            aVar.m(1.0E-4f + f11);
            PointF pointFH4 = aVar.h();
            aVar.m(f11);
            this.f5558a.preRotate((float) Math.toDegrees(Math.atan2(pointFH4.y - f13, pointFH4.x - f12)));
        }
        d dVar = this.f5568k;
        if (dVar != null) {
            d dVar2 = this.f5569l;
            float fCos = dVar2 == null ? 0.0f : (float) Math.cos(Math.toRadians((-dVar2.p()) + 90.0f));
            d dVar3 = this.f5569l;
            float fSin = dVar3 == null ? 1.0f : (float) Math.sin(Math.toRadians((-dVar3.p()) + 90.0f));
            float fTan = (float) Math.tan(Math.toRadians(dVar.p()));
            d();
            float[] fArr = this.f5562e;
            fArr[0] = fCos;
            fArr[1] = fSin;
            float f14 = -fSin;
            fArr[3] = f14;
            fArr[4] = fCos;
            fArr[8] = 1.0f;
            this.f5559b.setValues(fArr);
            d();
            float[] fArr2 = this.f5562e;
            fArr2[0] = 1.0f;
            fArr2[3] = fTan;
            fArr2[4] = 1.0f;
            fArr2[8] = 1.0f;
            this.f5560c.setValues(fArr2);
            d();
            float[] fArr3 = this.f5562e;
            fArr3[0] = fCos;
            fArr3[1] = f14;
            fArr3[3] = fSin;
            fArr3[4] = fCos;
            fArr3[8] = 1.0f;
            this.f5561d.setValues(fArr3);
            this.f5560c.preConcat(this.f5559b);
            this.f5561d.preConcat(this.f5560c);
            this.f5558a.preConcat(this.f5561d);
        }
        a<com.airbnb.lottie.value.k, com.airbnb.lottie.value.k> aVar3 = this.f5565h;
        if (aVar3 != null && (kVarH = aVar3.h()) != null && (kVarH.b() != 1.0f || kVarH.c() != 1.0f)) {
            this.f5558a.preScale(kVarH.b(), kVarH.c());
        }
        a<PointF, PointF> aVar4 = this.f5563f;
        if (aVar4 != null && (pointFH = aVar4.h()) != null) {
            float f15 = pointFH.x;
            if (f15 != 0.0f || pointFH.y != 0.0f) {
                this.f5558a.preTranslate(-f15, -pointFH.y);
            }
        }
        return this.f5558a;
    }

    public Matrix g(float f10) {
        a<?, PointF> aVar = this.f5564g;
        PointF pointFH = aVar == null ? null : aVar.h();
        a<com.airbnb.lottie.value.k, com.airbnb.lottie.value.k> aVar2 = this.f5565h;
        com.airbnb.lottie.value.k kVarH = aVar2 == null ? null : aVar2.h();
        this.f5558a.reset();
        if (pointFH != null) {
            this.f5558a.preTranslate(pointFH.x * f10, pointFH.y * f10);
        }
        if (kVarH != null) {
            double d10 = f10;
            this.f5558a.preScale((float) Math.pow(kVarH.b(), d10), (float) Math.pow(kVarH.c(), d10));
        }
        a<Float, Float> aVar3 = this.f5566i;
        if (aVar3 != null) {
            float fFloatValue = aVar3.h().floatValue();
            a<PointF, PointF> aVar4 = this.f5563f;
            PointF pointFH2 = aVar4 != null ? aVar4.h() : null;
            this.f5558a.preRotate(fFloatValue * f10, pointFH2 == null ? 0.0f : pointFH2.x, pointFH2 != null ? pointFH2.y : 0.0f);
        }
        return this.f5558a;
    }

    @Nullable
    public a<?, Integer> h() {
        return this.f5567j;
    }

    @Nullable
    public a<?, Float> i() {
        return this.f5570m;
    }

    public void j(float f10) {
        a<Integer, Integer> aVar = this.f5567j;
        if (aVar != null) {
            aVar.m(f10);
        }
        a<?, Float> aVar2 = this.f5570m;
        if (aVar2 != null) {
            aVar2.m(f10);
        }
        a<?, Float> aVar3 = this.f5571n;
        if (aVar3 != null) {
            aVar3.m(f10);
        }
        a<PointF, PointF> aVar4 = this.f5563f;
        if (aVar4 != null) {
            aVar4.m(f10);
        }
        a<?, PointF> aVar5 = this.f5564g;
        if (aVar5 != null) {
            aVar5.m(f10);
        }
        a<com.airbnb.lottie.value.k, com.airbnb.lottie.value.k> aVar6 = this.f5565h;
        if (aVar6 != null) {
            aVar6.m(f10);
        }
        a<Float, Float> aVar7 = this.f5566i;
        if (aVar7 != null) {
            aVar7.m(f10);
        }
        d dVar = this.f5568k;
        if (dVar != null) {
            dVar.m(f10);
        }
        d dVar2 = this.f5569l;
        if (dVar2 != null) {
            dVar2.m(f10);
        }
    }
}
