package com.sigmob.sdk.base.views;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ResourceUtil;

/* JADX INFO: loaded from: classes5.dex */
public class y extends r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ImageView f80298a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ObjectAnimator f80299b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f80300c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private e f80301d;

    /* JADX INFO: renamed from: com.sigmob.sdk.base.views.y$2, reason: invalid class name */
    class AnonymousClass2 implements Animator.AnimatorListener {
        AnonymousClass2() {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            if (y.this.f80300c) {
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.sigmob.sdk.base.views.q0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f80224b.a();
                    }
                }, 300L);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animation) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animation) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            y.this.f80299b.start();
        }
    }

    public y(Context context) {
        super(context);
        c();
    }

    private void d() {
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.sigmob.sdk.base.views.y.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                int height = y.this.getHeight();
                int width = y.this.getWidth();
                if (height == 0 || width == 0) {
                    return;
                }
                y.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                ViewGroup.LayoutParams layoutParams = y.this.f80298a.getLayoutParams();
                int i10 = height / 2;
                layoutParams.width = i10;
                layoutParams.height = i10;
                y.this.f80298a.setLayoutParams(layoutParams);
                float f10 = height / 2.0f;
                y.this.f80298a.setPivotX(f10);
                y.this.f80298a.setPivotY(f10 * 0.8f);
            }
        });
    }

    private void e() {
        if (this.f80299b != null) {
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f80298a, "rotation", 0.0f, 18.0f, 0.0f, -18.0f, 0.0f, 18.0f, 0.0f, -18.0f, 0.0f, 18.0f, 0.0f);
        this.f80299b = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        this.f80299b.addListener(new AnonymousClass2());
        this.f80299b.setDuration(1200L);
    }

    @Override // com.sigmob.sdk.base.views.r
    public void b() {
        ObjectAnimator objectAnimator = this.f80299b;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        this.f80300c = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        d();
        e();
        if (this.f80300c) {
            this.f80299b.cancel();
            this.f80299b.start();
        }
    }

    public y(Context context, AttributeSet attrs) {
        super(context, attrs);
        c();
    }

    private void c() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        Context context = getContext();
        e eVar = new e(context);
        this.f80301d = eVar;
        addView(eVar, layoutParams);
        int iDipsToIntPixels = Dips.dipsToIntPixels(45.0f, context);
        this.f80298a = new ImageView(context);
        this.f80298a.setImageDrawable(getResources().getDrawable(ResourceUtil.getDrawableId(context, "sig_image_shake_new")));
        this.f80298a.setScaleType(ImageView.ScaleType.FIT_XY);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iDipsToIntPixels, iDipsToIntPixels);
        layoutParams2.addRule(13);
        addView(this.f80298a, layoutParams2);
        d();
    }

    @Override // com.sigmob.sdk.base.views.r
    public void a() {
        ObjectAnimator objectAnimator = this.f80299b;
        if (objectAnimator != null && !this.f80300c) {
            objectAnimator.start();
        }
        this.f80300c = true;
    }

    public y(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        c();
    }
}
