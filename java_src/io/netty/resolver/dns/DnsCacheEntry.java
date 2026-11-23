package io.netty.resolver.dns;

import java.net.InetAddress;

/* JADX INFO: loaded from: classes.dex */
public interface DnsCacheEntry {
    InetAddress address();

    Throwable cause();
}
