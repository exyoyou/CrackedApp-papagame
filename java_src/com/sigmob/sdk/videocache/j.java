package com.sigmob.sdk.videocache;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class j extends ProxySelector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final List<Proxy> f81946a = Arrays.asList(Proxy.NO_PROXY);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ProxySelector f81947b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f81948c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f81949d;

    j(ProxySelector defaultProxySelector, String hostToIgnore, int portToIgnore) {
        this.f81947b = (ProxySelector) n.a(defaultProxySelector);
        this.f81948c = (String) n.a(hostToIgnore);
        this.f81949d = portToIgnore;
    }

    static void a(String hostToIgnore, int portToIgnore) {
        ProxySelector.setDefault(new j(ProxySelector.getDefault(), hostToIgnore, portToIgnore));
    }

    @Override // java.net.ProxySelector
    public void connectFailed(URI uri, SocketAddress address, IOException failure) {
        this.f81947b.connectFailed(uri, address, failure);
    }

    @Override // java.net.ProxySelector
    public List<Proxy> select(URI uri) {
        return this.f81948c.equals(uri.getHost()) && this.f81949d == uri.getPort() ? f81946a : this.f81947b.select(uri);
    }
}
