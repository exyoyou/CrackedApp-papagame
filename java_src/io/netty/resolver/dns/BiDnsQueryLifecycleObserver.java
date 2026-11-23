package io.netty.resolver.dns;

import com.kuaishou.weapon.p0.t;
import io.netty.channel.ChannelFuture;
import io.netty.handler.codec.dns.DnsQuestion;
import io.netty.handler.codec.dns.DnsResponseCode;
import io.netty.util.internal.ObjectUtil;
import java.net.InetSocketAddress;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class BiDnsQueryLifecycleObserver implements DnsQueryLifecycleObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DnsQueryLifecycleObserver f91656a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DnsQueryLifecycleObserver f91657b;

    public BiDnsQueryLifecycleObserver(DnsQueryLifecycleObserver dnsQueryLifecycleObserver, DnsQueryLifecycleObserver dnsQueryLifecycleObserver2) {
        this.f91656a = (DnsQueryLifecycleObserver) ObjectUtil.checkNotNull(dnsQueryLifecycleObserver, "a");
        this.f91657b = (DnsQueryLifecycleObserver) ObjectUtil.checkNotNull(dnsQueryLifecycleObserver2, t.f74887l);
    }

    @Override // io.netty.resolver.dns.DnsQueryLifecycleObserver
    public DnsQueryLifecycleObserver queryCNAMEd(DnsQuestion dnsQuestion) {
        try {
            this.f91656a.queryCNAMEd(dnsQuestion);
            return this;
        } finally {
            this.f91657b.queryCNAMEd(dnsQuestion);
        }
    }

    @Override // io.netty.resolver.dns.DnsQueryLifecycleObserver
    public void queryCancelled(int i10) {
        try {
            this.f91656a.queryCancelled(i10);
        } finally {
            this.f91657b.queryCancelled(i10);
        }
    }

    @Override // io.netty.resolver.dns.DnsQueryLifecycleObserver
    public void queryFailed(Throwable th) {
        try {
            this.f91656a.queryFailed(th);
        } finally {
            this.f91657b.queryFailed(th);
        }
    }

    @Override // io.netty.resolver.dns.DnsQueryLifecycleObserver
    public DnsQueryLifecycleObserver queryNoAnswer(DnsResponseCode dnsResponseCode) {
        try {
            this.f91656a.queryNoAnswer(dnsResponseCode);
            return this;
        } finally {
            this.f91657b.queryNoAnswer(dnsResponseCode);
        }
    }

    @Override // io.netty.resolver.dns.DnsQueryLifecycleObserver
    public DnsQueryLifecycleObserver queryRedirected(List<InetSocketAddress> list) {
        try {
            this.f91656a.queryRedirected(list);
            return this;
        } finally {
            this.f91657b.queryRedirected(list);
        }
    }

    @Override // io.netty.resolver.dns.DnsQueryLifecycleObserver
    public void querySucceed() {
        try {
            this.f91656a.querySucceed();
        } finally {
            this.f91657b.querySucceed();
        }
    }

    @Override // io.netty.resolver.dns.DnsQueryLifecycleObserver
    public void queryWritten(InetSocketAddress inetSocketAddress, ChannelFuture channelFuture) {
        try {
            this.f91656a.queryWritten(inetSocketAddress, channelFuture);
        } finally {
            this.f91657b.queryWritten(inetSocketAddress, channelFuture);
        }
    }
}
