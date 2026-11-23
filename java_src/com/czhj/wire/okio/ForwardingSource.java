package com.czhj.wire.okio;

import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
public abstract class ForwardingSource implements Source {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Source f25929a;

    public ForwardingSource(Source source) {
        if (source == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f25929a = source;
    }

    @Override // com.czhj.wire.okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f25929a.close();
    }

    public final Source delegate() {
        return this.f25929a;
    }

    @Override // com.czhj.wire.okio.Source
    public long read(Buffer buffer, long j10) throws IOException {
        return this.f25929a.read(buffer, j10);
    }

    @Override // com.czhj.wire.okio.Source
    public Timeout timeout() {
        return this.f25929a.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f25929a.toString() + ")";
    }
}
