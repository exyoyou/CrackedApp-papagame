package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.nio.channels.SocketChannel;
import org.jboss.netty.channel.ChannelException;

/* JADX INFO: loaded from: classes10.dex */
final class m extends r {
    volatile org.jboss.netty.channel.j J;
    volatile boolean K;
    long L;
    volatile org.jboss.netty.util.f M;

    m(org.jboss.netty.channel.i iVar, org.jboss.netty.channel.n nVar, org.jboss.netty.channel.p pVar, t tVar) {
        super(null, iVar, nVar, pVar, u(), tVar);
        org.jboss.netty.channel.s.x(this);
    }

    private static SocketChannel u() {
        try {
            SocketChannel socketChannelOpen = SocketChannel.open();
            try {
                try {
                    socketChannelOpen.configureBlocking(false);
                    return socketChannelOpen;
                } catch (Throwable th) {
                    try {
                        socketChannelOpen.close();
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                    throw th;
                }
            } catch (IOException e11) {
                throw new ChannelException("Failed to enter non-blocking mode.", e11);
            }
        } catch (IOException e12) {
            throw new ChannelException("Failed to open a socket.", e12);
        }
    }
}
