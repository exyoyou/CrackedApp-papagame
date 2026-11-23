package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.czhj.sdk.common.utils.Dips;

/* JADX INFO: loaded from: classes5.dex */
public class i extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static float f80105a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f80106b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Path f80107c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PointF f80108d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f80109e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f80110f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f80111g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f80112h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Paint f80113i;

    public i(Context context) {
        super(context);
        a();
    }

    private void a() {
        this.f80106b = new Paint();
        this.f80113i = new Paint();
        f80105a = Dips.dipsToIntPixels(6.0f, getContext());
        this.f80106b.setColor(-1);
        this.f80106b.setStrokeWidth(f80105a);
        this.f80106b.setStyle(Paint.Style.STROKE);
        this.f80106b.setAntiAlias(true);
        this.f80113i.setAntiAlias(true);
        this.f80113i.setColor(-16777216);
        this.f80113i.setStyle(Paint.Style.FILL);
        this.f80113i.setAlpha(51);
    }

    private void b() {
        double d10 = 0.62831855f;
        this.f80109e = ((this.f80110f / 2.0f) * ((float) Math.tan(d10))) / ((float) Math.sin(d10));
        this.f80108d = new PointF(this.f80110f / 2.0f, this.f80109e + Dips.dipsToIntPixels(30.0f, getContext()));
        this.f80107c = new Path();
        PointF pointF = this.f80108d;
        float f10 = pointF.x;
        float f11 = this.f80109e;
        float f12 = pointF.y;
        this.f80107c.addArc(new RectF(f10 - f11, f12 - f11, f10 + f11, f12 + f11), 0.0f, -180.0f);
    }

    public float getLineWidth() {
        return this.f80106b.getStrokeWidth();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f80112h) {
            canvas.drawPath(this.f80107c, this.f80113i);
        }
        canvas.drawPath(this.f80107c, this.f80106b);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        super.onSizeChanged(w10, h10, oldw, oldh);
        this.f80110f = w10;
        this.f80111g = h10;
        b();
    }

    public void setLineWidth(float lineWidth) {
        this.f80106b.setStrokeWidth(lineWidth);
        invalidate();
    }

    public i(Context context, AttributeSet attrs) {
        super(context, attrs);
        a();
    }

    public void a(boolean isShow) {
        this.f80112h = isShow;
    }

    public i(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        a();
    }
}
