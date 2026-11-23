package com.czhj.wire.okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import kotlin.UShort;

/* JADX INFO: loaded from: classes9.dex */
public final class GzipSource implements Source {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte f25936a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final byte f25937b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte f25938c = 3;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final byte f25939d = 4;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final byte f25940e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final byte f25941f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final byte f25942g = 2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final byte f25943h = 3;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final BufferedSource f25945j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Inflater f25946k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final InflaterSource f25947l;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f25944i = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final CRC32 f25948m = new CRC32();

    public GzipSource(Source source) {
        if (source == null) {
            throw new IllegalArgumentException("source == null");
        }
        Inflater inflater = new Inflater(true);
        this.f25946k = inflater;
        BufferedSource bufferedSourceBuffer = Okio.buffer(source);
        this.f25945j = bufferedSourceBuffer;
        this.f25947l = new InflaterSource(bufferedSourceBuffer, inflater);
    }

    private void a() throws IOException {
        this.f25945j.require(10L);
        byte b10 = this.f25945j.buffer().getByte(3L);
        boolean z10 = ((b10 >> 1) & 1) == 1;
        if (z10) {
            a(this.f25945j.buffer(), 0L, 10L);
        }
        a("ID1ID2", 8075, this.f25945j.readShort());
        this.f25945j.skip(8L);
        if (((b10 >> 2) & 1) == 1) {
            this.f25945j.require(2L);
            if (z10) {
                a(this.f25945j.buffer(), 0L, 2L);
            }
            long shortLe = this.f25945j.buffer().readShortLe() & UShort.MAX_VALUE;
            this.f25945j.require(shortLe);
            if (z10) {
                a(this.f25945j.buffer(), 0L, shortLe);
            }
            this.f25945j.skip(shortLe);
        }
        if (((b10 >> 3) & 1) == 1) {
            long jIndexOf = this.f25945j.indexOf((byte) 0);
            if (jIndexOf == -1) {
                throw new EOFException();
            }
            if (z10) {
                a(this.f25945j.buffer(), 0L, jIndexOf + 1);
            }
            this.f25945j.skip(jIndexOf + 1);
        }
        if (((b10 >> 4) & 1) == 1) {
            long jIndexOf2 = this.f25945j.indexOf((byte) 0);
            if (jIndexOf2 == -1) {
                throw new EOFException();
            }
            if (z10) {
                a(this.f25945j.buffer(), 0L, jIndexOf2 + 1);
            }
            this.f25945j.skip(jIndexOf2 + 1);
        }
        if (z10) {
            a("FHCRC", this.f25945j.readShortLe(), (short) this.f25948m.getValue());
            this.f25948m.reset();
        }
    }

    private void b() throws IOException {
        a("CRC", this.f25945j.readIntLe(), (int) this.f25948m.getValue());
        a("ISIZE", this.f25945j.readIntLe(), (int) this.f25946k.getBytesWritten());
    }

    @Override // com.czhj.wire.okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f25947l.close();
    }

    @Override // com.czhj.wire.okio.Source
    public long read(Buffer buffer, long j10) throws IOException {
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        if (j10 == 0) {
            return 0L;
        }
        if (this.f25944i == 0) {
            a();
            this.f25944i = 1;
        }
        if (this.f25944i == 1) {
            long j11 = buffer.f25917c;
            long j12 = this.f25947l.read(buffer, j10);
            if (j12 != -1) {
                a(buffer, j11, j12);
                return j12;
            }
            this.f25944i = 2;
        }
        if (this.f25944i == 2) {
            b();
            this.f25944i = 3;
            if (!this.f25945j.exhausted()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // com.czhj.wire.okio.Source
    public Timeout timeout() {
        return this.f25945j.timeout();
    }

    private void a(Buffer buffer, long j10, long j11) {
        Segment segment = buffer.f25916b;
        while (true) {
            int i10 = segment.f25994e;
            int i11 = segment.f25993d;
            if (j10 < i10 - i11) {
                break;
            }
            j10 -= (long) (i10 - i11);
            segment = segment.f25997h;
        }
        while (j11 > 0) {
            int i12 = (int) (((long) segment.f25993d) + j10);
            int iMin = (int) Math.min(segment.f25994e - i12, j11);
            this.f25948m.update(segment.f25992c, i12, iMin);
            j11 -= (long) iMin;
            segment = segment.f25997h;
            j10 = 0;
        }
    }

    private void a(String str, int i10, int i11) throws IOException {
        if (i11 != i10) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i11), Integer.valueOf(i10)));
        }
    }
}
