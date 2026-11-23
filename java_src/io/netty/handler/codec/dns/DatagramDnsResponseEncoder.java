package io.netty.handler.codec.dns;

import io.netty.buffer.ByteBuf;
import io.netty.channel.AddressedEnvelope;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.socket.DatagramPacket;
import io.netty.handler.codec.MessageToMessageEncoder;
import io.netty.util.internal.ObjectUtil;
import java.net.InetSocketAddress;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@ChannelHandler.Sharable
public class DatagramDnsResponseEncoder extends MessageToMessageEncoder<AddressedEnvelope<DnsResponse, InetSocketAddress>> {
    private final DnsRecordEncoder recordEncoder;

    public DatagramDnsResponseEncoder() {
        this(DnsRecordEncoder.DEFAULT);
    }

    private static void encodeHeader(DnsResponse dnsResponse, ByteBuf byteBuf) {
        byteBuf.writeShort(dnsResponse.id());
        int iByteValue = ((dnsResponse.opCode().byteValue() & 255) << 11) | 32768;
        if (dnsResponse.isAuthoritativeAnswer()) {
            iByteValue |= 1024;
        }
        if (dnsResponse.isTruncated()) {
            iByteValue |= 512;
        }
        if (dnsResponse.isRecursionDesired()) {
            iByteValue |= 256;
        }
        if (dnsResponse.isRecursionAvailable()) {
            iByteValue |= 128;
        }
        byteBuf.writeShort(iByteValue | (dnsResponse.z() << 4) | dnsResponse.code().intValue());
        byteBuf.writeShort(dnsResponse.count(DnsSection.QUESTION));
        byteBuf.writeShort(dnsResponse.count(DnsSection.ANSWER));
        byteBuf.writeShort(dnsResponse.count(DnsSection.AUTHORITY));
        byteBuf.writeShort(dnsResponse.count(DnsSection.ADDITIONAL));
    }

    private void encodeQuestions(DnsResponse dnsResponse, ByteBuf byteBuf) throws Exception {
        int iCount = dnsResponse.count(DnsSection.QUESTION);
        for (int i10 = 0; i10 < iCount; i10++) {
            this.recordEncoder.encodeQuestion((DnsQuestion) dnsResponse.recordAt(DnsSection.QUESTION, i10), byteBuf);
        }
    }

    private void encodeRecords(DnsResponse dnsResponse, DnsSection dnsSection, ByteBuf byteBuf) throws Exception {
        int iCount = dnsResponse.count(dnsSection);
        for (int i10 = 0; i10 < iCount; i10++) {
            this.recordEncoder.encodeRecord(dnsResponse.recordAt(dnsSection, i10), byteBuf);
        }
    }

    protected ByteBuf allocateBuffer(ChannelHandlerContext channelHandlerContext, AddressedEnvelope<DnsResponse, InetSocketAddress> addressedEnvelope) throws Exception {
        return channelHandlerContext.alloc().ioBuffer(1024);
    }

    @Override // io.netty.handler.codec.MessageToMessageEncoder
    protected /* bridge */ /* synthetic */ void encode(ChannelHandlerContext channelHandlerContext, AddressedEnvelope<DnsResponse, InetSocketAddress> addressedEnvelope, List list) throws Exception {
        encode2(channelHandlerContext, addressedEnvelope, (List<Object>) list);
    }

    public DatagramDnsResponseEncoder(DnsRecordEncoder dnsRecordEncoder) {
        this.recordEncoder = (DnsRecordEncoder) ObjectUtil.checkNotNull(dnsRecordEncoder, "recordEncoder");
    }

    /* JADX INFO: renamed from: encode, reason: avoid collision after fix types in other method */
    protected void encode2(ChannelHandlerContext channelHandlerContext, AddressedEnvelope<DnsResponse, InetSocketAddress> addressedEnvelope, List<Object> list) throws Exception {
        InetSocketAddress inetSocketAddress = (InetSocketAddress) addressedEnvelope.recipient();
        DnsResponse dnsResponseContent = addressedEnvelope.content();
        ByteBuf byteBufAllocateBuffer = allocateBuffer(channelHandlerContext, addressedEnvelope);
        try {
            encodeHeader(dnsResponseContent, byteBufAllocateBuffer);
            encodeQuestions(dnsResponseContent, byteBufAllocateBuffer);
            encodeRecords(dnsResponseContent, DnsSection.ANSWER, byteBufAllocateBuffer);
            encodeRecords(dnsResponseContent, DnsSection.AUTHORITY, byteBufAllocateBuffer);
            encodeRecords(dnsResponseContent, DnsSection.ADDITIONAL, byteBufAllocateBuffer);
            list.add(new DatagramPacket(byteBufAllocateBuffer, inetSocketAddress, null));
        } catch (Throwable th) {
            byteBufAllocateBuffer.release();
            throw th;
        }
    }
}
