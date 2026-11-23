package com.googlecode.mp4parser;

import com.coremedia.iso.boxes.v;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public abstract class h extends b implements v {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static Logger f33760q = Logger.getLogger(h.class.getName());

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f33761o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f33762p;

    public h(String str) {
        super(str);
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        super.a(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.d, com.coremedia.iso.boxes.j
    public <T extends com.coremedia.iso.boxes.d> List<T> c(Class<T> cls) {
        return k(cls, false);
    }

    @Override // com.coremedia.iso.boxes.v
    public int getFlags() {
        return this.f33762p;
    }

    @Override // com.coremedia.iso.boxes.v
    public int getVersion() {
        return this.f33761o;
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void i(e eVar, ByteBuffer byteBuffer, long j10, com.coremedia.iso.c cVar) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        eVar.read(byteBufferAllocate);
        t((ByteBuffer) byteBufferAllocate.rewind());
        super.i(eVar, byteBuffer, j10, cVar);
    }

    @Override // com.googlecode.mp4parser.b
    protected ByteBuffer s() {
        ByteBuffer byteBufferWrap;
        if (this.f33267m || getSize() >= 4294967296L) {
            byte[] bArr = new byte[20];
            bArr[3] = 1;
            bArr[4] = this.f33266l.getBytes()[0];
            bArr[5] = this.f33266l.getBytes()[1];
            bArr[6] = this.f33266l.getBytes()[2];
            bArr[7] = this.f33266l.getBytes()[3];
            byteBufferWrap = ByteBuffer.wrap(bArr);
            byteBufferWrap.position(8);
            com.coremedia.iso.i.l(byteBufferWrap, getSize());
            u(byteBufferWrap);
        } else {
            byte[] bArr2 = new byte[12];
            bArr2[4] = this.f33266l.getBytes()[0];
            bArr2[5] = this.f33266l.getBytes()[1];
            bArr2[6] = this.f33266l.getBytes()[2];
            bArr2[7] = this.f33266l.getBytes()[3];
            byteBufferWrap = ByteBuffer.wrap(bArr2);
            com.coremedia.iso.i.i(byteBufferWrap, getSize());
            byteBufferWrap.position(8);
            u(byteBufferWrap);
        }
        byteBufferWrap.rewind();
        return byteBufferWrap;
    }

    @Override // com.coremedia.iso.boxes.v
    public void setFlags(int i10) {
        this.f33762p = i10;
    }

    @Override // com.coremedia.iso.boxes.v
    public void setVersion(int i10) {
        this.f33761o = i10;
    }

    protected final long t(ByteBuffer byteBuffer) {
        this.f33761o = com.coremedia.iso.g.p(byteBuffer);
        this.f33762p = com.coremedia.iso.g.k(byteBuffer);
        return 4L;
    }

    @Override // com.googlecode.mp4parser.d
    public String toString() {
        return getClass().getSimpleName() + "[childBoxes]";
    }

    protected final void u(ByteBuffer byteBuffer) {
        com.coremedia.iso.i.m(byteBuffer, this.f33761o);
        com.coremedia.iso.i.h(byteBuffer, this.f33762p);
    }
}
