package com.czhj.wire.okio;

import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Deflater;

/* JADX INFO: loaded from: classes9.dex */
public final class GzipSink implements Sink {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BufferedSink f25931a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Deflater f25932b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final DeflaterSink f25933c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f25934d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CRC32 f25935e = new CRC32();

    public GzipSink(Sink sink) {
        if (sink == null) {
            throw new IllegalArgumentException("sink == null");
        }
        Deflater deflater = new Deflater(-1, true);
        this.f25932b = deflater;
        BufferedSink bufferedSinkBuffer = Okio.buffer(sink);
        this.f25931a = bufferedSinkBuffer;
        this.f25933c = new DeflaterSink(bufferedSinkBuffer, deflater);
        a();
    }

    private void a() {
        Buffer buffer = this.f25931a.buffer();
        buffer.writeShort(8075);
        buffer.writeByte(8);
        buffer.writeByte(0);
        buffer.writeInt(0);
        buffer.writeByte(0);
        buffer.writeByte(0);
    }

    private void b() throws IOException {
        this.f25931a.writeIntLe((int) this.f25935e.getValue());
        this.f25931a.writeIntLe((int) this.f25932b.getBytesRead());
    }

    @Override // com.czhj.wire.okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.f25934d) {
            return;
        }
        this.f25933c.a();
        b();
        th = null;
        try {
            this.f25932b.end();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        try {
            this.f25931a.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.f25934d = true;
        if (th != null) {
            Util.sneakyRethrow(th);
        }
    }

    public final Deflater deflater() {
        return this.f25932b;
    }

    @Override // com.czhj.wire.okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        this.f25933c.flush();
    }

    @Override // com.czhj.wire.okio.Sink
    public Timeout timeout() {
        return this.f25931a.timeout();
    }

    @Override // com.czhj.wire.okio.Sink
    public void write(Buffer buffer, long j10) throws IOException {
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        if (j10 == 0) {
            return;
        }
        a(buffer, j10);
        this.f25933c.write(buffer, j10);
    }

    private void a(Buffer buffer, long j10) {
        Segment segment = buffer.f25916b;
        while (j10 > 0) {
            int iMin = (int) Math.min(j10, segment.f25994e - segment.f25993d);
            this.f25935e.update(segment.f25992c, segment.f25993d, iMin);
            j10 -= (long) iMin;
            segment = segment.f25997h;
        }
    }
}
