package com.byazt.vfu;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_STOP_SOURCE_ASYNC, 54})
public class ve extends Drawable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Paint f21193c;
    public int tt;

    public ve(int i10) {
        this.tt = i10;
        Paint paint = new Paint();
        this.f21193c = paint;
        paint.setAntiAlias(true);
        this.f21193c.setFilterBitmap(true);
    }

    public void c(int i10) {
        this.f21193c.setColor(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float fCenterX = getBounds().centerX();
        float fCenterY = getBounds().centerY();
        float f10 = ((this.tt / 2.0f) * 3.0f) / 4.0f;
        float f11 = fCenterX - f10;
        float f12 = fCenterY - f10;
        float f13 = fCenterX + f10;
        float f14 = fCenterY + f10;
        canvas.drawLine(f11, f12, f13, f14, this.f21193c);
        canvas.drawLine(f13, f12, f11, f14, this.f21193c);
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
        return this.f21193c.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f21193c.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f21193c.setColorFilter(colorFilter);
    }

    public void c(float f10) {
        this.f21193c.setStrokeWidth(f10);
    }
}
