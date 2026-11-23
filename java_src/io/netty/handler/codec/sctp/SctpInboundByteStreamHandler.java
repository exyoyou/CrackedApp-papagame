package io.netty.handler.codec.sctp;

import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.sctp.SctpMessage;
import io.netty.handler.codec.CodecException;
import io.netty.handler.codec.MessageToMessageDecoder;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SctpInboundByteStreamHandler extends MessageToMessageDecoder<SctpMessage> {
    private final int protocolIdentifier;
    private final int streamIdentifier;

    public SctpInboundByteStreamHandler(int i10, int i11) {
        this.protocolIdentifier = i10;
        this.streamIdentifier = i11;
    }

    @Override // io.netty.handler.codec.MessageToMessageDecoder
    public final boolean acceptInboundMessage(Object obj) throws Exception {
        if (super.acceptInboundMessage(obj)) {
            return acceptInboundMessage((SctpMessage) obj);
        }
        return false;
    }

    @Override // io.netty.handler.codec.MessageToMessageDecoder
    protected /* bridge */ /* synthetic */ void decode(ChannelHandlerContext channelHandlerContext, SctpMessage sctpMessage, List list) throws Exception {
        decode2(channelHandlerContext, sctpMessage, (List<Object>) list);
    }

    /* JADX INFO: renamed from: decode, reason: avoid collision after fix types in other method */
    protected void decode2(ChannelHandlerContext channelHandlerContext, SctpMessage sctpMessage, List<Object> list) throws Exception {
        if (!sctpMessage.isComplete()) {
            throw new CodecException(String.format("Received SctpMessage is not complete, please add %s in the pipeline before this handler", SctpMessageCompletionHandler.class.getSimpleName()));
        }
        list.add(sctpMessage.content().retain());
    }

    protected boolean acceptInboundMessage(SctpMessage sctpMessage) {
        return sctpMessage.protocolIdentifier() == this.protocolIdentifier && sctpMessage.streamIdentifier() == this.streamIdentifier;
    }
}
