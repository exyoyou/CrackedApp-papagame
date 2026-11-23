package org.apache.http.impl.conn;

import android.util.Log;
import java.io.IOException;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.Arrays;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.config.Lookup;
import org.apache.http.config.SocketConfig;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.DnsResolver;
import org.apache.http.conn.HttpHostConnectException;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.SchemePortResolver;
import org.apache.http.conn.UnsupportedSchemeException;
import org.apache.http.conn.socket.ConnectionSocketFactory;
import org.apache.http.conn.socket.LayeredConnectionSocketFactory;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes.dex */
@Immutable
class HttpClientConnectionOperator {
    static final String SOCKET_FACTORY_REGISTRY = "http.socket-factory-registry";
    private static final String TAG = "HttpClient";
    private final DnsResolver dnsResolver;
    private final SchemePortResolver schemePortResolver;
    private final Lookup<ConnectionSocketFactory> socketFactoryRegistry;

    HttpClientConnectionOperator(Lookup<ConnectionSocketFactory> lookup, SchemePortResolver schemePortResolver, DnsResolver dnsResolver) {
        Args.notNull(lookup, "Socket factory registry");
        this.socketFactoryRegistry = lookup;
        this.schemePortResolver = schemePortResolver == null ? DefaultSchemePortResolver.INSTANCE : schemePortResolver;
        this.dnsResolver = dnsResolver == null ? SystemDefaultDnsResolver.INSTANCE : dnsResolver;
    }

    private static String getConnectTimeoutMessage(IOException iOException, HttpHost httpHost, InetAddress... inetAddressArr) {
        String str;
        String str2;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Connect to ");
        sb2.append(httpHost != null ? httpHost.toHostString() : "remote host");
        if (inetAddressArr == null || inetAddressArr.length <= 0) {
            str = "";
        } else {
            str = " " + Arrays.asList(inetAddressArr);
        }
        sb2.append(str);
        if (iOException == null || iOException.getMessage() == null) {
            str2 = " timed out";
        } else {
            str2 = " failed: " + iOException.getMessage();
        }
        sb2.append(str2);
        return sb2.toString();
    }

    private Lookup<ConnectionSocketFactory> getSocketFactoryRegistry(HttpContext httpContext) {
        Lookup<ConnectionSocketFactory> lookup = (Lookup) httpContext.getAttribute(SOCKET_FACTORY_REGISTRY);
        return lookup == null ? this.socketFactoryRegistry : lookup;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ff A[SYNTHETIC] */
    public void connect(ManagedHttpClientConnection managedHttpClientConnection, HttpHost httpHost, InetSocketAddress inetSocketAddress, int i10, SocketConfig socketConfig, HttpContext httpContext) throws IOException {
        ConnectionSocketFactory connectionSocketFactoryLookup = getSocketFactoryRegistry(httpContext).lookup(httpHost.getSchemeName());
        if (connectionSocketFactoryLookup == null) {
            throw new UnsupportedSchemeException(httpHost.getSchemeName() + " protocol is not supported");
        }
        InetAddress[] inetAddressArrResolve = this.dnsResolver.resolve(httpHost.getHostName());
        int iResolve = this.schemePortResolver.resolve(httpHost);
        int i11 = 0;
        while (i11 < inetAddressArrResolve.length) {
            InetAddress inetAddress = inetAddressArrResolve[i11];
            boolean z10 = i11 == inetAddressArrResolve.length - 1;
            Socket socketCreateSocket = connectionSocketFactoryLookup.createSocket(httpContext);
            socketCreateSocket.setSoTimeout(socketConfig.getSoTimeout());
            socketCreateSocket.setReuseAddress(socketConfig.isSoReuseAddress());
            socketCreateSocket.setTcpNoDelay(socketConfig.isTcpNoDelay());
            socketCreateSocket.setKeepAlive(socketConfig.isSoKeepAlive());
            int soLinger = socketConfig.getSoLinger();
            if (soLinger >= 0) {
                socketCreateSocket.setSoLinger(soLinger > 0, soLinger);
            }
            managedHttpClientConnection.bind(socketCreateSocket);
            InetSocketAddress inetSocketAddress2 = new InetSocketAddress(inetAddress, iResolve);
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Connecting to ");
                sb2.append(inetSocketAddress2);
            }
            int i12 = i11;
            try {
                managedHttpClientConnection.bind(connectionSocketFactoryLookup.connectSocket(i10, socketCreateSocket, httpHost, inetSocketAddress2, inetSocketAddress, httpContext));
                if (Log.isLoggable(TAG, 3)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Connection established ");
                    sb3.append(managedHttpClientConnection);
                    return;
                }
                return;
            } catch (ConnectException e10) {
                if (z10) {
                    if (!"Connection timed out".equals(e10.getMessage())) {
                        throw new HttpHostConnectException(httpHost, e10);
                    }
                    ConnectTimeoutException connectTimeoutException = new ConnectTimeoutException(getConnectTimeoutMessage(e10, httpHost, inetAddressArrResolve));
                    connectTimeoutException.initCause(e10);
                    throw connectTimeoutException;
                }
                if (Log.isLoggable(TAG, 3)) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("Connect to ");
                    sb4.append(inetSocketAddress2);
                    sb4.append(" timed out. ");
                    sb4.append("Connection will be retried using another IP address");
                }
                i11 = i12 + 1;
            } catch (SocketTimeoutException e11) {
                if (z10) {
                    new ConnectTimeoutException(getConnectTimeoutMessage(e11, httpHost, inetAddressArrResolve)).initCause(e11);
                }
                if (Log.isLoggable(TAG, 3)) {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("Connect to ");
                    sb5.append(inetSocketAddress2);
                    sb5.append(" timed out. ");
                    sb5.append("Connection will be retried using another IP address");
                }
                i11 = i12 + 1;
            }
        }
    }

    public void upgrade(ManagedHttpClientConnection managedHttpClientConnection, HttpHost httpHost, HttpContext httpContext) throws IOException {
        ConnectionSocketFactory connectionSocketFactoryLookup = getSocketFactoryRegistry(HttpClientContext.adapt(httpContext)).lookup(httpHost.getSchemeName());
        if (connectionSocketFactoryLookup == null) {
            throw new UnsupportedSchemeException(httpHost.getSchemeName() + " protocol is not supported");
        }
        if (connectionSocketFactoryLookup instanceof LayeredConnectionSocketFactory) {
            managedHttpClientConnection.bind(((LayeredConnectionSocketFactory) connectionSocketFactoryLookup).createLayeredSocket(managedHttpClientConnection.getSocket(), httpHost.getHostName(), this.schemePortResolver.resolve(httpHost), httpContext));
        } else {
            throw new UnsupportedSchemeException(httpHost.getSchemeName() + " protocol does not support connection upgrade");
        }
    }
}
