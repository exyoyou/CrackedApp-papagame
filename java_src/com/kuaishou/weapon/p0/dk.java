package com.kuaishou.weapon.p0;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import dalvik.system.VMRuntime;

/* JADX INFO: loaded from: classes3.dex */
public final class dk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f74753a;

    public enum a {
        UNKNOWN,
        ARMEABI_V7A,
        ARM64_V8A
    }

    private dk() {
    }

    public static String a(Context context) {
        return b(context) ? "arm64-v8a" : "armeabi-v7a";
    }

    public static boolean b(Context context) {
        try {
            return c(context) == a.ARM64_V8A;
        } catch (Throwable unused) {
        }
    }

    private static a c(Context context) {
        a aVar = f74753a;
        if (aVar != null) {
            return aVar;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            f74753a = Process.is64Bit() ? a.ARM64_V8A : a.ARMEABI_V7A;
        } else {
            try {
                f74753a = ((Boolean) VMRuntime.class.getDeclaredMethod("is64Bit", new Class[0]).invoke(VMRuntime.class.getDeclaredMethod("getRuntime", new Class[0]).invoke(VMRuntime.class, new Object[0]), new Object[0])).booleanValue() ? a.ARM64_V8A : a.ARMEABI_V7A;
            } catch (Throwable th) {
                th.printStackTrace();
                try {
                    if (context.getApplicationInfo().nativeLibraryDir.contains(com.join.mgps.mod.utils.d.f71902d)) {
                        f74753a = a.ARM64_V8A;
                    } else {
                        f74753a = a.UNKNOWN;
                    }
                } catch (Throwable th2) {
                    th2.printStackTrace();
                    f74753a = a.UNKNOWN;
                }
            }
        }
        return f74753a;
    }
}
