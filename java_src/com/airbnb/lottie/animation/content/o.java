package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.b1;
import com.airbnb.lottie.model.content.PolystarShape;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class o implements n, com.airbnb.lottie.animation.keyframe.a.b, k {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final float f5445p = 0.47829f;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final float f5446q = 0.25f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5448b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LottieDrawable f5449c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PolystarShape.Type f5450d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f5451e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f5452f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f5453g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, PointF> f5454h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f5455i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f5456j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f5457k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @Nullable
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f5458l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f5459m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f5461o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f5447a = new Path();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final b f5460n = new b();

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f5462a;

        static {
            int[] iArr = new int[PolystarShape.Type.values().length];
            f5462a = iArr;
            try {
                iArr[PolystarShape.Type.STAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5462a[PolystarShape.Type.POLYGON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public o(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.b bVar, PolystarShape polystarShape) {
        this.f5449c = lottieDrawable;
        this.f5448b = polystarShape.d();
        PolystarShape.Type type = polystarShape.getType();
        this.f5450d = type;
        this.f5451e = polystarShape.j();
        this.f5452f = polystarShape.k();
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA = polystarShape.g().a();
        this.f5453g = aVarA;
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> aVarA2 = polystarShape.h().a();
        this.f5454h = aVarA2;
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA3 = polystarShape.i().a();
        this.f5455i = aVarA3;
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA4 = polystarShape.e().a();
        this.f5457k = aVarA4;
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA5 = polystarShape.f().a();
        this.f5459m = aVarA5;
        PolystarShape.Type type2 = PolystarShape.Type.STAR;
        if (type == type2) {
            this.f5456j = polystarShape.b().a();
            this.f5458l = polystarShape.c().a();
        } else {
            this.f5456j = null;
            this.f5458l = null;
        }
        bVar.i(aVarA);
        bVar.i(aVarA2);
        bVar.i(aVarA3);
        bVar.i(aVarA4);
        bVar.i(aVarA5);
        if (type == type2) {
            bVar.i(this.f5456j);
            bVar.i(this.f5458l);
        }
        aVarA.a(this);
        aVarA2.a(this);
        aVarA3.a(this);
        aVarA4.a(this);
        aVarA5.a(this);
        if (type == type2) {
            this.f5456j.a(this);
            this.f5458l.a(this);
        }
    }

    private void b() {
        int iFloor = (int) Math.floor(this.f5453g.h().floatValue());
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar = this.f5455i;
        double radians = Math.toRadians((aVar == null ? 0.0d : aVar.h().floatValue()) - 90.0d);
        double d10 = iFloor;
        float fFloatValue = this.f5459m.h().floatValue() / 100.0f;
        float fFloatValue2 = this.f5457k.h().floatValue();
        double d11 = fFloatValue2;
        float fCos = (float) (Math.cos(radians) * d11);
        float fSin = (float) (Math.sin(radians) * d11);
        this.f5447a.moveTo(fCos, fSin);
        double d12 = (float) (6.283185307179586d / d10);
        double d13 = radians + d12;
        double dCeil = Math.ceil(d10);
        int i10 = 0;
        while (i10 < dCeil) {
            float fCos2 = (float) (Math.cos(d13) * d11);
            double d14 = dCeil;
            float fSin2 = (float) (d11 * Math.sin(d13));
            if (fFloatValue != 0.0f) {
                double dAtan2 = (float) (Math.atan2(fSin, fCos) - 1.5707963267948966d);
                float fCos3 = (float) Math.cos(dAtan2);
                float fSin3 = (float) Math.sin(dAtan2);
                double dAtan3 = (float) (Math.atan2(fSin2, fCos2) - 1.5707963267948966d);
                float fCos4 = (float) Math.cos(dAtan3);
                float fSin4 = (float) Math.sin(dAtan3);
                float f10 = fFloatValue2 * fFloatValue * f5446q;
                this.f5447a.cubicTo(fCos - (fCos3 * f10), fSin - (fSin3 * f10), fCos2 + (fCos4 * f10), fSin2 + (f10 * fSin4), fCos2, fSin2);
            } else {
                this.f5447a.lineTo(fCos2, fSin2);
            }
            d13 += d12;
            i10++;
            fSin = fSin2;
            fCos = fCos2;
            dCeil = d14;
            d11 = d11;
            d12 = d12;
        }
        PointF pointFH = this.f5454h.h();
        this.f5447a.offset(pointFH.x, pointFH.y);
        this.f5447a.close();
    }

    private void i() {
        float f10;
        float f11;
        double d10;
        float fSin;
        float f12;
        float f13;
        float f14;
        float fFloatValue = this.f5453g.h().floatValue();
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar = this.f5455i;
        double radians = Math.toRadians((aVar == null ? 0.0d : aVar.h().floatValue()) - 90.0d);
        double d11 = fFloatValue;
        float f15 = (float) (6.283185307179586d / d11);
        if (this.f5452f) {
            f15 *= -1.0f;
        }
        float f16 = f15 / 2.0f;
        float f17 = fFloatValue - ((int) fFloatValue);
        if (f17 != 0.0f) {
            radians += (double) ((1.0f - f17) * f16);
        }
        float fFloatValue2 = this.f5457k.h().floatValue();
        float fFloatValue3 = this.f5456j.h().floatValue();
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar2 = this.f5458l;
        float fFloatValue4 = aVar2 != null ? aVar2.h().floatValue() / 100.0f : 0.0f;
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar3 = this.f5459m;
        float fFloatValue5 = aVar3 != null ? aVar3.h().floatValue() / 100.0f : 0.0f;
        if (f17 != 0.0f) {
            f12 = ((fFloatValue2 - fFloatValue3) * f17) + fFloatValue3;
            double d12 = f12;
            float fCos = (float) (d12 * Math.cos(radians));
            fSin = (float) (d12 * Math.sin(radians));
            this.f5447a.moveTo(fCos, fSin);
            d10 = radians + ((double) ((f15 * f17) / 2.0f));
            f10 = fCos;
            f11 = f16;
        } else {
            double d13 = fFloatValue2;
            float fCos2 = (float) (Math.cos(radians) * d13);
            float fSin2 = (float) (d13 * Math.sin(radians));
            this.f5447a.moveTo(fCos2, fSin2);
            f10 = fCos2;
            f11 = f16;
            d10 = radians + ((double) f11);
            fSin = fSin2;
            f12 = 0.0f;
        }
        double dCeil = Math.ceil(d11) * 2.0d;
        int i10 = 0;
        float f18 = f11;
        float f19 = f10;
        boolean z10 = false;
        while (true) {
            double d14 = i10;
            if (d14 >= dCeil) {
                PointF pointFH = this.f5454h.h();
                this.f5447a.offset(pointFH.x, pointFH.y);
                this.f5447a.close();
                return;
            }
            float f20 = z10 ? fFloatValue2 : fFloatValue3;
            float f21 = (f12 == 0.0f || d14 != dCeil - 2.0d) ? f18 : (f15 * f17) / 2.0f;
            if (f12 == 0.0f || d14 != dCeil - 1.0d) {
                f12 = f20;
            }
            double d15 = f12;
            double d16 = dCeil;
            float fCos3 = (float) (d15 * Math.cos(d10));
            float fSin3 = (float) (d15 * Math.sin(d10));
            if (fFloatValue4 == 0.0f && fFloatValue5 == 0.0f) {
                this.f5447a.lineTo(fCos3, fSin3);
                f13 = fFloatValue4;
                f14 = fFloatValue5;
            } else {
                f13 = fFloatValue4;
                double dAtan2 = (float) (Math.atan2(fSin, f19) - 1.5707963267948966d);
                float fCos4 = (float) Math.cos(dAtan2);
                float fSin4 = (float) Math.sin(dAtan2);
                f14 = fFloatValue5;
                double dAtan3 = (float) (Math.atan2(fSin3, fCos3) - 1.5707963267948966d);
                float fCos5 = (float) Math.cos(dAtan3);
                float fSin5 = (float) Math.sin(dAtan3);
                float f22 = z10 ? f13 : f14;
                float f23 = z10 ? f14 : f13;
                float f24 = z10 ? fFloatValue3 : fFloatValue2;
                float f25 = z10 ? fFloatValue2 : fFloatValue3;
                float f26 = f24 * f22 * f5445p;
                float f27 = fCos4 * f26;
                float f28 = f26 * fSin4;
                float f29 = f25 * f23 * f5445p;
                float f30 = fCos5 * f29;
                float f31 = f29 * fSin5;
                if (f17 != 0.0f) {
                    if (i10 == 0) {
                        f27 *= f17;
                        f28 *= f17;
                    } else if (d14 == d16 - 1.0d) {
                        f30 *= f17;
                        f31 *= f17;
                    }
                }
                this.f5447a.cubicTo(f19 - f27, fSin - f28, fCos3 + f30, fSin3 + f31, fCos3, fSin3);
            }
            d10 += (double) f21;
            z10 = !z10;
            i10++;
            f19 = fCos3;
            fSin = fSin3;
            fFloatValue5 = f14;
            fFloatValue4 = f13;
            f12 = f12;
            f15 = f15;
            dCeil = d16;
        }
    }

    private void j() {
        this.f5461o = false;
        this.f5449c.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.b
    public void d() {
        j();
    }

    @Override // com.airbnb.lottie.animation.content.c
    public void e(List<c> list, List<c> list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVar = list.get(i10);
            if (cVar instanceof v) {
                v vVar = (v) cVar;
                if (vVar.getType() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f5460n.a(vVar);
                    vVar.b(this);
                }
            }
        }
    }

    @Override // com.airbnb.lottie.model.e
    public <T> void g(T t10, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar;
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar2;
        if (t10 == b1.f5599w) {
            this.f5453g.n(jVar);
            return;
        }
        if (t10 == b1.f5600x) {
            this.f5455i.n(jVar);
            return;
        }
        if (t10 == b1.f5590n) {
            this.f5454h.n(jVar);
            return;
        }
        if (t10 == b1.f5601y && (aVar2 = this.f5456j) != null) {
            aVar2.n(jVar);
            return;
        }
        if (t10 == b1.f5602z) {
            this.f5457k.n(jVar);
            return;
        }
        if (t10 == b1.A && (aVar = this.f5458l) != null) {
            aVar.n(jVar);
        } else if (t10 == b1.B) {
            this.f5459m.n(jVar);
        }
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f5448b;
    }

    @Override // com.airbnb.lottie.animation.content.n
    public Path getPath() {
        if (this.f5461o) {
            return this.f5447a;
        }
        this.f5447a.reset();
        if (this.f5451e) {
            this.f5461o = true;
            return this.f5447a;
        }
        int i10 = a.f5462a[this.f5450d.ordinal()];
        if (i10 == 1) {
            i();
        } else if (i10 == 2) {
            b();
        }
        this.f5447a.close();
        this.f5460n.b(this.f5447a);
        this.f5461o = true;
        return this.f5447a;
    }

    @Override // com.airbnb.lottie.model.e
    public void h(com.airbnb.lottie.model.d dVar, int i10, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
        com.airbnb.lottie.utils.k.m(dVar, i10, list, dVar2, this);
    }
}
