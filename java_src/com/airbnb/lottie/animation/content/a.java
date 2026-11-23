package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.b1;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a implements com.airbnb.lottie.animation.keyframe.a.b, k, e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final LottieDrawable f5358e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final com.airbnb.lottie.model.layer.b f5359f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float[] f5361h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final Paint f5362i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f5363j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Integer> f5364k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final List<com.airbnb.lottie.animation.keyframe.a<?, Float>> f5365l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f5366m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> f5367n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Float, Float> f5368o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    float f5369p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.animation.keyframe.c f5370q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PathMeasure f5354a = new PathMeasure();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path f5355b = new Path();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Path f5356c = new Path();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final RectF f5357d = new RectF();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<b> f5360g = new ArrayList();

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<n> f5371a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        private final v f5372b;

        private b(@Nullable v vVar) {
            this.f5371a = new ArrayList();
            this.f5372b = vVar;
        }
    }

    a(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.b bVar, Paint.Cap cap, Paint.Join join, float f10, com.airbnb.lottie.model.animatable.d dVar, com.airbnb.lottie.model.animatable.b bVar2, List<com.airbnb.lottie.model.animatable.b> list, com.airbnb.lottie.model.animatable.b bVar3) {
        com.airbnb.lottie.animation.a aVar = new com.airbnb.lottie.animation.a(1);
        this.f5362i = aVar;
        this.f5369p = 0.0f;
        this.f5358e = lottieDrawable;
        this.f5359f = bVar;
        aVar.setStyle(Paint.Style.STROKE);
        aVar.setStrokeCap(cap);
        aVar.setStrokeJoin(join);
        aVar.setStrokeMiter(f10);
        this.f5364k = dVar.a();
        this.f5363j = bVar2.a();
        if (bVar3 == null) {
            this.f5366m = null;
        } else {
            this.f5366m = bVar3.a();
        }
        this.f5365l = new ArrayList(list.size());
        this.f5361h = new float[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.f5365l.add(list.get(i10).a());
        }
        bVar.i(this.f5364k);
        bVar.i(this.f5363j);
        for (int i11 = 0; i11 < this.f5365l.size(); i11++) {
            bVar.i(this.f5365l.get(i11));
        }
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar2 = this.f5366m;
        if (aVar2 != null) {
            bVar.i(aVar2);
        }
        this.f5364k.a(this);
        this.f5363j.a(this);
        for (int i12 = 0; i12 < list.size(); i12++) {
            this.f5365l.get(i12).a(this);
        }
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar3 = this.f5366m;
        if (aVar3 != null) {
            aVar3.a(this);
        }
        if (bVar.w() != null) {
            com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA = bVar.w().a().a();
            this.f5368o = aVarA;
            aVarA.a(this);
            bVar.i(this.f5368o);
        }
        if (bVar.y() != null) {
            this.f5370q = new com.airbnb.lottie.animation.keyframe.c(this, bVar, bVar.y());
        }
    }

    private void b(Matrix matrix) {
        com.airbnb.lottie.e.b("StrokeContent#applyDashPattern");
        if (this.f5365l.isEmpty()) {
            com.airbnb.lottie.e.c("StrokeContent#applyDashPattern");
            return;
        }
        float fG = com.airbnb.lottie.utils.l.g(matrix);
        for (int i10 = 0; i10 < this.f5365l.size(); i10++) {
            this.f5361h[i10] = this.f5365l.get(i10).h().floatValue();
            if (i10 % 2 == 0) {
                float[] fArr = this.f5361h;
                if (fArr[i10] < 1.0f) {
                    fArr[i10] = 1.0f;
                }
            } else {
                float[] fArr2 = this.f5361h;
                if (fArr2[i10] < 0.1f) {
                    fArr2[i10] = 0.1f;
                }
            }
            float[] fArr3 = this.f5361h;
            fArr3[i10] = fArr3[i10] * fG;
        }
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar = this.f5366m;
        this.f5362i.setPathEffect(new DashPathEffect(this.f5361h, aVar == null ? 0.0f : fG * aVar.h().floatValue()));
        com.airbnb.lottie.e.c("StrokeContent#applyDashPattern");
    }

    /* JADX WARN: Code duplicated, block: B:32:0x011f  */
    private void i(Canvas canvas, b bVar, Matrix matrix) {
        float f10;
        com.airbnb.lottie.e.b("StrokeContent#applyTrimPath");
        if (bVar.f5372b == null) {
            com.airbnb.lottie.e.c("StrokeContent#applyTrimPath");
            return;
        }
        this.f5355b.reset();
        for (int size = bVar.f5371a.size() - 1; size >= 0; size--) {
            this.f5355b.addPath(((n) bVar.f5371a.get(size)).getPath(), matrix);
        }
        float fFloatValue = bVar.f5372b.i().h().floatValue() / 100.0f;
        float fFloatValue2 = bVar.f5372b.g().h().floatValue() / 100.0f;
        float fFloatValue3 = bVar.f5372b.h().h().floatValue() / 360.0f;
        if (fFloatValue < 0.01f && fFloatValue2 > 0.99f) {
            canvas.drawPath(this.f5355b, this.f5362i);
            com.airbnb.lottie.e.c("StrokeContent#applyTrimPath");
            return;
        }
        this.f5354a.setPath(this.f5355b, false);
        float length = this.f5354a.getLength();
        while (this.f5354a.nextContour()) {
            length += this.f5354a.getLength();
        }
        float f11 = fFloatValue3 * length;
        float f12 = (fFloatValue * length) + f11;
        float fMin = Math.min((fFloatValue2 * length) + f11, (f12 + length) - 1.0f);
        float f13 = 0.0f;
        for (int size2 = bVar.f5371a.size() - 1; size2 >= 0; size2--) {
            this.f5356c.set(((n) bVar.f5371a.get(size2)).getPath());
            this.f5356c.transform(matrix);
            this.f5354a.setPath(this.f5356c, false);
            float length2 = this.f5354a.getLength();
            if (fMin > length) {
                float f14 = fMin - length;
                if (f14 >= f13 + length2 || f13 >= f14) {
                    f10 = f13 + length2;
                    if (f10 < f12 && f13 <= fMin) {
                        if (f10 > fMin || f12 >= f13) {
                            com.airbnb.lottie.utils.l.a(this.f5356c, f12 < f13 ? 0.0f : (f12 - f13) / length2, fMin > f10 ? 1.0f : (fMin - f13) / length2, 0.0f);
                            canvas.drawPath(this.f5356c, this.f5362i);
                        } else {
                            canvas.drawPath(this.f5356c, this.f5362i);
                        }
                    }
                } else {
                    com.airbnb.lottie.utils.l.a(this.f5356c, f12 > length ? (f12 - length) / length2 : 0.0f, Math.min(f14 / length2, 1.0f), 0.0f);
                    canvas.drawPath(this.f5356c, this.f5362i);
                }
            } else {
                f10 = f13 + length2;
                if (f10 < f12) {
                }
            }
            f13 += length2;
        }
        com.airbnb.lottie.e.c("StrokeContent#applyTrimPath");
    }

    @Override // com.airbnb.lottie.animation.content.e
    public void a(RectF rectF, Matrix matrix, boolean z10) {
        com.airbnb.lottie.e.b("StrokeContent#getBounds");
        this.f5355b.reset();
        for (int i10 = 0; i10 < this.f5360g.size(); i10++) {
            b bVar = this.f5360g.get(i10);
            for (int i11 = 0; i11 < bVar.f5371a.size(); i11++) {
                this.f5355b.addPath(((n) bVar.f5371a.get(i11)).getPath(), matrix);
            }
        }
        this.f5355b.computeBounds(this.f5357d, false);
        float fP = ((com.airbnb.lottie.animation.keyframe.d) this.f5363j).p();
        RectF rectF2 = this.f5357d;
        float f10 = fP / 2.0f;
        rectF2.set(rectF2.left - f10, rectF2.top - f10, rectF2.right + f10, rectF2.bottom + f10);
        rectF.set(this.f5357d);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
        com.airbnb.lottie.e.c("StrokeContent#getBounds");
    }

    @Override // com.airbnb.lottie.animation.content.e
    public void c(Canvas canvas, Matrix matrix, int i10) {
        com.airbnb.lottie.e.b("StrokeContent#draw");
        if (com.airbnb.lottie.utils.l.h(matrix)) {
            com.airbnb.lottie.e.c("StrokeContent#draw");
            return;
        }
        this.f5362i.setAlpha(com.airbnb.lottie.utils.k.d((int) ((((i10 / 255.0f) * ((com.airbnb.lottie.animation.keyframe.f) this.f5364k).p()) / 100.0f) * 255.0f), 0, 255));
        this.f5362i.setStrokeWidth(((com.airbnb.lottie.animation.keyframe.d) this.f5363j).p() * com.airbnb.lottie.utils.l.g(matrix));
        if (this.f5362i.getStrokeWidth() <= 0.0f) {
            com.airbnb.lottie.e.c("StrokeContent#draw");
            return;
        }
        b(matrix);
        com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> aVar = this.f5367n;
        if (aVar != null) {
            this.f5362i.setColorFilter(aVar.h());
        }
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar2 = this.f5368o;
        if (aVar2 != null) {
            float fFloatValue = aVar2.h().floatValue();
            if (fFloatValue == 0.0f) {
                this.f5362i.setMaskFilter(null);
            } else if (fFloatValue != this.f5369p) {
                this.f5362i.setMaskFilter(this.f5359f.x(fFloatValue));
            }
            this.f5369p = fFloatValue;
        }
        com.airbnb.lottie.animation.keyframe.c cVar = this.f5370q;
        if (cVar != null) {
            cVar.a(this.f5362i);
        }
        for (int i11 = 0; i11 < this.f5360g.size(); i11++) {
            b bVar = this.f5360g.get(i11);
            if (bVar.f5372b != null) {
                i(canvas, bVar, matrix);
            } else {
                com.airbnb.lottie.e.b("StrokeContent#buildPath");
                this.f5355b.reset();
                for (int size = bVar.f5371a.size() - 1; size >= 0; size--) {
                    this.f5355b.addPath(((n) bVar.f5371a.get(size)).getPath(), matrix);
                }
                com.airbnb.lottie.e.c("StrokeContent#buildPath");
                com.airbnb.lottie.e.b("StrokeContent#drawPath");
                canvas.drawPath(this.f5355b, this.f5362i);
                com.airbnb.lottie.e.c("StrokeContent#drawPath");
            }
        }
        com.airbnb.lottie.e.c("StrokeContent#draw");
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.b
    public void d() {
        this.f5358e.invalidateSelf();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0055  */
    /* JADX WARN: Code duplicated, block: B:23:0x0059 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x005b  */
    /* JADX WARN: Code duplicated, block: B:37:0x0069 A[SYNTHETIC] */
    @Override // com.airbnb.lottie.animation.content.c
    public void e(List<c> list, List<c> list2) {
        v vVar = null;
        for (int size = list.size() - 1; size >= 0; size--) {
            c cVar = list.get(size);
            if (cVar instanceof v) {
                v vVar2 = (v) cVar;
                if (vVar2.getType() == ShapeTrimPath.Type.INDIVIDUALLY) {
                    vVar = vVar2;
                }
            }
        }
        if (vVar != null) {
            vVar.b(this);
        }
        b bVar = null;
        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
            c cVar2 = list2.get(size2);
            if (cVar2 instanceof v) {
                v vVar3 = (v) cVar2;
                if (vVar3.getType() == ShapeTrimPath.Type.INDIVIDUALLY) {
                    if (bVar != null) {
                        this.f5360g.add(bVar);
                    }
                    bVar = new b(vVar3);
                    vVar3.b(this);
                } else if (!(cVar2 instanceof n)) {
                    if (bVar == null) {
                        bVar = new b(vVar);
                    }
                    bVar.f5371a.add((n) cVar2);
                }
            } else if (!(cVar2 instanceof n)) {
                if (bVar == null) {
                    bVar = new b(vVar);
                }
                bVar.f5371a.add((n) cVar2);
            }
        }
        if (bVar != null) {
            this.f5360g.add(bVar);
        }
    }

    @Override // com.airbnb.lottie.model.e
    @CallSuper
    public <T> void g(T t10, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        com.airbnb.lottie.animation.keyframe.c cVar;
        com.airbnb.lottie.animation.keyframe.c cVar2;
        com.airbnb.lottie.animation.keyframe.c cVar3;
        com.airbnb.lottie.animation.keyframe.c cVar4;
        com.airbnb.lottie.animation.keyframe.c cVar5;
        if (t10 == b1.f5580d) {
            this.f5364k.n(jVar);
            return;
        }
        if (t10 == b1.f5595s) {
            this.f5363j.n(jVar);
            return;
        }
        if (t10 == b1.K) {
            com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> aVar = this.f5367n;
            if (aVar != null) {
                this.f5359f.H(aVar);
            }
            if (jVar == null) {
                this.f5367n = null;
                return;
            }
            com.airbnb.lottie.animation.keyframe.q qVar = new com.airbnb.lottie.animation.keyframe.q(jVar);
            this.f5367n = qVar;
            qVar.a(this);
            this.f5359f.i(this.f5367n);
            return;
        }
        if (t10 == b1.f5586j) {
            com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar2 = this.f5368o;
            if (aVar2 != null) {
                aVar2.n(jVar);
                return;
            }
            com.airbnb.lottie.animation.keyframe.q qVar2 = new com.airbnb.lottie.animation.keyframe.q(jVar);
            this.f5368o = qVar2;
            qVar2.a(this);
            this.f5359f.i(this.f5368o);
            return;
        }
        if (t10 == b1.f5581e && (cVar5 = this.f5370q) != null) {
            cVar5.b(jVar);
            return;
        }
        if (t10 == b1.G && (cVar4 = this.f5370q) != null) {
            cVar4.f(jVar);
            return;
        }
        if (t10 == b1.H && (cVar3 = this.f5370q) != null) {
            cVar3.c(jVar);
            return;
        }
        if (t10 == b1.I && (cVar2 = this.f5370q) != null) {
            cVar2.e(jVar);
        } else {
            if (t10 != b1.J || (cVar = this.f5370q) == null) {
                return;
            }
            cVar.g(jVar);
        }
    }

    @Override // com.airbnb.lottie.model.e
    public void h(com.airbnb.lottie.model.d dVar, int i10, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
        com.airbnb.lottie.utils.k.m(dVar, i10, list, dVar2, this);
    }
}
