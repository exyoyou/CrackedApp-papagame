package com.cmic.gen.sdk.c;

import android.net.Network;
import android.net.SSLCertificateSocketFactory;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes9.dex */
public class d extends a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f24432b = {"TLSv1.2"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HttpsURLConnection f24435d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Network f24436e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.cmic.gen.sdk.a f24437f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f24434c = d.class.getSimpleName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    HostnameVerifier f24433a = HttpsURLConnection.getDefaultHostnameVerifier();

    public d(HttpsURLConnection httpsURLConnection, Network network, com.cmic.gen.sdk.a aVar) {
        this.f24435d = httpsURLConnection;
        this.f24436e = network;
        this.f24437f = aVar;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i10) throws IOException {
        return null;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return new String[0];
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return new String[0];
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i10, InetAddress inetAddress, int i11) throws IOException {
        return null;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i10) throws IOException {
        return null;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i10, InetAddress inetAddress2, int i11) throws IOException {
        return null;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i10, boolean z10) throws IOException {
        String requestProperty = this.f24435d.getRequestProperty("Host");
        if (requestProperty != null) {
            str = requestProperty;
        }
        com.cmic.gen.sdk.e.c.b(this.f24434c, "customized createSocket. host: " + str);
        com.cmic.gen.sdk.e.c.b(this.f24434c, "plainSocket localAddress: " + socket.getLocalAddress().getHostAddress());
        if (z10) {
            com.cmic.gen.sdk.e.c.b(this.f24434c, "plainSocket close");
            socket.close();
        }
        SSLCertificateSocketFactory sSLCertificateSocketFactory = (SSLCertificateSocketFactory) SSLCertificateSocketFactory.getDefault(0);
        SSLSocket sSLSocket = (SSLSocket) sSLCertificateSocketFactory.createSocket();
        Network network = this.f24436e;
        if (network != null) {
            network.bindSocket(sSLSocket);
        }
        sSLSocket.connect(socket.getRemoteSocketAddress());
        this.f24437f.a("socketip", sSLSocket.getLocalAddress().getHostAddress());
        sSLSocket.setEnabledProtocols(sSLSocket.getSupportedProtocols());
        com.cmic.gen.sdk.e.c.b(this.f24434c, "Setting SNI hostname");
        sSLCertificateSocketFactory.setHostname(sSLSocket, str);
        SSLSession session = sSLSocket.getSession();
        if (this.f24433a.verify(str, session)) {
            com.cmic.gen.sdk.e.c.b(this.f24434c, "Established " + session.getProtocol() + " connection with " + session.getPeerHost() + " using " + session.getCipherSuite());
            return sSLSocket;
        }
        throw new SSLPeerUnverifiedException("Cannot verify hostname: " + str);
    }
}
