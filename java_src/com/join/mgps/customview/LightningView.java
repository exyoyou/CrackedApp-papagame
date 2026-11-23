package com.join.mgps.customview;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateInterpolator;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public class LightningView extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Shader f65200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Matrix f65201c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Paint f65202d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f65203e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f65204f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f65205g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f65206h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f65207i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Rect f65208j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ValueAnimator f65209k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f65210l;

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator animation) {
            float fFloatValue = ((Float) animation.getAnimatedValue()).floatValue();
            LightningView lightningView = LightningView.this;
            lightningView.f65205g = ((lightningView.f65203e * 4) * fFloatValue) - (LightningView.this.f65203e * 2);
            LightningView lightningView2 = LightningView.this;
            lightningView2.f65206h = lightningView2.f65204f * fFloatValue;
            if (LightningView.this.f65201c != null) {
                LightningView.this.f65201c.setTranslate(LightningView.this.f65205g, LightningView.this.f65206h);
            }
            if (LightningView.this.f65200b != null) {
                LightningView.this.f65200b.setLocalMatrix(LightningView.this.f65201c);
            }
            LightningView.this.invalidate();
        }
    }

    class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            LightningView.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            LightningView.this.f65207i = true;
            if (LightningView.this.f65209k != null) {
                LightningView.this.f65209k.start();
            }
        }
    }

    public LightningView(Context context) {
        super(context);
        this.f65203e = 0;
        this.f65204f = 0;
        this.f65205g = 0.0f;
        this.f65206h = 0.0f;
        this.f65207i = false;
        this.f65210l = true;
        k();
    }

    private void k() {
        this.f65208j = new Rect();
        this.f65202d = new Paint();
        l();
    }

    private void l() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f65209k = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(2000L);
        this.f65209k.setInterpolator(new AccelerateInterpolator());
        this.f65209k.addUpdateListener(new a());
        if (this.f65210l) {
            this.f65209k.setRepeatCount(-1);
            getViewTreeObserver().addOnGlobalLayoutListener(new b());
        }
    }

    public void m() {
        ValueAnimator valueAnimator;
        if (this.f65207i || (valueAnimator = this.f65209k) == null) {
            return;
        }
        this.f65207i = true;
        valueAnimator.start();
    }

    public void n() {
        ValueAnimator valueAnimator;
        if (!this.f65207i || (valueAnimator = this.f65209k) == null) {
            return;
        }
        this.f65207i = false;
        valueAnimator.cancel();
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f65207i || this.f65201c == null) {
            return;
        }
        canvas.drawCircle(getWidth() / 2, getHeight() / 2, getHeight() / 2, this.f65202d);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        this.f65208j.set(0, 0, getWidth(), getHeight());
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        if (this.f65203e == 0) {
            this.f65203e = getWidth();
            this.f65204f = getHeight();
            if (this.f65203e > 0) {
                LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, this.f65203e, this.f65204f / 3, new int[]{16777215, 1090519039, 16777215, 1090519039, 16777215, 16777215}, new float[]{0.0f, 0.45f, 0.46f, 0.75f, 0.76f, 1.0f}, Shader.TileMode.CLAMP);
                this.f65200b = linearGradient;
                this.f65202d.setShader(linearGradient);
                this.f65202d.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.LIGHTEN));
                Matrix matrix = new Matrix();
                this.f65201c = matrix;
                matrix.setTranslate(this.f65203e * (-2), this.f65204f);
                this.f65200b.setLocalMatrix(this.f65201c);
                this.f65208j.set(0, 0, w10, h10);
            }
        }
    }

    public void setAutoRun(boolean autoRun) {
        this.f65210l = autoRun;
    }

    public LightningView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f65203e = 0;
        this.f65204f = 0;
        this.f65205g = 0.0f;
        this.f65206h = 0.0f;
        this.f65207i = false;
        this.f65210l = true;
        k();
    }

    public LightningView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f65203e = 0;
        this.f65204f = 0;
        this.f65205g = 0.0f;
        this.f65206h = 0.0f;
        this.f65207i = false;
        this.f65210l = true;
        k();
    }
}
