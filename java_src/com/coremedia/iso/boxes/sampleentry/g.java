package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.i;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.Arrays;

/* JADX INFO: loaded from: classes9.dex */
public class g extends com.coremedia.iso.boxes.sampleentry.a {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f25089v = "tx3g";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final String f25090w = "enct";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f25091p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f25092q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f25093r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int[] f25094s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private a f25095t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private b f25096u;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f25097a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f25098b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f25099c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f25100d;

        public a() {
        }

        public void a(ByteBuffer byteBuffer) {
            i.f(byteBuffer, this.f25097a);
            i.f(byteBuffer, this.f25098b);
            i.f(byteBuffer, this.f25099c);
            i.f(byteBuffer, this.f25100d);
        }

        public int b() {
            return 8;
        }

        public void c(ByteBuffer byteBuffer) {
            this.f25097a = com.coremedia.iso.g.i(byteBuffer);
            this.f25098b = com.coremedia.iso.g.i(byteBuffer);
            this.f25099c = com.coremedia.iso.g.i(byteBuffer);
            this.f25100d = com.coremedia.iso.g.i(byteBuffer);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f25099c == aVar.f25099c && this.f25098b == aVar.f25098b && this.f25100d == aVar.f25100d && this.f25097a == aVar.f25097a;
        }

        public int hashCode() {
            return (((((this.f25097a * 31) + this.f25098b) * 31) + this.f25099c) * 31) + this.f25100d;
        }

        public a(int i10, int i11, int i12, int i13) {
            this.f25097a = i10;
            this.f25098b = i11;
            this.f25099c = i12;
            this.f25100d = i13;
        }
    }

    public g() {
        super(f25089v);
        this.f25094s = new int[4];
        this.f25095t = new a();
        this.f25096u = new b();
    }

    public b I() {
        return this.f25096u;
    }

    public int J() {
        return this.f25093r;
    }

    public boolean K() {
        return (this.f25091p & 2048) == 2048;
    }

    public boolean L() {
        return (this.f25091p & 262144) == 262144;
    }

    public boolean M() {
        return (this.f25091p & 384) == 384;
    }

    public boolean O() {
        return (this.f25091p & 32) == 32;
    }

    public boolean P() {
        return (this.f25091p & 64) == 64;
    }

    public boolean Q() {
        return (this.f25091p & 131072) == 131072;
    }

    public void R(int[] iArr) {
        this.f25094s = iArr;
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(s());
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(38);
        byteBufferAllocate.position(6);
        i.f(byteBufferAllocate, this.f25060o);
        i.i(byteBufferAllocate, this.f25091p);
        i.m(byteBufferAllocate, this.f25092q);
        i.m(byteBufferAllocate, this.f25093r);
        i.m(byteBufferAllocate, this.f25094s[0]);
        i.m(byteBufferAllocate, this.f25094s[1]);
        i.m(byteBufferAllocate, this.f25094s[2]);
        i.m(byteBufferAllocate, this.f25094s[3]);
        this.f25095t.a(byteBufferAllocate);
        this.f25096u.a(byteBufferAllocate);
        writableByteChannel.write((ByteBuffer) byteBufferAllocate.rewind());
        h(writableByteChannel);
    }

    public void a0(a aVar) {
        this.f25095t = aVar;
    }

    public void c0(boolean z10) {
        if (z10) {
            this.f25091p |= 2048;
        } else {
            this.f25091p &= -2049;
        }
    }

    public void d0(boolean z10) {
        if (z10) {
            this.f25091p |= 262144;
        } else {
            this.f25091p &= -262145;
        }
    }

    public void e0(int i10) {
        this.f25092q = i10;
    }

    public void f0(boolean z10) {
        if (z10) {
            this.f25091p |= 384;
        } else {
            this.f25091p &= -385;
        }
    }

    public void g0(boolean z10) {
        if (z10) {
            this.f25091p |= 32;
        } else {
            this.f25091p &= -33;
        }
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        long jO = o() + 38;
        return jO + ((long) ((this.f33267m || jO >= 4294967296L) ? 16 : 8));
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void i(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j10, com.coremedia.iso.c cVar) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(38);
        eVar.read(byteBufferAllocate);
        byteBufferAllocate.position(6);
        this.f25060o = com.coremedia.iso.g.i(byteBufferAllocate);
        this.f25091p = com.coremedia.iso.g.l(byteBufferAllocate);
        this.f25092q = com.coremedia.iso.g.p(byteBufferAllocate);
        this.f25093r = com.coremedia.iso.g.p(byteBufferAllocate);
        int[] iArr = new int[4];
        this.f25094s = iArr;
        iArr[0] = com.coremedia.iso.g.p(byteBufferAllocate);
        this.f25094s[1] = com.coremedia.iso.g.p(byteBufferAllocate);
        this.f25094s[2] = com.coremedia.iso.g.p(byteBufferAllocate);
        this.f25094s[3] = com.coremedia.iso.g.p(byteBufferAllocate);
        a aVar = new a();
        this.f25095t = aVar;
        aVar.c(byteBufferAllocate);
        b bVar = new b();
        this.f25096u = bVar;
        bVar.c(byteBufferAllocate);
        p(eVar, j10 - 38, cVar);
    }

    public void i0(boolean z10) {
        if (z10) {
            this.f25091p |= 64;
        } else {
            this.f25091p &= -65;
        }
    }

    public void j0(b bVar) {
        this.f25096u = bVar;
    }

    public void k0(String str) {
        this.f33266l = str;
    }

    public void l0(int i10) {
        this.f25093r = i10;
    }

    public void m0(boolean z10) {
        if (z10) {
            this.f25091p |= 131072;
        } else {
            this.f25091p &= -131073;
        }
    }

    @Override // com.googlecode.mp4parser.d
    public String toString() {
        return "TextSampleEntry";
    }

    public int[] v() {
        return this.f25094s;
    }

    public a y() {
        return this.f25095t;
    }

    public int z() {
        return this.f25092q;
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f25101a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f25102b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f25103c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f25104d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f25105e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int[] f25106f;

        public b() {
            this.f25106f = new int[]{255, 255, 255, 255};
        }

        public void a(ByteBuffer byteBuffer) {
            i.f(byteBuffer, this.f25101a);
            i.f(byteBuffer, this.f25102b);
            i.f(byteBuffer, this.f25103c);
            i.m(byteBuffer, this.f25104d);
            i.m(byteBuffer, this.f25105e);
            i.m(byteBuffer, this.f25106f[0]);
            i.m(byteBuffer, this.f25106f[1]);
            i.m(byteBuffer, this.f25106f[2]);
            i.m(byteBuffer, this.f25106f[3]);
        }

        public int b() {
            return 12;
        }

        public void c(ByteBuffer byteBuffer) {
            this.f25101a = com.coremedia.iso.g.i(byteBuffer);
            this.f25102b = com.coremedia.iso.g.i(byteBuffer);
            this.f25103c = com.coremedia.iso.g.i(byteBuffer);
            this.f25104d = com.coremedia.iso.g.p(byteBuffer);
            this.f25105e = com.coremedia.iso.g.p(byteBuffer);
            int[] iArr = new int[4];
            this.f25106f = iArr;
            iArr[0] = com.coremedia.iso.g.p(byteBuffer);
            this.f25106f[1] = com.coremedia.iso.g.p(byteBuffer);
            this.f25106f[2] = com.coremedia.iso.g.p(byteBuffer);
            this.f25106f[3] = com.coremedia.iso.g.p(byteBuffer);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            return this.f25102b == bVar.f25102b && this.f25104d == bVar.f25104d && this.f25103c == bVar.f25103c && this.f25105e == bVar.f25105e && this.f25101a == bVar.f25101a && Arrays.equals(this.f25106f, bVar.f25106f);
        }

        public int hashCode() {
            int i10 = ((((((((this.f25101a * 31) + this.f25102b) * 31) + this.f25103c) * 31) + this.f25104d) * 31) + this.f25105e) * 31;
            int[] iArr = this.f25106f;
            return i10 + (iArr != null ? Arrays.hashCode(iArr) : 0);
        }

        public b(int i10, int i11, int i12, int i13, int i14, int[] iArr) {
            this.f25101a = i10;
            this.f25102b = i11;
            this.f25103c = i12;
            this.f25104d = i13;
            this.f25105e = i14;
            this.f25106f = iArr;
        }
    }

    public g(String str) {
        super(str);
        this.f25094s = new int[4];
        this.f25095t = new a();
        this.f25096u = new b();
    }
}
