package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.logger.SigmobLogger;

/* JADX INFO: loaded from: classes5.dex */
public class ab extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f79823a = "ab";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f79824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RectF f79825c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Paint f79826d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f79827e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f79828f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f79829g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f79830h;

    public ab(Context context) {
        super(context);
        this.f79828f = 15;
        this.f79830h = "跳过";
    }

    private void a() {
        Paint paint = new Paint();
        this.f79824b = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f79824b.setColor(-1);
        int iAsIntPixels = Dips.asIntPixels(1.0f, getContext());
        this.f79829g = iAsIntPixels;
        this.f79824b.setStrokeWidth(iAsIntPixels);
        this.f79824b.setAlpha(127);
        Paint paint2 = new Paint();
        this.f79826d = paint2;
        paint2.setColor(-1);
        this.f79826d.setStyle(Paint.Style.FILL);
        this.f79826d.setTextSize(TypedValue.applyDimension(2, 12.0f, getResources().getDisplayMetrics()));
        this.f79827e = Dips.asIntPixels(10.0f, getContext());
        int i10 = this.f79829g;
        this.f79825c = new RectF(i10, i10, getWidth() - this.f79829g, getHeight() - this.f79829g);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        String strValueOf;
        float f10;
        super.onDraw(canvas);
        this.f79824b.setStyle(Paint.Style.FILL);
        this.f79824b.setColor(-16777216);
        this.f79824b.setAlpha(127);
        RectF rectF = this.f79825c;
        float f11 = rectF.right;
        canvas.drawRoundRect(rectF, f11 / 2.0f, f11 / 2.0f, this.f79824b);
        canvas.drawText(this.f79830h, this.f79827e, ((this.f79825c.bottom / 2.0f) + ((this.f79826d.getFontMetrics().bottom - this.f79826d.getFontMetrics().top) / 2.0f)) - this.f79826d.getFontMetrics().bottom, this.f79826d);
        this.f79824b.setStyle(Paint.Style.STROKE);
        this.f79824b.setColor(-1);
        int iAsIntPixels = Dips.asIntPixels(1.0f, getContext());
        this.f79829g = iAsIntPixels;
        this.f79824b.setStrokeWidth(iAsIntPixels);
        this.f79824b.setAlpha(127);
        RectF rectF2 = this.f79825c;
        float f12 = rectF2.right;
        canvas.drawRoundRect(rectF2, f12 / 2.0f, f12 / 2.0f, this.f79824b);
        float fMeasureText = this.f79827e + this.f79826d.measureText(this.f79830h) + (this.f79827e / 2.0f);
        int i10 = this.f79829g;
        canvas.drawLine(fMeasureText + (i10 * 2), i10 * 2, fMeasureText + (i10 * 2), this.f79825c.bottom - (i10 * 2), this.f79824b);
        int i11 = this.f79828f;
        if (i11 > 9) {
            strValueOf = String.valueOf(i11);
            f10 = this.f79827e / 2.0f;
        } else {
            strValueOf = String.valueOf(i11);
            f10 = this.f79827e;
        }
        canvas.drawText(strValueOf, fMeasureText + f10, ((this.f79825c.bottom / 2.0f) + ((this.f79826d.getFontMetrics().bottom - this.f79826d.getFontMetrics().top) / 2.0f)) - this.f79826d.getFontMetrics().bottom, this.f79826d);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        a();
    }

    public void setText(String txt) {
        this.f79830h = txt;
    }

    public ab(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f79828f = 15;
        this.f79830h = "跳过";
    }

    public void a(int countdown) {
        SigmobLogger.d(f79823a, "updateTimer: countdown = " + countdown, new Object[0]);
        this.f79828f = countdown;
        invalidate();
    }

    public ab(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f79828f = 15;
        this.f79830h = "跳过";
    }
}
