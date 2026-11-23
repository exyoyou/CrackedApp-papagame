package com.byazt.eg;

import java.net.InetSocketAddress;
import java.net.Proxy;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 16, 47})
public final class eo {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f13303c;
    public final Proxy tt;
    public final InetSocketAddress ve;

    public eo(c cVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (cVar == null) {
            throw new NullPointerException("address == null");
        }
        if (proxy == null) {
            throw new NullPointerException("proxy == null");
        }
        if (inetSocketAddress == null) {
            throw new NullPointerException("inetSocketAddress == null");
        }
        this.f13303c = cVar;
        this.tt = proxy;
        this.ve = inetSocketAddress;
    }

    public c c() {
        return this.f13303c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof eo)) {
            return false;
        }
        eo eoVar = (eo) obj;
        return eoVar.f13303c.equals(this.f13303c) && eoVar.tt.equals(this.tt) && eoVar.ve.equals(this.ve);
    }

    public int hashCode() {
        return ((((this.f13303c.hashCode() + 527) * 31) + this.tt.hashCode()) * 31) + this.ve.hashCode();
    }

    public String toString() {
        return "Route{" + this.ve + "}";
    }

    public Proxy tt() {
        return this.tt;
    }

    public boolean uj() {
        return this.f13303c.f13292i != null && this.tt.type() == Proxy.Type.HTTP;
    }

    public InetSocketAddress ve() {
        return this.ve;
    }
}
