package io.netty.resolver.dns;

import java.net.InetSocketAddress;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class DefaultDnsServerAddresses extends DnsServerAddresses {
    protected final List<InetSocketAddress> addresses;
    private final String strVal;

    DefaultDnsServerAddresses(String str, List<InetSocketAddress> list) {
        this.addresses = list;
        StringBuilder sb2 = new StringBuilder(str.length() + 2 + (list.size() * 16));
        sb2.append(str);
        sb2.append('(');
        Iterator<InetSocketAddress> it2 = list.iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next());
            sb2.append(", ");
        }
        sb2.setLength(sb2.length() - 2);
        sb2.append(')');
        this.strVal = sb2.toString();
    }

    public String toString() {
        return this.strVal;
    }
}
