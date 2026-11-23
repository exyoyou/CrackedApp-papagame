package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.czhj.sdk.common.utils.Dips;

/* JADX INFO: loaded from: classes5.dex */
public class ao extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Paint f79929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Path f79930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f79931c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RectF f79932d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RectF f79933e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RectF f79934f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f79935g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f79936h;

    public ao(Context context) {
        super(context);
    }

    private void a() {
        this.f79929a = new Paint();
        this.f79930b = new Path();
        int width = getWidth();
        int height = getHeight();
        int iDipsToIntPixels = Dips.dipsToIntPixels(1.0f, getContext());
        float f10 = iDipsToIntPixels;
        this.f79929a.setStrokeWidth(f10);
        float f11 = width;
        float f12 = f11 / (100.0f * f10);
        this.f79935g = (int) (15.0f * f12);
        this.f79936h = (int) (6.0f * f12);
        this.f79931c = Math.max((int) (f12 * f10 * 3.0f), iDipsToIntPixels * 2);
        float f13 = height;
        float f14 = 0.4f * f13;
        float f15 = (10.0f * f14) / 16.0f;
        float f16 = (f11 - f15) / 2.0f;
        float f17 = (f13 - f14) / 2.0f;
        this.f79934f = new RectF(f16, f17, f15 + f16, f14 + f17);
        RectF rectF = this.f79934f;
        float f18 = rectF.left;
        int i10 = this.f79931c;
        this.f79933e = new RectF(f18 + i10, rectF.top + i10, rectF.right - i10, rectF.bottom - (i10 * 3));
        RectF rectF2 = this.f79934f;
        float f19 = rectF2.left;
        float fWidth = rectF2.width();
        int i11 = this.f79931c;
        float f20 = f19 + ((fWidth - (i11 * 2)) / 2.2f);
        RectF rectF3 = this.f79934f;
        float f21 = rectF3.bottom - (i11 * 2);
        float f22 = rectF3.right;
        float fWidth2 = rectF3.width();
        int i12 = this.f79931c;
        this.f79932d = new RectF(f20, f21, f22 - ((fWidth2 - (i12 * 2)) / 2.2f), this.f79934f.bottom - i12);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        a(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        a();
    }

    public ao(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    private void a(Canvas canvas) {
        this.f79930b.reset();
        this.f79929a.setColor(-1);
        this.f79929a.setStyle(Paint.Style.FILL);
        Path path = this.f79930b;
        RectF rectF = this.f79934f;
        int i10 = this.f79935g;
        path.addRoundRect(rectF, i10, i10, Path.Direction.CW);
        Path path2 = this.f79930b;
        RectF rectF2 = this.f79933e;
        int i11 = this.f79936h;
        path2.addRoundRect(rectF2, i11, i11, Path.Direction.CCW);
        Path path3 = this.f79930b;
        RectF rectF3 = this.f79932d;
        int i12 = this.f79936h;
        path3.addRoundRect(rectF3, i12, i12, Path.Direction.CCW);
        this.f79930b.close();
        canvas.drawPath(this.f79930b, this.f79929a);
    }

    public ao(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
