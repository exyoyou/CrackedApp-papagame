package com.sigmob.sdk.nativead;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;

/* JADX INFO: loaded from: classes3.dex */
public class af {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ViewGroup f81374a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ae f81375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ae f81376c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f81377d;

    public af(ViewGroup targetView, ae fromViewInfo, ae toViewInfo, long duration) {
        this.f81374a = targetView;
        this.f81375b = fromViewInfo;
        this.f81376c = toViewInfo;
        this.f81377d = duration;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(ValueAnimator valueAnimator) {
        ViewGroup.LayoutParams layoutParams = this.f81374a.getLayoutParams();
        layoutParams.width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.f81374a.setLayoutParams(layoutParams);
    }

    public void a() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f81374a, "x", this.f81375b.a(), this.f81376c.a());
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f81374a, "y", this.f81375b.b(), this.f81376c.b());
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(this.f81375b.c(), this.f81376c.c());
        ValueAnimator valueAnimatorOfInt2 = ValueAnimator.ofInt(this.f81375b.d(), this.f81376c.d());
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.nativead.e0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f81415b.b(valueAnimator);
            }
        });
        valueAnimatorOfInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.nativead.f0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f81419b.a(valueAnimator);
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, valueAnimatorOfInt, valueAnimatorOfInt2);
        animatorSet.setDuration(this.f81377d);
        animatorSet.setInterpolator(new DecelerateInterpolator());
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        ViewGroup.LayoutParams layoutParams = this.f81374a.getLayoutParams();
        layoutParams.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.f81374a.setLayoutParams(layoutParams);
    }
}
