package com.join.mgps.Util;

import java.io.IOException;
import java.lang.reflect.Field;
import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.conn.ssl.X509HostnameVerifier;

/* JADX INFO: loaded from: classes4.dex */
public class b3 extends SSLSocketFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static b3 f49517b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private javax.net.ssl.SSLSocketFactory f49518a;

    class a implements X509HostnameVerifier {
        a() {
        }

        @Override // org.apache.http.conn.ssl.X509HostnameVerifier
        public void verify(String host, X509Certificate cert) throws SSLException {
        }

        @Override // org.apache.http.conn.ssl.X509HostnameVerifier
        public void verify(String host, SSLSocket ssl) throws IOException {
        }

        @Override // org.apache.http.conn.ssl.X509HostnameVerifier
        public void verify(String host, String[] cns, String[] subjectAlts) throws SSLException {
        }

        @Override // org.apache.http.conn.ssl.X509HostnameVerifier, javax.net.ssl.HostnameVerifier
        public boolean verify(String host, SSLSession session) {
            return true;
        }
    }

    public class b implements X509TrustManager {
        public b() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] arg0, String arg1) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] arg0, String arg1) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return null;
        }
    }

    private b3() throws NoSuchAlgorithmException, UnrecoverableKeyException, KeyManagementException, KeyStoreException {
        super(null);
        SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
        sSLContext.init(null, new TrustManager[]{new b()}, null);
        this.f49518a = sSLContext.getSocketFactory();
        setHostnameVerifier(new a());
    }

    public static SocketFactory a() {
        if (f49517b == null) {
            try {
                f49517b = new b3();
            } catch (KeyManagementException e10) {
                e10.printStackTrace();
            } catch (KeyStoreException e11) {
                e11.printStackTrace();
            } catch (NoSuchAlgorithmException e12) {
                e12.printStackTrace();
            } catch (UnrecoverableKeyException e13) {
                e13.printStackTrace();
            }
        }
        return f49517b;
    }

    private void b(Socket socket, String host) {
        try {
            Field declaredField = InetAddress.class.getDeclaredField("hostName");
            declaredField.setAccessible(true);
            declaredField.set(socket.getInetAddress(), host);
        } catch (Exception unused) {
        }
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.SocketFactory
    public Socket createSocket() throws IOException {
        return this.f49518a.createSocket();
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.LayeredSocketFactory
    public Socket createSocket(Socket socket, String host, int port, boolean autoClose) throws IOException {
        return this.f49518a.createSocket(socket, host, port, autoClose);
    }
}
