package io.netty.handler.codec.dns;

import io.netty.handler.codec.http2.Http2CodecUtil;
import io.netty.util.internal.StringUtil;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractDnsOptPseudoRrRecord extends AbstractDnsRecord implements DnsOptPseudoRecord {
    protected AbstractDnsOptPseudoRrRecord(int i10, int i11, int i12) {
        super("", DnsRecordType.OPT, i10, packIntoLong(i11, i12));
    }

    private static long packIntoLong(int i10, int i11) {
        return ((long) (((i10 & 255) << 24) | ((i11 & 255) << 16) | 0 | 0)) & 4294967295L;
    }

    @Override // io.netty.handler.codec.dns.DnsOptPseudoRecord
    public int extendedRcode() {
        return (short) ((((int) timeToLive()) >> 24) & 255);
    }

    @Override // io.netty.handler.codec.dns.DnsOptPseudoRecord
    public int flags() {
        return (short) (((short) timeToLive()) & Http2CodecUtil.MAX_UNSIGNED_BYTE);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsRecord
    public String toString() {
        return toStringBuilder().toString();
    }

    final StringBuilder toStringBuilder() {
        StringBuilder sb2 = new StringBuilder(64);
        sb2.append(StringUtil.simpleClassName(this));
        sb2.append('(');
        sb2.append("OPT flags:");
        sb2.append(flags());
        sb2.append(" version:");
        sb2.append(version());
        sb2.append(" extendedRecode:");
        sb2.append(extendedRcode());
        sb2.append(" udp:");
        sb2.append(dnsClass());
        sb2.append(')');
        return sb2;
    }

    @Override // io.netty.handler.codec.dns.DnsOptPseudoRecord
    public int version() {
        return (short) ((((int) timeToLive()) >> 16) & 255);
    }

    protected AbstractDnsOptPseudoRrRecord(int i10) {
        super("", DnsRecordType.OPT, i10, 0L);
    }
}
