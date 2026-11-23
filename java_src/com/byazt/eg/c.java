package com.byazt.eg;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 16, 20})
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<sl> f13289a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final my f13290c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final HostnameVerifier f13291da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SSLSocketFactory f13292i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List<gr> f13293n;
    public final sp sl;
    public final ProxySelector sp;
    public final z tt;
    public final tt uj;
    public final SocketFactory ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Proxy f13294x;

    public c(String str, int i10, z zVar, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, sp spVar, tt ttVar, Proxy proxy, List<gr> list, List<sl> list2, ProxySelector proxySelector) {
        this.f13290c = new my.c().c(sSLSocketFactory != null ? "https" : "http").uj(str).c(i10).ve();
        if (zVar == null) {
            throw new NullPointerException("dns == null");
        }
        this.tt = zVar;
        if (socketFactory == null) {
            throw new NullPointerException("socketFactory == null");
        }
        this.ve = socketFactory;
        if (ttVar == null) {
            throw new NullPointerException("proxyAuthenticator == null");
        }
        this.uj = ttVar;
        if (list == null) {
            throw new NullPointerException("protocols == null");
        }
        this.f13293n = com.byazt.kh.ve.c(list);
        if (list2 == null) {
            throw new NullPointerException("connectionSpecs == null");
        }
        this.f13289a = com.byazt.kh.ve.c(list2);
        if (proxySelector == null) {
            throw new NullPointerException("proxySelector == null");
        }
        this.sp = proxySelector;
        this.f13294x = proxy;
        this.f13292i = sSLSocketFactory;
        this.f13291da = hostnameVerifier;
        this.sl = spVar;
    }

    public List<sl> a() {
        return this.f13289a;
    }

    public my c() {
        return this.f13290c;
    }

    public HostnameVerifier da() {
        return this.f13291da;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f13290c.equals(cVar.f13290c) && c(cVar);
    }

    public int hashCode() {
        int iHashCode = (((((((((((this.f13290c.hashCode() + 527) * 31) + this.tt.hashCode()) * 31) + this.uj.hashCode()) * 31) + this.f13293n.hashCode()) * 31) + this.f13289a.hashCode()) * 31) + this.sp.hashCode()) * 31;
        Proxy proxy = this.f13294x;
        int iHashCode2 = (iHashCode + (proxy != null ? proxy.hashCode() : 0)) * 31;
        SSLSocketFactory sSLSocketFactory = this.f13292i;
        int iHashCode3 = (iHashCode2 + (sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0)) * 31;
        HostnameVerifier hostnameVerifier = this.f13291da;
        int iHashCode4 = (iHashCode3 + (hostnameVerifier != null ? hostnameVerifier.hashCode() : 0)) * 31;
        sp spVar = this.sl;
        return iHashCode4 + (spVar != null ? spVar.hashCode() : 0);
    }

    public SSLSocketFactory i() {
        return this.f13292i;
    }

    public List<gr> n() {
        return this.f13293n;
    }

    public sp sl() {
        return this.sl;
    }

    public ProxySelector sp() {
        return this.sp;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("Address{");
        sb2.append(this.f13290c.sp());
        sb2.append(":");
        sb2.append(this.f13290c.x());
        if (this.f13294x != null) {
            sb2.append(", proxy=");
            sb2.append(this.f13294x);
        } else {
            sb2.append(", proxySelector=");
            sb2.append(this.sp);
        }
        sb2.append("}");
        return sb2.toString();
    }

    public z tt() {
        return this.tt;
    }

    public tt uj() {
        return this.uj;
    }

    public SocketFactory ve() {
        return this.ve;
    }

    public Proxy x() {
        return this.f13294x;
    }

    public boolean c(c cVar) {
        return this.tt.equals(cVar.tt) && this.uj.equals(cVar.uj) && this.f13293n.equals(cVar.f13293n) && this.f13289a.equals(cVar.f13289a) && this.sp.equals(cVar.sp) && com.byazt.kh.ve.c(this.f13294x, cVar.f13294x) && com.byazt.kh.ve.c(this.f13292i, cVar.f13292i) && com.byazt.kh.ve.c(this.f13291da, cVar.f13291da) && com.byazt.kh.ve.c(this.sl, cVar.sl) && c().x() == cVar.c().x();
    }
}
