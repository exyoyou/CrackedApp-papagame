package com.xinzhu.overmind.client;

import androidx.annotation.Keep;
import com.xinzhu.overmind.client.hook.IOManager;
import java.io.File;

/* JADX INFO: loaded from: classes8.dex */
public class VMCore {
    public static final String TAG = "VMCoreJava";

    static {
        try {
            System.loadLibrary("overmind_a");
        } catch (Throwable unused) {
            System.loadLibrary("overmind");
        }
    }

    public static native void addIOBlacklist(String str);

    public static native void addIORule(String str, String str2);

    @Keep
    public static int getCallingUid(int i10) {
        return i10;
    }

    public static native void hideXposed();

    public static native void init(int i10, String str, String str2, String str3);

    public static native void initClientClassloader(ClassLoader classLoader);

    public static void initLibrary() {
        com.xinzhu.overmind.b.c(TAG, "Call initLibrary.");
    }

    @Keep
    public static String redirectPath(String str) {
        com.xinzhu.overmind.b.c(TAG, "redirectPath " + str + " " + IOManager.get().redirectPath(str));
        return IOManager.get().redirectPath(str);
    }

    public static native void waitForNativeDebugger();

    @Keep
    public static File redirectPath(File file) {
        com.xinzhu.overmind.b.c(TAG, "redirectPath " + file + " " + IOManager.get().redirectPath(file));
        return IOManager.get().redirectPath(file);
    }
}
