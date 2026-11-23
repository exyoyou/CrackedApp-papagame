package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import androidx.core.graphics.PaintCompat;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.b1;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class g implements e, com.airbnb.lottie.animation.keyframe.a.b, k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f5394a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f5395b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.airbnb.lottie.model.layer.b f5396c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f5397d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f5398e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<n> f5399f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<Integer, Integer> f5400g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<Integer, Integer> f5401h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> f5402i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final LottieDrawable f5403j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Float, Float> f5404k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    float f5405l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.animation.keyframe.c f5406m;

    public g(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.b bVar, com.airbnb.lottie.model.content.k kVar) {
        Path path = new Path();
        this.f5394a = path;
        com.airbnb.lottie.animation.a aVar = new com.airbnb.lottie.animation.a(1);
        this.f5395b = aVar;
        this.f5399f = new ArrayList();
        this.f5396c = bVar;
        this.f5397d = kVar.d();
        this.f5398e = kVar.f();
        this.f5403j = lottieDrawable;
        if (bVar.w() != null) {
            com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA = bVar.w().a().a();
            this.f5404k = aVarA;
            aVarA.a(this);
            bVar.i(this.f5404k);
        }
        if (bVar.y() != null) {
            this.f5406m = new com.airbnb.lottie.animation.keyframe.c(this, bVar, bVar.y());
        }
        if (kVar.b() == null || kVar.e() == null) {
            this.f5400g = null;
            this.f5401h = null;
            return;
        }
        PaintCompat.setBlendMode(aVar, bVar.v().toNativeBlendMode());
        path.setFillType(kVar.c());
        com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVarA2 = kVar.b().a();
        this.f5400g = aVarA2;
        aVarA2.a(this);
        bVar.i(aVarA2);
        com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVarA3 = kVar.e().a();
        this.f5401h = aVarA3;
        aVarA3.a(this);
        bVar.i(aVarA3);
    }

    @Override // com.airbnb.lottie.animation.content.e
    public void a(RectF rectF, Matrix matrix, boolean z10) {
        this.f5394a.reset();
        for (int i10 = 0; i10 < this.f5399f.size(); i10++) {
            this.f5394a.addPath(this.f5399f.get(i10).getPath(), matrix);
        }
        this.f5394a.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // com.airbnb.lottie.animation.content.e
    public void c(Canvas canvas, Matrix matrix, int i10) {
        if (this.f5398e) {
            return;
        }
        com.airbnb.lottie.e.b("FillContent#draw");
        this.f5395b.setColor((com.airbnb.lottie.utils.k.d((int) ((((i10 / 255.0f) * this.f5401h.h().intValue()) / 100.0f) * 255.0f), 0, 255) << 24) | (((com.airbnb.lottie.animation.keyframe.b) this.f5400g).p() & 16777215));
        com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> aVar = this.f5402i;
        if (aVar != null) {
            this.f5395b.setColorFilter(aVar.h());
        }
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar2 = this.f5404k;
        if (aVar2 != null) {
            float fFloatValue = aVar2.h().floatValue();
            if (fFloatValue == 0.0f) {
                this.f5395b.setMaskFilter(null);
            } else if (fFloatValue != this.f5405l) {
                this.f5395b.setMaskFilter(this.f5396c.x(fFloatValue));
            }
            this.f5405l = fFloatValue;
        }
        com.airbnb.lottie.animation.keyframe.c cVar = this.f5406m;
        if (cVar != null) {
            cVar.a(this.f5395b);
        }
        this.f5394a.reset();
        for (int i11 = 0; i11 < this.f5399f.size(); i11++) {
            this.f5394a.addPath(this.f5399f.get(i11).getPath(), matrix);
        }
        canvas.drawPath(this.f5394a, this.f5395b);
        com.airbnb.lottie.e.c("FillContent#draw");
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.b
    public void d() {
        this.f5403j.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.c
    public void e(List<c> list, List<c> list2) {
        for (int i10 = 0; i10 < list2.size(); i10++) {
            c cVar = list2.get(i10);
            if (cVar instanceof n) {
                this.f5399f.add((n) cVar);
            }
        }
    }

    @Override // com.airbnb.lottie.model.e
    public <T> void g(T t10, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        com.airbnb.lottie.animation.keyframe.c cVar;
        com.airbnb.lottie.animation.keyframe.c cVar2;
        com.airbnb.lottie.animation.keyframe.c cVar3;
        com.airbnb.lottie.animation.keyframe.c cVar4;
        com.airbnb.lottie.animation.keyframe.c cVar5;
        if (t10 == b1.f5577a) {
            this.f5400g.n(jVar);
            return;
        }
        if (t10 == b1.f5580d) {
            this.f5401h.n(jVar);
            return;
        }
        if (t10 == b1.K) {
            com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> aVar = this.f5402i;
            if (aVar != null) {
                this.f5396c.H(aVar);
            }
            if (jVar == null) {
                this.f5402i = null;
                return;
            }
            com.airbnb.lottie.animation.keyframe.q qVar = new com.airbnb.lottie.animation.keyframe.q(jVar);
            this.f5402i = qVar;
            qVar.a(this);
            this.f5396c.i(this.f5402i);
            return;
        }
        if (t10 == b1.f5586j) {
            com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar2 = this.f5404k;
            if (aVar2 != null) {
                aVar2.n(jVar);
                return;
            }
            com.airbnb.lottie.animation.keyframe.q qVar2 = new com.airbnb.lottie.animation.keyframe.q(jVar);
            this.f5404k = qVar2;
            qVar2.a(this);
            this.f5396c.i(this.f5404k);
            return;
        }
        if (t10 == b1.f5581e && (cVar5 = this.f5406m) != null) {
            cVar5.b(jVar);
            return;
        }
        if (t10 == b1.G && (cVar4 = this.f5406m) != null) {
            cVar4.f(jVar);
            return;
        }
        if (t10 == b1.H && (cVar3 = this.f5406m) != null) {
            cVar3.c(jVar);
            return;
        }
        if (t10 == b1.I && (cVar2 = this.f5406m) != null) {
            cVar2.e(jVar);
        } else {
            if (t10 != b1.J || (cVar = this.f5406m) == null) {
                return;
            }
            cVar.g(jVar);
        }
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f5397d;
    }

    @Override // com.airbnb.lottie.model.e
    public void h(com.airbnb.lottie.model.d dVar, int i10, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
        com.airbnb.lottie.utils.k.m(dVar, i10, list, dVar2, this);
    }
}
