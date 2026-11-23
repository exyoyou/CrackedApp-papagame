package com.byazt.mk;

import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_POSITION_UPDATE_INTERVAL, 20})
public class c extends gt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static c f16915c;
    public static final long tt;
    public static final long uj;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f16916a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f16917n;
    public long sp;

    /* JADX INFO: renamed from: com.byazt.mk.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_POSITION_UPDATE_INTERVAL, 44})
    private static final class C0372c extends com.byazt.jtc.ve {
        public C0372c() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0015, code lost:
        
            r1.m_();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r3 = this;
            L0:
                java.lang.Class<com.byazt.mk.c> r0 = com.byazt.mk.c.class
                monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L0 java.lang.Throwable -> L1c
                com.byazt.mk.c r1 = com.byazt.mk.c.uj()     // Catch: java.lang.Throwable -> L19
                if (r1 != 0) goto Lb
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                goto L0
            Lb:
                com.byazt.mk.c r2 = com.byazt.mk.c.f16915c     // Catch: java.lang.Throwable -> L19
                if (r1 != r2) goto L14
                r1 = 0
                com.byazt.mk.c.f16915c = r1     // Catch: java.lang.Throwable -> L19
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                return
            L14:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                r1.m_()     // Catch: java.lang.InterruptedException -> L0 java.lang.Throwable -> L1c
                goto L0
            L19:
                r1 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                throw r1     // Catch: java.lang.InterruptedException -> L0 java.lang.Throwable -> L1c
            L1c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.byazt.mk.c.C0372c.run():void");
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        tt = millis;
        uj = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    public static c uj() throws InterruptedException {
        c cVar = f16915c.f16916a;
        if (cVar == null) {
            long jNanoTime = System.nanoTime();
            c.class.wait(tt);
            if (f16915c.f16916a != null || System.nanoTime() - jNanoTime < uj) {
                return null;
            }
            return f16915c;
        }
        long jTt = cVar.tt(System.nanoTime());
        if (jTt > 0) {
            long j10 = jTt / C.MICROS_PER_SECOND;
            c.class.wait(j10, (int) (jTt - (C.MICROS_PER_SECOND * j10)));
            return null;
        }
        f16915c.f16916a = cVar.f16916a;
        cVar.f16916a = null;
        return cVar;
    }

    public final void c() {
        if (this.f16917n) {
            return;
        }
        long jN_ = n_();
        boolean zVe = ve();
        if (jN_ != 0 || zVe) {
            this.f16917n = true;
            c(this, jN_, zVe);
        }
    }

    public void m_() {
    }

    public final boolean tt() {
        if (!this.f16917n) {
            return false;
        }
        this.f16917n = false;
        return c(this);
    }

    private long tt(long j10) {
        return this.sp - j10;
    }

    public IOException tt(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    private static synchronized void c(c cVar, long j10, boolean z10) {
        if (f16915c == null) {
            f16915c = new c();
            C0372c c0372c = new C0372c();
            c0372c.setName("csj_watch_dog");
            try {
                c0372c.start();
            } catch (Throwable unused) {
            }
        }
        long jNanoTime = System.nanoTime();
        if (j10 != 0 && z10) {
            cVar.sp = Math.min(j10, cVar.o_() - jNanoTime) + jNanoTime;
        } else if (j10 != 0) {
            cVar.sp = j10 + jNanoTime;
        } else if (z10) {
            cVar.sp = cVar.o_();
        } else {
            throw new AssertionError();
        }
        long jTt = cVar.tt(jNanoTime);
        c cVar2 = f16915c;
        while (true) {
            c cVar3 = cVar2.f16916a;
            if (cVar3 == null || jTt < cVar3.tt(jNanoTime)) {
                break;
                break;
            }
            cVar2 = cVar2.f16916a;
        }
        cVar.f16916a = cVar2.f16916a;
        cVar2.f16916a = cVar;
        if (cVar2 == f16915c) {
            c.class.notify();
        }
    }

    private static synchronized boolean c(c cVar) {
        c cVar2 = f16915c;
        while (cVar2 != null) {
            c cVar3 = cVar2.f16916a;
            if (cVar3 == cVar) {
                cVar2.f16916a = cVar.f16916a;
                cVar.f16916a = null;
                return false;
            }
            cVar2 = cVar3;
        }
        return true;
    }

    public final rh c(final rh rhVar) {
        return new rh() { // from class: com.byazt.mk.c.1
            @Override // com.byazt.mk.rh
            public void a_(ve veVar, long j10) throws IOException {
                try {
                    rl.c(veVar.tt, 0L, j10);
                    while (true) {
                        long j11 = 0;
                        if (j10 <= 0) {
                            return;
                        }
                        z zVar = veVar.f16934c;
                        while (j11 < 65536) {
                            j11 += (long) (zVar.ve - zVar.tt);
                            if (j11 >= j10) {
                                j11 = j10;
                                break;
                            }
                            zVar = zVar.f16939a;
                        }
                        c.this.c();
                        try {
                            try {
                                rhVar.a_(veVar, j11);
                                j10 -= j11;
                                c.this.c(true);
                            } catch (IOException e10) {
                                throw c.this.c(e10);
                            }
                        } catch (Throwable th) {
                            c.this.c(false);
                            throw th;
                        }
                    }
                } catch (Exception e11) {
                    throw new IOException(e11);
                }
            }

            @Override // com.byazt.mk.rh
            public gt c() {
                return c.this;
            }

            @Override // com.byazt.mk.rh, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                c.this.c();
                try {
                    try {
                        rhVar.close();
                        c.this.c(true);
                    } catch (IOException e10) {
                        throw c.this.c(e10);
                    }
                } catch (Throwable th) {
                    c.this.c(false);
                    throw th;
                }
            }

            @Override // com.byazt.mk.rh, java.io.Flushable
            public void flush() throws IOException {
                c.this.c();
                try {
                    try {
                        rhVar.flush();
                        c.this.c(true);
                    } catch (IOException e10) {
                        throw c.this.c(e10);
                    }
                } catch (Throwable th) {
                    c.this.c(false);
                    throw th;
                }
            }

            public String toString() {
                return "AsyncTimeout.sink(" + rhVar + ")";
            }
        };
    }

    public final my c(final my myVar) {
        return new my() { // from class: com.byazt.mk.c.2
            @Override // com.byazt.mk.my
            public long c(ve veVar, long j10) throws IOException {
                c.this.c();
                try {
                    try {
                        long jC = myVar.c(veVar, j10);
                        c.this.c(true);
                        return jC;
                    } catch (IOException e10) {
                        throw c.this.c(e10);
                    }
                } catch (Throwable th) {
                    c.this.c(false);
                    throw th;
                }
            }

            @Override // com.byazt.mk.my, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                c.this.c();
                try {
                    try {
                        myVar.close();
                        c.this.c(true);
                    } catch (IOException e10) {
                        throw c.this.c(e10);
                    }
                } catch (Throwable th) {
                    c.this.c(false);
                    throw th;
                }
            }

            public String toString() {
                return "AsyncTimeout.source(" + myVar + ")";
            }

            @Override // com.byazt.mk.my
            public gt c() {
                return c.this;
            }
        };
    }

    public final void c(boolean z10) throws IOException {
        if (tt() && z10) {
            throw tt((IOException) null);
        }
    }

    public final IOException c(IOException iOException) throws IOException {
        return !tt() ? iOException : tt(iOException);
    }
}
