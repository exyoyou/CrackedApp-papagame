package org.jboss.netty.channel.socket.nio;

/* JADX INFO: loaded from: classes10.dex */
public interface p extends Runnable {
    void f(org.jboss.netty.channel.e eVar, org.jboss.netty.channel.j jVar);

    void rebuildSelector();

    void shutdown();
}
