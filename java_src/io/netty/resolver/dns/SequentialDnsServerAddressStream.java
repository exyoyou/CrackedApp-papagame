package io.netty.resolver.dns;

import java.net.InetSocketAddress;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class SequentialDnsServerAddressStream implements DnsServerAddressStream {
    private final List<? extends InetSocketAddress> addresses;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f91662i;

    SequentialDnsServerAddressStream(List<? extends InetSocketAddress> list, int i10) {
        this.addresses = list;
        this.f91662i = i10;
    }

    @Override // io.netty.resolver.dns.DnsServerAddressStream
    public InetSocketAddress next() {
        int i10 = this.f91662i;
        InetSocketAddress inetSocketAddress = this.addresses.get(i10);
        int i11 = i10 + 1;
        if (i11 < this.addresses.size()) {
            this.f91662i = i11;
        } else {
            this.f91662i = 0;
        }
        return inetSocketAddress;
    }

    @Override // io.netty.resolver.dns.DnsServerAddressStream
    public int size() {
        return this.addresses.size();
    }

    public String toString() {
        return toString("sequential", this.f91662i, this.addresses);
    }

    static String toString(String str, int i10, Collection<? extends InetSocketAddress> collection) {
        StringBuilder sb2 = new StringBuilder(str.length() + 2 + (collection.size() * 16));
        sb2.append(str);
        sb2.append("(index: ");
        sb2.append(i10);
        sb2.append(", addrs: (");
        Iterator<? extends InetSocketAddress> it2 = collection.iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next());
            sb2.append(", ");
        }
        sb2.setLength(sb2.length() - 2);
        sb2.append("))");
        return sb2.toString();
    }

    @Override // io.netty.resolver.dns.DnsServerAddressStream
    public SequentialDnsServerAddressStream duplicate() {
        return new SequentialDnsServerAddressStream(this.addresses, this.f91662i);
    }
}
