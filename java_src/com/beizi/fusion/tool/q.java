package com.beizi.fusion.tool;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;

/* JADX INFO: loaded from: classes6.dex */
public class q {
    public static void a(View view, int i10, int i11, int i12, int i13, int i14, int i15) {
        int i16;
        int i17;
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        ObjectAnimator objectAnimatorOfFloat3;
        ObjectAnimator objectAnimator;
        if (view == null) {
            return;
        }
        try {
            i16 = view.getContext().getResources().getDisplayMetrics().widthPixels;
            try {
                i17 = view.getContext().getResources().getDisplayMetrics().heightPixels;
            } catch (Exception e10) {
                e = e10;
                e.printStackTrace();
                i17 = 0;
            }
        } catch (Exception e11) {
            e = e11;
            i16 = 0;
        }
        if (i14 == 0) {
            view.setTranslationY(-view.getHeight());
            float f10 = i12;
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationX", f10, f10);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "translationY", -i11, i13);
        } else {
            if (i14 != 1) {
                if (i14 == 2) {
                    float f11 = i16;
                    view.setTranslationX(f11);
                    objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationX", f11, i12);
                    float f12 = i13;
                    objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "translationY", f12, f12);
                } else if (i14 != 3) {
                    objectAnimator = null;
                    objectAnimatorOfFloat3 = null;
                } else {
                    float f13 = i17;
                    view.setTranslationY(f13);
                    float f14 = i12;
                    ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(view, "translationX", f14, f14);
                    objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view, "translationY", f13, i13);
                    objectAnimator = objectAnimatorOfFloat4;
                }
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(objectAnimator, objectAnimatorOfFloat3);
                animatorSet.setDuration(i15);
                animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
                animatorSet.start();
            }
            float f15 = -i10;
            view.setTranslationX(f15);
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationX", f15, i12);
            float f16 = i13;
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "translationY", f16, f16);
        }
        ObjectAnimator objectAnimator2 = objectAnimatorOfFloat;
        objectAnimatorOfFloat3 = objectAnimatorOfFloat2;
        objectAnimator = objectAnimator2;
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playTogether(objectAnimator, objectAnimatorOfFloat3);
        animatorSet2.setDuration(i15);
        animatorSet2.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet2.start();
    }

    public static void a(final View view, int i10, int i11, int i12, int i13) {
        TranslateAnimation translateAnimation;
        if (view == null) {
            return;
        }
        try {
            if (view.getVisibility() == 8) {
                return;
            }
            if (i12 == 0) {
                translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 1, -1.0f);
            } else if (i12 == 1) {
                translateAnimation = new TranslateAnimation(1, 0.0f, 1, -1.0f, 1, 0.0f, 1, 0.0f);
            } else if (i12 != 2) {
                translateAnimation = i12 != 3 ? null : new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 0, i11);
            } else {
                translateAnimation = new TranslateAnimation(1, 0.0f, 0, i10, 1, 0.0f, 1, 0.0f);
            }
            translateAnimation.setDuration(i13);
            translateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.beizi.fusion.tool.q.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    try {
                        View view2 = view;
                        if (view2 != null) {
                            view2.setVisibility(8);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }
            });
            view.startAnimation(translateAnimation);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
