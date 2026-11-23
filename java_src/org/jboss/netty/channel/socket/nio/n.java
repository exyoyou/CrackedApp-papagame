package org.jboss.netty.channel.socket.nio;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes10.dex */
public class n implements ed.b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f95618e = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h<k> f95619a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y<t> f95620b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final o f95621c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f95622d;

    public n() {
        this(Executors.newCachedThreadPool(), Executors.newCachedThreadPool());
        this.f95622d = true;
    }

    private void c() {
        h<k> hVar = this.f95619a;
        if (hVar instanceof org.jboss.netty.util.b) {
            ((org.jboss.netty.util.b) hVar).a();
        }
        y<t> yVar = this.f95620b;
        if (yVar instanceof org.jboss.netty.util.b) {
            ((org.jboss.netty.util.b) yVar).a();
        }
    }

    @Override // org.jboss.netty.channel.i, org.jboss.netty.util.b
    public void a() {
        shutdown();
        c();
    }

    @Override // org.jboss.netty.channel.i
    public void shutdown() {
        this.f95619a.shutdown();
        this.f95620b.shutdown();
        if (this.f95622d) {
            c();
        }
    }

    @Override // org.jboss.netty.channel.i
    public ed.d b(org.jboss.netty.channel.n nVar) {
        return new m(this, nVar, this.f95621c, (t) this.f95620b.e());
    }

    public n(Executor executor, Executor executor2) {
        this(executor, executor2, 1, v.f95634a);
    }

    public n(Executor executor, Executor executor2, int i10) {
        this(executor, executor2, 1, i10);
    }

    public n(Executor executor, Executor executor2, int i10, int i11) {
        this(executor, i10, new u(executor2, i11));
    }

    public n(Executor executor, int i10, y<t> yVar) {
        this(executor, i10, yVar, new org.jboss.netty.util.c());
    }

    public n(Executor executor, int i10, y<t> yVar, org.jboss.netty.util.g gVar) {
        this(new l(executor, i10, gVar, null), yVar);
    }

    public n(h<k> hVar, y<t> yVar) {
        if (hVar == null) {
            throw new NullPointerException("bossPool");
        }
        if (yVar != null) {
            this.f95619a = hVar;
            this.f95620b = yVar;
            this.f95621c = new o(hVar);
            return;
        }
        throw new NullPointerException("workerPool");
    }
}
