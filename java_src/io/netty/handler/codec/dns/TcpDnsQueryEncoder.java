package io.netty.handler.codec.dns;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.handler.codec.MessageToByteEncoder;

/* JADX INFO: loaded from: classes.dex */
@ChannelHandler.Sharable
public final class TcpDnsQueryEncoder extends MessageToByteEncoder<DnsQuery> {
    private final DnsQueryEncoder encoder;

    public TcpDnsQueryEncoder() {
        this(DnsRecordEncoder.DEFAULT);
    }

    public TcpDnsQueryEncoder(DnsRecordEncoder dnsRecordEncoder) {
        this.encoder = new DnsQueryEncoder(dnsRecordEncoder);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageToByteEncoder
    public ByteBuf allocateBuffer(ChannelHandlerContext channelHandlerContext, DnsQuery dnsQuery, boolean z10) {
        return z10 ? channelHandlerContext.alloc().ioBuffer(1024) : channelHandlerContext.alloc().heapBuffer(1024);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.netty.handler.codec.MessageToByteEncoder
    public void encode(ChannelHandlerContext channelHandlerContext, DnsQuery dnsQuery, ByteBuf byteBuf) throws Exception {
        byteBuf.writerIndex(byteBuf.writerIndex() + 2);
        this.encoder.encode(dnsQuery, byteBuf);
        byteBuf.setShort(0, byteBuf.readableBytes() - 2);
    }
}
