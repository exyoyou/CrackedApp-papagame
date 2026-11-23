package ed;

import java.net.InetSocketAddress;

/* JADX INFO: loaded from: classes10.dex */
public interface d extends org.jboss.netty.channel.e {
    @Override // org.jboss.netty.channel.e
    e getConfig();

    @Override // org.jboss.netty.channel.e
    InetSocketAddress getLocalAddress();

    @Override // org.jboss.netty.channel.e
    InetSocketAddress getRemoteAddress();
}
