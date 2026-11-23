package com.join.mgps.customview;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.internal.view.SupportMenu;
import com.haima.hmcp.Constants;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class WaterProgressView extends View {
    private static final int E = 20;
    private static final int F = 10;
    private int A;
    ValueAnimator B;
    ValueAnimator C;
    Paint D;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f66004b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f66005c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f66006d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f66007e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f66008f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f66009g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f66010h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f66011i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f66012j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f66013k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f66014l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f66015m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Paint f66016n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Paint f66017o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Paint f66018p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Paint f66019q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Path f66020r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Path f66021s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Rect f66022t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f66023u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f66024v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f66025w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f66026x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f66027y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f66028z;

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator animation) {
            WaterProgressView.this.f66023u = ((Integer) animation.getAnimatedValue()).intValue();
            WaterProgressView.this.invalidate(new Rect(0, 0, WaterProgressView.this.f66014l + 0, WaterProgressView.this.f66015m + 0));
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            WaterProgressView.this.f66010h = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            WaterProgressView.this.invalidate();
        }
    }

    public WaterProgressView(Context context) {
        this(context, null);
    }

    private void e(Canvas canvas) {
        canvas.save();
        for (int i10 = 0; i10 < 100; i10++) {
            if (i10 < this.f66010h) {
                this.f66016n.setColor(this.f66005c);
            } else {
                this.f66016n.setColor(this.f66004b);
            }
            canvas.rotate(3.6f, this.f66011i / 2, this.f66012j / 2);
            canvas.drawLine(this.f66011i / 2, getPaddingTop(), this.f66011i / 2, getPaddingTop() + 20, this.f66016n);
        }
        canvas.restore();
    }

    private void f(Canvas canvas) {
        this.f66019q.getTextBounds(this.f66010h + "%", 0, (this.f66010h + "%").length(), this.f66022t);
        canvas.drawText(this.f66010h + "%", (this.f66011i / 2) - (this.f66022t.width() / 2), this.f66012j / 2, this.f66019q);
    }

    private void g(Canvas canvas, boolean isRight2Left) {
        this.f66020r.reset();
        canvas.save();
        canvas.clipPath(this.f66020r);
        this.f66020r.addCircle(this.f66011i / 2, this.f66012j / 2, this.f66026x, Path.Direction.CCW);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            canvas.clipPath(this.f66020r);
        } else {
            canvas.clipPath(this.f66020r, Region.Op.REPLACE);
        }
        canvas.restore();
        this.f66020r.reset();
        this.f66020r.moveTo(0, this.f66028z);
        if (isRight2Left) {
            int i11 = 1;
            while (true) {
                int i12 = this.f66025w;
                if (i11 > i12 * 3) {
                    this.f66020r.lineTo(0 + (i12 * 2 * this.f66027y), 0.0f);
                    this.f66020r.lineTo(0.0f, 0.0f);
                    this.f66020r.close();
                    canvas.drawPath(this.f66020r, this.f66017o);
                    return;
                }
                int i13 = this.f66027y;
                int i14 = this.f66023u;
                int i15 = (((i13 * i11) + 0) - (i13 / 2)) - i14;
                if (i11 % 2 != 0) {
                    int i16 = this.f66028z;
                    this.f66020r.quadTo(i15, i16 - this.f66024v, ((i13 * i11) + 0) - i14, i16);
                } else {
                    int i17 = this.f66028z;
                    this.f66020r.quadTo(i15, i17 + this.f66024v, ((i13 * i11) + 0) - i14, i17);
                }
                i11++;
            }
        } else {
            this.f66021s.reset();
            canvas.save();
            canvas.clipPath(this.f66021s);
            this.f66021s.addCircle(this.f66011i / 2, this.f66012j / 2, this.f66026x, Path.Direction.CCW);
            if (i10 >= 26) {
                canvas.clipPath(this.f66021s);
            } else {
                canvas.clipPath(this.f66021s, Region.Op.REPLACE);
            }
            canvas.restore();
            this.f66021s.reset();
            this.f66021s.moveTo(0, this.f66028z);
            int i18 = (-this.f66025w) * 2;
            while (true) {
                int i19 = this.f66025w;
                if (i18 > i19) {
                    this.f66021s.lineTo(0 + (i19 * this.f66027y * 2), 0.0f);
                    this.f66021s.lineTo(0.0f, 0.0f);
                    this.f66021s.close();
                    canvas.drawPath(this.f66021s, this.f66018p);
                    return;
                }
                int i20 = this.f66027y;
                int i21 = this.f66023u;
                int i22 = (((i20 * i18) + 0) - (i20 / 2)) + i21;
                if (i18 % 2 != 0) {
                    int i23 = this.f66028z;
                    this.f66021s.quadTo(i22, i23 - this.f66024v, (i20 * i18) + 0 + i21, i23);
                } else {
                    int i24 = this.f66028z;
                    this.f66021s.quadTo(i22, i24 + this.f66024v, (i20 * i18) + 0 + i21, i24);
                }
                i18++;
            }
        }
    }

    private void h(Canvas canvas, boolean isRight2Left) {
        this.D.setStyle(Paint.Style.FILL);
        this.D.setColor(SupportMenu.CATEGORY_MASK);
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        Path path = new Path();
        path.addCircle(width / 2, height / 2, this.f66026x, Path.Direction.CW);
        new Path().addCircle(0.0f, 0.0f, this.f66026x, Path.Direction.CW);
        if (isRight2Left) {
            this.f66020r.reset();
            this.f66020r.moveTo(0, this.f66028z);
            int i10 = 1;
            while (true) {
                int i11 = this.f66025w;
                if (i10 > i11 * 3) {
                    this.f66020r.lineTo(0 + (i11 * 2 * this.f66027y), 0.0f);
                    this.f66020r.lineTo(0.0f, 0.0f);
                    this.f66020r.close();
                    path.op(this.f66020r, Path.Op.INTERSECT);
                    canvas.drawPath(path, this.f66017o);
                    return;
                }
                int i12 = this.f66027y;
                int i13 = this.f66023u;
                int i14 = (((i12 * i10) + 0) - (i12 / 2)) - i13;
                if (i10 % 2 != 0) {
                    int i15 = this.f66028z;
                    this.f66020r.quadTo(i14, i15 - this.f66024v, ((i12 * i10) + 0) - i13, i15);
                } else {
                    int i16 = this.f66028z;
                    this.f66020r.quadTo(i14, i16 + this.f66024v, ((i12 * i10) + 0) - i13, i16);
                }
                i10++;
            }
        } else {
            this.f66021s.reset();
            this.f66021s.moveTo(0, this.f66028z);
            int i17 = (-this.f66025w) * 2;
            while (true) {
                int i18 = this.f66025w;
                if (i17 > i18) {
                    this.f66021s.lineTo(0 + (i18 * this.f66027y * 2), 0.0f);
                    this.f66021s.lineTo(0.0f, 0.0f);
                    this.f66021s.close();
                    path.op(this.f66021s, Path.Op.INTERSECT);
                    canvas.drawPath(path, this.f66018p);
                    return;
                }
                int i19 = this.f66027y;
                int i20 = this.f66023u;
                int i21 = (((i19 * i17) + 0) - (i19 / 2)) + i20;
                if (i17 % 2 != 0) {
                    int i22 = this.f66028z;
                    this.f66021s.quadTo(i21, i22 - this.f66024v, (i19 * i17) + 0 + i20, i22);
                } else {
                    int i23 = this.f66028z;
                    this.f66021s.quadTo(i21, i23 + this.f66024v, (i19 * i17) + 0 + i20, i23);
                }
                i17++;
            }
        }
    }

    private void i() {
        Paint paint = new Paint();
        this.f66016n = paint;
        paint.setColor(this.f66004b);
        this.f66016n.setStyle(Paint.Style.STROKE);
        this.f66016n.setAntiAlias(true);
        Paint paint2 = new Paint(1);
        this.f66017o = paint2;
        paint2.setAntiAlias(true);
        this.f66017o.setColor(this.f66006d);
        this.f66017o.setStrokeWidth(3.0f);
        this.f66017o.setStyle(Paint.Style.FILL_AND_STROKE);
        Paint paint3 = new Paint();
        this.f66018p = paint3;
        paint3.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f66018p.setColor(this.f66007e);
        this.f66018p.setAntiAlias(true);
        Paint paint4 = new Paint();
        this.f66019q = paint4;
        paint4.setAntiAlias(true);
        this.f66019q.setColor(this.f66008f);
        this.f66019q.setTextSize(this.f66013k);
        this.f66022t = new Rect();
        this.f66019q.getTextBounds(this.f66010h + "%", 0, (this.f66010h + "%").length(), this.f66022t);
        this.f66020r = new Path();
        this.f66021s = new Path();
    }

    private void j() {
        int i10 = this.f66010h;
        if (i10 < 50) {
            if (i10 < 20) {
                this.f66024v = 30.0f;
                return;
            } else {
                this.f66024v = i10 * 0.7f;
                return;
            }
        }
        if (i10 > 80) {
            this.f66024v = 30.0f;
        } else {
            this.f66024v = (100 - i10) * 0.7f;
        }
    }

    private void m() {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, this.f66027y * this.f66025w * 2);
        this.B = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(this.A);
        this.B.setRepeatCount(-1);
        this.B.setInterpolator(new LinearInterpolator());
        this.B.addUpdateListener(new a());
        this.B.start();
    }

    @RequiresApi(api = 19)
    public void k() {
        this.B.pause();
    }

    @RequiresApi(api = 19)
    public void l() {
        this.B.resume();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int i10 = this.f66015m;
        this.f66028z = i10 - ((this.f66010h * i10) / 100);
        h(canvas, false);
        h(canvas, true);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int iMin = Math.min(size, View.MeasureSpec.getSize(heightMeasureSpec));
        if (mode == 1073741824) {
            this.f66011i = iMin;
        } else {
            this.f66011i = this.f66009g;
        }
        if (mode2 == 1073741824) {
            this.f66012j = iMin;
        } else {
            this.f66012j = this.f66009g;
        }
        int i10 = this.f66011i;
        this.f66014l = i10;
        int i11 = this.f66012j;
        this.f66015m = i11;
        this.f66027y = i10 / this.f66025w;
        this.f66026x = i10 / 2;
        setMeasuredDimension(i10, i11);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        this.f66011i = Math.min(w10, h10);
        int iMin = Math.min(w10, h10);
        this.f66012j = iMin;
        int i10 = this.f66011i;
        this.f66014l = i10;
        this.f66015m = iMin;
        this.f66027y = i10 / this.f66025w;
        this.f66026x = i10 / 2;
        m();
    }

    public void setProgress(int progress) {
        if (progress <= 0 || progress >= 100) {
            return;
        }
        this.f66010h = progress;
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(progress, progress);
        this.C = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(2000L);
        this.C.addUpdateListener(new b());
        this.C.start();
    }

    public void setWaveTime(int speed) {
        this.A = speed;
        ValueAnimator valueAnimator = this.B;
        if (valueAnimator != null) {
            valueAnimator.setDuration(speed);
            this.B.start();
        }
        invalidate();
    }

    public WaterProgressView(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public WaterProgressView(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f66009g = 300;
        this.f66010h = 0;
        this.f66023u = 0;
        this.f66024v = 30.0f;
        this.f66025w = 2;
        this.A = 2000;
        this.D = new Paint();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.WaterProgressView, defStyleAttr, 0);
        this.f66004b = typedArrayObtainStyledAttributes.getColor(1, -7829368);
        this.f66005c = typedArrayObtainStyledAttributes.getColor(2, -16776961);
        this.f66006d = typedArrayObtainStyledAttributes.getColor(0, -16776961);
        this.f66007e = typedArrayObtainStyledAttributes.getColor(3, Constants.LEVEL_SDK);
        this.f66008f = typedArrayObtainStyledAttributes.getColor(4, -16777216);
        this.f66013k = (int) typedArrayObtainStyledAttributes.getDimension(5, getResources().getDimensionPixelOffset(R.dimen.wdp32));
        this.f66024v = (int) typedArrayObtainStyledAttributes.getDimension(7, getResources().getDimensionPixelOffset(R.dimen.wdp10));
        this.f66025w = typedArrayObtainStyledAttributes.getInt(6, 2);
        typedArrayObtainStyledAttributes.recycle();
        i();
    }
}
