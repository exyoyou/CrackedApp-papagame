package com.beizi.fusion.tool;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.byazt.hv.TTDownloadField;
import com.windmill.sdk.WMConstants;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Field;
import java.net.NetworkInterface;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class au {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f10577a = "SystemUtil";

    public static boolean a(Context context, String str) {
        PackageInfo packageInfo;
        if (context == null || str == null || str.isEmpty()) {
            return false;
        }
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 0);
        } catch (Throwable unused) {
            packageInfo = null;
        }
        return packageInfo != null;
    }

    public static void b(String str) {
    }

    public static String c(Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageName();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String d(Context context) {
        try {
            PackageInfo packageInfo = PackageUtil.getInstance().getPackageInfo(context);
            return packageInfo != null ? packageInfo.versionName : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    public static int e(Context context) {
        try {
            PackageInfo packageInfo = PackageUtil.getInstance().getPackageInfo(context);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
            return 0;
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static boolean f(Context context) {
        try {
            return (context.getApplicationInfo().flags & 2) != 0;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean g(Context context) {
        try {
            return Settings.Secure.getInt(context.getContentResolver(), "adb_enabled", 0) > 0;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean h(Context context) {
        try {
            String property = System.getProperty("http.proxyHost");
            String property2 = System.getProperty("http.proxyPort");
            if (property2 == null) {
                property2 = WMConstants.TIMER_STAGE_NONE;
            }
            return (TextUtils.isEmpty(property) || Integer.parseInt(property2) == -1) ? false : true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static float i(Context context) {
        float f10 = context.getResources().getDisplayMetrics().density;
        float f11 = context.getResources().getDisplayMetrics().widthPixels;
        if (f10 <= 0.0f) {
            f10 = 1.0f;
        }
        return (f11 / f10) + 0.5f;
    }

    public static float j(Context context) {
        return b(context, context.getResources().getDisplayMetrics().heightPixels);
    }

    public static float k(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static float l(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static int m(Context context) {
        return context.getApplicationContext().getResources().getDisplayMetrics().widthPixels;
    }

    public static int n(Context context) {
        return context.getApplicationContext().getResources().getDisplayMetrics().heightPixels;
    }

    public static boolean o(Context context) {
        boolean zEquals;
        boolean z10;
        int iIntValue;
        try {
            Object objInvoke = ActivityManager.class.getMethod(b.b(aa.a(), "alE/Wd6TQF6QDt5MOuPgTJhj5qydYaJMv1s3ioRo108="), new Class[0]).invoke((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY), new Object[0]);
            if (!(objInvoke instanceof List)) {
                return true;
            }
            String str = context.getApplicationInfo().packageName;
            Iterator it2 = ((List) objInvoke).iterator();
            if (!it2.hasNext()) {
                return true;
            }
            Object next = it2.next();
            Class<?> cls = next.getClass();
            try {
                Field declaredField = cls.getDeclaredField(b.b(aa.a(), "HmbXL1RJ0QhOMpVM8sDB4g=="));
                declaredField.setAccessible(true);
                Object obj = declaredField.get(next);
                zEquals = obj != null ? obj.equals(str) : true;
            } catch (Throwable th) {
                th.printStackTrace();
            }
            try {
                Field declaredField2 = cls.getDeclaredField(b.b(aa.a(), "Qw020bKiuI4Tpk03J/klVA=="));
                declaredField2.setAccessible(true);
                Object obj2 = declaredField2.get(next);
                z10 = !(obj2 instanceof Integer) || (iIntValue = ((Integer) obj2).intValue()) == 100 || iIntValue == 200;
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            return zEquals && z10;
        } catch (Throwable th3) {
            th3.printStackTrace();
            return true;
        }
    }

    public static Long p(Context context) {
        if (context == null) {
            return 0L;
        }
        try {
            PackageInfo packageInfo = PackageUtil.getInstance().getPackageInfo(context);
            if (packageInfo != null) {
                return Long.valueOf(packageInfo.lastUpdateTime);
            }
        } catch (Exception unused) {
        }
        return 0L;
    }

    public static long b(Context context) {
        try {
            PackageInfo packageInfo = PackageUtil.getInstance().getPackageInfo(context);
            if (packageInfo != null) {
                return packageInfo.lastUpdateTime;
            }
            return 0L;
        } catch (Throwable unused) {
            return 0L;
        }
    }

    private static boolean c(String str) {
        char cCharAt;
        Process processExec = null;
        try {
            processExec = Runtime.getRuntime().exec("ls -l " + str);
            String line = new BufferedReader(new InputStreamReader(processExec.getInputStream())).readLine();
            if (line != null && line.length() >= 4 && ((cCharAt = line.charAt(3)) == 's' || cCharAt == 'x')) {
                processExec.destroy();
                return true;
            }
        } catch (IOException unused) {
            if (processExec == null) {
                return false;
            }
        } finally {
            if (processExec != null) {
                processExec.destroy();
            }
        }
        return false;
    }

    public static long a(Context context) {
        try {
            PackageInfo packageInfo = PackageUtil.getInstance().getPackageInfo(context);
            if (packageInfo != null) {
                return packageInfo.firstInstallTime;
            }
            return 0L;
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static boolean b() {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                if ("tun0".equals(networkInterfaceNextElement.getName()) || "ppp0".equals(networkInterfaceNextElement.getName())) {
                    return true;
                }
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static String a() {
        if (new File("/system/bin/su").exists() && c("/system/bin/su")) {
            return "yes";
        }
        return (new File("/system/xbin/su").exists() && c("/system/xbin/su")) ? "yes" : "no";
    }

    public static int a(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static boolean a(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static int b(Context context, float f10) {
        return (int) ((f10 / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static void a(View view) {
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view);
            }
        }
    }
}
