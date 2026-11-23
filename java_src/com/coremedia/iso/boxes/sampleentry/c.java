package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.boxes.j;
import com.coremedia.iso.i;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes9.dex */
public final class c extends com.coremedia.iso.boxes.sampleentry.a {
    public static final String C = "samr";
    public static final String D = "sawb";
    public static final String E = "mp4a";
    public static final String F = "drms";
    public static final String G = "alac";
    public static final String H = "owma";
    public static final String I = "ac-3";
    public static final String J = "ec-3";
    public static final String K = "mlpa";
    public static final String L = "dtsl";
    public static final String M = "dtsh";
    public static final String N = "dtse";
    public static final String O = "enca";
    static final /* synthetic */ boolean P = false;
    private long A;
    private byte[] B;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f25073p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f25074q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f25075r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f25076s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f25077t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f25078u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f25079v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f25080w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f25081x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f25082y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f25083z;

    class a implements com.coremedia.iso.boxes.d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final /* synthetic */ long f25085c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final /* synthetic */ ByteBuffer f25086d;

        a(long j10, ByteBuffer byteBuffer) {
            this.f25085c = j10;
            this.f25086d = byteBuffer;
        }

        @Override // com.coremedia.iso.boxes.d
        public void a(WritableByteChannel writableByteChannel) throws IOException {
            this.f25086d.rewind();
            writableByteChannel.write(this.f25086d);
        }

        @Override // com.coremedia.iso.boxes.d
        public long e() {
            return 0L;
        }

        @Override // com.coremedia.iso.boxes.d
        public void f(j jVar) {
            if (!c.P && jVar != c.this) {
                throw new AssertionError("you cannot diswown this special box");
            }
        }

        @Override // com.coremedia.iso.boxes.d
        public j getParent() {
            return c.this;
        }

        @Override // com.coremedia.iso.boxes.d
        public long getSize() {
            return this.f25085c;
        }

        @Override // com.coremedia.iso.boxes.d
        public String getType() {
            return "----";
        }

        @Override // com.coremedia.iso.boxes.d
        public void i(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j10, com.coremedia.iso.c cVar) throws IOException {
            throw new RuntimeException("NotImplemented");
        }
    }

    public c(String str) {
        super(str);
    }

    public int I() {
        return this.f25073p;
    }

    public int J() {
        return this.f25077t;
    }

    public int K() {
        return this.f25078u;
    }

    public int L() {
        return this.f25083z;
    }

    public long M() {
        return this.A;
    }

    public long O() {
        return this.f25075r;
    }

    public int P() {
        return this.f25074q;
    }

    public long Q() {
        return this.f25079v;
    }

    public int R() {
        return this.f25076s;
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(s());
        int i10 = this.f25076s;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((i10 == 1 ? 16 : 0) + 28 + (i10 == 2 ? 36 : 0));
        byteBufferAllocate.position(6);
        i.f(byteBufferAllocate, this.f25060o);
        i.f(byteBufferAllocate, this.f25076s);
        i.f(byteBufferAllocate, this.f25083z);
        i.i(byteBufferAllocate, this.A);
        i.f(byteBufferAllocate, this.f25073p);
        i.f(byteBufferAllocate, this.f25074q);
        i.f(byteBufferAllocate, this.f25077t);
        i.f(byteBufferAllocate, this.f25078u);
        if (this.f33266l.equals(K)) {
            i.i(byteBufferAllocate, O());
        } else {
            i.i(byteBufferAllocate, O() << 16);
        }
        if (this.f25076s == 1) {
            i.i(byteBufferAllocate, this.f25079v);
            i.i(byteBufferAllocate, this.f25080w);
            i.i(byteBufferAllocate, this.f25081x);
            i.i(byteBufferAllocate, this.f25082y);
        }
        if (this.f25076s == 2) {
            i.i(byteBufferAllocate, this.f25079v);
            i.i(byteBufferAllocate, this.f25080w);
            i.i(byteBufferAllocate, this.f25081x);
            i.i(byteBufferAllocate, this.f25082y);
            byteBufferAllocate.put(this.B);
        }
        writableByteChannel.write((ByteBuffer) byteBufferAllocate.rewind());
        h(writableByteChannel);
    }

    public byte[] a0() {
        return this.B;
    }

    public void c0(long j10) {
        this.f25081x = j10;
    }

    public void d0(long j10) {
        this.f25080w = j10;
    }

    public void e0(long j10) {
        this.f25082y = j10;
    }

    public void f0(int i10) {
        this.f25073p = i10;
    }

    public void g0(int i10) {
        this.f25077t = i10;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        int i10 = this.f25076s;
        int i11 = 16;
        long jO = ((long) ((i10 == 1 ? 16 : 0) + 28 + (i10 == 2 ? 36 : 0))) + o();
        if (!this.f33267m && 8 + jO < 4294967296L) {
            i11 = 8;
        }
        return jO + ((long) i11);
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void i(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j10, com.coremedia.iso.c cVar) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(28);
        eVar.read(byteBufferAllocate);
        byteBufferAllocate.position(6);
        this.f25060o = com.coremedia.iso.g.i(byteBufferAllocate);
        this.f25076s = com.coremedia.iso.g.i(byteBufferAllocate);
        this.f25083z = com.coremedia.iso.g.i(byteBufferAllocate);
        this.A = com.coremedia.iso.g.l(byteBufferAllocate);
        this.f25073p = com.coremedia.iso.g.i(byteBufferAllocate);
        this.f25074q = com.coremedia.iso.g.i(byteBufferAllocate);
        this.f25077t = com.coremedia.iso.g.i(byteBufferAllocate);
        this.f25078u = com.coremedia.iso.g.i(byteBufferAllocate);
        this.f25075r = com.coremedia.iso.g.l(byteBufferAllocate);
        if (!this.f33266l.equals(K)) {
            this.f25075r >>>= 16;
        }
        if (this.f25076s == 1) {
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(16);
            eVar.read(byteBufferAllocate2);
            byteBufferAllocate2.rewind();
            this.f25079v = com.coremedia.iso.g.l(byteBufferAllocate2);
            this.f25080w = com.coremedia.iso.g.l(byteBufferAllocate2);
            this.f25081x = com.coremedia.iso.g.l(byteBufferAllocate2);
            this.f25082y = com.coremedia.iso.g.l(byteBufferAllocate2);
        }
        if (this.f25076s == 2) {
            ByteBuffer byteBufferAllocate3 = ByteBuffer.allocate(36);
            eVar.read(byteBufferAllocate3);
            byteBufferAllocate3.rewind();
            this.f25079v = com.coremedia.iso.g.l(byteBufferAllocate3);
            this.f25080w = com.coremedia.iso.g.l(byteBufferAllocate3);
            this.f25081x = com.coremedia.iso.g.l(byteBufferAllocate3);
            this.f25082y = com.coremedia.iso.g.l(byteBufferAllocate3);
            byte[] bArr = new byte[20];
            this.B = bArr;
            byteBufferAllocate3.get(bArr);
        }
        if (!H.equals(this.f33266l)) {
            long j11 = j10 - 28;
            int i10 = this.f25076s;
            p(eVar, (j11 - ((long) (i10 != 1 ? 0 : 16))) - ((long) (i10 != 2 ? 0 : 36)), cVar);
            return;
        }
        System.err.println(H);
        long j12 = j10 - 28;
        int i11 = this.f25076s;
        long j13 = (j12 - ((long) (i11 != 1 ? 0 : 16))) - ((long) (i11 != 2 ? 0 : 36));
        ByteBuffer byteBufferAllocate4 = ByteBuffer.allocate(com.googlecode.mp4parser.util.c.a(j13));
        eVar.read(byteBufferAllocate4);
        m(new a(j13, byteBufferAllocate4));
    }

    public void i0(int i10) {
        this.f25078u = i10;
    }

    public void j0(int i10) {
        this.f25083z = i10;
    }

    public void k0(long j10) {
        this.A = j10;
    }

    public void l0(long j10) {
        this.f25075r = j10;
    }

    public void m0(int i10) {
        this.f25074q = i10;
    }

    public void n0(long j10) {
        this.f25079v = j10;
    }

    public void o0(int i10) {
        this.f25076s = i10;
    }

    public void p0(byte[] bArr) {
        this.B = bArr;
    }

    public void q0(String str) {
        this.f33266l = str;
    }

    @Override // com.googlecode.mp4parser.d
    public String toString() {
        return "AudioSampleEntry{bytesPerSample=" + this.f25082y + ", bytesPerFrame=" + this.f25081x + ", bytesPerPacket=" + this.f25080w + ", samplesPerPacket=" + this.f25079v + ", packetSize=" + this.f25078u + ", compressionId=" + this.f25077t + ", soundVersion=" + this.f25076s + ", sampleRate=" + this.f25075r + ", sampleSize=" + this.f25074q + ", channelCount=" + this.f25073p + ", boxes=" + l() + '}';
    }

    public long v() {
        return this.f25081x;
    }

    public long y() {
        return this.f25080w;
    }

    public long z() {
        return this.f25082y;
    }
}
