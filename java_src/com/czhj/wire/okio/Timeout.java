package com.czhj.wire.okio;

import com.bykv.vk.component.ttvideo.player.C;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
public class Timeout {
    public static final Timeout NONE = new Timeout() { // from class: com.czhj.wire.okio.Timeout.1
        @Override // com.czhj.wire.okio.Timeout
        public Timeout deadlineNanoTime(long j10) {
            return this;
        }

        @Override // com.czhj.wire.okio.Timeout
        public void throwIfReached() throws IOException {
        }

        @Override // com.czhj.wire.okio.Timeout
        public Timeout timeout(long j10, TimeUnit timeUnit) {
            return this;
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f26004a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f26005b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f26006c;

    static long a(long j10, long j11) {
        if (j10 == 0) {
            return j11;
        }
        return (j11 != 0 && j10 >= j11) ? j11 : j10;
    }

    public Timeout clearDeadline() {
        this.f26004a = false;
        return this;
    }

    public Timeout clearTimeout() {
        this.f26006c = 0L;
        return this;
    }

    public final Timeout deadline(long j10, TimeUnit timeUnit) {
        if (j10 > 0) {
            if (timeUnit != null) {
                return deadlineNanoTime(System.nanoTime() + timeUnit.toNanos(j10));
            }
            throw new IllegalArgumentException("unit == null");
        }
        throw new IllegalArgumentException("duration <= 0: " + j10);
    }

    public long deadlineNanoTime() {
        if (this.f26004a) {
            return this.f26005b;
        }
        throw new IllegalStateException("No deadline");
    }

    public boolean hasDeadline() {
        return this.f26004a;
    }

    public void throwIfReached() throws IOException {
        if (Thread.interrupted()) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
        if (this.f26004a && this.f26005b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public Timeout timeout(long j10, TimeUnit timeUnit) {
        if (j10 >= 0) {
            if (timeUnit == null) {
                throw new IllegalArgumentException("unit == null");
            }
            this.f26006c = timeUnit.toNanos(j10);
            return this;
        }
        throw new IllegalArgumentException("timeout < 0: " + j10);
    }

    public long timeoutNanos() {
        return this.f26006c;
    }

    public final void waitUntilNotified(Object obj) throws InterruptedIOException {
        try {
            boolean zHasDeadline = hasDeadline();
            long jTimeoutNanos = timeoutNanos();
            long jNanoTime = 0;
            if (!zHasDeadline && jTimeoutNanos == 0) {
                obj.wait();
                return;
            }
            long jNanoTime2 = System.nanoTime();
            if (zHasDeadline && jTimeoutNanos != 0) {
                jTimeoutNanos = Math.min(jTimeoutNanos, deadlineNanoTime() - jNanoTime2);
            } else if (zHasDeadline) {
                jTimeoutNanos = deadlineNanoTime() - jNanoTime2;
            }
            if (jTimeoutNanos > 0) {
                long j10 = jTimeoutNanos / C.MICROS_PER_SECOND;
                Long.signum(j10);
                obj.wait(j10, (int) (jTimeoutNanos - (C.MICROS_PER_SECOND * j10)));
                jNanoTime = System.nanoTime() - jNanoTime2;
            }
            if (jNanoTime >= jTimeoutNanos) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException("interrupted");
        }
    }

    public Timeout deadlineNanoTime(long j10) {
        this.f26004a = true;
        this.f26005b = j10;
        return this;
    }
}
