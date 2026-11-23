package org.jboss.netty.channel.socket.nio;

import java.net.SocketAddress;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SocketChannel;
import org.jboss.netty.channel.ChannelState;
import org.jboss.netty.channel.i0;

/* JADX INFO: loaded from: classes10.dex */
class o extends c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final /* synthetic */ boolean f95623b = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h<k> f95624a;

    class a implements org.jboss.netty.channel.k {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ org.jboss.netty.channel.j f95625b;

        a(org.jboss.netty.channel.j jVar) {
            this.f95625b = jVar;
        }

        @Override // org.jboss.netty.channel.k
        public void a(org.jboss.netty.channel.j jVar) throws Exception {
            if (this.f95625b.isDone()) {
                return;
            }
            this.f95625b.setFailure(new ClosedChannelException());
        }
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f95627a;

        static {
            int[] iArr = new int[ChannelState.values().length];
            f95627a = iArr;
            try {
                iArr[ChannelState.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f95627a[ChannelState.BOUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f95627a[ChannelState.CONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f95627a[ChannelState.INTEREST_OPS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    o(h<k> hVar) {
        this.f95624a = hVar;
    }

    private static void e(m mVar, org.jboss.netty.channel.j jVar, SocketAddress socketAddress) {
        try {
            ((SocketChannel) mVar.B).socket().bind(socketAddress);
            mVar.K = true;
            mVar.s();
            jVar.setSuccess();
            org.jboss.netty.channel.s.k(mVar, mVar.getLocalAddress());
        } catch (Throwable th) {
            jVar.setFailure(th);
            org.jboss.netty.channel.s.D(mVar, th);
        }
    }

    private void f(m mVar, org.jboss.netty.channel.j jVar, SocketAddress socketAddress) {
        try {
            if (((SocketChannel) mVar.B).connect(socketAddress)) {
                mVar.f95564o.f(mVar, jVar);
            } else {
                mVar.t0().e(new a(jVar));
                jVar.e(org.jboss.netty.channel.k.Z1);
                mVar.J = jVar;
                g().f(mVar, jVar);
            }
        } catch (Throwable th) {
            jVar.setFailure(th);
            org.jboss.netty.channel.s.D(mVar, th);
            mVar.f95564o.o(mVar, org.jboss.netty.channel.s.W(mVar));
        }
    }

    private k g() {
        return (k) this.f95624a.c();
    }

    @Override // org.jboss.netty.channel.p
    public void b(org.jboss.netty.channel.n nVar, org.jboss.netty.channel.h hVar) throws Exception {
        if (!(hVar instanceof org.jboss.netty.channel.q)) {
            if (hVar instanceof i0) {
                i0 i0Var = (i0) hVar;
                r rVar = (r) i0Var.getChannel();
                rVar.f95568s.offer(i0Var);
                rVar.f95564o.z(rVar);
                return;
            }
            return;
        }
        org.jboss.netty.channel.q qVar = (org.jboss.netty.channel.q) hVar;
        m mVar = (m) qVar.getChannel();
        org.jboss.netty.channel.j jVarD = qVar.d();
        ChannelState state = qVar.getState();
        Object value = qVar.getValue();
        int i10 = b.f95627a[state.ordinal()];
        if (i10 == 1) {
            if (Boolean.FALSE.equals(value)) {
                mVar.f95564o.o(mVar, jVarD);
                return;
            }
            return;
        }
        if (i10 == 2) {
            if (value != null) {
                e(mVar, jVarD, (SocketAddress) value);
                return;
            } else {
                mVar.f95564o.o(mVar, jVarD);
                return;
            }
        }
        if (i10 != 3) {
            if (i10 != 4) {
                return;
            }
            mVar.f95564o.t(mVar, jVarD, ((Integer) value).intValue());
        } else if (value != null) {
            f(mVar, jVarD, (SocketAddress) value);
        } else {
            mVar.f95564o.o(mVar, jVarD);
        }
    }
}
