package io.netty.handler.codec.memcache.binary;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.memcache.AbstractMemcacheObjectEncoder;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheMessage;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractBinaryMemcacheEncoder<M extends BinaryMemcacheMessage> extends AbstractMemcacheObjectEncoder<M> {
    private static final int MINIMUM_HEADER_SIZE = 24;

    private static void encodeExtras(ByteBuf byteBuf, ByteBuf byteBuf2) {
        if (byteBuf2 == null || !byteBuf2.isReadable()) {
            return;
        }
        byteBuf.writeBytes(byteBuf2);
    }

    private static void encodeKey(ByteBuf byteBuf, ByteBuf byteBuf2) {
        if (byteBuf2 == null || !byteBuf2.isReadable()) {
            return;
        }
        byteBuf.writeBytes(byteBuf2);
    }

    protected abstract void encodeHeader(ByteBuf byteBuf, M m10);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.memcache.AbstractMemcacheObjectEncoder
    public ByteBuf encodeMessage(ChannelHandlerContext channelHandlerContext, M m10) {
        ByteBuf byteBufBuffer = channelHandlerContext.alloc().buffer(m10.extrasLength() + BinaryMemcacheOpcodes.FLUSHQ + m10.keyLength());
        encodeHeader(byteBufBuffer, m10);
        encodeExtras(byteBufBuffer, m10.extras());
        encodeKey(byteBufBuffer, m10.key());
        return byteBufBuffer;
    }
}
