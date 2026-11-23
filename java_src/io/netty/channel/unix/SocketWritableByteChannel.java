package io.netty.channel.unix;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.ByteBufUtil;
import io.netty.buffer.Unpooled;
import io.netty.util.internal.ObjectUtil;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes.dex */
public abstract class SocketWritableByteChannel implements WritableByteChannel {

    /* JADX INFO: renamed from: fd, reason: collision with root package name */
    private final FileDescriptor f91621fd;

    protected SocketWritableByteChannel(FileDescriptor fileDescriptor) {
        this.f91621fd = (FileDescriptor) ObjectUtil.checkNotNull(fileDescriptor, "fd");
    }

    protected abstract ByteBufAllocator alloc();

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f91621fd.close();
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return this.f91621fd.isOpen();
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) throws IOException {
        int iWrite;
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        if (byteBuffer.isDirect()) {
            iWrite = this.f91621fd.write(byteBuffer, iPosition, byteBuffer.limit());
        } else {
            int i10 = iLimit - iPosition;
            ByteBuf byteBufThreadLocalDirectBuffer = null;
            try {
                if (i10 == 0) {
                    byteBufThreadLocalDirectBuffer = Unpooled.EMPTY_BUFFER;
                } else {
                    ByteBufAllocator byteBufAllocatorAlloc = alloc();
                    if (byteBufAllocatorAlloc.isDirectBufferPooled()) {
                        byteBufThreadLocalDirectBuffer = byteBufAllocatorAlloc.directBuffer(i10);
                    } else {
                        byteBufThreadLocalDirectBuffer = ByteBufUtil.threadLocalDirectBuffer();
                        if (byteBufThreadLocalDirectBuffer == null) {
                            byteBufThreadLocalDirectBuffer = Unpooled.directBuffer(i10);
                        }
                    }
                }
                byteBufThreadLocalDirectBuffer.writeBytes(byteBuffer.duplicate());
                ByteBuffer byteBufferInternalNioBuffer = byteBufThreadLocalDirectBuffer.internalNioBuffer(byteBufThreadLocalDirectBuffer.readerIndex(), i10);
                iWrite = this.f91621fd.write(byteBufferInternalNioBuffer, byteBufferInternalNioBuffer.position(), byteBufferInternalNioBuffer.limit());
                byteBufThreadLocalDirectBuffer.release();
            } catch (Throwable th) {
                if (byteBufThreadLocalDirectBuffer != null) {
                    byteBufThreadLocalDirectBuffer.release();
                }
                throw th;
            }
        }
        if (iWrite > 0) {
            byteBuffer.position(iPosition + iWrite);
        }
        return iWrite;
    }
}
