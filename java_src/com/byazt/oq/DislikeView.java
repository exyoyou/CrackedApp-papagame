package com.byazt.oq;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 1691})
public class DislikeView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f18208a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18209c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Paint f18210n;
    public Paint sp;
    public int tt;
    public Paint uj;
    public final RectF ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f18211x;

    public DislikeView(Context context) {
        super(context);
        this.ve = new RectF();
        c();
    }

    private void c() {
        Paint paint = new Paint();
        this.uj = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.sp = paint2;
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.f18210n = paint3;
        paint3.setAntiAlias(true);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.ve;
        int i10 = this.f18208a;
        canvas.drawRoundRect(rectF, i10, i10, this.f18210n);
        RectF rectF2 = this.ve;
        int i11 = this.f18208a;
        canvas.drawRoundRect(rectF2, i11, i11, this.uj);
        int i12 = this.f18209c;
        int i13 = this.tt;
        canvas.drawLine(i12 * 0.3f, i13 * 0.3f, i12 * 0.7f, i13 * 0.7f, this.sp);
        int i14 = this.f18209c;
        int i15 = this.tt;
        canvas.drawLine(i14 * 0.7f, i15 * 0.3f, i14 * 0.3f, i15 * 0.7f, this.sp);
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        this.f18209c = i10;
        this.tt = i11;
        RectF rectF = this.ve;
        int i14 = this.f18211x;
        rectF.set(i14, i14, i10 - i14, i11 - i14);
    }

    public void setBgColor(int i10) {
        this.f18210n.setStyle(Paint.Style.FILL);
        this.f18210n.setColor(i10);
    }

    public void setDislikeColor(int i10) {
        this.sp.setColor(i10);
    }

    public void setDislikeWidth(int i10) {
        this.sp.setStrokeWidth(i10);
    }

    public void setRadius(int i10) {
        this.f18208a = i10;
    }

    public void setStrokeColor(int i10) {
        this.uj.setStyle(Paint.Style.STROKE);
        this.uj.setColor(i10);
    }

    public void setStrokeWidth(int i10) {
        this.uj.setStrokeWidth(i10);
        this.f18211x = i10;
    }
}
