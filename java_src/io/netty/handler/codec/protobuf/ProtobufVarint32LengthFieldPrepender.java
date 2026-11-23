package io.netty.handler.codec.protobuf;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.MessageToByteEncoder;

/* JADX INFO: loaded from: classes.dex */
@ChannelHandler.Sharable
public class ProtobufVarint32LengthFieldPrepender extends MessageToByteEncoder<ByteBuf> {
    static int computeRawVarint32Size(int i10) {
        if ((i10 & (-128)) == 0) {
            return 1;
        }
        if ((i10 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i10) == 0) {
            return 3;
        }
        return (i10 & (-268435456)) == 0 ? 4 : 5;
    }

    static void writeRawVarint32(ByteBuf byteBuf, int i10) {
        while ((i10 & (-128)) != 0) {
            byteBuf.writeByte((i10 & 127) | 128);
            i10 >>>= 7;
        }
        byteBuf.writeByte(i10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageToByteEncoder
    public void encode(ChannelHandlerContext channelHandlerContext, ByteBuf byteBuf, ByteBuf byteBuf2) throws Exception {
        int i10 = byteBuf.readableBytes();
        byteBuf2.ensureWritable(computeRawVarint32Size(i10) + i10);
        writeRawVarint32(byteBuf2, i10);
        byteBuf2.writeBytes(byteBuf, byteBuf.readerIndex(), i10);
    }
}
