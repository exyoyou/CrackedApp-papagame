package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.i;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.Arrays;

/* JADX INFO: loaded from: classes9.dex */
public class d extends a {
    public d() {
        super("mp4s");
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(s());
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.position(6);
        i.f(byteBufferAllocate, this.f25060o);
        writableByteChannel.write((ByteBuffer) byteBufferAllocate.rewind());
        h(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public long getSize() {
        long jO = o() + 8;
        return jO + ((long) ((this.f33267m || jO >= 4294967296L) ? 16 : 8));
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void i(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j10, com.coremedia.iso.c cVar) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        eVar.read(byteBufferAllocate);
        byteBufferAllocate.position(6);
        this.f25060o = com.coremedia.iso.g.i(byteBufferAllocate);
        p(eVar, j10 - 8, cVar);
    }

    @Override // com.googlecode.mp4parser.d
    public String toString() {
        return "MpegSampleEntry" + Arrays.asList(l());
    }

    public d(String str) {
        super(str);
    }
}
