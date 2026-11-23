package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.i;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes9.dex */
public class e extends a {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f25087q = "ovc1";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private byte[] f25088p;

    public e() {
        super(f25087q);
        this.f25088p = new byte[0];
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(s());
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.position(6);
        i.f(byteBufferAllocate, this.f25060o);
        writableByteChannel.write((ByteBuffer) byteBufferAllocate.rewind());
        writableByteChannel.write(ByteBuffer.wrap(this.f25088p));
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        int i10 = 16;
        if (!this.f33267m && this.f25088p.length + 16 < 4294967296L) {
            i10 = 8;
        }
        return ((long) i10) + ((long) this.f25088p.length) + 8;
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void i(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j10, com.coremedia.iso.c cVar) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(com.googlecode.mp4parser.util.c.a(j10));
        eVar.read(byteBufferAllocate);
        byteBufferAllocate.position(6);
        this.f25060o = com.coremedia.iso.g.i(byteBufferAllocate);
        byte[] bArr = new byte[byteBufferAllocate.remaining()];
        this.f25088p = bArr;
        byteBufferAllocate.get(bArr);
    }

    public byte[] v() {
        return this.f25088p;
    }

    public void x(byte[] bArr) {
        this.f25088p = bArr;
    }
}
