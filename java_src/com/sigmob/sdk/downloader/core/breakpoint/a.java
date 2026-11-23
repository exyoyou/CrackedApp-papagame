package com.sigmob.sdk.downloader.core.breakpoint;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f80357a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f80358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicLong f80359c;

    public a(long startOffset, long contentLength) {
        this(startOffset, contentLength, 0L);
    }

    public long a() {
        return this.f80359c.get();
    }

    public long b() {
        return this.f80357a;
    }

    public long c() {
        return this.f80357a + this.f80359c.get();
    }

    public long d() {
        return this.f80358b;
    }

    public long e() {
        long j10 = this.f80358b;
        if (j10 == -1) {
            return -1L;
        }
        return (this.f80357a + j10) - 1;
    }

    public void f() {
        this.f80359c.set(0L);
    }

    public a g() {
        return new a(this.f80357a, this.f80358b, this.f80359c.get());
    }

    public String toString() {
        return "[" + this.f80357a + ", " + e() + ")-current:" + this.f80359c;
    }

    public a(long startOffset, long contentLength, long currentOffset) {
        if (startOffset < 0 || ((contentLength < 0 && contentLength != -1) || currentOffset < 0)) {
            throw new IllegalArgumentException();
        }
        this.f80357a = startOffset;
        this.f80358b = contentLength;
        this.f80359c = new AtomicLong(currentOffset);
    }

    public void a(long increaseLength) {
        this.f80359c.addAndGet(increaseLength);
    }
}
