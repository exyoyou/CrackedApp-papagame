package com.alipay.sdk.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.efs.sdk.base.core.util.NetworkUtil;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f7209d = "00:00:00:00:00:00";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static b f7210e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f7211a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7212b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f7213c;

    private b(Context context) {
        try {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                f(telephonyManager.getDeviceId());
                String subscriberId = telephonyManager.getSubscriberId();
                if (subscriberId != null) {
                    subscriberId = (subscriberId + "000000000000000").substring(0, 15);
                }
                this.f7211a = subscriberId;
                String macAddress = ((WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo().getMacAddress();
                this.f7213c = macAddress;
                if (TextUtils.isEmpty(macAddress)) {
                    this.f7213c = f7209d;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                if (TextUtils.isEmpty(this.f7213c)) {
                    this.f7213c = f7209d;
                }
            }
        } catch (Throwable th) {
            if (TextUtils.isEmpty(this.f7213c)) {
                this.f7213c = f7209d;
            }
            throw th;
        }
    }

    public static b a(Context context) {
        if (f7210e == null) {
            f7210e = new b(context);
        }
        return f7210e;
    }

    private void c(String str) {
        if (str != null) {
            str = (str + "000000000000000").substring(0, 15);
        }
        this.f7211a = str;
    }

    public static d d(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || activeNetworkInfo.getType() != 0) {
                return (activeNetworkInfo == null || activeNetworkInfo.getType() != 1) ? d.NONE : d.WIFI;
            }
            return d.a(activeNetworkInfo.getSubtype());
        } catch (Exception unused) {
            return d.NONE;
        }
    }

    private void f(String str) {
        if (str != null) {
            byte[] bytes = str.getBytes();
            for (int i10 = 0; i10 < bytes.length; i10++) {
                byte b10 = bytes[i10];
                if (b10 < 48 || b10 > 57) {
                    bytes[i10] = com.sigmob.sdk.archives.tar.e.H;
                }
            }
            str = (new String(bytes) + "000000000000000").substring(0, 15);
        }
        this.f7212b = str;
    }

    public static String h(Context context) {
        String str;
        b bVarA = a(context);
        String str2 = bVarA.e() + "|";
        String strB = bVarA.b();
        if (TextUtils.isEmpty(strB)) {
            str = str2 + "000000000000000";
        } else {
            str = str2 + strB;
        }
        return str.substring(0, 8);
    }

    private String i() {
        String str = e() + "|";
        String strB = b();
        if (TextUtils.isEmpty(strB)) {
            return str + "000000000000000";
        }
        return str + strB;
    }

    public static String j(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getResources().getConfiguration().locale.toString();
        } catch (Throwable unused) {
            return "";
        }
    }

    public final String b() {
        if (TextUtils.isEmpty(this.f7211a)) {
            this.f7211a = "000000000000000";
        }
        return this.f7211a;
    }

    public final String e() {
        if (TextUtils.isEmpty(this.f7212b)) {
            this.f7212b = "000000000000000";
        }
        return this.f7212b;
    }

    public final String g() {
        return this.f7213c;
    }
}
