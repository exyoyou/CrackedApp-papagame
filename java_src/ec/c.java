package ec;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Process;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.webkit.WebSettings;
import com.byazt.bv.BaseConstants;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.umeng.analytics.pro.aw;
import com.umeng.analytics.pro.bm;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.lang.reflect.InvocationTargetException;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.security.MessageDigest;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f90891a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f90892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static SharedPreferences f90893c;

    public static String a(Context context, String str) {
        b(context);
        SharedPreferences sharedPreferences = f90893c;
        return sharedPreferences != null ? sharedPreferences.getString(str, "") : "";
    }

    public static void b(Context context) {
        if (f90893c == null && context != null) {
            f90893c = context.getSharedPreferences("ks_turbo_sdk_pref", 0);
        }
    }

    public static void c(Context context, String str, long j10) {
        b(context);
        SharedPreferences sharedPreferences = f90893c;
        if (sharedPreferences != null) {
            sharedPreferences.edit().putLong(str, j10).apply();
        }
    }

    public static void d(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        b(context);
        SharedPreferences sharedPreferences = f90893c;
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString(str, str2).apply();
        }
    }

    public static void e(JSONObject jSONObject) throws Throwable {
        int i10;
        int i11;
        int i12;
        int offset;
        String strB;
        String str;
        String strB2;
        String strB3;
        WifiInfo connectionInfo;
        f(jSONObject, "eventTimestamp", System.currentTimeMillis());
        f(jSONObject, "sdkVersion", -1.0d);
        g(jSONObject, "sdkVersionName", "1.0.17");
        kwai.a.e.c cVar = kwai.a.e.c.INSTANCE;
        g(jSONObject, "appId", cVar.f93885a.f93874d);
        g(jSONObject, "appName", cVar.f93885a.f93875e);
        g(jSONObject, "appChannel", cVar.f93885a.f93876f);
        g(jSONObject, "packageName", cVar.f93885a.f93877g);
        g(jSONObject, "osType", "Android");
        g(jSONObject, "osVersion", Build.VERSION.RELEASE);
        g(jSONObject, "deviceModel", Build.MODEL);
        g(jSONObject, "deviceBrand", Build.BRAND);
        g(jSONObject, "deviceManufacturer", Build.MANUFACTURER);
        StringBuilder sb2 = new StringBuilder();
        String str2 = "";
        if (f90891a == null) {
            k("");
        }
        sb2.append(f90891a);
        sb2.append(" ");
        if (f90892b == null) {
            k("");
        }
        sb2.append(f90892b);
        g(jSONObject, "rom", sb2.toString());
        g(jSONObject, "cpuAbi", Build.CPU_ABI);
        Context context = cVar.f93885a.f93873c;
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            i10 = displayMetrics.densityDpi;
        } catch (Exception unused) {
            i10 = 0;
        }
        f(jSONObject, "densityDpi", i10);
        Context context2 = kwai.a.e.c.INSTANCE.f93885a.f93873c;
        try {
            DisplayMetrics displayMetrics2 = new DisplayMetrics();
            ((WindowManager) context2.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics2);
            i11 = displayMetrics2.heightPixels;
        } catch (Exception unused2) {
            i11 = 0;
        }
        f(jSONObject, "displayH", i11);
        Context context3 = kwai.a.e.c.INSTANCE.f93885a.f93873c;
        try {
            DisplayMetrics displayMetrics3 = new DisplayMetrics();
            ((WindowManager) context3.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics3);
            i12 = displayMetrics3.widthPixels;
        } catch (Exception unused3) {
            i12 = 0;
        }
        f(jSONObject, "displayW", i12);
        g(jSONObject, "language", Locale.getDefault().getLanguage());
        try {
            offset = TimeZone.getDefault().getOffset(15L) / BaseConstants.Time.HOUR;
        } catch (Exception unused4) {
            offset = 0;
        }
        f(jSONObject, bm.M, offset);
        g(jSONObject, "region", Locale.getDefault().getCountry());
        kwai.a.e.c cVar2 = kwai.a.e.c.INSTANCE;
        Context context4 = cVar2.f93885a.f93873c;
        if (context4 == null || !TextUtils.isEmpty(kc.c.f92169b)) {
            strB = kc.c.f92169b;
        } else {
            String strN = n(kc.c.a(context4));
            kc.c.f92169b = strN;
            strB = kc.c.b(strN);
        }
        g(jSONObject, "imei", strB);
        g(jSONObject, "globalId", kwai.a.e.k());
        Context context5 = cVar2.f93885a.f93873c;
        if (context5 == null || !TextUtils.isEmpty(kc.c.f92172e)) {
            str = kc.c.f92172e;
        } else {
            try {
                String strA = a(context5, "ks_system_ua");
                kc.c.f92172e = strA;
                if (TextUtils.isEmpty(strA)) {
                    String defaultUserAgent = WebSettings.getDefaultUserAgent(context5);
                    kc.c.f92172e = defaultUserAgent;
                    d(context5, "ks_system_ua", defaultUserAgent);
                    str = kc.c.f92172e;
                } else {
                    str = kc.c.f92172e;
                }
            } catch (Exception unused5) {
                kc.a.a("SystemUtils", "getSysUa fail");
            }
        }
        g(jSONObject, aw.f84323d, str);
        if (i()) {
            g(jSONObject, "oaid", kwai.a.e.l());
        }
        g(jSONObject, "oaidMd5", n(kwai.a.e.l()));
        Context context6 = kwai.a.e.c.INSTANCE.f93885a.f93873c;
        if (context6 == null || !TextUtils.isEmpty(kc.c.f92170c)) {
            strB2 = kc.c.f92170c;
        } else {
            try {
                if ((context6.checkPermission(com.kuaishou.weapon.p0.g.f74779c, Process.myPid(), Process.myUid()) == 0) && (connectionInfo = ((WifiManager) context6.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo()) != null) {
                    kc.c.f92170c = connectionInfo.getMacAddress();
                }
                if (TextUtils.isEmpty(kc.c.f92170c) || kc.c.f92170c.equals("02:00:00:00:00:00")) {
                    for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                        if (networkInterface.getName().equalsIgnoreCase("wlan0")) {
                            byte[] hardwareAddress = networkInterface.getHardwareAddress();
                            if (hardwareAddress != null && hardwareAddress.length != 0) {
                                StringBuilder sb3 = new StringBuilder();
                                for (byte b10 : hardwareAddress) {
                                    sb3.append(String.format("%02X:", Byte.valueOf(b10)));
                                }
                                if (sb3.length() > 0) {
                                    sb3.deleteCharAt(sb3.length() - 1);
                                }
                                kc.c.f92170c = sb3.toString();
                                break;
                            }
                            break;
                            break;
                        }
                    }
                }
                if (TextUtils.isEmpty(kc.c.f92170c) || kc.c.f92170c.equals("02:00:00:00:00:00")) {
                    kc.c.f92170c = new LineNumberReader(new InputStreamReader(Runtime.getRuntime().exec("cat /sys/class/net/wlan0/address ").getInputStream())).readLine();
                }
                kc.c.f92170c = n(kc.c.f92170c.toUpperCase(Locale.US));
            } catch (Exception e10) {
                kc.a.c("SystemUtils", "getMacAddress exception:" + e10.toString());
            }
            strB2 = kc.c.b(kc.c.f92170c);
        }
        g(jSONObject, "mac", strB2);
        String hostAddress = kc.c.f92173f;
        if (hostAddress != null) {
            str2 = hostAddress;
        } else {
            try {
                Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                while (true) {
                    if (networkInterfaces.hasMoreElements()) {
                        Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                        while (true) {
                            if (inetAddresses.hasMoreElements()) {
                                InetAddress inetAddressNextElement = inetAddresses.nextElement();
                                if ((inetAddressNextElement instanceof Inet4Address) && !inetAddressNextElement.isLoopbackAddress()) {
                                    hostAddress = inetAddressNextElement.getHostAddress();
                                    kc.c.f92173f = hostAddress;
                                    str2 = hostAddress;
                                }
                            }
                        }
                    }
                    kc.c.f92173f = "";
                }
            } catch (Throwable unused6) {
            }
        }
        g(jSONObject, "clientIp", str2);
        kwai.a.e.c cVar3 = kwai.a.e.c.INSTANCE;
        g(jSONObject, "netType", kc.b.a(cVar3.f93885a.f93873c));
        Context context7 = cVar3.f93885a.f93873c;
        if (context7 == null || !TextUtils.isEmpty(kc.c.f92171d)) {
            strB3 = kc.c.f92171d;
        } else {
            try {
                kc.c.f92171d = n(Settings.Secure.getString(context7.getContentResolver(), "android_id"));
            } catch (Exception unused7) {
            }
            strB3 = kc.c.b(kc.c.f92171d);
        }
        g(jSONObject, "androidId", strB3);
        Context context8 = kwai.a.e.c.INSTANCE.f93885a.f93873c;
        JSONArray jSONArray = kc.c.f92174g;
        if (jSONArray == null) {
            jSONArray = new JSONArray();
            if (context8 != null) {
                try {
                    PackageManager packageManager = context8.getPackageManager();
                    Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
                    intent.addCategory("android.intent.category.LAUNCHER");
                    for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 32)) {
                        if (!TextUtils.isEmpty(resolveInfo.activityInfo.packageName)) {
                            JSONObject jSONObject2 = new JSONObject();
                            g(jSONObject2, "pkgName", resolveInfo.activityInfo.packageName);
                            ApplicationInfo applicationInfo = resolveInfo.activityInfo.applicationInfo;
                            if (applicationInfo != null) {
                                int i13 = applicationInfo.flags;
                                if ((i13 & 1) == 0 && (i13 & 128) == 0) {
                                    f(jSONObject2, "systemApp", 0.0d);
                                } else {
                                    f(jSONObject2, "systemApp", 1.0d);
                                }
                            }
                            g(jSONObject2, "appVersion", packageManager.getPackageInfo(resolveInfo.activityInfo.packageName, 0).versionName);
                            jSONArray.put(jSONObject2);
                        }
                    }
                } catch (Exception unused8) {
                }
                kc.c.f92174g = jSONArray;
            }
        }
        if (jSONObject != null && !TextUtils.isEmpty("appList")) {
            try {
                jSONObject.put("appList", jSONArray);
            } catch (JSONException e11) {
                e11.printStackTrace();
            }
        }
        g(jSONObject, com.alipay.sdk.authjs.a.f7124i, kwai.a.e.j());
    }

    public static void f(JSONObject jSONObject, String str, double d10) {
        if (jSONObject == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            jSONObject.put(str, d10);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    public static void g(JSONObject jSONObject, String str, String str2) {
        if (jSONObject == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            jSONObject.put(str, str2);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }

    public static synchronized void h(boolean z10) {
        b(kwai.a.e.c.INSTANCE.f93885a.f93873c);
        SharedPreferences sharedPreferences = f90893c;
        if (sharedPreferences != null) {
            sharedPreferences.edit().putBoolean("ks_upload_origin_oaid", z10).apply();
        }
    }

    public static synchronized boolean i() {
        return j(kwai.a.e.c.INSTANCE.f93885a.f93873c, "ks_upload_origin_oaid", true);
    }

    public static boolean j(Context context, String str, boolean z10) {
        b(context);
        SharedPreferences sharedPreferences = f90893c;
        return sharedPreferences != null ? sharedPreferences.getBoolean(str, z10) : z10;
    }

    public static boolean k(String str) throws Throwable {
        String str2 = f90891a;
        if (str2 != null) {
            return str2.contains(str);
        }
        String strL = l("ro.miui.ui.version.name");
        f90892b = strL;
        if (TextUtils.isEmpty(strL)) {
            String strL2 = l("ro.build.version.emui");
            f90892b = strL2;
            if (TextUtils.isEmpty(strL2)) {
                String strL3 = l("ro.build.version.opporom");
                f90892b = strL3;
                if (TextUtils.isEmpty(strL3)) {
                    String strL4 = l("ro.vivo.os.version");
                    f90892b = strL4;
                    if (TextUtils.isEmpty(strL4)) {
                        String strL5 = l("ro.smartisan.version");
                        f90892b = strL5;
                        if (TextUtils.isEmpty(strL5)) {
                            String str3 = Build.DISPLAY;
                            f90892b = str3;
                            if (str3.toUpperCase().contains("FLYME")) {
                                f90891a = "FLYME";
                            } else {
                                f90892b = "unknown";
                                f90891a = Build.MANUFACTURER.toUpperCase();
                            }
                        } else {
                            f90891a = "SMARTISAN";
                        }
                    } else {
                        f90891a = "VIVO";
                    }
                } else {
                    f90891a = BaseConstants.ROM_OPPO_UPPER_CONSTANT;
                }
            } else {
                f90891a = "EMUI";
            }
        } else {
            f90891a = "MIUI";
        }
        return f90891a.contains(str);
    }

    @SuppressLint({"PrivateApi"})
    public static String l(String str) throws Throwable {
        String line;
        BufferedReader bufferedReader = null;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            line = (String) cls.getDeclaredMethod("get", String.class).invoke(cls, str);
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
            line = null;
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
            line = null;
        } catch (NoSuchMethodException e12) {
            e12.printStackTrace();
            line = null;
        } catch (InvocationTargetException e13) {
            e13.printStackTrace();
            line = null;
        }
        try {
            try {
                if (TextUtils.isEmpty(line)) {
                    try {
                        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + str).getInputStream()), 1024);
                        try {
                            line = bufferedReader2.readLine();
                            bufferedReader2.close();
                        } catch (IOException e14) {
                            e = e14;
                            bufferedReader = bufferedReader2;
                            e.printStackTrace();
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException unused) {
                                }
                            }
                            throw th;
                        }
                    } catch (IOException e15) {
                        e = e15;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException unused2) {
        }
        return line;
    }

    public static boolean m(String str) {
        return str == null || str.length() == 0 || "null".equalsIgnoreCase(str);
    }

    public static String n(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb2 = new StringBuilder();
            int length = bArrDigest.length;
            for (int i10 = 0; i10 < length; i10++) {
                int i11 = bArrDigest[i10];
                if (i11 < 0) {
                    i11 += 256;
                }
                if (i11 < 16) {
                    sb2.append("0");
                }
                sb2.append(Integer.toHexString(i11));
            }
            return sb2.toString();
        } catch (Exception unused) {
            return "";
        }
    }
}
