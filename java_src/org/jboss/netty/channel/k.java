package org.jboss.netty.channel;

import java.util.EventListener;

/* JADX INFO: loaded from: classes10.dex */
public interface k extends EventListener {
    public static final k Y1 = new a();
    public static final k Z1 = new b();

    static class a implements k {
        a() {
        }

        @Override // org.jboss.netty.channel.k
        public void a(j jVar) {
            jVar.getChannel().close();
        }
    }

    static class b implements k {
        b() {
        }

        @Override // org.jboss.netty.channel.k
        public void a(j jVar) {
            if (jVar.isSuccess()) {
                return;
            }
            jVar.getChannel().close();
        }
    }

    void a(j jVar) throws Exception;
}
