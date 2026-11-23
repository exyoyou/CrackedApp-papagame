package io.netty.resolver.dns;

import io.netty.channel.AddressedEnvelope;
import io.netty.channel.Channel;
import io.netty.handler.codec.dns.DefaultDnsQuery;
import io.netty.handler.codec.dns.DnsQuery;
import io.netty.handler.codec.dns.DnsQuestion;
import io.netty.handler.codec.dns.DnsRecord;
import io.netty.handler.codec.dns.DnsResponse;
import io.netty.handler.codec.rtsp.RtspHeaders;
import io.netty.util.concurrent.Promise;
import java.net.InetSocketAddress;

/* JADX INFO: loaded from: classes.dex */
final class TcpDnsQueryContext extends DnsQueryContext {
    private final Channel channel;

    TcpDnsQueryContext(DnsNameResolver dnsNameResolver, Channel channel, InetSocketAddress inetSocketAddress, DnsQuestion dnsQuestion, DnsRecord[] dnsRecordArr, Promise<AddressedEnvelope<DnsResponse, InetSocketAddress>> promise) {
        super(dnsNameResolver, inetSocketAddress, dnsQuestion, dnsRecordArr, promise);
        this.channel = channel;
    }

    @Override // io.netty.resolver.dns.DnsQueryContext
    protected Channel channel() {
        return this.channel;
    }

    @Override // io.netty.resolver.dns.DnsQueryContext
    protected DnsQuery newQuery(int i10) {
        return new DefaultDnsQuery(i10);
    }

    @Override // io.netty.resolver.dns.DnsQueryContext
    protected String protocol() {
        return RtspHeaders.Values.TCP;
    }
}
