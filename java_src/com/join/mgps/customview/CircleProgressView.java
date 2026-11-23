package com.join.mgps.customview;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.BitmapFactory;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class CircleProgressView extends View {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f64476i = "progress";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f64477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RectF f64478c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Paint f64479d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f64480e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f64481f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int[] f64482g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f64483h;

    class a implements Interpolator {
        a() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float v10) {
            float f10 = 1.0f - v10;
            return 1.0f - ((f10 * f10) * f10);
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            CircleProgressView.this.f64477b = (((Float) valueAnimator.getAnimatedValue()).floatValue() * 360.0f) / 100.0f;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(CircleProgressView.this.f64477b);
            sb2.append("");
            CircleProgressView.this.invalidate();
        }
    }

    public CircleProgressView(Context context) {
        super(context);
        this.f64480e = 40;
        this.f64481f = 5;
    }

    public void c(float progress) {
        this.f64477b = progress;
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "progress", 0.0f, progress);
        objectAnimatorOfFloat.setDuration(1000L);
        objectAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        animatorSet.playTogether(objectAnimatorOfFloat);
        animatorSet.start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.f64479d.setShader(null);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        this.f64479d.setAntiAlias(true);
        this.f64479d.setStrokeWidth(1.0f);
        this.f64479d.setStyle(Paint.Style.FILL);
        this.f64479d.setStrokeCap(Paint.Cap.BUTT);
        this.f64479d.setColor(Color.parseColor("#000000"));
        new DisplayMetrics();
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        float f10 = displayMetrics.density;
        float f11 = (float) (((double) f10) * 3.5d);
        float f12 = (float) (((double) f10) * 2.5d);
        float f13 = measuredWidth;
        float f14 = f13 - f12;
        float f15 = measuredHeight;
        float f16 = f15 - f12;
        this.f64479d.setShader(new LinearGradient(f12, f12, f14, f16, new int[]{Color.parseColor("#FFFFFF"), Color.parseColor("#efefef")}, (float[]) null, Shader.TileMode.CLAMP));
        this.f64478c.set(f12, f12, f14, f16);
        canvas.drawArc(this.f64478c, 0.0f, 360.0f, false, this.f64479d);
        this.f64479d.setShader(null);
        this.f64479d.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f64479d.setColor(Color.parseColor("#cccccc"));
        this.f64479d.setMaskFilter(new BlurMaskFilter(f12, BlurMaskFilter.Blur.OUTER));
        this.f64478c.set(f12, f12, f14, f16);
        canvas.drawArc(this.f64478c, 0.0f, 360.0f, false, this.f64479d);
        this.f64479d.setColor(Color.parseColor("#DDDDDD"));
        float f17 = f12 + f11;
        float f18 = f17 + (this.f64481f / 2);
        this.f64479d.setStyle(Paint.Style.STROKE);
        this.f64479d.setStrokeWidth(this.f64481f);
        this.f64479d.setMaskFilter(null);
        float f19 = f13 - f18;
        float f20 = f15 - f18;
        this.f64478c.set(f18, f18, f19, f20);
        canvas.drawArc(this.f64478c, 0.0f, 360.0f, false, this.f64479d);
        this.f64479d.setColor(Color.parseColor("#000000"));
        this.f64479d.setStyle(Paint.Style.STROKE);
        this.f64479d.setStrokeWidth(1.0f);
        this.f64479d.setMaskFilter(new BlurMaskFilter(5.0f, BlurMaskFilter.Blur.INNER));
        this.f64478c.set(f17, f17, f13 - f17, f15 - f17);
        canvas.drawArc(this.f64478c, 0.0f, 360.0f, false, this.f64479d);
        float f21 = f11 + 5.0f + this.f64481f;
        this.f64479d.setMaskFilter(new BlurMaskFilter(5.0f, BlurMaskFilter.Blur.INNER));
        this.f64478c.set(f21, f21, f13 - f21, f15 - f21);
        canvas.drawArc(this.f64478c, 0.0f, 360.0f, false, this.f64479d);
        this.f64479d.setMaskFilter(null);
        this.f64479d.setColor(Color.parseColor("#f47500"));
        int i10 = measuredWidth / 2;
        float f22 = i10;
        canvas.drawBitmap(BitmapFactory.decodeResource(getResources(), R.drawable.wufan_name), f22 - (((displayMetrics.density * 35.0f) / 2.0f) / 2.0f), (measuredHeight * 70) / 110, this.f64479d);
        this.f64479d.setStrokeWidth(this.f64481f);
        this.f64479d.setStyle(Paint.Style.STROKE);
        this.f64478c.set(f18, f18, f19, f20);
        int[] iArr = this.f64482g;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        SweepGradient sweepGradient = new SweepGradient(f22, f22, iArr2, (float[]) null);
        int i11 = (int) ((1.0f - (this.f64477b / this.f64483h)) * 90.0f);
        float f23 = measuredHeight / 2;
        canvas.rotate((-90) - i11, f23, f23);
        this.f64479d.setStyle(Paint.Style.STROKE);
        this.f64479d.setShader(sweepGradient);
        canvas.drawArc(this.f64478c, 0.0f, this.f64477b, false, this.f64479d);
        canvas.rotate(i11 + 90, f23, f23);
        String str = (((int) Math.rint((this.f64477b * 100.0f) / 360.0f)) / 10.0f) + "";
        this.f64479d.setTextSize((((measuredHeight * 31) * 12) / 110) / 10);
        this.f64479d.setShader(new SweepGradient(f22, f22, Color.parseColor("#f47500"), Color.parseColor("#f47500")));
        int iMeasureText = (int) this.f64479d.measureText(str, 0, str.length());
        this.f64479d.setStyle(Paint.Style.FILL);
        this.f64479d.setTypeface(Typeface.create(Typeface.SANS_SERIF, 3));
        canvas.drawText(str, i10 - (iMeasureText / 2), (measuredHeight * 60) / 110, this.f64479d);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.f64480e <= 40) {
            this.f64480e = 40;
        }
        int i10 = this.f64480e;
        setMeasuredDimension(i10, i10);
    }

    public void setColors(int[] colors) {
        this.f64482g = colors;
    }

    public void setFirstProgressfloat(float progressValue) {
        this.f64483h = (360.0f * progressValue) / 100.0f;
        c(progressValue);
    }

    public void setProgress(float progressValue) {
        this.f64477b = (progressValue * 360.0f) / 100.0f;
        invalidate();
    }

    public void setValue(float value) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, value);
        valueAnimatorOfFloat.setDuration(1500L);
        valueAnimatorOfFloat.setInterpolator(new a());
        valueAnimatorOfFloat.addUpdateListener(new b());
        valueAnimatorOfFloat.start();
    }

    public CircleProgressView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f64480e = 40;
        this.f64481f = 5;
        try {
            setLayerType(1, null);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.CircleProgressView);
            int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 40);
            int dimensionPixelOffset2 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 40);
            this.f64480e = dimensionPixelOffset;
            this.f64481f = dimensionPixelOffset2;
            typedArrayObtainStyledAttributes.recycle();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f64479d = new Paint();
        this.f64478c = new RectF();
        this.f64477b = 50.0f;
    }
}
