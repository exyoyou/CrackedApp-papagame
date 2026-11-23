package com.czhj.wire.okio;

import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
public abstract class ForwardingSink implements Sink {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Sink f25928a;

    public ForwardingSink(Sink sink) {
        if (sink == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f25928a = sink;
    }

    @Override // com.czhj.wire.okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f25928a.close();
    }

    public final Sink delegate() {
        return this.f25928a;
    }

    @Override // com.czhj.wire.okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        this.f25928a.flush();
    }

    @Override // com.czhj.wire.okio.Sink
    public Timeout timeout() {
        return this.f25928a.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f25928a.toString() + ")";
    }

    @Override // com.czhj.wire.okio.Sink
    public void write(Buffer buffer, long j10) throws IOException {
        this.f25928a.write(buffer, j10);
    }
}
