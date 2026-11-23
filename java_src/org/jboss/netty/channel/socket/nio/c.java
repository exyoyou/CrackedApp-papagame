package org.jboss.netty.channel.socket.nio;

/* JADX INFO: loaded from: classes10.dex */
public abstract class c extends org.jboss.netty.channel.b {
    @Override // org.jboss.netty.channel.b, org.jboss.netty.channel.p
    public org.jboss.netty.channel.j c(org.jboss.netty.channel.n nVar, Runnable runnable) {
        org.jboss.netty.channel.e channel = nVar.getChannel();
        if (!(channel instanceof b)) {
            return super.c(nVar, runnable);
        }
        ed.a aVar = new ed.a(nVar.getChannel(), runnable);
        ((b) channel).f95564o.S0(aVar);
        return aVar;
    }

    @Override // org.jboss.netty.channel.b
    protected boolean d(org.jboss.netty.channel.h hVar, Throwable th) {
        org.jboss.netty.channel.e channel = hVar.getChannel();
        if (channel instanceof b) {
            return !e.q((b) channel);
        }
        return false;
    }
}
