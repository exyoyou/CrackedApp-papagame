package com.airbnb.lottie.utils;

import android.view.Choreographer;
import androidx.annotation.FloatRange;
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;

/* JADX INFO: loaded from: classes7.dex */
public class i extends c implements Choreographer.FrameCallback {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private com.airbnb.lottie.j f6113m;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f6105e = 1.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f6106f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f6107g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f6108h = 0.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f6109i = 0.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f6110j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f6111k = -2.1474836E9f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f6112l = 2.1474836E9f;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @VisibleForTesting
    protected boolean f6114n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f6115o = false;

    private void G() {
        if (this.f6113m == null) {
            return;
        }
        float f10 = this.f6109i;
        if (f10 < this.f6111k || f10 > this.f6112l) {
            throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.f6111k), Float.valueOf(this.f6112l), Float.valueOf(this.f6109i)));
        }
    }

    private float m() {
        com.airbnb.lottie.j jVar = this.f6113m;
        if (jVar == null) {
            return Float.MAX_VALUE;
        }
        return (1.0E9f / jVar.i()) / Math.abs(this.f6105e);
    }

    private boolean r() {
        return q() < 0.0f;
    }

    public void A(float f10) {
        if (this.f6108h == f10) {
            return;
        }
        float fC = k.c(f10, p(), o());
        this.f6108h = fC;
        if (this.f6115o) {
            fC = (float) Math.floor(fC);
        }
        this.f6109i = fC;
        this.f6107g = 0L;
        h();
    }

    public void B(float f10) {
        C(this.f6111k, f10);
    }

    public void C(float f10, float f11) {
        if (f10 > f11) {
            throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", Float.valueOf(f10), Float.valueOf(f11)));
        }
        com.airbnb.lottie.j jVar = this.f6113m;
        float fR = jVar == null ? -3.4028235E38f : jVar.r();
        com.airbnb.lottie.j jVar2 = this.f6113m;
        float f12 = jVar2 == null ? Float.MAX_VALUE : jVar2.f();
        float fC = k.c(f10, fR, f12);
        float fC2 = k.c(f11, fR, f12);
        if (fC == this.f6111k && fC2 == this.f6112l) {
            return;
        }
        this.f6111k = fC;
        this.f6112l = fC2;
        A((int) k.c(this.f6109i, fC, fC2));
    }

    public void D(int i10) {
        C(i10, (int) this.f6112l);
    }

    public void E(float f10) {
        this.f6105e = f10;
    }

    public void F(boolean z10) {
        this.f6115o = z10;
    }

    @Override // com.airbnb.lottie.utils.c
    void a() {
        super.a();
        b(r());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    @MainThread
    public void cancel() {
        a();
        v();
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j10) {
        u();
        if (this.f6113m == null || !isRunning()) {
            return;
        }
        com.airbnb.lottie.e.b("LottieValueAnimator#doFrame");
        long j11 = this.f6107g;
        float fM = (j11 != 0 ? j10 - j11 : 0L) / m();
        float f10 = this.f6108h;
        if (r()) {
            fM = -fM;
        }
        float f11 = f10 + fM;
        boolean z10 = !k.e(f11, p(), o());
        float f12 = this.f6108h;
        float fC = k.c(f11, p(), o());
        this.f6108h = fC;
        if (this.f6115o) {
            fC = (float) Math.floor(fC);
        }
        this.f6109i = fC;
        this.f6107g = j10;
        if (!this.f6115o || this.f6108h != f12) {
            h();
        }
        if (z10) {
            if (getRepeatCount() == -1 || this.f6110j < getRepeatCount()) {
                e();
                this.f6110j++;
                if (getRepeatMode() == 2) {
                    this.f6106f = !this.f6106f;
                    y();
                } else {
                    float fO = r() ? o() : p();
                    this.f6108h = fO;
                    this.f6109i = fO;
                }
                this.f6107g = j10;
            } else {
                float fP = this.f6105e < 0.0f ? p() : o();
                this.f6108h = fP;
                this.f6109i = fP;
                v();
                b(r());
            }
        }
        G();
        com.airbnb.lottie.e.c("LottieValueAnimator#doFrame");
    }

    @Override // android.animation.ValueAnimator
    @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
    public float getAnimatedFraction() {
        float fP;
        float fO;
        float fP2;
        if (this.f6113m == null) {
            return 0.0f;
        }
        if (r()) {
            fP = o() - this.f6109i;
            fO = o();
            fP2 = p();
        } else {
            fP = this.f6109i - p();
            fO = o();
            fP2 = p();
        }
        return fP / (fO - fP2);
    }

    @Override // android.animation.ValueAnimator
    public Object getAnimatedValue() {
        return Float.valueOf(k());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getDuration() {
        com.airbnb.lottie.j jVar = this.f6113m;
        if (jVar == null) {
            return 0L;
        }
        return (long) jVar.d();
    }

    public void i() {
        this.f6113m = null;
        this.f6111k = -2.1474836E9f;
        this.f6112l = 2.1474836E9f;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public boolean isRunning() {
        return this.f6114n;
    }

    @MainThread
    public void j() {
        v();
        b(r());
    }

    @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
    public float k() {
        com.airbnb.lottie.j jVar = this.f6113m;
        if (jVar == null) {
            return 0.0f;
        }
        return (this.f6109i - jVar.r()) / (this.f6113m.f() - this.f6113m.r());
    }

    public float l() {
        return this.f6109i;
    }

    public float o() {
        com.airbnb.lottie.j jVar = this.f6113m;
        if (jVar == null) {
            return 0.0f;
        }
        float f10 = this.f6112l;
        return f10 == 2.1474836E9f ? jVar.f() : f10;
    }

    public float p() {
        com.airbnb.lottie.j jVar = this.f6113m;
        if (jVar == null) {
            return 0.0f;
        }
        float f10 = this.f6111k;
        return f10 == -2.1474836E9f ? jVar.r() : f10;
    }

    public float q() {
        return this.f6105e;
    }

    @MainThread
    public void s() {
        v();
        d();
    }

    @Override // android.animation.ValueAnimator
    public void setRepeatMode(int i10) {
        super.setRepeatMode(i10);
        if (i10 == 2 || !this.f6106f) {
            return;
        }
        this.f6106f = false;
        y();
    }

    @MainThread
    public void t() {
        this.f6114n = true;
        g(r());
        A((int) (r() ? o() : p()));
        this.f6107g = 0L;
        this.f6110j = 0;
        u();
    }

    protected void u() {
        if (isRunning()) {
            w(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    @MainThread
    protected void v() {
        w(true);
    }

    @MainThread
    protected void w(boolean z10) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z10) {
            this.f6114n = false;
        }
    }

    @MainThread
    public void x() {
        this.f6114n = true;
        u();
        this.f6107g = 0L;
        if (r() && l() == p()) {
            A(o());
        } else if (!r() && l() == o()) {
            A(p());
        }
        f();
    }

    public void y() {
        E(-q());
    }

    public void z(com.airbnb.lottie.j jVar) {
        boolean z10 = this.f6113m == null;
        this.f6113m = jVar;
        if (z10) {
            C(Math.max(this.f6111k, jVar.r()), Math.min(this.f6112l, jVar.f()));
        } else {
            C((int) jVar.r(), (int) jVar.f());
        }
        float f10 = this.f6109i;
        this.f6109i = 0.0f;
        this.f6108h = 0.0f;
        A((int) f10);
        h();
    }
}
