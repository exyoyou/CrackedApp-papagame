package com.haima.hmcp.widgets.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.haima.hmcp.utils.LogUtils;

/* JADX INFO: loaded from: classes5.dex */
public class CircularProgressIndicatorView extends View {
    private static final String TAG = "CircularProgressIndicatorView";
    private ValueAnimator animator;
    private Paint backgroundPaint;
    private int maxProgress;
    private float progress;
    private Paint progressPaint;
    private int progressWidth;
    private boolean showProgress;

    public CircularProgressIndicatorView(Context context) {
        super(context);
        this.progress = 0.0f;
        this.progressWidth = 5;
        this.maxProgress = 100;
        this.showProgress = false;
        init();
    }

    private void init() {
        Paint paint = new Paint();
        this.progressPaint = paint;
        paint.setColor(-1);
        this.progressPaint.setStyle(Paint.Style.STROKE);
        this.progressPaint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.backgroundPaint = paint2;
        paint2.setColor(1291845632);
        this.backgroundPaint.setStyle(Paint.Style.FILL);
        this.backgroundPaint.setAntiAlias(true);
    }

    public void cancelAnimation() {
        LogUtils.i(TAG, "==touchModeSlide===animation.cancelAnimation()=");
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        setProgress(0.0f);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.showProgress) {
            int width = getWidth();
            int height = getHeight();
            this.progressWidth = width / 20;
            String str = TAG;
            LogUtils.i(str, "==touchModeSlide===progressWidth=" + this.progressWidth);
            float fMin = (((float) Math.min(width, height)) / 2.0f) - ((float) this.progressWidth);
            float fMin2 = ((float) Math.min(width, height)) / 2.0f;
            float f10 = ((float) width) / 2.0f;
            float f11 = height / 2.0f;
            RectF rectF = new RectF(f10 - fMin, f11 - fMin, f10 + fMin, fMin + f11);
            canvas.drawOval(new RectF(f10 - fMin2, f11 - fMin2, f10 + fMin2, f11 + fMin2), this.backgroundPaint);
            float f12 = (this.progress / 100.0f) * 360.0f;
            this.progressPaint.setStrokeWidth(this.progressWidth);
            LogUtils.i(str, "==touchModeSlide===sweepAngle=" + f12 + " progress=" + this.progress);
            canvas.drawArc(rectF, -135.0f, f12, false, this.progressPaint);
        }
    }

    public void setProgress(float f10) {
        this.progress = f10;
        invalidate();
    }

    public void setShowProgress(boolean z10) {
        this.showProgress = z10;
        invalidate();
    }

    public void startAnimation(long j10) {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, this.maxProgress);
        this.animator = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(j10);
        this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.haima.hmcp.widgets.view.CircularProgressIndicatorView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                LogUtils.i(CircularProgressIndicatorView.TAG, "==touchModeSlide===animation.getAnimatedValue()=" + valueAnimator2.getAnimatedValue());
                CircularProgressIndicatorView.this.setProgress((float) ((Integer) valueAnimator2.getAnimatedValue()).intValue());
            }
        });
        this.animator.addListener(new AnimatorListenerAdapter() { // from class: com.haima.hmcp.widgets.view.CircularProgressIndicatorView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                CircularProgressIndicatorView.this.setProgress(0.0f);
                CircularProgressIndicatorView.this.setShowProgress(false);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                CircularProgressIndicatorView.this.setProgress(0.0f);
                CircularProgressIndicatorView.this.setShowProgress(false);
            }
        });
        this.animator.start();
    }

    public CircularProgressIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.progress = 0.0f;
        this.progressWidth = 5;
        this.maxProgress = 100;
        this.showProgress = false;
        init();
    }

    public CircularProgressIndicatorView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.progress = 0.0f;
        this.progressWidth = 5;
        this.maxProgress = 100;
        this.showProgress = false;
        init();
    }
}
