package com.aggmoread.sdk.z.a.u;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import kotlinx.coroutines.internal.z;

/* JADX INFO: loaded from: classes7.dex */
public class s extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f4203a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f4204b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Paint f4205c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final RectF f4206d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f4207e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f4208f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f4209g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f4210h;

    public s(Context context, int i10) {
        super(context);
        this.f4210h = false;
        float f10 = i10 / 2.0f;
        this.f4203a = f10;
        float f11 = 0.75f * f10;
        this.f4204b = 0.06666667f * f10;
        setLayerType(1, null);
        Paint paint = new Paint();
        this.f4205c = paint;
        paint.setAntiAlias(true);
        paint.setDither(true);
        float f12 = f10 - f11;
        float f13 = f10 + f11;
        this.f4206d = new RectF(f12, f12, f13, f13);
    }

    public void a(int i10, int i11, int i12, int i13, float f10) {
        if (this.f4208f) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f4209g < 40) {
            return;
        }
        boolean z10 = f10 >= 0.5f;
        this.f4210h = z10;
        this.f4209g = jCurrentTimeMillis;
        if (z10) {
            f10 -= 0.5f;
        }
        float f11 = f10 * 60.0f * 2.0f;
        if (Math.abs(this.f4207e - f11) >= 1.0f || this.f4210h) {
            this.f4207e = f11;
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f10 = this.f4203a * 2.0f;
        int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, f10, f10, null, 31);
        this.f4205c.setStrokeWidth(this.f4204b);
        this.f4205c.setColor(z.f93551j);
        Paint paint = this.f4205c;
        Paint.Style style = Paint.Style.STROKE;
        paint.setStyle(style);
        Paint paint2 = this.f4205c;
        Paint.Cap cap = Paint.Cap.ROUND;
        paint2.setStrokeCap(cap);
        canvas.drawArc(this.f4206d, -150.0f, 120.0f, false, this.f4205c);
        this.f4205c.setStyle(style);
        this.f4205c.setStrokeCap(cap);
        this.f4205c.setColor(-1);
        this.f4205c.setStrokeWidth(this.f4204b);
        if (this.f4210h) {
            canvas.drawArc(this.f4206d, -150.0f, this.f4207e + 60.0f, false, this.f4205c);
        } else {
            RectF rectF = this.f4206d;
            float f11 = this.f4207e;
            canvas.drawArc(rectF, (-90.0f) - f11, f11, false, this.f4205c);
        }
        canvas.restoreToCount(iSaveLayer);
    }

    public void a(int i10, int i11, int i12, int i13, long j10) {
        this.f4208f = true;
        this.f4207e = 60.0f;
        invalidate();
    }
}
