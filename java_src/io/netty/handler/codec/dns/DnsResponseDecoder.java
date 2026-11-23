package io.netty.handler.codec.dns;

import io.netty.buffer.ByteBuf;
import io.netty.handler.codec.CorruptedFrameException;
import io.netty.util.internal.ObjectUtil;
import java.net.SocketAddress;

/* JADX INFO: loaded from: classes.dex */
abstract class DnsResponseDecoder<A extends SocketAddress> {
    private final DnsRecordDecoder recordDecoder;

    DnsResponseDecoder(DnsRecordDecoder dnsRecordDecoder) {
        this.recordDecoder = (DnsRecordDecoder) ObjectUtil.checkNotNull(dnsRecordDecoder, "recordDecoder");
    }

    private void decodeQuestions(DnsResponse dnsResponse, ByteBuf byteBuf, int i10) throws Exception {
        while (i10 > 0) {
            dnsResponse.addRecord(DnsSection.QUESTION, (DnsRecord) this.recordDecoder.decodeQuestion(byteBuf));
            i10--;
        }
    }

    private boolean decodeRecords(DnsResponse dnsResponse, DnsSection dnsSection, ByteBuf byteBuf, int i10) throws Exception {
        while (i10 > 0) {
            DnsRecord dnsRecordDecodeRecord = this.recordDecoder.decodeRecord(byteBuf);
            if (dnsRecordDecodeRecord == null) {
                return false;
            }
            dnsResponse.addRecord(dnsSection, dnsRecordDecodeRecord);
            i10--;
        }
        return true;
    }

    final DnsResponse decode(A a10, A a11, ByteBuf byteBuf) throws Exception {
        int unsignedShort = byteBuf.readUnsignedShort();
        int unsignedShort2 = byteBuf.readUnsignedShort();
        if ((unsignedShort2 >> 15) == 0) {
            throw new CorruptedFrameException("not a response");
        }
        DnsResponse dnsResponseNewResponse = newResponse(a10, a11, unsignedShort, DnsOpCode.valueOf((byte) ((unsignedShort2 >> 11) & 15)), DnsResponseCode.valueOf((byte) (unsignedShort2 & 15)));
        dnsResponseNewResponse.setRecursionDesired(((unsignedShort2 >> 8) & 1) == 1);
        dnsResponseNewResponse.setAuthoritativeAnswer(((unsignedShort2 >> 10) & 1) == 1);
        dnsResponseNewResponse.setTruncated(((unsignedShort2 >> 9) & 1) == 1);
        dnsResponseNewResponse.setRecursionAvailable(((unsignedShort2 >> 7) & 1) == 1);
        dnsResponseNewResponse.setZ((unsignedShort2 >> 4) & 7);
        try {
            int unsignedShort3 = byteBuf.readUnsignedShort();
            int unsignedShort4 = byteBuf.readUnsignedShort();
            int unsignedShort5 = byteBuf.readUnsignedShort();
            int unsignedShort6 = byteBuf.readUnsignedShort();
            decodeQuestions(dnsResponseNewResponse, byteBuf, unsignedShort3);
            if (!decodeRecords(dnsResponseNewResponse, DnsSection.ANSWER, byteBuf, unsignedShort4) || !decodeRecords(dnsResponseNewResponse, DnsSection.AUTHORITY, byteBuf, unsignedShort5)) {
                return dnsResponseNewResponse;
            }
            decodeRecords(dnsResponseNewResponse, DnsSection.ADDITIONAL, byteBuf, unsignedShort6);
            return dnsResponseNewResponse;
        } catch (Throwable th) {
            dnsResponseNewResponse.release();
            throw th;
        }
    }

    protected abstract DnsResponse newResponse(A a10, A a11, int i10, DnsOpCode dnsOpCode, DnsResponseCode dnsResponseCode) throws Exception;
}
