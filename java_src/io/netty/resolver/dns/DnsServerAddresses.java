package io.netty.resolver.dns;

import io.netty.util.internal.ObjectUtil;
import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class DnsServerAddresses {
    @Deprecated
    public static List<InetSocketAddress> defaultAddressList() {
        return DefaultDnsServerAddressStreamProvider.defaultAddressList();
    }

    @Deprecated
    public static DnsServerAddresses defaultAddresses() {
        return DefaultDnsServerAddressStreamProvider.defaultAddresses();
    }

    public static DnsServerAddresses rotational(Iterable<? extends InetSocketAddress> iterable) {
        return rotational0(sanitize(iterable));
    }

    private static DnsServerAddresses rotational0(List<InetSocketAddress> list) {
        return list.size() == 1 ? singleton(list.get(0)) : new RotationalDnsServerAddresses(list);
    }

    private static List<InetSocketAddress> sanitize(Iterable<? extends InetSocketAddress> iterable) {
        InetSocketAddress next;
        ObjectUtil.checkNotNull(iterable, "addresses");
        ArrayList arrayList = iterable instanceof Collection ? new ArrayList(((Collection) iterable).size()) : new ArrayList(4);
        Iterator<? extends InetSocketAddress> it2 = iterable.iterator();
        while (it2.hasNext() && (next = it2.next()) != null) {
            if (next.isUnresolved()) {
                throw new IllegalArgumentException("cannot use an unresolved DNS server address: " + next);
            }
            arrayList.add(next);
        }
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("empty addresses");
        }
        return arrayList;
    }

    public static DnsServerAddresses sequential(Iterable<? extends InetSocketAddress> iterable) {
        return sequential0(sanitize(iterable));
    }

    private static DnsServerAddresses sequential0(List<InetSocketAddress> list) {
        return list.size() == 1 ? singleton(list.get(0)) : new DefaultDnsServerAddresses("sequential", list) { // from class: io.netty.resolver.dns.DnsServerAddresses.1
            @Override // io.netty.resolver.dns.DnsServerAddresses
            public DnsServerAddressStream stream() {
                return new SequentialDnsServerAddressStream(this.addresses, 0);
            }
        };
    }

    public static DnsServerAddresses shuffled(Iterable<? extends InetSocketAddress> iterable) {
        return shuffled0(sanitize(iterable));
    }

    private static DnsServerAddresses shuffled0(List<InetSocketAddress> list) {
        return list.size() == 1 ? singleton(list.get(0)) : new DefaultDnsServerAddresses("shuffled", list) { // from class: io.netty.resolver.dns.DnsServerAddresses.2
            @Override // io.netty.resolver.dns.DnsServerAddresses
            public DnsServerAddressStream stream() {
                return new ShuffledDnsServerAddressStream(this.addresses);
            }
        };
    }

    public static DnsServerAddresses singleton(InetSocketAddress inetSocketAddress) {
        ObjectUtil.checkNotNull(inetSocketAddress, "address");
        if (!inetSocketAddress.isUnresolved()) {
            return new SingletonDnsServerAddresses(inetSocketAddress);
        }
        throw new IllegalArgumentException("cannot use an unresolved DNS server address: " + inetSocketAddress);
    }

    public abstract DnsServerAddressStream stream();

    public static DnsServerAddresses rotational(InetSocketAddress... inetSocketAddressArr) {
        return rotational0(sanitize(inetSocketAddressArr));
    }

    public static DnsServerAddresses sequential(InetSocketAddress... inetSocketAddressArr) {
        return sequential0(sanitize(inetSocketAddressArr));
    }

    public static DnsServerAddresses shuffled(InetSocketAddress... inetSocketAddressArr) {
        return shuffled0(sanitize(inetSocketAddressArr));
    }

    private static List<InetSocketAddress> sanitize(InetSocketAddress[] inetSocketAddressArr) {
        ObjectUtil.checkNotNull(inetSocketAddressArr, "addresses");
        ArrayList arrayList = new ArrayList(inetSocketAddressArr.length);
        for (InetSocketAddress inetSocketAddress : inetSocketAddressArr) {
            if (inetSocketAddress == null) {
                break;
            }
            if (!inetSocketAddress.isUnresolved()) {
                arrayList.add(inetSocketAddress);
            } else {
                throw new IllegalArgumentException("cannot use an unresolved DNS server address: " + inetSocketAddress);
            }
        }
        return arrayList.isEmpty() ? DefaultDnsServerAddressStreamProvider.defaultAddressList() : arrayList;
    }
}
