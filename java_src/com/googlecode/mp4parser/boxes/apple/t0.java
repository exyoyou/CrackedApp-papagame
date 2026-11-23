package com.googlecode.mp4parser.boxes.apple;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class t0 extends com.coremedia.iso.boxes.sampleentry.a {
    public static final String F = "text";
    int A;
    int B;
    int C;
    String D;
    int E;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f33341p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f33342q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f33343r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f33344s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f33345t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    long f33346u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    long f33347v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    short f33348w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    short f33349x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    byte f33350y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    short f33351z;

    public t0() {
        super("text");
        this.A = 65535;
        this.B = 65535;
        this.C = 65535;
        this.D = "";
    }

    public long I() {
        return this.f33346u;
    }

    public int J() {
        return this.f33341p;
    }

    public short K() {
        return this.f33349x;
    }

    public String L() {
        return this.D;
    }

    public short M() {
        return this.f33348w;
    }

    public int O() {
        return this.C;
    }

    public int P() {
        return this.B;
    }

    public int Q() {
        return this.A;
    }

    public long R() {
        return this.f33347v;
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(s());
        String str = this.D;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((str != null ? str.length() : 0) + 52);
        byteBufferAllocate.position(6);
        com.coremedia.iso.i.f(byteBufferAllocate, this.E);
        byteBufferAllocate.putInt(this.f33341p);
        byteBufferAllocate.putInt(this.f33342q);
        com.coremedia.iso.i.f(byteBufferAllocate, this.f33343r);
        com.coremedia.iso.i.f(byteBufferAllocate, this.f33344s);
        com.coremedia.iso.i.f(byteBufferAllocate, this.f33345t);
        com.coremedia.iso.i.l(byteBufferAllocate, this.f33346u);
        com.coremedia.iso.i.l(byteBufferAllocate, this.f33347v);
        byteBufferAllocate.putShort(this.f33348w);
        byteBufferAllocate.putShort(this.f33349x);
        byteBufferAllocate.put(this.f33350y);
        byteBufferAllocate.putShort(this.f33351z);
        com.coremedia.iso.i.f(byteBufferAllocate, this.A);
        com.coremedia.iso.i.f(byteBufferAllocate, this.B);
        com.coremedia.iso.i.f(byteBufferAllocate, this.C);
        String str2 = this.D;
        if (str2 != null) {
            com.coremedia.iso.i.m(byteBufferAllocate, str2.length());
            byteBufferAllocate.put(this.D.getBytes());
        }
        writableByteChannel.write((ByteBuffer) byteBufferAllocate.rewind());
    }

    public byte a0() {
        return this.f33350y;
    }

    @Override // com.googlecode.mp4parser.d, com.coremedia.iso.boxes.j
    public void b(List<com.coremedia.iso.boxes.d> list) {
        throw new RuntimeException("QuicktimeTextSampleEntries may not have child boxes");
    }

    public short c0() {
        return this.f33351z;
    }

    public int d0() {
        return this.f33342q;
    }

    public void e0(int i10) {
        this.f33345t = i10;
    }

    public void f0(int i10) {
        this.f33344s = i10;
    }

    public void g0(int i10) {
        this.f33343r = i10;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        long jO = o() + 52;
        String str = this.D;
        long length = jO + ((long) (str != null ? str.length() : 0));
        return length + ((long) ((this.f33267m || 8 + length >= 4294967296L) ? 16 : 8));
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void i(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j10, com.coremedia.iso.c cVar) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(com.googlecode.mp4parser.util.c.a(j10));
        eVar.read(byteBufferAllocate);
        byteBufferAllocate.position(6);
        this.E = com.coremedia.iso.g.i(byteBufferAllocate);
        this.f33341p = byteBufferAllocate.getInt();
        this.f33342q = byteBufferAllocate.getInt();
        this.f33343r = com.coremedia.iso.g.i(byteBufferAllocate);
        this.f33344s = com.coremedia.iso.g.i(byteBufferAllocate);
        this.f33345t = com.coremedia.iso.g.i(byteBufferAllocate);
        this.f33346u = com.coremedia.iso.g.o(byteBufferAllocate);
        this.f33347v = com.coremedia.iso.g.o(byteBufferAllocate);
        this.f33348w = byteBufferAllocate.getShort();
        this.f33349x = byteBufferAllocate.getShort();
        this.f33350y = byteBufferAllocate.get();
        this.f33351z = byteBufferAllocate.getShort();
        this.A = com.coremedia.iso.g.i(byteBufferAllocate);
        this.B = com.coremedia.iso.g.i(byteBufferAllocate);
        this.C = com.coremedia.iso.g.i(byteBufferAllocate);
        if (byteBufferAllocate.remaining() <= 0) {
            this.D = null;
            return;
        }
        byte[] bArr = new byte[com.coremedia.iso.g.p(byteBufferAllocate)];
        byteBufferAllocate.get(bArr);
        this.D = new String(bArr);
    }

    public void i0(long j10) {
        this.f33346u = j10;
    }

    public void j0(int i10) {
        this.f33341p = i10;
    }

    public void k0(short s10) {
        this.f33349x = s10;
    }

    public void l0(String str) {
        this.D = str;
    }

    @Override // com.googlecode.mp4parser.d
    public void m(com.coremedia.iso.boxes.d dVar) {
        throw new RuntimeException("QuicktimeTextSampleEntries may not have child boxes");
    }

    public void m0(short s10) {
        this.f33348w = s10;
    }

    public void n0(int i10) {
        this.C = i10;
    }

    public void o0(int i10) {
        this.B = i10;
    }

    public void p0(int i10) {
        this.A = i10;
    }

    public void q0(long j10) {
        this.f33347v = j10;
    }

    public void r0(byte b10) {
        this.f33350y = b10;
    }

    public void s0(short s10) {
        this.f33351z = s10;
    }

    public void t0(int i10) {
        this.f33342q = i10;
    }

    public int v() {
        return this.f33345t;
    }

    public int y() {
        return this.f33344s;
    }

    public int z() {
        return this.f33343r;
    }
}
