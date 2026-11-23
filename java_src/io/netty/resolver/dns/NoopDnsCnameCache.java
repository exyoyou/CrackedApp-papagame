package io.netty.resolver.dns;

import io.netty.channel.EventLoop;

/* JADX INFO: loaded from: classes.dex */
public final class NoopDnsCnameCache implements DnsCnameCache {
    public static final NoopDnsCnameCache INSTANCE = new NoopDnsCnameCache();

    private NoopDnsCnameCache() {
    }

    @Override // io.netty.resolver.dns.DnsCnameCache
    public void cache(String str, String str2, long j10, EventLoop eventLoop) {
    }

    @Override // io.netty.resolver.dns.DnsCnameCache
    public void clear() {
    }

    @Override // io.netty.resolver.dns.DnsCnameCache
    public String get(String str) {
        return null;
    }

    @Override // io.netty.resolver.dns.DnsCnameCache
    public boolean clear(String str) {
        return false;
    }
}
