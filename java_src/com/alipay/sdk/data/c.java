package com.alipay.sdk.data;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.widget.TextView;
import com.alipay.sdk.util.j;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.qq.e.comm.constants.ErrorCode;
import com.sigmob.sdk.archives.tar.e;
import com.windmill.sdk.WMConstants;
import java.util.HashMap;
import java.util.Random;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f7162d = "virtualImeiAndImsi";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f7163e = "virtual_imei";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f7164f = "virtual_imsi";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static c f7165g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f7166a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f7167b = "sdk-and-lite";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f7168c;

    private c() {
    }

    public static synchronized c a() {
        if (f7165g == null) {
            f7165g = new c();
        }
        return f7165g;
    }

    private static String b(Context context) {
        return Float.toString(new TextView(context).getTextSize());
    }

    public static String c(Context context, HashMap<String, String> map) {
        try {
            return s.a.a(context, map);
        } catch (Throwable unused) {
            return "";
        }
    }

    private String d(y.b bVar) {
        String strB;
        Context context = x.b.b().f97590a;
        com.alipay.sdk.util.b bVarA = com.alipay.sdk.util.b.a(context);
        if (TextUtils.isEmpty(this.f7166a)) {
            String strD = j.d();
            String strK = j.k();
            String strQ = j.q(context);
            String str = u.a.f97399a;
            this.f7166a = "Msp/15.0.8 (" + strD + ";" + strK + ";" + strQ + ";" + str.substring(0, str.indexOf("://")) + ";" + j.s(context) + ";" + Float.toString(new TextView(context).getTextSize());
        }
        String strA = com.alipay.sdk.util.b.d(context).a();
        String strB2 = bVarA.b();
        String strE = bVarA.e();
        Context context2 = x.b.b().f97590a;
        SharedPreferences sharedPreferences = context2.getSharedPreferences(f7162d, 0);
        String string = sharedPreferences.getString(f7164f, null);
        if (TextUtils.isEmpty(string)) {
            if (TextUtils.isEmpty(y.b.a().f97669a)) {
                String strE2 = x.b.b().e();
                strB = TextUtils.isEmpty(strE2) ? f() : strE2.substring(3, 18);
            } else {
                strB = com.alipay.sdk.util.b.a(context2).b();
            }
            string = strB;
            sharedPreferences.edit().putString(f7164f, string).commit();
        }
        Context context3 = x.b.b().f97590a;
        SharedPreferences sharedPreferences2 = context3.getSharedPreferences(f7162d, 0);
        String string2 = sharedPreferences2.getString(f7163e, null);
        if (TextUtils.isEmpty(string2)) {
            string2 = TextUtils.isEmpty(y.b.a().f97669a) ? f() : com.alipay.sdk.util.b.a(context3).e();
            sharedPreferences2.edit().putString(f7163e, string2).commit();
        }
        if (bVar != null) {
            this.f7168c = bVar.f97670b;
        }
        String strReplace = Build.MANUFACTURER.replace(";", " ");
        String strReplace2 = Build.MODEL.replace(";", " ");
        boolean zD = x.b.d();
        String strG = bVarA.g();
        WifiInfo connectionInfo = ((WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo();
        String ssid = connectionInfo != null ? connectionInfo.getSSID() : WMConstants.TIMER_STAGE_NONE;
        WifiInfo connectionInfo2 = ((WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo();
        String bssid = connectionInfo2 != null ? connectionInfo2.getBSSID() : e.V;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f7166a);
        sb2.append(";");
        sb2.append(strA);
        sb2.append(";");
        sb2.append("-1;-1");
        sb2.append(";");
        sb2.append("1");
        sb2.append(";");
        sb2.append(strB2);
        sb2.append(";");
        sb2.append(strE);
        sb2.append(";");
        sb2.append(this.f7168c);
        sb2.append(";");
        sb2.append(strReplace);
        sb2.append(";");
        sb2.append(strReplace2);
        sb2.append(";");
        sb2.append(zD);
        sb2.append(";");
        sb2.append(strG);
        sb2.append(";-1;-1;");
        sb2.append(this.f7167b);
        sb2.append(";");
        sb2.append(string);
        sb2.append(";");
        sb2.append(string2);
        sb2.append(";");
        sb2.append(ssid);
        sb2.append(";");
        sb2.append(bssid);
        if (bVar != null) {
            HashMap map = new HashMap();
            map.put(u.b.f97417c, bVar.f97669a);
            map.put(u.b.f97421g, x.b.b().e());
            String strC = c(context, map);
            if (!TextUtils.isEmpty(strC)) {
                sb2.append(";");
                sb2.append(strC);
            }
        }
        sb2.append(")");
        return sb2.toString();
    }

    public static String f() {
        return Long.toHexString(System.currentTimeMillis()) + (new Random().nextInt(ErrorCode.PrivateError.LOAD_TIME_OUT) + 1000);
    }

    private static String g(Context context) {
        WifiInfo connectionInfo = ((WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo();
        return connectionInfo != null ? connectionInfo.getSSID() : WMConstants.TIMER_STAGE_NONE;
    }

    private String h() {
        return this.f7168c;
    }

    private static String i(Context context) {
        WifiInfo connectionInfo = ((WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo();
        return connectionInfo != null ? connectionInfo.getBSSID() : e.V;
    }

    private static String j() {
        return "1";
    }

    private static String k() {
        return "-1;-1";
    }

    private static String l() {
        Context context = x.b.b().f97590a;
        SharedPreferences sharedPreferences = context.getSharedPreferences(f7162d, 0);
        String string = sharedPreferences.getString(f7163e, null);
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        String strF = TextUtils.isEmpty(y.b.a().f97669a) ? f() : com.alipay.sdk.util.b.a(context).e();
        sharedPreferences.edit().putString(f7163e, strF).commit();
        return strF;
    }

    private static String m() {
        String strB;
        Context context = x.b.b().f97590a;
        SharedPreferences sharedPreferences = context.getSharedPreferences(f7162d, 0);
        String string = sharedPreferences.getString(f7164f, null);
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        if (TextUtils.isEmpty(y.b.a().f97669a)) {
            String strE = x.b.b().e();
            strB = TextUtils.isEmpty(strE) ? f() : strE.substring(3, 18);
        } else {
            strB = com.alipay.sdk.util.b.a(context).b();
        }
        String str = strB;
        sharedPreferences.edit().putString(f7164f, str).commit();
        return str;
    }

    public final synchronized void e(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        PreferenceManager.getDefaultSharedPreferences(x.b.b().f97590a).edit().putString(u.b.f97423i, str).commit();
        u.a.f97400b = str;
    }
}
