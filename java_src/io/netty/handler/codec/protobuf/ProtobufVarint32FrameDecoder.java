package io.netty.handler.codec.protobuf;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.ByteToMessageDecoder;
import io.netty.handler.codec.CorruptedFrameException;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes.dex */
public class ProtobufVarint32FrameDecoder extends ByteToMessageDecoder {
    private static int readRawVarint32(ByteBuf byteBuf) {
        int i10;
        if (!byteBuf.isReadable()) {
            return 0;
        }
        byteBuf.markReaderIndex();
        byte b10 = byteBuf.readByte();
        if (b10 >= 0) {
            return b10;
        }
        int i11 = b10 & ByteCompanionObject.MAX_VALUE;
        if (!byteBuf.isReadable()) {
            byteBuf.resetReaderIndex();
            return 0;
        }
        byte b11 = byteBuf.readByte();
        if (b11 >= 0) {
            i10 = b11 << 7;
        } else {
            i11 |= (b11 & ByteCompanionObject.MAX_VALUE) << 7;
            if (!byteBuf.isReadable()) {
                byteBuf.resetReaderIndex();
                return 0;
            }
            byte b12 = byteBuf.readByte();
            if (b12 >= 0) {
                i10 = b12 << 14;
            } else {
                i11 |= (b12 & ByteCompanionObject.MAX_VALUE) << 14;
                if (!byteBuf.isReadable()) {
                    byteBuf.resetReaderIndex();
                    return 0;
                }
                byte b13 = byteBuf.readByte();
                if (b13 < 0) {
                    int i12 = i11 | ((b13 & ByteCompanionObject.MAX_VALUE) << 21);
                    if (!byteBuf.isReadable()) {
                        byteBuf.resetReaderIndex();
                        return 0;
                    }
                    byte b14 = byteBuf.readByte();
                    int i13 = i12 | (b14 << BinaryMemcacheOpcodes.TOUCH);
                    if (b14 >= 0) {
                        return i13;
                    }
                    throw new CorruptedFrameException("malformed varint.");
                }
                i10 = b13 << BinaryMemcacheOpcodes.INCREMENTQ;
            }
        }
        return i10 | i11;
    }

    @Override // io.netty.handler.codec.ByteToMessageDecoder
    protected void decode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, List<Object> list) throws Exception {
        byteBuf.markReaderIndex();
        int i10 = byteBuf.readerIndex();
        int rawVarint32 = readRawVarint32(byteBuf);
        if (i10 == byteBuf.readerIndex()) {
            return;
        }
        if (rawVarint32 < 0) {
            throw new CorruptedFrameException("negative length: " + rawVarint32);
        }
        if (byteBuf.readableBytes() < rawVarint32) {
            byteBuf.resetReaderIndex();
        } else {
            list.add(byteBuf.readRetainedSlice(rawVarint32));
        }
    }
}
