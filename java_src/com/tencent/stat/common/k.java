package com.tencent.stat.common;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.byazt.hv.TTDownloadField;
import com.bykv.vk.component.ttvideo.player.C;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.join.mgps.Util.o0;
import com.tencent.stat.StatConfig;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.zip.GZIPInputStream;
import org.apache.http.HttpHost;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f83916a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f83917b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f83918c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f83919d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Random f83920e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static StatLogger f83921f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f83922g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static l f83923h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static n f83924i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static String f83925j = "__MTA_FIRST_ACTIVATE__";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static int f83926k = -1;

    public static String A(Context context) {
        List<Sensor> sensorList;
        try {
            SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
            if (sensorManager == null || (sensorList = sensorManager.getSensorList(-1)) == null) {
                return "";
            }
            StringBuilder sb2 = new StringBuilder();
            for (int i10 = 0; i10 < sensorList.size(); i10++) {
                sb2.append(sensorList.get(i10).getType());
                if (i10 != sensorList.size() - 1) {
                    sb2.append(",");
                }
            }
            return sb2.toString();
        } catch (Throwable th) {
            f83921f.e(th);
            return "";
        }
    }

    public static WifiInfo B(Context context) {
        WifiManager wifiManager;
        if (!a(context, com.kuaishou.weapon.p0.g.f74780d) || (wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)) == null) {
            return null;
        }
        return wifiManager.getConnectionInfo();
    }

    public static String C(Context context) {
        try {
            WifiInfo wifiInfoB = B(context);
            if (wifiInfoB != null) {
                return wifiInfoB.getBSSID();
            }
            return null;
        } catch (Throwable th) {
            f83921f.e(th);
            return null;
        }
    }

    public static String D(Context context) {
        try {
            WifiInfo wifiInfoB = B(context);
            if (wifiInfoB != null) {
                return wifiInfoB.getSSID();
            }
            return null;
        } catch (Throwable th) {
            f83921f.e(th);
            return null;
        }
    }

    public static synchronized int E(Context context) {
        int i10 = f83926k;
        if (i10 != -1) {
            return i10;
        }
        F(context);
        return f83926k;
    }

    public static void F(Context context) {
        int iA = p.a(context, f83925j, 1);
        f83926k = iA;
        f83921f.e(Integer.valueOf(iA));
        if (f83926k == 1) {
            p.b(context, f83925j, 0);
        }
    }

    private static long G(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo.availMem;
    }

    public static int a() {
        return h().nextInt(Integer.MAX_VALUE);
    }

    public static long b(String str) {
        return a(str, o0.f49827a, 100, 3, 0L).longValue();
    }

    public static long c() {
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            return calendar.getTimeInMillis() + 86400000;
        } catch (Throwable th) {
            f83921f.e(th);
            return System.currentTimeMillis() + 86400000;
        }
    }

    public static int d() {
        return Build.VERSION.SDK_INT;
    }

    public static String e() {
        long jF = f() / C.MICROS_PER_SECOND;
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return String.valueOf((((long) statFs.getBlockSize()) * ((long) statFs.getAvailableBlocks())) / C.MICROS_PER_SECOND) + net.lingala.zip4j.util.e.F0 + String.valueOf(jF);
    }

    public static long f() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
    }

    private static synchronized Random h() {
        if (f83920e == null) {
            f83920e = new Random();
        }
        return f83920e;
    }

    private static long i() {
        long jIntValue = 0;
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
            jIntValue = Integer.valueOf(bufferedReader.readLine().split("\\s+")[1]).intValue() * 1024;
            bufferedReader.close();
            return jIntValue;
        } catch (IOException unused) {
            return jIntValue;
        }
    }

    public static String j(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null) {
                return null;
            }
            Object obj = applicationInfo.metaData.get("InstallChannel");
            if (obj != null) {
                return obj.toString();
            }
            f83921f.w("Could not read InstallChannel meta-data from AndroidManifest.xml");
            return null;
        } catch (Throwable unused) {
            f83921f.e("Could not read InstallChannel meta-data from AndroidManifest.xml");
            return null;
        }
    }

    public static String k(Context context) {
        if (context == null) {
            return null;
        }
        return context.getClass().getName();
    }

    public static String l(Context context) {
        try {
            if (!a(context, com.kuaishou.weapon.p0.g.f74779c)) {
                f83921f.e("Could not get permission of android.permission.READ_PHONE_STATE");
                return null;
            }
            String deviceId = o(context) ? ((TelephonyManager) context.getSystemService("phone")).getDeviceId() : "";
            if (deviceId != null) {
                return deviceId;
            }
            return null;
        } catch (Throwable th) {
            f83921f.e(th);
            return null;
        }
    }

    public static String m(Context context) {
        TelephonyManager telephonyManager;
        String simOperator = null;
        try {
            if (!a(context, com.kuaishou.weapon.p0.g.f74779c)) {
                f83921f.e("Could not get permission of android.permission.READ_PHONE_STATE");
            } else if (o(context) && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
                simOperator = telephonyManager.getSimOperator();
            }
        } catch (Throwable th) {
            f83921f.e(th);
        }
        return simOperator;
    }

    public static String n(Context context) {
        try {
            String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            return str == null ? "" : str;
        } catch (Throwable th) {
            f83921f.e(th);
            return "";
        }
    }

    public static boolean o(Context context) {
        return context.getPackageManager().checkPermission(com.kuaishou.weapon.p0.g.f74779c, context.getPackageName()) == 0;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x004a  */
    public static String p(Context context) {
        String str = "MOBILE";
        try {
            if (!a(context, com.kuaishou.weapon.p0.g.f74777a) || !a(context, com.kuaishou.weapon.p0.g.f74778b)) {
                f83921f.e("can not get the permission of android.permission.ACCESS_WIFI_STATE");
                return null;
            }
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                str = null;
            } else {
                String typeName = activeNetworkInfo.getTypeName();
                String extraInfo = activeNetworkInfo.getExtraInfo();
                if (typeName == null) {
                    str = null;
                } else if (typeName.equalsIgnoreCase(t7.a.f97141e)) {
                    str = t7.a.f97141e;
                } else if (!typeName.equalsIgnoreCase("MOBILE")) {
                    str = extraInfo != null ? extraInfo : typeName;
                } else if (extraInfo != null) {
                }
            }
            return str;
        } catch (Throwable th) {
            f83921f.e(th);
            return null;
        }
    }

    public static Integer q(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null) {
                return Integer.valueOf(telephonyManager.getNetworkType());
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String r(Context context) {
        String str = "";
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            return (str == null || str.length() == 0) ? "unknown" : str;
        } catch (Throwable th) {
            f83921f.e(th);
        }
    }

    public static int s(Context context) {
        try {
            return o.a() ? 1 : 0;
        } catch (Throwable th) {
            f83921f.e(th);
            return 0;
        }
    }

    public static String t(Context context) {
        String path;
        try {
            if (!a(context, com.kuaishou.weapon.p0.g.f74786j)) {
                f83921f.warn("can not get the permission of android.permission.WRITE_EXTERNAL_STORAGE");
                return null;
            }
            String externalStorageState = Environment.getExternalStorageState();
            if (externalStorageState != null && externalStorageState.equals("mounted") && (path = Environment.getExternalStorageDirectory().getPath()) != null) {
                StatFs statFs = new StatFs(path);
                long blockCount = (((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize())) / C.MICROS_PER_SECOND;
                return String.valueOf((((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize())) / C.MICROS_PER_SECOND) + net.lingala.zip4j.util.e.F0 + String.valueOf(blockCount);
            }
            return null;
        } catch (Throwable th) {
            f83921f.e(th);
        }
    }

    static String u(Context context) {
        try {
            int iMyPid = Process.myPid();
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningAppProcesses()) {
                if (runningAppProcessInfo.pid == iMyPid) {
                    return runningAppProcessInfo.processName;
                }
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String v(Context context) {
        return b(context, StatConstants.f83869a);
    }

    public static synchronized Integer w(Context context) {
        int i10;
        i10 = 0;
        try {
            int iA = p.a(context, "MTA_EVENT_INDEX", 0);
            if (iA < 2147483646) {
                i10 = iA;
            }
            p.b(context, "MTA_EVENT_INDEX", i10 + 1);
        } catch (Throwable th) {
            f83921f.e(th);
        }
        return Integer.valueOf(i10 + 1);
    }

    public static String x(Context context) {
        return String.valueOf(G(context) / C.MICROS_PER_SECOND) + net.lingala.zip4j.util.e.F0 + String.valueOf(i() / C.MICROS_PER_SECOND);
    }

    public static synchronized l y(Context context) {
        if (f83923h == null) {
            f83923h = new l();
        }
        return f83923h;
    }

    public static JSONObject z(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            y(context);
            int iB = l.b();
            if (iB > 0) {
                jSONObject.put("fx", iB / 1000000);
            }
            y(context);
            int iC = l.c();
            if (iC > 0) {
                jSONObject.put("fn", iC / 1000000);
            }
            y(context);
            int iA = l.a();
            if (iA > 0) {
                jSONObject.put("n", iA);
            }
            y(context);
            String strD = l.d();
            if (strD != null && strD.length() == 0) {
                y(context);
                jSONObject.put("na", l.d());
            }
        } catch (Exception e10) {
            f83921f.e(e10);
        }
        return jSONObject;
    }

    public static Long a(String str, String str2, int i10, int i11, Long l10) {
        if (str != null && str2 != null) {
            if (str2.equalsIgnoreCase(o0.f49827a) || str2.equalsIgnoreCase("|")) {
                str2 = "\\" + str2;
            }
            String[] strArrSplit = str.split(str2);
            if (strArrSplit.length == i11) {
                try {
                    Long lValueOf = 0L;
                    for (String str3 : strArrSplit) {
                        lValueOf = Long.valueOf(((long) i10) * (lValueOf.longValue() + Long.valueOf(str3).longValue()));
                    }
                    return lValueOf;
                } catch (NumberFormatException unused) {
                }
            }
        }
        return l10;
    }

    public static synchronized StatLogger b() {
        if (f83921f == null) {
            StatLogger statLogger = new StatLogger("MtaSDK");
            f83921f = statLogger;
            statLogger.setDebugEnable(false);
        }
        return f83921f;
    }

    public static synchronized String c(Context context) {
        String str = f83918c;
        if (str == null || "" == str) {
            f83918c = f(context);
        }
        return f83918c;
    }

    public static DisplayMetrics d(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static boolean e(Context context) {
        NetworkInfo[] allNetworkInfo;
        try {
            if (!a(context, com.kuaishou.weapon.p0.g.f74780d)) {
                f83921f.warn("can not get the permission of android.permission.ACCESS_WIFI_STATE");
                return false;
            }
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
            if (connectivityManager != null && (allNetworkInfo = connectivityManager.getAllNetworkInfo()) != null) {
                for (int i10 = 0; i10 < allNetworkInfo.length; i10++) {
                    if (allNetworkInfo[i10].getTypeName().equalsIgnoreCase(t7.a.f97141e) && allNetworkInfo[i10].isConnected()) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Throwable th) {
            f83921f.e(th);
        }
    }

    public static String f(Context context) {
        if (!a(context, com.kuaishou.weapon.p0.g.f74780d)) {
            f83921f.e("Could not get permission of android.permission.ACCESS_WIFI_STATE");
            return "";
        }
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
            return wifiManager == null ? "" : wifiManager.getConnectionInfo().getMacAddress();
        } catch (Exception e10) {
            f83921f.e(e10);
            return "";
        }
    }

    public static boolean g(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            if (a(context, com.kuaishou.weapon.p0.g.f74777a) && a(context, com.kuaishou.weapon.p0.g.f74778b)) {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                return connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.getTypeName().equalsIgnoreCase(t7.a.f97141e);
            }
            f83921f.warn("can not get the permisson of android.permission.INTERNET");
        } catch (Throwable th) {
            f83921f.e(th);
        }
        return false;
    }

    public static boolean h(Context context) {
        try {
            if (a(context, com.kuaishou.weapon.p0.g.f74777a) && a(context, com.kuaishou.weapon.p0.g.f74778b)) {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager != null) {
                    NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                    if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                        return true;
                    }
                    f83921f.w("Network error");
                    return false;
                }
            } else {
                f83921f.warn("can not get the permisson of android.permission.INTERNET");
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static String i(Context context) {
        String str = f83917b;
        if (str != null) {
            return str;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null) {
                return null;
            }
            String string = applicationInfo.metaData.getString("TA_APPKEY");
            if (string != null) {
                f83917b = string;
                return string;
            }
            f83921f.w("Could not read APPKEY meta-data from AndroidManifest.xml");
            return null;
        } catch (Throwable unused) {
            f83921f.w("Could not read APPKEY meta-data from AndroidManifest.xml");
            return null;
        }
    }

    public static String a(long j10) {
        return new SimpleDateFormat("yyyyMMdd").format(new Date(j10));
    }

    public static synchronized String b(Context context) {
        String str = f83916a;
        if (str != null && str.trim().length() != 0) {
            return f83916a;
        }
        String strL = l(context);
        f83916a = strL;
        if (strL == null || strL.trim().length() == 0) {
            f83916a = Integer.toString(h().nextInt(Integer.MAX_VALUE));
        }
        return f83916a;
    }

    public static String c(String str) {
        if (str == null) {
            return null;
        }
        try {
            return new String(g.b(e.a(str.getBytes("UTF-8")), 0), "UTF-8");
        } catch (Throwable th) {
            f83921f.e(th);
            return str;
        }
    }

    public static String d(String str) {
        if (str == null) {
            return null;
        }
        try {
            return new String(e.b(g.a(str.getBytes("UTF-8"), 0)), "UTF-8");
        } catch (Throwable th) {
            f83921f.e(th);
            return str;
        }
    }

    public static String a(String str) {
        if (str == null) {
            return "0";
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            byte[] bArrDigest = messageDigest.digest();
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b10 : bArrDigest) {
                int i10 = b10 & 255;
                if (i10 < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(i10));
            }
            return stringBuffer.toString();
        } catch (Throwable unused) {
            return "0";
        }
    }

    public static String b(Context context, String str) {
        if (StatConfig.isEnableConcurrentProcess()) {
            if (f83922g == null) {
                f83922g = u(context);
            }
            if (f83922g != null) {
                return str + "_" + f83922g;
            }
        }
        return str;
    }

    public static HttpHost a(Context context) {
        NetworkInfo activeNetworkInfo;
        String extraInfo;
        if (context == null) {
            return null;
        }
        try {
            if (context.getPackageManager().checkPermission(com.kuaishou.weapon.p0.g.f74778b, context.getPackageName()) != 0 || (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) == null) {
                return null;
            }
            if ((activeNetworkInfo.getTypeName() != null && activeNetworkInfo.getTypeName().equalsIgnoreCase(t7.a.f97141e)) || (extraInfo = activeNetworkInfo.getExtraInfo()) == null) {
                return null;
            }
            if (!extraInfo.equals(com.join.android.app.common.utils.m.f34792c) && !extraInfo.equals(com.join.android.app.common.utils.m.f34793d) && !extraInfo.equals(com.join.android.app.common.utils.m.f34794e)) {
                if (extraInfo.equals(com.join.android.app.common.utils.m.f34791b)) {
                    return new HttpHost("10.0.0.200", 80);
                }
                return null;
            }
            return new HttpHost("10.0.0.172", 80);
        } catch (Throwable th) {
            f83921f.e(th);
        }
    }

    public static void a(JSONObject jSONObject, String str, String str2) {
        if (str2 != null) {
            try {
                if (str2.length() > 0) {
                    jSONObject.put(str, str2);
                }
            } catch (Throwable th) {
                f83921f.e(th);
            }
        }
    }

    public static boolean a(Context context, String str) {
        try {
            return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
        } catch (Throwable th) {
            f83921f.e(th);
            return false;
        }
    }

    public static byte[] a(byte[] bArr) throws IOException {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
        byte[] bArr2 = new byte[4096];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length * 2);
        while (true) {
            int i10 = gZIPInputStream.read(bArr2);
            if (i10 == -1) {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayInputStream.close();
                gZIPInputStream.close();
                byteArrayOutputStream.close();
                return byteArray;
            }
            byteArrayOutputStream.write(bArr2, 0, i10);
        }
    }
}
