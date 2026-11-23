package com.byazt.but;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.byazt.omf.gt;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 672, 1537})
public class TTCountdownViewForCircle extends View implements uj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f12097a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12098c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public float f12099da;
    public AnimatorSet gr;
    public float gt;
    public c gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AtomicBoolean f12100h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f12101i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Paint f12102m;
    public boolean md;
    public Paint my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f12103n;
    public Paint nu;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ValueAnimator f12104p;
    public RectF qy;
    public Paint rh;
    public float rl;
    public float sl;
    public float sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public float f12105t;
    public int tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f12106u;
    public int uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f12107x;
    public boolean yp;
    public ValueAnimator yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f12108z;
    public ValueAnimator zm;

    public TTCountdownViewForCircle(Context context) {
        this(context, null);
    }

    private int a() {
        return (int) ((((this.f12103n / 2.0f) + this.sp) * 2.0f) + c(4.0f));
    }

    private ValueAnimator getArcAnim() {
        ValueAnimator valueAnimator = this.yv;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.yv = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.gt, 0.0f);
        this.yv = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        this.yv.setDuration((long) (c(this.gt, this.f12099da) * 1000.0f));
        this.yv.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.but.TTCountdownViewForCircle.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                TTCountdownViewForCircle.this.gt = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                TTCountdownViewForCircle.this.invalidate();
            }
        });
        return this.yv;
    }

    private ValueAnimator getNumAnim() {
        ValueAnimator valueAnimator = this.zm;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.zm = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.rl, 0.0f);
        this.zm = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        this.zm.setDuration((long) (c(this.rl, this.sl) * 1000.0f));
        this.zm.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.but.TTCountdownViewForCircle.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                TTCountdownViewForCircle.this.rl = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                TTCountdownViewForCircle.this.invalidate();
            }
        });
        return this.zm;
    }

    private void n() {
        float f10 = this.sp;
        this.qy = new RectF(-f10, -f10, f10, f10);
    }

    private void sp() {
        try {
            AnimatorSet animatorSet = this.gr;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.gr = null;
            }
            ValueAnimator valueAnimator = this.f12104p;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.f12104p = null;
            }
            ValueAnimator valueAnimator2 = this.zm;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
                this.zm = null;
            }
            ValueAnimator valueAnimator3 = this.yv;
            if (valueAnimator3 != null) {
                valueAnimator3.cancel();
                this.yv = null;
            }
            this.gt = 1.0f;
            this.rl = 1.0f;
            invalidate();
        } catch (Exception unused) {
        }
    }

    private void uj() {
        Paint paint = new Paint(1);
        this.f12102m = paint;
        paint.setColor(this.f12098c);
        this.f12102m.setStrokeWidth(this.f12103n);
        this.f12102m.setAntiAlias(true);
        this.f12102m.setStyle(Paint.Style.STROKE);
        Paint paint2 = new Paint(1);
        this.nu = paint2;
        paint2.setColor(this.ve);
        this.nu.setAntiAlias(true);
        this.nu.setStrokeWidth(this.f12103n);
        this.nu.setStyle(Paint.Style.FILL);
        Paint paint3 = new Paint(1);
        this.rh = paint3;
        paint3.setColor(this.tt);
        this.rh.setAntiAlias(true);
        this.rh.setStrokeWidth(this.f12103n / 2.0f);
        this.rh.setStyle(Paint.Style.STROKE);
        Paint paint4 = new Paint(1);
        this.my = paint4;
        paint4.setColor(this.uj);
        this.rh.setAntiAlias(true);
        this.my.setTextSize(this.f12097a);
        this.my.setTextAlign(Paint.Align.CENTER);
    }

    public float c(float f10, float f11) {
        return f10 * f11;
    }

    public c getCountdownListener() {
        return this.gu;
    }

    @Override // com.byazt.but.uj
    public View getView() {
        return this;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        sp();
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
            size = a();
        }
        if (mode2 != 1073741824) {
            size2 = a();
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        this.f12100h.set(z10);
        if (this.f12108z) {
            return;
        }
        if (this.f12100h.get()) {
            ve();
        } else {
            tt();
        }
    }

    @Override // com.byazt.but.uj
    public void setCountDownTime(int i10) {
        float f10 = i10;
        this.sl = f10;
        this.f12099da = f10;
        sp();
    }

    @Override // com.byazt.but.uj
    public void setCountdownListener(c cVar) {
        this.gu = cVar;
        this.f12100h.get();
    }

    public void ve() {
        AnimatorSet animatorSet;
        try {
            if (this.f12108z || (animatorSet = this.gr) == null) {
                return;
            }
            animatorSet.resume();
        } catch (Throwable unused) {
        }
    }

    public TTCountdownViewForCircle(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public float c(float f10, int i10) {
        return i10 * f10;
    }

    public TTCountdownViewForCircle(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f12098c = Color.parseColor("#fce8b6");
        this.tt = Color.parseColor("#f0f0f0");
        this.ve = Color.parseColor("#ffffff");
        this.uj = Color.parseColor("#7c7c7c");
        this.f12103n = 2.0f;
        this.f12097a = 12.0f;
        this.sp = 18.0f;
        this.f12107x = 270;
        this.f12101i = false;
        this.f12099da = 5.0f;
        this.sl = 5.0f;
        this.f12105t = 0.8f;
        this.f12106u = "跳过";
        this.yp = false;
        this.f12108z = false;
        this.gt = 1.0f;
        this.rl = 1.0f;
        this.md = false;
        this.f12100h = new AtomicBoolean(true);
        this.f12103n = c(2.0f);
        this.sp = c(18.0f);
        this.f12097a = tt(12.0f);
        this.f12107x %= MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL;
        uj();
        n();
    }

    private void tt(Canvas canvas) {
        float f10;
        canvas.save();
        float fC = c(this.gt, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL);
        if (this.f12101i) {
            f10 = this.f12107x - fC;
        } else {
            f10 = this.f12107x;
        }
        canvas.drawCircle(0.0f, 0.0f, this.sp, this.nu);
        canvas.drawCircle(0.0f, 0.0f, this.sp, this.rh);
        canvas.drawArc(this.qy, f10, fC, false, this.f12102m);
        canvas.restore();
    }

    private void c(Canvas canvas) {
        canvas.save();
        Paint.FontMetrics fontMetrics = this.my.getFontMetrics();
        String strEj = gt.tt().ej();
        this.f12106u = strEj;
        if (TextUtils.isEmpty(strEj)) {
            this.f12106u = "跳过";
        }
        canvas.drawText(this.f12106u, 0.0f, 0.0f - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), this.my);
        canvas.restore();
    }

    private float tt(float f10) {
        return TypedValue.applyDimension(2, f10, getResources().getDisplayMetrics());
    }

    @Override // com.byazt.but.uj
    public void c() {
        if (this.f12108z) {
            return;
        }
        AnimatorSet animatorSet = this.gr;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.gr.cancel();
            this.gr = null;
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.gr = animatorSet2;
        animatorSet2.playTogether(getNumAnim(), getArcAnim());
        this.gr.setInterpolator(new LinearInterpolator());
        this.gr.addListener(new AnimatorListenerAdapter() { // from class: com.byazt.but.TTCountdownViewForCircle.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                TTCountdownViewForCircle.this.md = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (TTCountdownViewForCircle.this.md) {
                    TTCountdownViewForCircle.this.md = false;
                } else if (TTCountdownViewForCircle.this.gu != null) {
                    TTCountdownViewForCircle.this.gu.c();
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        try {
            Field declaredField = ValueAnimator.class.getDeclaredField("sDurationScale");
            declaredField.setAccessible(true);
            if (declaredField.getFloat(null) < 1.0f) {
                declaredField.setFloat(null, 1.0f);
            }
        } catch (Throwable unused) {
        }
        this.gr.start();
        if (this.f12100h.get()) {
            return;
        }
        tt();
    }

    public void tt() {
        try {
            AnimatorSet animatorSet = this.gr;
            if (animatorSet != null) {
                animatorSet.pause();
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.but.uj
    public void c(boolean z10) {
        this.f12108z = z10;
        if (z10) {
            sp();
        }
    }

    private float c(float f10) {
        return TypedValue.applyDimension(1, f10, getResources().getDisplayMetrics());
    }
}
