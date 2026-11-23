package com.byazt.vx;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import com.byazt.hv.TTDownloadField;
import java.lang.reflect.Method;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 962, 196})
public class gr {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f21406c;

    public static boolean c(Context context) {
        try {
            String packageName = context.getPackageName();
            return !TextUtils.isEmpty(packageName) && packageName.equalsIgnoreCase(tt(context));
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    public static String tt(Context context) {
        if (!TextUtils.isEmpty(f21406c)) {
            return f21406c;
        }
        String strC = c();
        f21406c = strC;
        if (!TextUtils.isEmpty(strC)) {
            return f21406c;
        }
        String strTt = tt();
        f21406c = strTt;
        if (!TextUtils.isEmpty(strTt)) {
            return f21406c;
        }
        String strVe = ve(context);
        f21406c = strVe;
        return strVe;
    }

    private static String ve(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        if (context == null) {
            return null;
        }
        int iMyPid = Process.myPid();
        ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
        if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == iMyPid) {
                    return runningAppProcessInfo.processName;
                }
            }
        }
        return null;
    }

    private static String c() {
        if (Build.VERSION.SDK_INT < 28) {
            return null;
        }
        try {
            return Application.getProcessName();
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
            return null;
        }
    }

    private static String tt() {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread", false, Application.class.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, new Object[0]);
            if (objInvoke instanceof String) {
                return (String) objInvoke;
            }
            return null;
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
            return null;
        }
    }
}
