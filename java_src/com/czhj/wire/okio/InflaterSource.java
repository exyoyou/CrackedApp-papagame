package com.czhj.wire.okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes9.dex */
public final class InflaterSource implements Source {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BufferedSource f25953a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Inflater f25954b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f25955c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f25956d;

    InflaterSource(BufferedSource bufferedSource, Inflater inflater) {
        if (bufferedSource == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.f25953a = bufferedSource;
        this.f25954b = inflater;
    }

    private void a() throws IOException {
        int i10 = this.f25955c;
        if (i10 == 0) {
            return;
        }
        int remaining = i10 - this.f25954b.getRemaining();
        this.f25955c -= remaining;
        this.f25953a.skip(remaining);
    }

    @Override // com.czhj.wire.okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f25956d) {
            return;
        }
        this.f25954b.end();
        this.f25956d = true;
        this.f25953a.close();
    }

    @Override // com.czhj.wire.okio.Source
    public long read(Buffer buffer, long j10) throws IOException {
        boolean zRefill;
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        if (this.f25956d) {
            throw new IllegalStateException("closed");
        }
        if (j10 == 0) {
            return 0L;
        }
        do {
            zRefill = refill();
            try {
                Segment segmentA = buffer.a(1);
                int iInflate = this.f25954b.inflate(segmentA.f25992c, segmentA.f25994e, (int) Math.min(j10, 8192 - segmentA.f25994e));
                if (iInflate > 0) {
                    segmentA.f25994e += iInflate;
                    long j11 = iInflate;
                    buffer.f25917c += j11;
                    return j11;
                }
                if (!this.f25954b.finished() && !this.f25954b.needsDictionary()) {
                }
                a();
                if (segmentA.f25993d != segmentA.f25994e) {
                    return -1L;
                }
                buffer.f25916b = segmentA.pop();
                SegmentPool.a(segmentA);
                return -1L;
            } catch (DataFormatException e10) {
                throw new IOException(e10);
            }
        } while (!zRefill);
        throw new EOFException("source exhausted prematurely");
    }

    public final boolean refill() throws IOException {
        if (!this.f25954b.needsInput()) {
            return false;
        }
        a();
        if (this.f25954b.getRemaining() != 0) {
            throw new IllegalStateException("?");
        }
        if (this.f25953a.exhausted()) {
            return true;
        }
        Segment segment = this.f25953a.buffer().f25916b;
        int i10 = segment.f25994e;
        int i11 = segment.f25993d;
        int i12 = i10 - i11;
        this.f25955c = i12;
        this.f25954b.setInput(segment.f25992c, i11, i12);
        return false;
    }

    @Override // com.czhj.wire.okio.Source
    public Timeout timeout() {
        return this.f25953a.timeout();
    }

    public InflaterSource(Source source, Inflater inflater) {
        this(Okio.buffer(source), inflater);
    }
}
