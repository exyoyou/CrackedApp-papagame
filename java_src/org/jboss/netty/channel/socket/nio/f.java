package org.jboss.netty.channel.socket.nio;

import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import org.jboss.netty.channel.socket.nio.e;

/* JADX INFO: loaded from: classes10.dex */
public abstract class f<E extends e> implements y<E>, org.jboss.netty.util.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e[] f95599a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicInteger f95600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f95601c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f95602d;

    f(Executor executor, int i10) {
        this(executor, i10, true);
    }

    @Override // org.jboss.netty.util.b
    public void a() {
        shutdown();
        org.jboss.netty.util.internal.e.c(this.f95601c);
    }

    @Override // org.jboss.netty.channel.socket.nio.q
    public void d() {
        for (e eVar : this.f95599a) {
            eVar.rebuildSelector();
        }
    }

    @Deprecated
    protected E f(Executor executor) {
        throw new IllegalStateException("This will be removed. Override this and the newWorker(..) method!");
    }

    protected void g() {
        if (this.f95602d) {
            throw new IllegalStateException("Init was done before");
        }
        this.f95602d = true;
        int i10 = 0;
        while (true) {
            e[] eVarArr = this.f95599a;
            if (i10 >= eVarArr.length) {
                return;
            }
            eVarArr[i10] = h(this.f95601c);
            i10++;
        }
    }

    protected E h(Executor executor) {
        return (E) f(executor);
    }

    @Override // org.jboss.netty.channel.socket.nio.y
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public E e() {
        return (E) this.f95599a[Math.abs(this.f95600b.getAndIncrement() % this.f95599a.length)];
    }

    @Override // org.jboss.netty.channel.socket.nio.q
    public void shutdown() {
        for (e eVar : this.f95599a) {
            eVar.shutdown();
        }
    }

    f(Executor executor, int i10, boolean z10) {
        this.f95600b = new AtomicInteger();
        if (executor == null) {
            throw new NullPointerException("workerExecutor");
        }
        if (i10 > 0) {
            this.f95599a = new e[i10];
            this.f95601c = executor;
            if (z10) {
                g();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("workerCount (" + i10 + ") must be a positive integer.");
    }
}
