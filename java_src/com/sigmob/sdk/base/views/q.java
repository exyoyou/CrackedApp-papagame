package com.sigmob.sdk.base.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes5.dex */
public class q extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Paint f80222a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f80223b;

    public q(Context context, float rating) {
        super(context);
        this.f80222a = new Paint();
        this.f80223b = rating;
    }

    float a(int num) {
        return (float) Math.cos((((double) num) * 3.141592653589793d) / 180.0d);
    }

    float b(int num) {
        return (float) Math.sin((((double) num) * 3.141592653589793d) / 180.0d);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Path pathB;
        super.onDraw(canvas);
        int height = getHeight();
        int i10 = (int) this.f80223b;
        float f10 = height;
        float f11 = f10 / 3.0f;
        float fB = (b(18) * f11) / b(126);
        boolean z10 = true;
        this.f80222a.setAntiAlias(true);
        this.f80222a.setColor(Color.parseColor("#FFA500"));
        for (int i11 = i10; i11 > 0; i11--) {
            if (z10) {
                canvas.translate(f11 + 2.0f, f10 / 2.0f);
                z10 = false;
            } else {
                canvas.rotate(18.0f);
                canvas.translate(2.2f * f11, 0.0f);
            }
            canvas.rotate(-18.0f);
            Path pathB2 = b(f11, fB);
            this.f80222a.setStyle(Paint.Style.STROKE);
            canvas.drawPath(pathB2, this.f80222a);
            this.f80222a.setStyle(Paint.Style.FILL);
            canvas.drawPath(pathB2, this.f80222a);
        }
        float f12 = this.f80223b;
        float f13 = i10;
        if (f12 > f13) {
            float f14 = (f12 - f13) + 0.25f;
            if (f14 >= 1.0f) {
                canvas.rotate(18.0f);
                canvas.translate(f11 * 2.2f, 0.0f);
                canvas.rotate(-18.0f);
                pathB = b(f11, fB);
                this.f80222a.setStyle(Paint.Style.STROKE);
                this.f80222a.setColor(Color.parseColor("#FFA500"));
                canvas.drawPath(pathB, this.f80222a);
            } else {
                canvas.rotate(18.0f);
                if (f14 >= 0.5f) {
                    canvas.translate(f11 * 2.2f, 0.0f);
                    canvas.rotate(-18.0f);
                    Path pathB3 = b(f11, fB);
                    this.f80222a.setColor(Color.parseColor("#FFA500"));
                    this.f80222a.setStyle(Paint.Style.STROKE);
                    canvas.drawPath(pathB3, this.f80222a);
                    pathB = a(f11, fB);
                    this.f80222a.setColor(Color.parseColor("#FFA500"));
                } else {
                    canvas.translate(f11 * 2.2f, 0.0f);
                    canvas.rotate(-18.0f);
                    pathB = b(f11, fB);
                    this.f80222a.setStyle(Paint.Style.STROKE);
                    this.f80222a.setColor(Color.parseColor("#FFA500"));
                }
                canvas.drawPath(pathB, this.f80222a);
            }
            this.f80222a.setStyle(Paint.Style.FILL);
            canvas.drawPath(pathB, this.f80222a);
        }
        for (int i12 = (int) (5.0f - this.f80223b); i12 > 0; i12--) {
            canvas.rotate(18.0f);
            canvas.translate(f11 * 2.2f, 0.0f);
            canvas.rotate(-18.0f);
            Path pathB4 = b(f11, fB);
            this.f80222a.setStyle(Paint.Style.STROKE);
            this.f80222a.setColor(Color.parseColor("#FFA500"));
            canvas.drawPath(pathB4, this.f80222a);
        }
    }

    private Path a(float outR, float inR) {
        Path path = new Path();
        path.moveTo(a(MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE) * outR, b(MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE) * outR);
        path.lineTo(a(108) * inR, b(108) * inR);
        path.lineTo(a(144) * outR, b(144) * outR);
        path.lineTo(a(180) * inR, b(180) * inR);
        path.lineTo(a(216) * outR, outR * b(216));
        path.lineTo(a(252) * inR, inR * b(252));
        path.close();
        return path;
    }

    private Path b(float outR, float inR) {
        Path path = new Path();
        path.moveTo(a(0) * outR, b(0) * outR);
        path.lineTo(a(36) * inR, b(36) * inR);
        path.lineTo(a(72) * outR, b(72) * outR);
        path.lineTo(a(108) * inR, b(108) * inR);
        path.lineTo(a(144) * outR, b(144) * outR);
        path.lineTo(a(180) * inR, b(180) * inR);
        path.lineTo(a(216) * outR, b(216) * outR);
        path.lineTo(a(252) * inR, b(252) * inR);
        path.lineTo(a(MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE) * outR, outR * b(MediaPlayer.MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE));
        path.lineTo(a(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR) * inR, inR * b(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR));
        path.close();
        return path;
    }
}
