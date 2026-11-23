package com.coremedia.iso.boxes;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes9.dex */
public class b0 extends com.googlecode.mp4parser.b implements v {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f24718q = "ipro";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f24719o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f24720p;

    public b0() {
        super(f24718q);
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(s());
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(6);
        com.coremedia.iso.i.m(byteBufferAllocate, this.f24719o);
        com.coremedia.iso.i.h(byteBufferAllocate, this.f24720p);
        com.coremedia.iso.i.f(byteBufferAllocate, l().size());
        writableByteChannel.write((ByteBuffer) byteBufferAllocate.rewind());
        h(writableByteChannel);
    }

    @Override // com.coremedia.iso.boxes.v
    public int getFlags() {
        return this.f24720p;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        long jO = o() + 6;
        return jO + ((long) ((this.f33267m || jO >= 4294967296L) ? 16 : 8));
    }

    @Override // com.coremedia.iso.boxes.v
    public int getVersion() {
        return this.f24719o;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void i(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j10, com.coremedia.iso.c cVar) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(6);
        eVar.read(byteBufferAllocate);
        byteBufferAllocate.rewind();
        this.f24719o = com.coremedia.iso.g.p(byteBufferAllocate);
        this.f24720p = com.coremedia.iso.g.k(byteBufferAllocate);
        p(eVar, j10 - 6, cVar);
    }

    @Override // com.coremedia.iso.boxes.v
    public void setFlags(int i10) {
        this.f24720p = i10;
    }

    @Override // com.coremedia.iso.boxes.v
    public void setVersion(int i10) {
        this.f24719o = i10;
    }

    public w0 v() {
        if (c(w0.class).isEmpty()) {
            return null;
        }
        return (w0) c(w0.class).get(0);
    }
}
