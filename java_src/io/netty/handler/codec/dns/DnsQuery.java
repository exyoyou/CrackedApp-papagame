package io.netty.handler.codec.dns;

/* JADX INFO: loaded from: classes.dex */
public interface DnsQuery extends DnsMessage {
    @Override // io.netty.handler.codec.dns.DnsMessage
    DnsQuery addRecord(DnsSection dnsSection, int i10, DnsRecord dnsRecord);

    @Override // io.netty.handler.codec.dns.DnsMessage
    DnsQuery addRecord(DnsSection dnsSection, DnsRecord dnsRecord);

    @Override // io.netty.handler.codec.dns.DnsMessage
    DnsQuery clear();

    @Override // io.netty.handler.codec.dns.DnsMessage
    DnsQuery clear(DnsSection dnsSection);

    @Override // io.netty.handler.codec.dns.DnsMessage, io.netty.util.ReferenceCounted
    DnsQuery retain();

    @Override // io.netty.handler.codec.dns.DnsMessage, io.netty.util.ReferenceCounted
    DnsQuery retain(int i10);

    @Override // io.netty.handler.codec.dns.DnsMessage
    DnsQuery setId(int i10);

    @Override // io.netty.handler.codec.dns.DnsMessage
    DnsQuery setOpCode(DnsOpCode dnsOpCode);

    @Override // io.netty.handler.codec.dns.DnsMessage
    DnsQuery setRecord(DnsSection dnsSection, DnsRecord dnsRecord);

    @Override // io.netty.handler.codec.dns.DnsMessage
    DnsQuery setRecursionDesired(boolean z10);

    @Override // io.netty.handler.codec.dns.DnsMessage
    DnsQuery setZ(int i10);

    @Override // io.netty.handler.codec.dns.DnsMessage, io.netty.util.ReferenceCounted
    DnsQuery touch();

    @Override // io.netty.handler.codec.dns.DnsMessage, io.netty.util.ReferenceCounted
    DnsQuery touch(Object obj);
}
