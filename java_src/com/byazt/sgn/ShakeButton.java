package com.byazt.sgn;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.animation.LinearInterpolator;
import android.widget.Button;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 211, 2162})
public class ShakeButton extends Button {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ValueAnimator f19628c;

    public ShakeButton(Context context) {
        super(context);
    }

    private void c() {
        ValueAnimator valueAnimator = this.f19628c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f19628c.removeAllListeners();
            this.f19628c.removeAllUpdateListeners();
            this.f19628c = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f19628c = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(1300L);
        this.f19628c.setInterpolator(new LinearInterpolator());
        this.f19628c.setRepeatCount(-1);
        this.f19628c.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.sgn.ShakeButton.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                float animatedFraction = valueAnimator2.getAnimatedFraction();
                ShakeButton.this.setRotation((float) (((double) ((1.0f - animatedFraction) * 6.0f)) * Math.cos(((double) (animatedFraction * 10.0f)) * 3.141592653589793d)));
            }
        });
        this.f19628c.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.sgn.ShakeButton.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                super.onAnimationEnd(animator);
                ShakeButton.this.setRotation(6.0f);
            }
        });
        this.f19628c.start();
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        c();
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f19628c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f19628c.removeAllListeners();
            this.f19628c.removeAllUpdateListeners();
            this.f19628c = null;
        }
    }
}
