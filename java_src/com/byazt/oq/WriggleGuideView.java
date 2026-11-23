package com.byazt.oq;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import com.byazt.nr.z;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 2200})
public class WriggleGuideView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f18339a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18340c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public c f18341da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f18342i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Paint f18343n;
    public boolean sp;
    public int tt;
    public Bitmap uj;
    public Bitmap ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f18344x;

    public interface c {
    }

    private Bitmap ve(int i10, int i11) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(1);
        paint.setColor(-1);
        canvas.drawCircle(i10 / 2, 10.0f, this.f18339a, paint);
        return bitmapCreateBitmap;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f18341da != null) {
            this.f18341da = null;
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.sp) {
            this.f18340c = getWidth();
            int height = getHeight();
            this.tt = height;
            c(this.f18340c, height);
            tt(this.f18340c, this.tt);
            this.sp = false;
        }
        Bitmap bitmap = this.ve;
        if (bitmap == null || this.uj == null) {
            return;
        }
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.f18343n);
        int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null, 31);
        canvas.drawBitmap(this.uj, 0.0f, 0.0f, this.f18343n);
        this.f18343n.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(ve(this.f18340c, this.tt), 0.0f, 0.0f, this.f18343n);
        this.f18343n.setXfermode(null);
        canvas.restoreToCount(iSaveLayer);
        if (this.f18344x) {
            this.f18339a += 5;
            invalidate();
            if (this.f18339a >= this.f18340c) {
                this.f18344x = false;
            }
        }
    }

    private void c(final int i10, final int i11) {
        z.c(getContext(), "tt_wriggle_union", new com.byazt.qr.c<Bitmap>() { // from class: com.byazt.oq.WriggleGuideView.1
            @Override // com.byazt.qr.c
            public void c(Bitmap bitmap) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                if (bitmap != null) {
                    canvas.drawBitmap(bitmap, (Rect) null, new RectF(0.0f, 0.0f, i10, i11), WriggleGuideView.this.f18343n);
                }
                WriggleGuideView.this.ve = bitmapCreateBitmap;
                WriggleGuideView.this.c();
            }
        }, 320);
    }

    private void tt(final int i10, final int i11) {
        z.c(getContext(), "tt_wriggle_union_white", new com.byazt.qr.c<Bitmap>() { // from class: com.byazt.oq.WriggleGuideView.2
            @Override // com.byazt.qr.c
            public void c(Bitmap bitmap) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                Paint paint = new Paint(1);
                if (bitmap != null) {
                    canvas.drawBitmap(bitmap, (Rect) null, new RectF(0.0f, 0.0f, i10, i11), paint);
                }
                WriggleGuideView.this.uj = bitmapCreateBitmap;
                WriggleGuideView.this.c();
            }
        }, 320);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.ve == null || this.uj == null || this.f18342i) {
            return;
        }
        this.f18342i = true;
        post(new Runnable() { // from class: com.byazt.oq.WriggleGuideView.3
            @Override // java.lang.Runnable
            public void run() {
                WriggleGuideView.this.invalidate();
            }
        });
    }
}
