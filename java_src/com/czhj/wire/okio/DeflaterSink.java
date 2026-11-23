package com.czhj.wire.okio;

import java.io.IOException;
import java.util.zip.Deflater;

/* JADX INFO: loaded from: classes9.dex */
public final class DeflaterSink implements Sink {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BufferedSink f25925a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Deflater f25926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f25927c;

    DeflaterSink(BufferedSink bufferedSink, Deflater deflater) {
        if (bufferedSink == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (deflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.f25925a = bufferedSink;
        this.f25926b = deflater;
    }

    void a() throws IOException {
        this.f25926b.finish();
        a(false);
    }

    @Override // com.czhj.wire.okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.f25927c) {
            return;
        }
        a();
        th = null;
        try {
            this.f25926b.end();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        try {
            this.f25925a.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.f25927c = true;
        if (th != null) {
            Util.sneakyRethrow(th);
        }
    }

    @Override // com.czhj.wire.okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        a(true);
        this.f25925a.flush();
    }

    @Override // com.czhj.wire.okio.Sink
    public Timeout timeout() {
        return this.f25925a.timeout();
    }

    public String toString() {
        return "DeflaterSink(" + this.f25925a + ")";
    }

    @Override // com.czhj.wire.okio.Sink
    public void write(Buffer buffer, long j10) throws IOException {
        Util.checkOffsetAndCount(buffer.f25917c, 0L, j10);
        while (j10 > 0) {
            Segment segment = buffer.f25916b;
            int iMin = (int) Math.min(j10, segment.f25994e - segment.f25993d);
            this.f25926b.setInput(segment.f25992c, segment.f25993d, iMin);
            a(false);
            long j11 = iMin;
            buffer.f25917c -= j11;
            int i10 = segment.f25993d + iMin;
            segment.f25993d = i10;
            if (i10 == segment.f25994e) {
                buffer.f25916b = segment.pop();
                SegmentPool.a(segment);
            }
            j10 -= j11;
        }
    }

    public DeflaterSink(Sink sink, Deflater deflater) {
        this(Okio.buffer(sink), deflater);
    }

    private void a(boolean z10) throws IOException {
        Segment segmentA;
        Buffer buffer = this.f25925a.buffer();
        while (true) {
            segmentA = buffer.a(1);
            Deflater deflater = this.f25926b;
            byte[] bArr = segmentA.f25992c;
            int i10 = segmentA.f25994e;
            int i11 = 8192 - i10;
            int iDeflate = z10 ? deflater.deflate(bArr, i10, i11, 2) : deflater.deflate(bArr, i10, i11);
            if (iDeflate > 0) {
                segmentA.f25994e += iDeflate;
                buffer.f25917c += (long) iDeflate;
                this.f25925a.emitCompleteSegments();
            } else if (this.f25926b.needsInput()) {
                break;
            }
        }
        if (segmentA.f25993d == segmentA.f25994e) {
            buffer.f25916b = segmentA.pop();
            SegmentPool.a(segmentA);
        }
    }
}
