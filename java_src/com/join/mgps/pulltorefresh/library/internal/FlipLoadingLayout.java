package com.join.mgps.pulltorefresh.library.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pulltorefresh.library.PullToRefreshBase;

/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"ViewConstructor"})
public class FlipLoadingLayout extends LoadingLayout {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    static final int f72220q = 150;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Animation f72221o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Animation f72222p;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f72223a;

        static {
            int[] iArr = new int[PullToRefreshBase.Mode.values().length];
            f72223a = iArr;
            try {
                iArr[PullToRefreshBase.Mode.PULL_FROM_END.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f72223a[PullToRefreshBase.Mode.PULL_FROM_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public FlipLoadingLayout(Context context, final PullToRefreshBase.Mode mode, final PullToRefreshBase.Orientation scrollDirection, TypedArray attrs) {
        super(context, mode, scrollDirection, attrs);
        float f10 = mode == PullToRefreshBase.Mode.PULL_FROM_START ? -180 : 180;
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, f10, 1, 0.5f, 1, 0.5f);
        this.f72221o = rotateAnimation;
        Interpolator interpolator = LoadingLayout.f72232n;
        rotateAnimation.setInterpolator(interpolator);
        rotateAnimation.setDuration(150L);
        rotateAnimation.setFillAfter(true);
        RotateAnimation rotateAnimation2 = new RotateAnimation(f10, 0.0f, 1, 0.5f, 1, 0.5f);
        this.f72222p = rotateAnimation2;
        rotateAnimation2.setInterpolator(interpolator);
        rotateAnimation2.setDuration(150L);
        rotateAnimation2.setFillAfter(true);
    }

    private float getDrawableRotationAngle() {
        int i10 = a.f72223a[this.f72239h.ordinal()];
        if (i10 != 1) {
            return (i10 == 2 && this.f72240i == PullToRefreshBase.Orientation.HORIZONTAL) ? 270.0f : 0.0f;
        }
        return this.f72240i == PullToRefreshBase.Orientation.HORIZONTAL ? 90.0f : 180.0f;
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected void b(Drawable imageDrawable) {
        if (imageDrawable != null) {
            int intrinsicHeight = imageDrawable.getIntrinsicHeight();
            int intrinsicWidth = imageDrawable.getIntrinsicWidth();
            ViewGroup.LayoutParams layoutParams = this.f72234c.getLayoutParams();
            int iMax = Math.max(intrinsicHeight, intrinsicWidth);
            layoutParams.height = iMax;
            layoutParams.width = iMax;
            this.f72234c.requestLayout();
            this.f72234c.setScaleType(ImageView.ScaleType.MATRIX);
            Matrix matrix = new Matrix();
            matrix.postTranslate((layoutParams.width - intrinsicWidth) / 2.0f, (layoutParams.height - intrinsicHeight) / 2.0f);
            matrix.postRotate(getDrawableRotationAngle(), layoutParams.width / 2.0f, layoutParams.height / 2.0f);
            this.f72234c.setImageMatrix(matrix);
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected void d(float scaleOfLayout) {
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected void f() {
        if (this.f72221o == this.f72234c.getAnimation()) {
            this.f72234c.startAnimation(this.f72222p);
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected int getDefaultDrawableResId() {
        return R.drawable.default_ptr_flip;
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected void h() {
        this.f72234c.clearAnimation();
        this.f72234c.setVisibility(4);
        this.f72235d.setVisibility(0);
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected void j() {
        this.f72234c.startAnimation(this.f72221o);
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected void l() {
        this.f72234c.clearAnimation();
        this.f72235d.setVisibility(8);
        this.f72234c.setVisibility(0);
    }
}
