package com.join.android.app.common.utils;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Process;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.DisplayCutout;
import android.view.KeyCharacterMap;
import android.view.ViewConfiguration;
import android.view.Window;
import android.view.WindowInsets;
import androidx.annotation.RequiresApi;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.MApplication;
import com.byazt.hv.TTDownloadField;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.join.mgps.Util.h1;
import com.join.mgps.Util.t2;
import com.windmill.sdk.point.PointType;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static String f34813b = "q";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static q f34814c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static String f34815d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static String f34816e = "";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f34817a;

    private q(Context context) {
        this.f34817a = context;
    }

    public static boolean D() {
        for (String str : Build.SUPPORTED_ABIS) {
            if (str.contains(com.join.mgps.mod.utils.d.f71903e)) {
                return true;
            }
        }
        return false;
    }

    public static boolean E() {
        for (String str : Build.SUPPORTED_ABIS) {
            if (str.contains("64")) {
                return true;
            }
        }
        return false;
    }

    public static boolean F(Context context, String packageName) {
        try {
            List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningTasks(100);
            if (runningTasks.size() <= 0) {
                return false;
            }
            Iterator<ActivityManager.RunningTaskInfo> it2 = runningTasks.iterator();
            while (it2.hasNext()) {
                if (it2.next().topActivity.getPackageName().equals(packageName)) {
                    return true;
                }
            }
        } catch (SecurityException e10) {
            e10.printStackTrace();
        }
        return false;
    }

    public static boolean G(Context context) {
        try {
            List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningTasks(1);
            return (runningTasks.isEmpty() || runningTasks.get(0).topActivity.getPackageName().equals(context.getPackageName())) ? false : true;
        } catch (Exception unused) {
        }
    }

    public static boolean I(Context context) {
        try {
            List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningTasks(1);
            if (!runningTasks.isEmpty()) {
                ComponentName componentName = runningTasks.get(0).topActivity;
                if (!componentName.getPackageName().equals(context.getPackageName()) && componentName.getClassName().equals("com.join.mgps.activity_SplashActivity")) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean J(Context context) {
        return (TextUtils.isEmpty(u()) || TextUtils.isEmpty(f(context)) || x() == null || !f(context).equals(x().getComponentName().getClassName())) ? false : true;
    }

    public static boolean a(Context context) {
        return (ViewConfiguration.get(context).hasPermanentMenuKey() ^ true) & (KeyCharacterMap.deviceHasKey(4) ^ true);
    }

    public static String f(Context context) {
        ComponentName componentName = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningTasks(1).get(0).topActivity;
        return componentName.getPackageName().equals(context.getPackageName()) ? componentName.getClassName() : "";
    }

    public static String l() {
        try {
            return "35" + (Build.BOARD.length() % 10) + (Build.BRAND.length() % 10) + (Build.CPU_ABI.length() % 10) + (Build.DEVICE.length() % 10) + (Build.DISPLAY.length() % 10) + (Build.HOST.length() % 10) + (Build.ID.length() % 10) + (Build.MANUFACTURER.length() % 10) + (Build.MODEL.length() % 10) + (Build.PRODUCT.length() % 10) + (Build.TAGS.length() % 10) + (Build.TYPE.length() % 10) + (Build.USER.length() % 10);
        } catch (Exception e10) {
            e10.printStackTrace();
            return "35";
        }
    }

    public static q n(Context context) {
        if (f34814c == null) {
            f34814c = new q(context);
        }
        return f34814c;
    }

    private static String p() {
        String strL = "";
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            String string = "";
            while (networkInterfaces.hasMoreElements()) {
                try {
                    NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                    byte[] hardwareAddress = networkInterfaceNextElement.getHardwareAddress();
                    if (hardwareAddress != null && hardwareAddress.length != 0) {
                        StringBuilder sb2 = new StringBuilder();
                        for (byte b10 : hardwareAddress) {
                            sb2.append(String.format("%02X:", Byte.valueOf(b10)));
                        }
                        if (sb2.length() > 0) {
                            sb2.deleteCharAt(sb2.length() - 1);
                        }
                        string = sb2.toString();
                        if ("wlan0".equals(networkInterfaceNextElement.getName())) {
                            strL = string;
                        }
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("interfaceName=");
                        sb3.append(networkInterfaceNextElement.getName());
                        sb3.append(", mac=");
                        sb3.append(string);
                    }
                } catch (Exception unused) {
                    strL = string;
                    if (t2.h(strL)) {
                        strL = l();
                    }
                }
            }
            if (!t2.i(strL)) {
                strL = string;
            }
        } catch (Exception unused2) {
        }
        return t2.h(strL) ? l() : strL;
    }

    public static int t(Context context) {
        Resources resources;
        int identifier;
        if (!a(context) || (identifier = (resources = context.getResources()).getIdentifier("navigation_bar_height", "dimen", "android")) <= 0) {
            return 0;
        }
        return resources.getDimensionPixelSize(identifier);
    }

    public static String u() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File("/proc/" + Process.myPid() + "/cmdline")));
            String strTrim = bufferedReader.readLine().trim();
            bufferedReader.close();
            return strTrim;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static int v(Context context) {
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", "android"));
    }

    public static String w() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(Build.SUPPORTED_ABIS));
        return m1.a.a("|", arrayList);
    }

    public static Activity x() {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object objInvoke = cls.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
            Field declaredField = cls.getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            for (Object obj : ((Map) declaredField.get(objInvoke)).values()) {
                if (obj != null) {
                    Class<?> cls2 = obj.getClass();
                    Field declaredField2 = cls2.getDeclaredField("paused");
                    declaredField2.setAccessible(true);
                    if (!declaredField2.getBoolean(obj)) {
                        Field declaredField3 = cls2.getDeclaredField(TTDownloadField.TT_ACTIVITY);
                        declaredField3.setAccessible(true);
                        return (Activity) declaredField3.get(obj);
                    }
                }
            }
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
        } catch (NoSuchFieldException e12) {
            e12.printStackTrace();
        } catch (NoSuchMethodException e13) {
            e13.printStackTrace();
        } catch (InvocationTargetException e14) {
            e14.printStackTrace();
        }
        return null;
    }

    public String A() {
        try {
            return this.f34817a.getPackageManager().getPackageInfo(this.f34817a.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public String[] B() {
        String[] strArr = new String[2];
        try {
            PackageInfo packageInfo = this.f34817a.getPackageManager().getPackageInfo(this.f34817a.getPackageName(), 0);
            strArr[0] = packageInfo.versionCode + "";
            strArr[1] = packageInfo.versionName;
            return strArr;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return strArr;
        }
    }

    public int C(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    @RequiresApi(api = 28)
    public boolean H(Window window) {
        DisplayCutout displayCutout;
        WindowInsets rootWindowInsets = window.getDecorView().getRootWindowInsets();
        return (rootWindowInsets == null || (displayCutout = rootWindowInsets.getDisplayCutout()) == null || displayCutout.getBoundingRects() == null) ? false : true;
    }

    public void b(Context context, int requestCode) {
        if (ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74780d) != 0) {
            ActivityCompat.requestPermissions((Activity) context, new String[]{com.kuaishou.weapon.p0.g.f74780d}, requestCode);
        }
    }

    public boolean c(Context context) {
        try {
            String[] strArr = {"com.papa91.ons", "com.dsemu.drastic", "org.mupen64plusae.v3.alpha", "com.wufun.dc", "com.papa91.dc"};
            for (int i10 = 0; i10 < 5; i10++) {
                if (F(context, strArr[i10])) {
                    return true;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return false;
    }

    public boolean d(Context context) {
        try {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningAppProcesses();
            List listAsList = Arrays.asList("fc", "fba", "gba", "gbc", LiveConfigKey.MEDIUM, "ps", "sfc", "wsc", "psp");
            Iterator<ActivityManager.RunningAppProcessInfo> it2 = runningAppProcesses.iterator();
            while (it2.hasNext()) {
                String str = it2.next().processName;
                h1.e("appProcess", str);
                if (str.contains(":")) {
                    String[] strArrSplit = str.split(":");
                    if (strArrSplit.length > 1 && listAsList.contains(strArrSplit[1])) {
                        return true;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return false;
    }

    public String e(Context context) {
        if (context != null) {
            return !TextUtils.isEmpty(MApplication.K) ? MApplication.K : Settings.System.getString(context.getContentResolver(), "android_id");
        }
        return "";
    }

    public float g() {
        new DisplayMetrics();
        return this.f34817a.getApplicationContext().getResources().getDisplayMetrics().density;
    }

    public float h(Context context) {
        new DisplayMetrics();
        return context.getApplicationContext().getResources().getDisplayMetrics().density;
    }

    public String i() {
        try {
            if (t2.h(f34816e) || f34816e.startsWith(PointType.WIND_ADAPTER) || f34816e.equals(t2.l(f34815d, ":", ""))) {
                if (Build.VERSION.SDK_INT < 29) {
                    f34816e = ((TelephonyManager) this.f34817a.getSystemService("phone")).getDeviceId();
                }
                if (t2.h(f34816e) || f34816e.equals("0")) {
                    f34816e = t2.l(o(), ":", "");
                }
            }
        } catch (Exception unused) {
            f34816e = t2.l(o(), ":", "");
        }
        return f34816e;
    }

    public float j(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        float f10 = displayMetrics.widthPixels;
        float f11 = displayMetrics.heightPixels;
        return f10 > f11 ? f10 / f11 : f11 / f10;
    }

    public int k(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public String m() {
        String deviceId;
        String subscriberId;
        String line1Number = "";
        if (Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission(this.f34817a, com.kuaishou.weapon.p0.g.f74779c) != 0) {
            return "";
        }
        TelephonyManager telephonyManager = (TelephonyManager) this.f34817a.getSystemService("phone");
        try {
            deviceId = telephonyManager.getDeviceId();
        } catch (Throwable th) {
            th.printStackTrace();
            deviceId = "";
        }
        try {
            subscriberId = telephonyManager.getSubscriberId();
        } catch (Exception e10) {
            e10.printStackTrace();
            subscriberId = "";
        }
        String str = Build.MODEL;
        String str2 = Build.BRAND;
        try {
            line1Number = telephonyManager.getLine1Number();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return "[version:" + A() + ",imei:" + deviceId + ",imsi:" + subscriberId + ",model:" + str + ",brand:" + str2 + ",number:" + line1Number + "]";
    }

    public String o() {
        try {
            if (t2.i(f34815d)) {
                return f34815d;
            }
            String macAddress = ((WifiManager) this.f34817a.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI)).getConnectionInfo().getMacAddress();
            f34815d = macAddress;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("手机macAdd:");
            sb2.append(macAddress);
            String str = f34815d;
            if (str == null || str.equals("") || f34815d.equals("02:00:00:00:00:00")) {
                f34815d = p();
            }
            return f34815d;
        } catch (Exception unused) {
            String str2 = f34815d;
            if (str2 == null || str2.equals("") || f34815d.equals("02:00:00:00:00:00")) {
                f34815d = p();
            }
        }
    }

    public String q() {
        return Build.MODEL;
    }

    public int r() {
        return Build.VERSION.SDK_INT;
    }

    public String s() {
        return Build.VERSION.RELEASE;
    }

    public String y() {
        return Build.BRAND;
    }

    public int z() {
        try {
            return this.f34817a.getPackageManager().getPackageInfo(this.f34817a.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return 0;
        }
    }
}
