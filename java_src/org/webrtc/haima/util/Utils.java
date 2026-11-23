package org.webrtc.haima.util;

import android.os.Looper;
import android.text.TextUtils;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
public class Utils {
    public static String exceptionStackTrace(Exception exc) {
        if (exc == null) {
            return "Null Exception";
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(exc.toString());
            sb2.append("\n");
            if (exc.getStackTrace() != null) {
                for (StackTraceElement stackTraceElement : exc.getStackTrace()) {
                    sb2.append(stackTraceElement.toString());
                    sb2.append("\n");
                }
            }
            return URLEncoder.encode(sb2.toString(), "utf-8");
        } catch (Exception unused) {
            return "BAD Exception";
        }
    }

    public static String getIpv6AddressStyle(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        return "[" + str + "]";
    }

    public static boolean isInMainThread() {
        try {
            return Looper.getMainLooper().getThread() == Thread.currentThread();
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean isIpv4Address(String str) {
        try {
            return str.split("\\.").length == 4 && !str.contains(":");
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean isIpv4AddressWithPort(String str) {
        if (TextUtils.isEmpty(str) || str.split("\\.").length != 4) {
            return false;
        }
        return str.split(":").length == 2 || !str.contains(":");
    }

    public static String objectId(Object obj) {
        if (obj == null) {
            return "null";
        }
        try {
            return "" + System.identityHashCode(obj);
        } catch (Exception unused) {
            return "Exception.null";
        }
    }

    public static void removeFromMap(String str, Map<String, ? extends Object> map) {
        if (map == null || !map.containsKey(str)) {
            return;
        }
        Iterator<String> it2 = map.keySet().iterator();
        while (it2.hasNext()) {
            if (TextUtils.equals(str, it2.next())) {
                it2.remove();
                map.remove(str);
                return;
            }
        }
    }

    public static String safeToSocketString(Socket socket) {
        try {
            return toSocketString(socket);
        } catch (Exception e10) {
            return e10.toString();
        }
    }

    public static String toSocketString(Socket socket) {
        if (socket == null) {
            return "NULL";
        }
        InetAddress localAddress = socket.getLocalAddress();
        InetAddress inetAddress = socket.getInetAddress();
        SocketAddress localSocketAddress = socket.getLocalSocketAddress();
        SocketAddress remoteSocketAddress = socket.getRemoteSocketAddress();
        Object[] objArr = new Object[8];
        objArr[0] = objectId(socket);
        objArr[1] = socket.toString();
        objArr[2] = localAddress != null ? localAddress.toString() : "NULL";
        objArr[3] = inetAddress != null ? inetAddress.toString() : "NULL";
        objArr[4] = localSocketAddress != null ? localSocketAddress.toString() : "NULL";
        objArr[5] = remoteSocketAddress != null ? remoteSocketAddress.toString() : "NULL";
        objArr[6] = Boolean.valueOf(socket.isConnected());
        objArr[7] = Boolean.valueOf(socket.isClosed());
        return String.format("--- Socket-%s: %s localAddr: %s, inetAddr: %s, localSockAddr: %s, remotSockAddr: %s, connected: %s, closed: %s ---", objArr);
    }

    public static String safeToSocketString(String str, InetAddress inetAddress, SocketAddress socketAddress) {
        try {
            return toSocketString(str, inetAddress, socketAddress);
        } catch (Exception e10) {
            return e10.toString();
        }
    }

    public static String toSocketString(String str, InetAddress inetAddress, SocketAddress socketAddress) {
        Object[] objArr = new Object[3];
        if (str == null) {
            str = "NULL";
        }
        objArr[0] = str;
        objArr[1] = inetAddress != null ? inetAddress.toString() : "NULL";
        objArr[2] = socketAddress != null ? socketAddress.toString() : "NULL";
        return String.format("---  localIp: %s, inetAddr: %s, remotSockAddr: %s,  ---", objArr);
    }
}
