package com.byazt.vfu;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_STOP_SOURCE_ASYNC, 20})
public class c extends Drawable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Paint f21190c;
    public int tt;
    public float ve;

    public c(int i10) {
        this.tt = i10;
        Paint paint = new Paint();
        this.f21190c = paint;
        paint.setAntiAlias(true);
        this.f21190c.setFilterBitmap(true);
    }

    public void c(int i10) {
        this.f21190c.setColor(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float fCenterX = getBounds().centerX();
        float fCenterY = getBounds().centerY();
        float f10 = this.tt / 2.0f;
        float f11 = fCenterX - ((3.0f * f10) / 4.0f);
        float f12 = fCenterX + (f10 / 4.0f);
        float f13 = f12 - f11;
        canvas.drawLine(f11, fCenterY + (this.ve / 4.0f), f12, fCenterY - f13, this.f21190c);
        canvas.drawLine(f11, fCenterY - (this.ve / 4.0f), f12, f13 + fCenterY, this.f21190c);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) (((double) this.tt) * 1.3d);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) (((double) this.tt) * 1.3d);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f21190c.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f21190c.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f21190c.setColorFilter(colorFilter);
    }

    public void c(float f10) {
        this.f21190c.setStrokeWidth(f10);
        this.ve = f10;
    }
}
