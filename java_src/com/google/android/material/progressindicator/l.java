package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.Property;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.math.MathUtils;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import androidx.vectordrawable.graphics.drawable.AnimationUtilsCompat;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.android.material.R;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
final class l extends h<ObjectAnimator> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f31315k = 1800;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int[] f31316l = {MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_CHECK_ENHANCE, MediaPlayer.MEDIA_PLAYER_OPTION_LATENCYTIME, MediaPlayer.MEDIA_PLAYER_OPTION_SUB_FIRST_LOAD_TIME, 750};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int[] f31317m = {1267, 1000, 333, 0};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final Property<l, Float> f31318n = new c(Float.class, "animationFraction");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ObjectAnimator f31319c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ObjectAnimator f31320d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Interpolator[] f31321e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.google.android.material.progressindicator.b f31322f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f31323g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f31324h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f31325i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    Animatable2Compat.AnimationCallback f31326j;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            super.onAnimationRepeat(animator);
            l lVar = l.this;
            lVar.f31323g = (lVar.f31323g + 1) % l.this.f31322f.f31228c.length;
            l.this.f31324h = true;
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            l.this.a();
            l lVar = l.this;
            Animatable2Compat.AnimationCallback animationCallback = lVar.f31326j;
            if (animationCallback != null) {
                animationCallback.onAnimationEnd(lVar.f31295a);
            }
        }
    }

    class c extends Property<l, Float> {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(l lVar) {
            return Float.valueOf(lVar.p());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(l lVar, Float f10) {
            lVar.h(f10.floatValue());
        }
    }

    public l(@NonNull Context context, @NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(2);
        this.f31323g = 0;
        this.f31326j = null;
        this.f31322f = linearProgressIndicatorSpec;
        this.f31321e = new Interpolator[]{AnimationUtilsCompat.loadInterpolator(context, R.anim.linear_indeterminate_line1_head_interpolator), AnimationUtilsCompat.loadInterpolator(context, R.anim.linear_indeterminate_line1_tail_interpolator), AnimationUtilsCompat.loadInterpolator(context, R.anim.linear_indeterminate_line2_head_interpolator), AnimationUtilsCompat.loadInterpolator(context, R.anim.linear_indeterminate_line2_tail_interpolator)};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float p() {
        return this.f31325i;
    }

    private void q() {
        if (this.f31319c == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, f31318n, 0.0f, 1.0f);
            this.f31319c = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(1800L);
            this.f31319c.setInterpolator(null);
            this.f31319c.setRepeatCount(-1);
            this.f31319c.addListener(new a());
        }
        if (this.f31320d == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, f31318n, 1.0f);
            this.f31320d = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(1800L);
            this.f31320d.setInterpolator(null);
            this.f31320d.addListener(new b());
        }
    }

    private void r() {
        if (this.f31324h) {
            Iterator<g.a> it2 = this.f31296b.iterator();
            while (it2.hasNext()) {
                it2.next().f31293c = this.f31322f.f31228c[this.f31323g];
            }
            this.f31324h = false;
        }
    }

    private void s(int i10) {
        for (int i11 = 0; i11 < this.f31296b.size(); i11++) {
            g.a aVar = this.f31296b.get(i11);
            int[] iArr = f31317m;
            int i12 = i11 * 2;
            int i13 = iArr[i12];
            int[] iArr2 = f31316l;
            aVar.f31291a = MathUtils.clamp(this.f31321e[i12].getInterpolation(b(i10, i13, iArr2[i12])), 0.0f, 1.0f);
            int i14 = i12 + 1;
            aVar.f31292b = MathUtils.clamp(this.f31321e[i14].getInterpolation(b(i10, iArr[i14], iArr2[i14])), 0.0f, 1.0f);
        }
    }

    @Override // com.google.android.material.progressindicator.h
    public void a() {
        ObjectAnimator objectAnimator = this.f31319c;
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
        this.f31326j = animationCallback;
    }

    @Override // com.google.android.material.progressindicator.h
    public void f() {
        ObjectAnimator objectAnimator = this.f31320d;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        a();
        if (this.f31295a.isVisible()) {
            this.f31320d.setFloatValues(this.f31325i, 1.0f);
            this.f31320d.setDuration((long) ((1.0f - this.f31325i) * 1800.0f));
            this.f31320d.start();
        }
    }

    @Override // com.google.android.material.progressindicator.h
    @VisibleForTesting
    void g() {
        this.f31323g = 0;
        Iterator<g.a> it2 = this.f31296b.iterator();
        while (it2.hasNext()) {
            it2.next().f31293c = this.f31322f.f31228c[0];
        }
    }

    @Override // com.google.android.material.progressindicator.h
    @VisibleForTesting
    void h(float f10) {
        this.f31325i = f10;
        s((int) (f10 * 1800.0f));
        r();
        this.f31295a.invalidateSelf();
    }

    @Override // com.google.android.material.progressindicator.h
    public void i() {
        q();
        g();
        this.f31319c.start();
    }

    @Override // com.google.android.material.progressindicator.h
    public void j() {
        this.f31326j = null;
    }
}
