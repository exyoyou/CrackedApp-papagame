package com.byazt.sgn;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.view.animation.LinearInterpolator;
import android.widget.Button;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 211, 1371})
public class ShineButton extends Button {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float f19631a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Paint f19632c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ValueAnimator f19633n;
    public LinearGradient tt;
    public float uj;
    public Matrix ve;

    public ShineButton(Context context) {
        super(context);
        this.f19632c = new Paint(1);
        this.ve = new Matrix();
        this.uj = 0.0f;
        this.f19631a = 0.3f;
        c(context);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ValueAnimator valueAnimator = this.f19633n;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f19633n.removeAllListeners();
            this.f19633n.removeAllUpdateListeners();
            this.f19633n = null;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Matrix matrix = this.ve;
        float f10 = this.uj;
        matrix.setTranslate(f10, f10);
        this.tt.setLocalMatrix(this.ve);
        canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.f19632c);
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        float f10 = i11 * this.f19631a;
        float f11 = -f10;
        LinearGradient linearGradient = new LinearGradient(f11, f11, f10, f10, new int[]{0, Color.parseColor("#88ffffff"), Color.parseColor("#88ffffff"), 0}, new float[]{0.0f, 0.2f, 0.8f, 1.0f}, Shader.TileMode.CLAMP);
        this.tt = linearGradient;
        this.f19632c.setShader(linearGradient);
        c();
    }

    private void c(Context context) {
        this.f19632c.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_ATOP));
        this.f19632c.setColor(-1);
    }

    private void c() {
        ValueAnimator valueAnimator = this.f19633n;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f19633n.removeAllListeners();
            this.f19633n.removeAllUpdateListeners();
            this.f19633n = null;
        }
        float fSqrt = (float) Math.sqrt((getWidth() * getWidth()) + (getHeight() * getHeight()));
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(-fSqrt, fSqrt);
        this.f19633n = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(2000L);
        this.f19633n.setRepeatCount(-1);
        this.f19633n.setInterpolator(new LinearInterpolator());
        this.f19633n.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.byazt.sgn.ShineButton.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                ShineButton.this.uj = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                ShineButton.this.invalidate();
            }
        });
        this.f19633n.start();
    }
}
