package org.jboss.netty.channel.socket.nio;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;
import java.util.concurrent.Executor;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.j0;

/* JADX INFO: loaded from: classes10.dex */
public class t extends e {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final w f95628o;

    private final class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final r f95629b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final org.jboss.netty.channel.j f95630c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f95631d;

        a(r rVar, org.jboss.netty.channel.j jVar, boolean z10) {
            this.f95629b = rVar;
            this.f95630c = jVar;
            this.f95631d = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            InetSocketAddress localAddress = this.f95629b.getLocalAddress();
            InetSocketAddress remoteAddress = this.f95629b.getRemoteAddress();
            if (localAddress == null || remoteAddress == null) {
                org.jboss.netty.channel.j jVar = this.f95630c;
                if (jVar != null) {
                    jVar.setFailure(new ClosedChannelException());
                }
                t tVar = t.this;
                r rVar = this.f95629b;
                tVar.o(rVar, org.jboss.netty.channel.s.W(rVar));
                return;
            }
            try {
                if (this.f95631d) {
                    ((SocketChannel) this.f95629b.B).configureBlocking(false);
                }
                ((SocketChannel) this.f95629b.B).register(t.this.f95587e, this.f95629b.m(), this.f95629b);
                if (this.f95630c != null) {
                    this.f95629b.t();
                    this.f95630c.setSuccess();
                }
                if (this.f95631d || !((m) this.f95629b).K) {
                    org.jboss.netty.channel.s.k(this.f95629b, localAddress);
                }
                org.jboss.netty.channel.s.p(this.f95629b, remoteAddress);
            } catch (IOException e10) {
                org.jboss.netty.channel.j jVar2 = this.f95630c;
                if (jVar2 != null) {
                    jVar2.setFailure(e10);
                }
                t tVar2 = t.this;
                r rVar2 = this.f95629b;
                tVar2.o(rVar2, org.jboss.netty.channel.s.W(rVar2));
                if (!(e10 instanceof ClosedChannelException)) {
                    throw new ChannelException("Failed to register a socket to the selector.", e10);
                }
            }
        }
    }

    public t(Executor executor) {
        super(executor);
        this.f95628o = new w();
    }

    @Override // org.jboss.netty.channel.socket.nio.e, ed.f
    public /* bridge */ /* synthetic */ void S0(Runnable runnable) {
        super.S0(runnable);
    }

    @Override // org.jboss.netty.channel.socket.nio.d
    protected Runnable c(org.jboss.netty.channel.e eVar, org.jboss.netty.channel.j jVar) {
        return new a((r) eVar, jVar, !(eVar instanceof m));
    }

    @Override // org.jboss.netty.channel.socket.nio.d, org.jboss.netty.channel.socket.nio.p
    public /* bridge */ /* synthetic */ void f(org.jboss.netty.channel.e eVar, org.jboss.netty.channel.j jVar) {
        super.f(eVar, jVar);
    }

    @Override // org.jboss.netty.channel.socket.nio.e
    public /* bridge */ /* synthetic */ void p(Runnable runnable, boolean z10) {
        super.p(runnable, z10);
    }

    @Override // org.jboss.netty.channel.socket.nio.e
    protected boolean r(SelectionKey selectionKey) {
        boolean z10;
        SocketChannel socketChannel = (SocketChannel) selectionKey.channel();
        r rVar = (r) selectionKey.attachment();
        j0 j0VarC = rVar.getConfig().c();
        int iA = j0VarC.a();
        org.jboss.netty.buffer.f fVarD = rVar.getConfig().d();
        ByteBuffer byteBufferOrder = this.f95628o.c(iA).order(fVarD.e());
        int i10 = 0;
        int i11 = 0;
        do {
            try {
                i11 = socketChannel.read(byteBufferOrder);
                if (i11 <= 0) {
                    break;
                }
                i10 += i11;
            } catch (ClosedChannelException unused) {
                z10 = true;
            } catch (Throwable th) {
                org.jboss.netty.channel.s.D(rVar, th);
                z10 = true;
            }
        } while (byteBufferOrder.hasRemaining());
        z10 = false;
        if (i10 > 0) {
            byteBufferOrder.flip();
            org.jboss.netty.buffer.e eVarB = fVarD.b(i10);
            eVarB.c1(0, byteBufferOrder);
            eVarB.u0(i10);
            j0VarC.b(i10);
            org.jboss.netty.channel.s.H(rVar, eVarB);
        }
        if (i11 >= 0 && !z10) {
            return true;
        }
        selectionKey.cancel();
        o(rVar, org.jboss.netty.channel.s.W(rVar));
        return false;
    }

    @Override // org.jboss.netty.channel.socket.nio.d, org.jboss.netty.channel.socket.nio.p
    public /* bridge */ /* synthetic */ void rebuildSelector() {
        super.rebuildSelector();
    }

    @Override // org.jboss.netty.channel.socket.nio.e, org.jboss.netty.channel.socket.nio.d, java.lang.Runnable
    public void run() {
        super.run();
        this.f95628o.a();
    }

    @Override // org.jboss.netty.channel.socket.nio.e
    protected boolean s(b<?> bVar) {
        if (Thread.currentThread() == this.f95586d) {
            return false;
        }
        if (bVar.f95567r.compareAndSet(false, true)) {
            k(bVar.f95566q);
        }
        return true;
    }

    @Override // org.jboss.netty.channel.socket.nio.d, org.jboss.netty.channel.socket.nio.p
    public /* bridge */ /* synthetic */ void shutdown() {
        super.shutdown();
    }

    public t(Executor executor, org.jboss.netty.util.d dVar) {
        super(executor, dVar);
        this.f95628o = new w();
    }
}
