package io.netty.resolver.dns.macos;

import io.netty.resolver.dns.DnsServerAddressStream;
import io.netty.resolver.dns.DnsServerAddressStreamProvider;
import io.netty.resolver.dns.DnsServerAddressStreamProviders;
import io.netty.resolver.dns.DnsServerAddresses;
import io.netty.util.internal.NativeLibraryLoader;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.ThrowableUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.net.InetSocketAddress;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public final class MacOSDnsServerAddressStreamProvider implements DnsServerAddressStreamProvider {
    private static final Throwable UNAVAILABILITY_CAUSE;
    private volatile Map<String, DnsServerAddresses> currentMappings = retrieveCurrentMappings();
    private final AtomicLong lastRefresh = new AtomicLong(System.nanoTime());
    private static final DnsServerAddressStreamProvider DEFAULT_PROVIDER = DnsServerAddressStreamProviders.platformDefault();
    private static final InternalLogger logger = InternalLoggerFactory.getInstance((Class<?>) MacOSDnsServerAddressStreamProvider.class);
    private static final long REFRESH_INTERVAL = TimeUnit.SECONDS.toNanos(10);

    static {
        try {
            loadNativeLibrary();
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        UNAVAILABILITY_CAUSE = th;
    }

    public MacOSDnsServerAddressStreamProvider() {
        ensureAvailability();
    }

    public static void ensureAvailability() {
        Throwable th = UNAVAILABILITY_CAUSE;
        if (th != null) {
            throw ((Error) new UnsatisfiedLinkError("failed to load the required native library").initCause(th));
        }
    }

    public static boolean isAvailable() {
        return UNAVAILABILITY_CAUSE == null;
    }

    private static void loadNativeLibrary() throws Throwable {
        if (!SystemPropertyUtil.get("os.name").toLowerCase(Locale.UK).trim().startsWith("mac")) {
            throw new IllegalStateException("Only supported on MacOS");
        }
        String str = "netty_resolver_dns_native_macos_" + PlatformDependent.normalizedArch();
        ClassLoader classLoader = PlatformDependent.getClassLoader(MacOSDnsServerAddressStreamProvider.class);
        try {
            NativeLibraryLoader.load(str, classLoader);
        } catch (UnsatisfiedLinkError e10) {
            try {
                NativeLibraryLoader.load("netty_resolver_dns_native_macos", classLoader);
                logger.debug("Failed to load {}", str, e10);
            } catch (UnsatisfiedLinkError e11) {
                ThrowableUtil.addSuppressed(e10, e11);
                throw e10;
            }
        }
    }

    private static native DnsResolver[] resolvers();

    private static Map<String, DnsServerAddresses> retrieveCurrentMappings() {
        InetSocketAddress[] inetSocketAddressArrNameservers;
        DnsResolver[] dnsResolverArrResolvers = resolvers();
        if (dnsResolverArrResolvers == null || dnsResolverArrResolvers.length == 0) {
            return Collections.emptyMap();
        }
        HashMap map = new HashMap(dnsResolverArrResolvers.length);
        for (DnsResolver dnsResolver : dnsResolverArrResolvers) {
            if (!"mdns".equalsIgnoreCase(dnsResolver.options()) && (inetSocketAddressArrNameservers = dnsResolver.nameservers()) != null && inetSocketAddressArrNameservers.length != 0) {
                String strDomain = dnsResolver.domain();
                if (strDomain == null) {
                    strDomain = "";
                }
                InetSocketAddress[] inetSocketAddressArrNameservers2 = dnsResolver.nameservers();
                for (int i10 = 0; i10 < inetSocketAddressArrNameservers2.length; i10++) {
                    InetSocketAddress inetSocketAddress = inetSocketAddressArrNameservers2[i10];
                    if (inetSocketAddress.getPort() == 0) {
                        int iPort = dnsResolver.port();
                        if (iPort == 0) {
                            iPort = 53;
                        }
                        inetSocketAddressArrNameservers2[i10] = new InetSocketAddress(inetSocketAddress.getAddress(), iPort);
                    }
                }
                map.put(strDomain, DnsServerAddresses.sequential(inetSocketAddressArrNameservers2));
            }
        }
        return map;
    }

    public static Throwable unavailabilityCause() {
        return UNAVAILABILITY_CAUSE;
    }

    @Override // io.netty.resolver.dns.DnsServerAddressStreamProvider
    public DnsServerAddressStream nameServerAddressStream(String str) {
        long j10 = this.lastRefresh.get();
        Map<String, DnsServerAddresses> mapRetrieveCurrentMappings = this.currentMappings;
        if (System.nanoTime() - j10 > REFRESH_INTERVAL && this.lastRefresh.compareAndSet(j10, System.nanoTime())) {
            mapRetrieveCurrentMappings = retrieveCurrentMappings();
            this.currentMappings = mapRetrieveCurrentMappings;
        }
        String strSubstring = str;
        while (true) {
            int iIndexOf = strSubstring.indexOf(46, 1);
            if (iIndexOf < 0 || iIndexOf == strSubstring.length() - 1) {
                break;
            }
            DnsServerAddresses dnsServerAddresses = mapRetrieveCurrentMappings.get(strSubstring);
            if (dnsServerAddresses != null) {
                return dnsServerAddresses.stream();
            }
            strSubstring = strSubstring.substring(iIndexOf + 1);
        }
        DnsServerAddresses dnsServerAddresses2 = mapRetrieveCurrentMappings.get("");
        return dnsServerAddresses2 != null ? dnsServerAddresses2.stream() : DEFAULT_PROVIDER.nameServerAddressStream(str);
    }
}
