package org.jboss.netty.channel.socket.nio;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes10.dex */
public class u extends f<t> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final org.jboss.netty.util.d f95633e;

    public u(Executor executor, int i10) {
        this(executor, i10, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.jboss.netty.channel.socket.nio.f
    @Deprecated
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public t f(Executor executor) {
        return new t(executor, this.f95633e);
    }

    public u(Executor executor, int i10, org.jboss.netty.util.d dVar) {
        super(executor, i10, false);
        this.f95633e = dVar;
        g();
    }
}
