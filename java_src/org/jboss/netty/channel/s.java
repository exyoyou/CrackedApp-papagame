package org.jboss.netty.channel;

import java.net.SocketAddress;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
public final class s {

    static class a implements o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ n f95549a;

        a(n nVar) {
            this.f95549a = nVar;
        }

        @Override // org.jboss.netty.channel.o
        public n getPipeline() {
            return s.R(this.f95549a);
        }
    }

    static class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ org.jboss.netty.channel.e f95550b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ long f95551c;

        b(org.jboss.netty.channel.e eVar, long j10) {
            this.f95550b = eVar;
            this.f95551c = j10;
        }

        @Override // java.lang.Runnable
        public void run() {
            s.L(this.f95550b, this.f95551c);
        }
    }

    static class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ org.jboss.netty.channel.e f95552b;

        c(org.jboss.netty.channel.e eVar) {
            this.f95552b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            s.u(this.f95552b);
        }
    }

    static class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ org.jboss.netty.channel.e f95553b;

        d(org.jboss.netty.channel.e eVar) {
            this.f95553b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            s.r(this.f95553b);
        }
    }

    static class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ org.jboss.netty.channel.e f95554b;

        e(org.jboss.netty.channel.e eVar) {
            this.f95554b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            s.z(this.f95554b);
        }
    }

    static class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ org.jboss.netty.channel.e f95555b;

        f(org.jboss.netty.channel.e eVar) {
            this.f95555b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            s.m(this.f95555b);
        }
    }

    static class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ org.jboss.netty.channel.e f95556b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Throwable f95557c;

        g(org.jboss.netty.channel.e eVar, Throwable th) {
            this.f95556b = eVar;
            this.f95557c = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            s.D(this.f95556b, this.f95557c);
        }
    }

    static class h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ m f95558b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Throwable f95559c;

        h(m mVar, Throwable th) {
            this.f95558b = mVar;
            this.f95559c = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            s.E(this.f95558b, this.f95559c);
        }
    }

    private s() {
    }

    public static void A(m mVar) {
        mVar.a(new o0(mVar.getChannel(), ChannelState.BOUND, null));
    }

    public static j B(org.jboss.netty.channel.e eVar) {
        return eVar.getPipeline().execute(new e(eVar));
    }

    private static void C(org.jboss.netty.channel.e eVar, org.jboss.netty.channel.e eVar2) {
        eVar.getPipeline().a(new y(eVar, eVar2));
    }

    public static void D(org.jboss.netty.channel.e eVar, Throwable th) {
        eVar.getPipeline().a(new z(eVar, th));
    }

    public static void E(m mVar, Throwable th) {
        mVar.a(new z(mVar.getChannel(), th));
    }

    public static j F(org.jboss.netty.channel.e eVar, Throwable th) {
        return eVar.getPipeline().execute(new g(eVar, th));
    }

    public static j G(m mVar, Throwable th) {
        return mVar.getPipeline().execute(new h(mVar, th));
    }

    public static void H(org.jboss.netty.channel.e eVar, Object obj) {
        I(eVar, obj, null);
    }

    public static void I(org.jboss.netty.channel.e eVar, Object obj, SocketAddress socketAddress) {
        eVar.getPipeline().a(new p0(eVar, obj, socketAddress));
    }

    public static void J(m mVar, Object obj) {
        mVar.a(new p0(mVar.getChannel(), obj, null));
    }

    public static void K(m mVar, Object obj, SocketAddress socketAddress) {
        mVar.a(new p0(mVar.getChannel(), obj, socketAddress));
    }

    public static void L(org.jboss.netty.channel.e eVar, long j10) {
        if (j10 == 0) {
            return;
        }
        eVar.getPipeline().a(new b0(eVar, j10));
    }

    public static void M(m mVar, long j10) {
        mVar.a(new b0(mVar.getChannel(), j10));
    }

    public static j N(org.jboss.netty.channel.e eVar, long j10) {
        return eVar.getPipeline().execute(new b(eVar, j10));
    }

    public static j O(org.jboss.netty.channel.e eVar) {
        return P(eVar, false);
    }

    public static j P(org.jboss.netty.channel.e eVar, boolean z10) {
        return new w(eVar, z10);
    }

    public static n Q() {
        return new x();
    }

    public static n R(n nVar) {
        n nVarQ = Q();
        for (Map.Entry<String, ChannelHandler> entry : nVar.toMap().entrySet()) {
            nVarQ.i(entry.getKey(), entry.getValue());
        }
        return nVarQ;
    }

    public static n S(ChannelHandler... channelHandlerArr) {
        ChannelHandler channelHandler;
        if (channelHandlerArr == null) {
            throw new NullPointerException("handlers");
        }
        n nVarQ = Q();
        for (int i10 = 0; i10 < channelHandlerArr.length && (channelHandler = channelHandlerArr[i10]) != null; i10++) {
            nVarQ.i(org.jboss.netty.util.internal.b.c(i10), channelHandler);
        }
        return nVarQ;
    }

    public static o T(n nVar) {
        return new a(nVar);
    }

    public static j U(org.jboss.netty.channel.e eVar, int i10) {
        Z(i10);
        int iJ = j(i10);
        j jVarO = O(eVar);
        eVar.getPipeline().b(new c0(eVar, jVarO, ChannelState.INTEREST_OPS, Integer.valueOf(iJ)));
        return jVarO;
    }

    public static void V(m mVar, j jVar, int i10) {
        Z(i10);
        mVar.b(new c0(mVar.getChannel(), jVar, ChannelState.INTEREST_OPS, Integer.valueOf(j(i10))));
    }

    public static j W(org.jboss.netty.channel.e eVar) {
        return eVar instanceof org.jboss.netty.channel.a ? ((org.jboss.netty.channel.a) eVar).g() : new n0(eVar);
    }

    public static j X(org.jboss.netty.channel.e eVar) {
        j jVarO = O(eVar);
        eVar.getPipeline().b(new c0(eVar, jVarO, ChannelState.BOUND, null));
        return jVarO;
    }

    public static void Y(m mVar, j jVar) {
        mVar.b(new c0(mVar.getChannel(), jVar, ChannelState.BOUND, null));
    }

    private static void Z(int i10) {
        if (i10 == 0 || i10 == 1 || i10 == 4 || i10 == 5) {
            return;
        }
        throw new IllegalArgumentException("Invalid interestOps: " + i10);
    }

    public static j a(org.jboss.netty.channel.e eVar, SocketAddress socketAddress) {
        if (socketAddress == null) {
            throw new NullPointerException("localAddress");
        }
        j jVarO = O(eVar);
        eVar.getPipeline().b(new c0(eVar, jVarO, ChannelState.BOUND, socketAddress));
        return jVarO;
    }

    public static j a0(org.jboss.netty.channel.e eVar, Object obj) {
        return b0(eVar, obj, null);
    }

    public static void b(m mVar, j jVar, SocketAddress socketAddress) {
        if (socketAddress == null) {
            throw new NullPointerException("localAddress");
        }
        mVar.b(new c0(mVar.getChannel(), jVar, ChannelState.BOUND, socketAddress));
    }

    public static j b0(org.jboss.netty.channel.e eVar, Object obj, SocketAddress socketAddress) {
        j jVarO = O(eVar);
        eVar.getPipeline().b(new d0(eVar, jVarO, obj, socketAddress));
        return jVarO;
    }

    public static j c(org.jboss.netty.channel.e eVar) {
        j jVarT0 = eVar.t0();
        eVar.getPipeline().b(new c0(eVar, jVarT0, ChannelState.OPEN, Boolean.FALSE));
        return jVarT0;
    }

    public static void c0(m mVar, j jVar, Object obj) {
        d0(mVar, jVar, obj, null);
    }

    public static void d(m mVar, j jVar) {
        mVar.b(new c0(mVar.getChannel(), jVar, ChannelState.OPEN, Boolean.FALSE));
    }

    public static void d0(m mVar, j jVar, Object obj, SocketAddress socketAddress) {
        mVar.b(new d0(mVar.getChannel(), jVar, obj, socketAddress));
    }

    public static j e(org.jboss.netty.channel.e eVar, SocketAddress socketAddress) {
        if (socketAddress == null) {
            throw new NullPointerException("remoteAddress");
        }
        j jVarP = P(eVar, true);
        eVar.getPipeline().b(new c0(eVar, jVarP, ChannelState.CONNECTED, socketAddress));
        return jVarP;
    }

    public static void f(m mVar, j jVar, SocketAddress socketAddress) {
        if (socketAddress == null) {
            throw new NullPointerException("remoteAddress");
        }
        mVar.b(new c0(mVar.getChannel(), jVar, ChannelState.CONNECTED, socketAddress));
    }

    public static j g(org.jboss.netty.channel.e eVar) {
        j jVarO = O(eVar);
        eVar.getPipeline().b(new c0(eVar, jVarO, ChannelState.CONNECTED, null));
        return jVarO;
    }

    public static void h(m mVar, j jVar) {
        mVar.b(new c0(mVar.getChannel(), jVar, ChannelState.CONNECTED, null));
    }

    public static j i(org.jboss.netty.channel.e eVar, Throwable th) {
        return new f0(eVar, th);
    }

    private static int j(int i10) {
        return i10 & (-5);
    }

    public static void k(org.jboss.netty.channel.e eVar, SocketAddress socketAddress) {
        eVar.getPipeline().a(new o0(eVar, ChannelState.BOUND, socketAddress));
    }

    public static void l(m mVar, SocketAddress socketAddress) {
        mVar.a(new o0(mVar.getChannel(), ChannelState.BOUND, socketAddress));
    }

    public static void m(org.jboss.netty.channel.e eVar) {
        eVar.getPipeline().a(new o0(eVar, ChannelState.OPEN, Boolean.FALSE));
        if (eVar.getParent() != null) {
            C(eVar.getParent(), eVar);
        }
    }

    public static void n(m mVar) {
        mVar.a(new o0(mVar.getChannel(), ChannelState.OPEN, Boolean.FALSE));
    }

    public static j o(org.jboss.netty.channel.e eVar) {
        return eVar.getPipeline().execute(new f(eVar));
    }

    public static void p(org.jboss.netty.channel.e eVar, SocketAddress socketAddress) {
        eVar.getPipeline().a(new o0(eVar, ChannelState.CONNECTED, socketAddress));
    }

    public static void q(m mVar, SocketAddress socketAddress) {
        mVar.a(new o0(mVar.getChannel(), ChannelState.CONNECTED, socketAddress));
    }

    public static void r(org.jboss.netty.channel.e eVar) {
        eVar.getPipeline().a(new o0(eVar, ChannelState.CONNECTED, null));
    }

    public static void s(m mVar) {
        mVar.a(new o0(mVar.getChannel(), ChannelState.CONNECTED, null));
    }

    public static j t(org.jboss.netty.channel.e eVar) {
        return eVar.getPipeline().execute(new d(eVar));
    }

    public static void u(org.jboss.netty.channel.e eVar) {
        eVar.getPipeline().a(new o0(eVar, ChannelState.INTEREST_OPS, 1));
    }

    public static void v(m mVar) {
        mVar.a(new o0(mVar.getChannel(), ChannelState.INTEREST_OPS, 1));
    }

    public static j w(org.jboss.netty.channel.e eVar) {
        return eVar.getPipeline().execute(new c(eVar));
    }

    public static void x(org.jboss.netty.channel.e eVar) {
        if (eVar.getParent() != null) {
            C(eVar.getParent(), eVar);
        }
        eVar.getPipeline().a(new o0(eVar, ChannelState.OPEN, Boolean.TRUE));
    }

    public static void y(m mVar) {
        mVar.a(new o0(mVar.getChannel(), ChannelState.OPEN, Boolean.TRUE));
    }

    public static void z(org.jboss.netty.channel.e eVar) {
        eVar.getPipeline().a(new o0(eVar, ChannelState.BOUND, null));
    }
}
