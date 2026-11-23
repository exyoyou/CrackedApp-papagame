package com.aggmoread.sdk.z.a.u;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Movie;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import com.haima.hmcp.ConstantsInternal;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.nio.charset.Charset;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public class j extends AppCompatImageView {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f4138m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f4139n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f4140o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final ThreadFactory f4141p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final BlockingQueue<Runnable> f4142q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    static final Executor f4143r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f4144a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4145b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4146c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f4147d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f4148e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f4149f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f4150g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f4151h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private byte[] f4152i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Movie f4153j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f4154k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private f f4155l;

    static class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f4156a = new AtomicInteger(1);

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "__TGL_GIF_REFRESH_THREAD #" + this.f4156a.getAndIncrement());
        }
    }

    static class b implements RejectedExecutionHandler {
        b() {
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            com.aggmoread.sdk.z.c.a.a.e.e.a("******Task rejected, too many task!");
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (j.this.f4155l != null) {
                j.this.f4155l.a((int) j.this.f4149f, (int) j.this.f4150g);
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j.this.b();
            while (j.this.f4144a && j.this.getVisibility() == 0 && j.this.f4153j != null) {
                j.this.e();
                j.this.postInvalidate();
                try {
                    Thread.sleep(j.this.f4151h);
                } catch (Throwable unused) {
                }
            }
            j.this.f4153j = null;
            j.this.f4154k = -1L;
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ File f4159b;

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ ByteArrayOutputStream f4161b;

            a(ByteArrayOutputStream byteArrayOutputStream) {
                this.f4161b = byteArrayOutputStream;
            }

            @Override // java.lang.Runnable
            public void run() {
                j.this.a(this.f4161b.toByteArray());
                j.this.postInvalidate();
            }
        }

        e(File file) {
            this.f4159b = file;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                byte[] bArr = new byte[1024];
                FileInputStream fileInputStream = new FileInputStream(this.f4159b);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                while (true) {
                    int i10 = fileInputStream.read(bArr);
                    if (i10 == -1) {
                        byteArrayOutputStream.flush();
                        byteArrayOutputStream.close();
                        fileInputStream.close();
                        j.this.post(new a(byteArrayOutputStream));
                        return;
                    }
                    byteArrayOutputStream.write(bArr, 0, i10);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public interface f {
        void a(int i10, int i11);
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f4138m = iAvailableProcessors;
        int i10 = iAvailableProcessors + 1;
        f4139n = i10;
        int i11 = (iAvailableProcessors * 2) + 1;
        f4140o = i11;
        a aVar = new a();
        f4141p = aVar;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(128);
        f4142q = linkedBlockingQueue;
        f4143r = new ThreadPoolExecutor(i10, i11, 1L, TimeUnit.SECONDS, linkedBlockingQueue, aVar, new b());
    }

    public j(Context context) {
        this(context, null);
    }

    private void d() {
        com.aggmoread.sdk.z.c.a.a.e.e.b("GIFVIEWTAG", ConstantsInternal.STOP);
        if (this.f4144a) {
            this.f4153j = null;
            this.f4154k = -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        Movie movie;
        int i10;
        Movie movie2 = this.f4153j;
        if (movie2 == null) {
            return;
        }
        long jDuration = movie2.duration();
        if (jDuration < this.f4151h) {
            movie = this.f4153j;
            i10 = 0;
        } else {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (this.f4154k < 0) {
                this.f4154k = jCurrentTimeMillis;
            }
            long j10 = (jCurrentTimeMillis - this.f4154k) % jDuration;
            movie = this.f4153j;
            i10 = (int) j10;
        }
        movie.setTime(i10);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (!this.f4144a) {
            super.onDraw(canvas);
            return;
        }
        if (this.f4153j == null) {
            c();
        }
        a(canvas);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i10) {
        super.onVisibilityChanged(view, i10);
        com.aggmoread.sdk.z.c.a.a.e.e.b("GIFVIEWTAG", "onVisibilityChanged  " + getVisibility() + ",visibility " + i10);
        if (i10 == 8 || i10 == 4) {
            d();
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        this.f4144a = false;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(@Nullable Drawable drawable) {
        super.setImageDrawable(drawable);
        this.f4144a = false;
    }

    @Override // android.widget.ImageView
    public void setImageIcon(@Nullable Icon icon) {
        super.setImageIcon(icon);
        this.f4144a = false;
    }

    @Override // android.widget.ImageView
    public void setImageMatrix(Matrix matrix) {
        super.setImageMatrix(matrix);
        this.f4144a = false;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i10) {
        super.setImageResource(i10);
        try {
            byte[] bArr = new byte[3];
            getContext().getResources().openRawResource(i10).read(bArr);
            if ("GIF".equals(new String(bArr, Charset.defaultCharset()))) {
                a(i.a(getContext(), i10));
            } else {
                this.f4144a = false;
            }
        } catch (Exception unused) {
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageURI(@Nullable Uri uri) {
        super.setImageURI(uri);
        this.f4144a = false;
    }

    public j(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.f4153j = Movie.decodeStream(new ByteArrayInputStream(this.f4152i));
        a();
        post(new c());
    }

    private void c() {
        synchronized (this.f4152i) {
            f4143r.execute(new d());
        }
    }

    public j(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f4144a = false;
        this.f4145b = 0;
        this.f4146c = 0;
        this.f4147d = 1.0f;
        this.f4148e = 1.0f;
        this.f4151h = 33L;
        this.f4153j = null;
        this.f4154k = -1L;
    }

    private void a() {
        float width;
        if (getScaleType() == ImageView.ScaleType.CENTER_INSIDE) {
            float fMin = Math.min((getWidth() * 1.0f) / this.f4145b, (getHeight() * 1.0f) / this.f4146c);
            this.f4148e = fMin;
            this.f4147d = fMin;
            this.f4150g = (getHeight() - (this.f4153j.height() * this.f4148e)) * 0.5f;
            this.f4149f = (getWidth() - (this.f4153j.width() * this.f4147d)) * 0.5f;
            return;
        }
        if (getScaleType() == ImageView.ScaleType.CENTER_CROP) {
            if (this.f4145b * getHeight() > getWidth() * this.f4146c) {
                width = getHeight() / this.f4146c;
                this.f4149f = (getWidth() - (this.f4153j.width() * width)) * 0.5f;
            } else {
                width = getWidth() / this.f4145b;
                this.f4150g = (getHeight() - (this.f4153j.height() * width)) * 0.5f;
            }
            this.f4148e = width;
            this.f4147d = width;
        }
    }

    private void a(Canvas canvas) {
        if (this.f4153j == null || canvas == null) {
            return;
        }
        canvas.translate(this.f4149f, this.f4150g);
        canvas.save();
        canvas.scale(this.f4147d, this.f4148e);
        e();
        this.f4153j.draw(canvas, 0.0f, 0.0f);
        canvas.restore();
    }

    public void a(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        com.aggmoread.sdk.z.c.a.a.e.q.b(new e(file));
    }

    public void a(byte[] bArr) {
        com.aggmoread.sdk.z.c.a.a.e.e.a("setGifData");
        this.f4152i = bArr;
        this.f4153j = null;
        if (bArr != null) {
            com.aggmoread.sdk.z.c.a.a.e.e.a("setGifData length " + bArr.length);
            this.f4144a = true;
            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
            this.f4145b = bitmapDecodeByteArray.getWidth();
            this.f4146c = bitmapDecodeByteArray.getHeight();
            com.aggmoread.sdk.z.c.a.a.e.e.a("gifWidth " + this.f4145b + ", gifHeight " + this.f4146c);
        }
        if (Build.VERSION.SDK_INT < 26) {
            setLayerType(1, null);
        }
    }
}
