package io.netty.resolver.dns;

import java.net.InetSocketAddress;

/* JADX INFO: loaded from: classes.dex */
public final class SingletonDnsServerAddressStreamProvider extends UniSequentialDnsServerAddressStreamProvider {
    public SingletonDnsServerAddressStreamProvider(InetSocketAddress inetSocketAddress) {
        super(DnsServerAddresses.singleton(inetSocketAddress));
    }
}
