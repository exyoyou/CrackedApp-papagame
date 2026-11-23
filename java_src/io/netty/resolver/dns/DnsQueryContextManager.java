package io.netty.resolver.dns;

import io.netty.util.NetUtil;
import io.netty.util.collection.IntObjectHashMap;
import io.netty.util.collection.IntObjectMap;
import io.netty.util.internal.PlatformDependent;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class DnsQueryContextManager {
    final Map<InetSocketAddress, IntObjectMap<DnsQueryContext>> map = new HashMap();

    DnsQueryContextManager() {
    }

    private IntObjectMap<DnsQueryContext> getContextMap(InetSocketAddress inetSocketAddress) {
        IntObjectMap<DnsQueryContext> intObjectMap;
        synchronized (this.map) {
            intObjectMap = this.map.get(inetSocketAddress);
        }
        return intObjectMap;
    }

    private IntObjectMap<DnsQueryContext> getOrCreateContextMap(InetSocketAddress inetSocketAddress) {
        synchronized (this.map) {
            IntObjectMap<DnsQueryContext> intObjectMap = this.map.get(inetSocketAddress);
            if (intObjectMap != null) {
                return intObjectMap;
            }
            IntObjectHashMap intObjectHashMap = new IntObjectHashMap();
            InetAddress address = inetSocketAddress.getAddress();
            int port = inetSocketAddress.getPort();
            this.map.put(inetSocketAddress, intObjectHashMap);
            if (address instanceof Inet4Address) {
                Inet4Address inet4Address = (Inet4Address) address;
                if (inet4Address.isLoopbackAddress()) {
                    this.map.put(new InetSocketAddress(NetUtil.LOCALHOST6, port), intObjectHashMap);
                } else {
                    this.map.put(new InetSocketAddress(toCompactAddress(inet4Address), port), intObjectHashMap);
                }
            } else if (address instanceof Inet6Address) {
                Inet6Address inet6Address = (Inet6Address) address;
                if (inet6Address.isLoopbackAddress()) {
                    this.map.put(new InetSocketAddress(NetUtil.LOCALHOST4, port), intObjectHashMap);
                } else if (inet6Address.isIPv4CompatibleAddress()) {
                    this.map.put(new InetSocketAddress(toIPv4Address(inet6Address), port), intObjectHashMap);
                }
            }
            return intObjectHashMap;
        }
    }

    private static Inet6Address toCompactAddress(Inet4Address inet4Address) {
        byte[] address = inet4Address.getAddress();
        try {
            return (Inet6Address) InetAddress.getByAddress(new byte[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, address[0], address[1], address[2], address[3]});
        } catch (UnknownHostException e10) {
            throw new Error(e10);
        }
    }

    private static Inet4Address toIPv4Address(Inet6Address inet6Address) {
        byte[] address = inet6Address.getAddress();
        try {
            return (Inet4Address) InetAddress.getByAddress(new byte[]{address[12], address[13], address[14], address[15]});
        } catch (UnknownHostException e10) {
            throw new Error(e10);
        }
    }

    int add(DnsQueryContext dnsQueryContext) {
        IntObjectMap<DnsQueryContext> orCreateContextMap = getOrCreateContextMap(dnsQueryContext.nameServerAddr());
        int iNextInt = PlatformDependent.threadLocalRandom().nextInt(65535) + 1;
        synchronized (orCreateContextMap) {
            int i10 = 0;
            while (orCreateContextMap.containsKey(iNextInt)) {
                iNextInt = (iNextInt + 1) & 65535;
                i10++;
                if (i10 >= 131070) {
                    throw new IllegalStateException("query ID space exhausted: " + dnsQueryContext.question());
                }
            }
            orCreateContextMap.put(iNextInt, dnsQueryContext);
        }
        return iNextInt;
    }

    DnsQueryContext get(InetSocketAddress inetSocketAddress, int i10) {
        DnsQueryContext dnsQueryContext;
        IntObjectMap<DnsQueryContext> contextMap = getContextMap(inetSocketAddress);
        if (contextMap == null) {
            return null;
        }
        synchronized (contextMap) {
            dnsQueryContext = contextMap.get(i10);
        }
        return dnsQueryContext;
    }

    DnsQueryContext remove(InetSocketAddress inetSocketAddress, int i10) {
        DnsQueryContext dnsQueryContextRemove;
        IntObjectMap<DnsQueryContext> contextMap = getContextMap(inetSocketAddress);
        if (contextMap == null) {
            return null;
        }
        synchronized (contextMap) {
            dnsQueryContextRemove = contextMap.remove(i10);
        }
        return dnsQueryContextRemove;
    }
}
