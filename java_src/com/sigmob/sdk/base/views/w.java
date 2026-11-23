package com.sigmob.sdk.base.views;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import com.czhj.sdk.common.utils.Dips;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public class w extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f80258a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f80259b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f80260c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Paint f80261d;
    private String description;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Paint f80262e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RectF f80263f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private RectF f80264g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private RectF f80265h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Path f80266i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f80267j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f80268k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f80269l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f80270m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f80271n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f80272o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Handler f80273p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f80274q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f80275r;
    private String title;

    public w(Context context) {
        super(context);
        this.f80273p = new Handler(Looper.getMainLooper());
        this.f80274q = Color.parseColor("#FF5A57");
        c();
    }

    private Animator a(final RectF rect, final Paint paint, int duration, int delayTime) {
        AnimatorSet animatorSet = new AnimatorSet();
        final RectF rectF = new RectF(rect.left, rect.top, rect.right, rect.bottom);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, Dips.dipsToIntPixels(20.0f, getContext()));
        long j10 = delayTime;
        valueAnimatorOfFloat.setStartDelay(j10);
        valueAnimatorOfFloat.setDuration(duration);
        valueAnimatorOfFloat.setInterpolator(new AccelerateInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.w.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                w.this.a(rectF, rect, ((Float) valueAnimator.getAnimatedValue()).floatValue());
                w.this.invalidate();
            }
        });
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(255, 0);
        valueAnimatorOfInt.setStartDelay(j10);
        valueAnimatorOfInt.setDuration((long) (duration * 0.8f));
        valueAnimatorOfInt.setInterpolator(new AccelerateInterpolator());
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.w.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                paint.setAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
                w.this.invalidate();
            }
        });
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfInt);
        return animatorSet;
    }

    private void c() {
        this.f80275r = Dips.dipsToIntPixels(2.0f, getContext());
        Paint paint = new Paint(1);
        this.f80258a = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f80258a.setStrokeWidth(this.f80275r);
        this.f80258a.setColor(-1);
        this.f80271n = Dips.dipsToIntPixels(20.0f, getContext());
        this.f80259b = new Paint(this.f80258a);
        Paint paint2 = new Paint(this.f80258a);
        this.f80260c = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.f80260c.setColor(this.f80274q);
        Paint paint3 = new Paint(1);
        this.f80261d = paint3;
        paint3.setColor(-1);
        this.f80261d.setTypeface(Typeface.DEFAULT);
        this.f80261d.setTextSize(TypedValue.applyDimension(2, 20.0f, getResources().getDisplayMetrics()));
        Paint paint4 = new Paint(1);
        this.f80262e = paint4;
        paint4.setColor(-1);
        this.f80262e.setAlpha(127);
        this.f80262e.setStyle(Paint.Style.FILL);
        this.f80266i = new Path();
        this.f80263f = new RectF();
        this.f80264g = new RectF();
        this.f80265h = new RectF();
    }

    private void d() {
        this.f80266i.reset();
        this.f80266i.moveTo(0.0f, 0.0f);
        this.f80266i.lineTo(0.0f, this.f80272o);
        Path path = this.f80266i;
        float f10 = this.f80272o;
        path.lineTo(f10 / 2.0f, f10 / 2.0f);
        this.f80266i.close();
    }

    public void b() {
        this.f80263f.set(0.0f, 0.0f, getWidth(), getHeight());
        this.f80264g.set(0.0f, 0.0f, getWidth(), getHeight());
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Handler handler = this.f80273p;
        if (handler == null) {
            return;
        }
        handler.removeCallbacksAndMessages(null);
        this.f80273p = null;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.f80263f;
        canvas.drawRoundRect(rectF, rectF.height() / 2.0f, this.f80263f.height() / 2.0f, this.f80258a);
        RectF rectF2 = this.f80264g;
        canvas.drawRoundRect(rectF2, rectF2.height() / 2.0f, this.f80264g.height() / 2.0f, this.f80259b);
        RectF rectF3 = this.f80265h;
        canvas.drawRoundRect(rectF3, rectF3.height() / 2.0f, this.f80265h.height() / 2.0f, this.f80260c);
        float width = (getWidth() / 2.0f) + (this.f80269l / 2.0f) + (this.f80275r * 2);
        if (!TextUtils.isEmpty(this.title)) {
            float width2 = (getWidth() / 2.0f) - (this.f80269l / 2.0f);
            canvas.drawText(this.title, width2, ((getHeight() / 2.0f) - (this.f80270m / 2.0f)) - this.f80261d.ascent(), this.f80261d);
            width = width2 + this.f80261d.measureText(this.title) + (this.f80275r * 2);
        }
        float height = (getHeight() / 2.0f) - (this.f80272o / 2.0f);
        canvas.save();
        canvas.translate(width, height);
        canvas.drawPath(this.f80266i, this.f80262e);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        float f10 = w10;
        float f11 = f10 / 4.0f;
        this.f80267j = f11;
        float f12 = h10;
        float f13 = f12 / 3.0f;
        this.f80268k = f13;
        this.f80263f.set(f11 / 2.0f, f13 / 2.0f, f10 - (f11 / 2.0f), f12 - (f13 / 2.0f));
        RectF rectF = this.f80264g;
        float f14 = this.f80267j;
        float f15 = this.f80268k;
        rectF.set(f14 / 2.0f, f15 / 2.0f, f10 - (f14 / 2.0f), f12 - (f15 / 2.0f));
        RectF rectF2 = this.f80265h;
        float f16 = this.f80267j;
        float f17 = this.f80268k;
        rectF2.set(f16 / 2.0f, f17 / 2.0f, f10 - (f16 / 2.0f), f12 - (f17 / 2.0f));
        if (!TextUtils.isEmpty(this.title)) {
            for (int i10 = 5; i10 < this.title.length(); i10++) {
                float fMeasureText = this.f80261d.measureText(this.title, 0, i10);
                RectF rectF3 = this.f80263f;
                if (fMeasureText > (rectF3.right - rectF3.left) - (this.f80271n * 4.0f)) {
                    this.title = this.title.substring(0, i10 - 2) + "...";
                    break;
                }
            }
            this.f80269l = this.f80261d.measureText(this.title);
            this.f80270m = this.f80261d.descent() - this.f80261d.ascent();
        }
        this.f80272o = this.f80270m * 0.6f;
        d();
        a();
    }

    public void setButtonColor(int color) {
        this.f80274q = color;
    }

    public w(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f80273p = new Handler(Looper.getMainLooper());
        this.f80274q = Color.parseColor("#FF5A57");
        c();
    }

    public w(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f80273p = new Handler(Looper.getMainLooper());
        this.f80274q = Color.parseColor("#FF5A57");
        c();
    }

    public void a() {
        Animator animatorA = a(this.f80263f, this.f80258a, 1000, 0);
        Animator animatorA2 = a(this.f80264g, this.f80259b, 800, 400);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(animatorA, animatorA2);
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.sigmob.sdk.base.views.w.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(final Animator animator) {
                if (w.this.f80273p == null) {
                    return;
                }
                Handler handler = w.this.f80273p;
                Objects.requireNonNull(animator);
                handler.postDelayed(new Runnable() { // from class: com.sigmob.sdk.base.views.p0
                    @Override // java.lang.Runnable
                    public final void run() {
                        animator.start();
                    }
                }, 300L);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(RectF source, RectF dest, float factor) {
        dest.left = source.left - factor;
        dest.top = source.top - factor;
        dest.right = source.right + factor;
        dest.bottom = source.bottom + factor;
    }

    public void a(String title, String description) {
        this.title = title;
        this.description = description;
        invalidate();
    }
}
