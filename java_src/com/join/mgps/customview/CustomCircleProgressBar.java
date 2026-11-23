package com.join.mgps.customview;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.core.content.ContextCompat;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class CustomCircleProgressBar extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f64716b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f64717c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f64718d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f64719e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f64720f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f64721g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f64722h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f64723i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f64724j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Paint f64725k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f64726l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Rect f64727m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ValueAnimator f64728n;

    enum DirectionEnum {
        LEFT(0, 180.0f),
        TOP(1, 270.0f),
        RIGHT(2, 0.0f),
        BOTTOM(3, 90.0f);

        private final float degree;
        private final int direction;

        DirectionEnum(int direction, float degree) {
            this.direction = direction;
            this.degree = degree;
        }

        public boolean equalsDescription(int direction) {
            return this.direction == direction;
        }

        public float getDegree() {
            return this.degree;
        }

        public int getDirection() {
            return this.direction;
        }

        public static float getDegree(int direction) {
            DirectionEnum direction2 = getDirection(direction);
            if (direction2 == null) {
                return 0.0f;
            }
            return direction2.getDegree();
        }

        public static DirectionEnum getDirection(int direction) {
            for (DirectionEnum directionEnum : values()) {
                if (directionEnum.equalsDescription(direction)) {
                    return directionEnum;
                }
            }
            return RIGHT;
        }
    }

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator animation) {
            CustomCircleProgressBar.this.f64723i = ((Float) animation.getAnimatedValue()).floatValue();
            CustomCircleProgressBar.this.postInvalidate();
        }
    }

    public CustomCircleProgressBar(Context context) {
        this(context, null);
    }

    public static int b(Context context, float dp) {
        return (int) ((dp * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void c(float startProgress) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, startProgress);
        this.f64728n = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new a());
        this.f64728n.setStartDelay(500L);
        this.f64728n.setDuration(2000L);
        this.f64728n.setInterpolator(new LinearInterpolator());
        this.f64728n.start();
    }

    private String getProgressText() {
        return ((int) ((this.f64723i / this.f64722h) * 100.0f)) + "%";
    }

    public int getInsideColor() {
        return this.f64718d;
    }

    public synchronized int getMaxProgress() {
        return this.f64722h;
    }

    public int getOutsideColor() {
        return this.f64716b;
    }

    public float getOutsideRadius() {
        return this.f64717c;
    }

    public synchronized float getProgress() {
        return this.f64723i;
    }

    public int getProgressTextColor() {
        return this.f64719e;
    }

    public float getProgressTextSize() {
        return this.f64720f;
    }

    public float getProgressWidth() {
        return this.f64721g;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth() / 2;
        this.f64725k.setColor(this.f64718d);
        this.f64725k.setStyle(Paint.Style.STROKE);
        this.f64725k.setStrokeWidth(this.f64721g);
        this.f64725k.setAntiAlias(true);
        float f10 = width;
        canvas.drawCircle(f10, f10, this.f64717c, this.f64725k);
        this.f64725k.setColor(this.f64716b);
        float f11 = this.f64717c;
        canvas.drawArc(new RectF(f10 - f11, f10 - f11, f10 + f11, f10 + f11), DirectionEnum.getDegree(this.f64724j), (this.f64723i / this.f64722h) * 360.0f, false, this.f64725k);
        this.f64727m = new Rect();
        this.f64725k.setColor(this.f64719e);
        this.f64725k.setTextSize(this.f64720f);
        this.f64725k.setStrokeWidth(0.0f);
        String progressText = getProgressText();
        this.f64726l = progressText;
        this.f64725k.getTextBounds(progressText, 0, progressText.length(), this.f64727m);
        Paint.FontMetricsInt fontMetricsInt = this.f64725k.getFontMetricsInt();
        int measuredHeight = getMeasuredHeight() - fontMetricsInt.bottom;
        int i10 = fontMetricsInt.top;
        canvas.drawText(this.f64726l, (getMeasuredWidth() / 2) - (this.f64727m.width() / 2), ((measuredHeight + i10) / 2) - i10, this.f64725k);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        if (View.MeasureSpec.getMode(widthMeasureSpec) != 1073741824) {
            size = (int) ((this.f64717c * 2.0f) + this.f64721g);
        }
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        if (View.MeasureSpec.getMode(heightMeasureSpec) != 1073741824) {
            size2 = (int) ((this.f64717c * 2.0f) + this.f64721g);
        }
        setMeasuredDimension(size, size2);
    }

    public void setInsideColor(int insideColor) {
        this.f64718d = insideColor;
    }

    public synchronized void setMaxProgress(int maxProgress) {
        try {
            if (maxProgress < 0) {
                throw new IllegalArgumentException("maxProgress should not be less than 0");
            }
            this.f64722h = maxProgress;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setOutsideColor(int outsideColor) {
        this.f64716b = outsideColor;
    }

    public void setOutsideRadius(float outsideRadius) {
        this.f64717c = outsideRadius;
    }

    public synchronized void setProgress(int progress) {
        try {
            if (progress < 0) {
                throw new IllegalArgumentException("progress should not be less than 0");
            }
            int i10 = this.f64722h;
            if (progress > i10) {
                progress = i10;
            }
            this.f64723i = progress;
            postInvalidate();
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setProgressTextColor(int progressTextColor) {
        this.f64719e = progressTextColor;
    }

    public void setProgressTextSize(float progressTextSize) {
        this.f64720f = progressTextSize;
    }

    public void setProgressWidth(float progressWidth) {
        this.f64721g = progressWidth;
    }

    public CustomCircleProgressBar(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public CustomCircleProgressBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attrs, R.styleable.CustomCircleProgressBar, defStyleAttr, 0);
        this.f64716b = typedArrayObtainStyledAttributes.getColor(3, ContextCompat.getColor(getContext(), R.color.colorPrimary));
        this.f64717c = typedArrayObtainStyledAttributes.getDimension(4, b(getContext(), 60.0f));
        this.f64718d = typedArrayObtainStyledAttributes.getColor(1, ContextCompat.getColor(getContext(), R.color.inside_color));
        this.f64719e = typedArrayObtainStyledAttributes.getColor(6, ContextCompat.getColor(getContext(), R.color.colorPrimary));
        this.f64720f = typedArrayObtainStyledAttributes.getDimension(7, b(getContext(), 14.0f));
        this.f64721g = typedArrayObtainStyledAttributes.getDimension(8, b(getContext(), 10.0f));
        this.f64723i = typedArrayObtainStyledAttributes.getFloat(5, 50.0f);
        this.f64722h = typedArrayObtainStyledAttributes.getInt(2, 100);
        this.f64724j = typedArrayObtainStyledAttributes.getInt(0, 3);
        typedArrayObtainStyledAttributes.recycle();
        this.f64725k = new Paint();
    }
}
