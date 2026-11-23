package io.netty.resolver.dns;

import io.netty.channel.EventLoop;
import io.netty.handler.codec.dns.DnsRecord;
import io.netty.util.internal.ObjectUtil;
import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class AuthoritativeDnsServerCacheAdapter implements AuthoritativeDnsServerCache {
    private static final DnsRecord[] EMPTY = new DnsRecord[0];
    private final DnsCache cache;

    AuthoritativeDnsServerCacheAdapter(DnsCache dnsCache) {
        this.cache = (DnsCache) ObjectUtil.checkNotNull(dnsCache, "cache");
    }

    @Override // io.netty.resolver.dns.AuthoritativeDnsServerCache
    public void cache(String str, InetSocketAddress inetSocketAddress, long j10, EventLoop eventLoop) {
        if (inetSocketAddress.isUnresolved()) {
            return;
        }
        this.cache.cache(str, EMPTY, inetSocketAddress.getAddress(), j10, eventLoop);
    }

    @Override // io.netty.resolver.dns.AuthoritativeDnsServerCache
    public void clear() {
        this.cache.clear();
    }

    @Override // io.netty.resolver.dns.AuthoritativeDnsServerCache
    public DnsServerAddressStream get(String str) {
        List<? extends DnsCacheEntry> list = this.cache.get(str, EMPTY);
        if (list == null || list.isEmpty() || list.get(0).cause() != null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        int i10 = 0;
        do {
            arrayList.add(new InetSocketAddress(list.get(i10).address(), 53));
            i10++;
        } while (i10 < list.size());
        return new SequentialDnsServerAddressStream(arrayList, 0);
    }

    @Override // io.netty.resolver.dns.AuthoritativeDnsServerCache
    public boolean clear(String str) {
        return this.cache.clear(str);
    }
}
