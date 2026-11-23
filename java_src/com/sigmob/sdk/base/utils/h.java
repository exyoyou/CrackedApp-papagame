package com.sigmob.sdk.base.utils;

import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f79726a = "IpUtil";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final long f79727b = 60;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile long f79728c = 60;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile long f79729d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile Map<String, List<String>> f79730e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Object f79731f = new Object();

    private h() {
    }

    public static Map<String, List<String>> a() {
        if (g()) {
            k.c(f79726a, "使用 ipv6 缓存", new Object[0]);
            return h();
        }
        synchronized (f79731f) {
            if (g()) {
                k.c(f79726a, "使用 ipv6 缓存", new Object[0]);
                return h();
            }
            Map<String, List<String>> mapI = i();
            f79730e = mapI;
            f79729d = System.currentTimeMillis();
            k.c(f79726a, "重新获取 ipv6 并缓存: " + mapI, new Object[0]);
            return mapI;
        }
    }

    public static long b() {
        return f79728c;
    }

    public static long c() {
        return f79729d;
    }

    public static Map<String, List<String>> d() {
        Map<String, List<String>> mapI;
        synchronized (f79731f) {
            mapI = i();
            f79730e = mapI;
            f79729d = System.currentTimeMillis();
        }
        return mapI;
    }

    public static void e() {
        synchronized (f79731f) {
            f79730e = null;
            f79729d = 0L;
        }
    }

    public static boolean f() {
        return (f79730e == null || f79730e.isEmpty()) ? false : true;
    }

    private static boolean g() {
        return f79730e != null && System.currentTimeMillis() - f79729d < f79728c * 1000;
    }

    private static Map<String, List<String>> h() {
        if (f79730e == null) {
            return Collections.emptyMap();
        }
        HashMap map = new HashMap();
        for (Map.Entry<String, List<String>> entry : f79730e.entrySet()) {
            map.put(entry.getKey(), Collections.unmodifiableList(new ArrayList(entry.getValue())));
        }
        return Collections.unmodifiableMap(map);
    }

    private static Map<String, List<String>> i() {
        boolean zIsUp;
        Enumeration<InetAddress> inetAddresses;
        HashMap map = new HashMap();
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            if (networkInterfaces == null) {
                return map;
            }
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                try {
                    zIsUp = networkInterfaceNextElement.isUp();
                } catch (SocketException e10) {
                    k.f(f79726a, "Failed to check network interface status: " + e10.getMessage(), new Object[0]);
                    zIsUp = false;
                }
                if (zIsUp && !networkInterfaceNextElement.isVirtual() && (inetAddresses = networkInterfaceNextElement.getInetAddresses()) != null) {
                    ArrayList arrayList = new ArrayList();
                    while (inetAddresses.hasMoreElements()) {
                        InetAddress inetAddressNextElement = inetAddresses.nextElement();
                        if ((inetAddressNextElement instanceof Inet6Address) && !inetAddressNextElement.isAnyLocalAddress() && !inetAddressNextElement.isLinkLocalAddress() && !inetAddressNextElement.isLoopbackAddress()) {
                            String hostAddress = inetAddressNextElement.getHostAddress();
                            if (!t.a((CharSequence) hostAddress)) {
                                int iIndexOf = hostAddress.indexOf(37);
                                if (iIndexOf > 0) {
                                    hostAddress = hostAddress.substring(0, iIndexOf);
                                }
                                arrayList.add(hostAddress);
                            }
                        }
                    }
                    String name = networkInterfaceNextElement.getName();
                    if (!t.a((CharSequence) name) && !arrayList.isEmpty()) {
                        map.put(name, arrayList);
                    }
                }
            }
            return map;
        } catch (SocketException e11) {
            k.f(f79726a, "Failed to get network interfaces: " + e11.getMessage(), new Object[0]);
            return map;
        }
    }

    public static void a(long durationSeconds) {
        if (durationSeconds > 0 && f79728c != durationSeconds) {
            f79728c = durationSeconds;
            return;
        }
        k.e(f79726a, "Invalid cache duration: " + durationSeconds + ", using default value", new Object[0]);
    }
}
