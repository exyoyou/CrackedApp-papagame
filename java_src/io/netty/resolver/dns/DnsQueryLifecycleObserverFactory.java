package io.netty.resolver.dns;

import io.netty.handler.codec.dns.DnsQuestion;

/* JADX INFO: loaded from: classes.dex */
public interface DnsQueryLifecycleObserverFactory {
    DnsQueryLifecycleObserver newDnsQueryLifecycleObserver(DnsQuestion dnsQuestion);
}
