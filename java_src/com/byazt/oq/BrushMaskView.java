package com.byazt.oq;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import com.byazt.nr.m;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.component.sdk.annotation.RequiresApi;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 1427})
public class BrushMaskView extends View {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f18187c = "BrushMaskView";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public BitmapDrawable f18188a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Paint f18189n;
    public Paint sp;
    public Paint tt;
    public Canvas uj;
    public Bitmap ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Paint f18190x;

    private void c(int i10, int i11) {
        if (i10 <= 0 || i11 <= 0) {
            return;
        }
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
            this.ve = bitmapCreateBitmap;
            Canvas canvas = this.uj;
            if (canvas == null) {
                this.uj = new Canvas(this.ve);
            } else {
                canvas.setBitmap(bitmapCreateBitmap);
            }
            this.uj.drawRoundRect(new RectF(0.0f, 0.0f, i10, i11), 120.0f, 120.0f, this.tt);
            if (this.f18188a != null) {
                this.f18188a.setBounds(new Rect(0, 0, i10, i11));
                this.f18188a.draw(this.uj);
            }
        } catch (Exception e10) {
            m.uj(f18187c, e10.getMessage());
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Bitmap bitmap = this.ve;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.f18189n);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        setMeasuredDimension(c(i10), c(i11));
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        c(i10, i11);
    }

    public void setEraserSize(float f10) {
        this.sp.setStrokeWidth(f10);
        this.f18190x.setStrokeWidth(f10);
    }

    public void setMaskColor(int i10) {
        this.tt.setColor(i10);
    }

    @RequiresApi(api = 21)
    public void setWatermark(int i10) {
        if (i10 == -1) {
            this.f18188a = null;
        } else {
            this.f18188a = new BitmapDrawable(BitmapFactory.decodeResource(getResources(), i10));
        }
    }

    private int c(int i10) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode == 1073741824) {
            return size;
        }
        if (mode == Integer.MIN_VALUE) {
            return Math.min(0, size);
        }
        return 0;
    }
}
