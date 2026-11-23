package org.jboss.netty.channel.socket.nio;

import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import org.jboss.netty.channel.socket.nio.g;

/* JADX INFO: loaded from: classes10.dex */
public abstract class a<E extends g> implements h<E>, org.jboss.netty.util.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g[] f95560a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicInteger f95561b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f95562c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f95563d;

    a(Executor executor, int i10) {
        this(executor, i10, true);
    }

    @Override // org.jboss.netty.util.b
    public void a() {
        shutdown();
        org.jboss.netty.util.internal.e.c(this.f95562c);
    }

    @Override // org.jboss.netty.channel.socket.nio.h
    public E c() {
        return (E) this.f95560a[Math.abs(this.f95561b.getAndIncrement() % this.f95560a.length)];
    }

    @Override // org.jboss.netty.channel.socket.nio.q
    public void d() {
        for (g gVar : this.f95560a) {
            gVar.rebuildSelector();
        }
    }

    protected void f() {
        if (this.f95563d) {
            throw new IllegalStateException("Init was done before");
        }
        this.f95563d = true;
        int i10 = 0;
        while (true) {
            g[] gVarArr = this.f95560a;
            if (i10 >= gVarArr.length) {
                return;
            }
            gVarArr[i10] = g(this.f95562c);
            i10++;
        }
    }

    protected abstract E g(Executor executor);

    @Override // org.jboss.netty.channel.socket.nio.q
    public void shutdown() {
        for (g gVar : this.f95560a) {
            gVar.shutdown();
        }
    }

    a(Executor executor, int i10, boolean z10) {
        this.f95561b = new AtomicInteger();
        if (executor == null) {
            throw new NullPointerException("bossExecutor");
        }
        if (i10 > 0) {
            this.f95560a = new g[i10];
            this.f95562c = executor;
            if (z10) {
                f();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("bossCount (" + i10 + ") must be a positive integer.");
    }
}
