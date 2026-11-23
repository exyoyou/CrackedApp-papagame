package com.czhj.wire.okio;

import com.bykv.vk.component.ttvideo.player.C;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
public class AsyncTimeout extends Timeout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static AsyncTimeout f25901a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f25902b = 65536;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f25903c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f25904d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f25905e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AsyncTimeout f25906f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f25907g;

    private static final class Watchdog extends Thread {
        Watchdog() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0015, code lost:
        
            r1.timedOut();
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
                java.lang.Class<com.czhj.wire.okio.AsyncTimeout> r0 = com.czhj.wire.okio.AsyncTimeout.class
                monitor-enter(r0)     // Catch: java.lang.InterruptedException -> L0
                com.czhj.wire.okio.AsyncTimeout r1 = com.czhj.wire.okio.AsyncTimeout.a()     // Catch: java.lang.Throwable -> L19
                if (r1 != 0) goto Lb
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                goto L0
            Lb:
                com.czhj.wire.okio.AsyncTimeout r2 = com.czhj.wire.okio.AsyncTimeout.f25901a     // Catch: java.lang.Throwable -> L19
                if (r1 != r2) goto L14
                r1 = 0
                com.czhj.wire.okio.AsyncTimeout.f25901a = r1     // Catch: java.lang.Throwable -> L19
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                return
            L14:
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                r1.timedOut()     // Catch: java.lang.InterruptedException -> L0
                goto L0
            L19:
                r1 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L19
                throw r1     // Catch: java.lang.InterruptedException -> L0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.czhj.wire.okio.AsyncTimeout.Watchdog.run():void");
        }
    }

    static {
        long millis = TimeUnit.SECONDS.toMillis(60L);
        f25903c = millis;
        f25904d = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    private long a(long j10) {
        return this.f25907g - j10;
    }

    public final void enter() {
        if (this.f25905e) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long jTimeoutNanos = timeoutNanos();
        boolean zHasDeadline = hasDeadline();
        if (jTimeoutNanos != 0 || zHasDeadline) {
            this.f25905e = true;
            a(this, jTimeoutNanos, zHasDeadline);
        }
    }

    public final boolean exit() {
        if (!this.f25905e) {
            return false;
        }
        this.f25905e = false;
        return a(this);
    }

    protected IOException newTimeoutException(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final Sink sink(final Sink sink) {
        return new Sink() { // from class: com.czhj.wire.okio.AsyncTimeout.1
            @Override // com.czhj.wire.okio.Sink, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                AsyncTimeout.this.enter();
                try {
                    try {
                        sink.close();
                        AsyncTimeout.this.a(true);
                    } catch (IOException e10) {
                        throw AsyncTimeout.this.a(e10);
                    }
                } catch (Throwable th) {
                    AsyncTimeout.this.a(false);
                    throw th;
                }
            }

            @Override // com.czhj.wire.okio.Sink, java.io.Flushable
            public void flush() throws IOException {
                AsyncTimeout.this.enter();
                try {
                    try {
                        sink.flush();
                        AsyncTimeout.this.a(true);
                    } catch (IOException e10) {
                        throw AsyncTimeout.this.a(e10);
                    }
                } catch (Throwable th) {
                    AsyncTimeout.this.a(false);
                    throw th;
                }
            }

            @Override // com.czhj.wire.okio.Sink
            public Timeout timeout() {
                return AsyncTimeout.this;
            }

            public String toString() {
                return "AsyncTimeout.sink(" + sink + ")";
            }

            @Override // com.czhj.wire.okio.Sink
            public void write(Buffer buffer, long j10) throws IOException {
                Util.checkOffsetAndCount(buffer.f25917c, 0L, j10);
                while (true) {
                    long j11 = 0;
                    if (j10 <= 0) {
                        return;
                    }
                    Segment segment = buffer.f25916b;
                    while (j11 < 65536) {
                        j11 += (long) (segment.f25994e - segment.f25993d);
                        if (j11 >= j10) {
                            j11 = j10;
                            break;
                        }
                        segment = segment.f25997h;
                    }
                    AsyncTimeout.this.enter();
                    try {
                        try {
                            sink.write(buffer, j11);
                            j10 -= j11;
                            AsyncTimeout.this.a(true);
                        } catch (IOException e10) {
                            throw AsyncTimeout.this.a(e10);
                        }
                    } catch (Throwable th) {
                        AsyncTimeout.this.a(false);
                        throw th;
                    }
                }
            }
        };
    }

    public final Source source(final Source source) {
        return new Source() { // from class: com.czhj.wire.okio.AsyncTimeout.2
            @Override // com.czhj.wire.okio.Source, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                AsyncTimeout.this.enter();
                try {
                    try {
                        source.close();
                        AsyncTimeout.this.a(true);
                    } catch (IOException e10) {
                        throw AsyncTimeout.this.a(e10);
                    }
                } catch (Throwable th) {
                    AsyncTimeout.this.a(false);
                    throw th;
                }
            }

            @Override // com.czhj.wire.okio.Source
            public long read(Buffer buffer, long j10) throws IOException {
                AsyncTimeout.this.enter();
                try {
                    try {
                        long j11 = source.read(buffer, j10);
                        AsyncTimeout.this.a(true);
                        return j11;
                    } catch (IOException e10) {
                        throw AsyncTimeout.this.a(e10);
                    }
                } catch (Throwable th) {
                    AsyncTimeout.this.a(false);
                    throw th;
                }
            }

            @Override // com.czhj.wire.okio.Source
            public Timeout timeout() {
                return AsyncTimeout.this;
            }

            public String toString() {
                return "AsyncTimeout.source(" + source + ")";
            }
        };
    }

    protected void timedOut() {
    }

    static AsyncTimeout a() throws InterruptedException {
        AsyncTimeout asyncTimeout = f25901a.f25906f;
        long jNanoTime = System.nanoTime();
        if (asyncTimeout == null) {
            AsyncTimeout.class.wait(f25903c);
            if (f25901a.f25906f != null || System.nanoTime() - jNanoTime < f25904d) {
                return null;
            }
            return f25901a;
        }
        long jA = asyncTimeout.a(jNanoTime);
        if (jA > 0) {
            long j10 = jA / C.MICROS_PER_SECOND;
            AsyncTimeout.class.wait(j10, (int) (jA - (C.MICROS_PER_SECOND * j10)));
            return null;
        }
        f25901a.f25906f = asyncTimeout.f25906f;
        asyncTimeout.f25906f = null;
        return asyncTimeout;
    }

    final IOException a(IOException iOException) throws IOException {
        return !exit() ? iOException : newTimeoutException(iOException);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x005a A[Catch: all -> 0x0067, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x0016, B:10:0x0022, B:11:0x002b, B:16:0x003a, B:17:0x0040, B:19:0x0044, B:22:0x004d, B:23:0x0050, B:25:0x005a, B:15:0x0034, B:28:0x0061, B:29:0x0066), top: B:33:0x0003 }] */
    private static synchronized void a(AsyncTimeout asyncTimeout, long j10, boolean z10) {
        AsyncTimeout asyncTimeout2;
        AsyncTimeout asyncTimeout3;
        if (f25901a == null) {
            f25901a = new AsyncTimeout();
            new Watchdog().start();
        }
        long jNanoTime = System.nanoTime();
        if (j10 == 0 || !z10) {
            if (j10 == 0) {
                if (!z10) {
                    throw new AssertionError();
                }
                asyncTimeout.f25907g = asyncTimeout.deadlineNanoTime();
            }
            long jA = asyncTimeout.a(jNanoTime);
            asyncTimeout2 = f25901a;
            while (true) {
                asyncTimeout3 = asyncTimeout2.f25906f;
                if (asyncTimeout3 != null || jA < asyncTimeout3.a(jNanoTime)) {
                    break;
                    break;
                }
                asyncTimeout2 = asyncTimeout2.f25906f;
            }
            asyncTimeout.f25906f = asyncTimeout2.f25906f;
            asyncTimeout2.f25906f = asyncTimeout;
            if (asyncTimeout2 == f25901a) {
                AsyncTimeout.class.notify();
            }
        } else {
            j10 = Math.min(j10, asyncTimeout.deadlineNanoTime() - jNanoTime);
        }
        asyncTimeout.f25907g = j10 + jNanoTime;
        long jA2 = asyncTimeout.a(jNanoTime);
        asyncTimeout2 = f25901a;
        while (true) {
            asyncTimeout3 = asyncTimeout2.f25906f;
            if (asyncTimeout3 != null) {
                break;
            } else {
                asyncTimeout2 = asyncTimeout2.f25906f;
            }
        }
        asyncTimeout.f25906f = asyncTimeout2.f25906f;
        asyncTimeout2.f25906f = asyncTimeout;
        if (asyncTimeout2 == f25901a) {
            AsyncTimeout.class.notify();
        }
    }

    final void a(boolean z10) throws IOException {
        if (exit() && z10) {
            throw newTimeoutException(null);
        }
    }

    private static synchronized boolean a(AsyncTimeout asyncTimeout) {
        AsyncTimeout asyncTimeout2 = f25901a;
        while (asyncTimeout2 != null) {
            AsyncTimeout asyncTimeout3 = asyncTimeout2.f25906f;
            if (asyncTimeout3 == asyncTimeout) {
                asyncTimeout2.f25906f = asyncTimeout.f25906f;
                asyncTimeout.f25906f = null;
                return false;
            }
            asyncTimeout2 = asyncTimeout3;
        }
        return true;
    }
}
