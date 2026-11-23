package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.boxes.j;
import com.coremedia.iso.i;
import com.coremedia.iso.l;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes9.dex */
public final class h extends com.coremedia.iso.boxes.sampleentry.a implements j {
    public static final String A = "avc3";
    public static final String B = "drmi";
    public static final String C = "hvc1";
    public static final String D = "hev1";
    public static final String E = "encv";
    static final /* synthetic */ boolean F = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final String f25107x = "mp4v";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final String f25108y = "s263";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final String f25109z = "avc1";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f25110p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f25111q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private double f25112r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private double f25113s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f25114t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f25115u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f25116v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long[] f25117w;

    class a implements com.googlecode.mp4parser.e {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final /* synthetic */ long f25119c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final /* synthetic */ com.googlecode.mp4parser.e f25120d;

        a(long j10, com.googlecode.mp4parser.e eVar) {
            this.f25119c = j10;
            this.f25120d = eVar;
        }

        @Override // com.googlecode.mp4parser.e
        public void W(long j10) throws IOException {
            this.f25120d.W(j10);
        }

        @Override // com.googlecode.mp4parser.e, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f25120d.close();
        }

        @Override // com.googlecode.mp4parser.e
        public long position() throws IOException {
            return this.f25120d.position();
        }

        @Override // com.googlecode.mp4parser.e
        public ByteBuffer r(long j10, long j11) throws IOException {
            return this.f25120d.r(j10, j11);
        }

        @Override // com.googlecode.mp4parser.e
        public int read(ByteBuffer byteBuffer) throws IOException {
            if (this.f25119c == this.f25120d.position()) {
                return -1;
            }
            if (byteBuffer.remaining() <= this.f25119c - this.f25120d.position()) {
                return this.f25120d.read(byteBuffer);
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(com.googlecode.mp4parser.util.c.a(this.f25119c - this.f25120d.position()));
            this.f25120d.read(byteBufferAllocate);
            byteBuffer.put((ByteBuffer) byteBufferAllocate.rewind());
            return byteBufferAllocate.capacity();
        }

        @Override // com.googlecode.mp4parser.e
        public long size() throws IOException {
            return this.f25119c;
        }

        @Override // com.googlecode.mp4parser.e
        public long w(long j10, long j11, WritableByteChannel writableByteChannel) throws IOException {
            return this.f25120d.w(j10, j11, writableByteChannel);
        }
    }

    public h() {
        super(f25109z);
        this.f25112r = 72.0d;
        this.f25113s = 72.0d;
        this.f25114t = 1;
        this.f25115u = "";
        this.f25116v = 24;
        this.f25117w = new long[3];
    }

    public int I() {
        return this.f25111q;
    }

    public double J() {
        return this.f25112r;
    }

    public double K() {
        return this.f25113s;
    }

    public int L() {
        return this.f25110p;
    }

    public void M(String str) {
        this.f25115u = str;
    }

    public void O(int i10) {
        this.f25116v = i10;
    }

    public void P(int i10) {
        this.f25114t = i10;
    }

    public void Q(int i10) {
        this.f25111q = i10;
    }

    public void R(double d10) {
        this.f25112r = d10;
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(s());
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(78);
        byteBufferAllocate.position(6);
        i.f(byteBufferAllocate, this.f25060o);
        i.f(byteBufferAllocate, 0);
        i.f(byteBufferAllocate, 0);
        i.i(byteBufferAllocate, this.f25117w[0]);
        i.i(byteBufferAllocate, this.f25117w[1]);
        i.i(byteBufferAllocate, this.f25117w[2]);
        i.f(byteBufferAllocate, L());
        i.f(byteBufferAllocate, I());
        i.b(byteBufferAllocate, J());
        i.b(byteBufferAllocate, K());
        i.i(byteBufferAllocate, 0L);
        i.f(byteBufferAllocate, z());
        i.m(byteBufferAllocate, l.c(v()));
        byteBufferAllocate.put(l.b(v()));
        int iC = l.c(v());
        while (iC < 31) {
            iC++;
            byteBufferAllocate.put((byte) 0);
        }
        i.f(byteBufferAllocate, y());
        i.f(byteBufferAllocate, 65535);
        writableByteChannel.write((ByteBuffer) byteBufferAllocate.rewind());
        h(writableByteChannel);
    }

    public void a0(String str) {
        this.f33266l = str;
    }

    public void c0(double d10) {
        this.f25113s = d10;
    }

    public void d0(int i10) {
        this.f25110p = i10;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        long jO = o() + 78;
        return jO + ((long) ((this.f33267m || 8 + jO >= 4294967296L) ? 16 : 8));
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void i(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j10, com.coremedia.iso.c cVar) throws IOException {
        long jPosition = eVar.position() + j10;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(78);
        eVar.read(byteBufferAllocate);
        byteBufferAllocate.position(6);
        this.f25060o = com.coremedia.iso.g.i(byteBufferAllocate);
        com.coremedia.iso.g.i(byteBufferAllocate);
        com.coremedia.iso.g.i(byteBufferAllocate);
        this.f25117w[0] = com.coremedia.iso.g.l(byteBufferAllocate);
        this.f25117w[1] = com.coremedia.iso.g.l(byteBufferAllocate);
        this.f25117w[2] = com.coremedia.iso.g.l(byteBufferAllocate);
        this.f25110p = com.coremedia.iso.g.i(byteBufferAllocate);
        this.f25111q = com.coremedia.iso.g.i(byteBufferAllocate);
        this.f25112r = com.coremedia.iso.g.d(byteBufferAllocate);
        this.f25113s = com.coremedia.iso.g.d(byteBufferAllocate);
        com.coremedia.iso.g.l(byteBufferAllocate);
        this.f25114t = com.coremedia.iso.g.i(byteBufferAllocate);
        int iP = com.coremedia.iso.g.p(byteBufferAllocate);
        if (iP > 31) {
            iP = 31;
        }
        byte[] bArr = new byte[iP];
        byteBufferAllocate.get(bArr);
        this.f25115u = l.a(bArr);
        if (iP < 31) {
            byteBufferAllocate.get(new byte[31 - iP]);
        }
        this.f25116v = com.coremedia.iso.g.i(byteBufferAllocate);
        com.coremedia.iso.g.i(byteBufferAllocate);
        p(new a(jPosition, eVar), j10 - 78, cVar);
    }

    public String v() {
        return this.f25115u;
    }

    public int y() {
        return this.f25116v;
    }

    public int z() {
        return this.f25114t;
    }

    public h(String str) {
        super(str);
        this.f25112r = 72.0d;
        this.f25113s = 72.0d;
        this.f25114t = 1;
        this.f25115u = "";
        this.f25116v = 24;
        this.f25117w = new long[3];
    }
}
