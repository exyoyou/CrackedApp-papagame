package com.papa91.view;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes2.dex */
public class CountDownView extends View {
    AnimatorSet animatorSet;
    private ValueAnimator circleAnimator;
    private float circleValue;
    private int curAngle;
    Handler handler;
    private int loadSuccessColor;
    private Paint mPaint;
    private Path mPathCircle;
    private Path mPathCircleDst;
    private PathMeasure mPathMeasure;
    private StatusEnum mStatus;
    private int minAngle;
    OnCountDownListener onCountDownListener;
    private Path pointerPath;
    private int progressColor;
    private float progressRadius;
    private float progressWidth;
    private int startAngle;
    private Path successPath;
    private float successValue;
    private int sweepAngle;

    public interface OnCountDownListener {
        void onCountFinished();

        void onSuccessFinish();
    }

    public enum StatusEnum {
        Loading,
        LoadSuccess
    }

    public CountDownView(Context context) {
        this(context, null);
    }

    private void initAnim() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.circleAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.papa91.view.CountDownView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CountDownView.this.circleValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CountDownView.this.invalidate();
            }
        });
    }

    private void initPaint() {
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setColor(this.progressColor);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setDither(true);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStrokeWidth(this.progressWidth);
        this.mPaint.setStrokeCap(Paint.Cap.ROUND);
    }

    private void initPath() {
        this.mPathCircle = new Path();
        this.mPathMeasure = new PathMeasure();
        this.mPathCircleDst = new Path();
        this.pointerPath = new Path();
        this.successPath = new Path();
    }

    private void loadLoading() {
        setStatus(StatusEnum.Loading);
        invalidate();
    }

    private void loadSuccess() {
        resetPath();
        setStatus(StatusEnum.LoadSuccess);
        startSuccessAnim();
    }

    private void resetPath() {
        this.successValue = 0.0f;
        this.circleValue = 0.0f;
        this.mPathCircle.reset();
        this.mPathCircleDst.reset();
        this.pointerPath.reset();
        this.successPath.reset();
    }

    private void setStatus(StatusEnum statusEnum) {
        this.mStatus = statusEnum;
    }

    private void startSuccessAnim() {
        this.circleAnimator.setDuration(5000L);
        ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(500L);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.papa91.view.CountDownView.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CountDownView.this.successValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CountDownView.this.invalidate();
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.animatorSet = animatorSet;
        animatorSet.play(duration).after(this.circleAnimator);
        this.animatorSet.start();
    }

    int dip2px(int i10) {
        return (int) TypedValue.applyDimension(1, i10, getResources().getDisplayMetrics());
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        OnCountDownListener onCountDownListener;
        super.onDraw(canvas);
        canvas.translate(getPaddingLeft(), getPaddingTop());
        StatusEnum statusEnum = this.mStatus;
        if (statusEnum == StatusEnum.Loading) {
            int i10 = this.startAngle;
            int i11 = this.minAngle;
            if (i10 == i11) {
                this.sweepAngle += 6;
            }
            int i12 = this.sweepAngle;
            if (i12 >= 300 || i10 > i11) {
                this.startAngle = i10 + 6;
                if (i12 > 20) {
                    this.sweepAngle = i12 - 6;
                }
            }
            int i13 = this.startAngle;
            if (i13 > i11 + 300) {
                int i14 = i13 % MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL;
                this.startAngle = i14;
                this.minAngle = i14;
                this.sweepAngle = 20;
            }
            int i15 = this.curAngle + 4;
            this.curAngle = i15;
            float f10 = this.progressRadius;
            canvas.rotate(i15, f10, f10);
            float f11 = this.progressRadius;
            canvas.drawArc(new RectF(0.0f, 0.0f, f11 * 2.0f, f11 * 2.0f), this.startAngle, this.sweepAngle, false, this.mPaint);
            invalidate();
            return;
        }
        if (statusEnum == StatusEnum.LoadSuccess) {
            this.mPaint.setColor(this.loadSuccessColor);
            this.mPathCircle.addArc(new RectF(0.0f, 0.0f, getWidth() - (this.progressWidth * 2.0f), getHeight() - (this.progressWidth * 2.0f)), -90.0f, 360.0f);
            this.mPathMeasure.setPath(this.mPathCircle, false);
            PathMeasure pathMeasure = this.mPathMeasure;
            pathMeasure.getSegment(0.0f, this.circleValue * pathMeasure.getLength(), this.mPathCircleDst, true);
            canvas.drawPath(this.mPathCircleDst, this.mPaint);
            if (this.circleValue != 1.0f) {
                this.pointerPath.moveTo(getWidth() / 2, getHeight() / 4);
                this.pointerPath.lineTo(getWidth() / 2, getHeight() / 2);
                this.pointerPath.lineTo((getWidth() * 3) / 4, getHeight() / 2);
                canvas.drawPath(this.pointerPath, this.mPaint);
                return;
            }
            this.successPath.moveTo((getWidth() / 8) * 3, getWidth() / 2);
            this.successPath.lineTo(getWidth() / 2, (getWidth() / 5) * 3);
            this.successPath.lineTo((getWidth() / 3) * 2, (getWidth() / 5) * 2);
            this.mPathMeasure.nextContour();
            this.mPathMeasure.setPath(this.successPath, false);
            PathMeasure pathMeasure2 = this.mPathMeasure;
            pathMeasure2.getSegment(0.0f, this.successValue * pathMeasure2.getLength(), this.mPathCircleDst, true);
            canvas.drawPath(this.mPathCircleDst, this.mPaint);
            if (this.successValue != 1.0f || (onCountDownListener = this.onCountDownListener) == null) {
                return;
            }
            onCountDownListener.onSuccessFinish();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode != 1073741824) {
            size = (int) ((this.progressRadius * 2.0f) + this.progressWidth + getPaddingLeft() + getPaddingRight());
        }
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mode2 != 1073741824) {
            size2 = (int) ((this.progressRadius * 2.0f) + this.progressWidth + getPaddingTop() + getPaddingBottom());
        }
        setMeasuredDimension(size, size2);
    }

    public void pause() {
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet == null || !animatorSet.isRunning()) {
            return;
        }
        this.animatorSet.pause();
    }

    public void resume() {
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet == null || !animatorSet.isStarted()) {
            start();
        } else {
            this.animatorSet.resume();
        }
    }

    public void setOnCountDownListener(OnCountDownListener onCountDownListener) {
        this.onCountDownListener = onCountDownListener;
    }

    public void start() {
        resetPath();
        setStatus(StatusEnum.LoadSuccess);
        startSuccessAnim();
    }

    public CountDownView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CountDownView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.startAngle = -90;
        this.minAngle = -90;
        this.sweepAngle = 120;
        this.curAngle = 0;
        this.handler = new Handler() { // from class: com.papa91.view.CountDownView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                int i11 = message.what;
                if (i11 == 1) {
                    OnCountDownListener onCountDownListener = CountDownView.this.onCountDownListener;
                    if (onCountDownListener != null) {
                        onCountDownListener.onCountFinished();
                    }
                } else if (i11 != 2) {
                    return;
                }
                OnCountDownListener onCountDownListener2 = CountDownView.this.onCountDownListener;
                if (onCountDownListener2 != null) {
                    onCountDownListener2.onSuccessFinish();
                }
            }
        };
        this.progressColor = Color.parseColor("#ffffff");
        this.loadSuccessColor = Color.parseColor("#ffffff");
        this.progressWidth = dip2px(1);
        initPaint();
        initPath();
        initAnim();
    }
}
