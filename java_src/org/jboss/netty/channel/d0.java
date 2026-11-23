package org.jboss.netty.channel;

import java.net.SocketAddress;

/* JADX INFO: loaded from: classes10.dex */
public class d0 implements i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f95535a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f95536b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f95537c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SocketAddress f95538d;

    public d0(e eVar, j jVar, Object obj, SocketAddress socketAddress) {
        if (eVar == null) {
            throw new NullPointerException("channel");
        }
        if (jVar == null) {
            throw new NullPointerException("future");
        }
        if (obj == null) {
            throw new NullPointerException("message");
        }
        this.f95535a = eVar;
        this.f95536b = jVar;
        this.f95537c = obj;
        if (socketAddress != null) {
            this.f95538d = socketAddress;
        } else {
            this.f95538d = eVar.getRemoteAddress();
        }
    }

    @Override // org.jboss.netty.channel.h
    public j d() {
        return this.f95536b;
    }

    @Override // org.jboss.netty.channel.h
    public e getChannel() {
        return this.f95535a;
    }

    @Override // org.jboss.netty.channel.i0
    public Object getMessage() {
        return this.f95537c;
    }

    @Override // org.jboss.netty.channel.i0
    public SocketAddress getRemoteAddress() {
        return this.f95538d;
    }

    public String toString() {
        if (getRemoteAddress() == getChannel().getRemoteAddress()) {
            return getChannel().toString() + " WRITE: " + org.jboss.netty.util.internal.i.b(getMessage());
        }
        return getChannel().toString() + " WRITE: " + org.jboss.netty.util.internal.i.b(getMessage()) + " to " + getRemoteAddress();
    }
}
