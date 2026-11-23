package com.coremedia.iso.boxes;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes9.dex */
public class g0 extends com.googlecode.mp4parser.b {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f24873q = "meta";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f24874o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f24875p;

    public g0() {
        super(f24873q);
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(s());
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        u(byteBufferAllocate);
        writableByteChannel.write((ByteBuffer) byteBufferAllocate.rewind());
        h(writableByteChannel);
    }

    public int getFlags() {
        return this.f24875p;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        long jO = o() + 4;
        return jO + ((long) ((this.f33267m || jO >= 4294967296L) ? 16 : 8));
    }

    public int getVersion() {
        return this.f24874o;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void i(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j10, com.coremedia.iso.c cVar) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        eVar.read(byteBufferAllocate);
        t((ByteBuffer) byteBufferAllocate.rewind());
        p(eVar, j10 - 4, cVar);
    }

    public void setFlags(int i10) {
        this.f24875p = i10;
    }

    public void setVersion(int i10) {
        this.f24874o = i10;
    }

    protected final long t(ByteBuffer byteBuffer) {
        this.f24874o = com.coremedia.iso.g.p(byteBuffer);
        this.f24875p = com.coremedia.iso.g.k(byteBuffer);
        return 4L;
    }

    protected final void u(ByteBuffer byteBuffer) {
        com.coremedia.iso.i.m(byteBuffer, this.f24874o);
        com.coremedia.iso.i.h(byteBuffer, this.f24875p);
    }
}
