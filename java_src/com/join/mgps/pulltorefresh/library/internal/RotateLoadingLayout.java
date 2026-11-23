package com.join.mgps.pulltorefresh.library.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.pulltorefresh.library.PullToRefreshBase;

/* JADX INFO: loaded from: classes3.dex */
public class RotateLoadingLayout extends LoadingLayout {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    static final int f72246t = 1200;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Animation f72247o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Matrix f72248p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f72249q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f72250r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final boolean f72251s;

    public RotateLoadingLayout(Context context, PullToRefreshBase.Mode mode, PullToRefreshBase.Orientation scrollDirection, TypedArray attrs) {
        super(context, mode, scrollDirection, attrs);
        this.f72251s = attrs.getBoolean(15, true);
        this.f72234c.setScaleType(ImageView.ScaleType.MATRIX);
        Matrix matrix = new Matrix();
        this.f72248p = matrix;
        this.f72234c.setImageMatrix(matrix);
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 720.0f, 1, 0.5f, 1, 0.5f);
        this.f72247o = rotateAnimation;
        rotateAnimation.setInterpolator(LoadingLayout.f72232n);
        rotateAnimation.setDuration(1200L);
        rotateAnimation.setRepeatCount(-1);
        rotateAnimation.setRepeatMode(1);
    }

    private void n() {
        Matrix matrix = this.f72248p;
        if (matrix != null) {
            matrix.reset();
            this.f72234c.setImageMatrix(this.f72248p);
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    public void b(Drawable imageDrawable) {
        if (imageDrawable != null) {
            this.f72249q = Math.round(imageDrawable.getIntrinsicWidth() / 2.0f);
            this.f72250r = Math.round(imageDrawable.getIntrinsicHeight() / 2.0f);
        }
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected void d(float scaleOfLayout) {
        this.f72248p.setRotate(this.f72251s ? scaleOfLayout * 90.0f : Math.max(0.0f, Math.min(180.0f, (scaleOfLayout * 360.0f) - 180.0f)), this.f72249q, this.f72250r);
        this.f72234c.setImageMatrix(this.f72248p);
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected void f() {
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected int getDefaultDrawableResId() {
        return R.drawable.default_ptr_rotate;
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected void h() {
        this.f72234c.startAnimation(this.f72247o);
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected void j() {
    }

    @Override // com.join.mgps.pulltorefresh.library.internal.LoadingLayout
    protected void l() {
        this.f72234c.clearAnimation();
        n();
    }
}
