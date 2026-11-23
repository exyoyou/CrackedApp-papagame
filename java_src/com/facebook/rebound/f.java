package com.facebook.rebound;

import android.annotation.TargetApi;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;

/* JADX INFO: loaded from: classes9.dex */
public class f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f28826c = 17;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final boolean f28827d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static f f28828e = new f();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Handler f28829a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Choreographer f28830b;

    public static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Runnable f28831a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Choreographer.FrameCallback f28832b;

        /* JADX INFO: renamed from: com.facebook.rebound.f$a$a, reason: collision with other inner class name */
        class ChoreographerFrameCallbackC0587a implements Choreographer.FrameCallback {
            ChoreographerFrameCallbackC0587a() {
            }

            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j10) {
                a.this.a(j10);
            }
        }

        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.a(System.nanoTime());
            }
        }

        public abstract void a(long j10);

        @TargetApi(16)
        Choreographer.FrameCallback b() {
            if (this.f28832b == null) {
                this.f28832b = new ChoreographerFrameCallbackC0587a();
            }
            return this.f28832b;
        }

        Runnable c() {
            if (this.f28831a == null) {
                this.f28831a = new b();
            }
            return this.f28831a;
        }
    }

    private f() {
        if (f28827d) {
            this.f28830b = d();
        } else {
            this.f28829a = new Handler(Looper.getMainLooper());
        }
    }

    @TargetApi(16)
    private void a(Choreographer.FrameCallback frameCallback) {
        this.f28830b.postFrameCallback(frameCallback);
    }

    @TargetApi(16)
    private void b(Choreographer.FrameCallback frameCallback, long j10) {
        this.f28830b.postFrameCallbackDelayed(frameCallback, j10);
    }

    @TargetApi(16)
    private void c(Choreographer.FrameCallback frameCallback) {
        this.f28830b.removeFrameCallback(frameCallback);
    }

    @TargetApi(16)
    private Choreographer d() {
        return Choreographer.getInstance();
    }

    public static f e() {
        return f28828e;
    }

    public void f(a aVar) {
        if (f28827d) {
            a(aVar.b());
        } else {
            this.f28829a.postDelayed(aVar.c(), 0L);
        }
    }

    public void g(a aVar, long j10) {
        if (f28827d) {
            b(aVar.b(), j10);
        } else {
            this.f28829a.postDelayed(aVar.c(), j10 + f28826c);
        }
    }

    public void h(a aVar) {
        if (f28827d) {
            c(aVar.b());
        } else {
            this.f28829a.removeCallbacks(aVar.c());
        }
    }
}
