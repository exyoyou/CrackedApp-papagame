package com.byazt.be;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import com.byazt.sa.uj;
import com.byazt.xj.ve;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 798, 1691})
public class DislikeView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Paint f11910a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public uj f11911c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f11912i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Paint f11913n;
    public float sp;
    public int tt;
    public RectF uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Paint f11914x;

    public DislikeView(Context context) {
        super(context);
        c();
    }

    private void c() {
        Paint paint = new Paint();
        this.f11913n = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f11914x = paint2;
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.f11910a = paint3;
        paint3.setAntiAlias(true);
        setBackgroundColor(0);
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        uj ujVar = this.f11911c;
        if (ujVar != null) {
            ujVar.n();
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        uj ujVar = this.f11911c;
        if (ujVar != null) {
            ujVar.a();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        setBackgroundColor(0);
        RectF rectF = this.uj;
        float f10 = this.sp;
        canvas.drawRoundRect(rectF, f10, f10, this.f11910a);
        RectF rectF2 = this.uj;
        float f11 = this.sp;
        canvas.drawRoundRect(rectF2, f11, f11, this.f11913n);
        int i10 = this.tt;
        int i11 = this.ve;
        canvas.drawLine(i10 * 0.3f, i11 * 0.3f, i10 * 0.7f, i11 * 0.7f, this.f11914x);
        int i12 = this.tt;
        int i13 = this.ve;
        canvas.drawLine(i12 * 0.7f, i13 * 0.3f, i12 * 0.3f, i13 * 0.7f, this.f11914x);
    }

    @Override // android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        uj ujVar = this.f11911c;
        if (ujVar != null) {
            ujVar.c(i10, i11, i12, i13);
        }
        super.onLayout(z10, i10, i11, i12, i13);
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        uj ujVar = this.f11911c;
        if (ujVar != null) {
            int[] iArrC = ujVar.c(i10, i11);
            super.onMeasure(iArrC[0], iArrC[1]);
        } else {
            super.onMeasure(i10, i11);
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.tt = i10;
        this.ve = i11;
        int i14 = this.f11912i;
        this.uj = new RectF(i14, i14, this.tt - i14, this.ve - i14);
        uj ujVar = this.f11911c;
        if (ujVar != null) {
            ujVar.tt(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        uj ujVar = this.f11911c;
        if (ujVar != null) {
            ujVar.c(z10);
        }
    }

    public void setBgColor(int i10) {
        this.f11910a.setStyle(Paint.Style.FILL);
        this.f11910a.setColor(i10);
    }

    public void setDislikeColor(int i10) {
        this.f11914x.setColor(i10);
    }

    public void setDislikeWidth(int i10) {
        this.f11914x.setStrokeWidth(i10);
    }

    public void setRadius(float f10) {
        this.sp = f10;
    }

    public void setStrokeColor(int i10) {
        this.f11913n.setStyle(Paint.Style.STROKE);
        this.f11913n.setColor(i10);
    }

    public void setStrokeWidth(int i10) {
        this.f11913n.setStrokeWidth(i10);
        this.f11912i = i10;
    }

    public void c(ve veVar) {
        this.f11911c = veVar;
    }
}
