package com.czhj.wire.okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
public class ForwardingTimeout extends Timeout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Timeout f25930a;

    public ForwardingTimeout(Timeout timeout) {
        if (timeout == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f25930a = timeout;
    }

    @Override // com.czhj.wire.okio.Timeout
    public Timeout clearDeadline() {
        return this.f25930a.clearDeadline();
    }

    @Override // com.czhj.wire.okio.Timeout
    public Timeout clearTimeout() {
        return this.f25930a.clearTimeout();
    }

    @Override // com.czhj.wire.okio.Timeout
    public long deadlineNanoTime() {
        return this.f25930a.deadlineNanoTime();
    }

    public final Timeout delegate() {
        return this.f25930a;
    }

    @Override // com.czhj.wire.okio.Timeout
    public boolean hasDeadline() {
        return this.f25930a.hasDeadline();
    }

    public final ForwardingTimeout setDelegate(Timeout timeout) {
        if (timeout == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f25930a = timeout;
        return this;
    }

    @Override // com.czhj.wire.okio.Timeout
    public void throwIfReached() throws IOException {
        this.f25930a.throwIfReached();
    }

    @Override // com.czhj.wire.okio.Timeout
    public Timeout timeout(long j10, TimeUnit timeUnit) {
        return this.f25930a.timeout(j10, timeUnit);
    }

    @Override // com.czhj.wire.okio.Timeout
    public long timeoutNanos() {
        return this.f25930a.timeoutNanos();
    }

    @Override // com.czhj.wire.okio.Timeout
    public Timeout deadlineNanoTime(long j10) {
        return this.f25930a.deadlineNanoTime(j10);
    }
}
