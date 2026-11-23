package com.czhj.wire.okio;

import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
final class PeekSource implements Source {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BufferedSource f25965a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Buffer f25966b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Segment f25967c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f25968d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f25969e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f25970f;

    PeekSource(BufferedSource bufferedSource) {
        this.f25965a = bufferedSource;
        Buffer buffer = bufferedSource.buffer();
        this.f25966b = buffer;
        Segment segment = buffer.f25916b;
        this.f25967c = segment;
        this.f25968d = segment != null ? segment.f25993d : -1;
    }

    @Override // com.czhj.wire.okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f25969e = true;
    }

    @Override // com.czhj.wire.okio.Source
    public long read(Buffer buffer, long j10) throws IOException {
        Segment segment;
        Segment segment2;
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        if (this.f25969e) {
            throw new IllegalStateException("closed");
        }
        Segment segment3 = this.f25967c;
        if (segment3 != null && (segment3 != (segment2 = this.f25966b.f25916b) || this.f25968d != segment2.f25993d)) {
            throw new IllegalStateException("Peek source is invalid because upstream source was used");
        }
        if (j10 == 0) {
            return 0L;
        }
        if (!this.f25965a.request(this.f25970f + 1)) {
            return -1L;
        }
        if (this.f25967c == null && (segment = this.f25966b.f25916b) != null) {
            this.f25967c = segment;
            this.f25968d = segment.f25993d;
        }
        long jMin = Math.min(j10, this.f25966b.f25917c - this.f25970f);
        this.f25966b.copyTo(buffer, this.f25970f, jMin);
        this.f25970f += jMin;
        return jMin;
    }

    @Override // com.czhj.wire.okio.Source
    public Timeout timeout() {
        return this.f25965a.timeout();
    }
}
