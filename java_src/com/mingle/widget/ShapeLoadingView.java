package com.mingle.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.mingle.shapeloading.R;
import com.nineoldandroids.animation.e;

/* JADX INFO: loaded from: classes2.dex */
public class ShapeLoadingView extends View {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final float f75418n = 1.7320508f;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final float f75419o = 0.25555554f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Shape f75420b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Interpolator f75421c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private e f75422d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f75423e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f75424f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f75425g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f75426h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f75427i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Paint f75428j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f75429k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f75430l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f75431m;

    public enum Shape {
        SHAPE_TRIANGLE,
        SHAPE_RECT,
        SHAPE_CIRCLE
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f75432a;

        static {
            int[] iArr = new int[Shape.values().length];
            f75432a = iArr;
            try {
                iArr[Shape.SHAPE_TRIANGLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f75432a[Shape.SHAPE_CIRCLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f75432a[Shape.SHAPE_RECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public ShapeLoadingView(Context context) {
        super(context);
        this.f75420b = Shape.SHAPE_CIRCLE;
        this.f75421c = new DecelerateInterpolator();
        this.f75422d = new e();
        this.f75426h = 0.5522848f;
        this.f75427i = false;
        this.f75429k = 0.0f;
        this.f75430l = 0.0f;
        b();
    }

    private void b() {
        Paint paint = new Paint();
        this.f75428j = paint;
        Resources resources = getResources();
        int i10 = R.color.triangle;
        paint.setColor(resources.getColor(i10));
        this.f75428j.setAntiAlias(true);
        this.f75428j.setStyle(Paint.Style.FILL_AND_STROKE);
        setBackgroundColor(getResources().getColor(R.color.view_bg));
        this.f75423e = getResources().getColor(i10);
        this.f75424f = getResources().getColor(R.color.circle);
        this.f75425g = getResources().getColor(i10);
    }

    private float c(float f10) {
        return getWidth() * f10;
    }

    private float d(float f10) {
        return getHeight() * f10;
    }

    public void a() {
        this.f75427i = true;
        invalidate();
    }

    public Shape getShape() {
        return this.f75420b;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getVisibility() == 8) {
            return;
        }
        int i10 = a.f75432a[this.f75420b.ordinal()];
        if (i10 == 1) {
            if (!this.f75427i) {
                Path path = new Path();
                this.f75428j.setColor(getResources().getColor(R.color.triangle));
                path.moveTo(c(0.5f), d(0.0f));
                path.lineTo(c(1.0f), d(0.8660254f));
                path.lineTo(c(0.0f), d(0.8660254f));
                this.f75429k = c(0.28349364f);
                this.f75430l = d(0.375f);
                this.f75431m = 0.0f;
                path.close();
                canvas.drawPath(path, this.f75428j);
                return;
            }
            float f10 = (float) (((double) this.f75431m) + 0.1611113d);
            this.f75431m = f10;
            this.f75428j.setColor(((Integer) this.f75422d.evaluate(f10, Integer.valueOf(this.f75423e), Integer.valueOf(this.f75424f))).intValue());
            Path path2 = new Path();
            path2.moveTo(c(0.5f), d(0.0f));
            if (this.f75431m >= 1.0f) {
                this.f75420b = Shape.SHAPE_CIRCLE;
                this.f75427i = false;
                this.f75431m = 1.0f;
            }
            float fC = this.f75429k - (c(this.f75431m * f75419o) * f75418n);
            float fD = this.f75430l - d(this.f75431m * f75419o);
            path2.quadTo(c(1.0f) - fC, fD, c(0.9330127f), d(0.75f));
            path2.quadTo(c(0.5f), d((this.f75431m * 2.0f * f75419o) + 0.75f), c(0.066987306f), d(0.75f));
            path2.quadTo(fC, fD, c(0.5f), d(0.0f));
            path2.close();
            canvas.drawPath(path2, this.f75428j);
            invalidate();
            return;
        }
        if (i10 != 2) {
            if (i10 != 3) {
                return;
            }
            if (!this.f75427i) {
                this.f75428j.setColor(getResources().getColor(R.color.rect));
                this.f75429k = c(0.066987306f);
                this.f75430l = d(0.75f);
                Path path3 = new Path();
                path3.moveTo(c(0.0f), d(0.0f));
                path3.lineTo(c(1.0f), d(0.0f));
                path3.lineTo(c(1.0f), d(1.0f));
                path3.lineTo(c(0.0f), d(1.0f));
                path3.close();
                this.f75431m = 0.0f;
                canvas.drawPath(path3, this.f75428j);
                return;
            }
            float f11 = (float) (((double) this.f75431m) + 0.15d);
            this.f75431m = f11;
            if (f11 >= 1.0f) {
                this.f75420b = Shape.SHAPE_TRIANGLE;
                this.f75427i = false;
                this.f75431m = 1.0f;
            }
            this.f75428j.setColor(((Integer) this.f75422d.evaluate(this.f75431m, Integer.valueOf(this.f75425g), Integer.valueOf(this.f75423e))).intValue());
            Path path4 = new Path();
            path4.moveTo(c(this.f75431m * 0.5f), 0.0f);
            path4.lineTo(d(1.0f - (this.f75431m * 0.5f)), 0.0f);
            float f12 = this.f75429k * this.f75431m;
            float fD2 = (d(1.0f) - this.f75430l) * this.f75431m;
            path4.lineTo(c(1.0f) - f12, d(1.0f) - fD2);
            path4.lineTo(c(0.0f) + f12, d(1.0f) - fD2);
            path4.close();
            canvas.drawPath(path4, this.f75428j);
            invalidate();
            return;
        }
        if (!this.f75427i) {
            this.f75428j.setColor(getResources().getColor(R.color.circle));
            Path path5 = new Path();
            float f13 = this.f75426h;
            path5.moveTo(c(0.5f), d(0.0f));
            float f14 = f13 / 2.0f;
            float f15 = f14 + 0.5f;
            path5.cubicTo(c(f15), 0.0f, c(1.0f), d(f14), c(1.0f), d(0.5f));
            path5.cubicTo(c(1.0f), c(f15), c(f15), d(1.0f), c(0.5f), d(1.0f));
            float f16 = 0.5f - f14;
            path5.cubicTo(c(f16), c(1.0f), c(0.0f), d(f15), c(0.0f), d(0.5f));
            path5.cubicTo(c(0.0f), c(f16), c(f16), d(0.0f), c(0.5f), d(0.0f));
            this.f75431m = 0.0f;
            path5.close();
            canvas.drawPath(path5, this.f75428j);
            return;
        }
        float f17 = this.f75426h;
        float f18 = this.f75431m;
        float f19 = f17 + f18;
        float f20 = (float) (((double) f18) + 0.12d);
        this.f75431m = f20;
        if (f19 + f20 >= 1.9f) {
            this.f75420b = Shape.SHAPE_RECT;
            this.f75427i = false;
        }
        this.f75428j.setColor(((Integer) this.f75422d.evaluate(f20, Integer.valueOf(this.f75424f), Integer.valueOf(this.f75425g))).intValue());
        Path path6 = new Path();
        path6.moveTo(c(0.5f), d(0.0f));
        float f21 = f19 / 2.0f;
        float f22 = f21 + 0.5f;
        float f23 = 0.5f - f21;
        path6.cubicTo(c(f22), d(0.0f), c(1.0f), d(f23), c(1.0f), d(0.5f));
        path6.cubicTo(c(1.0f), c(f22), c(f22), d(1.0f), c(0.5f), d(1.0f));
        path6.cubicTo(c(f23), c(1.0f), c(0.0f), d(f22), c(0.0f), d(0.5f));
        path6.cubicTo(c(0.0f), c(f23), c(f23), d(0.0f), c(0.5f), d(0.0f));
        path6.close();
        canvas.drawPath(path6, this.f75428j);
        invalidate();
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        if (i10 == 0) {
            invalidate();
        }
    }

    public ShapeLoadingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f75420b = Shape.SHAPE_CIRCLE;
        this.f75421c = new DecelerateInterpolator();
        this.f75422d = new e();
        this.f75426h = 0.5522848f;
        this.f75427i = false;
        this.f75429k = 0.0f;
        this.f75430l = 0.0f;
        b();
    }

    public ShapeLoadingView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f75420b = Shape.SHAPE_CIRCLE;
        this.f75421c = new DecelerateInterpolator();
        this.f75422d = new e();
        this.f75426h = 0.5522848f;
        this.f75427i = false;
        this.f75429k = 0.0f;
        this.f75430l = 0.0f;
    }

    @TargetApi(21)
    public ShapeLoadingView(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f75420b = Shape.SHAPE_CIRCLE;
        this.f75421c = new DecelerateInterpolator();
        this.f75422d = new e();
        this.f75426h = 0.5522848f;
        this.f75427i = false;
        this.f75429k = 0.0f;
        this.f75430l = 0.0f;
        b();
    }
}
