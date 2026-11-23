package io.netty.handler.codec.stomp;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufUtil;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.MessageToMessageEncoder;
import io.netty.util.CharsetUtil;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class StompSubframeEncoder extends MessageToMessageEncoder<StompSubframe> {
    private static ByteBuf encodeContent(StompContentSubframe stompContentSubframe, ChannelHandlerContext channelHandlerContext) {
        if (!(stompContentSubframe instanceof LastStompContentSubframe)) {
            return stompContentSubframe.content().retain();
        }
        ByteBuf byteBufBuffer = channelHandlerContext.alloc().buffer(stompContentSubframe.content().readableBytes() + 1);
        byteBufBuffer.writeBytes(stompContentSubframe.content());
        byteBufBuffer.writeByte(0);
        return byteBufBuffer;
    }

    private static ByteBuf encodeFrame(StompHeadersSubframe stompHeadersSubframe, ChannelHandlerContext channelHandlerContext) {
        ByteBuf byteBufBuffer = channelHandlerContext.alloc().buffer();
        byteBufBuffer.writeCharSequence(stompHeadersSubframe.command().toString(), CharsetUtil.UTF_8);
        byteBufBuffer.writeByte(10);
        for (Map.Entry<CharSequence, CharSequence> entry : stompHeadersSubframe.headers()) {
            ByteBufUtil.writeUtf8(byteBufBuffer, entry.getKey());
            byteBufBuffer.writeByte(58);
            ByteBufUtil.writeUtf8(byteBufBuffer, entry.getValue());
            byteBufBuffer.writeByte(10);
        }
        byteBufBuffer.writeByte(10);
        return byteBufBuffer;
    }

    @Override // io.netty.handler.codec.MessageToMessageEncoder
    protected /* bridge */ /* synthetic */ void encode(ChannelHandlerContext channelHandlerContext, StompSubframe stompSubframe, List list) throws Exception {
        encode2(channelHandlerContext, stompSubframe, (List<Object>) list);
    }

    /* JADX INFO: renamed from: encode, reason: avoid collision after fix types in other method */
    protected void encode2(ChannelHandlerContext channelHandlerContext, StompSubframe stompSubframe, List<Object> list) throws Exception {
        if (stompSubframe instanceof StompFrame) {
            StompFrame stompFrame = (StompFrame) stompSubframe;
            list.add(encodeFrame(stompFrame, channelHandlerContext));
            list.add(encodeContent(stompFrame, channelHandlerContext));
        } else if (stompSubframe instanceof StompHeadersSubframe) {
            list.add(encodeFrame((StompHeadersSubframe) stompSubframe, channelHandlerContext));
        } else if (stompSubframe instanceof StompContentSubframe) {
            list.add(encodeContent((StompContentSubframe) stompSubframe, channelHandlerContext));
        }
    }
}
