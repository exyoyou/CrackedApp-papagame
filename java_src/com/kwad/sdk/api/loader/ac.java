package com.kwad.sdk.api.loader;

import android.os.Build;
import android.os.Process;

/* JADX INFO: loaded from: classes2.dex */
final class ac {
    public static String Ex() {
        return is64Bit() ? "arm64-v8a" : "armeabi-v7a";
    }

    static boolean is64Bit() {
        if (Build.VERSION.SDK_INT >= 23) {
            return Process.is64Bit();
        }
        try {
            return ((Boolean) ApiReflect.cW("dalvik.system.VMRuntime").cZ("getRuntime").cZ("is64Bit").get()).booleanValue();
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
