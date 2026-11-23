package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.b1;
import com.airbnb.lottie.model.content.ShapeStroke;

/* JADX INFO: loaded from: classes7.dex */
public class u extends a {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final com.airbnb.lottie.model.layer.b f5497r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final String f5498s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final boolean f5499t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<Integer, Integer> f5500u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> f5501v;

    public u(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.b bVar, ShapeStroke shapeStroke) {
        super(lottieDrawable, bVar, shapeStroke.b().toPaintCap(), shapeStroke.e().toPaintJoin(), shapeStroke.g(), shapeStroke.i(), shapeStroke.j(), shapeStroke.f(), shapeStroke.d());
        this.f5497r = bVar;
        this.f5498s = shapeStroke.h();
        this.f5499t = shapeStroke.k();
        com.airbnb.lottie.animation.keyframe.a<Integer, Integer> aVarA = shapeStroke.c().a();
        this.f5500u = aVarA;
        aVarA.a(this);
        bVar.i(aVarA);
    }

    @Override // com.airbnb.lottie.animation.content.a, com.airbnb.lottie.animation.content.e
    public void c(Canvas canvas, Matrix matrix, int i10) {
        if (this.f5499t) {
            return;
        }
        this.f5362i.setColor(((com.airbnb.lottie.animation.keyframe.b) this.f5500u).p());
        com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> aVar = this.f5501v;
        if (aVar != null) {
            this.f5362i.setColorFilter(aVar.h());
        }
        super.c(canvas, matrix, i10);
    }

    @Override // com.airbnb.lottie.animation.content.a, com.airbnb.lottie.model.e
    public <T> void g(T t10, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        super.g(t10, jVar);
        if (t10 == b1.f5578b) {
            this.f5500u.n(jVar);
            return;
        }
        if (t10 == b1.K) {
            com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> aVar = this.f5501v;
            if (aVar != null) {
                this.f5497r.H(aVar);
            }
            if (jVar == null) {
                this.f5501v = null;
                return;
            }
            com.airbnb.lottie.animation.keyframe.q qVar = new com.airbnb.lottie.animation.keyframe.q(jVar);
            this.f5501v = qVar;
            qVar.a(this);
            this.f5497r.i(this.f5500u);
        }
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f5498s;
    }
}
