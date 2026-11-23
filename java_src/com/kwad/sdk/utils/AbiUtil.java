package com.kwad.sdk.utils;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import com.kwad.sdk.service.ServiceProvider;

/* JADX INFO: loaded from: classes2.dex */
public final class AbiUtil {
    private static Abi boc;

    public enum Abi {
        UNKNOWN,
        ARMEABI_V7A,
        ARM64_V8A
    }

    public static String cK(Context context) {
        return isArm64(context) ? "arm64-v8a" : "armeabi-v7a";
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0054 A[Catch: all -> 0x005e, TryCatch #1 {all -> 0x005e, blocks: (B:21:0x0042, B:22:0x0046, B:24:0x0054, B:25:0x0059), top: B:33:0x0042 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x0059 A[Catch: all -> 0x005e, TRY_LEAVE, TryCatch #1 {all -> 0x005e, blocks: (B:21:0x0042, B:22:0x0046, B:24:0x0054, B:25:0x0059), top: B:33:0x0042 }] */
    private static Abi cL(Context context) {
        Abi abi = boc;
        if (abi != null) {
            return abi;
        }
        if (Build.VERSION.SDK_INT >= 23) {
            boc = Process.is64Bit() ? Abi.ARM64_V8A : Abi.ARMEABI_V7A;
        } else {
            try {
                boc = ((Boolean) ab.callMethod(ab.a("dalvik.system.VMRuntime", "getRuntime", new Object[0]), "is64Bit", new Object[0])).booleanValue() ? Abi.ARM64_V8A : Abi.ARMEABI_V7A;
            } catch (Throwable th) {
                th.printStackTrace();
                if (context == null) {
                    try {
                        context = ServiceProvider.getContext();
                        if (context.getApplicationInfo().nativeLibraryDir.contains(com.join.mgps.mod.utils.d.f71902d)) {
                            boc = Abi.ARM64_V8A;
                        } else {
                            boc = Abi.UNKNOWN;
                        }
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                        boc = Abi.UNKNOWN;
                    }
                } else if (context.getApplicationInfo().nativeLibraryDir.contains(com.join.mgps.mod.utils.d.f71902d)) {
                    boc = Abi.ARM64_V8A;
                } else {
                    boc = Abi.UNKNOWN;
                }
            }
        }
        return boc;
    }

    public static boolean isArm64(Context context) {
        return cL(context) == Abi.ARM64_V8A;
    }
}
