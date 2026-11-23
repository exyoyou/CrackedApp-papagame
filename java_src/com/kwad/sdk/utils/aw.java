package com.kwad.sdk.utils;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import android.os.Build;
import android.os.Process;
import android.provider.Settings;
import com.join.mgps.Util.o0;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class aw {
    private static Map<String, Integer> bpQ;
    private static Set<String> bpR;
    private static Method bpS;

    static {
        HashSet hashSet = new HashSet();
        bpR = hashSet;
        hashSet.add("android.permission.REQUEST_INSTALL_PACKAGES");
        bpR.add("android.permission.WRITE_SETTINGS");
        bpR.add("android.permission.SYSTEM_ALERT_WINDOW");
    }

    public static int aA(Context context, String str) {
        int iAB;
        if (bpQ == null) {
            h(aa.di(context));
        }
        if (bpR.contains(str) && (iAB = aB(context, str)) != -2) {
            return iAB;
        }
        int iAC = aC(context, str);
        if (iAC != -2) {
            return iAC;
        }
        try {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        } catch (Throwable unused) {
            return iAC;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:25:0x0041 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:4:0x000c  */
    private static int aB(Context context, String str) {
        str.hashCode();
        switch (str) {
            case "android.permission.WRITE_SETTINGS":
                if (Build.VERSION.SDK_INT >= 23) {
                    try {
                        if (Settings.System.canWrite(context)) {
                            return 0;
                        }
                        return -1;
                    } catch (Throwable unused) {
                    }
                }
                return -2;
            case "android.permission.SYSTEM_ALERT_WINDOW":
                if (Build.VERSION.SDK_INT >= 23) {
                    try {
                        if (Settings.canDrawOverlays(context)) {
                            return 0;
                        }
                        return -1;
                    } catch (Throwable th) {
                        com.kwad.sdk.core.d.c.printStackTraceOnly(th);
                    }
                }
                return -2;
            case "android.permission.REQUEST_INSTALL_PACKAGES":
                if (Build.VERSION.SDK_INT >= 26) {
                    if (aa.dh(context)) {
                        return 0;
                    }
                    return -1;
                }
                return -2;
            default:
                return -2;
        }
    }

    private static int aC(Context context, String str) {
        if (bpQ == null || str == null || !bpQ.containsKey(str)) {
            return -2;
        }
        try {
            Integer num = bpQ.get(str);
            if (num == null) {
                return -2;
            }
            if (bpS == null) {
                Class cls = Integer.TYPE;
                Method declaredMethod = AppOpsManager.class.getDeclaredMethod("checkOp", cls, cls, String.class);
                bpS = declaredMethod;
                declaredMethod.setAccessible(true);
            }
            return ((Integer) bpS.invoke((AppOpsManager) context.getSystemService("appops"), num, Integer.valueOf(Binder.getCallingUid()), context.getPackageName())).intValue() == 0 ? 0 : -1;
        } catch (Exception e10) {
            com.kwad.sdk.core.d.c.printStackTrace(e10);
            return 0;
        }
    }

    public static boolean dK(Context context) {
        int i10;
        try {
            i10 = Settings.Secure.getInt(context.getContentResolver(), "accessibility_enabled");
        } catch (Throwable unused) {
            i10 = 0;
        }
        return i10 == 1;
    }

    private static void h(String[] strArr) {
        if (strArr == null) {
            return;
        }
        bpQ = new HashMap();
        for (String str : strArr) {
            try {
                int iIntValue = ((Integer) ab.c(AppOpsManager.class, "OP_" + hX(str))).intValue();
                if (iIntValue >= 0) {
                    bpQ.put(str, Integer.valueOf(iIntValue));
                }
            } catch (Throwable unused) {
            }
        }
    }

    private static String hX(String str) {
        if (str == null) {
            return null;
        }
        int iLastIndexOf = str.lastIndexOf(o0.f49827a);
        if (iLastIndexOf < 0) {
            return str;
        }
        try {
            return str.substring(iLastIndexOf + 1);
        } catch (Exception unused) {
            return str;
        }
    }
}
