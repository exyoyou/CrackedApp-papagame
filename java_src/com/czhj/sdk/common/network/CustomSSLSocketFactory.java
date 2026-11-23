package com.czhj.sdk.common.network;

import android.net.SSLCertificateSocketFactory;
import android.os.Build;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLog;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes9.dex */
public class CustomSSLSocketFactory extends SSLSocketFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SSLSocketFactory f25533a;

    private CustomSSLSocketFactory() {
    }

    private static void a(SSLCertificateSocketFactory sSLCertificateSocketFactory, SSLSocket sSLSocket, String str) {
        Preconditions.NoThrow.checkNotNull(sSLCertificateSocketFactory);
        Preconditions.NoThrow.checkNotNull(sSLSocket);
        sSLCertificateSocketFactory.setHostname(sSLSocket, str);
    }

    public static CustomSSLSocketFactory getDefault(int i10) {
        CustomSSLSocketFactory customSSLSocketFactory = new CustomSSLSocketFactory();
        customSSLSocketFactory.f25533a = SSLCertificateSocketFactory.getDefault(i10, null);
        return customSSLSocketFactory;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() throws IOException {
        SSLSocketFactory sSLSocketFactory = this.f25533a;
        if (sSLSocketFactory == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        Socket socketCreateSocket = sSLSocketFactory.createSocket();
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        SSLSocketFactory sSLSocketFactory = this.f25533a;
        return sSLSocketFactory == null ? new String[0] : sSLSocketFactory.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        SSLSocketFactory sSLSocketFactory = this.f25533a;
        return sSLSocketFactory == null ? new String[0] : sSLSocketFactory.getSupportedCipherSuites();
    }

    private void a(Socket socket) {
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            sSLSocket.setEnabledProtocols(sSLSocket.getSupportedProtocols());
        }
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i10) throws IOException {
        SSLSocketFactory sSLSocketFactory = this.f25533a;
        if (sSLSocketFactory == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        Socket socketCreateSocket = sSLSocketFactory.createSocket(str, i10);
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    private void a(Socket socket, String str) throws IOException {
        Preconditions.NoThrow.checkNotNull(socket);
        SSLSocketFactory sSLSocketFactory = this.f25533a;
        if (sSLSocketFactory == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        if (socket instanceof SSLSocket) {
            try {
                SSLSocket sSLSocket = (SSLSocket) socket;
                if (sSLSocketFactory instanceof SSLCertificateSocketFactory) {
                    a((SSLCertificateSocketFactory) sSLSocketFactory, sSLSocket, str);
                    a(sSLSocket, str);
                }
            } catch (Throwable th) {
                SigmobLog.e(th.getMessage());
            }
        }
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i10, InetAddress inetAddress, int i11) throws IOException {
        SSLSocketFactory sSLSocketFactory = this.f25533a;
        if (sSLSocketFactory == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        Socket socketCreateSocket = sSLSocketFactory.createSocket(str, i10, inetAddress, i11);
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    private static void a(SSLSocket sSLSocket, String str) throws IOException {
        Preconditions.NoThrow.checkNotNull(sSLSocket);
        sSLSocket.startHandshake();
        if (!HttpsURLConnection.getDefaultHostnameVerifier().verify(str, sSLSocket.getSession())) {
            throw new SSLHandshakeException("Server Name Identification failed.");
        }
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i10) throws IOException {
        SSLSocketFactory sSLSocketFactory = this.f25533a;
        if (sSLSocketFactory == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        Socket socketCreateSocket = sSLSocketFactory.createSocket(inetAddress, i10);
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    @Deprecated
    void a(SSLSocketFactory sSLSocketFactory) {
        this.f25533a = sSLSocketFactory;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i10, InetAddress inetAddress2, int i11) throws IOException {
        SSLSocketFactory sSLSocketFactory = this.f25533a;
        if (sSLSocketFactory == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        Socket socketCreateSocket = sSLSocketFactory.createSocket(inetAddress, i10, inetAddress2, i11);
        a(socketCreateSocket);
        return socketCreateSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i10, boolean z10) throws IOException {
        SSLSocketFactory sSLSocketFactory = this.f25533a;
        if (sSLSocketFactory == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        if (Build.VERSION.SDK_INT >= 23) {
            Socket socketCreateSocket = sSLSocketFactory.createSocket(socket, str, i10, z10);
            a(socketCreateSocket);
            return socketCreateSocket;
        }
        if (z10 && socket != null) {
            socket.close();
        }
        Socket socketCreateSocket2 = this.f25533a.createSocket(InetAddress.getByName(str), i10);
        a(socketCreateSocket2);
        a(socketCreateSocket2, str);
        return socketCreateSocket2;
    }
}
