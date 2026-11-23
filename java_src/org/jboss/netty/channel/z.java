package org.jboss.netty.channel;

/* JADX INFO: loaded from: classes10.dex */
public class z implements e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f95694a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Throwable f95695b;

    public z(e eVar, Throwable th) {
        if (eVar == null) {
            throw new NullPointerException("channel");
        }
        if (th == null) {
            throw new NullPointerException("cause");
        }
        this.f95694a = eVar;
        this.f95695b = th;
    }

    @Override // org.jboss.netty.channel.e0
    public Throwable a() {
        return this.f95695b;
    }

    @Override // org.jboss.netty.channel.h
    public j d() {
        return s.W(getChannel());
    }

    @Override // org.jboss.netty.channel.h
    public e getChannel() {
        return this.f95694a;
    }

    public String toString() {
        return getChannel().toString() + " EXCEPTION: " + this.f95695b;
    }
}
