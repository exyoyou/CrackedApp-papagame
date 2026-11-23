package com.byazt.cc;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.byazt.aas.pf;
import com.byazt.nr.m;
import com.byazt.nr.z;
import com.xinzhu.overmind.utils.l;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, l.f90098b, 1748})
public class SplashClickBarArrow extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public FrameLayout f12244a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ImageView f12245c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f12246da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public RelativeLayout f12247i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ImageView f12248n;
    public int sl;
    public ImageView sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public AnimatorSet f12249t;
    public RelativeLayout tt;
    public ImageView uj;
    public ImageView ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public SplashDiffuseView f12250x;

    @com.byazt.zqa.c(c = {0, 1, l.f90098b, 1709})
    private static class c implements Interpolator {
        private c() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            return f10 <= 0.38f ? f10 * 2.631579f : (f10 * (-1.6129032f)) + 1.6129032f;
        }
    }

    public SplashClickBarArrow(Context context) {
        super(context);
        this.f12246da = true;
        this.f12249t = new AnimatorSet();
        tt(context);
    }

    public Animator getAnimator() {
        return this.f12249t;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            AnimatorSet animatorSet = this.f12249t;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
        } catch (Exception e10) {
            m.ve(e10.getMessage());
        }
    }

    private void tt(Context context) {
        View viewC = c(getContext());
        if (viewC == null) {
            return;
        }
        addView(viewC);
        SplashDiffuseView splashDiffuseView = new SplashDiffuseView(getContext());
        this.f12250x = splashDiffuseView;
        this.f12244a.addView(splashDiffuseView, 0);
        ViewGroup.LayoutParams layoutParams = this.f12250x.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        this.f12250x.setVisibility(4);
    }

    private void ve() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.sp, "scaleX", 1.0f, 0.9f);
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.setRepeatMode(2);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.byazt.cc.SplashClickBarArrow.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (SplashClickBarArrow.this.f12246da) {
                    SplashClickBarArrow.this.f12250x.c();
                }
                SplashClickBarArrow splashClickBarArrow = SplashClickBarArrow.this;
                splashClickBarArrow.f12246da = !splashClickBarArrow.f12246da;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(SplashClickBarArrow.this.sp, "alpha", 0.0f, 1.0f);
                objectAnimatorOfFloat2.setDuration(200L);
                objectAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
                objectAnimatorOfFloat2.start();
                SplashClickBarArrow.this.sp.setVisibility(0);
            }
        });
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.sp, "scaleY", 1.0f, 0.9f);
        objectAnimatorOfFloat2.setDuration(1000L);
        objectAnimatorOfFloat2.setRepeatMode(2);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        this.f12249t.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        this.f12249t.setStartDelay(1000L);
    }

    public void c(int i10) {
        this.sl = i10;
        c();
    }

    private View c(Context context) {
        Resources resources = context.getResources();
        FrameLayout frameLayout = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        frameLayout.setClipChildren(false);
        frameLayout.setLayoutParams(layoutParams);
        this.f12245c = new ImageView(context);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) TypedValue.applyDimension(1, 14.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 16.0f, resources.getDisplayMetrics()));
        this.f12245c.setId(2114387592);
        layoutParams2.gravity = 16;
        z.c(context, "tt_splash_click_bar_go", (View) this.f12245c, 320);
        this.f12245c.setLayoutParams(layoutParams2);
        frameLayout.addView(this.f12245c);
        pf.c((View) this.f12245c, 8);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        this.tt = relativeLayout;
        relativeLayout.setId(2114387591);
        new FrameLayout.LayoutParams(-2, -2).gravity = 16;
        this.tt.setPadding(pf.ve(context, 4.0f), 0, 0, 0);
        frameLayout.addView(this.tt);
        pf.c((View) this.tt, 8);
        ImageView imageView = new ImageView(context);
        this.ve = imageView;
        imageView.setId(2114387590);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 8.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 10.0f, resources.getDisplayMetrics()));
        this.ve.setAlpha(0.0f);
        z.c(context, "tt_splash_arrow", this.ve, 160);
        this.ve.setLayoutParams(layoutParams3);
        this.tt.addView(this.ve);
        ImageView imageView2 = new ImageView(context);
        this.uj = imageView2;
        imageView2.setId(2114387589);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 8.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 10.0f, resources.getDisplayMetrics()));
        this.uj.setAlpha(0.0f);
        z.c(context, "tt_splash_arrow", (View) this.uj, 160);
        this.uj.setLayoutParams(layoutParams4);
        this.tt.addView(this.uj);
        ImageView imageView3 = new ImageView(context);
        this.f12248n = imageView3;
        imageView3.setId(2114387588);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 8.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 10.0f, resources.getDisplayMetrics()));
        this.f12248n.setAlpha(0.0f);
        z.c(context, "tt_splash_arrow", (View) this.f12248n, 160);
        this.f12248n.setLayoutParams(layoutParams5);
        this.tt.addView(this.f12248n);
        View view = new View(context);
        view.setLayoutParams(new RelativeLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 10.0f, resources.getDisplayMetrics())));
        this.tt.addView(view);
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.f12244a = frameLayout2;
        frameLayout2.setId(2114387587);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, -1);
        this.f12244a.setClipChildren(false);
        this.f12244a.setLayoutParams(layoutParams6);
        frameLayout.addView(this.f12244a);
        pf.c((View) this.f12244a, 8);
        RelativeLayout relativeLayout2 = new RelativeLayout(context);
        this.f12247i = relativeLayout2;
        relativeLayout2.setId(2114387586);
        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(-1, -1);
        this.f12247i.setClipChildren(false);
        this.f12247i.setLayoutParams(layoutParams7);
        this.f12244a.addView(this.f12247i);
        ImageView imageView4 = new ImageView(context);
        this.sp = imageView4;
        imageView4.setId(2114387585);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 50.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 50.0f, resources.getDisplayMetrics()));
        z.c(context, "tt_splash_hand", this.sp, 320);
        this.sp.setLayoutParams(layoutParams8);
        this.f12247i.addView(this.sp);
        pf.c((View) this.sp, 4);
        return frameLayout;
    }

    private void tt() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.ve, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat.setInterpolator(new c());
        objectAnimatorOfFloat.setDuration(1300L);
        objectAnimatorOfFloat.setStartDelay(700L);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setRepeatMode(1);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.ve, "translationX", 0.0f, pf.ve(getContext(), 20.0f));
        objectAnimatorOfFloat2.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        objectAnimatorOfFloat2.setDuration(1300L);
        objectAnimatorOfFloat2.setStartDelay(700L);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        objectAnimatorOfFloat2.setRepeatMode(1);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.uj, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat3.setInterpolator(new c());
        objectAnimatorOfFloat3.setDuration(1300L);
        objectAnimatorOfFloat3.setStartDelay(500L);
        objectAnimatorOfFloat3.setRepeatCount(-1);
        objectAnimatorOfFloat3.setRepeatMode(1);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.uj, "translationX", pf.ve(getContext(), 23.0f));
        objectAnimatorOfFloat4.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        objectAnimatorOfFloat4.setDuration(1300L);
        objectAnimatorOfFloat4.setStartDelay(500L);
        objectAnimatorOfFloat4.setRepeatCount(-1);
        objectAnimatorOfFloat4.setRepeatMode(1);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.f12248n, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat5.setInterpolator(new c());
        objectAnimatorOfFloat5.setDuration(1300L);
        objectAnimatorOfFloat5.setStartDelay(200L);
        objectAnimatorOfFloat5.setRepeatCount(-1);
        objectAnimatorOfFloat5.setRepeatMode(1);
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this.f12248n, "translationX", pf.ve(getContext(), 25.0f));
        objectAnimatorOfFloat6.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        objectAnimatorOfFloat6.setDuration(1300L);
        objectAnimatorOfFloat6.setStartDelay(200L);
        objectAnimatorOfFloat6.setRepeatCount(-1);
        objectAnimatorOfFloat6.setRepeatMode(1);
        this.f12249t.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat3, objectAnimatorOfFloat5, objectAnimatorOfFloat2, objectAnimatorOfFloat4, objectAnimatorOfFloat6);
    }

    private void c() {
        this.f12245c.setVisibility(8);
        this.tt.setVisibility(8);
        int i10 = this.sl;
        if (i10 == 1) {
            this.tt.setVisibility(0);
            tt();
            return;
        }
        if (i10 == 2) {
            this.f12244a.setVisibility(0);
            post(new Runnable() { // from class: com.byazt.cc.SplashClickBarArrow.1
                @Override // java.lang.Runnable
                public void run() {
                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) SplashClickBarArrow.this.f12247i.getLayoutParams();
                    layoutParams.topMargin = (int) ((SplashClickBarArrow.this.f12250x.getMeasuredHeight() / 2.0f) - pf.ve(SplashClickBarArrow.this.getContext(), 5.0f));
                    layoutParams.leftMargin = (int) ((SplashClickBarArrow.this.f12250x.getMeasuredWidth() / 2.0f) - pf.ve(SplashClickBarArrow.this.getContext(), 5.0f));
                    layoutParams.bottomMargin = (int) (((-SplashClickBarArrow.this.f12250x.getMeasuredHeight()) / 2.0f) + pf.ve(SplashClickBarArrow.this.getContext(), 5.0f));
                    layoutParams.rightMargin = (int) (((-SplashClickBarArrow.this.f12250x.getMeasuredWidth()) / 2.0f) + pf.ve(SplashClickBarArrow.this.getContext(), 5.0f));
                    SplashClickBarArrow.this.f12247i.setLayoutParams(layoutParams);
                }
            });
            ve();
        } else {
            if (i10 == 3 || i10 == 4 || i10 == 5 || i10 == 7) {
                return;
            }
            this.f12245c.setVisibility(0);
        }
    }
}
