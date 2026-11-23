package com.googlecode.mp4parser;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes5.dex */
public class b extends d implements com.coremedia.iso.boxes.d {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    com.coremedia.iso.boxes.j f33265k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected String f33266l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected boolean f33267m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f33268n;

    public b(String str) {
        this.f33266l = str;
    }

    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(s());
        h(writableByteChannel);
    }

    @Override // com.coremedia.iso.boxes.d
    public long e() {
        return this.f33268n;
    }

    @Override // com.coremedia.iso.boxes.d
    public void f(com.coremedia.iso.boxes.j jVar) {
        this.f33265k = jVar;
    }

    @Override // com.coremedia.iso.boxes.d
    public com.coremedia.iso.boxes.j getParent() {
        return this.f33265k;
    }

    public long getSize() {
        long jO = o();
        return jO + ((long) ((this.f33267m || 8 + jO >= 4294967296L) ? 16 : 8));
    }

    @Override // com.coremedia.iso.boxes.d
    public String getType() {
        return this.f33266l;
    }

    public void i(e eVar, ByteBuffer byteBuffer, long j10, com.coremedia.iso.c cVar) throws IOException {
        this.f33268n = eVar.position() - ((long) byteBuffer.remaining());
        this.f33267m = byteBuffer.remaining() == 16;
        p(eVar, j10, cVar);
    }

    @Override // com.googlecode.mp4parser.d
    public void p(e eVar, long j10, com.coremedia.iso.c cVar) throws IOException {
        this.f33749c = eVar;
        long jPosition = eVar.position();
        this.f33751e = jPosition;
        this.f33752f = jPosition - ((long) ((this.f33267m || 8 + j10 >= 4294967296L) ? 16 : 8));
        eVar.W(eVar.position() + j10);
        this.f33753g = eVar.position();
        this.f33748b = cVar;
    }

    protected ByteBuffer s() {
        ByteBuffer byteBufferWrap;
        if (this.f33267m || getSize() >= 4294967296L) {
            byte[] bArr = new byte[16];
            bArr[3] = 1;
            bArr[4] = this.f33266l.getBytes()[0];
            bArr[5] = this.f33266l.getBytes()[1];
            bArr[6] = this.f33266l.getBytes()[2];
            bArr[7] = this.f33266l.getBytes()[3];
            byteBufferWrap = ByteBuffer.wrap(bArr);
            byteBufferWrap.position(8);
            com.coremedia.iso.i.l(byteBufferWrap, getSize());
        } else {
            byteBufferWrap = ByteBuffer.wrap(new byte[]{0, 0, 0, 0, this.f33266l.getBytes()[0], this.f33266l.getBytes()[1], this.f33266l.getBytes()[2], this.f33266l.getBytes()[3]});
            com.coremedia.iso.i.i(byteBufferWrap, getSize());
        }
        byteBufferWrap.rewind();
        return byteBufferWrap;
    }
}
