package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.r0;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c extends com.googlecode.mp4parser.authoring.a {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static int f33074k = 67107840;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.googlecode.mp4parser.e f33075e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected long[] f33076f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected List<com.coremedia.iso.boxes.i.a> f33077g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected List<r0.a> f33078h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected List<Integer> f33079i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    com.googlecode.mp4parser.authoring.i f33080j;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f33081a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f33082b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        com.googlecode.mp4parser.e f33083c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ByteBuffer f33084d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        long f33085e;

        public a(com.googlecode.mp4parser.e eVar) throws IOException {
            this.f33083c = eVar;
            c();
        }

        public void a() {
            this.f33082b++;
        }

        public void b() {
            int i10 = this.f33082b + 3;
            this.f33082b = i10;
            this.f33085e = this.f33081a + ((long) i10);
        }

        public void c() throws IOException {
            com.googlecode.mp4parser.e eVar = this.f33083c;
            this.f33084d = eVar.r(this.f33081a, Math.min(eVar.size() - this.f33081a, c.f33074k));
        }

        public ByteBuffer d() {
            long j10 = this.f33085e;
            long j11 = this.f33081a;
            if (j10 < j11) {
                throw new RuntimeException("damn! NAL exceeds buffer");
            }
            this.f33084d.position((int) (j10 - j11));
            ByteBuffer byteBufferSlice = this.f33084d.slice();
            byteBufferSlice.limit((int) (((long) this.f33082b) - (this.f33085e - this.f33081a)));
            return byteBufferSlice;
        }

        public boolean e() throws IOException {
            int iLimit = this.f33084d.limit();
            int i10 = this.f33082b;
            if (iLimit - i10 >= 3) {
                return this.f33084d.get(i10) == 0 && this.f33084d.get(this.f33082b + 1) == 0 && (this.f33084d.get(this.f33082b + 2) == 0 || this.f33084d.get(this.f33082b + 2) == 1);
            }
            if (this.f33081a + ((long) i10) + 3 > this.f33083c.size()) {
                return this.f33081a + ((long) this.f33082b) == this.f33083c.size();
            }
            this.f33081a = this.f33085e;
            this.f33082b = 0;
            c();
            return e();
        }

        public boolean f() throws IOException {
            int iLimit = this.f33084d.limit();
            int i10 = this.f33082b;
            if (iLimit - i10 >= 3) {
                return this.f33084d.get(i10) == 0 && this.f33084d.get(this.f33082b + 1) == 0 && this.f33084d.get(this.f33082b + 2) == 1;
            }
            if (this.f33081a + ((long) i10) + 3 < this.f33083c.size()) {
                return false;
            }
            throw new EOFException();
        }
    }

    public c(com.googlecode.mp4parser.e eVar) {
        super(eVar.toString());
        this.f33077g = new ArrayList();
        this.f33078h = new ArrayList();
        this.f33079i = new ArrayList();
        this.f33080j = new com.googlecode.mp4parser.authoring.i();
        this.f33075e = eVar;
    }

    static InputStream a(InputStream inputStream) {
        return new i(inputStream);
    }

    protected static byte[] d(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        int iRemaining = byteBufferDuplicate.remaining();
        byte[] bArr = new byte[iRemaining];
        byteBufferDuplicate.get(bArr, 0, iRemaining);
        return bArr;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<com.coremedia.iso.boxes.i.a> E() {
        return this.f33077g;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i H() {
        return this.f33080j;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public long[] N() {
        long[] jArr = new long[this.f33079i.size()];
        for (int i10 = 0; i10 < this.f33079i.size(); i10++) {
            jArr[i10] = this.f33079i.get(i10).intValue();
        }
        return jArr;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] Z() {
        return this.f33076f;
    }

    protected com.googlecode.mp4parser.authoring.f b(List<? extends ByteBuffer> list) {
        byte[] bArr = new byte[list.size() * 4];
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        Iterator<? extends ByteBuffer> it2 = list.iterator();
        while (it2.hasNext()) {
            byteBufferWrap.putInt(it2.next().remaining());
        }
        ByteBuffer[] byteBufferArr = new ByteBuffer[list.size() * 2];
        for (int i10 = 0; i10 < list.size(); i10++) {
            int i11 = i10 * 2;
            byteBufferArr[i11] = ByteBuffer.wrap(bArr, i10 * 4, 4);
            byteBufferArr[i11 + 1] = list.get(i10);
        }
        return new com.googlecode.mp4parser.authoring.g(byteBufferArr);
    }

    protected ByteBuffer c(a aVar) throws IOException {
        while (!aVar.f()) {
            try {
                aVar.a();
            } catch (EOFException unused) {
                return null;
            }
        }
        aVar.b();
        while (!aVar.e()) {
            aVar.a();
        }
        return aVar.d();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33075e.close();
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<r0.a> h0() {
        return this.f33078h;
    }
}
