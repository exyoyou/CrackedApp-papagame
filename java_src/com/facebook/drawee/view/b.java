package com.facebook.drawee.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import com.facebook.common.internal.h;
import com.facebook.common.internal.i;
import com.facebook.drawee.components.DraweeEventTracker;
import com.facebook.drawee.drawable.v;
import com.facebook.drawee.drawable.w;
import com.umeng.analytics.pro.f;
import javax.annotation.Nullable;
import s3.b;

/* JADX INFO: loaded from: classes9.dex */
public class b<DH extends s3.b> implements w {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private DH f27366d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f27363a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f27364b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f27365c = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private s3.a f27367e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final DraweeEventTracker f27368f = DraweeEventTracker.b();

    public b(@Nullable DH hierarchy) {
        if (hierarchy != null) {
            q(hierarchy);
        }
    }

    private void a() {
        if (this.f27363a) {
            return;
        }
        this.f27368f.c(DraweeEventTracker.Event.ON_ATTACH_CONTROLLER);
        this.f27363a = true;
        s3.a aVar = this.f27367e;
        if (aVar == null || aVar.e() == null) {
            return;
        }
        this.f27367e.b();
    }

    private void b() {
        if (this.f27364b && this.f27365c) {
            a();
        } else {
            d();
        }
    }

    public static <DH extends s3.b> b<DH> c(@Nullable DH hierarchy, Context context) {
        b<DH> bVar = new b<>(hierarchy);
        bVar.o(context);
        return bVar;
    }

    private void d() {
        if (this.f27363a) {
            this.f27368f.c(DraweeEventTracker.Event.ON_DETACH_CONTROLLER);
            this.f27363a = false;
            if (k()) {
                this.f27367e.onDetach();
            }
        }
    }

    private void r(@Nullable w visibilityCallback) {
        Object objH = h();
        if (objH instanceof v) {
            ((v) objH).s(visibilityCallback);
        }
    }

    @Nullable
    public s3.a e() {
        return this.f27367e;
    }

    protected DraweeEventTracker f() {
        return this.f27368f;
    }

    public DH g() {
        return (DH) i.i(this.f27366d);
    }

    @Nullable
    public Drawable h() {
        DH dh = this.f27366d;
        if (dh == null) {
            return null;
        }
        return dh.b();
    }

    public boolean i() {
        return this.f27366d != null;
    }

    public boolean j() {
        return this.f27364b;
    }

    public boolean k() {
        s3.a aVar = this.f27367e;
        return aVar != null && aVar.e() == this.f27366d;
    }

    public void l() {
        this.f27368f.c(DraweeEventTracker.Event.ON_HOLDER_ATTACH);
        this.f27364b = true;
        b();
    }

    public void m() {
        this.f27368f.c(DraweeEventTracker.Event.ON_HOLDER_DETACH);
        this.f27364b = false;
        b();
    }

    public boolean n(MotionEvent event) {
        if (k()) {
            return this.f27367e.onTouchEvent(event);
        }
        return false;
    }

    public void o(Context context) {
    }

    @Override // com.facebook.drawee.drawable.w
    public void onDraw() {
        if (this.f27363a) {
            return;
        }
        i3.a.m0(DraweeEventTracker.class, "%x: Draw requested for a non-attached controller %x. %s", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(System.identityHashCode(this.f27367e)), toString());
        this.f27364b = true;
        this.f27365c = true;
        b();
    }

    @Override // com.facebook.drawee.drawable.w
    public void onVisibilityChange(boolean isVisible) {
        if (this.f27365c == isVisible) {
            return;
        }
        this.f27368f.c(isVisible ? DraweeEventTracker.Event.ON_DRAWABLE_SHOW : DraweeEventTracker.Event.ON_DRAWABLE_HIDE);
        this.f27365c = isVisible;
        b();
    }

    public void p(@Nullable s3.a draweeController) {
        boolean z10 = this.f27363a;
        if (z10) {
            d();
        }
        if (k()) {
            this.f27368f.c(DraweeEventTracker.Event.ON_CLEAR_OLD_CONTROLLER);
            this.f27367e.d(null);
        }
        this.f27367e = draweeController;
        if (draweeController != null) {
            this.f27368f.c(DraweeEventTracker.Event.ON_SET_CONTROLLER);
            this.f27367e.d(this.f27366d);
        } else {
            this.f27368f.c(DraweeEventTracker.Event.ON_CLEAR_CONTROLLER);
        }
        if (z10) {
            a();
        }
    }

    public void q(DH hierarchy) {
        this.f27368f.c(DraweeEventTracker.Event.ON_SET_HIERARCHY);
        boolean zK = k();
        r(null);
        DH dh = (DH) i.i(hierarchy);
        this.f27366d = dh;
        Drawable drawableB = dh.b();
        onVisibilityChange(drawableB == null || drawableB.isVisible());
        r(this);
        if (zK) {
            this.f27367e.d(hierarchy);
        }
    }

    public String toString() {
        return h.e(this).g("controllerAttached", this.f27363a).g("holderAttached", this.f27364b).g("drawableVisible", this.f27365c).f(f.ax, this.f27368f.toString()).toString();
    }
}
