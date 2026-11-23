package com.czhj.sdk.common.utils;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.BatteryManager;
import android.os.Build;
import android.os.IBinder;
import android.os.StatFs;
import android.os.SystemClock;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.byazt.hv.TTDownloadField;
import com.czhj.sdk.logger.SigmobLog;
import com.haima.hmcp.Constants;
import com.kuaishou.weapon.p0.g;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes9.dex */
public class DeviceUtils {
    private static String A = null;
    private static Display B = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f25593b = 31457280;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f25594c = "getSimState";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f25595d = "getImei";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f25596e = "getLine1Number";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f25597f = 31457280;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f25598g = 104857600;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f25599h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static String f25600i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static String f25602k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static String f25603l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static volatile String f25604m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static String f25605n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static boolean f25607p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static long f25608q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static long f25609r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static long f25610s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static long f25611t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static Network f25613v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static long f25614w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static String f25615x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static String f25616y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static String f25617z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String[] f25592a = {"/system/lib/libdroid4x.so", "/system/bin/mount.vboxsf", "/system/lib/vboxguest.ko", "/etc/mumu-configs", "/system/lib/vboxsf.ko", "/system/lib/vboxvideo.ko", "/data/.bluestacks.prop", "/system/bin/microvirt-vbox-sf", "/system/lib/tboxsf.ko", "/system/bin/androVM-vbox-sf", "/system/bin/microvirtd", "/system/bin/windroyed", "/system/lib/libdroid4x.so"};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static int f25601j = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static NetworkType f25606o = NetworkType.UNKNOWN;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final ArrayList<Network> f25612u = new ArrayList<>();

    public static class NetBroadcastReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action != null && action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                DeviceUtils.updateNetworkType(context);
            }
        }
    }

    public enum NetworkType {
        UNKNOWN(0),
        ETHERNET(101),
        WIFI(100),
        MOBILE(1),
        MOBILE_2G(2),
        MOBILE_3G(3),
        MOBILE_4G(4),
        MOBILE_5G(5);

        private final int mId;

        NetworkType(int i10) {
            this.mId = i10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static NetworkType b(Context context, int i10) {
            if (i10 != 0) {
                if (i10 == 1) {
                    return WIFI;
                }
                if (i10 != 2 && i10 != 3 && i10 != 4 && i10 != 5) {
                    return i10 != 9 ? UNKNOWN : ETHERNET;
                }
            }
            return DeviceUtils.getDataNetworkType(context);
        }

        public int getId() {
            return this.mId;
        }

        @Override // java.lang.Enum
        public String toString() {
            return Integer.toString(this.mId);
        }
    }

    public static long diskCacheSizeBytes(File file, long j10) {
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            j10 = (((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize())) / 50;
        } catch (IllegalArgumentException unused) {
            SigmobLog.d("Unable to calculate 2% of available disk space, defaulting to minimum");
        }
        return Math.max(Math.min(j10, 104857600L), 31457280L);
    }

    public static NetworkType getActiveNetworkType() {
        return f25606o;
    }

    public static synchronized String getAndroidId(Context context) {
        if (f25604m == null && context != null) {
            try {
                f25604m = Settings.Secure.getString(context.getContentResolver(), "android_id");
            } catch (Throwable th) {
                SigmobLog.e(th.getMessage());
                f25604m = "";
            }
        }
        return f25604m;
    }

    public static String getApkSha1OrMd5(Context context, String str) {
        Signature[] signatureArr;
        Signature signature;
        String str2;
        String str3;
        String strSubstring = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.equals("SHA1") && (str3 = f25615x) != null) {
            return str3;
        }
        if (str.equals("MD5") && (str2 = f25616y) != null) {
            return str2;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
            if (packageInfo != null && (signatureArr = packageInfo.signatures) != null && signatureArr.length > 0 && (signature = signatureArr[0]) != null) {
                byte[] bArrDigest = MessageDigest.getInstance(str).digest(signature.toByteArray());
                StringBuilder sb2 = new StringBuilder();
                for (byte b10 : bArrDigest) {
                    sb2.append(Integer.toHexString((b10 & 255) | 256).substring(1, 3).toUpperCase());
                    sb2.append(":");
                }
                strSubstring = sb2.substring(0, sb2.length() - 1);
                if (str.equals("SHA1")) {
                    f25615x = strSubstring;
                } else if (str.equals("MD5")) {
                    f25616y = strSubstring;
                }
            }
        } catch (Exception e10) {
            SigmobLog.e(e10.getMessage());
        }
        return strSubstring;
    }

    @SuppressLint({"PrivateApi"})
    public static int getAppLaunchCount(Context context, String str) {
        try {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
            SigmobLog.d("getAppLaunchCount==" + str);
            if (launchIntentForPackage == null) {
                return 0;
            }
            ComponentName component = launchIntentForPackage.getComponent();
            SigmobLog.d("getAppLaunchCount==" + str);
            Object objInvoke = Class.forName("com.android.internal.app.IUsageStats$Stub").getMethod("asInterface", IBinder.class).invoke(null, Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "usagestats"));
            if (objInvoke == null) {
                return 0;
            }
            Object objInvoke2 = objInvoke.getClass().getMethod("getPkgUsageStats", ComponentName.class).invoke(objInvoke, component);
            SigmobLog.d("getAppLaunchCount==" + str);
            if (objInvoke2 == null) {
                return 0;
            }
            Class<?> cls = Class.forName("com.android.internal.os.PkgUsageStats");
            SigmobLog.d("getAppLaunchCount==" + str);
            return cls.getDeclaredField("launchCount").getInt(objInvoke2);
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static float getBatteryLevel(Context context) {
        BatteryManager batteryManager = (BatteryManager) context.getSystemService("batterymanager");
        if (batteryManager == null) {
            return 0.0f;
        }
        return batteryManager.getIntProperty(4) / 100.0f;
    }

    public static boolean getBatterySaveEnable(Context context) {
        BatteryManager batteryManager = (BatteryManager) context.getSystemService("batterymanager");
        return batteryManager != null && batteryManager.getIntProperty(4) < 16;
    }

    public static int getBatteryState(Context context) {
        int i10 = Build.VERSION.SDK_INT;
        BatteryManager batteryManager = (BatteryManager) context.getSystemService("batterymanager");
        if (batteryManager == null) {
            return 0;
        }
        int intProperty = i10 >= 26 ? batteryManager.getIntProperty(6) : 0;
        if (intProperty == 2) {
            return 2;
        }
        if (intProperty == 3 || intProperty == 4) {
            return 1;
        }
        return intProperty != 5 ? 0 : 3;
    }

    public static String getBlueToothName(Context context) {
        if (TextUtils.isEmpty(f25605n)) {
            try {
                f25605n = Settings.Secure.getString(context.getContentResolver(), "bluetooth_name");
            } catch (Throwable th) {
                SigmobLog.e(th.getMessage());
            }
        }
        return f25605n;
    }

    public static long getBootSystemTime() {
        return System.currentTimeMillis() - SystemClock.elapsedRealtime();
    }

    public static String getCPUInfo() {
        try {
            return Build.SUPPORTED_ABIS[0];
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return null;
        }
    }

    public static String getCell_ip() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    if (!inetAddressNextElement.isLoopbackAddress() && (inetAddressNextElement instanceof Inet4Address)) {
                        return inetAddressNextElement.getHostAddress();
                    }
                }
            }
            return com.join.mgps.socket.entity.b.f73008j;
        } catch (Exception e10) {
            e10.printStackTrace();
            return com.join.mgps.socket.entity.b.f73008j;
        }
    }

    public static ConnectivityManager getConnectivityManager(Context context) {
        if (context == null) {
            return null;
        }
        return (ConnectivityManager) context.getSystemService("connectivity");
    }

    @SuppressLint({"MissingPermission"})
    public static NetworkType getDataNetworkType(Context context) {
        int subtype;
        NetworkInfo activeNetworkInfo;
        SigmobLog.d("getDataNetworkType ");
        TelephonyManager telephonyManager = getTelephonyManager(context);
        if (telephonyManager == null) {
            subtype = 0;
        } else if (Build.VERSION.SDK_INT >= 24) {
            subtype = telephonyManager.getDataNetworkType();
        } else {
            try {
                subtype = telephonyManager.getNetworkType();
            } catch (Exception unused) {
                subtype = 0;
            }
        }
        ConnectivityManager connectivityManager = getConnectivityManager(context);
        if (subtype == 0 && connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
            subtype = activeNetworkInfo.getSubtype();
        }
        SigmobLog.d("getDataNetworkType " + subtype);
        if (subtype == 20) {
            return NetworkType.MOBILE_5G;
        }
        switch (subtype) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return NetworkType.MOBILE_2G;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return NetworkType.MOBILE_3G;
            case 13:
                return NetworkType.MOBILE_4G;
            default:
                return NetworkType.MOBILE;
        }
    }

    public static float getDensityDpi(Context context) {
        try {
            return getRealMetrics(context).densityDpi;
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return 0.0f;
        }
    }

    public static String getDeviceBrand() {
        return Build.BRAND;
    }

    public static String getDeviceDispaly() {
        return Build.DISPLAY;
    }

    public static Locale getDeviceLocale(Context context) {
        try {
            return context.getResources().getConfiguration().locale;
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return null;
        }
    }

    public static String getDeviceManufacturer() {
        return Build.MANUFACTURER;
    }

    public static String getDeviceModel() {
        return Build.MODEL;
    }

    public static String getDeviceName(Context context) {
        try {
            return Settings.Global.getString(context.getContentResolver(), "device_name");
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return null;
        }
    }

    public static int getDeviceOSLevel() {
        return Build.VERSION.SDK_INT;
    }

    public static String getDeviceOsVersion() {
        return Build.VERSION.RELEASE;
    }

    public static int getDeviceScreenHeightDip(Context context) {
        if (context == null) {
            return 0;
        }
        return Dips.screenHeightAsIntDips(context);
    }

    public static int getDeviceScreenRealHeightDip(Context context) {
        if (context == null) {
            return 0;
        }
        return Dips.pixelsToIntDips(getRealMetrics(context).heightPixels, context);
    }

    public static int getDeviceScreenRealWidthDip(Context context) {
        if (context == null) {
            return 0;
        }
        return Dips.pixelsToIntDips(getRealMetrics(context).widthPixels, context);
    }

    public static int getDeviceScreenWidthDip(Context context) {
        return Dips.screenWidthAsIntDips(context);
    }

    public static String getDeviceSerial() {
        return Build.SERIAL;
    }

    public static String getDeviceType(Context context) {
        return isTablet(context) ? "pad" : "phone";
    }

    public static Display getDisplay(Context context) {
        if (B == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager == null) {
                return null;
            }
            B = windowManager.getDefaultDisplay();
        }
        return B;
    }

    public static DisplayMetrics getDisplayMetrics(Context context) {
        try {
            return context.getResources().getDisplayMetrics();
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return null;
        }
    }

    public static String getNetworkOperator(Context context) {
        String str = A;
        if (str != null) {
            return str;
        }
        TelephonyManager telephonyManager = getTelephonyManager(context);
        if (telephonyManager != null) {
            A = (telephonyManager.getPhoneType() == 2 && telephonyManager.getSimState() == 5) ? telephonyManager.getSimOperator() : telephonyManager.getNetworkOperator();
            if (A == null) {
                A = "";
            }
        }
        return A;
    }

    public static String getNetworkOperatorForUrl(Context context) {
        return getNetworkOperator(context);
    }

    public static String getNetworkOperatorName(Context context) {
        String str = f25617z;
        if (str != null) {
            return str;
        }
        TelephonyManager telephonyManager = getTelephonyManager(context);
        if (telephonyManager != null) {
            f25617z = (telephonyManager.getPhoneType() == 2 && telephonyManager.getSimState() == 5) ? telephonyManager.getSimOperatorName() : telephonyManager.getNetworkOperatorName();
            if (f25617z == null) {
                f25617z = "";
            }
        }
        return f25617z;
    }

    public static int getOrientationInt(Context context) {
        return context.getResources().getConfiguration().orientation;
    }

    public static String getProperty(String str) {
        try {
            Object objInvoke = Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
            if (objInvoke instanceof String) {
                return (String) objInvoke;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static DisplayMetrics getRealMetrics(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Display display = getDisplay(context);
        if (display == null) {
            return context.getResources().getDisplayMetrics();
        }
        display.getRealMetrics(displayMetrics);
        return displayMetrics;
    }

    public static String getRotation(Context context) {
        Display display = getDisplay(context);
        if (display == null) {
            return "0";
        }
        int rotation = display.getRotation();
        if (rotation == 1) {
            return "90";
        }
        if (rotation != 2) {
            return rotation != 3 ? "0" : "270";
        }
        return "180";
    }

    public static String getSDCardPath(Context context) {
        StorageManager storageManager = (StorageManager) context.getSystemService(Constants.WS_MESSAGE_TYPE_STORAGE);
        if (Build.VERSION.SDK_INT >= 24) {
            Iterator it2 = storageManager.getStorageVolumes().iterator();
            while (it2.hasNext()) {
                StorageVolume storageVolumeA = b.a(it2.next());
                if (storageVolumeA.isRemovable()) {
                    try {
                        return (String) storageVolumeA.getClass().getMethod("getPath", new Class[0]).invoke(storageVolumeA, new Object[0]);
                    } catch (Exception e10) {
                        SigmobLog.e(e10.getMessage());
                    }
                }
            }
        } else {
            try {
                Method method = storageManager.getClass().getMethod("getVolumeList", new Class[0]);
                Class<?> cls = Class.forName("android.os.storage.StorageVolume");
                Method method2 = cls.getMethod("getPath", new Class[0]);
                Method method3 = cls.getMethod("isRemovable", new Class[0]);
                Object objInvoke = method.invoke(storageManager, new Object[0]);
                if (objInvoke == null) {
                    return null;
                }
                int length = Array.getLength(objInvoke);
                for (int i10 = 0; i10 < length; i10++) {
                    try {
                        Object obj = Array.get(objInvoke, i10);
                        Object objInvoke2 = method3.invoke(obj, new Object[0]);
                        if ((objInvoke2 instanceof Boolean) && ((Boolean) objInvoke2).booleanValue()) {
                            Object objInvoke3 = method2.invoke(obj, new Object[0]);
                            if (objInvoke3 instanceof String) {
                                return (String) objInvoke3;
                            }
                            continue;
                        }
                    } catch (Throwable unused) {
                    }
                }
            } catch (Throwable unused2) {
            }
        }
        return null;
    }

    public static long getSysteTotalMemorySize(Context context) {
        long j10 = f25614w;
        if (j10 > 0) {
            return j10;
        }
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            if (activityManager == null) {
                return 0L;
            }
            activityManager.getMemoryInfo(memoryInfo);
            long j11 = memoryInfo.totalMem;
            f25614w = j11;
            return j11;
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            return 0L;
        }
    }

    public static TelephonyManager getTelephonyManager(Context context) {
        if (context == null) {
            return null;
        }
        try {
            if (isCanUsePhoneState(context)) {
                return (TelephonyManager) context.getSystemService("phone");
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public static WindowManager getWindowManger(Context context) {
        return (WindowManager) context.getSystemService("window");
    }

    public static boolean isCanRetryIMEI() {
        boolean z10 = System.currentTimeMillis() - f25608q > 30000;
        if (z10) {
            f25608q = System.currentTimeMillis();
        }
        SigmobLog.d("isCanRetryIMEI status " + z10);
        return z10;
    }

    public static boolean isCanRetryLocation() {
        boolean z10 = System.currentTimeMillis() - f25610s > 36000;
        if (z10) {
            f25610s = System.currentTimeMillis();
        }
        SigmobLog.d("isCanRetryLocation status " + z10);
        return z10;
    }

    public static boolean isCanRetryWIFI() {
        boolean z10 = System.currentTimeMillis() - f25611t > 30000;
        if (z10) {
            f25611t = System.currentTimeMillis();
        }
        SigmobLog.d("isCanRetryWIFI status " + z10);
        return z10;
    }

    public static boolean isCanUseLocation(Context context) {
        boolean z10 = context.checkCallingOrSelfPermission(g.f74784h) == 0 || context.checkCallingOrSelfPermission(g.f74783g) == 0;
        SigmobLog.d("isCanUseLocation status " + z10);
        return z10;
    }

    public static boolean isCanUsePhoneState(Context context) {
        return context.checkCallingOrSelfPermission(g.f74779c) == 0;
    }

    public static boolean isCanUseWriteExternal(Context context) {
        boolean z10 = context.checkCallingOrSelfPermission(g.f74786j) == 0;
        SigmobLog.d("isCanUseWriteExternal status " + z10);
        return z10;
    }

    public static boolean isEmulator() {
        int i10 = f25601j;
        if (i10 > 0) {
            return i10 > 3;
        }
        try {
            String property = getProperty("gsm.version.baseband");
            if (TextUtils.isEmpty(property) || property.contains("1.0.0.0")) {
                f25601j++;
            }
            String property2 = getProperty("ro.build.flavor");
            if (TextUtils.isEmpty(property2)) {
                f25601j++;
            } else if (property2.contains("vbox") || property2.contains("sdk_gphone")) {
                f25601j += 10;
            }
            String property3 = getProperty("ro.product.board");
            if (TextUtils.isEmpty(property3)) {
                f25601j++;
            } else if (property3.contains("android") || property3.contains("goldfish")) {
                f25601j += 10;
            }
            String property4 = getProperty("ro.board.platform");
            if (TextUtils.isEmpty(property4) || property4.contains("android")) {
                f25601j++;
            }
            String str = Build.BRAND;
            if (TextUtils.isEmpty(str) || str.contains("android")) {
                f25601j++;
            }
            String property5 = getProperty("ro.hardware");
            if (property5 == null) {
                f25601j++;
            } else if (property5.toLowerCase().contains("ttvm") || property5.toLowerCase().contains("nox")) {
                int i11 = f25601j;
                f25601j = i11 + 10;
            }
            for (String str2 : f25592a) {
                if (new File(str2).exists()) {
                    SigmobLog.e("find emulator " + str2);
                    f25601j = f25601j + 10;
                }
            }
        } catch (Throwable unused) {
        }
        return f25601j > 3;
    }

    public static boolean isNetworkConnected() {
        return f25607p;
    }

    public static boolean isNetworkValid(NetworkCapabilities networkCapabilities) {
        if (networkCapabilities == null) {
            return false;
        }
        return networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(3) || networkCapabilities.hasTransport(4) || (Build.VERSION.SDK_INT >= 23 ? networkCapabilities.hasCapability(16) : false);
    }

    public static boolean isRoot() {
        return (new File("/system/bin/su").exists() && a("/system/bin/su")) || (new File("/system/xbin/su").exists() && a("/system/xbin/su"));
    }

    public static boolean isTablet(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    public static int memoryCacheSizeBytes(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
        if (activityManager == null) {
            return 0;
        }
        long memoryClass = activityManager.getMemoryClass();
        try {
            if (a(context.getApplicationInfo().flags, ApplicationInfo.class.getDeclaredField("FLAG_LARGE_HEAP").getInt(null))) {
                memoryClass = ((Integer) new ReflectionUtil.MethodBuilder(activityManager, "getLargeMemoryClass").execute()).intValue();
            }
        } catch (Throwable unused) {
            SigmobLog.d("Unable to reflectively determine large heap size.");
        }
        return (int) Math.min(31457280L, (memoryClass / 8) * 1024 * 1024);
    }

    @SuppressLint({"MissingPermission"})
    public static void registerNetworkChange(final Context context) {
        int i10 = Build.VERSION.SDK_INT;
        ConnectivityManager connectivityManager = getConnectivityManager(context);
        if (connectivityManager == null) {
            return;
        }
        ConnectivityManager.NetworkCallback networkCallback = new ConnectivityManager.NetworkCallback() { // from class: com.czhj.sdk.common.utils.DeviceUtils.1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                SigmobLog.d("updateNetworkType registerNetworkCallback onAvailable " + network.hashCode());
                super.onAvailable(network);
                DeviceUtils.f25612u.add(network);
                DeviceUtils.updateNetworkType(context);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                super.onCapabilitiesChanged(network, networkCapabilities);
                DeviceUtils.updateNetworkType(context);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                SigmobLog.d("updateNetworkType registerNetworkCallback onLost" + network.hashCode());
                super.onLost(network);
                NetworkType unused = DeviceUtils.f25606o = NetworkType.UNKNOWN;
                boolean unused2 = DeviceUtils.f25607p = false;
                try {
                    Network unused3 = DeviceUtils.f25613v = network;
                    DeviceUtils.f25612u.remove(network);
                    DeviceUtils.updateNetworkType(context);
                } catch (Throwable unused4) {
                }
            }
        };
        if (i10 >= 24) {
            connectivityManager.registerDefaultNetworkCallback(networkCallback);
        } else {
            connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addCapability(12).addTransportType(0).addTransportType(1).build(), networkCallback);
        }
    }

    public static void registerReceiver(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, boolean z10) {
        if (Build.VERSION.SDK_INT < 34 || context.getApplicationInfo().targetSdkVersion < 34) {
            context.registerReceiver(broadcastReceiver, intentFilter);
        } else {
            context.registerReceiver(broadcastReceiver, intentFilter, z10 ? 2 : 4);
        }
    }

    public static void resetRetryIMEI() {
        f25608q = 0L;
    }

    @SuppressLint({"MissingPermission"})
    public static void updateNetworkType(Context context) {
        NetworkType networkTypeB;
        NetworkCapabilities networkCapabilities;
        try {
            if (a(context)) {
                if (Build.VERSION.SDK_INT >= 23) {
                    Network activeNetwork = getConnectivityManager(context).getActiveNetwork();
                    if (activeNetwork == null || activeNetwork == f25613v) {
                        NetworkCapabilities networkCapabilities2 = null;
                        for (int size = f25612u.size() - 1; size >= 0; size--) {
                            networkCapabilities2 = getConnectivityManager(context).getNetworkCapabilities(f25612u.get(size));
                            if (networkCapabilities2 != null) {
                                break;
                            }
                        }
                        networkCapabilities = networkCapabilities2;
                    } else {
                        networkCapabilities = getConnectivityManager(context).getNetworkCapabilities(activeNetwork);
                    }
                    if (networkCapabilities == null) {
                        return;
                    }
                    f25607p = isNetworkValid(networkCapabilities);
                    networkTypeB = (networkCapabilities.hasCapability(12) && networkCapabilities.hasTransport(1)) ? NetworkType.WIFI : (networkCapabilities.hasCapability(12) && networkCapabilities.hasTransport(0)) ? getDataNetworkType(context) : NetworkType.UNKNOWN;
                } else {
                    NetworkInfo activeNetworkInfo = getConnectivityManager(context).getActiveNetworkInfo();
                    if (activeNetworkInfo != null) {
                        f25607p = activeNetworkInfo.isAvailable();
                    }
                    networkTypeB = NetworkType.b(context, activeNetworkInfo != null ? activeNetworkInfo.getType() : -1);
                }
                f25606o = networkTypeB;
            }
        } catch (Exception unused) {
        }
    }

    private static boolean a(int i10, int i11) {
        return (i10 & i11) != 0;
    }

    private static boolean a(Context context) {
        return context.checkCallingOrSelfPermission(g.f74777a) == 0;
    }

    private static boolean a(String str) {
        char cCharAt;
        Process processExec = null;
        try {
            processExec = Runtime.getRuntime().exec("ls -l " + str);
            String line = new BufferedReader(new InputStreamReader(processExec.getInputStream())).readLine();
            if (line != null && line.length() >= 4 && ((cCharAt = line.charAt(3)) == 's' || cCharAt == 'x')) {
                processExec.destroy();
                return true;
            }
        } catch (Throwable unused) {
            if (processExec == null) {
                return false;
            }
        }
        processExec.destroy();
        return false;
    }
}
