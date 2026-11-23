package com.byazt.oq;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ImageDecoder;
import android.graphics.Movie;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.view.View;
import android.widget.ImageView;
import com.aggmoread.sdk.z.a.i.k;
import com.aggmoread.sdk.z.a.i.l;
import com.byazt.bwm.sp;
import com.byazt.nr.m;
import com.byazt.nr.x;
import com.byazt.or.n;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 1135})
@SuppressLint({"AppCompatCustomView"})
public class GifView extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f18238a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Movie f18239c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f18240da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f18241i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f18242n;
    public int sl;
    public float sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public volatile boolean f18243t;
    public long tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f18244u;
    public AnimatedImageDrawable uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f18245x;
    public boolean yp;

    interface c {
        void c(Drawable drawable);
    }

    public GifView(Context context) {
        super(context);
        this.f18242n = Build.VERSION.SDK_INT >= 28;
        this.f18238a = false;
        this.f18244u = true;
        this.yp = true;
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDrawable(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        setImageDrawable(drawable);
        if (Build.VERSION.SDK_INT >= 28 && k.a(drawable)) {
            AnimatedImageDrawable animatedImageDrawableA = l.a(drawable);
            this.uj = animatedImageDrawableA;
            if (!this.f18243t) {
                animatedImageDrawableA.start();
            }
            if (!this.yp) {
                animatedImageDrawableA.setRepeatCount(0);
            }
        }
        ve();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImageDecoder.Source tt(byte[] bArr) {
        FileOutputStream fileOutputStream;
        try {
            File fileC = c(getContext(), com.byazt.mf.c.c().ve().t() ? "GIF_AD_CACHE/" : "/GIF_CACHE/", "TT_GIF_FILE");
            fileOutputStream = new FileOutputStream(fileC);
            try {
                fileOutputStream.write(bArr, 0, bArr.length);
                if (Build.VERSION.SDK_INT >= 28) {
                    ImageDecoder.Source sourceCreateSource = ImageDecoder.createSource(fileC);
                    try {
                        fileOutputStream.close();
                    } catch (Throwable unused) {
                    }
                    return sourceCreateSource;
                }
            } catch (Throwable th) {
                th = th;
                try {
                    m.ve("GifView", "GifView  getSourceByFile fail : ", th);
                    return null;
                } finally {
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable unused2) {
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
        }
        return null;
    }

    private void uj() {
        if (this.f18239c == null) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        if (this.tt == 0) {
            this.tt = jUptimeMillis;
        }
        int iDuration = this.f18239c.duration();
        if (iDuration == 0) {
            iDuration = 1000;
        }
        if (this.yp || Math.abs(iDuration - this.ve) >= 60) {
            this.ve = (int) ((jUptimeMillis - this.tt) % ((long) iDuration));
        } else {
            this.ve = iDuration;
            this.f18243t = true;
        }
    }

    private void ve() {
        if (this.f18239c == null || this.f18242n || !this.f18244u) {
            return;
        }
        postInvalidateOnAnimation();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f18239c == null || this.f18242n) {
            super.onDraw(canvas);
            return;
        }
        try {
            if (this.f18243t) {
                c(canvas);
                return;
            }
            uj();
            c(canvas);
            ve();
        } catch (Throwable th) {
            m.ve("GifView", "onDraw->Throwable->", th);
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (this.f18239c != null && !this.f18242n) {
            this.sp = (getWidth() - this.f18240da) / 2.0f;
            this.f18245x = (getHeight() - this.sl) / 2.0f;
        }
        this.f18244u = getVisibility() == 0;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i10, int i11) {
        Movie movie;
        int size;
        int size2;
        super.onMeasure(i10, i11);
        if (this.f18242n || (movie = this.f18239c) == null) {
            return;
        }
        int iWidth = movie.width();
        int iHeight = this.f18239c.height();
        float fMax = 1.0f / Math.max((View.MeasureSpec.getMode(i10) == 0 || iWidth <= (size2 = View.MeasureSpec.getSize(i10))) ? 1.0f : iWidth / size2, (View.MeasureSpec.getMode(i11) == 0 || iHeight <= (size = View.MeasureSpec.getSize(i11))) ? 1.0f : iHeight / size);
        this.f18241i = fMax;
        int i12 = (int) (iWidth * fMax);
        this.f18240da = i12;
        int i13 = (int) (iHeight * fMax);
        this.sl = i13;
        setMeasuredDimension(i12, i13);
    }

    @Override // android.view.View
    @SuppressLint({"NewApi"})
    public void onScreenStateChanged(int i10) {
        super.onScreenStateChanged(i10);
        if (this.f18239c != null) {
            this.f18244u = i10 == 1;
            ve();
        }
    }

    @Override // android.view.View
    @SuppressLint({"NewApi"})
    public void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (this.f18239c != null) {
            this.f18244u = i10 == 0;
            ve();
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        if (this.f18239c != null) {
            this.f18244u = i10 == 0;
            ve();
        }
    }

    public void setRepeatConfig(boolean z10) {
        AnimatedImageDrawable animatedImageDrawable;
        this.yp = z10;
        if (z10) {
            return;
        }
        try {
            if (Build.VERSION.SDK_INT < 28 || (animatedImageDrawable = this.uj) == null) {
                return;
            }
            animatedImageDrawable.setRepeatCount(0);
        } catch (Exception e10) {
            m.ve("GifView", "setRepeatConfig error", e10);
        }
    }

    public void c() {
        if (this.f18242n) {
            return;
        }
        setLayerType(1, null);
    }

    public void c(byte[] bArr, boolean z10) {
        this.f18243t = z10;
        if (bArr == null) {
            return;
        }
        if (!this.f18242n) {
            this.f18239c = c(bArr);
        } else {
            c(bArr, new c() { // from class: com.byazt.oq.GifView.1
                @Override // com.byazt.oq.GifView.c
                public void c(final Drawable drawable) {
                    GifView.this.post(new Runnable() { // from class: com.byazt.oq.GifView.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            GifView.this.setDrawable(drawable);
                        }
                    });
                }
            });
        }
    }

    private Movie c(byte[] bArr) {
        try {
            return Movie.decodeByteArray(bArr, 0, bArr.length);
        } catch (Throwable unused) {
            return null;
        }
    }

    private void c(final byte[] bArr, final c cVar) {
        if (bArr == null) {
            return;
        }
        n.c(new sp("createGifApi28WithByteArrayBySafely") { // from class: com.byazt.oq.GifView.2
            @Override // java.lang.Runnable
            public void run() {
                c cVar2 = cVar;
                if (cVar2 != null) {
                    GifView gifView = GifView.this;
                    cVar2.c(gifView.c(gifView.tt(bArr)));
                }
            }
        }, 5);
    }

    public void tt() {
        if (this.f18239c == null || !this.f18243t) {
            return;
        }
        this.f18243t = false;
        if (!this.f18242n) {
            this.tt = SystemClock.uptimeMillis() - ((long) this.ve);
            invalidate();
            return;
        }
        AnimatedImageDrawable animatedImageDrawable = this.uj;
        if (animatedImageDrawable == null || animatedImageDrawable.isRunning()) {
            return;
        }
        this.uj.start();
    }

    public static File c(Context context, String str, String str2) {
        int iSl = com.byazt.mf.c.c().ve().sl();
        boolean zT = com.byazt.mf.c.c().ve().t();
        if (iSl == 1) {
            m.uj("splashLoadAd", "视频存储使用内部存储");
            return x.tt(context, zT, str, str2);
        }
        m.uj("splashLoadAd", "视频存储使用外存储");
        return x.c(context, zT, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable c(ImageDecoder.Source source) {
        try {
            if (Build.VERSION.SDK_INT < 28) {
                return null;
            }
            return ImageDecoder.decodeDrawable(source);
        } catch (Throwable unused) {
            return null;
        }
    }

    private void c(Canvas canvas) {
        Movie movie = this.f18239c;
        if (movie == null) {
            return;
        }
        movie.setTime(this.ve);
        float f10 = this.f18241i;
        if (f10 == 0.0f) {
            canvas.scale(1.0f, 1.0f);
            this.f18239c.draw(canvas, 0.0f, 0.0f);
        } else {
            canvas.scale(f10, f10);
            Movie movie2 = this.f18239c;
            float f11 = this.sp;
            float f12 = this.f18241i;
            movie2.draw(canvas, f11 / f12, this.f18245x / f12);
        }
        canvas.restore();
    }
}
