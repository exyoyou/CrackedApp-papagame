package org.jboss.netty.channel.socket.nio;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes10.dex */
public class l extends a<k> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final org.jboss.netty.util.d f95615e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final org.jboss.netty.util.g f95616f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f95617g;

    public l(Executor executor, int i10, org.jboss.netty.util.g gVar, org.jboss.netty.util.d dVar) {
        super(executor, i10, false);
        this.f95615e = dVar;
        this.f95616f = gVar;
        f();
    }

    @Override // org.jboss.netty.channel.socket.nio.a, org.jboss.netty.util.b
    public void a() {
        super.a();
        this.f95616f.stop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jboss.netty.channel.socket.nio.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public k g(Executor executor) {
        return new k(executor, this.f95616f, this.f95615e);
    }

    @Override // org.jboss.netty.channel.socket.nio.a, org.jboss.netty.channel.socket.nio.q
    public void shutdown() {
        super.shutdown();
        if (this.f95617g) {
            this.f95616f.stop();
        }
    }

    public l(Executor executor, int i10) {
        this(executor, i10, new org.jboss.netty.util.c(), null);
        this.f95617g = true;
    }
}
