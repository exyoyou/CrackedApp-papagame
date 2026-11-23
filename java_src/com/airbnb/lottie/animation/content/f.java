package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.b1;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class f implements n, com.airbnb.lottie.animation.keyframe.a.b, k {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final float f5385i = 0.55228f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LottieDrawable f5388c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, PointF> f5389d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, PointF> f5390e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.airbnb.lottie.model.content.b f5391f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f5393h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f5386a = new Path();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b f5392g = new b();

    public f(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.b bVar, com.airbnb.lottie.model.content.b bVar2) {
        this.f5387b = bVar2.b();
        this.f5388c = lottieDrawable;
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> aVarA = bVar2.d().a();
        this.f5389d = aVarA;
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> aVarA2 = bVar2.c().a();
        this.f5390e = aVarA2;
        this.f5391f = bVar2;
        bVar.i(aVarA);
        bVar.i(aVarA2);
        aVarA.a(this);
        aVarA2.a(this);
    }

    private void b() {
        this.f5393h = false;
        this.f5388c.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.b
    public void d() {
        b();
    }

    @Override // com.airbnb.lottie.animation.content.c
    public void e(List<c> list, List<c> list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            c cVar = list.get(i10);
            if (cVar instanceof v) {
                v vVar = (v) cVar;
                if (vVar.getType() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f5392g.a(vVar);
                    vVar.b(this);
                }
            }
        }
    }

    @Override // com.airbnb.lottie.model.e
    public <T> void g(T t10, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        if (t10 == b1.f5587k) {
            this.f5389d.n(jVar);
        } else if (t10 == b1.f5590n) {
            this.f5390e.n(jVar);
        }
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f5387b;
    }

    @Override // com.airbnb.lottie.animation.content.n
    public Path getPath() {
        if (this.f5393h) {
            return this.f5386a;
        }
        this.f5386a.reset();
        if (this.f5391f.e()) {
            this.f5393h = true;
            return this.f5386a;
        }
        PointF pointFH = this.f5389d.h();
        float f10 = pointFH.x / 2.0f;
        float f11 = pointFH.y / 2.0f;
        float f12 = f10 * f5385i;
        float f13 = f5385i * f11;
        this.f5386a.reset();
        if (this.f5391f.f()) {
            float f14 = -f11;
            this.f5386a.moveTo(0.0f, f14);
            float f15 = 0.0f - f12;
            float f16 = -f10;
            float f17 = 0.0f - f13;
            this.f5386a.cubicTo(f15, f14, f16, f17, f16, 0.0f);
            float f18 = f13 + 0.0f;
            this.f5386a.cubicTo(f16, f18, f15, f11, 0.0f, f11);
            float f19 = f12 + 0.0f;
            this.f5386a.cubicTo(f19, f11, f10, f18, f10, 0.0f);
            this.f5386a.cubicTo(f10, f17, f19, f14, 0.0f, f14);
        } else {
            float f20 = -f11;
            this.f5386a.moveTo(0.0f, f20);
            float f21 = f12 + 0.0f;
            float f22 = 0.0f - f13;
            this.f5386a.cubicTo(f21, f20, f10, f22, f10, 0.0f);
            float f23 = f13 + 0.0f;
            this.f5386a.cubicTo(f10, f23, f21, f11, 0.0f, f11);
            float f24 = 0.0f - f12;
            float f25 = -f10;
            this.f5386a.cubicTo(f24, f11, f25, f23, f25, 0.0f);
            this.f5386a.cubicTo(f25, f22, f24, f20, 0.0f, f20);
        }
        PointF pointFH2 = this.f5390e.h();
        this.f5386a.offset(pointFH2.x, pointFH2.y);
        this.f5386a.close();
        this.f5392g.b(this.f5386a);
        this.f5393h = true;
        return this.f5386a;
    }

    @Override // com.airbnb.lottie.model.e
    public void h(com.airbnb.lottie.model.d dVar, int i10, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
        com.airbnb.lottie.utils.k.m(dVar, i10, list, dVar2, this);
    }
}
