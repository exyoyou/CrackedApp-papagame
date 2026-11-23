package com.umeng.commonsdk.internal.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Environment;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import com.byazt.hv.TTDownloadField;
import com.join.mgps.Util.o0;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.ULog;
import java.io.File;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: com.umeng.commonsdk.internal.utils.a$a, reason: collision with other inner class name */
    public static class C1058a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f85246a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f85247b;
    }

    public static long a(Context context, String str) {
        if (context == null) {
            return 0L;
        }
        try {
            PackageInfo packageInfoA = com.umeng.commonsdk.utils.b.a().a(context, str, 64);
            if (packageInfoA != null) {
                return packageInfoA.firstInstallTime;
            }
            return 0L;
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context, th);
            ULog.e("getAppFirstInstallTime" + th.getMessage());
            return 0L;
        }
    }

    public static void b(Context context) {
    }

    public static String c(Context context, String str) {
        try {
            return context.getPackageManager().getInstallerPackageName(str);
        } catch (Exception e10) {
            UMCrashManager.reportCrash(context, e10);
            ULog.e("getAppInstaller:" + e10.getMessage());
            return null;
        }
    }

    public static int d(Context context, String str) {
        ApplicationInfo applicationInfo;
        if (context == null) {
            return 0;
        }
        try {
            PackageInfo packageInfoA = com.umeng.commonsdk.utils.b.a().a(context, str, 64);
            if (packageInfoA == null || (applicationInfo = packageInfoA.applicationInfo) == null) {
                return 0;
            }
            return applicationInfo.uid;
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context, th);
            ULog.e("getAppUid:" + th.getMessage());
            return 0;
        }
    }

    public static DisplayMetrics e(Context context) {
        if (context == null) {
            return null;
        }
        return context.getResources().getDisplayMetrics();
    }

    public static List<C1058a> f(Context context) {
        String[] list;
        if (context == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            File file = new File(Environment.getExternalStorageDirectory() + "/Android/data/");
            if (file.isDirectory() && (list = file.list()) != null && list.length > 0) {
                for (String str : list) {
                    if (str != null && !str.startsWith(o0.f49827a)) {
                        C1058a c1058a = new C1058a();
                        c1058a.f85246a = str;
                        c1058a.f85247b = e(context, str);
                        arrayList.add(c1058a);
                    }
                }
            }
        } catch (Exception e10) {
            ULog.e("getAppList:" + e10.getMessage());
        }
        return arrayList;
    }

    public static ActivityManager.MemoryInfo g(Context context) {
        ActivityManager activityManager;
        if (context == null || (activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)) == null) {
            return null;
        }
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo;
    }

    public static String h(Context context) {
        return null;
    }

    public static String i(Context context) {
        return null;
    }

    public static long b(Context context, String str) {
        if (context == null) {
            return 0L;
        }
        try {
            PackageInfo packageInfoA = com.umeng.commonsdk.utils.b.a().a(context, str, 64);
            if (packageInfoA != null) {
                return packageInfoA.lastUpdateTime;
            }
            return 0L;
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context, th);
            ULog.e("getAppLastUpdateTime:" + th.getMessage());
            return 0L;
        }
    }

    private static String e(Context context, String str) {
        if (context == null) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 128);
            if (applicationInfo != null) {
                return (String) applicationInfo.loadLabel(context.getPackageManager());
            }
            return null;
        } catch (Exception e10) {
            ULog.e("getLabel:" + e10.getMessage());
            return null;
        }
    }

    public static int c(Context context) {
        if (context == null) {
            return 0;
        }
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", "android"));
    }

    public static boolean a() {
        return h.a();
    }

    public static float a(Context context) {
        if (context == null) {
            return 0.0f;
        }
        Configuration configuration = new Configuration();
        try {
            configuration.updateFrom(context.getResources().getConfiguration());
            return configuration.fontScale;
        } catch (Exception e10) {
            ULog.e("getFontSize:" + e10.getMessage());
            return 0.0f;
        }
    }

    public static String b() {
        return new SimpleDateFormat().format(new Date());
    }

    public static int d(Context context) {
        if (context == null) {
            return 0;
        }
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", "android"));
    }

    public static long c() {
        return System.currentTimeMillis() - SystemClock.elapsedRealtime();
    }

    public static String d() {
        try {
            Method declaredMethod = Build.class.getDeclaredMethod("getString", String.class);
            declaredMethod.setAccessible(true);
            String string = declaredMethod.invoke(null, "net.hostname").toString();
            return (string == null || string.equalsIgnoreCase("")) ? string : HelperUtils.getUmengMD5(string);
        } catch (Exception e10) {
            ULog.e("getHostName:" + e10.getMessage());
            return null;
        }
    }
}
