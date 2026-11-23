package com.googlecode.mp4parser.util;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;

/* JADX INFO: loaded from: classes5.dex */
public class b implements ByteChannel {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ByteBuffer f33776b;

    public b(ByteBuffer byteBuffer) {
        this.f33776b = byteBuffer;
    }

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        int iRemaining = byteBuffer.remaining();
        if (this.f33776b.remaining() <= 0) {
            return -1;
        }
        byteBuffer.put((ByteBuffer) this.f33776b.duplicate().limit(this.f33776b.position() + byteBuffer.remaining()));
        ByteBuffer byteBuffer2 = this.f33776b;
        byteBuffer2.position(byteBuffer2.position() + iRemaining);
        return iRemaining;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        int iRemaining = byteBuffer.remaining();
        this.f33776b.put(byteBuffer);
        return iRemaining;
    }
}
