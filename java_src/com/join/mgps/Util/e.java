package com.join.mgps.Util;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.OvershootInterpolator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public class e {
    public static Animator a(View paramView) {
        return b(paramView, 200L, null);
    }

    public static Animator b(View paramView, long paramLong, Animator.AnimatorListener paramAnimatorListener) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(paramView, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat.setDuration(paramLong);
        if (paramAnimatorListener != null) {
            objectAnimatorOfFloat.addListener(paramAnimatorListener);
        }
        objectAnimatorOfFloat.start();
        return objectAnimatorOfFloat;
    }

    public static Animator c(View paramView) {
        return d(paramView, 200L, null);
    }

    public static Animator d(View paramView, long paramLong, Animator.AnimatorListener paramAnimatorListener) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(paramView, "alpha", 1.0f, 0.0f);
        objectAnimatorOfFloat.setDuration(paramLong);
        if (paramAnimatorListener != null) {
            objectAnimatorOfFloat.addListener(paramAnimatorListener);
        }
        objectAnimatorOfFloat.start();
        return objectAnimatorOfFloat;
    }

    public static void e(View view) {
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(view.getContext(), R.anim.top_in);
        animationLoadAnimation.setFillAfter(true);
        animationLoadAnimation.setInterpolator(new FastOutSlowInInterpolator());
        animationLoadAnimation.setDuration(500L);
        view.startAnimation(animationLoadAnimation);
    }

    public static void f(View view) {
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(view.getContext(), R.anim.top_out);
        animationLoadAnimation.setFillAfter(true);
        animationLoadAnimation.setInterpolator(new FastOutSlowInInterpolator());
        animationLoadAnimation.setDuration(500L);
        view.startAnimation(animationLoadAnimation);
    }

    public static void g(View view) {
        ObjectAnimator objectAnimatorM = m(view, 5.0f);
        objectAnimatorM.setDuration(700L);
        objectAnimatorM.start();
    }

    public static void h(View view) {
        ObjectAnimator objectAnimatorJ = j(view);
        objectAnimatorJ.setDuration(700L);
        objectAnimatorJ.start();
    }

    public static Animator i(View view, int toX, int time, int delayTime, boolean isStart) {
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(view, "scrollX", toX);
        objectAnimatorOfInt.setDuration(time);
        objectAnimatorOfInt.setInterpolator(new AccelerateDecelerateInterpolator());
        objectAnimatorOfInt.setStartDelay(delayTime);
        if (isStart) {
            objectAnimatorOfInt.start();
        }
        return objectAnimatorOfInt;
    }

    public static ObjectAnimator j(View view) {
        int dimensionPixelOffset = view.getResources().getDimensionPixelOffset(R.dimen.spacing_medium);
        float f10 = -dimensionPixelOffset;
        float f11 = dimensionPixelOffset;
        return ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofKeyframe(View.TRANSLATION_X, Keyframe.ofFloat(0.0f, 0.0f), Keyframe.ofFloat(0.1f, f10), Keyframe.ofFloat(0.26f, f11), Keyframe.ofFloat(0.42f, f10), Keyframe.ofFloat(0.58f, f11), Keyframe.ofFloat(0.74f, f10), Keyframe.ofFloat(0.9f, f11), Keyframe.ofFloat(1.0f, 0.0f))).setDuration(500L);
    }

    public static void k(View view, int preColor, int currColor, int duration) {
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(view, "backgroundColor", preColor, currColor);
        objectAnimatorOfInt.setDuration(duration);
        objectAnimatorOfInt.setEvaluator(new ArgbEvaluator());
        objectAnimatorOfInt.start();
    }

    public static Animator l(View view, int translationY, int animatorTime, boolean isStartAnimator, boolean isStartInterpolator) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationY", translationY);
        if (isStartInterpolator) {
            objectAnimatorOfFloat.setInterpolator(new OvershootInterpolator());
        }
        objectAnimatorOfFloat.setDuration(animatorTime);
        if (isStartAnimator) {
            objectAnimatorOfFloat.start();
        }
        return objectAnimatorOfFloat;
    }

    public static ObjectAnimator m(View view, float shakeFactor) {
        float f10 = (-3.0f) * shakeFactor;
        float f11 = 3.0f * shakeFactor;
        return ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofKeyframe(View.SCALE_X, Keyframe.ofFloat(0.0f, 1.0f), Keyframe.ofFloat(0.1f, 0.8f), Keyframe.ofFloat(0.2f, 0.8f), Keyframe.ofFloat(0.3f, 1.1f), Keyframe.ofFloat(0.4f, 1.2f), Keyframe.ofFloat(0.5f, 1.2f), Keyframe.ofFloat(0.6f, 1.2f), Keyframe.ofFloat(0.7f, 1.2f), Keyframe.ofFloat(0.8f, 1.2f), Keyframe.ofFloat(0.9f, 1.1f), Keyframe.ofFloat(1.0f, 1.0f)), PropertyValuesHolder.ofKeyframe(View.SCALE_Y, Keyframe.ofFloat(0.0f, 1.0f), Keyframe.ofFloat(0.1f, 0.8f), Keyframe.ofFloat(0.2f, 0.8f), Keyframe.ofFloat(0.3f, 1.1f), Keyframe.ofFloat(0.4f, 1.2f), Keyframe.ofFloat(0.5f, 1.2f), Keyframe.ofFloat(0.6f, 1.2f), Keyframe.ofFloat(0.7f, 1.2f), Keyframe.ofFloat(0.8f, 1.2f), Keyframe.ofFloat(0.9f, 1.1f), Keyframe.ofFloat(1.0f, 1.0f)), PropertyValuesHolder.ofKeyframe(View.ROTATION, Keyframe.ofFloat(0.0f, 0.0f), Keyframe.ofFloat(0.1f, f10), Keyframe.ofFloat(0.2f, f10), Keyframe.ofFloat(0.3f, f11), Keyframe.ofFloat(0.4f, f10), Keyframe.ofFloat(0.5f, f11), Keyframe.ofFloat(0.6f, f10), Keyframe.ofFloat(0.7f, f11), Keyframe.ofFloat(0.8f, f10), Keyframe.ofFloat(0.9f, f11), Keyframe.ofFloat(1.0f, 0.0f))).setDuration(700L);
    }
}
