package com.sigmob.sdk.base.views;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.czhj.sdk.common.utils.Dips;

/* JADX INFO: loaded from: classes5.dex */
public class ae extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f79855a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f79856b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f79857c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Paint f79858d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Path f79859e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Path f79860f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Path f79861g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private PointF f79862h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private PointF f79863i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private PointF f79864j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f79865k;

    public ae(Context context) {
        super(context);
        b();
    }

    private void c() {
        this.f79859e.reset();
        this.f79860f.reset();
        this.f79861g.reset();
        a(this.f79859e, this.f79862h);
        a(this.f79860f, this.f79863i);
        a(this.f79861g, this.f79864j);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.f79859e, this.f79856b);
        canvas.drawPath(this.f79860f, this.f79857c);
        canvas.drawPath(this.f79861g, this.f79858d);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        float f10 = w10 / 2.0f;
        float f11 = h10;
        float fDipsToIntPixels = Dips.dipsToIntPixels(13.0f, getContext());
        this.f79862h = new PointF(f10, this.f79855a + f11);
        this.f79863i = new PointF(f10, this.f79855a + f11 + fDipsToIntPixels);
        this.f79864j = new PointF(f10, f11 + this.f79855a + (fDipsToIntPixels * 2.0f));
        c();
        a();
    }

    public ae(Context context, AttributeSet attrs) {
        super(context, attrs);
        b();
    }

    private AnimatorSet a(final PointF point, final Paint paint, int duration) {
        int alpha = paint.getAlpha();
        float f10 = point.y;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f10, (f10 - getHeight()) - this.f79855a);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.a0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f79819b.a(point, valueAnimator);
            }
        });
        valueAnimatorOfFloat.setRepeatCount(-1);
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(alpha, 0);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.b0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f79960b.a(paint, valueAnimator);
            }
        });
        valueAnimatorOfInt.setRepeatCount(-1);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(((long) duration) * 1000);
        animatorSet.setInterpolator(new LinearInterpolator());
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfInt);
        return animatorSet;
    }

    private void b() {
        float fDipsToIntPixels = Dips.dipsToIntPixels(5.0f, getContext());
        this.f79855a = fDipsToIntPixels;
        this.f79865k = fDipsToIntPixels * 2.0f;
        Paint paint = new Paint(1);
        this.f79856b = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f79856b.setStrokeWidth(this.f79855a);
        this.f79856b.setColor(-1);
        this.f79856b.setAlpha(255);
        Paint paint2 = new Paint(1);
        this.f79857c = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        this.f79857c.setStrokeWidth(this.f79855a);
        this.f79857c.setColor(-1);
        this.f79857c.setAlpha(127);
        Paint paint3 = new Paint(1);
        this.f79858d = paint3;
        paint3.setStyle(Paint.Style.STROKE);
        this.f79858d.setStrokeWidth(this.f79855a);
        this.f79858d.setColor(-1);
        this.f79858d.setAlpha(76);
        this.f79859e = new Path();
        this.f79860f = new Path();
        this.f79861g = new Path();
    }

    public ae(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        b();
    }

    public void a() {
        AnimatorSet animatorSetA = a(this.f79862h, this.f79856b, 2);
        AnimatorSet animatorSetA2 = a(this.f79863i, this.f79857c, 2);
        AnimatorSet animatorSetA3 = a(this.f79864j, this.f79858d, 2);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(animatorSetA, animatorSetA2, animatorSetA3);
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Paint paint, ValueAnimator valueAnimator) {
        paint.setAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
        invalidate();
    }

    private void a(Path path, PointF point) {
        float fTan = (float) (((double) point.x) - (((double) this.f79865k) * Math.tan(2.0943951023931953d)));
        float f10 = point.y;
        float f11 = this.f79865k;
        float f12 = f10 + f11;
        float fTan2 = (float) (((double) point.x) + (((double) f11) * Math.tan(2.0943951023931953d)));
        float f13 = point.y + this.f79865k;
        path.moveTo(fTan, f12);
        path.lineTo(point.x, point.y);
        path.lineTo(fTan2, f13);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(PointF pointF, ValueAnimator valueAnimator) {
        pointF.y = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        c();
        invalidate();
    }
}
