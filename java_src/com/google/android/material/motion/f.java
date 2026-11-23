package com.google.android.material.motion;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.BackEventCompat;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class f extends com.google.android.material.motion.a<View> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final float f31047k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final float f31048l;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            f.this.f31035b.setTranslationY(0.0f);
            f.this.k(0.0f);
        }
    }

    public f(@NonNull View view) {
        super(view);
        Resources resources = view.getResources();
        this.f31047k = resources.getDimension(R.dimen.m3_back_progress_bottom_container_max_scale_x_distance);
        this.f31048l = resources.getDimension(R.dimen.m3_back_progress_bottom_container_max_scale_y_distance);
    }

    private Animator g() {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.f31035b, (Property<V, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.f31035b, (Property<V, Float>) View.SCALE_Y, 1.0f));
        V v10 = this.f31035b;
        if (v10 instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) v10;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(viewGroup.getChildAt(i10), (Property<View, Float>) View.SCALE_Y, 1.0f));
            }
        }
        animatorSet.setInterpolator(new FastOutSlowInInterpolator());
        return animatorSet;
    }

    public void f() {
        if (super.b() == null) {
            return;
        }
        Animator animatorG = g();
        animatorG.setDuration(this.f31038e);
        animatorG.start();
    }

    public void h(@NonNull BackEventCompat backEventCompat, @Nullable Animator.AnimatorListener animatorListener) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f31035b, (Property<V, Float>) View.TRANSLATION_Y, this.f31035b.getHeight() * this.f31035b.getScaleY());
        objectAnimatorOfFloat.setInterpolator(new FastOutSlowInInterpolator());
        objectAnimatorOfFloat.setDuration(com.google.android.material.animation.b.c(this.f31036c, this.f31037d, backEventCompat.getProgress()));
        objectAnimatorOfFloat.addListener(new a());
        if (animatorListener != null) {
            objectAnimatorOfFloat.addListener(animatorListener);
        }
        objectAnimatorOfFloat.start();
    }

    public void i(@NonNull BackEventCompat backEventCompat, @Nullable Animator.AnimatorListener animatorListener) {
        Animator animatorG = g();
        animatorG.setDuration(com.google.android.material.animation.b.c(this.f31036c, this.f31037d, backEventCompat.getProgress()));
        if (animatorListener != null) {
            animatorG.addListener(animatorListener);
        }
        animatorG.start();
    }

    public void j(@NonNull BackEventCompat backEventCompat) {
        super.d(backEventCompat);
    }

    @VisibleForTesting
    public void k(float f10) {
        float fA = a(f10);
        float width = this.f31035b.getWidth();
        float height = this.f31035b.getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return;
        }
        float f11 = this.f31047k / width;
        float f12 = this.f31048l / height;
        float fA2 = 1.0f - com.google.android.material.animation.b.a(0.0f, f11, fA);
        float fA3 = 1.0f - com.google.android.material.animation.b.a(0.0f, f12, fA);
        this.f31035b.setScaleX(fA2);
        this.f31035b.setPivotY(height);
        this.f31035b.setScaleY(fA3);
        V v10 = this.f31035b;
        if (v10 instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) v10;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                View childAt = viewGroup.getChildAt(i10);
                childAt.setPivotY(-childAt.getTop());
                childAt.setScaleY(fA3 != 0.0f ? fA2 / fA3 : 1.0f);
            }
        }
    }

    public void l(@NonNull BackEventCompat backEventCompat) {
        if (super.e(backEventCompat) == null) {
            return;
        }
        k(backEventCompat.getProgress());
    }
}
