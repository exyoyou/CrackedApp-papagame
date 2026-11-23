package org.jboss.netty.channel;

import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
public class v implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile org.jboss.netty.buffer.f f95665a = org.jboss.netty.buffer.n.g();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile int f95666b = 10000;

    @Override // org.jboss.netty.channel.f
    public o a() {
        return null;
    }

    @Override // org.jboss.netty.channel.f
    public org.jboss.netty.buffer.f d() {
        return this.f95665a;
    }

    @Override // org.jboss.netty.channel.f
    public boolean g(String str, Object obj) {
        if (str == null) {
            throw new NullPointerException("key");
        }
        if ("pipelineFactory".equals(str)) {
            i((o) obj);
            return true;
        }
        if ("connectTimeoutMillis".equals(str)) {
            setConnectTimeoutMillis(org.jboss.netty.util.internal.b.b(obj));
            return true;
        }
        if (!"bufferFactory".equals(str)) {
            return false;
        }
        h((org.jboss.netty.buffer.f) obj);
        return true;
    }

    @Override // org.jboss.netty.channel.f
    public int getConnectTimeoutMillis() {
        return this.f95666b;
    }

    @Override // org.jboss.netty.channel.f
    public void h(org.jboss.netty.buffer.f fVar) {
        if (fVar == null) {
            throw new NullPointerException("bufferFactory");
        }
        this.f95665a = fVar;
    }

    @Override // org.jboss.netty.channel.f
    public void i(o oVar) {
    }

    @Override // org.jboss.netty.channel.f
    public void setConnectTimeoutMillis(int i10) {
        if (i10 >= 0) {
            this.f95666b = i10;
            return;
        }
        throw new IllegalArgumentException("connectTimeoutMillis: " + i10);
    }

    @Override // org.jboss.netty.channel.f
    public void setOptions(Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            g(entry.getKey(), entry.getValue());
        }
    }
}
