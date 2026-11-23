package io.netty.handler.codec.dns;

import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.socket.DatagramPacket;
import io.netty.handler.codec.CorruptedFrameException;
import io.netty.handler.codec.MessageToMessageDecoder;
import io.netty.util.internal.ObjectUtil;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@ChannelHandler.Sharable
public class DatagramDnsQueryDecoder extends MessageToMessageDecoder<DatagramPacket> {
    private final DnsRecordDecoder recordDecoder;

    public DatagramDnsQueryDecoder() {
        this(DnsRecordDecoder.DEFAULT);
    }

    private void decodeQuestions(DnsQuery dnsQuery, ByteBuf byteBuf, int i10) throws Exception {
        while (i10 > 0) {
            dnsQuery.addRecord(DnsSection.QUESTION, (DnsRecord) this.recordDecoder.decodeQuestion(byteBuf));
            i10--;
        }
    }

    private void decodeRecords(DnsQuery dnsQuery, DnsSection dnsSection, ByteBuf byteBuf, int i10) throws Exception {
        while (i10 > 0) {
            DnsRecord dnsRecordDecodeRecord = this.recordDecoder.decodeRecord(byteBuf);
            if (dnsRecordDecodeRecord == null) {
                return;
            }
            dnsQuery.addRecord(dnsSection, dnsRecordDecodeRecord);
            i10--;
        }
    }

    private static DnsQuery newQuery(DatagramPacket datagramPacket, ByteBuf byteBuf) {
        int unsignedShort = byteBuf.readUnsignedShort();
        int unsignedShort2 = byteBuf.readUnsignedShort();
        if ((unsignedShort2 >> 15) == 1) {
            throw new CorruptedFrameException("not a query");
        }
        DatagramDnsQuery datagramDnsQuery = new DatagramDnsQuery(datagramPacket.sender(), datagramPacket.recipient(), unsignedShort, DnsOpCode.valueOf((byte) ((unsignedShort2 >> 11) & 15)));
        datagramDnsQuery.setRecursionDesired(((unsignedShort2 >> 8) & 1) == 1);
        datagramDnsQuery.setZ((unsignedShort2 >> 4) & 7);
        return datagramDnsQuery;
    }

    @Override // io.netty.handler.codec.MessageToMessageDecoder
    protected /* bridge */ /* synthetic */ void decode(ChannelHandlerContext channelHandlerContext, DatagramPacket datagramPacket, List list) throws Exception {
        decode2(channelHandlerContext, datagramPacket, (List<Object>) list);
    }

    public DatagramDnsQueryDecoder(DnsRecordDecoder dnsRecordDecoder) {
        this.recordDecoder = (DnsRecordDecoder) ObjectUtil.checkNotNull(dnsRecordDecoder, "recordDecoder");
    }

    /* JADX INFO: renamed from: decode, reason: avoid collision after fix types in other method */
    protected void decode2(ChannelHandlerContext channelHandlerContext, DatagramPacket datagramPacket, List<Object> list) throws Exception {
        ByteBuf byteBufContent = datagramPacket.content();
        DnsQuery dnsQueryNewQuery = newQuery(datagramPacket, byteBufContent);
        try {
            int unsignedShort = byteBufContent.readUnsignedShort();
            int unsignedShort2 = byteBufContent.readUnsignedShort();
            int unsignedShort3 = byteBufContent.readUnsignedShort();
            int unsignedShort4 = byteBufContent.readUnsignedShort();
            decodeQuestions(dnsQueryNewQuery, byteBufContent, unsignedShort);
            decodeRecords(dnsQueryNewQuery, DnsSection.ANSWER, byteBufContent, unsignedShort2);
            decodeRecords(dnsQueryNewQuery, DnsSection.AUTHORITY, byteBufContent, unsignedShort3);
            decodeRecords(dnsQueryNewQuery, DnsSection.ADDITIONAL, byteBufContent, unsignedShort4);
            list.add(dnsQueryNewQuery);
        } catch (Throwable th) {
            dnsQueryNewQuery.release();
            throw th;
        }
    }
}
