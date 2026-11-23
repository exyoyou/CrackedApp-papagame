package com.googlecode.mp4parser;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes5.dex */
public class i implements e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ByteBuffer f33769b;

    public i(byte[] bArr) {
        this.f33769b = ByteBuffer.wrap(bArr);
    }

    @Override // com.googlecode.mp4parser.e
    public void W(long j10) throws IOException {
        this.f33769b.position(com.googlecode.mp4parser.util.c.a(j10));
    }

    @Override // com.googlecode.mp4parser.e, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // com.googlecode.mp4parser.e
    public long position() throws IOException {
        return this.f33769b.position();
    }

    @Override // com.googlecode.mp4parser.e
    public ByteBuffer r(long j10, long j11) throws IOException {
        int iPosition = this.f33769b.position();
        this.f33769b.position(com.googlecode.mp4parser.util.c.a(j10));
        ByteBuffer byteBufferSlice = this.f33769b.slice();
        byteBufferSlice.limit(com.googlecode.mp4parser.util.c.a(j11));
        this.f33769b.position(iPosition);
        return byteBufferSlice;
    }

    @Override // com.googlecode.mp4parser.e
    public int read(ByteBuffer byteBuffer) throws IOException {
        if (this.f33769b.remaining() == 0 && byteBuffer.remaining() != 0) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), this.f33769b.remaining());
        if (byteBuffer.hasArray()) {
            byteBuffer.put(this.f33769b.array(), this.f33769b.position(), iMin);
            ByteBuffer byteBuffer2 = this.f33769b;
            byteBuffer2.position(byteBuffer2.position() + iMin);
        } else {
            byte[] bArr = new byte[iMin];
            this.f33769b.get(bArr);
            byteBuffer.put(bArr);
        }
        return iMin;
    }

    @Override // com.googlecode.mp4parser.e
    public long size() throws IOException {
        return this.f33769b.capacity();
    }

    @Override // com.googlecode.mp4parser.e
    public long w(long j10, long j11, WritableByteChannel writableByteChannel) throws IOException {
        return writableByteChannel.write((ByteBuffer) ((ByteBuffer) this.f33769b.position(com.googlecode.mp4parser.util.c.a(j10))).slice().limit(com.googlecode.mp4parser.util.c.a(j11)));
    }

    public i(ByteBuffer byteBuffer) {
        this.f33769b = byteBuffer;
    }
}
