package com.heepay.plugin.domain;

import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.heepay.plugin.c.j;
import java.io.File;
import java.io.FileFilter;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static e f34334c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f34335a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f34336b;

    private e() {
    }

    public static synchronized e a() {
        if (f34334c == null) {
            f34334c = new e();
        }
        return f34334c;
    }

    public int b() {
        try {
            return new File("/sys/devices/system/cpu/").listFiles(new FileFilter() { // from class: com.heepay.plugin.domain.e.1
                @Override // java.io.FileFilter
                public boolean accept(File file) {
                    String name = file.getName();
                    if (!name.startsWith("cpu")) {
                        return false;
                    }
                    for (int i10 = 3; i10 < name.length(); i10++) {
                        if (name.charAt(i10) < '0' || name.charAt(i10) > '9') {
                            return false;
                        }
                    }
                    return true;
                }
            }).length;
        } catch (NullPointerException | SecurityException unused) {
            return -1;
        }
    }

    public String c() {
        return this.f34335a;
    }

    public String d() {
        return Build.BRAND;
    }

    public String e() {
        return Build.VERSION.RELEASE;
    }

    public int f(TelephonyManager telephonyManager) {
        return telephonyManager.getPhoneType();
    }

    public int g(TelephonyManager telephonyManager) {
        return telephonyManager.getSimState();
    }

    public String h() {
        return this.f34336b;
    }

    public String a(Context context) {
        return j.a().a(context);
    }

    public int b(TelephonyManager telephonyManager) {
        return telephonyManager.getNetworkType();
    }

    public String c(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("DeviceId", a(context));
                jSONObject.put("PhoneNumber", a(telephonyManager));
                jSONObject.put("SimState", g(telephonyManager));
                jSONObject.put("SimSerialNumber", c(telephonyManager));
                jSONObject.put("SimOperatorName", d(telephonyManager));
                jSONObject.put("SimCountryIso", e(telephonyManager));
                jSONObject.put("PhoneType", f(telephonyManager));
                jSONObject.put("SubscriberId", h(telephonyManager));
                jSONObject.put("SystemName", d());
                jSONObject.put("SystemModel", f());
                jSONObject.put("SystemVersion", e());
                jSONObject.put("NetworkType", b(telephonyManager));
                jSONObject.put("IP", g());
                jSONObject.put("CoreCount", b());
                String strA = com.heepay.plugin.a.d.a(jSONObject.toString(), "39EB339F80B715384793F7EF", "ToHex16");
                this.f34336b = strA;
                return strA;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public String d(TelephonyManager telephonyManager) {
        return telephonyManager.getSimOperatorName();
    }

    public String e(TelephonyManager telephonyManager) {
        return telephonyManager.getSimCountryIso();
    }

    public String f() {
        return Build.MODEL;
    }

    public String g() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    if (!inetAddressNextElement.isLoopbackAddress() && (inetAddressNextElement instanceof Inet4Address)) {
                        return inetAddressNextElement.getHostAddress().toString();
                    }
                }
            }
            return null;
        } catch (SocketException unused) {
            return null;
        }
    }

    public String h(TelephonyManager telephonyManager) {
        return "";
    }

    public String a(TelephonyManager telephonyManager) {
        return "";
    }

    public void b(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null) {
            this.f34335a = a(context);
            this.f34336b = "PhoneNumber=" + a(telephonyManager) + ", DeviceId=" + this.f34335a + ", SimState=" + g(telephonyManager) + ", SimSerialNumber=" + c(telephonyManager) + ", SimOperatorName=" + d(telephonyManager) + ", SimCountryIso=" + e(telephonyManager) + ", PhoneType=" + f(telephonyManager) + ", SubscriberId=" + h(telephonyManager) + ", SystemName=" + d() + ", SystemModel=" + f() + ", SystemVersion=" + e() + ", NetworkType=" + b(telephonyManager) + ", IP=" + g() + ", CoreCount=" + b();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("mClientInfo:");
            sb2.append(this.f34336b);
            com.heepay.plugin.c.c.a(sb2.toString());
            try {
                this.f34336b = "SDK|" + com.heepay.plugin.a.d.a(this.f34336b, "39EB339F80B715384793F7EF", "ToHex16");
            } catch (Exception unused) {
                this.f34336b = "";
            }
        }
    }

    public String c(TelephonyManager telephonyManager) {
        return "";
    }
}
