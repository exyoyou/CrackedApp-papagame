package io.netty.resolver.dns;

import java.net.InetSocketAddress;

/* JADX INFO: loaded from: classes.dex */
public interface DnsServerAddressStream {
    DnsServerAddressStream duplicate();

    InetSocketAddress next();

    int size();
}
