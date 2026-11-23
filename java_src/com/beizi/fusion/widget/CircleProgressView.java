package com.beizi.fusion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import com.beizi.fusion.R;

/* JADX INFO: loaded from: classes6.dex */
public class CircleProgressView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f10753a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f10754b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f10755c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Paint f10756d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f10757e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f10758f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f10759g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f10760h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f10761i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f10762j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f10763k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f10764l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f10765m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f10766n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f10767o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f10768p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f10769q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f10770r;

    public CircleProgressView(Context context) {
        this(context, null);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.BeiZiCircleProgressViewStyle, 0, 0);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        float fApplyDimension = TypedValue.applyDimension(1, 18.0f, displayMetrics);
        float fApplyDimension2 = TypedValue.applyDimension(1, 4.0f, displayMetrics);
        this.f10770r = TypedValue.applyDimension(1, 50.0f, displayMetrics);
        this.f10761i = typedArrayObtainStyledAttributes.getDimension(R.styleable.BeiZiCircleProgressViewStyle_adScopeRadius, fApplyDimension);
        this.f10763k = typedArrayObtainStyledAttributes.getDimension(R.styleable.BeiZiCircleProgressViewStyle_adScopeStrokeWidth, fApplyDimension2);
        this.f10757e = typedArrayObtainStyledAttributes.getColor(R.styleable.BeiZiCircleProgressViewStyle_adScopeCircleColor, 0);
        this.f10758f = typedArrayObtainStyledAttributes.getColor(R.styleable.BeiZiCircleProgressViewStyle_adScopeRingColor, -41216);
        this.f10759g = typedArrayObtainStyledAttributes.getColor(R.styleable.BeiZiCircleProgressViewStyle_adScopeTextColor, -1);
        this.f10760h = typedArrayObtainStyledAttributes.getColor(R.styleable.BeiZiCircleProgressViewStyle_adScopeRingBgColor, 1589427388);
        this.f10762j = this.f10761i + (this.f10763k / 2.0f);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.f10764l = getWidth() / 2;
        int height = getHeight() / 2;
        this.f10765m = height;
        canvas.drawCircle(this.f10764l, height, this.f10761i, this.f10753a);
        RectF rectF = new RectF();
        int i10 = this.f10764l;
        float f10 = this.f10762j;
        rectF.left = i10 - f10;
        int i11 = this.f10765m;
        rectF.top = i11 - f10;
        rectF.right = (f10 * 2.0f) + (i10 - f10);
        rectF.bottom = (f10 * 2.0f) + (i11 - f10);
        canvas.drawArc(rectF, 0.0f, 360.0f, false, this.f10755c);
        if (this.f10769q > 0) {
            RectF rectF2 = new RectF();
            int i12 = this.f10764l;
            float f11 = this.f10762j;
            rectF2.left = i12 - f11;
            int i13 = this.f10765m;
            rectF2.top = i13 - f11;
            rectF2.right = (f11 * 2.0f) + (i12 - f11);
            rectF2.bottom = (f11 * 2.0f) + (i13 - f11);
            canvas.drawArc(rectF2, -90.0f, (this.f10769q / this.f10768p) * 360.0f, false, this.f10754b);
            float fMeasureText = this.f10756d.measureText("跳过", 0, 2);
            this.f10766n = fMeasureText;
            canvas.drawText("跳过", this.f10764l - (fMeasureText / 2.0f), this.f10765m + (this.f10767o / 4.0f), this.f10756d);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mode != 1073741824) {
            size = (int) (getPaddingLeft() + this.f10770r + getPaddingRight());
        }
        if (mode2 != 1073741824) {
            size2 = (int) (getPaddingTop() + this.f10770r + getPaddingBottom());
        }
        setMeasuredDimension(size, size2);
    }

    public void setProgress(int i10) {
        this.f10769q = i10;
        postInvalidate();
    }

    public CircleProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10768p = 100;
        a(context, attributeSet);
        a();
    }

    private void a() {
        Paint paint = new Paint();
        this.f10753a = paint;
        paint.setAntiAlias(true);
        this.f10753a.setColor(this.f10757e);
        this.f10753a.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f10755c = paint2;
        paint2.setAntiAlias(true);
        this.f10755c.setColor(this.f10760h);
        this.f10755c.setStyle(Paint.Style.STROKE);
        this.f10755c.setStrokeWidth(this.f10763k);
        Paint paint3 = new Paint();
        this.f10754b = paint3;
        paint3.setAntiAlias(true);
        this.f10754b.setColor(this.f10758f);
        this.f10754b.setStyle(Paint.Style.STROKE);
        this.f10754b.setStrokeWidth(this.f10763k);
        this.f10754b.setStrokeCap(Paint.Cap.ROUND);
        Paint paint4 = new Paint();
        this.f10756d = paint4;
        paint4.setAntiAlias(true);
        this.f10756d.setStyle(Paint.Style.FILL);
        this.f10756d.setColor(this.f10759g);
        this.f10756d.setTextSize((this.f10761i * 3.0f) / 5.0f);
        this.f10756d.setShadowLayer(2.0f, 1.0f, 1.0f, Color.parseColor("#000000"));
        Paint.FontMetrics fontMetrics = this.f10756d.getFontMetrics();
        this.f10767o = (int) Math.ceil(fontMetrics.descent - fontMetrics.ascent);
    }
}
