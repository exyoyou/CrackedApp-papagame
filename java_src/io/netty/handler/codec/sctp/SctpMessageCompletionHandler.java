package io.netty.handler.codec.sctp;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.sctp.SctpMessage;
import io.netty.handler.codec.MessageToMessageDecoder;
import io.netty.util.collection.IntObjectHashMap;
import io.netty.util.collection.IntObjectMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SctpMessageCompletionHandler extends MessageToMessageDecoder<SctpMessage> {
    private final IntObjectMap<ByteBuf> fragments = new IntObjectHashMap();

    @Override // io.netty.handler.codec.MessageToMessageDecoder
    protected /* bridge */ /* synthetic */ void decode(ChannelHandlerContext channelHandlerContext, SctpMessage sctpMessage, List list) throws Exception {
        decode2(channelHandlerContext, sctpMessage, (List<Object>) list);
    }

    @Override // io.netty.channel.ChannelHandlerAdapter, io.netty.channel.ChannelHandler
    public void handlerRemoved(ChannelHandlerContext channelHandlerContext) throws Exception {
        Iterator<ByteBuf> it2 = this.fragments.values().iterator();
        while (it2.hasNext()) {
            it2.next().release();
        }
        this.fragments.clear();
        super.handlerRemoved(channelHandlerContext);
    }

    /* JADX INFO: renamed from: decode, reason: avoid collision after fix types in other method */
    protected void decode2(ChannelHandlerContext channelHandlerContext, SctpMessage sctpMessage, List<Object> list) throws Exception {
        ByteBuf byteBufContent = sctpMessage.content();
        int iProtocolIdentifier = sctpMessage.protocolIdentifier();
        int iStreamIdentifier = sctpMessage.streamIdentifier();
        boolean zIsComplete = sctpMessage.isComplete();
        boolean zIsUnordered = sctpMessage.isUnordered();
        ByteBuf byteBufRemove = this.fragments.remove(iStreamIdentifier);
        if (byteBufRemove == null) {
            byteBufRemove = Unpooled.EMPTY_BUFFER;
        }
        if (zIsComplete && !byteBufRemove.isReadable()) {
            list.add(sctpMessage);
        } else if (!zIsComplete && byteBufRemove.isReadable()) {
            this.fragments.put(iStreamIdentifier, Unpooled.wrappedBuffer(byteBufRemove, byteBufContent));
        } else if (zIsComplete && byteBufRemove.isReadable()) {
            list.add(new SctpMessage(iProtocolIdentifier, iStreamIdentifier, zIsUnordered, Unpooled.wrappedBuffer(byteBufRemove, byteBufContent)));
        } else {
            this.fragments.put(iStreamIdentifier, byteBufContent);
        }
        byteBufContent.retain();
    }
}
