package io.netty.handler.codec.redis;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.buffer.ByteBufUtil;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.CodecException;
import io.netty.handler.codec.MessageToMessageEncoder;
import io.netty.util.internal.ObjectUtil;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RedisEncoder extends MessageToMessageEncoder<RedisMessage> {
    private final RedisMessagePool messagePool;

    public RedisEncoder() {
        this(FixedRedisMessagePool.INSTANCE);
    }

    private byte[] numberToBytes(long j10) {
        byte[] byteBufOfInteger = this.messagePool.getByteBufOfInteger(j10);
        return byteBufOfInteger != null ? byteBufOfInteger : RedisCodecUtil.longToAsciiBytes(j10);
    }

    private void writeArrayHeader(ByteBufAllocator byteBufAllocator, ArrayHeaderRedisMessage arrayHeaderRedisMessage, List<Object> list) {
        writeArrayHeader(byteBufAllocator, arrayHeaderRedisMessage.isNull(), arrayHeaderRedisMessage.length(), list);
    }

    private void writeArrayMessage(ByteBufAllocator byteBufAllocator, ArrayRedisMessage arrayRedisMessage, List<Object> list) {
        if (arrayRedisMessage.isNull()) {
            writeArrayHeader(byteBufAllocator, arrayRedisMessage.isNull(), -1L, list);
            return;
        }
        writeArrayHeader(byteBufAllocator, arrayRedisMessage.isNull(), arrayRedisMessage.children().size(), list);
        Iterator<RedisMessage> it2 = arrayRedisMessage.children().iterator();
        while (it2.hasNext()) {
            writeRedisMessage(byteBufAllocator, it2.next(), list);
        }
    }

    private static void writeBulkStringContent(ByteBufAllocator byteBufAllocator, BulkStringRedisContent bulkStringRedisContent, List<Object> list) {
        list.add(bulkStringRedisContent.content().retain());
        if (bulkStringRedisContent instanceof LastBulkStringRedisContent) {
            list.add(byteBufAllocator.ioBuffer(2).writeShort(RedisConstants.EOL_SHORT));
        }
    }

    private void writeBulkStringHeader(ByteBufAllocator byteBufAllocator, BulkStringHeaderRedisMessage bulkStringHeaderRedisMessage, List<Object> list) {
        ByteBuf byteBufIoBuffer = byteBufAllocator.ioBuffer((bulkStringHeaderRedisMessage.isNull() ? 2 : 22) + 1);
        RedisMessageType.BULK_STRING.writeTo(byteBufIoBuffer);
        if (bulkStringHeaderRedisMessage.isNull()) {
            byteBufIoBuffer.writeShort(RedisConstants.NULL_SHORT);
        } else {
            byteBufIoBuffer.writeBytes(numberToBytes(bulkStringHeaderRedisMessage.bulkStringLength()));
            byteBufIoBuffer.writeShort(RedisConstants.EOL_SHORT);
        }
        list.add(byteBufIoBuffer);
    }

    private static void writeErrorMessage(ByteBufAllocator byteBufAllocator, ErrorRedisMessage errorRedisMessage, List<Object> list) {
        writeString(byteBufAllocator, RedisMessageType.ERROR, errorRedisMessage.content(), list);
    }

    private void writeFullBulkStringMessage(ByteBufAllocator byteBufAllocator, FullBulkStringRedisMessage fullBulkStringRedisMessage, List<Object> list) {
        if (fullBulkStringRedisMessage.isNull()) {
            ByteBuf byteBufIoBuffer = byteBufAllocator.ioBuffer(5);
            RedisMessageType.BULK_STRING.writeTo(byteBufIoBuffer);
            byteBufIoBuffer.writeShort(RedisConstants.NULL_SHORT);
            byteBufIoBuffer.writeShort(RedisConstants.EOL_SHORT);
            list.add(byteBufIoBuffer);
            return;
        }
        ByteBuf byteBufIoBuffer2 = byteBufAllocator.ioBuffer(23);
        RedisMessageType.BULK_STRING.writeTo(byteBufIoBuffer2);
        byteBufIoBuffer2.writeBytes(numberToBytes(fullBulkStringRedisMessage.content().readableBytes()));
        short s10 = RedisConstants.EOL_SHORT;
        byteBufIoBuffer2.writeShort(s10);
        list.add(byteBufIoBuffer2);
        list.add(fullBulkStringRedisMessage.content().retain());
        list.add(byteBufAllocator.ioBuffer(2).writeShort(s10));
    }

    private static void writeInlineCommandMessage(ByteBufAllocator byteBufAllocator, InlineCommandRedisMessage inlineCommandRedisMessage, List<Object> list) {
        writeString(byteBufAllocator, RedisMessageType.INLINE_COMMAND, inlineCommandRedisMessage.content(), list);
    }

    private void writeIntegerMessage(ByteBufAllocator byteBufAllocator, IntegerRedisMessage integerRedisMessage, List<Object> list) {
        ByteBuf byteBufIoBuffer = byteBufAllocator.ioBuffer(23);
        RedisMessageType.INTEGER.writeTo(byteBufIoBuffer);
        byteBufIoBuffer.writeBytes(numberToBytes(integerRedisMessage.value()));
        byteBufIoBuffer.writeShort(RedisConstants.EOL_SHORT);
        list.add(byteBufIoBuffer);
    }

    private void writeRedisMessage(ByteBufAllocator byteBufAllocator, RedisMessage redisMessage, List<Object> list) {
        if (redisMessage instanceof InlineCommandRedisMessage) {
            writeInlineCommandMessage(byteBufAllocator, (InlineCommandRedisMessage) redisMessage, list);
            return;
        }
        if (redisMessage instanceof SimpleStringRedisMessage) {
            writeSimpleStringMessage(byteBufAllocator, (SimpleStringRedisMessage) redisMessage, list);
            return;
        }
        if (redisMessage instanceof ErrorRedisMessage) {
            writeErrorMessage(byteBufAllocator, (ErrorRedisMessage) redisMessage, list);
            return;
        }
        if (redisMessage instanceof IntegerRedisMessage) {
            writeIntegerMessage(byteBufAllocator, (IntegerRedisMessage) redisMessage, list);
            return;
        }
        if (redisMessage instanceof FullBulkStringRedisMessage) {
            writeFullBulkStringMessage(byteBufAllocator, (FullBulkStringRedisMessage) redisMessage, list);
            return;
        }
        if (redisMessage instanceof BulkStringRedisContent) {
            writeBulkStringContent(byteBufAllocator, (BulkStringRedisContent) redisMessage, list);
            return;
        }
        if (redisMessage instanceof BulkStringHeaderRedisMessage) {
            writeBulkStringHeader(byteBufAllocator, (BulkStringHeaderRedisMessage) redisMessage, list);
            return;
        }
        if (redisMessage instanceof ArrayHeaderRedisMessage) {
            writeArrayHeader(byteBufAllocator, (ArrayHeaderRedisMessage) redisMessage, list);
        } else {
            if (redisMessage instanceof ArrayRedisMessage) {
                writeArrayMessage(byteBufAllocator, (ArrayRedisMessage) redisMessage, list);
                return;
            }
            throw new CodecException("unknown message type: " + redisMessage);
        }
    }

    private static void writeSimpleStringMessage(ByteBufAllocator byteBufAllocator, SimpleStringRedisMessage simpleStringRedisMessage, List<Object> list) {
        writeString(byteBufAllocator, RedisMessageType.SIMPLE_STRING, simpleStringRedisMessage.content(), list);
    }

    private static void writeString(ByteBufAllocator byteBufAllocator, RedisMessageType redisMessageType, String str, List<Object> list) {
        ByteBuf byteBufIoBuffer = byteBufAllocator.ioBuffer(redisMessageType.length() + ByteBufUtil.utf8MaxBytes(str) + 2);
        redisMessageType.writeTo(byteBufIoBuffer);
        ByteBufUtil.writeUtf8(byteBufIoBuffer, str);
        byteBufIoBuffer.writeShort(RedisConstants.EOL_SHORT);
        list.add(byteBufIoBuffer);
    }

    @Override // io.netty.handler.codec.MessageToMessageEncoder
    protected /* bridge */ /* synthetic */ void encode(ChannelHandlerContext channelHandlerContext, RedisMessage redisMessage, List list) throws Exception {
        encode2(channelHandlerContext, redisMessage, (List<Object>) list);
    }

    public RedisEncoder(RedisMessagePool redisMessagePool) {
        this.messagePool = (RedisMessagePool) ObjectUtil.checkNotNull(redisMessagePool, "messagePool");
    }

    private void writeArrayHeader(ByteBufAllocator byteBufAllocator, boolean z10, long j10, List<Object> list) {
        if (z10) {
            ByteBuf byteBufIoBuffer = byteBufAllocator.ioBuffer(5);
            RedisMessageType.ARRAY_HEADER.writeTo(byteBufIoBuffer);
            byteBufIoBuffer.writeShort(RedisConstants.NULL_SHORT);
            byteBufIoBuffer.writeShort(RedisConstants.EOL_SHORT);
            list.add(byteBufIoBuffer);
            return;
        }
        ByteBuf byteBufIoBuffer2 = byteBufAllocator.ioBuffer(23);
        RedisMessageType.ARRAY_HEADER.writeTo(byteBufIoBuffer2);
        byteBufIoBuffer2.writeBytes(numberToBytes(j10));
        byteBufIoBuffer2.writeShort(RedisConstants.EOL_SHORT);
        list.add(byteBufIoBuffer2);
    }

    /* JADX INFO: renamed from: encode, reason: avoid collision after fix types in other method */
    protected void encode2(ChannelHandlerContext channelHandlerContext, RedisMessage redisMessage, List<Object> list) throws Exception {
        try {
            writeRedisMessage(channelHandlerContext.alloc(), redisMessage, list);
        } catch (CodecException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new CodecException(e11);
        }
    }
}
