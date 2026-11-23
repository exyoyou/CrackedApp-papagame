package com.danikula.videocache;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes9.dex */
class o {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f26088i = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q f26089a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f26090b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile Thread f26094f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile boolean f26095g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f26091c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f26092d = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile int f26096h = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicInteger f26093e = new AtomicInteger();

    private class b implements Runnable {
        private b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o.this.k();
        }
    }

    public o(q qVar, c cVar) {
        this.f26089a = (q) n.d(qVar);
        this.f26090b = (c) n.d(cVar);
    }

    private void b() throws ProxyCacheException {
        int i10 = this.f26093e.get();
        if (i10 < 1) {
            return;
        }
        this.f26093e.set(0);
        throw new ProxyCacheException("Error reading source " + i10 + " times");
    }

    private void c() {
        try {
            this.f26089a.close();
        } catch (ProxyCacheException e10) {
            h(new ProxyCacheException("Error closing source " + this.f26089a, e10));
        }
    }

    private boolean d() {
        return Thread.currentThread().isInterrupted() || this.f26095g;
    }

    private void e(long j10, long j11) {
        f(j10, j11);
        synchronized (this.f26091c) {
            this.f26091c.notifyAll();
        }
    }

    private void i() {
        this.f26096h = 100;
        g(this.f26096h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        long length = -1;
        long jAvailable = 0;
        try {
            jAvailable = this.f26090b.available();
            this.f26089a.a(jAvailable);
            length = this.f26089a.length();
            byte[] bArr = new byte[8192];
            while (true) {
                int i10 = this.f26089a.read(bArr);
                if (i10 == -1) {
                    n();
                    i();
                    break;
                }
                synchronized (this.f26092d) {
                    if (d()) {
                        c();
                        e(jAvailable, length);
                        return;
                    }
                    this.f26090b.a(bArr, i10);
                }
                jAvailable += (long) i10;
                e(jAvailable, length);
            }
        } catch (Throwable th) {
            try {
                this.f26093e.incrementAndGet();
                h(th);
            } finally {
                c();
                e(jAvailable, length);
            }
        }
    }

    private synchronized void l() throws ProxyCacheException {
        boolean z10 = (this.f26094f == null || this.f26094f.getState() == Thread.State.TERMINATED) ? false : true;
        if (!this.f26095g && !this.f26090b.isCompleted() && !z10) {
            this.f26094f = new Thread(new b(), "Source reader for " + this.f26089a);
            this.f26094f.start();
        }
    }

    private void n() throws ProxyCacheException {
        synchronized (this.f26092d) {
            if (!d() && this.f26090b.available() == this.f26089a.length()) {
                this.f26090b.complete();
            }
        }
    }

    private void o() throws ProxyCacheException {
        synchronized (this.f26091c) {
            try {
                try {
                    this.f26091c.wait(1000L);
                } catch (InterruptedException e10) {
                    throw new ProxyCacheException("Waiting source data is interrupted!", e10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    protected void f(long j10, long j11) {
        int i10 = (j11 > 0L ? 1 : (j11 == 0L ? 0 : -1)) == 0 ? 100 : (int) ((j10 / j11) * 100.0f);
        boolean z10 = i10 != this.f26096h;
        if ((j11 >= 0) && z10) {
            g(i10);
        }
        this.f26096h = i10;
    }

    protected void g(int i10) {
    }

    protected final void h(Throwable th) {
        if (th instanceof InterruptedProxyCacheException) {
            h.h("ProxyCache is interrupted");
        } else {
            h.g("ProxyCache error", th.getMessage());
        }
    }

    public int j(byte[] bArr, long j10, int i10) throws ProxyCacheException {
        p.a(bArr, j10, i10);
        while (!this.f26090b.isCompleted() && this.f26090b.available() < ((long) i10) + j10 && !this.f26095g) {
            l();
            o();
            b();
        }
        int iB = this.f26090b.b(bArr, j10, i10);
        if (this.f26090b.isCompleted() && this.f26096h != 100) {
            this.f26096h = 100;
            g(100);
        }
        return iB;
    }

    public void m() {
        synchronized (this.f26092d) {
            try {
                this.f26095g = true;
                if (this.f26094f != null) {
                    this.f26094f.interrupt();
                }
                this.f26090b.close();
            } catch (ProxyCacheException e10) {
                h(e10);
            }
        }
    }
}
