package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.b1;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class p implements com.airbnb.lottie.animation.keyframe.a.b, k, n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f5465c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f5466d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final LottieDrawable f5467e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, PointF> f5468f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, PointF> f5469g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f5470h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f5473k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f5463a = new Path();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RectF f5464b = new RectF();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final b f5471i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<Float, Float> f5472j = null;

    public p(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.b bVar, com.airbnb.lottie.model.content.g gVar) {
        this.f5465c = gVar.c();
        this.f5466d = gVar.f();
        this.f5467e = lottieDrawable;
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> aVarA = gVar.d().a();
        this.f5468f = aVarA;
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> aVarA2 = gVar.e().a();
        this.f5469g = aVarA2;
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA3 = gVar.b().a();
        this.f5470h = aVarA3;
        bVar.i(aVarA);
        bVar.i(aVarA2);
        bVar.i(aVarA3);
        aVarA.a(this);
        aVarA2.a(this);
        aVarA3.a(this);
    }

    private void b() {
        this.f5473k = false;
        this.f5467e.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.b
    public void d() {
        b();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0025  */
    /* JADX WARN: Code duplicated, block: B:12:0x0029  */
    /* JADX WARN: Code duplicated, block: B:18:0x0031 A[SYNTHETIC] */
    @Override // com.airbnb.lottie.animation.content.c
    public void e(List<c> list, List<c> list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVar = list.get(i10);
            if (cVar instanceof v) {
                v vVar = (v) cVar;
                if (vVar.getType() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f5471i.a(vVar);
                    vVar.b(this);
                } else if (cVar instanceof r) {
                    this.f5472j = ((r) cVar).h();
                }
            } else if (cVar instanceof r) {
                this.f5472j = ((r) cVar).h();
            }
        }
    }

    @Override // com.airbnb.lottie.model.e
    public <T> void g(T t10, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        if (t10 == b1.f5588l) {
            this.f5469g.n(jVar);
        } else if (t10 == b1.f5590n) {
            this.f5468f.n(jVar);
        } else if (t10 == b1.f5589m) {
            this.f5470h.n(jVar);
        }
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f5465c;
    }

    @Override // com.airbnb.lottie.animation.content.n
    public Path getPath() {
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVar;
        if (this.f5473k) {
            return this.f5463a;
        }
        this.f5463a.reset();
        if (this.f5466d) {
            this.f5473k = true;
            return this.f5463a;
        }
        PointF pointFH = this.f5469g.h();
        float f10 = pointFH.x / 2.0f;
        float f11 = pointFH.y / 2.0f;
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar2 = this.f5470h;
        float fP = aVar2 == null ? 0.0f : ((com.airbnb.lottie.animation.keyframe.d) aVar2).p();
        if (fP == 0.0f && (aVar = this.f5472j) != null) {
            fP = Math.min(aVar.h().floatValue(), Math.min(f10, f11));
        }
        float fMin = Math.min(f10, f11);
        if (fP > fMin) {
            fP = fMin;
        }
        PointF pointFH2 = this.f5468f.h();
        this.f5463a.moveTo(pointFH2.x + f10, (pointFH2.y - f11) + fP);
        this.f5463a.lineTo(pointFH2.x + f10, (pointFH2.y + f11) - fP);
        if (fP > 0.0f) {
            RectF rectF = this.f5464b;
            float f12 = pointFH2.x;
            float f13 = fP * 2.0f;
            float f14 = pointFH2.y;
            rectF.set((f12 + f10) - f13, (f14 + f11) - f13, f12 + f10, f14 + f11);
            this.f5463a.arcTo(this.f5464b, 0.0f, 90.0f, false);
        }
        this.f5463a.lineTo((pointFH2.x - f10) + fP, pointFH2.y + f11);
        if (fP > 0.0f) {
            RectF rectF2 = this.f5464b;
            float f15 = pointFH2.x;
            float f16 = pointFH2.y;
            float f17 = fP * 2.0f;
            rectF2.set(f15 - f10, (f16 + f11) - f17, (f15 - f10) + f17, f16 + f11);
            this.f5463a.arcTo(this.f5464b, 90.0f, 90.0f, false);
        }
        this.f5463a.lineTo(pointFH2.x - f10, (pointFH2.y - f11) + fP);
        if (fP > 0.0f) {
            RectF rectF3 = this.f5464b;
            float f18 = pointFH2.x;
            float f19 = pointFH2.y;
            float f20 = fP * 2.0f;
            rectF3.set(f18 - f10, f19 - f11, (f18 - f10) + f20, (f19 - f11) + f20);
            this.f5463a.arcTo(this.f5464b, 180.0f, 90.0f, false);
        }
        this.f5463a.lineTo((pointFH2.x + f10) - fP, pointFH2.y - f11);
        if (fP > 0.0f) {
            RectF rectF4 = this.f5464b;
            float f21 = pointFH2.x;
            float f22 = fP * 2.0f;
            float f23 = pointFH2.y;
            rectF4.set((f21 + f10) - f22, f23 - f11, f21 + f10, (f23 - f11) + f22);
            this.f5463a.arcTo(this.f5464b, 270.0f, 90.0f, false);
        }
        this.f5463a.close();
        this.f5471i.b(this.f5463a);
        this.f5473k = true;
        return this.f5463a;
    }

    @Override // com.airbnb.lottie.model.e
    public void h(com.airbnb.lottie.model.d dVar, int i10, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
        com.airbnb.lottie.utils.k.m(dVar, i10, list, dVar2, this);
    }
}
