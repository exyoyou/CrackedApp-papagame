package org.jboss.netty.channel.socket.nio;

import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.nio.channels.SocketChannel;

/* JADX INFO: loaded from: classes10.dex */
public class r extends b<SocketChannel> implements ed.d {
    private static final int E = 0;
    private static final int F = 1;
    private static final int G = 2;
    private static final int H = -1;
    static final /* synthetic */ boolean I = false;
    volatile int C;
    private final s D;

    public r(org.jboss.netty.channel.e eVar, org.jboss.netty.channel.i iVar, org.jboss.netty.channel.n nVar, org.jboss.netty.channel.p pVar, SocketChannel socketChannel, t tVar) {
        super(eVar, iVar, nVar, pVar, tVar, socketChannel);
        this.C = 0;
        this.D = new i(socketChannel.socket());
    }

    @Override // org.jboss.netty.channel.socket.nio.b, org.jboss.netty.channel.a, org.jboss.netty.channel.e
    public /* bridge */ /* synthetic */ int L0() {
        return super.L0();
    }

    @Override // org.jboss.netty.channel.a, org.jboss.netty.channel.e
    public org.jboss.netty.channel.j Q(Object obj, SocketAddress socketAddress) {
        return (socketAddress == null || socketAddress.equals(getRemoteAddress())) ? super.Q(obj, null) : h();
    }

    @Override // org.jboss.netty.channel.socket.nio.b, org.jboss.netty.channel.e
    public /* bridge */ /* synthetic */ InetSocketAddress getLocalAddress() {
        return super.getLocalAddress();
    }

    @Override // org.jboss.netty.channel.socket.nio.b, org.jboss.netty.channel.e
    public /* bridge */ /* synthetic */ InetSocketAddress getRemoteAddress() {
        return super.getRemoteAddress();
    }

    @Override // org.jboss.netty.channel.socket.nio.b, org.jboss.netty.channel.a
    protected boolean i() {
        if (!super.i()) {
            return false;
        }
        this.C = -1;
        return true;
    }

    @Override // org.jboss.netty.channel.e
    public boolean isBound() {
        return this.C >= 1;
    }

    @Override // org.jboss.netty.channel.e
    public boolean isConnected() {
        return this.C == 2;
    }

    @Override // org.jboss.netty.channel.a, org.jboss.netty.channel.e
    public boolean isOpen() {
        return this.C >= 0;
    }

    @Override // org.jboss.netty.channel.socket.nio.b
    InetSocketAddress l() throws Exception {
        return (InetSocketAddress) ((SocketChannel) this.B).socket().getLocalSocketAddress();
    }

    @Override // org.jboss.netty.channel.socket.nio.b
    InetSocketAddress n() throws Exception {
        return (InetSocketAddress) ((SocketChannel) this.B).socket().getRemoteSocketAddress();
    }

    @Override // org.jboss.netty.channel.socket.nio.b
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public s getConfig() {
        return this.D;
    }

    @Override // org.jboss.netty.channel.socket.nio.b
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public t o() {
        return (t) super.o();
    }

    final void s() {
        this.C = 1;
    }

    final void t() {
        if (this.C != -1) {
            this.C = 2;
        }
    }
}
