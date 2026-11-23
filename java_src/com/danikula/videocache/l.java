package com.danikula.videocache;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
class l extends ProxySelector {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List<Proxy> f26078d = Arrays.asList(Proxy.NO_PROXY);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ProxySelector f26079a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f26080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f26081c;

    l(ProxySelector proxySelector, String str, int i10) {
        this.f26079a = (ProxySelector) n.d(proxySelector);
        this.f26080b = (String) n.d(str);
        this.f26081c = i10;
    }

    static void a(String str, int i10) {
        ProxySelector.setDefault(new l(ProxySelector.getDefault(), str, i10));
    }

    @Override // java.net.ProxySelector
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
        this.f26079a.connectFailed(uri, socketAddress, iOException);
    }

    @Override // java.net.ProxySelector
    public List<Proxy> select(URI uri) {
        return this.f26080b.equals(uri.getHost()) && this.f26081c == uri.getPort() ? f26078d : this.f26079a.select(uri);
    }
}
