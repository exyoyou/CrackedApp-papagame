package org.jboss.netty.channel.socket.nio;

import com.bykv.vk.component.ttvideo.player.C;
import java.io.IOException;
import java.net.ConnectException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes10.dex */
public final class k extends d implements g {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final org.jboss.netty.util.h f95609n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final org.jboss.netty.util.g f95610o;

    class a implements org.jboss.netty.util.h {
        a() {
        }

        @Override // org.jboss.netty.util.h
        public void a(org.jboss.netty.util.f fVar) throws Exception {
            Selector selector = k.this.f95587e;
            if (selector == null || !k.this.f95588f.compareAndSet(false, true)) {
                return;
            }
            selector.wakeup();
        }
    }

    private final class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final k f95612b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final m f95613c;

        b(k kVar, m mVar) {
            this.f95612b = kVar;
            this.f95613c = mVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            int connectTimeoutMillis = this.f95613c.getConfig().getConnectTimeoutMillis();
            if (connectTimeoutMillis > 0 && !this.f95613c.isConnected()) {
                this.f95613c.M = k.this.f95610o.a(k.this.f95609n, connectTimeoutMillis, TimeUnit.MILLISECONDS);
            }
            try {
                ((SocketChannel) this.f95613c.B).register(this.f95612b.f95587e, 8, this.f95613c);
            } catch (ClosedChannelException unused) {
                m mVar = this.f95613c;
                mVar.f95564o.o(mVar, org.jboss.netty.channel.s.W(mVar));
            }
            int connectTimeoutMillis2 = this.f95613c.getConfig().getConnectTimeoutMillis();
            if (connectTimeoutMillis2 > 0) {
                this.f95613c.L = System.nanoTime() + (((long) connectTimeoutMillis2) * C.MICROS_PER_SECOND);
            }
        }
    }

    k(Executor executor, org.jboss.netty.util.g gVar, org.jboss.netty.util.d dVar) {
        super(executor, dVar);
        this.f95609n = new a();
        this.f95610o = gVar;
    }

    private static void o(SelectionKey selectionKey) throws IOException {
        m mVar = (m) selectionKey.attachment();
        if (((SocketChannel) mVar.B).finishConnect()) {
            selectionKey.cancel();
            if (mVar.M != null) {
                mVar.M.cancel();
            }
            mVar.f95564o.f(mVar, mVar.J);
        }
    }

    private static void p(Set<SelectionKey> set, long j10) {
        ConnectException connectException = null;
        for (SelectionKey selectionKey : set) {
            if (selectionKey.isValid()) {
                m mVar = (m) selectionKey.attachment();
                long j11 = mVar.L;
                if (j11 > 0 && j10 >= j11) {
                    if (connectException == null) {
                        connectException = new ConnectException("connection timed out");
                    }
                    mVar.J.setFailure(connectException);
                    org.jboss.netty.channel.s.D(mVar, connectException);
                    mVar.f95564o.o(mVar, org.jboss.netty.channel.s.W(mVar));
                }
            }
        }
    }

    private void q(Set<SelectionKey> set) {
        if (set.isEmpty()) {
            return;
        }
        Iterator<SelectionKey> it2 = set.iterator();
        while (it2.hasNext()) {
            SelectionKey next = it2.next();
            it2.remove();
            if (next.isValid()) {
                try {
                    if (next.isConnectable()) {
                        o(next);
                    }
                } catch (Throwable th) {
                    m mVar = (m) next.attachment();
                    mVar.J.setFailure(th);
                    org.jboss.netty.channel.s.D(mVar, th);
                    next.cancel();
                    mVar.f95564o.o(mVar, org.jboss.netty.channel.s.W(mVar));
                }
            } else {
                b(next);
            }
        }
    }

    @Override // org.jboss.netty.channel.socket.nio.d
    protected void b(SelectionKey selectionKey) {
        m mVar = (m) selectionKey.attachment();
        mVar.f95564o.o(mVar, org.jboss.netty.channel.s.W(mVar));
    }

    @Override // org.jboss.netty.channel.socket.nio.d
    protected Runnable c(org.jboss.netty.channel.e eVar, org.jboss.netty.channel.j jVar) {
        return new b(this, (m) eVar);
    }

    @Override // org.jboss.netty.channel.socket.nio.d, org.jboss.netty.channel.socket.nio.p
    public /* bridge */ /* synthetic */ void f(org.jboss.netty.channel.e eVar, org.jboss.netty.channel.j jVar) {
        super.f(eVar, jVar);
    }

    @Override // org.jboss.netty.channel.socket.nio.d
    protected org.jboss.netty.util.e g(int i10, org.jboss.netty.util.d dVar) {
        return new org.jboss.netty.util.e(this, "New I/O boss #" + i10, dVar);
    }

    @Override // org.jboss.netty.channel.socket.nio.d
    protected void i(Selector selector) {
        q(selector.selectedKeys());
        p(selector.keys(), System.nanoTime());
    }

    @Override // org.jboss.netty.channel.socket.nio.d, org.jboss.netty.channel.socket.nio.p
    public /* bridge */ /* synthetic */ void rebuildSelector() {
        super.rebuildSelector();
    }

    @Override // org.jboss.netty.channel.socket.nio.d, java.lang.Runnable
    public /* bridge */ /* synthetic */ void run() {
        super.run();
    }

    @Override // org.jboss.netty.channel.socket.nio.d, org.jboss.netty.channel.socket.nio.p
    public /* bridge */ /* synthetic */ void shutdown() {
        super.shutdown();
    }
}
