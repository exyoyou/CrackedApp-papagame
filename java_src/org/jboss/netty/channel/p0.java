package org.jboss.netty.channel;

import java.net.SocketAddress;

/* JADX INFO: loaded from: classes10.dex */
public class p0 implements i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f95546a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f95547b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final SocketAddress f95548c;

    public p0(e eVar, Object obj, SocketAddress socketAddress) {
        if (eVar == null) {
            throw new NullPointerException("channel");
        }
        if (obj == null) {
            throw new NullPointerException("message");
        }
        this.f95546a = eVar;
        this.f95547b = obj;
        if (socketAddress != null) {
            this.f95548c = socketAddress;
        } else {
            this.f95548c = eVar.getRemoteAddress();
        }
    }

    @Override // org.jboss.netty.channel.h
    public j d() {
        return s.W(getChannel());
    }

    @Override // org.jboss.netty.channel.h
    public e getChannel() {
        return this.f95546a;
    }

    @Override // org.jboss.netty.channel.i0
    public Object getMessage() {
        return this.f95547b;
    }

    @Override // org.jboss.netty.channel.i0
    public SocketAddress getRemoteAddress() {
        return this.f95548c;
    }

    public String toString() {
        if (getRemoteAddress() == getChannel().getRemoteAddress()) {
            return getChannel().toString() + " RECEIVED: " + org.jboss.netty.util.internal.i.b(getMessage());
        }
        return getChannel().toString() + " RECEIVED: " + org.jboss.netty.util.internal.i.b(getMessage()) + " from " + getRemoteAddress();
    }
}
