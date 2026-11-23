package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;

/* JADX INFO: loaded from: classes5.dex */
final class d extends h<ObjectAnimator> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f31239k = 4;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f31240l = 5400;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f31241m = 667;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f31242n = 667;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f31243o = 333;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f31244p = 333;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final int f31248t = -20;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f31249u = 250;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f31250v = 1520;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ObjectAnimator f31253c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ObjectAnimator f31254d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final FastOutSlowInInterpolator f31255e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.google.android.material.progressindicator.b f31256f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f31257g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f31258h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f31259i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    Animatable2Compat.AnimationCallback f31260j;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int[] f31245q = {0, 1350, 2700, 4050};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int[] f31246r = {667, 2017, 3367, 4717};

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int[] f31247s = {1000, 2350, 3700, 5050};

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final Property<d, Float> f31251w = new c(Float.class, "animationFraction");

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final Property<d, Float> f31252x = new C0605d(Float.class, "completeEndFraction");

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            d dVar = d.this;
            dVar.f31257g = (dVar.f31257g + 4) % d.this.f31256f.f31228c.length;
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            d.this.a();
            d dVar = d.this;
            Animatable2Compat.AnimationCallback animationCallback = dVar.f31260j;
            if (animationCallback != null) {
                animationCallback.onAnimationEnd(dVar.f31295a);
            }
        }
    }

    class c extends Property<d, Float> {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(d dVar) {
            return Float.valueOf(dVar.q());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(d dVar, Float f10) {
            dVar.h(f10.floatValue());
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.progressindicator.d$d, reason: collision with other inner class name */
    class C0605d extends Property<d, Float> {
        C0605d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(d dVar) {
            return Float.valueOf(dVar.r());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(d dVar, Float f10) {
            dVar.u(f10.floatValue());
        }
    }

    public d(@NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(1);
        this.f31257g = 0;
        this.f31260j = null;
        this.f31256f = circularProgressIndicatorSpec;
        this.f31255e = new FastOutSlowInInterpolator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float q() {
        return this.f31258h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float r() {
        return this.f31259i;
    }

    private void s() {
        if (this.f31253c == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, f31251w, 0.0f, 1.0f);
            this.f31253c = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(5400L);
            this.f31253c.setInterpolator(null);
            this.f31253c.setRepeatCount(-1);
            this.f31253c.addListener(new a());
        }
        if (this.f31254d == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, f31252x, 0.0f, 1.0f);
            this.f31254d = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(333L);
            this.f31254d.setInterpolator(this.f31255e);
            this.f31254d.addListener(new b());
        }
    }

    private void t(int i10) {
        for (int i11 = 0; i11 < 4; i11++) {
            float fB = b(i10, f31247s[i11], 333);
            if (fB >= 0.0f && fB <= 1.0f) {
                int i12 = i11 + this.f31257g;
                int[] iArr = this.f31256f.f31228c;
                int length = i12 % iArr.length;
                int length2 = (length + 1) % iArr.length;
                int i13 = iArr[length];
                int i14 = iArr[length2];
                float interpolation = this.f31255e.getInterpolation(fB);
                this.f31296b.get(0).f31293c = com.google.android.material.animation.d.b().evaluate(interpolation, Integer.valueOf(i13), Integer.valueOf(i14)).intValue();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(float f10) {
        this.f31259i = f10;
    }

    private void v(int i10) {
        g.a aVar = this.f31296b.get(0);
        float f10 = this.f31258h;
        aVar.f31291a = (f10 * 1520.0f) - 20.0f;
        aVar.f31292b = f10 * 1520.0f;
        for (int i11 = 0; i11 < 4; i11++) {
            aVar.f31292b += this.f31255e.getInterpolation(b(i10, f31245q[i11], 667)) * 250.0f;
            aVar.f31291a += this.f31255e.getInterpolation(b(i10, f31246r[i11], 667)) * 250.0f;
        }
        float f11 = aVar.f31291a;
        float f12 = aVar.f31292b;
        aVar.f31291a = (f11 + ((f12 - f11) * this.f31259i)) / 360.0f;
        aVar.f31292b = f12 / 360.0f;
    }

    @Override // com.google.android.material.progressindicator.h
    void a() {
        ObjectAnimator objectAnimator = this.f31253c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.h
    public void c() {
        g();
    }

    @Override // com.google.android.material.progressindicator.h
    public void d(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        this.f31260j = animationCallback;
    }

    @Override // com.google.android.material.progressindicator.h
    void f() {
        ObjectAnimator objectAnimator = this.f31254d;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        if (this.f31295a.isVisible()) {
            this.f31254d.start();
        } else {
            a();
        }
    }

    @Override // com.google.android.material.progressindicator.h
    @VisibleForTesting
    void g() {
        this.f31257g = 0;
        this.f31296b.get(0).f31293c = this.f31256f.f31228c[0];
        this.f31259i = 0.0f;
    }

    @Override // com.google.android.material.progressindicator.h
    @VisibleForTesting
    void h(float f10) {
        this.f31258h = f10;
        int i10 = (int) (f10 * 5400.0f);
        v(i10);
        t(i10);
        this.f31295a.invalidateSelf();
    }

    @Override // com.google.android.material.progressindicator.h
    void i() {
        s();
        g();
        this.f31253c.start();
    }

    @Override // com.google.android.material.progressindicator.h
    public void j() {
        this.f31260j = null;
    }
}
