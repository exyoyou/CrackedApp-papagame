package com.sdk.b;

import android.content.Context;
import android.util.Base64;
import com.sdk.base.framework.utils.log.LogUtils;
import com.sdk.base.module.config.BaseConfig;
import com.sdk.f.d;
import com.sdk.v.f;
import com.umeng.analytics.pro.aw;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f78446a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Boolean f78447b = Boolean.valueOf(d.f78521a);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Boolean f78448c = Boolean.TRUE;

    public static String a(String str) {
        return str.split("-")[0];
    }

    public static String b(String str) {
        return str.split("-")[1];
    }

    public static String c(String str) {
        byte[] bArrA;
        String str2 = str.split("-")[2];
        String str3 = str.split("-")[1];
        try {
            if (f78448c.booleanValue()) {
                bArrA = Base64.decode(str2, 0);
            } else {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(str3.getBytes());
                bArrA = com.sdk.v.b.a(Base64.decode(str2, 0), messageDigest.digest(), null, 1);
            }
            return new String(bArrA);
        } catch (f e10) {
            throw new RuntimeException(e10);
        } catch (NoSuchAlgorithmException e11) {
            throw new RuntimeException(e11);
        }
    }

    public static <T> String a(String str, T t10, String str2, String str3) {
        String strEncodeToString;
        try {
            if (f78448c.booleanValue()) {
                strEncodeToString = Base64.encodeToString(str3.getBytes(), 0);
            } else {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(str2.getBytes());
                strEncodeToString = Base64.encodeToString(com.sdk.v.b.b(str3.getBytes(), messageDigest.digest(), null, 1), 0);
            }
            return t10 + "-" + str2 + "-" + strEncodeToString + "-" + str;
        } catch (f e10) {
            throw new RuntimeException(e10);
        } catch (NoSuchAlgorithmException e11) {
            throw new RuntimeException(e11);
        }
    }

    public static String a(Context context, int i10, String str) {
        boolean z10;
        try {
            String strA = a(i10, str);
            if (!com.sdk.r.a.b(strA).booleanValue()) {
                return null;
            }
            String strB = com.sdk.j.a.b(context, strA);
            if (!com.sdk.r.a.b(strB).booleanValue()) {
                return null;
            }
            if (com.sdk.r.a.a(com.sdk.t.a.f78590g).booleanValue()) {
                String strA2 = com.sdk.i.a.a(context, BaseConfig.apk);
                com.sdk.t.a.f78590g = (strA2 + strA2).substring(strA2.length() - 16, strA2.length() + 16);
            }
            String strA3 = com.sdk.s.a.a(a(strB));
            try {
                z10 = new JSONObject(strA3).optLong(aw.f84321b) < System.currentTimeMillis();
            } catch (Exception e10) {
                LogUtils.w(com.sdk.s.a.f78582a, "out data error" + e10, com.sdk.s.a.f78583b);
            }
            if (z10) {
                LogUtils.i(f78446a, "OutDate cache invalid", f78447b);
                return null;
            }
            LogUtils.i(f78446a, "can use cache", f78447b);
            JSONObject jSONObject = new JSONObject(strA3);
            if (i10 == 1) {
                jSONObject.remove("fakeMobile");
            }
            return jSONObject.toString() + "-" + b(strB) + "-" + c(strB) + "-" + strB.split("-")[3];
        } catch (Exception unused) {
            return null;
        }
    }

    public static String a(int i10, String str) {
        String hostAddress;
        String str2 = com.sdk.l.a.f78547a;
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            loop0: while (true) {
                if (!networkInterfaces.hasMoreElements()) {
                    hostAddress = null;
                    break;
                }
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    if (!inetAddressNextElement.isLoopbackAddress() && (inetAddressNextElement instanceof Inet4Address)) {
                        hostAddress = inetAddressNextElement.getHostAddress();
                        break loop0;
                    }
                    hostAddress = null;
                }
            }
        } catch (SocketException unused) {
        }
        if (!com.sdk.r.a.b(hostAddress).booleanValue()) {
            return null;
        }
        return "accessCode" + i10 + str + hostAddress;
    }
}
