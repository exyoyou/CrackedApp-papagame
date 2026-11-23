package com.kongzue.dialogx.util.views;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.Nullable;
import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.R;
import com.kongzue.dialogx.interfaces.b0;

/* JADX INFO: loaded from: classes3.dex */
public class NoArticulatedProgressView extends View implements b0 {
    public static final int C = 0;
    public static final int D = 1;
    public static final int E = 2;
    public static final int F = 3;
    public static final int G = 4;
    private Runnable A;
    private boolean B;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f74341b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f74342c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f74343d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ValueAnimator f74344e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ValueAnimator f74345f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f74346g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f74347h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f74348i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f74349j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f74350k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    Paint f74351l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f74352m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f74353n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f74354o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f74355p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private RectF f74356q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected float f74357r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f74358s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f74359t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f74360u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f74361v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f74362w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f74363x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private TimeInterpolator f74364y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Runnable f74365z;

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            NoArticulatedProgressView.this.f74346g = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            NoArticulatedProgressView.this.invalidate();
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            NoArticulatedProgressView.this.f74347h = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NoArticulatedProgressView.this.f74363x = 0;
            NoArticulatedProgressView.this.f74358s = 2;
            NoArticulatedProgressView.this.f74364y = new AccelerateDecelerateInterpolator();
            NoArticulatedProgressView.this.f74341b = 1;
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NoArticulatedProgressView.this.f74363x = 0;
            NoArticulatedProgressView.this.f74358s = 2;
            NoArticulatedProgressView.this.f74364y = new DecelerateInterpolator(2.0f);
            NoArticulatedProgressView.this.f74341b = 2;
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            NoArticulatedProgressView.this.f74363x = 0;
            NoArticulatedProgressView.this.f74358s = 2;
            NoArticulatedProgressView.this.f74364y = new DecelerateInterpolator(2.0f);
            NoArticulatedProgressView.this.f74341b = 3;
        }
    }

    class f implements ValueAnimator.AnimatorUpdateListener {
        f() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            NoArticulatedProgressView.this.f74346g = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            NoArticulatedProgressView.this.invalidate();
        }
    }

    public NoArticulatedProgressView(Context context) {
        super(context);
        this.f74341b = 0;
        this.f74342c = l(2.0f);
        this.f74343d = -1;
        this.f74348i = 180.0f;
        this.f74349j = 80.0f;
        this.f74351l = new Paint();
        this.f74352m = false;
        this.f74355p = 100.0f;
        this.f74358s = 0;
        this.f74359t = 0;
        this.f74360u = 0;
        this.f74361v = 0;
        this.f74362w = 0;
        this.f74363x = 0;
        n(null);
    }

    private int l(float f10) {
        return (int) ((f10 * Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    private void m(int i10, Canvas canvas) {
        TimeInterpolator interpolator = this.f74344e.getInterpolator();
        TimeInterpolator timeInterpolator = this.f74364y;
        if (interpolator != timeInterpolator) {
            this.f74344e.setInterpolator(timeInterpolator);
        }
        Runnable runnable = this.A;
        if (runnable != null) {
            runnable.run();
            if (DialogX.G) {
                performHapticFeedback(0);
            }
            this.A = null;
        }
        if (i10 == 1) {
            r(canvas);
        } else if (i10 == 2) {
            s(canvas);
        } else {
            if (i10 != 3) {
                return;
            }
            q(canvas);
        }
    }

    private void n(AttributeSet attributeSet) {
        synchronized (NoArticulatedProgressView.class) {
            if (this.f74352m) {
                return;
            }
            this.f74352m = true;
            if (attributeSet != null) {
                TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ProgressView);
                this.f74342c = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ProgressView_progressStrokeWidth, l(2.0f));
                this.f74343d = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.ProgressView_progressStrokeColor, this.f74343d);
                typedArrayObtainStyledAttributes.recycle();
            }
            this.f74351l.setAntiAlias(true);
            this.f74351l.setStyle(Paint.Style.STROKE);
            this.f74351l.setStrokeWidth(this.f74342c);
            this.f74351l.setStrokeCap(Paint.Cap.ROUND);
            this.f74351l.setColor(this.f74343d);
            if (!isInEditMode()) {
                this.f74350k = (this.f74348i - this.f74349j) / 2.0f;
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 365.0f);
                this.f74344e = valueAnimatorOfFloat;
                valueAnimatorOfFloat.setDuration(1000L);
                this.f74344e.setInterpolator(new LinearInterpolator());
                this.f74344e.setRepeatCount(-1);
                this.f74344e.addUpdateListener(new a());
                ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, 365.0f);
                this.f74345f = valueAnimatorOfFloat2;
                valueAnimatorOfFloat2.setDuration(1500L);
                this.f74345f.setInterpolator(new LinearInterpolator());
                this.f74345f.setRepeatCount(-1);
                this.f74345f.addUpdateListener(new b());
                this.f74345f.start();
                this.f74344e.start();
            }
        }
    }

    private void q(Canvas canvas) {
        float f10 = this.f74353n;
        float f11 = this.f74355p;
        int i10 = (int) (f10 - ((f11 * 4.0f) / 10.0f));
        int i11 = (int) (f10 + ((f11 * 4.0f) / 10.0f));
        int i12 = (int) (this.f74354o - ((f11 * 4.0f) / 10.0f));
        int i13 = this.f74363x;
        if (i13 == 0) {
            int i14 = this.f74359t;
            if (i11 - i14 <= i10) {
                this.f74363x = 1;
                canvas.drawLine(i11, i12, i11 - i14, i12 + this.f74360u, this.f74351l);
                postInvalidateDelayed(150L);
                return;
            }
            this.f74359t = i14 + 4;
            this.f74360u += 4;
        } else if (i13 == 1) {
            int i15 = this.f74361v;
            if (i10 + i15 < i11) {
                this.f74361v = i15 + 4;
                this.f74362w += 4;
            }
            canvas.drawLine(i10, i12, i10 + this.f74361v, this.f74362w + i12, this.f74351l);
        }
        canvas.drawLine(i11, i12, i11 - this.f74359t, i12 + this.f74360u, this.f74351l);
        postInvalidateDelayed(1L);
    }

    private void r(Canvas canvas) {
        int i10;
        float f10 = this.f74353n;
        float f11 = this.f74355p;
        int i11 = (int) (f10 - ((1.0f * f11) / 2.0f));
        int i12 = (int) (f10 - (f11 / 10.0f));
        int i13 = (int) (f11 * 0.99f);
        int i14 = this.f74363x;
        if (i14 == 0) {
            int i15 = this.f74359t;
            if (i11 + i15 < i12) {
                this.f74359t = i15 + 2;
                this.f74360u += 2;
            } else {
                this.f74361v = i15;
                this.f74362w = this.f74360u;
                this.f74363x = 1;
            }
        } else if (i14 == 1 && (i10 = this.f74361v) < i13) {
            this.f74361v = i10 + 4;
            this.f74362w -= 5;
        }
        float f12 = this.f74354o;
        canvas.drawLine(i11, f12, this.f74359t + i11, f12 + this.f74360u, this.f74351l);
        float f13 = this.f74359t + i11;
        float f14 = this.f74354o;
        canvas.drawLine(f13, f14 + this.f74360u, i11 + this.f74361v, f14 + this.f74362w, this.f74351l);
        postInvalidateDelayed(1L);
    }

    private void s(Canvas canvas) {
        int i10 = (int) this.f74353n;
        float f10 = this.f74354o;
        float f11 = this.f74355p;
        int i11 = (int) (f10 - ((f11 * 1.0f) / 2.0f));
        int i12 = (int) (((1.0f * f11) / 8.0f) + f10);
        int i13 = (int) (f10 + ((f11 * 3.0f) / 7.0f));
        int i14 = this.f74363x;
        if (i14 == 0) {
            int i15 = this.f74360u;
            int i16 = i12 - i11;
            if (i15 < i16) {
                this.f74360u = i15 + 4;
            } else {
                this.f74360u = i16;
                this.f74363x = 1;
            }
        } else if (i14 == 1 && this.f74362w != i13) {
            float f12 = i10;
            canvas.drawLine(f12, i13, f12, i13 + 1, this.f74351l);
        }
        float f13 = i10;
        canvas.drawLine(f13, i11, f13, i11 + this.f74360u, this.f74351l);
        postInvalidateDelayed(this.f74363x == 1 ? 100L : 1L);
    }

    @Override // com.kongzue.dialogx.interfaces.b0
    public void a() {
        this.B = true;
    }

    @Override // com.kongzue.dialogx.interfaces.b0
    public void b() {
        if (this.f74341b == 4) {
            c(1.0f);
            this.f74365z = new d();
        } else {
            this.f74363x = 0;
            this.f74364y = new DecelerateInterpolator(2.0f);
            this.f74341b = 2;
            invalidate();
        }
    }

    @Override // com.kongzue.dialogx.interfaces.b0
    public void c(float f10) {
        ValueAnimator valueAnimator = this.f74344e;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.f74345f;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        if (this.f74341b != 4) {
            this.f74346g = 0.0f;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.f74346g, f10 * 365.0f);
        this.f74344e = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(1000L);
        this.f74344e.setInterpolator(new DecelerateInterpolator(2.0f));
        this.f74344e.setRepeatCount(0);
        this.f74344e.addUpdateListener(new f());
        this.f74344e.start();
        this.f74341b = 4;
    }

    @Override // com.kongzue.dialogx.interfaces.b0
    public void error() {
        if (this.f74341b == 4) {
            c(1.0f);
            this.f74365z = new e();
        } else {
            this.f74363x = 0;
            this.f74364y = new DecelerateInterpolator(2.0f);
            this.f74341b = 3;
            invalidate();
        }
    }

    public int getColor() {
        return this.f74343d;
    }

    public int getStatus() {
        return this.f74341b;
    }

    public int getStrokeWidth() {
        return this.f74342c;
    }

    @Override // com.kongzue.dialogx.interfaces.b0
    public void loading() {
        this.B = false;
        this.f74357r = 0.0f;
        this.f74358s = 0;
        this.f74359t = 0;
        this.f74360u = 0;
        this.f74361v = 0;
        this.f74362w = 0;
        this.f74341b = 0;
        ValueAnimator valueAnimator = this.f74344e;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.f74345f;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        this.f74352m = false;
        n(null);
    }

    @Override // com.kongzue.dialogx.interfaces.b0
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public NoArticulatedProgressView e(int i10) {
        this.f74343d = i10;
        Paint paint = this.f74351l;
        if (paint != null) {
            paint.setColor(i10);
        }
        return this;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        ValueAnimator valueAnimator = this.f74344e;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.f74345f;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawArc(this.f74356q, 0.0f, 365.0f, false, this.f74351l);
            return;
        }
        if (this.B) {
            canvas.drawArc(this.f74356q, 0.0f, 365.0f, false, this.f74351l);
            this.f74358s = 2;
            m(this.f74341b, canvas);
            return;
        }
        float fSin = ((float) (((double) this.f74350k) * Math.sin(Math.toRadians(this.f74347h)))) + this.f74350k + (this.f74349j / 2.0f);
        int i10 = this.f74341b;
        if (i10 == 0) {
            canvas.drawArc(this.f74356q, this.f74346g, -fSin, false, this.f74351l);
            return;
        }
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            canvas.drawArc(this.f74356q, 0.0f, 360.0f, false, this.f74351l);
            m(this.f74341b, canvas);
        } else {
            if (i10 != 4) {
                return;
            }
            canvas.drawArc(this.f74356q, -90.0f, this.f74346g, false, this.f74351l);
            Runnable runnable = this.f74365z;
            if (runnable != null) {
                runnable.run();
                this.f74365z = null;
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f74353n = (i10 * 1.0f) / 2.0f;
        this.f74354o = (i11 * 1.0f) / 2.0f;
        this.f74355p = (Math.min(getWidth(), getHeight()) / 2) - (this.f74342c / 2);
        float f10 = this.f74353n;
        float f11 = this.f74355p;
        float f12 = this.f74354o;
        this.f74356q = new RectF(f10 - f11, f12 - f11, f10 + f11, f12 + f11);
    }

    public NoArticulatedProgressView p(int i10) {
        this.f74342c = i10;
        Paint paint = this.f74351l;
        if (paint != null) {
            paint.setStrokeWidth(i10);
        }
        return this;
    }

    @Override // com.kongzue.dialogx.interfaces.b0
    public void success() {
        if (this.f74341b == 4) {
            c(1.0f);
            this.f74365z = new c();
        } else {
            this.f74363x = 0;
            this.f74364y = new AccelerateDecelerateInterpolator();
            this.f74341b = 1;
            invalidate();
        }
    }

    @Override // com.kongzue.dialogx.interfaces.b0
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public NoArticulatedProgressView d(Runnable runnable) {
        this.A = runnable;
        return this;
    }

    public NoArticulatedProgressView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f74341b = 0;
        this.f74342c = l(2.0f);
        this.f74343d = -1;
        this.f74348i = 180.0f;
        this.f74349j = 80.0f;
        this.f74351l = new Paint();
        this.f74352m = false;
        this.f74355p = 100.0f;
        this.f74358s = 0;
        this.f74359t = 0;
        this.f74360u = 0;
        this.f74361v = 0;
        this.f74362w = 0;
        this.f74363x = 0;
        n(attributeSet);
    }

    public NoArticulatedProgressView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f74341b = 0;
        this.f74342c = l(2.0f);
        this.f74343d = -1;
        this.f74348i = 180.0f;
        this.f74349j = 80.0f;
        this.f74351l = new Paint();
        this.f74352m = false;
        this.f74355p = 100.0f;
        this.f74358s = 0;
        this.f74359t = 0;
        this.f74360u = 0;
        this.f74361v = 0;
        this.f74362w = 0;
        this.f74363x = 0;
        n(attributeSet);
    }

    public NoArticulatedProgressView(Context context, @Nullable AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f74341b = 0;
        this.f74342c = l(2.0f);
        this.f74343d = -1;
        this.f74348i = 180.0f;
        this.f74349j = 80.0f;
        this.f74351l = new Paint();
        this.f74352m = false;
        this.f74355p = 100.0f;
        this.f74358s = 0;
        this.f74359t = 0;
        this.f74360u = 0;
        this.f74361v = 0;
        this.f74362w = 0;
        this.f74363x = 0;
        n(attributeSet);
    }
}
