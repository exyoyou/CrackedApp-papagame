package com.beizi.fusion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.beizi.fusion.R;

/* JADX INFO: loaded from: classes6.dex */
public class BackArrowView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f10744a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f10745b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f10746c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f10747d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f10748e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f10749f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f10750g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Paint f10751h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Path f10752i;

    public BackArrowView(Context context) {
        this(context, null);
    }

    private void a(Context context, @Nullable AttributeSet attributeSet, int i10) {
        b(context, attributeSet, i10);
        Paint paint = new Paint();
        this.f10751h = paint;
        paint.setColor(this.f10748e);
        this.f10751h.setStyle(Paint.Style.STROKE);
        this.f10751h.setAntiAlias(true);
        this.f10751h.setStrokeWidth(this.f10749f);
        this.f10751h.setStrokeJoin(Paint.Join.ROUND);
    }

    private void b(Context context, @Nullable AttributeSet attributeSet, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BeiZi_BackArrowView, i10, 0);
        this.f10748e = typedArrayObtainStyledAttributes.getColor(R.styleable.BeiZi_BackArrowView_beizi_bav_color, Color.argb(255, 0, 0, 0));
        this.f10749f = typedArrayObtainStyledAttributes.getDimension(R.styleable.BeiZi_BackArrowView_beizi_bav_stroke_width, dip2px(context, 2.0f));
        this.f10750g = typedArrayObtainStyledAttributes.getInt(R.styleable.BeiZi_BackArrowView_beizi_bav_arrow_style, 1);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static int dip2px(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.translate((this.f10744a / 2.0f) - this.f10746c, this.f10745b / 2);
        canvas.rotate(45.0f);
        if (this.f10752i == null) {
            this.f10752i = new Path();
        }
        this.f10752i.reset();
        this.f10752i.lineTo(0.0f, this.f10747d);
        this.f10752i.moveTo(0.0f, 0.0f);
        this.f10752i.lineTo(-this.f10747d, 0.0f);
        if (this.f10750g == 1) {
            this.f10752i.moveTo(0.0f, 0.0f);
            Path path = this.f10752i;
            float f10 = this.f10747d;
            path.lineTo(f10, -f10);
        }
        this.f10752i.close();
        canvas.drawPath(this.f10752i, this.f10751h);
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        setMeasuredDimension(a(i10), a(i11));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f10744a = i10;
        this.f10745b = i11;
        float fMin = Math.min(i10, i11) / 2.0f;
        int i14 = this.f10750g;
        if (i14 == 1) {
            this.f10746c = fMin / 3.0f;
        } else if (i14 == 2) {
            this.f10746c = fMin / 4.0f;
        }
        this.f10747d = fMin * 0.63f;
    }

    public void setViewColor(int i10) {
        Paint paint = this.f10751h;
        if (paint != null) {
            paint.setColor(i10);
            invalidate();
        }
    }

    public BackArrowView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BackArrowView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        a(context, attributeSet, i10);
    }

    private int a(int i10) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode == 1073741824) {
            return size;
        }
        if (mode == Integer.MIN_VALUE) {
            return Math.min(150, size);
        }
        return 150;
    }
}
