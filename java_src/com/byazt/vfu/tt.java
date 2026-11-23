package com.byazt.vfu;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_STOP_SOURCE_ASYNC, 13})
public class tt extends Drawable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Paint f21191c;
    public int tt;

    public tt(int i10) {
        this.tt = i10;
        Paint paint = new Paint();
        this.f21191c = paint;
        paint.setAntiAlias(true);
        this.f21191c.setFilterBitmap(true);
    }

    public void c(int i10) {
        this.f21191c.setColor(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawCircle(getBounds().centerX(), getBounds().centerY(), this.tt / 2.0f, this.f21191c);
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
        return this.f21191c.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f21191c.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f21191c.setColorFilter(colorFilter);
    }

    public void c(float f10) {
        this.f21191c.setStrokeWidth(f10);
    }
}
