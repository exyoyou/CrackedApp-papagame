package com.sigmob.sdk.base.views.gif;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.bykv.vk.component.ttvideo.player.C;

/* JADX INFO: loaded from: classes5.dex */
public class e extends ImageView implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f80079a = "GifDecoderView";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f80080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f80081c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f80082d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Thread f80083e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private c f80084f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f80085g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.sigmob.sdk.base.views.gif.a f80086h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Handler f80087i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f80088j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f80089k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Bitmap f80090l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Runnable f80091m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Runnable f80092n;

    public interface a {
        void a();
    }

    public interface b {
        void a();
    }

    public interface c {
        Bitmap onFrameAvailable(Bitmap bitmap);
    }

    public e(final Context context) {
        super(context);
        this.f80081c = null;
        this.f80082d = null;
        this.f80084f = null;
        this.f80085g = -1L;
        this.f80087i = new Handler(Looper.getMainLooper());
        this.f80091m = new Runnable() { // from class: com.sigmob.sdk.base.views.gif.e.1
            @Override // java.lang.Runnable
            public void run() {
                e.this.f80090l = null;
                e.this.f80086h = null;
                e.this.f80083e = null;
                e.this.f80089k = false;
            }
        };
        this.f80092n = new Runnable() { // from class: com.sigmob.sdk.base.views.gif.e.2
            @Override // java.lang.Runnable
            public void run() {
                if (e.this.f80090l == null || e.this.f80090l.isRecycled()) {
                    return;
                }
                e eVar = e.this;
                eVar.setImageBitmap(eVar.f80090l);
            }
        };
    }

    private boolean f() {
        return (this.f80080b || this.f80088j) && this.f80086h != null && this.f80083e == null;
    }

    private void g() {
        if (f()) {
            Thread thread = new Thread(this);
            this.f80083e = thread;
            thread.start();
        }
    }

    public boolean b() {
        return this.f80080b;
    }

    public void c() {
        this.f80086h.o();
        a(0);
    }

    public void d() {
        this.f80080b = true;
        g();
    }

    public void e() {
        this.f80080b = false;
        Thread thread = this.f80083e;
        if (thread != null) {
            thread.interrupt();
            this.f80083e = null;
        }
    }

    public int getFrameCount() {
        return this.f80086h.f();
    }

    public long getFramesDisplayDuration() {
        return this.f80085g;
    }

    public int getGifHeight() {
        return this.f80086h.g();
    }

    public int getGifWidth() {
        return this.f80086h.m();
    }

    public b getOnAnimationStop() {
        return this.f80082d;
    }

    public c getOnFrameAvailable() {
        return this.f80084f;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }

    @Override // java.lang.Runnable
    public void run() {
        long jNanoTime;
        a aVar = this.f80081c;
        if (aVar != null) {
            aVar.a();
        }
        do {
            if (!this.f80080b && !this.f80088j) {
                break;
            }
            boolean zA = this.f80086h.a();
            try {
                long jNanoTime2 = System.nanoTime();
                Bitmap bitmapK = this.f80086h.k();
                this.f80090l = bitmapK;
                c cVar = this.f80084f;
                if (cVar != null) {
                    this.f80090l = cVar.onFrameAvailable(bitmapK);
                }
                jNanoTime = (System.nanoTime() - jNanoTime2) / C.MICROS_PER_SECOND;
                try {
                    this.f80087i.post(this.f80092n);
                } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException unused) {
                }
            } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException unused2) {
                jNanoTime = 0;
            }
            this.f80088j = false;
            if (!this.f80080b || !zA) {
                this.f80080b = false;
                break;
            }
            try {
                int iJ = (int) (((long) this.f80086h.j()) - jNanoTime);
                if (iJ > 0) {
                    long j10 = this.f80085g;
                    if (j10 <= 0) {
                        j10 = iJ;
                    }
                    Thread.sleep(j10);
                }
            } catch (InterruptedException unused3) {
            }
        } while (this.f80080b);
        if (this.f80089k) {
            this.f80087i.post(this.f80091m);
        }
        this.f80083e = null;
        b bVar = this.f80082d;
        if (bVar != null) {
            bVar.a();
        }
    }

    public void setBytes(final byte[] bytes) {
        com.sigmob.sdk.base.views.gif.a aVar = new com.sigmob.sdk.base.views.gif.a();
        this.f80086h = aVar;
        try {
            aVar.a(bytes);
            if (this.f80080b) {
                g();
            } else {
                a(0);
            }
        } catch (Exception unused) {
            this.f80086h = null;
        }
    }

    public void setFramesDisplayDuration(long framesDisplayDuration) {
        this.f80085g = framesDisplayDuration;
    }

    public void setOnAnimationStart(a animationStart) {
        this.f80081c = animationStart;
    }

    public void setOnAnimationStop(b animationStop) {
        this.f80082d = animationStop;
    }

    public void setOnFrameAvailable(c frameProcessor) {
        this.f80084f = frameProcessor;
    }

    public e(final Context context, final AttributeSet attrs) {
        super(context, attrs);
        this.f80081c = null;
        this.f80082d = null;
        this.f80084f = null;
        this.f80085g = -1L;
        this.f80087i = new Handler(Looper.getMainLooper());
        this.f80091m = new Runnable() { // from class: com.sigmob.sdk.base.views.gif.e.1
            @Override // java.lang.Runnable
            public void run() {
                e.this.f80090l = null;
                e.this.f80086h = null;
                e.this.f80083e = null;
                e.this.f80089k = false;
            }
        };
        this.f80092n = new Runnable() { // from class: com.sigmob.sdk.base.views.gif.e.2
            @Override // java.lang.Runnable
            public void run() {
                if (e.this.f80090l == null || e.this.f80090l.isRecycled()) {
                    return;
                }
                e eVar = e.this;
                eVar.setImageBitmap(eVar.f80090l);
            }
        };
    }

    public void a() {
        this.f80080b = false;
        this.f80088j = false;
        this.f80089k = true;
        e();
        this.f80087i.post(this.f80091m);
    }

    public void a(int frame) {
        if (this.f80086h.d() == frame || !this.f80086h.b(frame - 1) || this.f80080b) {
            return;
        }
        this.f80088j = true;
        g();
    }
}
