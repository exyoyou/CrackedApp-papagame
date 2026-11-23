package org.apache.http.util;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;

/* JADX INFO: loaded from: classes.dex */
public final class NetUtils {
    public static void formatAddress(StringBuilder sb2, SocketAddress socketAddress) {
        Object hostAddress;
        Args.notNull(sb2, "Buffer");
        Args.notNull(socketAddress, "Socket address");
        if (!(socketAddress instanceof InetSocketAddress)) {
            sb2.append(socketAddress);
            return;
        }
        InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddress;
        InetAddress address = inetSocketAddress.getAddress();
        if (address != null) {
            hostAddress = address;
            hostAddress = address.getHostAddress();
        }
        hostAddress = address;
        sb2.append(hostAddress);
        sb2.append(':');
        sb2.append(inetSocketAddress.getPort());
    }
}
