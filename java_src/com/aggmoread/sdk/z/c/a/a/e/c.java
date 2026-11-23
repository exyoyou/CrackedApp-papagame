package com.aggmoread.sdk.z.c.a.a.e;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.system.Os;
import android.system.StructStat;
import android.system.StructTimespec;
import android.text.TextUtils;
import android.util.Base64;
import android.view.ViewConfiguration;
import android.webkit.WebView;
import androidx.core.content.ContextCompat;
import com.byazt.bv.BaseConstants;
import com.byazt.hv.TTDownloadField;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.join.mgps.Util.o0;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f5211a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static long f5212b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f5213c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f5214d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static HashMap<String, Boolean> f5215e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static com.aggmoread.sdk.z.c.a.a.e.a f5216f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static char[] f5217g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicBoolean f5218h;

    static class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h.a().b("device_rooted", c.P());
        }
    }

    static class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                String userAgentString = new WebView(com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q).getSettings().getUserAgentString();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("ua str ");
                sb2.append(userAgentString);
                h.a().b("sdk_user_agent", userAgentString);
            } catch (Exception e10) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("ua str err");
                sb3.append(e10.getMessage());
            }
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.e.c$c, reason: collision with other inner class name */
    static class C0189c implements d.e {
        C0189c() {
        }

        @Override // com.aggmoread.sdk.z.c.a.a.e.d.e
        public void a(int i10, byte[] bArr, com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
            if (jVar != null || bArr == null) {
                return;
            }
            try {
                String strOptString = new JSONObject(new String(bArr)).optString("ip");
                StringBuilder sb2 = new StringBuilder();
                sb2.append("ip  ");
                sb2.append(strOptString);
                h.a().b("netIpAddress", strOptString);
                h.a().b("netIpAddress_lastTime", System.currentTimeMillis());
            } catch (Exception e10) {
                e10.printStackTrace();
                StringBuilder sb3 = new StringBuilder();
                sb3.append("get net ip err ,");
                sb3.append(e10.getMessage());
            }
        }
    }

    static {
        new Point(0, 0);
        f5215e = new HashMap<>();
        new AtomicBoolean();
        new AtomicBoolean();
        f5212b = System.currentTimeMillis();
        HashMap<String, Boolean> map = f5215e;
        Boolean bool = Boolean.FALSE;
        map.put("vivo", bool);
        f5215e.put("oppo", bool);
        HashMap<String, Boolean> map2 = f5215e;
        Boolean bool2 = Boolean.TRUE;
        map2.put("huawei", bool2);
        f5215e.put("honor", bool2);
        f5215e.put("samsung", bool2);
        f5215e.put("lenovo", bool2);
        f5215e.put("meitu", bool2);
        f5215e.put("lge", bool);
        f5217g = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
        f5218h = new AtomicBoolean();
    }

    public static String A() {
        return h.a().a("device_sero", "");
    }

    public static long B() {
        return System.currentTimeMillis() - (SystemClock.elapsedRealtimeNanos() / C.MICROS_PER_SECOND);
    }

    public static long C() {
        return Build.TIME;
    }

    public static int D() {
        if (f5214d == 0) {
            int scaledTouchSlop = ViewConfiguration.get(com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q).getScaledTouchSlop();
            f5214d = scaledTouchSlop * scaledTouchSlop;
        }
        return f5214d;
    }

    public static String E() {
        try {
            int i10 = Build.VERSION.SDK_INT;
            StructStat structStatStat = Os.stat("/data/data");
            if (i10 < 27) {
                return structStatStat.st_atime + ".0";
            }
            StructTimespec structTimespec = structStatStat.st_atim;
            return structTimespec.tv_sec + o0.f49827a + structTimespec.tv_nsec;
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static void F() {
        String strB;
        K();
        J();
        com.aggmoread.sdk.z.c.a.a.c.k kVarC = com.aggmoread.sdk.z.c.a.a.d.b.h.b().c();
        if (kVarC != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("oaid ");
            sb2.append(kVarC.o());
        }
        com.aggmoread.sdk.z.c.a.a.c.k kVarC2 = com.aggmoread.sdk.z.c.a.a.d.b.h.b().c();
        if (kVarC2 != null) {
            h.a().b("device_androidid", kVarC2.h());
            strB = kVarC2.j();
            if (TextUtils.isEmpty(strB)) {
                strB = kVarC2.h();
            }
        } else {
            strB = null;
        }
        if (TextUtils.isEmpty(strB)) {
            strB = b(com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q, false);
        }
        h.a().b("deviceId", strB);
    }

    public static void G() {
        h.a().b("device_appStore_ver", f());
    }

    public static void H() {
        h.a().b("device_browser_ver", j());
    }

    public static void I() {
    }

    private static void J() {
        if (TextUtils.isEmpty(n())) {
            String strF = p.f(UUID.randomUUID().toString() + System.currentTimeMillis() + w() + d(com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q) + Build.BRAND + Build.MODEL);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("initIdentifier str ");
            sb2.append(strF);
            h.a().b("sdk_identifier", strF);
        }
    }

    public static void K() {
        h.a().b("netIpAddress", (String) null);
        h.a().b("netIpAddress_lastTime", 0L);
        t();
    }

    public static void L() {
        h.a().b("device_rom_ver", m.b());
    }

    public static void M() {
    }

    public static void N() {
        q.a(new b());
    }

    public static boolean O() {
        try {
            boolean zA = h.a().a("device_rooted", false);
            if (f5218h.compareAndSet(false, true)) {
                e.b("xxxx", "check root");
                q.b(new a());
            }
            return zA;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean P() {
        try {
            return a() || b() || c();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean Q() {
        return f5211a && System.currentTimeMillis() - f5212b < 30000;
    }

    public static int a(String str) {
        if (str.length() <= 0) {
            return 0;
        }
        int i10 = 0;
        for (char c10 : str.toCharArray()) {
            i10 = (i10 * 31) + c10;
        }
        return i10;
    }

    public static float b(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    private static String c(Context context) {
        return null;
    }

    public static int d(Context context) {
        return context.getResources().getDisplayMetrics().densityDpi;
    }

    public static String e() {
        return h.a().a("device_appStore_ver", "");
    }

    private static String f() {
        String str;
        try {
            String lowerCase = Build.BRAND.toLowerCase();
            String lowerCase2 = Build.MANUFACTURER.toLowerCase();
            if (lowerCase.contains("huawei") || lowerCase2.contains("huawei")) {
                str = "com.huawei.appmarket";
            } else if (lowerCase.contains("honor") || lowerCase2.contains("honor")) {
                PackageInfo packageInfoB = b("com.hihonor.appmarket");
                if (packageInfoB != null) {
                    return packageInfoB.versionName;
                }
                str = "com.huawei.appmarket";
            } else if (lowerCase.contains(MediationConstant.ADN_XIAOMI) || lowerCase.contains("redmi")) {
                str = "com.xiaomi.market";
            } else if (lowerCase.contains("vivo") || lowerCase2.contains("vivo")) {
                str = "om.bbk.appstore";
            } else if (lowerCase.contains("oppo") || lowerCase2.contains("oppo") || lowerCase.contains("oneplus") || lowerCase2.contains("oneplus")) {
                PackageInfo packageInfoB2 = b("com.heytap.market");
                if (packageInfoB2 != null) {
                    return packageInfoB2.versionName;
                }
                str = "com.oppo.market";
            } else {
                str = na.d.f94512e;
            }
            return b(str).versionName;
        } catch (Exception e10) {
            e.b("AMDEHTAG", "get apv err " + e10.getMessage());
            return "";
        }
    }

    public static String g() {
        try {
            return com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q.getPackageManager().getPackageInfo(com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q.getPackageName(), 0).versionName;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String h() {
        String strTrim = "";
        try {
            File file = new File("/proc/sys/kernel/random/boot_id");
            if (file.exists()) {
                FileInputStream fileInputStream = null;
                try {
                    try {
                        FileInputStream fileInputStream2 = new FileInputStream(file);
                        try {
                            strTrim = new BufferedReader(new InputStreamReader(fileInputStream2)).readLine().trim();
                            try {
                                strTrim = strTrim.substring(0, 36);
                            } catch (Throwable unused) {
                            }
                            fileInputStream2.close();
                        } catch (IOException unused2) {
                            fileInputStream = fileInputStream2;
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            return strTrim;
                        } catch (Throwable th) {
                            th = th;
                            fileInputStream = fileInputStream2;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e10) {
                                    e10.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } catch (IOException e11) {
                        e11.printStackTrace();
                    }
                } catch (IOException unused3) {
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            th3.printStackTrace();
        }
        return strTrim;
    }

    public static String i() {
        return h.a().a("device_browser_ver", "");
    }

    private static String j() {
        String str;
        try {
            String lowerCase = Build.BRAND.toLowerCase();
            String lowerCase2 = Build.MANUFACTURER.toLowerCase();
            if (lowerCase.contains("huawei") || lowerCase2.contains("huawei")) {
                str = "com.huawei.browser";
            } else if (lowerCase.contains("honor") || lowerCase2.contains("honor")) {
                PackageInfo packageInfoB = b("com.hihonor.browser");
                if (packageInfoB != null) {
                    return packageInfoB.versionName;
                }
                str = "com.huawei.browser";
            } else if (lowerCase.contains(MediationConstant.ADN_XIAOMI) || lowerCase.contains("redmi")) {
                str = BaseConstants.KLLK_PROMOTION_NORMAL_PKG_INFO;
            } else if (lowerCase.contains("vivo") || lowerCase2.contains("vivo")) {
                str = "com.vivo.browser";
            } else {
                if (lowerCase.contains("oppo") || lowerCase2.contains("oppo")) {
                    PackageInfo packageInfoB2 = b(BaseConstants.KLLK_PROMOTION_HEYTAP_PKG_INFO);
                    if (packageInfoB2 != null) {
                        return packageInfoB2.versionName;
                    }
                } else if (lowerCase.contains("oneplus") || lowerCase2.contains("oneplus")) {
                    PackageInfo packageInfoB3 = b("com.oneplus.browser");
                    if (packageInfoB3 != null) {
                        return packageInfoB3.versionName;
                    }
                } else {
                    str = "";
                }
                str = "com.oppo.browser";
            }
            return b(str).versionName;
        } catch (Exception e10) {
            e.b("AMDEHTAG", "get bwv err " + e10.getMessage());
            return "";
        }
    }

    public static String k() {
        return h.a().a("deviceId", (String) null);
    }

    public static String l() {
        try {
            PackageInfo packageInfo = com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q.getPackageManager().getPackageInfo("com.huawei.hwid", 0);
            String str = packageInfo.versionName;
            e.b("AMDEHTAG", "hms ver = " + str + ", versionCode = " + packageInfo.versionCode);
            return str;
        } catch (Exception e10) {
            e.b("AMDEHTAG", "hms err " + e10.getMessage());
            return "";
        }
    }

    public static long m() {
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
            return statFs.getBlockSizeLong() * statFs.getBlockCountLong();
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static String n() {
        return h.a().a("sdk_identifier", (String) null);
    }

    public static String o() {
        return h.a().a("device_imsi", "");
    }

    public static String p() {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, "ro.miui.ui.version.name");
        } catch (Exception unused) {
            return null;
        }
    }

    public static long q() {
        ActivityManager activityManager = (ActivityManager) com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q.getSystemService(TTDownloadField.TT_ACTIVITY);
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem;
    }

    public static String r() {
        if (f5213c == null) {
            synchronized (c.class) {
                if (f5213c == null) {
                    String strA = d.a("xx00");
                    f5213c = strA;
                    f5213c = strA == null ? "00xx" : strA.substring(0, 10);
                }
            }
        }
        return f5213c;
    }

    public static String s() {
        String strA = h.a().a("netIpAddress", "");
        long jCurrentTimeMillis = System.currentTimeMillis() - h.a().a("netIpAddress_lastTime", 0L);
        e.b("AMDEHTAG", "getNetIpAddress delay = " + jCurrentTimeMillis);
        if (jCurrentTimeMillis > 600000) {
            t();
        }
        return strA;
    }

    private static void t() {
        d.a(p.b("https://s.peplle.cn") + ":28427/op/getIp", null, new C0189c());
    }

    public static String u() {
        NetworkInfo activeNetworkInfo;
        NetworkInfo.State state;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q.getSystemService("connectivity");
            if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable()) {
                NetworkInfo networkInfo = connectivityManager.getNetworkInfo(1);
                if (networkInfo != null && (state = networkInfo.getState()) != null && (state == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.CONNECTING)) {
                    return NetworkUtil.NETWORK_TYPE_WIFI;
                }
                NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(0);
                if (networkInfo2 != null) {
                    NetworkInfo.State state2 = networkInfo2.getState();
                    String subtypeName = networkInfo2.getSubtypeName();
                    if (state2 != null && (state2 == NetworkInfo.State.CONNECTED || state2 == NetworkInfo.State.CONNECTING)) {
                        int subtype = activeNetworkInfo.getSubtype();
                        if (subtype == 20) {
                            return "5G";
                        }
                        switch (subtype) {
                            case 0:
                                return "none";
                            case 1:
                            case 2:
                            case 4:
                            case 7:
                            case 11:
                                return "2G";
                            case 3:
                            case 5:
                            case 6:
                            case 8:
                            case 9:
                            case 10:
                            case 12:
                            case 14:
                            case 15:
                                return "3G";
                            case 13:
                                return "4G";
                            default:
                                return (subtypeName.equalsIgnoreCase("TD-SCDMA") || subtypeName.equalsIgnoreCase("WCDMA") || subtypeName.equalsIgnoreCase("CDMA2000")) ? "3G" : "none";
                        }
                        e.a("err " + e);
                    }
                }
                return "none";
            }
            return "none";
        } catch (Exception e10) {
            e.a("err " + e10);
        }
    }

    public static String v() {
        try {
            com.aggmoread.sdk.z.c.a.a.c.k kVarC = com.aggmoread.sdk.z.c.a.a.d.b.h.b().c();
            if (kVarC == null) {
                return "";
            }
            String strO = kVarC.o();
            e.b("AMDEHTAG", "oad " + strO);
            return strO;
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String w() {
        String str = Build.VERSION.RELEASE;
        if (str.length() == 1) {
            str = str + ".0.0";
        }
        if (str.length() != 3) {
            return str;
        }
        return str + ".0";
    }

    public static String x() {
        return h.a().a("device_rom_ver", "");
    }

    public static String y() {
        return "20102911";
    }

    public static String z() {
        WifiManager wifiManager;
        try {
            Context context = com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q;
            boolean z10 = !a(context);
            e.b("AMDEHTAG", "getSSID permission " + z10);
            if (z10 && (wifiManager = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)) != null) {
                String ssid = wifiManager.getConnectionInfo().getSSID();
                e.b("AMDEHTAG", "getSSID ssid " + ssid);
                return ssid.replace(x.a.f97579g, "");
            }
        } catch (Exception unused) {
        }
        return "";
    }

    private static String a(String str, int i10) {
        StringBuilder sb2 = new StringBuilder(str);
        int length = str.length();
        int length2 = f5217g.length;
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.insert(i.a(4, length - 1), f5217g[i.a(0, length2 - 1)]);
        }
        return sb2.toString();
    }

    private static PackageInfo b(String str) {
        return com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q.getPackageManager().getPackageInfo(str, 0);
    }

    private static boolean c() {
        Process processExec;
        BufferedReader bufferedReader = null;
        try {
            processExec = Runtime.getRuntime().exec(new String[]{"/system/xbin/which", "su"});
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
                try {
                    String line = bufferedReader2.readLine();
                    processExec.destroy();
                    a(bufferedReader2);
                    return line != null;
                } catch (Throwable unused) {
                    bufferedReader = bufferedReader2;
                    if (processExec != null) {
                        processExec.destroy();
                    }
                    a(bufferedReader);
                    return false;
                }
            } catch (Throwable unused2) {
            }
        } catch (Throwable unused3) {
            processExec = null;
        }
    }

    public static String d() {
        return h.a().a("device_androidid", "");
    }

    public static String e(Context context) {
        String strA = h.a().a("sdk_user_agent", "");
        return !TextUtils.isEmpty(strA) ? strA : System.getProperty("http.agent");
    }

    public static String f(Context context) {
        return UUID.randomUUID().toString();
    }

    public static boolean g(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    private static String a(byte[] bArr) throws NoSuchAlgorithmException, InvalidKeyException {
        Mac mac = Mac.getInstance(com.alipay.security.mobile.module.commonutils.crypto.c.f7275a);
        mac.init(new SecretKeySpec("d6fc3a4a06adbde89223bvefedc24fecde188aaa9161".getBytes(), mac.getAlgorithm()));
        return Base64.encodeToString(mac.doFinal(bArr), 2);
    }

    public static String b(Context context, boolean z10) {
        StringBuilder sb2;
        try {
            String strEncodeToString = Base64.encodeToString(a(context, z10), 2);
            String string = UUID.randomUUID().toString();
            if (!TextUtils.isEmpty(string)) {
                String[] strArrSplit = string.split("-");
                if (strArrSplit.length > 1) {
                    int iA = i.a(0, strArrSplit.length - 1);
                    sb2 = new StringBuilder();
                    sb2.append("ska+");
                    sb2.append(strEncodeToString);
                    sb2.append(strArrSplit[iA]);
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("ska+");
                    sb3.append(strEncodeToString);
                    sb3.append(strArrSplit[0]);
                    sb2 = sb3;
                }
                strEncodeToString = sb2.toString();
            }
            return a(strEncodeToString, 3);
        } catch (Exception e10) {
            e10.printStackTrace();
            return a("ska+" + f(context), 3);
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    private static boolean b() {
        String[] strArr = {"/system/app/Superuser.apk", "/sbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su", "/su/bin/su"};
        for (int i10 = 0; i10 < 10; i10++) {
            if (new File(strArr[i10]).exists()) {
                return true;
            }
        }
        return false;
    }

    private static boolean a() {
        String str = Build.TAGS;
        return str != null && str.contains("test-keys");
    }

    private static boolean a(Context context) {
        if (context.getApplicationInfo().targetSdkVersion < 29 || Build.VERSION.SDK_INT < 29) {
            return Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74783g) == -1 && ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74784h) == -1;
        }
        return ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74783g) == -1;
    }

    public static byte[] a(int i10) {
        byte[] bArr = {(byte) ((i >> 8) % 256), (byte) (i % 256), (byte) (i % 256), (byte) (i10 % 256)};
        int i11 = i10 >> 8;
        int i12 = i11 >> 8;
        return bArr;
    }

    private static byte[] a(Context context, boolean z10) throws IOException {
        Random random;
        String strC;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        int iNextInt = new Random().nextInt();
        byte[] bArrA = a(iCurrentTimeMillis);
        byte[] bArrA2 = a(iNextInt);
        byteArrayOutputStream.write(bArrA, 0, 4);
        byteArrayOutputStream.write(bArrA2, 0, 4);
        byteArrayOutputStream.write(3);
        byteArrayOutputStream.write(0);
        if (z10) {
            try {
                strC = c(context);
            } catch (Exception unused) {
                random = new Random();
                strC = String.valueOf(random.nextInt());
            }
            byteArrayOutputStream.write(a(a(strC)), 0, 4);
            byteArrayOutputStream.write(a(a(a(byteArrayOutputStream.toByteArray()))));
            return byteArrayOutputStream.toByteArray();
        }
        random = new Random();
        strC = String.valueOf(random.nextInt());
        byteArrayOutputStream.write(a(a(strC)), 0, 4);
        byteArrayOutputStream.write(a(a(a(byteArrayOutputStream.toByteArray()))));
        return byteArrayOutputStream.toByteArray();
    }
}
