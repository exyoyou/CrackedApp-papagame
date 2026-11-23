package com.czhj.wire.okio;

import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
public final class Pipe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final long f25971a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f25973c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f25974d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Sink f25977g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Buffer f25972b = new Buffer();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Sink f25975e = new PipeSink();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Source f25976f = new PipeSource();

    final class PipeSink implements Sink {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final PushableTimeout f25978a = new PushableTimeout();

        PipeSink() {
        }

        @Override // com.czhj.wire.okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            Sink sink;
            synchronized (Pipe.this.f25972b) {
                Pipe pipe = Pipe.this;
                if (pipe.f25973c) {
                    return;
                }
                if (pipe.f25977g != null) {
                    sink = Pipe.this.f25977g;
                } else {
                    Pipe pipe2 = Pipe.this;
                    if (pipe2.f25974d && pipe2.f25972b.size() > 0) {
                        throw new IOException("source is closed");
                    }
                    Pipe pipe3 = Pipe.this;
                    pipe3.f25973c = true;
                    pipe3.f25972b.notifyAll();
                    sink = null;
                }
                if (sink != null) {
                    this.f25978a.a(sink.timeout());
                    try {
                        sink.close();
                    } finally {
                        this.f25978a.a();
                    }
                }
            }
        }

        @Override // com.czhj.wire.okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            Sink sink;
            synchronized (Pipe.this.f25972b) {
                Pipe pipe = Pipe.this;
                if (pipe.f25973c) {
                    throw new IllegalStateException("closed");
                }
                if (pipe.f25977g != null) {
                    sink = Pipe.this.f25977g;
                } else {
                    Pipe pipe2 = Pipe.this;
                    if (pipe2.f25974d && pipe2.f25972b.size() > 0) {
                        throw new IOException("source is closed");
                    }
                    sink = null;
                }
            }
            if (sink != null) {
                this.f25978a.a(sink.timeout());
                try {
                    sink.flush();
                } finally {
                    this.f25978a.a();
                }
            }
        }

        @Override // com.czhj.wire.okio.Sink
        public Timeout timeout() {
            return this.f25978a;
        }

        @Override // com.czhj.wire.okio.Sink
        public void write(Buffer buffer, long j10) throws IOException {
            Sink sink;
            synchronized (Pipe.this.f25972b) {
                if (!Pipe.this.f25973c) {
                    while (true) {
                        if (j10 <= 0) {
                            sink = null;
                            break;
                        }
                        if (Pipe.this.f25977g != null) {
                            sink = Pipe.this.f25977g;
                            break;
                        }
                        Pipe pipe = Pipe.this;
                        if (pipe.f25974d) {
                            throw new IOException("source is closed");
                        }
                        long size = pipe.f25971a - pipe.f25972b.size();
                        if (size == 0) {
                            this.f25978a.waitUntilNotified(Pipe.this.f25972b);
                        } else {
                            long jMin = Math.min(size, j10);
                            Pipe.this.f25972b.write(buffer, jMin);
                            j10 -= jMin;
                            Pipe.this.f25972b.notifyAll();
                        }
                    }
                } else {
                    throw new IllegalStateException("closed");
                }
            }
            if (sink != null) {
                this.f25978a.a(sink.timeout());
                try {
                    sink.write(buffer, j10);
                } finally {
                    this.f25978a.a();
                }
            }
        }
    }

    final class PipeSource implements Source {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Timeout f25980a = new Timeout();

        PipeSource() {
        }

        @Override // com.czhj.wire.okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (Pipe.this.f25972b) {
                Pipe pipe = Pipe.this;
                pipe.f25974d = true;
                pipe.f25972b.notifyAll();
            }
        }

        @Override // com.czhj.wire.okio.Source
        public long read(Buffer buffer, long j10) throws IOException {
            synchronized (Pipe.this.f25972b) {
                if (Pipe.this.f25974d) {
                    throw new IllegalStateException("closed");
                }
                while (Pipe.this.f25972b.size() == 0) {
                    Pipe pipe = Pipe.this;
                    if (pipe.f25973c) {
                        return -1L;
                    }
                    this.f25980a.waitUntilNotified(pipe.f25972b);
                }
                long j11 = Pipe.this.f25972b.read(buffer, j10);
                Pipe.this.f25972b.notifyAll();
                return j11;
            }
        }

        @Override // com.czhj.wire.okio.Source
        public Timeout timeout() {
            return this.f25980a;
        }
    }

    public Pipe(long j10) {
        if (j10 >= 1) {
            this.f25971a = j10;
            return;
        }
        throw new IllegalArgumentException("maxBufferSize < 1: " + j10);
    }

    public void fold(Sink sink) throws IOException {
        boolean z10;
        Buffer buffer;
        while (true) {
            synchronized (this.f25972b) {
                if (this.f25977g != null) {
                    throw new IllegalStateException("sink already folded");
                }
                if (this.f25972b.exhausted()) {
                    this.f25974d = true;
                    this.f25977g = sink;
                    return;
                } else {
                    z10 = this.f25973c;
                    buffer = new Buffer();
                    Buffer buffer2 = this.f25972b;
                    buffer.write(buffer2, buffer2.f25917c);
                    this.f25972b.notifyAll();
                }
            }
            try {
                sink.write(buffer, buffer.f25917c);
                if (z10) {
                    sink.close();
                } else {
                    sink.flush();
                }
            } catch (Throwable th) {
                synchronized (this.f25972b) {
                    this.f25974d = true;
                    this.f25972b.notifyAll();
                    throw th;
                }
            }
        }
    }

    public final Sink sink() {
        return this.f25975e;
    }

    public final Source source() {
        return this.f25976f;
    }
}
