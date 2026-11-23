package com.byazt.oq;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.Xfermode;
import android.view.View;
import com.byazt.nr.z;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 1711})
public class FlowLightView extends View {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f18227a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Rect f18228c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public Paint f18229da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Bitmap f18230i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f18231n;
    public Xfermode sl;
    public int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public PorterDuff.Mode f18232t;
    public Rect tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public LinearGradient f18233u;
    public int uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int[] f18234x;
    public final List<c> yp;

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 2286})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f18237c;
        public int tt = 0;

        public c(int i10) {
            this.f18237c = i10;
        }

        public void c() {
            this.tt += this.f18237c;
        }
    }

    public FlowLightView(Context context) {
        super(context);
        this.f18232t = PorterDuff.Mode.DST_IN;
        this.yp = new ArrayList();
        c();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Bitmap bitmap = this.f18230i;
        if (bitmap == null) {
            return;
        }
        canvas.drawBitmap(bitmap, this.f18228c, this.tt, this.f18229da);
        canvas.save();
        Iterator<c> it2 = this.yp.iterator();
        while (it2.hasNext()) {
            c next = it2.next();
            this.f18233u = new LinearGradient(next.tt, 0.0f, next.tt + this.sp, this.f18227a, this.f18234x, (float[]) null, Shader.TileMode.CLAMP);
            this.f18229da.setColor(-1);
            this.f18229da.setShader(this.f18233u);
            canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.f18229da);
            this.f18229da.setShader(null);
            next.c();
            if (next.tt > getWidth()) {
                it2.remove();
            }
        }
        this.f18229da.setXfermode(this.sl);
        canvas.drawBitmap(this.f18230i, this.f18228c, this.tt, this.f18229da);
        this.f18229da.setXfermode(null);
        canvas.restore();
        invalidate();
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (this.f18230i == null) {
            return;
        }
        this.f18228c = new Rect(0, 0, this.f18230i.getWidth(), this.f18230i.getHeight());
        this.tt = new Rect(0, 0, getWidth(), getHeight());
    }

    private void c() {
        this.ve = Color.parseColor("#00ffffff");
        this.uj = Color.parseColor("#ffffffff");
        int color = Color.parseColor("#00ffffff");
        this.f18231n = color;
        this.f18227a = 10;
        this.sp = 40;
        this.f18234x = new int[]{this.ve, this.uj, color};
        setLayerType(1, null);
        this.f18229da = new Paint(1);
        z.c(getContext(), "tt_splash_unlock_image_arrow", new com.byazt.qr.c<Bitmap>() { // from class: com.byazt.oq.FlowLightView.1
            @Override // com.byazt.qr.c
            public void c(Bitmap bitmap) {
                FlowLightView.this.f18230i = bitmap;
                FlowLightView.this.post(new Runnable() { // from class: com.byazt.oq.FlowLightView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        FlowLightView.this.invalidate();
                    }
                });
            }
        }, 320);
        this.sl = new PorterDuffXfermode(this.f18232t);
    }

    public void c(int i10) {
        this.yp.add(new c(i10));
        postInvalidate();
    }
}
