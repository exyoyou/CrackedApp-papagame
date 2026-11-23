package com.czhj.wire.okio;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
final class PushableTimeout extends Timeout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Timeout f25982a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f25983b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f25984c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f25985d;

    PushableTimeout() {
    }

    void a() {
        this.f25982a.timeout(this.f25985d, TimeUnit.NANOSECONDS);
        if (this.f25983b) {
            this.f25982a.deadlineNanoTime(this.f25984c);
        } else {
            this.f25982a.clearDeadline();
        }
    }

    void a(Timeout timeout) {
        long jDeadlineNanoTime;
        this.f25982a = timeout;
        boolean zHasDeadline = timeout.hasDeadline();
        this.f25983b = zHasDeadline;
        this.f25984c = zHasDeadline ? timeout.deadlineNanoTime() : -1L;
        long jTimeoutNanos = timeout.timeoutNanos();
        this.f25985d = jTimeoutNanos;
        timeout.timeout(Timeout.a(jTimeoutNanos, timeoutNanos()), TimeUnit.NANOSECONDS);
        if (this.f25983b && hasDeadline()) {
            jDeadlineNanoTime = Math.min(deadlineNanoTime(), this.f25984c);
        } else if (!hasDeadline()) {
            return;
        } else {
            jDeadlineNanoTime = deadlineNanoTime();
        }
        timeout.deadlineNanoTime(jDeadlineNanoTime);
    }
}
