package io.netty.handler.codec.dns;

import io.netty.buffer.ByteBuf;

/* JADX INFO: loaded from: classes.dex */
public class DefaultDnsRecordDecoder implements DnsRecordDecoder {
    static final String ROOT = ".";

    protected DefaultDnsRecordDecoder() {
    }

    public static String decodeName(ByteBuf byteBuf) {
        return DnsCodecUtil.decodeDomainName(byteBuf);
    }

    protected String decodeName0(ByteBuf byteBuf) {
        return decodeName(byteBuf);
    }

    @Override // io.netty.handler.codec.dns.DnsRecordDecoder
    public final DnsQuestion decodeQuestion(ByteBuf byteBuf) throws Exception {
        return new DefaultDnsQuestion(decodeName(byteBuf), DnsRecordType.valueOf(byteBuf.readUnsignedShort()), byteBuf.readUnsignedShort());
    }

    @Override // io.netty.handler.codec.dns.DnsRecordDecoder
    public final <T extends DnsRecord> T decodeRecord(ByteBuf byteBuf) throws Exception {
        int i10 = byteBuf.readerIndex();
        String strDecodeName = decodeName(byteBuf);
        int iWriterIndex = byteBuf.writerIndex();
        if (iWriterIndex - byteBuf.readerIndex() < 10) {
            byteBuf.readerIndex(i10);
            return null;
        }
        DnsRecordType dnsRecordTypeValueOf = DnsRecordType.valueOf(byteBuf.readUnsignedShort());
        int unsignedShort = byteBuf.readUnsignedShort();
        long unsignedInt = byteBuf.readUnsignedInt();
        int unsignedShort2 = byteBuf.readUnsignedShort();
        int i11 = byteBuf.readerIndex();
        if (iWriterIndex - i11 < unsignedShort2) {
            byteBuf.readerIndex(i10);
            return null;
        }
        T t10 = (T) decodeRecord(strDecodeName, dnsRecordTypeValueOf, unsignedShort, unsignedInt, byteBuf, i11, unsignedShort2);
        byteBuf.readerIndex(i11 + unsignedShort2);
        return t10;
    }

    protected DnsRecord decodeRecord(String str, DnsRecordType dnsRecordType, int i10, long j10, ByteBuf byteBuf, int i11, int i12) throws Exception {
        if (dnsRecordType == DnsRecordType.PTR) {
            return new DefaultDnsPtrRecord(str, i10, j10, decodeName0(byteBuf.duplicate().setIndex(i11, i11 + i12)));
        }
        if (dnsRecordType != DnsRecordType.CNAME && dnsRecordType != DnsRecordType.NS) {
            return new DefaultDnsRawRecord(str, dnsRecordType, i10, j10, byteBuf.retainedDuplicate().setIndex(i11, i11 + i12));
        }
        return new DefaultDnsRawRecord(str, dnsRecordType, i10, j10, DnsCodecUtil.decompressDomainName(byteBuf.duplicate().setIndex(i11, i11 + i12)));
    }
}
