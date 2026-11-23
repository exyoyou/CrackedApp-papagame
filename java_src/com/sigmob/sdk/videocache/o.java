package com.sigmob.sdk.videocache;

import com.czhj.sdk.logger.SigmobLog;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f81965a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final t f81966b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f81967c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile Thread f81971g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile boolean f81972h;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f81968d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f81969e = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private volatile int f81973i = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AtomicInteger f81970f = new AtomicInteger();

    private class a implements Runnable {
        private a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.e();
        }
    }

    public o(t source, c cache) {
        this.f81966b = (t) n.a(source);
        this.f81967c = (c) n.a(cache);
    }

    private void b() throws p {
        int i10 = this.f81970f.get();
        if (i10 < 1) {
            return;
        }
        this.f81970f.set(0);
        throw new p("Error reading source " + i10 + " times");
    }

    private synchronized void c() throws p {
        boolean z10 = (this.f81971g == null || this.f81971g.getState() == Thread.State.TERMINATED) ? false : true;
        if (!this.f81972h && !this.f81967c.d() && !z10) {
            SigmobLog.d("Thread create ,current thread num :" + Thread.activeCount());
            this.f81971g = new Thread(new a(), "Source reader for " + this.f81966b);
            this.f81971g.start();
        }
    }

    private void d() throws p {
        synchronized (this.f81968d) {
            try {
                try {
                    this.f81968d.wait(1000L);
                } catch (InterruptedException e10) {
                    throw new p("Waiting source data is interrupted!", e10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        long jA = -1;
        long jA2 = 0;
        try {
            jA2 = this.f81967c.a();
            this.f81966b.a(jA2);
            jA = this.f81966b.a();
            byte[] bArr = new byte[8192];
            while (true) {
                int iA = this.f81966b.a(bArr);
                if (iA == -1) {
                    g();
                    f();
                    i();
                    b(jA2, jA);
                    synchronized (this.f81968d) {
                        this.f81968d.notifyAll();
                    }
                    return;
                }
                synchronized (this.f81969e) {
                    if (h()) {
                        SigmobLog.d("SourceReaderRunnable停止从服务器下载视频数据");
                        i();
                        b(jA2, jA);
                        synchronized (this.f81968d) {
                            this.f81968d.notifyAll();
                        }
                        return;
                    }
                    this.f81967c.a(bArr, iA);
                }
                jA2 += (long) iA;
                b(jA2, jA);
            }
        } catch (Throwable th) {
            try {
                this.f81970f.incrementAndGet();
                b(th);
                c(th);
            } finally {
                i();
                b(jA2, jA);
                synchronized (this.f81968d) {
                    this.f81968d.notifyAll();
                }
            }
        }
    }

    private void f() {
        this.f81973i = 100;
        a(this.f81973i);
    }

    private void g() throws p {
        synchronized (this.f81969e) {
            if (!h() && this.f81967c.a() == this.f81966b.a()) {
                this.f81967c.c();
            }
        }
    }

    private boolean h() {
        return Thread.currentThread().isInterrupted() || this.f81972h;
    }

    private void i() {
        try {
            this.f81966b.b();
        } catch (p e10) {
            b(new p("Error closing source " + this.f81966b, e10));
        }
    }

    public int a(byte[] buffer, long offset, int length) throws p {
        q.a(buffer, offset, length);
        while (!this.f81967c.d() && this.f81967c.a() < ((long) length) + offset && !this.f81972h) {
            c();
            d();
            b();
        }
        int iA = this.f81967c.a(buffer, offset, length);
        if (this.f81967c.d() && this.f81973i != 100) {
            this.f81973i = 100;
            a(100);
        }
        return iA;
    }

    private void b(long cacheAvailable, long sourceAvailable) {
        a(cacheAvailable, sourceAvailable);
        synchronized (this.f81968d) {
            this.f81968d.notifyAll();
        }
    }

    private void c(Throwable throwable) {
        a(throwable);
    }

    public void a() {
        synchronized (this.f81969e) {
            SigmobLog.d("Shutdown proxy for " + this.f81966b);
            try {
                this.f81972h = true;
                if (this.f81971g != null) {
                    this.f81971g.interrupt();
                }
                this.f81967c.b();
            } catch (p e10) {
                b(e10);
            }
        }
    }

    protected void a(int percentsAvailable) {
    }

    protected final void b(final Throwable e10) {
        if (e10 instanceof k) {
            SigmobLog.d("ProxyCache is interrupted");
        } else {
            SigmobLog.e("ProxyCache error", e10);
        }
    }

    protected void a(long cacheAvailable, long sourceLength) {
        int i10 = (sourceLength > 0L ? 1 : (sourceLength == 0L ? 0 : -1)) == 0 ? 100 : (int) ((cacheAvailable / sourceLength) * 100.0f);
        boolean z10 = i10 != this.f81973i;
        if ((sourceLength >= 0) && z10) {
            a(i10);
        }
        this.f81973i = i10;
    }

    protected void a(Throwable throwable) {
    }
}
