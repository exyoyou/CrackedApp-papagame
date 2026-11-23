package org.jboss.netty.channel;

/* JADX INFO: loaded from: classes10.dex */
public class f0 extends u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Throwable f95539c;

    public f0(e eVar, Throwable th) {
        super(eVar);
        if (th == null) {
            throw new NullPointerException("cause");
        }
        this.f95539c = th;
    }

    private void f() {
        Throwable th = this.f95539c;
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        if (!(th instanceof Error)) {
            throw new ChannelException(this.f95539c);
        }
        throw ((Error) th);
    }

    @Override // org.jboss.netty.channel.j
    public Throwable a() {
        return this.f95539c;
    }

    @Override // org.jboss.netty.channel.j
    @Deprecated
    public j d() throws Exception {
        Throwable th = this.f95539c;
        if (th instanceof Exception) {
            throw ((Exception) th);
        }
        if (th instanceof Error) {
            throw ((Error) th);
        }
        throw new RuntimeException(this.f95539c);
    }

    @Override // org.jboss.netty.channel.j
    public boolean isSuccess() {
        return false;
    }

    @Override // org.jboss.netty.channel.j
    public j sync() throws InterruptedException {
        f();
        return this;
    }

    @Override // org.jboss.netty.channel.j
    public j syncUninterruptibly() {
        f();
        return this;
    }
}
