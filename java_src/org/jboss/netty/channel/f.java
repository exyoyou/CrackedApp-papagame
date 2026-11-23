package org.jboss.netty.channel;

import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
public interface f {
    o a();

    org.jboss.netty.buffer.f d();

    boolean g(String str, Object obj);

    int getConnectTimeoutMillis();

    void h(org.jboss.netty.buffer.f fVar);

    void i(o oVar);

    void setConnectTimeoutMillis(int i10);

    void setOptions(Map<String, Object> map);
}
