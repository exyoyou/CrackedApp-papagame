package com.switfpass.pay.utils;

import java.net.Socket;
import java.security.KeyManagementException;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes2.dex */
final class x0 extends SSLSocketFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SSLContext f82860a;

    public x0(KeyStore keyStore) throws KeyManagementException {
        super(keyStore);
        this.f82860a = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
        this.f82860a.init(null, new TrustManager[]{new y0()}, null);
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.SocketFactory
    public final Socket createSocket() {
        return this.f82860a.getSocketFactory().createSocket();
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.LayeredSocketFactory
    public final Socket createSocket(Socket socket, String str, int i10, boolean z10) {
        return this.f82860a.getSocketFactory().createSocket(socket, str, i10, z10);
    }
}
