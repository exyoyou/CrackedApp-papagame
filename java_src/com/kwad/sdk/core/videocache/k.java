package com.kwad.sdk.core.videocache;

import com.kwad.sdk.utils.az;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
class k {
    private final m bat;
    private final com.kwad.sdk.core.videocache.a bau;
    private volatile Thread bay;
    private volatile boolean nK;
    private final Object bav = new Object();
    private final Object baw = new Object();
    private volatile int baz = -1;
    private final AtomicInteger bax = new AtomicInteger();

    class a implements Runnable {
        private a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            k.this.Pk();
        }

        /* synthetic */ a(k kVar, byte b10) {
            this();
        }
    }

    public k(m mVar, com.kwad.sdk.core.videocache.a aVar) {
        this.bat = (m) az.checkNotNull(mVar);
        this.bau = (com.kwad.sdk.core.videocache.a) az.checkNotNull(aVar);
    }

    private void Ph() throws ProxyCacheException {
        int i10 = this.bax.get();
        if (i10 <= 0) {
            return;
        }
        this.bax.set(0);
        throw new ProxyCacheException("Error reading source " + i10 + " times");
    }

    private synchronized void Pi() {
        byte b10 = 0;
        boolean z10 = (this.bay == null || this.bay.getState() == Thread.State.TERMINATED) ? false : true;
        if (!this.nK && !this.bau.isCompleted() && !z10) {
            this.bay = new Thread(new a(this, b10), "Source reader for " + this.bat);
            this.bay.start();
        }
    }

    private void Pj() {
        synchronized (this.bav) {
            try {
                try {
                    this.bav.wait(1000L);
                } catch (InterruptedException e10) {
                    throw new ProxyCacheException("Waiting source data is interrupted!", e10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0039, code lost:
    
        r2 = r2 + ((long) r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Pk() {
        /*
            r8 = this;
            r0 = -1
            r2 = 0
            com.kwad.sdk.core.videocache.a r4 = r8.bau     // Catch: java.lang.Throwable -> L49
            long r2 = r4.OV()     // Catch: java.lang.Throwable -> L49
            com.kwad.sdk.core.videocache.m r4 = r8.bat     // Catch: java.lang.Throwable -> L49
            r4.aP(r2)     // Catch: java.lang.Throwable -> L49
            com.kwad.sdk.core.videocache.m r4 = r8.bat     // Catch: java.lang.Throwable -> L49
            long r0 = r4.length()     // Catch: java.lang.Throwable -> L49
            r4 = 1024(0x400, float:1.435E-42)
            byte[] r4 = new byte[r4]     // Catch: java.lang.Throwable -> L49
        L19:
            com.kwad.sdk.core.videocache.m r5 = r8.bat     // Catch: java.lang.Throwable -> L49
            int r5 = r5.read(r4)     // Catch: java.lang.Throwable -> L49
            r6 = -1
            if (r5 == r6) goto L42
            java.lang.Object r6 = r8.baw     // Catch: java.lang.Throwable -> L49
            monitor-enter(r6)     // Catch: java.lang.Throwable -> L49
            boolean r7 = r8.isStopped()     // Catch: java.lang.Throwable -> L3f
            if (r7 == 0) goto L33
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L3f
        L2c:
            r8.Pm()
            r8.j(r2, r0)
            return
        L33:
            com.kwad.sdk.core.videocache.a r7 = r8.bau     // Catch: java.lang.Throwable -> L3f
            r7.d(r4, r5)     // Catch: java.lang.Throwable -> L3f
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L3f
            long r5 = (long) r5
            long r2 = r2 + r5
            r8.j(r2, r0)     // Catch: java.lang.Throwable -> L49
            goto L19
        L3f:
            r4 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L3f
            throw r4     // Catch: java.lang.Throwable -> L49
        L42:
            r8.tryComplete()     // Catch: java.lang.Throwable -> L49
            r8.Pl()     // Catch: java.lang.Throwable -> L49
            goto L2c
        L49:
            r4 = move-exception
            java.util.concurrent.atomic.AtomicInteger r5 = r8.bax     // Catch: java.lang.Throwable -> L53
            r5.incrementAndGet()     // Catch: java.lang.Throwable -> L53
            onError(r4)     // Catch: java.lang.Throwable -> L53
            goto L2c
        L53:
            r4 = move-exception
            r8.Pm()
            r8.j(r2, r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.core.videocache.k.Pk():void");
    }

    private void Pl() {
        this.baz = 100;
        eM(this.baz);
    }

    private void Pm() {
        try {
            this.bat.close();
        } catch (ProxyCacheException e10) {
            onError(new ProxyCacheException("Error closing source " + this.bat, e10));
        }
    }

    private boolean isStopped() {
        return Thread.currentThread().isInterrupted() || this.nK;
    }

    private void j(long j10, long j11) {
        k(j10, j11);
        synchronized (this.bav) {
            this.bav.notifyAll();
        }
    }

    private void k(long j10, long j11) {
        int i10 = (j11 > 0L ? 1 : (j11 == 0L ? 0 : -1)) == 0 ? 100 : (int) ((j10 / j11) * 100.0f);
        boolean z10 = i10 != this.baz;
        if ((j11 >= 0) && z10) {
            eM(i10);
        }
        this.baz = i10;
    }

    private static void onError(Throwable th) {
        if (th instanceof InterruptedProxyCacheException) {
            com.kwad.sdk.core.d.c.d("ProxyCache", "ProxyCache is interrupted");
        } else {
            com.kwad.sdk.core.d.c.e("ProxyCache", "ProxyCache error");
        }
    }

    private void tryComplete() {
        synchronized (this.baw) {
            if (!isStopped() && this.bau.OV() == this.bat.length()) {
                this.bau.complete();
            }
        }
    }

    protected void eM(int i10) {
    }

    public final void shutdown() {
        synchronized (this.baw) {
            com.kwad.sdk.core.d.c.d("ProxyCache", "Shutdown proxy for " + this.bat);
            try {
                this.nK = true;
                if (this.bay != null) {
                    this.bay.interrupt();
                }
                this.bau.close();
            } catch (ProxyCacheException e10) {
                onError(e10);
            }
        }
    }

    public final int a(byte[] bArr, long j10, int i10) throws ProxyCacheException {
        l.b(bArr, j10, 1024);
        while (!this.bau.isCompleted() && this.bau.OV() < 1024 + j10 && !this.nK) {
            Pi();
            Pj();
            Ph();
        }
        int iA = this.bau.a(bArr, j10, 1024);
        if (this.bau.isCompleted() && this.baz != 100) {
            this.baz = 100;
            eM(100);
        }
        return iA;
    }
}
