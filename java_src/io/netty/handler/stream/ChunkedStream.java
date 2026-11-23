package io.netty.handler.stream;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelHandlerContext;
import io.netty.util.internal.ObjectUtil;
import java.io.InputStream;
import java.io.PushbackInputStream;

/* JADX INFO: loaded from: classes.dex */
public class ChunkedStream implements ChunkedInput<ByteBuf> {
    static final int DEFAULT_CHUNK_SIZE = 8192;
    private final int chunkSize;
    private boolean closed;

    /* JADX INFO: renamed from: in, reason: collision with root package name */
    private final PushbackInputStream f91655in;
    private long offset;

    public ChunkedStream(InputStream inputStream) {
        this(inputStream, 8192);
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public void close() throws Exception {
        this.closed = true;
        this.f91655in.close();
    }

    @Override // io.netty.handler.stream.ChunkedInput
    public boolean isEndOfInput() throws Exception {
        int i10;
        if (this.closed || (i10 = this.f91655in.read()) < 0) {
            return true;
        }
        this.f91655in.unread(i10);
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

    public ChunkedStream(InputStream inputStream, int i10) {
        ObjectUtil.checkNotNull(inputStream, "in");
        ObjectUtil.checkPositive(i10, "chunkSize");
        if (inputStream instanceof PushbackInputStream) {
            this.f91655in = (PushbackInputStream) inputStream;
        } else {
            this.f91655in = new PushbackInputStream(inputStream);
        }
        this.chunkSize = i10;
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
        int iMin;
        if (isEndOfInput()) {
            return null;
        }
        if (this.f91655in.available() <= 0) {
            iMin = this.chunkSize;
        } else {
            iMin = Math.min(this.chunkSize, this.f91655in.available());
        }
        ByteBuf byteBufBuffer = byteBufAllocator.buffer(iMin);
        try {
            this.offset += (long) byteBufBuffer.writeBytes(this.f91655in, iMin);
            return byteBufBuffer;
        } catch (Throwable th) {
            byteBufBuffer.release();
            throw th;
        }
    }
}
