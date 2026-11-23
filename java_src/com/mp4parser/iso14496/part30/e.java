package com.mp4parser.iso14496.part30;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes2.dex */
public class e extends com.coremedia.iso.boxes.sampleentry.a {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String f75724s = "stpp";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f75725p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f75726q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f75727r;

    public e() {
        super(f75724s);
        this.f75725p = "";
        this.f75726q = "";
        this.f75727r = "";
    }

    public void I(String str) {
        this.f75727r = str;
    }

    public void J(String str) {
        this.f75725p = str;
    }

    public void K(String str) {
        this.f75726q = str;
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(s());
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(this.f75725p.length() + 8 + this.f75726q.length() + this.f75727r.length() + 3);
        byteBufferAllocate.position(6);
        i.f(byteBufferAllocate, this.f25060o);
        i.o(byteBufferAllocate, this.f75725p);
        i.o(byteBufferAllocate, this.f75726q);
        i.o(byteBufferAllocate, this.f75727r);
        writableByteChannel.write((ByteBuffer) byteBufferAllocate.rewind());
        h(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        long jO = o() + ((long) (this.f75725p.length() + 8 + this.f75726q.length() + this.f75727r.length() + 3));
        return jO + ((long) ((this.f33267m || 8 + jO >= 4294967296L) ? 16 : 8));
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void i(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j10, com.coremedia.iso.c cVar) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        eVar.read((ByteBuffer) byteBufferAllocate.rewind());
        byteBufferAllocate.position(6);
        this.f25060o = g.i(byteBufferAllocate);
        long jPosition = eVar.position();
        ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(1024);
        eVar.read((ByteBuffer) byteBufferAllocate2.rewind());
        String strG = g.g((ByteBuffer) byteBufferAllocate2.rewind());
        this.f75725p = strG;
        eVar.W(((long) strG.length()) + jPosition + 1);
        eVar.read((ByteBuffer) byteBufferAllocate2.rewind());
        this.f75726q = g.g((ByteBuffer) byteBufferAllocate2.rewind());
        eVar.W(((long) this.f75725p.length()) + jPosition + ((long) this.f75726q.length()) + 2);
        eVar.read((ByteBuffer) byteBufferAllocate2.rewind());
        this.f75727r = g.g((ByteBuffer) byteBufferAllocate2.rewind());
        eVar.W(jPosition + ((long) this.f75725p.length()) + ((long) this.f75726q.length()) + ((long) this.f75727r.length()) + 3);
        p(eVar, j10 - ((long) ((((byteBuffer.remaining() + this.f75725p.length()) + this.f75726q.length()) + this.f75727r.length()) + 3)), cVar);
    }

    public String v() {
        return this.f75727r;
    }

    public String y() {
        return this.f75725p;
    }

    public String z() {
        return this.f75726q;
    }
}
