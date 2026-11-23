package com.coremedia.iso.boxes;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes9.dex */
public class o extends com.googlecode.mp4parser.b implements v {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f25007q = "dref";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f25008o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f25009p;

    public o() {
        super(f25007q);
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(s());
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        com.coremedia.iso.i.m(byteBufferAllocate, this.f25008o);
        com.coremedia.iso.i.h(byteBufferAllocate, this.f25009p);
        com.coremedia.iso.i.i(byteBufferAllocate, l().size());
        writableByteChannel.write((ByteBuffer) byteBufferAllocate.rewind());
        h(writableByteChannel);
    }

    @Override // com.coremedia.iso.boxes.v
    public int getFlags() {
        return this.f25009p;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        long jO = o() + 8;
        return jO + ((long) ((this.f33267m || 8 + jO >= 4294967296L) ? 16 : 8));
    }

    @Override // com.coremedia.iso.boxes.v
    public int getVersion() {
        return this.f25008o;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void i(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j10, com.coremedia.iso.c cVar) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        eVar.read(byteBufferAllocate);
        byteBufferAllocate.rewind();
        this.f25008o = com.coremedia.iso.g.p(byteBufferAllocate);
        this.f25009p = com.coremedia.iso.g.k(byteBufferAllocate);
        p(eVar, j10 - 8, cVar);
    }

    @Override // com.coremedia.iso.boxes.v
    public void setFlags(int i10) {
        this.f25009p = i10;
    }

    @Override // com.coremedia.iso.boxes.v
    public void setVersion(int i10) {
        this.f25008o = i10;
    }
}
