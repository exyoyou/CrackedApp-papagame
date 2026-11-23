package com.byazt.tm;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, 54})
public class ve extends Drawable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Paint f20329c;
    public int tt;
    public RectF uj;
    public int ve;

    public ve(int i10, int i11) {
        this.ve = i10;
        this.tt = i11;
        Paint paint = new Paint();
        this.f20329c = paint;
        paint.setColor(0);
        this.f20329c.setAntiAlias(true);
        this.f20329c.setShadowLayer(i11, 0.0f, 0.0f, -16777216);
        this.f20329c.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP));
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        RectF rectF = this.uj;
        int i10 = this.ve;
        canvas.drawRoundRect(rectF, i10, i10, this.f20329c);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f20329c.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i10, int i11, int i12, int i13) {
        super.setBounds(i10, i11, i12, i13);
        int i14 = this.tt;
        this.uj = new RectF(i10 + i14, i11 + i14, i12 - i14, i13 - i14);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f20329c.setColorFilter(colorFilter);
    }
}
