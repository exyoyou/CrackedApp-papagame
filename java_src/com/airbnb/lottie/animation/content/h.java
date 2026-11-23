package com.airbnb.lottie.animation.content;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.b1;
import com.airbnb.lottie.model.content.GradientType;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class h implements e, com.airbnb.lottie.animation.keyframe.a.b, k {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f5407v = 32;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    private final String f5408a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f5409b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.airbnb.lottie.model.layer.b f5410c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final LongSparseArray<LinearGradient> f5411d = new LongSparseArray<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final LongSparseArray<RadialGradient> f5412e = new LongSparseArray<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Path f5413f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Paint f5414g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final RectF f5415h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List<n> f5416i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final GradientType f5417j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.d, com.airbnb.lottie.model.content.d> f5418k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<Integer, Integer> f5419l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<PointF, PointF> f5420m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<PointF, PointF> f5421n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> f5422o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.animation.keyframe.q f5423p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final LottieDrawable f5424q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f5425r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Float, Float> f5426s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    float f5427t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.animation.keyframe.c f5428u;

    public h(LottieDrawable lottieDrawable, com.airbnb.lottie.j jVar, com.airbnb.lottie.model.layer.b bVar, com.airbnb.lottie.model.content.e eVar) {
        Path path = new Path();
        this.f5413f = path;
        this.f5414g = new com.airbnb.lottie.animation.a(1);
        this.f5415h = new RectF();
        this.f5416i = new ArrayList();
        this.f5427t = 0.0f;
        this.f5410c = bVar;
        this.f5408a = eVar.f();
        this.f5409b = eVar.i();
        this.f5424q = lottieDrawable;
        this.f5417j = eVar.e();
        path.setFillType(eVar.c());
        this.f5425r = (int) (jVar.d() / 32.0f);
        com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.d, com.airbnb.lottie.model.content.d> aVarA = eVar.d().a();
        this.f5418k = aVarA;
        aVarA.a(this);
        bVar.i(aVarA);
        com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVarA2 = eVar.g().a();
        this.f5419l = aVarA2;
        aVarA2.a(this);
        bVar.i(aVarA2);
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> aVarA3 = eVar.h().a();
        this.f5420m = aVarA3;
        aVarA3.a(this);
        bVar.i(aVarA3);
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> aVarA4 = eVar.b().a();
        this.f5421n = aVarA4;
        aVarA4.a(this);
        bVar.i(aVarA4);
        if (bVar.w() != null) {
            com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA5 = bVar.w().a().a();
            this.f5426s = aVarA5;
            aVarA5.a(this);
            bVar.i(this.f5426s);
        }
        if (bVar.y() != null) {
            this.f5428u = new com.airbnb.lottie.animation.keyframe.c(this, bVar, bVar.y());
        }
    }

    private int[] b(int[] iArr) {
        com.airbnb.lottie.animation.keyframe.q qVar = this.f5423p;
        if (qVar != null) {
            Integer[] numArr = (Integer[]) qVar.h();
            int i10 = 0;
            if (iArr.length == numArr.length) {
                while (i10 < iArr.length) {
                    iArr[i10] = numArr[i10].intValue();
                    i10++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i10 < numArr.length) {
                    iArr[i10] = numArr[i10].intValue();
                    i10++;
                }
            }
        }
        return iArr;
    }

    private int i() {
        int iRound = Math.round(this.f5420m.f() * this.f5425r);
        int iRound2 = Math.round(this.f5421n.f() * this.f5425r);
        int iRound3 = Math.round(this.f5418k.f() * this.f5425r);
        int i10 = iRound != 0 ? 527 * iRound : 17;
        if (iRound2 != 0) {
            i10 = i10 * 31 * iRound2;
        }
        return iRound3 != 0 ? i10 * 31 * iRound3 : i10;
    }

    private LinearGradient j() {
        long jI = i();
        LinearGradient linearGradient = this.f5411d.get(jI);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF pointFH = this.f5420m.h();
        PointF pointFH2 = this.f5421n.h();
        com.airbnb.lottie.model.content.d dVarH = this.f5418k.h();
        LinearGradient linearGradient2 = new LinearGradient(pointFH.x, pointFH.y, pointFH2.x, pointFH2.y, b(dVarH.c()), dVarH.d(), Shader.TileMode.CLAMP);
        this.f5411d.put(jI, linearGradient2);
        return linearGradient2;
    }

    private RadialGradient k() {
        long jI = i();
        RadialGradient radialGradient = this.f5412e.get(jI);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF pointFH = this.f5420m.h();
        PointF pointFH2 = this.f5421n.h();
        com.airbnb.lottie.model.content.d dVarH = this.f5418k.h();
        int[] iArrB = b(dVarH.c());
        float[] fArrD = dVarH.d();
        float f10 = pointFH.x;
        float f11 = pointFH.y;
        float fHypot = (float) Math.hypot(pointFH2.x - f10, pointFH2.y - f11);
        RadialGradient radialGradient2 = new RadialGradient(f10, f11, fHypot <= 0.0f ? 0.001f : fHypot, iArrB, fArrD, Shader.TileMode.CLAMP);
        this.f5412e.put(jI, radialGradient2);
        return radialGradient2;
    }

    @Override // com.airbnb.lottie.animation.content.e
    public void a(RectF rectF, Matrix matrix, boolean z10) {
        this.f5413f.reset();
        for (int i10 = 0; i10 < this.f5416i.size(); i10++) {
            this.f5413f.addPath(this.f5416i.get(i10).getPath(), matrix);
        }
        this.f5413f.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // com.airbnb.lottie.animation.content.e
    public void c(Canvas canvas, Matrix matrix, int i10) {
        if (this.f5409b) {
            return;
        }
        com.airbnb.lottie.e.b("GradientFillContent#draw");
        this.f5413f.reset();
        for (int i11 = 0; i11 < this.f5416i.size(); i11++) {
            this.f5413f.addPath(this.f5416i.get(i11).getPath(), matrix);
        }
        this.f5413f.computeBounds(this.f5415h, false);
        Shader shaderJ = this.f5417j == GradientType.LINEAR ? j() : k();
        shaderJ.setLocalMatrix(matrix);
        this.f5414g.setShader(shaderJ);
        com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> aVar = this.f5422o;
        if (aVar != null) {
            this.f5414g.setColorFilter(aVar.h());
        }
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar2 = this.f5426s;
        if (aVar2 != null) {
            float fFloatValue = aVar2.h().floatValue();
            if (fFloatValue == 0.0f) {
                this.f5414g.setMaskFilter(null);
            } else if (fFloatValue != this.f5427t) {
                this.f5414g.setMaskFilter(new BlurMaskFilter(fFloatValue, BlurMaskFilter.Blur.NORMAL));
            }
            this.f5427t = fFloatValue;
        }
        com.airbnb.lottie.animation.keyframe.c cVar = this.f5428u;
        if (cVar != null) {
            cVar.a(this.f5414g);
        }
        this.f5414g.setAlpha(com.airbnb.lottie.utils.k.d((int) ((((i10 / 255.0f) * this.f5419l.h().intValue()) / 100.0f) * 255.0f), 0, 255));
        canvas.drawPath(this.f5413f, this.f5414g);
        com.airbnb.lottie.e.c("GradientFillContent#draw");
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.b
    public void d() {
        this.f5424q.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.c
    public void e(List<c> list, List<c> list2) {
        for (int i10 = 0; i10 < list2.size(); i10++) {
            c cVar = list2.get(i10);
            if (cVar instanceof n) {
                this.f5416i.add((n) cVar);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.airbnb.lottie.model.e
    public <T> void g(T t10, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        com.airbnb.lottie.animation.keyframe.c cVar;
        com.airbnb.lottie.animation.keyframe.c cVar2;
        com.airbnb.lottie.animation.keyframe.c cVar3;
        com.airbnb.lottie.animation.keyframe.c cVar4;
        com.airbnb.lottie.animation.keyframe.c cVar5;
        if (t10 == b1.f5580d) {
            this.f5419l.n(jVar);
            return;
        }
        if (t10 == b1.K) {
            com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> aVar = this.f5422o;
            if (aVar != null) {
                this.f5410c.H(aVar);
            }
            if (jVar == null) {
                this.f5422o = null;
                return;
            }
            com.airbnb.lottie.animation.keyframe.q qVar = new com.airbnb.lottie.animation.keyframe.q(jVar);
            this.f5422o = qVar;
            qVar.a(this);
            this.f5410c.i(this.f5422o);
            return;
        }
        if (t10 == b1.L) {
            com.airbnb.lottie.animation.keyframe.q qVar2 = this.f5423p;
            if (qVar2 != null) {
                this.f5410c.H(qVar2);
            }
            if (jVar == null) {
                this.f5423p = null;
                return;
            }
            this.f5411d.clear();
            this.f5412e.clear();
            com.airbnb.lottie.animation.keyframe.q qVar3 = new com.airbnb.lottie.animation.keyframe.q(jVar);
            this.f5423p = qVar3;
            qVar3.a(this);
            this.f5410c.i(this.f5423p);
            return;
        }
        if (t10 == b1.f5586j) {
            com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar2 = this.f5426s;
            if (aVar2 != null) {
                aVar2.n(jVar);
                return;
            }
            com.airbnb.lottie.animation.keyframe.q qVar4 = new com.airbnb.lottie.animation.keyframe.q(jVar);
            this.f5426s = qVar4;
            qVar4.a(this);
            this.f5410c.i(this.f5426s);
            return;
        }
        if (t10 == b1.f5581e && (cVar5 = this.f5428u) != null) {
            cVar5.b(jVar);
            return;
        }
        if (t10 == b1.G && (cVar4 = this.f5428u) != null) {
            cVar4.f(jVar);
            return;
        }
        if (t10 == b1.H && (cVar3 = this.f5428u) != null) {
            cVar3.c(jVar);
            return;
        }
        if (t10 == b1.I && (cVar2 = this.f5428u) != null) {
            cVar2.e(jVar);
        } else {
            if (t10 != b1.J || (cVar = this.f5428u) == null) {
                return;
            }
            cVar.g(jVar);
        }
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f5408a;
    }

    @Override // com.airbnb.lottie.model.e
    public void h(com.airbnb.lottie.model.d dVar, int i10, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
        com.airbnb.lottie.utils.k.m(dVar, i10, list, dVar2, this);
    }
}
