package io.netty.resolver.dns;

import io.netty.channel.EventLoop;

/* JADX INFO: loaded from: classes.dex */
public interface DnsCnameCache {
    void cache(String str, String str2, long j10, EventLoop eventLoop);

    void clear();

    boolean clear(String str);

    String get(String str);
}
