package com.facebook.rebound;

import android.annotation.TargetApi;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Choreographer;

/* JADX INFO: loaded from: classes9.dex */
abstract class a {

    /* JADX INFO: renamed from: com.facebook.rebound.a$a, reason: collision with other inner class name */
    @TargetApi(16)
    private static class C0583a extends n {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Choreographer f28792b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Choreographer.FrameCallback f28793c = new ChoreographerFrameCallbackC0584a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f28794d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f28795e;

        /* JADX INFO: renamed from: com.facebook.rebound.a$a$a, reason: collision with other inner class name */
        class ChoreographerFrameCallbackC0584a implements Choreographer.FrameCallback {
            ChoreographerFrameCallbackC0584a() {
            }

            @Override // android.view.Choreographer.FrameCallback
            public void doFrame(long j10) {
                if (!C0583a.this.f28794d || C0583a.this.f28871a == null) {
                    return;
                }
                long jUptimeMillis = SystemClock.uptimeMillis();
                C0583a c0583a = C0583a.this;
                c0583a.f28871a.i(jUptimeMillis - c0583a.f28795e);
                C0583a.this.f28795e = jUptimeMillis;
                C0583a.this.f28792b.postFrameCallback(C0583a.this.f28793c);
            }
        }

        public C0583a(Choreographer choreographer) {
            this.f28792b = choreographer;
        }

        public static C0583a i() {
            return new C0583a(Choreographer.getInstance());
        }

        @Override // com.facebook.rebound.n
        public void b() {
            if (this.f28794d) {
                return;
            }
            this.f28794d = true;
            this.f28795e = SystemClock.uptimeMillis();
            this.f28792b.removeFrameCallback(this.f28793c);
            this.f28792b.postFrameCallback(this.f28793c);
        }

        @Override // com.facebook.rebound.n
        public void c() {
            this.f28794d = false;
            this.f28792b.removeFrameCallback(this.f28793c);
        }
    }

    private static class b extends n {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Handler f28797b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Runnable f28798c = new RunnableC0585a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f28799d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f28800e;

        /* JADX INFO: renamed from: com.facebook.rebound.a$b$a, reason: collision with other inner class name */
        class RunnableC0585a implements Runnable {
            RunnableC0585a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (!b.this.f28799d || b.this.f28871a == null) {
                    return;
                }
                long jUptimeMillis = SystemClock.uptimeMillis();
                b bVar = b.this;
                bVar.f28871a.i(jUptimeMillis - bVar.f28800e);
                b.this.f28800e = jUptimeMillis;
                b.this.f28797b.post(b.this.f28798c);
            }
        }

        public b(Handler handler) {
            this.f28797b = handler;
        }

        public static n i() {
            return new b(new Handler());
        }

        @Override // com.facebook.rebound.n
        public void b() {
            if (this.f28799d) {
                return;
            }
            this.f28799d = true;
            this.f28800e = SystemClock.uptimeMillis();
            this.f28797b.removeCallbacks(this.f28798c);
            this.f28797b.post(this.f28798c);
        }

        @Override // com.facebook.rebound.n
        public void c() {
            this.f28799d = false;
            this.f28797b.removeCallbacks(this.f28798c);
        }
    }

    a() {
    }

    public static n a() {
        return C0583a.i();
    }
}
