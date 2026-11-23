package io.netty.resolver.dns;

import io.netty.util.internal.PlatformDependent;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public final class DnsServerAddressStreamProviders {
    private static final long REFRESH_INTERVAL = TimeUnit.MINUTES.toNanos(5);
    private static final DnsServerAddressStreamProvider DEFAULT_DNS_SERVER_ADDRESS_STREAM_PROVIDER = new DnsServerAddressStreamProvider() { // from class: io.netty.resolver.dns.DnsServerAddressStreamProviders.1
        private volatile DnsServerAddressStreamProvider currentProvider = provider();
        private final AtomicLong lastRefresh = new AtomicLong(System.nanoTime());

        private DnsServerAddressStreamProvider provider() {
            return PlatformDependent.isWindows() ? DefaultDnsServerAddressStreamProvider.INSTANCE : UnixResolverDnsServerAddressStreamProvider.parseSilently();
        }

        @Override // io.netty.resolver.dns.DnsServerAddressStreamProvider
        public DnsServerAddressStream nameServerAddressStream(String str) {
            long j10 = this.lastRefresh.get();
            DnsServerAddressStreamProvider dnsServerAddressStreamProviderProvider = this.currentProvider;
            if (System.nanoTime() - j10 > DnsServerAddressStreamProviders.REFRESH_INTERVAL && this.lastRefresh.compareAndSet(j10, System.nanoTime())) {
                dnsServerAddressStreamProviderProvider = provider();
                this.currentProvider = dnsServerAddressStreamProviderProvider;
            }
            return dnsServerAddressStreamProviderProvider.nameServerAddressStream(str);
        }
    };

    private DnsServerAddressStreamProviders() {
    }

    public static DnsServerAddressStreamProvider platformDefault() {
        return DEFAULT_DNS_SERVER_ADDRESS_STREAM_PROVIDER;
    }
}
