package io.netty.handler.codec.dns;

import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.StringUtil;

/* JADX INFO: loaded from: classes.dex */
public class DefaultDnsPtrRecord extends AbstractDnsRecord implements DnsPtrRecord {
    private final String hostname;

    public DefaultDnsPtrRecord(String str, int i10, long j10, String str2) {
        super(str, DnsRecordType.PTR, i10, j10);
        this.hostname = (String) ObjectUtil.checkNotNull(str2, "hostname");
    }

    @Override // io.netty.handler.codec.dns.DnsPtrRecord
    public String hostname() {
        return this.hostname;
    }

    @Override // io.netty.handler.codec.dns.AbstractDnsRecord
    public String toString() {
        StringBuilder sb2 = new StringBuilder(64);
        sb2.append(StringUtil.simpleClassName(this));
        sb2.append('(');
        DnsRecordType dnsRecordTypeType = type();
        sb2.append(name().isEmpty() ? "<root>" : name());
        sb2.append(' ');
        sb2.append(timeToLive());
        sb2.append(' ');
        StringBuilder sbAppendRecordClass = DnsMessageUtil.appendRecordClass(sb2, dnsClass());
        sbAppendRecordClass.append(' ');
        sbAppendRecordClass.append(dnsRecordTypeType.name());
        sb2.append(' ');
        sb2.append(this.hostname);
        return sb2.toString();
    }
}
