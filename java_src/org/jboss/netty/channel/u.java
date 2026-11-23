package org.jboss.netty.channel;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes10.dex */
public abstract class u implements j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f95664b;

    protected u(e eVar) {
        if (eVar == null) {
            throw new NullPointerException("channel");
        }
        this.f95664b = eVar;
    }

    @Override // org.jboss.netty.channel.j
    public j await() throws InterruptedException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        return this;
    }

    @Override // org.jboss.netty.channel.j
    public j awaitUninterruptibly() {
        return this;
    }

    @Override // org.jboss.netty.channel.j
    public void b(k kVar) {
    }

    @Override // org.jboss.netty.channel.j
    public boolean c(long j10, long j11, long j12) {
        return false;
    }

    @Override // org.jboss.netty.channel.j
    public boolean cancel() {
        return false;
    }

    @Override // org.jboss.netty.channel.j
    public void e(k kVar) {
        try {
            kVar.a(this);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // org.jboss.netty.channel.j
    public e getChannel() {
        return this.f95664b;
    }

    @Override // org.jboss.netty.channel.j
    public boolean isCancelled() {
        return false;
    }

    @Override // org.jboss.netty.channel.j
    public boolean isDone() {
        return true;
    }

    @Override // org.jboss.netty.channel.j
    public boolean setFailure(Throwable th) {
        return false;
    }

    @Override // org.jboss.netty.channel.j
    public boolean setSuccess() {
        return false;
    }

    @Override // org.jboss.netty.channel.j
    public boolean awaitUninterruptibly(long j10) {
        return true;
    }

    @Override // org.jboss.netty.channel.j
    public boolean await(long j10, TimeUnit timeUnit) throws InterruptedException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        return true;
    }

    @Override // org.jboss.netty.channel.j
    public boolean awaitUninterruptibly(long j10, TimeUnit timeUnit) {
        return true;
    }

    @Override // org.jboss.netty.channel.j
    public boolean await(long j10) throws InterruptedException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        return true;
    }
}
