package com.facebook.fresco.animation.drawable.animator;

import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@TargetApi(11)
@Nullsafe(Nullsafe.Mode.LOCAL)
public class a {

    /* JADX INFO: renamed from: com.facebook.fresco.animation.drawable.animator.a$a, reason: collision with other inner class name */
    static class C0569a implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.facebook.fresco.animation.drawable.a f27471b;

        C0569a(final com.facebook.fresco.animation.drawable.a val$drawable) {
            this.f27471b = val$drawable;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        @TargetApi(11)
        public void onAnimationUpdate(ValueAnimator animation) {
            this.f27471b.setLevel(((Integer) animation.getAnimatedValue()).intValue());
        }
    }

    private a() {
    }

    public static ValueAnimator.AnimatorUpdateListener a(final com.facebook.fresco.animation.drawable.a drawable) {
        return new C0569a(drawable);
    }

    public static ValueAnimator b(com.facebook.fresco.animation.drawable.a animatedDrawable) {
        int iG = animatedDrawable.g();
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(0, (int) animatedDrawable.h());
        valueAnimator.setDuration(animatedDrawable.h());
        if (iG == 0) {
            iG = -1;
        }
        valueAnimator.setRepeatCount(iG);
        valueAnimator.setRepeatMode(1);
        valueAnimator.setInterpolator(null);
        valueAnimator.addUpdateListener(a(animatedDrawable));
        return valueAnimator;
    }

    @Nullable
    public static ValueAnimator c(com.facebook.fresco.animation.drawable.a animatedDrawable, int maxDurationMs) {
        ValueAnimator valueAnimatorB = b(animatedDrawable);
        if (valueAnimatorB == null) {
            return null;
        }
        valueAnimatorB.setRepeatCount((int) Math.max(((long) maxDurationMs) / animatedDrawable.h(), 1L));
        return valueAnimatorB;
    }
}
