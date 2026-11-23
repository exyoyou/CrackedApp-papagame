package com.join.mgps.pulltorefresh.library.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pulltorefresh.library.PullToRefreshBase;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"ViewConstructor"})
public class IndicatorLayout extends FrameLayout implements Animation.AnimationListener {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final int f72224g = 150;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Animation f72225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Animation f72226c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ImageView f72227d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Animation f72228e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Animation f72229f;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f72230a;

        static {
            int[] iArr = new int[PullToRefreshBase.Mode.values().length];
            f72230a = iArr;
            try {
                iArr[PullToRefreshBase.Mode.PULL_FROM_END.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f72230a[PullToRefreshBase.Mode.PULL_FROM_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public IndicatorLayout(Context context, PullToRefreshBase.Mode mode) {
        int i10;
        int i11;
        super(context);
        this.f72227d = new ImageView(context);
        Drawable drawable = getResources().getDrawable(R.drawable.indicator_arrow);
        this.f72227d.setImageDrawable(drawable);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.indicator_internal_padding);
        this.f72227d.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        addView(this.f72227d);
        if (a.f72230a[mode.ordinal()] != 1) {
            setBackgroundResource(R.drawable.indicator_bg_top);
            i10 = R.anim.slide_in_from_top;
            i11 = R.anim.slide_out_to_top;
        } else {
            setBackgroundResource(R.drawable.indicator_bg_bottom);
            this.f72227d.setScaleType(ImageView.ScaleType.MATRIX);
            Matrix matrix = new Matrix();
            matrix.setRotate(180.0f, drawable.getIntrinsicWidth() / 2.0f, drawable.getIntrinsicHeight() / 2.0f);
            this.f72227d.setImageMatrix(matrix);
            i10 = R.anim.slide_in_from_bottom;
            i11 = R.anim.slide_out_to_bottom;
        }
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, i10);
        this.f72225b = animationLoadAnimation;
        animationLoadAnimation.setAnimationListener(this);
        Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(context, i11);
        this.f72226c = animationLoadAnimation2;
        animationLoadAnimation2.setAnimationListener(this);
        LinearInterpolator linearInterpolator = new LinearInterpolator();
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, -180.0f, 1, 0.5f, 1, 0.5f);
        this.f72228e = rotateAnimation;
        rotateAnimation.setInterpolator(linearInterpolator);
        rotateAnimation.setDuration(150L);
        rotateAnimation.setFillAfter(true);
        RotateAnimation rotateAnimation2 = new RotateAnimation(-180.0f, 0.0f, 1, 0.5f, 1, 0.5f);
        this.f72229f = rotateAnimation2;
        rotateAnimation2.setInterpolator(linearInterpolator);
        rotateAnimation2.setDuration(150L);
        rotateAnimation2.setFillAfter(true);
    }

    public void a() {
        startAnimation(this.f72226c);
    }

    public final boolean b() {
        Animation animation = getAnimation();
        if (animation != null) {
            return this.f72225b == animation;
        }
        return getVisibility() == 0;
    }

    public void c() {
        this.f72227d.startAnimation(this.f72229f);
    }

    public void d() {
        this.f72227d.startAnimation(this.f72228e);
    }

    public void e() {
        this.f72227d.clearAnimation();
        startAnimation(this.f72225b);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        if (animation == this.f72226c) {
            this.f72227d.clearAnimation();
            setVisibility(8);
        } else if (animation == this.f72225b) {
            setVisibility(0);
        }
        clearAnimation();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        setVisibility(0);
    }
}
