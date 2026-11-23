package com.cmic.gen.sdk.e;

import android.text.TextUtils;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes9.dex */
public class p {
    public static String[] a(boolean z10) {
        String[] strArr = {"", ""};
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                if (!z10 || !networkInterfaceNextElement.getName().toLowerCase().contains("wlan")) {
                    Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        InetAddress inetAddressNextElement = inetAddresses.nextElement();
                        if (!inetAddressNextElement.isLoopbackAddress() && !inetAddressNextElement.isLinkLocalAddress()) {
                            String hostAddress = inetAddressNextElement.getHostAddress();
                            if (!TextUtils.isEmpty(hostAddress)) {
                                if (inetAddressNextElement instanceof Inet6Address) {
                                    sb2.append(hostAddress);
                                    sb2.append(",");
                                } else if (inetAddressNextElement instanceof Inet4Address) {
                                    sb3.append(hostAddress);
                                    sb3.append(",");
                                }
                            }
                        }
                    }
                }
            }
            if (!TextUtils.isEmpty(sb2)) {
                sb2 = sb2.delete(sb2.length() - 1, sb2.length());
            }
            if (!TextUtils.isEmpty(sb3)) {
                sb3 = sb3.delete(sb3.length() - 1, sb3.length());
            }
            strArr[0] = sb3.toString();
            strArr[1] = sb2.toString();
            c.b("UmcIPUtils", "onlyMobileDataIp " + z10 + " IPV6 ip：" + sb2.toString());
            c.b("UmcIPUtils", "onlyMobileDataIp " + z10 + " IPV4 ip：" + sb3.toString());
            return strArr;
        } catch (Exception e10) {
            e10.printStackTrace();
            return strArr;
        }
    }
}
