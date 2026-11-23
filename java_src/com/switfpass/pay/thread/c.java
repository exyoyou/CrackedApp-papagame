package com.switfpass.pay.thread;

import java.net.Socket;
import java.security.KeyManagementException;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes2.dex */
public class c extends SSLSocketFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SSLContext f82682a;

    public c(KeyStore keyStore) throws KeyManagementException {
        super(keyStore);
        this.f82682a = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
        this.f82682a.init(null, new TrustManager[]{new i()}, null);
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.SocketFactory
    public Socket createSocket() {
        return this.f82682a.getSocketFactory().createSocket();
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.LayeredSocketFactory
    public Socket createSocket(Socket socket, String str, int i10, boolean z10) {
        return this.f82682a.getSocketFactory().createSocket(socket, str, i10, z10);
    }
}
