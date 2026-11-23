package io.netty.resolver.dns;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufHolder;
import io.netty.handler.codec.dns.DnsRawRecord;
import io.netty.handler.codec.dns.DnsRecord;
import java.net.IDN;
import java.net.InetAddress;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes.dex */
final class DnsAddressDecoder {
    private static final int INADDRSZ4 = 4;
    private static final int INADDRSZ6 = 16;

    private DnsAddressDecoder() {
    }

    static InetAddress decodeAddress(DnsRecord dnsRecord, String str, boolean z10) {
        if (!(dnsRecord instanceof DnsRawRecord)) {
            return null;
        }
        ByteBuf byteBufContent = ((ByteBufHolder) dnsRecord).content();
        int i10 = byteBufContent.readableBytes();
        if (i10 != 4 && i10 != 16) {
            return null;
        }
        byte[] bArr = new byte[i10];
        byteBufContent.getBytes(byteBufContent.readerIndex(), bArr);
        if (z10) {
            try {
                str = IDN.toUnicode(str);
            } catch (UnknownHostException e10) {
                throw new Error(e10);
            }
        }
        return InetAddress.getByAddress(str, bArr);
    }
}
