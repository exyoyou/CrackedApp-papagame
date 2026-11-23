package io.netty.resolver.dns;

import io.netty.channel.ChannelFactory;
import io.netty.channel.EventLoop;
import io.netty.channel.ReflectiveChannelFactory;
import io.netty.channel.socket.DatagramChannel;
import io.netty.channel.socket.InternetProtocolFamily;
import io.netty.channel.socket.SocketChannel;
import io.netty.resolver.HostsFileEntriesResolver;
import io.netty.resolver.ResolvedAddressTypes;
import io.netty.util.internal.ObjectUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class DnsNameResolverBuilder {
    private AuthoritativeDnsServerCache authoritativeDnsServerCache;
    private ChannelFactory<? extends DatagramChannel> channelFactory;
    private DnsCnameCache cnameCache;
    private boolean completeOncePreferredResolved;
    private EventLoop eventLoop;
    private Integer maxTtl;
    private Integer minTtl;
    private Integer negativeTtl;
    private DnsCache resolveCache;
    private String[] searchDomains;
    private ChannelFactory<? extends SocketChannel> socketChannelFactory;
    private boolean traceEnabled;
    private long queryTimeoutMillis = 5000;
    private ResolvedAddressTypes resolvedAddressTypes = DnsNameResolver.DEFAULT_RESOLVE_ADDRESS_TYPES;
    private boolean recursionDesired = true;
    private int maxQueriesPerResolve = 16;
    private int maxPayloadSize = 4096;
    private boolean optResourceEnabled = true;
    private HostsFileEntriesResolver hostsFileEntriesResolver = HostsFileEntriesResolver.DEFAULT;
    private DnsServerAddressStreamProvider dnsServerAddressStreamProvider = DnsServerAddressStreamProviders.platformDefault();
    private DnsQueryLifecycleObserverFactory dnsQueryLifecycleObserverFactory = NoopDnsQueryLifecycleObserverFactory.INSTANCE;
    private int ndots = -1;
    private boolean decodeIdn = true;

    /* JADX INFO: renamed from: io.netty.resolver.dns.DnsNameResolverBuilder$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$netty$channel$socket$InternetProtocolFamily;

        static {
            int[] iArr = new int[InternetProtocolFamily.values().length];
            $SwitchMap$io$netty$channel$socket$InternetProtocolFamily = iArr;
            try {
                iArr[InternetProtocolFamily.IPv4.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$netty$channel$socket$InternetProtocolFamily[InternetProtocolFamily.IPv6.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public DnsNameResolverBuilder() {
    }

    public static ResolvedAddressTypes computeResolvedAddressTypes(InternetProtocolFamily... internetProtocolFamilyArr) {
        if (internetProtocolFamilyArr == null || internetProtocolFamilyArr.length == 0) {
            return DnsNameResolver.DEFAULT_RESOLVE_ADDRESS_TYPES;
        }
        if (internetProtocolFamilyArr.length > 2) {
            throw new IllegalArgumentException("No more than 2 InternetProtocolFamilies");
        }
        int i10 = AnonymousClass1.$SwitchMap$io$netty$channel$socket$InternetProtocolFamily[internetProtocolFamilyArr[0].ordinal()];
        if (i10 == 1) {
            return (internetProtocolFamilyArr.length < 2 || internetProtocolFamilyArr[1] != InternetProtocolFamily.IPv6) ? ResolvedAddressTypes.IPV4_ONLY : ResolvedAddressTypes.IPV4_PREFERRED;
        }
        if (i10 == 2) {
            return (internetProtocolFamilyArr.length < 2 || internetProtocolFamilyArr[1] != InternetProtocolFamily.IPv4) ? ResolvedAddressTypes.IPV6_ONLY : ResolvedAddressTypes.IPV6_PREFERRED;
        }
        throw new IllegalArgumentException("Couldn't resolve ResolvedAddressTypes from InternetProtocolFamily array");
    }

    private AuthoritativeDnsServerCache newAuthoritativeDnsServerCache() {
        return new DefaultAuthoritativeDnsServerCache(ObjectUtil.intValue(this.minTtl, 0), ObjectUtil.intValue(this.maxTtl, Integer.MAX_VALUE), new NameServerComparator(DnsNameResolver.preferredAddressType(this.resolvedAddressTypes).addressType()));
    }

    private DnsCache newCache() {
        return new DefaultDnsCache(ObjectUtil.intValue(this.minTtl, 0), ObjectUtil.intValue(this.maxTtl, Integer.MAX_VALUE), ObjectUtil.intValue(this.negativeTtl, 0));
    }

    private DnsCnameCache newCnameCache() {
        return new DefaultDnsCnameCache(ObjectUtil.intValue(this.minTtl, 0), ObjectUtil.intValue(this.maxTtl, Integer.MAX_VALUE));
    }

    @Deprecated
    public DnsNameResolverBuilder authoritativeDnsServerCache(DnsCache dnsCache) {
        this.authoritativeDnsServerCache = new AuthoritativeDnsServerCacheAdapter(dnsCache);
        return this;
    }

    public DnsNameResolver build() {
        if (this.eventLoop == null) {
            throw new IllegalStateException("eventLoop should be specified to build a DnsNameResolver.");
        }
        DnsCache dnsCacheNewCache = this.resolveCache;
        if (dnsCacheNewCache != null && (this.minTtl != null || this.maxTtl != null || this.negativeTtl != null)) {
            throw new IllegalStateException("resolveCache and TTLs are mutually exclusive");
        }
        if (this.authoritativeDnsServerCache != null && (this.minTtl != null || this.maxTtl != null || this.negativeTtl != null)) {
            throw new IllegalStateException("authoritativeDnsServerCache and TTLs are mutually exclusive");
        }
        if (dnsCacheNewCache == null) {
            dnsCacheNewCache = newCache();
        }
        DnsCache dnsCache = dnsCacheNewCache;
        DnsCnameCache dnsCnameCacheNewCnameCache = this.cnameCache;
        if (dnsCnameCacheNewCnameCache == null) {
            dnsCnameCacheNewCnameCache = newCnameCache();
        }
        DnsCnameCache dnsCnameCache = dnsCnameCacheNewCnameCache;
        AuthoritativeDnsServerCache authoritativeDnsServerCacheNewAuthoritativeDnsServerCache = this.authoritativeDnsServerCache;
        if (authoritativeDnsServerCacheNewAuthoritativeDnsServerCache == null) {
            authoritativeDnsServerCacheNewAuthoritativeDnsServerCache = newAuthoritativeDnsServerCache();
        }
        return new DnsNameResolver(this.eventLoop, this.channelFactory, this.socketChannelFactory, dnsCache, dnsCnameCache, authoritativeDnsServerCacheNewAuthoritativeDnsServerCache, this.dnsQueryLifecycleObserverFactory, this.queryTimeoutMillis, this.resolvedAddressTypes, this.recursionDesired, this.maxQueriesPerResolve, this.traceEnabled, this.maxPayloadSize, this.optResourceEnabled, this.hostsFileEntriesResolver, this.dnsServerAddressStreamProvider, this.searchDomains, this.ndots, this.decodeIdn, this.completeOncePreferredResolved);
    }

    protected ChannelFactory<? extends DatagramChannel> channelFactory() {
        return this.channelFactory;
    }

    public DnsNameResolverBuilder channelType(Class<? extends DatagramChannel> cls) {
        return channelFactory(new ReflectiveChannelFactory(cls));
    }

    public DnsNameResolverBuilder cnameCache(DnsCnameCache dnsCnameCache) {
        this.cnameCache = dnsCnameCache;
        return this;
    }

    public DnsNameResolverBuilder completeOncePreferredResolved(boolean z10) {
        this.completeOncePreferredResolved = z10;
        return this;
    }

    public DnsNameResolverBuilder copy() {
        Integer num;
        DnsNameResolverBuilder dnsNameResolverBuilder = new DnsNameResolverBuilder();
        EventLoop eventLoop = this.eventLoop;
        if (eventLoop != null) {
            dnsNameResolverBuilder.eventLoop(eventLoop);
        }
        ChannelFactory<? extends DatagramChannel> channelFactory = this.channelFactory;
        if (channelFactory != null) {
            dnsNameResolverBuilder.channelFactory(channelFactory);
        }
        ChannelFactory<? extends SocketChannel> channelFactory2 = this.socketChannelFactory;
        if (channelFactory2 != null) {
            dnsNameResolverBuilder.socketChannelFactory(channelFactory2);
        }
        DnsCache dnsCache = this.resolveCache;
        if (dnsCache != null) {
            dnsNameResolverBuilder.resolveCache(dnsCache);
        }
        DnsCnameCache dnsCnameCache = this.cnameCache;
        if (dnsCnameCache != null) {
            dnsNameResolverBuilder.cnameCache(dnsCnameCache);
        }
        if (this.maxTtl != null && (num = this.minTtl) != null) {
            dnsNameResolverBuilder.ttl(num.intValue(), this.maxTtl.intValue());
        }
        Integer num2 = this.negativeTtl;
        if (num2 != null) {
            dnsNameResolverBuilder.negativeTtl(num2.intValue());
        }
        AuthoritativeDnsServerCache authoritativeDnsServerCache = this.authoritativeDnsServerCache;
        if (authoritativeDnsServerCache != null) {
            dnsNameResolverBuilder.authoritativeDnsServerCache(authoritativeDnsServerCache);
        }
        DnsQueryLifecycleObserverFactory dnsQueryLifecycleObserverFactory = this.dnsQueryLifecycleObserverFactory;
        if (dnsQueryLifecycleObserverFactory != null) {
            dnsNameResolverBuilder.dnsQueryLifecycleObserverFactory(dnsQueryLifecycleObserverFactory);
        }
        dnsNameResolverBuilder.queryTimeoutMillis(this.queryTimeoutMillis);
        dnsNameResolverBuilder.resolvedAddressTypes(this.resolvedAddressTypes);
        dnsNameResolverBuilder.recursionDesired(this.recursionDesired);
        dnsNameResolverBuilder.maxQueriesPerResolve(this.maxQueriesPerResolve);
        dnsNameResolverBuilder.traceEnabled(this.traceEnabled);
        dnsNameResolverBuilder.maxPayloadSize(this.maxPayloadSize);
        dnsNameResolverBuilder.optResourceEnabled(this.optResourceEnabled);
        dnsNameResolverBuilder.hostsFileEntriesResolver(this.hostsFileEntriesResolver);
        DnsServerAddressStreamProvider dnsServerAddressStreamProvider = this.dnsServerAddressStreamProvider;
        if (dnsServerAddressStreamProvider != null) {
            dnsNameResolverBuilder.nameServerProvider(dnsServerAddressStreamProvider);
        }
        String[] strArr = this.searchDomains;
        if (strArr != null) {
            dnsNameResolverBuilder.searchDomains(Arrays.asList(strArr));
        }
        dnsNameResolverBuilder.ndots(this.ndots);
        dnsNameResolverBuilder.decodeIdn(this.decodeIdn);
        dnsNameResolverBuilder.completeOncePreferredResolved(this.completeOncePreferredResolved);
        return dnsNameResolverBuilder;
    }

    public DnsNameResolverBuilder decodeIdn(boolean z10) {
        this.decodeIdn = z10;
        return this;
    }

    public DnsNameResolverBuilder dnsQueryLifecycleObserverFactory(DnsQueryLifecycleObserverFactory dnsQueryLifecycleObserverFactory) {
        this.dnsQueryLifecycleObserverFactory = (DnsQueryLifecycleObserverFactory) ObjectUtil.checkNotNull(dnsQueryLifecycleObserverFactory, "lifecycleObserverFactory");
        return this;
    }

    public DnsNameResolverBuilder eventLoop(EventLoop eventLoop) {
        this.eventLoop = eventLoop;
        return this;
    }

    public DnsNameResolverBuilder hostsFileEntriesResolver(HostsFileEntriesResolver hostsFileEntriesResolver) {
        this.hostsFileEntriesResolver = hostsFileEntriesResolver;
        return this;
    }

    public DnsNameResolverBuilder maxPayloadSize(int i10) {
        this.maxPayloadSize = i10;
        return this;
    }

    public DnsNameResolverBuilder maxQueriesPerResolve(int i10) {
        this.maxQueriesPerResolve = i10;
        return this;
    }

    protected DnsServerAddressStreamProvider nameServerProvider() {
        return this.dnsServerAddressStreamProvider;
    }

    public DnsNameResolverBuilder ndots(int i10) {
        this.ndots = i10;
        return this;
    }

    public DnsNameResolverBuilder negativeTtl(int i10) {
        this.negativeTtl = Integer.valueOf(i10);
        return this;
    }

    public DnsNameResolverBuilder optResourceEnabled(boolean z10) {
        this.optResourceEnabled = z10;
        return this;
    }

    public DnsNameResolverBuilder queryTimeoutMillis(long j10) {
        this.queryTimeoutMillis = j10;
        return this;
    }

    public DnsNameResolverBuilder recursionDesired(boolean z10) {
        this.recursionDesired = z10;
        return this;
    }

    public DnsNameResolverBuilder resolveCache(DnsCache dnsCache) {
        this.resolveCache = dnsCache;
        return this;
    }

    public DnsNameResolverBuilder resolvedAddressTypes(ResolvedAddressTypes resolvedAddressTypes) {
        this.resolvedAddressTypes = resolvedAddressTypes;
        return this;
    }

    public DnsNameResolverBuilder searchDomains(Iterable<String> iterable) {
        String next;
        ObjectUtil.checkNotNull(iterable, "searchDomains");
        ArrayList arrayList = new ArrayList(4);
        Iterator<String> it2 = iterable.iterator();
        while (it2.hasNext() && (next = it2.next()) != null) {
            if (!arrayList.contains(next)) {
                arrayList.add(next);
            }
        }
        this.searchDomains = (String[]) arrayList.toArray(new String[0]);
        return this;
    }

    public DnsNameResolverBuilder socketChannelFactory(ChannelFactory<? extends SocketChannel> channelFactory) {
        this.socketChannelFactory = channelFactory;
        return this;
    }

    public DnsNameResolverBuilder socketChannelType(Class<? extends SocketChannel> cls) {
        return cls == null ? socketChannelFactory(null) : socketChannelFactory(new ReflectiveChannelFactory(cls));
    }

    public DnsNameResolverBuilder traceEnabled(boolean z10) {
        this.traceEnabled = z10;
        return this;
    }

    public DnsNameResolverBuilder ttl(int i10, int i11) {
        this.maxTtl = Integer.valueOf(i11);
        this.minTtl = Integer.valueOf(i10);
        return this;
    }

    public DnsNameResolverBuilder authoritativeDnsServerCache(AuthoritativeDnsServerCache authoritativeDnsServerCache) {
        this.authoritativeDnsServerCache = authoritativeDnsServerCache;
        return this;
    }

    public DnsNameResolverBuilder channelFactory(ChannelFactory<? extends DatagramChannel> channelFactory) {
        this.channelFactory = channelFactory;
        return this;
    }

    public DnsNameResolverBuilder nameServerProvider(DnsServerAddressStreamProvider dnsServerAddressStreamProvider) {
        this.dnsServerAddressStreamProvider = (DnsServerAddressStreamProvider) ObjectUtil.checkNotNull(dnsServerAddressStreamProvider, "dnsServerAddressStreamProvider");
        return this;
    }

    public DnsNameResolverBuilder(EventLoop eventLoop) {
        eventLoop(eventLoop);
    }
}
