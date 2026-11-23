package io.netty.handler.stream;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelHandlerContext;
import io.netty.util.internal.ObjectUtil;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;

/* JADX INFO: loaded from: classes.dex */
public class ChunkedNioStream implements ChunkedInput<ByteBuf> {
    private final ByteBuffer byteBuffer;
    private final int chunkSize;

    /* JADX INFO: renamed from: in, reason: collision with root package name */
    private final ReadableByteChannel f91654in;
    private long offset;

    public ChunkedNioStream(ReadableByteChannel readableByteChannel) {
        this(readableByteChannel, 8192);
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public void close() throws Exception {
        this.f91654in.close();
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public boolean isEndOfInput() throws Exception {
        int i10;
        if (this.byteBuffer.position() > 0) {
            return false;
        }
        if (!this.f91654in.isOpen() || (i10 = this.f91654in.read(this.byteBuffer)) < 0) {
            return true;
        }
        this.offset += (long) i10;
        return false;
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public long length() {
        return -1L;
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public long progress() {
        return this.offset;
    }

    public long transferredBytes() {
        return this.offset;
    }

    public ChunkedNioStream(ReadableByteChannel readableByteChannel, int i10) {
        ObjectUtil.checkNotNull(readableByteChannel, "in");
        if (i10 > 0) {
            this.f91654in = readableByteChannel;
            this.offset = 0L;
            this.chunkSize = i10;
            this.byteBuffer = ByteBuffer.allocate(i10);
            return;
        }
        throw new IllegalArgumentException("chunkSize: " + i10 + " (expected: a positive integer)");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.netty.handler.stream.ChunkedInput
    @Deprecated
    public ByteBuf readChunk(ChannelHandlerContext channelHandlerContext) throws Exception {
        return readChunk(channelHandlerContext.alloc());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.netty.handler.stream.ChunkedInput
    public ByteBuf readChunk(ByteBufAllocator byteBufAllocator) throws Exception {
        if (isEndOfInput()) {
            return null;
        }
        int iPosition = this.byteBuffer.position();
        do {
            int i10 = this.f91654in.read(this.byteBuffer);
            if (i10 < 0) {
                break;
            }
            iPosition += i10;
            this.offset += (long) i10;
        } while (iPosition != this.chunkSize);
        this.byteBuffer.flip();
        ByteBuf byteBufBuffer = byteBufAllocator.buffer(this.byteBuffer.remaining());
        try {
            byteBufBuffer.writeBytes(this.byteBuffer);
            this.byteBuffer.clear();
            return byteBufBuffer;
        } catch (Throwable th) {
            byteBufBuffer.release();
            throw th;
        }
    }
}
