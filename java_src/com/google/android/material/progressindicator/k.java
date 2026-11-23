package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;

/* JADX INFO: loaded from: classes5.dex */
final class k extends h<ObjectAnimator> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f31305i = 667;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f31306j = 333;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Property<k, Float> f31307k = new b(Float.class, "animationFraction");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ObjectAnimator f31308c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private FastOutSlowInInterpolator f31309d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.google.android.material.progressindicator.b f31310e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f31311f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f31312g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f31313h;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            k kVar = k.this;
            kVar.f31311f = (kVar.f31311f + 1) % k.this.f31310e.f31228c.length;
            k.this.f31312g = true;
        }
    }

    class b extends Property<k, Float> {
        b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(k kVar) {
            return Float.valueOf(kVar.p());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(k kVar, Float f10) {
            kVar.h(f10.floatValue());
        }
    }

    public k(@NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(3);
        this.f31311f = 1;
        this.f31310e = linearProgressIndicatorSpec;
        this.f31309d = new FastOutSlowInInterpolator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float p() {
        return this.f31313h;
    }

    private void q() {
        if (this.f31308c == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, f31307k, 0.0f, 1.0f);
            this.f31308c = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(333L);
            this.f31308c.setInterpolator(null);
            this.f31308c.setRepeatCount(-1);
            this.f31308c.addListener(new a());
        }
    }

    private void r() {
        if (!this.f31312g || this.f31296b.get(1).f31292b >= 1.0f) {
            return;
        }
        this.f31296b.get(2).f31293c = this.f31296b.get(1).f31293c;
        this.f31296b.get(1).f31293c = this.f31296b.get(0).f31293c;
        this.f31296b.get(0).f31293c = this.f31310e.f31228c[this.f31311f];
        this.f31312g = false;
    }

    private void s(int i10) {
        this.f31296b.get(0).f31291a = 0.0f;
        float fB = b(i10, 0, f31305i);
        g.a aVar = this.f31296b.get(0);
        g.a aVar2 = this.f31296b.get(1);
        float interpolation = this.f31309d.getInterpolation(fB);
        aVar2.f31291a = interpolation;
        aVar.f31292b = interpolation;
        g.a aVar3 = this.f31296b.get(1);
        g.a aVar4 = this.f31296b.get(2);
        float interpolation2 = this.f31309d.getInterpolation(fB + 0.49925038f);
        aVar4.f31291a = interpolation2;
        aVar3.f31292b = interpolation2;
        this.f31296b.get(2).f31292b = 1.0f;
    }

    @Override // com.google.android.material.progressindicator.h
    public void a() {
        ObjectAnimator objectAnimator = this.f31308c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.h
    public void c() {
        g();
    }

    @Override // com.google.android.material.progressindicator.h
    public void d(@Nullable Animatable2Compat.AnimationCallback animationCallback) {
    }

    @Override // com.google.android.material.progressindicator.h
    public void f() {
    }

    @Override // com.google.android.material.progressindicator.h
    @VisibleForTesting
    void g() {
        this.f31312g = true;
        this.f31311f = 1;
        for (g.a aVar : this.f31296b) {
            com.google.android.material.progressindicator.b bVar = this.f31310e;
            aVar.f31293c = bVar.f31228c[0];
            aVar.f31294d = bVar.f31232g / 2;
        }
    }

    @Override // com.google.android.material.progressindicator.h
    @VisibleForTesting
    void h(float f10) {
        this.f31313h = f10;
        s((int) (f10 * 333.0f));
        r();
        this.f31295a.invalidateSelf();
    }

    @Override // com.google.android.material.progressindicator.h
    public void i() {
        q();
        g();
        this.f31308c.start();
    }

    @Override // com.google.android.material.progressindicator.h
    public void j() {
    }
}
