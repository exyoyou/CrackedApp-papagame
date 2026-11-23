package com.byazt.oaq;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 995, 996})
public class CycleSkipView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f17757a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f17758c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f17759da;
    public boolean gt;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f17760i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public AnimatorSet f17761m;
    public ValueAnimator my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f17762n;
    public ValueAnimator nu;
    public float qy;
    public ValueAnimator rh;
    public final RectF rl;
    public boolean sl;
    public boolean sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Paint f17763t;
    public int tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Paint f17764u;
    public float uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f17765x;
    public Paint yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f17766z;

    public CycleSkipView(Context context) {
        super(context);
        this.f17758c = Color.parseColor("#f9e8b9");
        this.tt = Color.parseColor("#ffffff");
        this.ve = Color.parseColor("#7b7b7b");
        this.f17757a = 270;
        this.sp = false;
        this.f17765x = 5.0f;
        this.f17760i = 0.0f;
        this.f17759da = 0;
        this.sl = true;
        this.f17766z = 0.0f;
        this.gt = false;
        this.rl = new RectF();
        this.qy = 1.0f;
        this.uj = c(2.0f);
        this.f17762n = c(10.0f);
        this.f17757a %= MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL;
        tt();
        setBackgroundColor(-16711681);
    }

    private ValueAnimator getArcAnim() {
        ValueAnimator valueAnimator = this.rh;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.rh = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f17766z, this.qy);
        this.rh = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        this.rh.setDuration(1000L);
        this.rh.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.oaq.CycleSkipView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                CycleSkipView.this.f17766z = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                CycleSkipView.this.postInvalidate();
            }
        });
        return this.rh;
    }

    private int getMinLine() {
        return Math.min(getMeasuredHeight(), getMeasuredWidth());
    }

    private void tt() {
        Paint paint = new Paint(1);
        this.f17763t = paint;
        paint.setColor(this.f17758c);
        this.f17763t.setStrokeWidth(this.uj);
        this.f17763t.setAntiAlias(true);
        this.f17763t.setStrokeCap(Paint.Cap.ROUND);
        this.f17763t.setStyle(Paint.Style.STROKE);
        Paint paint2 = new Paint(1);
        this.f17764u = paint2;
        paint2.setColor(this.tt);
        this.f17764u.setAntiAlias(true);
        this.f17764u.setStrokeWidth(this.uj);
        this.f17764u.setStyle(Paint.Style.FILL);
        Paint paint3 = new Paint(1);
        this.yp = paint3;
        paint3.setColor(this.ve);
        this.yp.setTextAlign(Paint.Align.CENTER);
    }

    private int ve() {
        return (int) ((((this.uj / 2.0f) + this.f17762n) * 2.0f) + c(4.0f));
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        try {
            AnimatorSet animatorSet = this.f17761m;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.f17761m = null;
            }
            ValueAnimator valueAnimator = this.my;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.my = null;
            }
            ValueAnimator valueAnimator2 = this.nu;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
                this.nu = null;
            }
            ValueAnimator valueAnimator3 = this.rh;
            if (valueAnimator3 != null) {
                valueAnimator3.cancel();
                this.rh = null;
            }
            this.f17766z = 1.0f;
            invalidate();
        } catch (Exception unused) {
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.translate(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
        tt(canvas);
        c(canvas);
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int size = View.MeasureSpec.getSize(i10);
        int mode = View.MeasureSpec.getMode(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i11);
        if (mode != 1073741824) {
            size = ve();
        }
        if (mode2 != 1073741824) {
            size2 = ve();
        }
        tt(size, size2);
        setMeasuredDimension(size, size2);
        RectF rectF = this.rl;
        float f10 = this.f17762n;
        rectF.left = -f10;
        rectF.right = f10;
        rectF.top = -f10;
        rectF.bottom = f10;
        this.yp.setTextSize(getMinLine() / 3.0f);
    }

    private void c(Canvas canvas) {
        canvas.save();
        Paint.FontMetrics fontMetrics = this.yp.getFontMetrics();
        canvas.drawText("跳过", 0.0f, (getMinLine() / 3.0f) - ((fontMetrics.bottom - fontMetrics.top) / 2.0f), this.yp);
        canvas.restore();
    }

    private float c(float f10) {
        return TypedValue.applyDimension(1, f10, getResources().getDisplayMetrics());
    }

    public void c() {
        AnimatorSet animatorSet = this.f17761m;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.f17761m.cancel();
            this.f17761m = null;
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f17761m = animatorSet2;
        animatorSet2.playTogether(getArcAnim());
        this.f17761m.setInterpolator(new LinearInterpolator());
        this.f17761m.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.oaq.CycleSkipView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                CycleSkipView.this.gt = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (CycleSkipView.this.gt) {
                    CycleSkipView.this.gt = false;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        this.f17761m.start();
    }

    private void tt(int i10, int i11) {
        this.f17762n = (Math.min(i10, i11) / 2.0f) - this.uj;
    }

    private void tt(Canvas canvas) {
        float f10;
        float fMax;
        float f11;
        canvas.save();
        float f12 = this.f17766z * 360.0f;
        if (this.sp) {
            if (this.sl) {
                f10 = this.f17757a;
                f12 = -f12;
            } else {
                f10 = this.f17757a - f12;
            }
        } else {
            if (this.sl) {
                float f13 = this.f17757a + MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL;
                fMax = Math.max(0.0f, 360.0f - f12);
                f11 = f13;
            } else {
                f10 = this.f17757a;
            }
            canvas.drawCircle(0.0f, 0.0f, this.f17762n, this.f17764u);
            canvas.drawArc(this.rl, f11, fMax, false, this.f17763t);
            canvas.restore();
        }
        fMax = f12;
        f11 = f10;
        canvas.drawCircle(0.0f, 0.0f, this.f17762n, this.f17764u);
        canvas.drawArc(this.rl, f11, fMax, false, this.f17763t);
        canvas.restore();
    }

    public void c(int i10, int i11) {
        if (i10 == 0) {
            return;
        }
        float f10 = i10;
        this.f17765x = f10;
        float f11 = i11;
        this.f17760i = f11;
        this.f17759da = i10 - i11;
        this.qy = f11 / f10;
        c();
    }
}
