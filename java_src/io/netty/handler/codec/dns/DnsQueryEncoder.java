package io.netty.handler.codec.dns;

import io.netty.buffer.ByteBuf;
import io.netty.util.internal.ObjectUtil;

/* JADX INFO: loaded from: classes.dex */
final class DnsQueryEncoder {
    private final DnsRecordEncoder recordEncoder;

    DnsQueryEncoder(DnsRecordEncoder dnsRecordEncoder) {
        this.recordEncoder = (DnsRecordEncoder) ObjectUtil.checkNotNull(dnsRecordEncoder, "recordEncoder");
    }

    private static void encodeHeader(DnsQuery dnsQuery, ByteBuf byteBuf) {
        byteBuf.writeShort(dnsQuery.id());
        int iByteValue = ((dnsQuery.opCode().byteValue() & 255) << 14) | 0;
        if (dnsQuery.isRecursionDesired()) {
            iByteValue |= 256;
        }
        byteBuf.writeShort(iByteValue);
        byteBuf.writeShort(dnsQuery.count(DnsSection.QUESTION));
        byteBuf.writeShort(0);
        byteBuf.writeShort(0);
        byteBuf.writeShort(dnsQuery.count(DnsSection.ADDITIONAL));
    }

    private void encodeQuestions(DnsQuery dnsQuery, ByteBuf byteBuf) throws Exception {
        int iCount = dnsQuery.count(DnsSection.QUESTION);
        for (int i10 = 0; i10 < iCount; i10++) {
            this.recordEncoder.encodeQuestion((DnsQuestion) dnsQuery.recordAt(DnsSection.QUESTION, i10), byteBuf);
        }
    }

    private void encodeRecords(DnsQuery dnsQuery, DnsSection dnsSection, ByteBuf byteBuf) throws Exception {
        int iCount = dnsQuery.count(dnsSection);
        for (int i10 = 0; i10 < iCount; i10++) {
            this.recordEncoder.encodeRecord(dnsQuery.recordAt(dnsSection, i10), byteBuf);
        }
    }

    void encode(DnsQuery dnsQuery, ByteBuf byteBuf) throws Exception {
        encodeHeader(dnsQuery, byteBuf);
        encodeQuestions(dnsQuery, byteBuf);
        encodeRecords(dnsQuery, DnsSection.ADDITIONAL, byteBuf);
    }
}
