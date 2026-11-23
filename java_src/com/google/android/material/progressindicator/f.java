package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.Property;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
abstract class f extends Drawable implements Animatable2Compat {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final boolean f31271p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f31272q = 500;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final Property<f, Float> f31273r = new c(Float.class, "growFraction");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Context f31274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final com.google.android.material.progressindicator.b f31275c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ValueAnimator f31277e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ValueAnimator f31278f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f31279g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f31280h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f31281i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List<Animatable2Compat.AnimationCallback> f31282j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Animatable2Compat.AnimationCallback f31283k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f31284l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f31285m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @IntRange(from = 0, to = 255)
    private int f31287o;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    final Paint f31286n = new Paint();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    com.google.android.material.progressindicator.a f31276d = new com.google.android.material.progressindicator.a();

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            f.this.f();
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            f.super.setVisible(false, false);
            f.this.e();
        }
    }

    class c extends Property<f, Float> {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(f fVar) {
            return Float.valueOf(fVar.h());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(f fVar, Float f10) {
            fVar.n(f10.floatValue());
        }
    }

    f(@NonNull Context context, @NonNull com.google.android.material.progressindicator.b bVar) {
        this.f31274b = context;
        this.f31275c = bVar;
        setAlpha(255);
    }

    private void d(@NonNull ValueAnimator... valueAnimatorArr) {
        boolean z10 = this.f31284l;
        this.f31284l = true;
        for (ValueAnimator valueAnimator : valueAnimatorArr) {
            valueAnimator.cancel();
        }
        this.f31284l = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        Animatable2Compat.AnimationCallback animationCallback = this.f31283k;
        if (animationCallback != null) {
            animationCallback.onAnimationEnd(this);
        }
        List<Animatable2Compat.AnimationCallback> list = this.f31282j;
        if (list == null || this.f31284l) {
            return;
        }
        Iterator<Animatable2Compat.AnimationCallback> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().onAnimationEnd(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        Animatable2Compat.AnimationCallback animationCallback = this.f31283k;
        if (animationCallback != null) {
            animationCallback.onAnimationStart(this);
        }
        List<Animatable2Compat.AnimationCallback> list = this.f31282j;
        if (list == null || this.f31284l) {
            return;
        }
        Iterator<Animatable2Compat.AnimationCallback> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().onAnimationStart(this);
        }
    }

    private void g(@NonNull ValueAnimator... valueAnimatorArr) {
        boolean z10 = this.f31284l;
        this.f31284l = true;
        for (ValueAnimator valueAnimator : valueAnimatorArr) {
            valueAnimator.end();
        }
        this.f31284l = z10;
    }

    private void m() {
        if (this.f31277e == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, f31273r, 0.0f, 1.0f);
            this.f31277e = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(500L);
            this.f31277e.setInterpolator(com.google.android.material.animation.b.f29368b);
            s(this.f31277e);
        }
        if (this.f31278f == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, f31273r, 1.0f, 0.0f);
            this.f31278f = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(500L);
            this.f31278f.setInterpolator(com.google.android.material.animation.b.f29368b);
            o(this.f31278f);
        }
    }

    private void o(@NonNull ValueAnimator valueAnimator) {
        ValueAnimator valueAnimator2 = this.f31278f;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            throw new IllegalArgumentException("Cannot set hideAnimator while the current hideAnimator is running.");
        }
        this.f31278f = valueAnimator;
        valueAnimator.addListener(new b());
    }

    private void s(@NonNull ValueAnimator valueAnimator) {
        ValueAnimator valueAnimator2 = this.f31277e;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            throw new IllegalArgumentException("Cannot set showAnimator while the current showAnimator is running.");
        }
        this.f31277e = valueAnimator;
        valueAnimator.addListener(new a());
    }

    public void clearAnimationCallbacks() {
        this.f31282j.clear();
        this.f31282j = null;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f31287o;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    float h() {
        if (this.f31275c.b() || this.f31275c.a()) {
            return (this.f31280h || this.f31279g) ? this.f31281i : this.f31285m;
        }
        return 1.0f;
    }

    @NonNull
    ValueAnimator i() {
        return this.f31278f;
    }

    public boolean isRunning() {
        return l() || k();
    }

    public boolean j() {
        return t(false, false, false);
    }

    public boolean k() {
        ValueAnimator valueAnimator = this.f31278f;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.f31280h;
    }

    public boolean l() {
        ValueAnimator valueAnimator = this.f31277e;
        return (valueAnimator != null && valueAnimator.isRunning()) || this.f31279g;
    }

    void n(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10) {
        if (this.f31285m != f10) {
            this.f31285m = f10;
            invalidateSelf();
        }
    }

    void p(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        this.f31283k = animationCallback;
    }

    @VisibleForTesting
    void q(boolean z10, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10) {
        this.f31280h = z10;
        this.f31281i = f10;
    }

    @VisibleForTesting
    void r(boolean z10, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10) {
        this.f31279g = z10;
        this.f31281i = f10;
    }

    public void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        if (this.f31282j == null) {
            this.f31282j = new ArrayList();
        }
        if (this.f31282j.contains(animationCallback)) {
            return;
        }
        this.f31282j.add(animationCallback);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i10) {
        this.f31287o = i10;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f31286n.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        return t(z10, z11, true);
    }

    public void start() {
        u(true, true, false);
    }

    public void stop() {
        u(false, true, false);
    }

    public boolean t(boolean z10, boolean z11, boolean z12) {
        return u(z10, z11, z12 && this.f31276d.a(this.f31274b.getContentResolver()) > 0.0f);
    }

    boolean u(boolean z10, boolean z11, boolean z12) {
        m();
        if (!isVisible() && !z10) {
            return false;
        }
        ValueAnimator valueAnimator = z10 ? this.f31277e : this.f31278f;
        ValueAnimator valueAnimator2 = z10 ? this.f31278f : this.f31277e;
        if (!z12) {
            if (valueAnimator2.isRunning()) {
                d(valueAnimator2);
            }
            if (valueAnimator.isRunning()) {
                valueAnimator.end();
            } else {
                g(valueAnimator);
            }
            return super.setVisible(z10, false);
        }
        if (valueAnimator.isRunning()) {
            return false;
        }
        boolean z13 = !z10 || super.setVisible(z10, false);
        if (!(z10 ? this.f31275c.b() : this.f31275c.a())) {
            g(valueAnimator);
            return z13;
        }
        if (z11 || !valueAnimator.isPaused()) {
            valueAnimator.start();
        } else {
            valueAnimator.resume();
        }
        return z13;
    }

    public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        List<Animatable2Compat.AnimationCallback> list = this.f31282j;
        if (list == null || !list.contains(animationCallback)) {
            return false;
        }
        this.f31282j.remove(animationCallback);
        if (!this.f31282j.isEmpty()) {
            return true;
        }
        this.f31282j = null;
        return true;
    }
}
