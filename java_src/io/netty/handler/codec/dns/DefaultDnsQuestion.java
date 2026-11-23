package io.netty.handler.codec.dns;

import io.netty.util.internal.StringUtil;

/* JADX INFO: loaded from: classes.dex */
public class DefaultDnsQuestion extends AbstractDnsRecord implements DnsQuestion {
    public DefaultDnsQuestion(String str, DnsRecordType dnsRecordType) {
        super(str, dnsRecordType, 0L);
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsRecord
    public String toString() {
        StringBuilder sb2 = new StringBuilder(64);
        sb2.append(StringUtil.simpleClassName(this));
        sb2.append('(');
        sb2.append(name());
        sb2.append(' ');
        StringBuilder sbAppendRecordClass = DnsMessageUtil.appendRecordClass(sb2, dnsClass());
        sbAppendRecordClass.append(' ');
        sbAppendRecordClass.append(type().name());
        sbAppendRecordClass.append(')');
        return sb2.toString();
    }

    public DefaultDnsQuestion(String str, DnsRecordType dnsRecordType, int i10) {
        super(str, dnsRecordType, i10, 0L);
    }
}
