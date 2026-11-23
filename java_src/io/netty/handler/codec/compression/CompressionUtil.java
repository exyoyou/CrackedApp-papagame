package io.netty.handler.codec.compression;

import io.netty.buffer.ByteBuf;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
final class CompressionUtil {
    private CompressionUtil() {
    }

    static void checkChecksum(ByteBufChecksum byteBufChecksum, ByteBuf byteBuf, int i10) {
        byteBufChecksum.reset();
        byteBufChecksum.update(byteBuf, byteBuf.readerIndex(), byteBuf.readableBytes());
        int value = (int) byteBufChecksum.getValue();
        if (value != i10) {
            throw new DecompressionException(String.format("stream corrupted: mismatching checksum: %d (expected: %d)", Integer.valueOf(value), Integer.valueOf(i10)));
        }
    }

    static ByteBuffer safeNioBuffer(ByteBuf byteBuf) {
        return byteBuf.nioBufferCount() == 1 ? byteBuf.internalNioBuffer(byteBuf.readerIndex(), byteBuf.readableBytes()) : byteBuf.nioBuffer();
    }

    static ByteBuffer safeNioBuffer(ByteBuf byteBuf, int i10, int i11) {
        return byteBuf.nioBufferCount() == 1 ? byteBuf.internalNioBuffer(i10, i11) : byteBuf.nioBuffer(i10, i11);
    }
}
