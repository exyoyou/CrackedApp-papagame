package io.netty.resolver.dns;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class MultiDnsServerAddressStreamProvider implements DnsServerAddressStreamProvider {
    private final DnsServerAddressStreamProvider[] providers;

    public MultiDnsServerAddressStreamProvider(List<DnsServerAddressStreamProvider> list) {
        this.providers = (DnsServerAddressStreamProvider[]) list.toArray(new DnsServerAddressStreamProvider[0]);
    }

    @Override // io.netty.resolver.dns.DnsServerAddressStreamProvider
    public DnsServerAddressStream nameServerAddressStream(String str) {
        for (DnsServerAddressStreamProvider dnsServerAddressStreamProvider : this.providers) {
            DnsServerAddressStream dnsServerAddressStreamNameServerAddressStream = dnsServerAddressStreamProvider.nameServerAddressStream(str);
            if (dnsServerAddressStreamNameServerAddressStream != null) {
                return dnsServerAddressStreamNameServerAddressStream;
            }
        }
        return null;
    }

    public MultiDnsServerAddressStreamProvider(DnsServerAddressStreamProvider... dnsServerAddressStreamProviderArr) {
        this.providers = (DnsServerAddressStreamProvider[]) dnsServerAddressStreamProviderArr.clone();
    }
}
