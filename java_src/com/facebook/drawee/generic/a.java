package com.facebook.drawee.generic;

import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import b4.i;
import com.facebook.drawee.drawable.g;
import com.facebook.drawee.drawable.h;
import com.facebook.drawee.drawable.j;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.drawable.s;
import java.util.Iterator;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class a implements s3.c {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f27315g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f27316h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f27317i = 2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f27318j = 3;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f27319k = 4;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f27320l = 5;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f27321m = 6;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Drawable f27322a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Resources f27323b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private RoundingParams f27324c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d f27325d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final g f27326e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final h f27327f;

    a(b builder) {
        ColorDrawable colorDrawable = new ColorDrawable(0);
        this.f27322a = colorDrawable;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("GenericDraweeHierarchy()");
        }
        this.f27323b = builder.getResources();
        this.f27324c = builder.r();
        h hVar = new h(colorDrawable);
        this.f27327f = hVar;
        int i10 = 1;
        int size = builder.j() != null ? builder.j().size() : 1;
        int i11 = (size == 0 ? 1 : size) + (builder.m() != null ? 1 : 0);
        Drawable[] drawableArr = new Drawable[i11 + 6];
        drawableArr[0] = g(builder.e(), null);
        drawableArr[1] = g(builder.k(), builder.l());
        drawableArr[2] = f(hVar, builder.d(), builder.c(), builder.b());
        drawableArr[3] = g(builder.n(), builder.o());
        drawableArr[4] = g(builder.p(), builder.q());
        drawableArr[5] = g(builder.h(), builder.i());
        if (i11 > 0) {
            if (builder.j() != null) {
                Iterator<Drawable> it2 = builder.j().iterator();
                i10 = 0;
                while (it2.hasNext()) {
                    drawableArr[i10 + 6] = g(it2.next(), null);
                    i10++;
                }
            }
            if (builder.m() != null) {
                drawableArr[i10 + 6] = g(builder.m(), null);
            }
        }
        g gVar = new g(drawableArr, false, 2);
        this.f27326e = gVar;
        gVar.F(builder.g());
        d dVar = new d(e.f(gVar, this.f27324c));
        this.f27325d = dVar;
        dVar.mutate();
        v();
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    private void A(int index, @Nullable Drawable drawable) {
        if (drawable == null) {
            this.f27326e.f(index, null);
        } else {
            o(index).p(e.d(drawable, this.f27324c, this.f27323b));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void O(float progress) {
        Drawable drawableB = this.f27326e.b(3);
        if (drawableB == 0) {
            return;
        }
        if (progress >= 0.999f) {
            if (drawableB instanceof Animatable) {
                ((Animatable) drawableB).stop();
            }
            j(3);
        } else {
            if (drawableB instanceof Animatable) {
                ((Animatable) drawableB).start();
            }
            h(3);
        }
        drawableB.setLevel(Math.round(progress * 10000.0f));
    }

    @Nullable
    private Drawable f(Drawable drawable, @Nullable s.c scaleType, @Nullable PointF focusPoint, @Nullable ColorFilter colorFilter) {
        drawable.setColorFilter(colorFilter);
        return e.h(drawable, scaleType, focusPoint);
    }

    @Nullable
    private Drawable g(@Nullable Drawable drawable, @Nullable s.c scaleType) {
        return e.g(e.d(drawable, this.f27324c, this.f27323b), scaleType);
    }

    private void h(int index) {
        if (index >= 0) {
            this.f27326e.k(index);
        }
    }

    private void i() {
        j(1);
        j(2);
        j(3);
        j(4);
        j(5);
    }

    private void j(int index) {
        if (index >= 0) {
            this.f27326e.n(index);
        }
    }

    private com.facebook.drawee.drawable.d o(int index) {
        com.facebook.drawee.drawable.d dVarC = this.f27326e.c(index);
        if (dVarC.m() instanceof j) {
            dVarC = (j) dVarC.m();
        }
        return dVarC.m() instanceof r ? (r) dVarC.m() : dVarC;
    }

    private r q(int index) {
        com.facebook.drawee.drawable.d dVarO = o(index);
        return dVarO instanceof r ? (r) dVarO : e.l(dVarO, s.c.f27284a);
    }

    private boolean t(int index) {
        return o(index) instanceof r;
    }

    private void u() {
        this.f27327f.p(this.f27322a);
    }

    private void v() {
        g gVar = this.f27326e;
        if (gVar != null) {
            gVar.g();
            this.f27326e.j();
            i();
            h(1);
            this.f27326e.r();
            this.f27326e.i();
        }
    }

    public void B(int durationMs) {
        this.f27326e.F(durationMs);
    }

    public void C(int resourceId) {
        E(this.f27323b.getDrawable(resourceId));
    }

    public void D(int resourceId, s.c scaleType) {
        F(this.f27323b.getDrawable(resourceId), scaleType);
    }

    public void E(@Nullable Drawable drawable) {
        A(5, drawable);
    }

    public void F(Drawable drawable, s.c scaleType) {
        A(5, drawable);
        q(5).F(scaleType);
    }

    public void G(i onFadeListener) {
        this.f27326e.E(onFadeListener);
    }

    public void H(int index, @Nullable Drawable drawable) {
        com.facebook.common.internal.i.e(index >= 0 && index + 6 < this.f27326e.d(), "The given index does not correspond to an overlay image.");
        A(index + 6, drawable);
    }

    public void I(@Nullable Drawable drawable) {
        H(0, drawable);
    }

    public void J(int resourceId) {
        L(this.f27323b.getDrawable(resourceId));
    }

    public void K(int resourceId, s.c scaleType) {
        M(this.f27323b.getDrawable(resourceId), scaleType);
    }

    public void L(@Nullable Drawable drawable) {
        A(1, drawable);
    }

    public void M(Drawable drawable, s.c scaleType) {
        A(1, drawable);
        q(1).F(scaleType);
    }

    public void N(PointF focusPoint) {
        com.facebook.common.internal.i.i(focusPoint);
        q(1).E(focusPoint);
    }

    public void P(int resourceId) {
        R(this.f27323b.getDrawable(resourceId));
    }

    public void Q(int resourceId, s.c scaleType) {
        S(this.f27323b.getDrawable(resourceId), scaleType);
    }

    public void R(@Nullable Drawable drawable) {
        A(3, drawable);
    }

    public void S(Drawable drawable, s.c scaleType) {
        A(3, drawable);
        q(3).F(scaleType);
    }

    public void T(int resourceId) {
        V(this.f27323b.getDrawable(resourceId));
    }

    public void U(int resourceId, s.c scaleType) {
        W(this.f27323b.getDrawable(resourceId), scaleType);
    }

    public void V(@Nullable Drawable drawable) {
        A(4, drawable);
    }

    public void W(Drawable drawable, s.c scaleType) {
        A(4, drawable);
        q(4).F(scaleType);
    }

    public void X(@Nullable RoundingParams roundingParams) {
        this.f27324c = roundingParams;
        e.k(this.f27325d, roundingParams);
        for (int i10 = 0; i10 < this.f27326e.d(); i10++) {
            e.j(o(i10), this.f27324c, this.f27323b);
        }
    }

    @Override // s3.c
    public void a(Throwable throwable) {
        this.f27326e.g();
        i();
        if (this.f27326e.b(4) != null) {
            h(4);
        } else {
            h(1);
        }
        this.f27326e.i();
    }

    @Override // s3.b
    public Drawable b() {
        return this.f27325d;
    }

    @Override // s3.c
    public void c(@Nullable Drawable drawable) {
        this.f27325d.A(drawable);
    }

    @Override // s3.c
    public void d(float progress, boolean immediate) {
        if (this.f27326e.b(3) == null) {
            return;
        }
        this.f27326e.g();
        O(progress);
        if (immediate) {
            this.f27326e.r();
        }
        this.f27326e.i();
    }

    @Override // s3.c
    public void e(Drawable drawable, float progress, boolean immediate) {
        Drawable drawableD = e.d(drawable, this.f27324c, this.f27323b);
        drawableD.mutate();
        this.f27327f.p(drawableD);
        this.f27326e.g();
        i();
        h(2);
        O(progress);
        if (immediate) {
            this.f27326e.r();
        }
        this.f27326e.i();
    }

    @Override // s3.b
    public Rect getBounds() {
        return this.f27325d.getBounds();
    }

    public void k(RectF outBounds) {
        this.f27327f.x(outBounds);
    }

    @Nullable
    public PointF l() {
        if (t(2)) {
            return q(2).C();
        }
        return null;
    }

    @Nullable
    public s.c m() {
        if (t(2)) {
            return q(2).D();
        }
        return null;
    }

    public int n() {
        return this.f27326e.t();
    }

    @Nullable
    public RoundingParams p() {
        return this.f27324c;
    }

    @VisibleForTesting
    public boolean r() {
        return this.f27327f.m() != this.f27322a;
    }

    @Override // s3.c
    public void reset() {
        u();
        v();
    }

    public boolean s() {
        return this.f27326e.b(1) != null;
    }

    @Override // s3.c
    public void setFailure(Throwable throwable) {
        this.f27326e.g();
        i();
        if (this.f27326e.b(5) != null) {
            h(5);
        } else {
            h(1);
        }
        this.f27326e.i();
    }

    public void w(ColorFilter colorfilter) {
        this.f27327f.setColorFilter(colorfilter);
    }

    public void x(PointF focusPoint) {
        com.facebook.common.internal.i.i(focusPoint);
        q(2).E(focusPoint);
    }

    public void y(s.c scaleType) {
        com.facebook.common.internal.i.i(scaleType);
        q(2).F(scaleType);
    }

    public void z(@Nullable Drawable drawable) {
        A(0, drawable);
    }
}
