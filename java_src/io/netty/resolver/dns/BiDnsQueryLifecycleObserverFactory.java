package io.netty.resolver.dns;

import com.kuaishou.weapon.p0.t;
import io.netty.handler.codec.dns.DnsQuestion;
import io.netty.util.internal.ObjectUtil;

/* JADX INFO: loaded from: classes.dex */
public final class BiDnsQueryLifecycleObserverFactory implements DnsQueryLifecycleObserverFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DnsQueryLifecycleObserverFactory f91658a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DnsQueryLifecycleObserverFactory f91659b;

    public BiDnsQueryLifecycleObserverFactory(DnsQueryLifecycleObserverFactory dnsQueryLifecycleObserverFactory, DnsQueryLifecycleObserverFactory dnsQueryLifecycleObserverFactory2) {
        this.f91658a = (DnsQueryLifecycleObserverFactory) ObjectUtil.checkNotNull(dnsQueryLifecycleObserverFactory, "a");
        this.f91659b = (DnsQueryLifecycleObserverFactory) ObjectUtil.checkNotNull(dnsQueryLifecycleObserverFactory2, t.f74887l);
    }

    @Override // io.netty.resolver.dns.DnsQueryLifecycleObserverFactory
    public DnsQueryLifecycleObserver newDnsQueryLifecycleObserver(DnsQuestion dnsQuestion) {
        return new BiDnsQueryLifecycleObserver(this.f91658a.newDnsQueryLifecycleObserver(dnsQuestion), this.f91659b.newDnsQueryLifecycleObserver(dnsQuestion));
    }
}
