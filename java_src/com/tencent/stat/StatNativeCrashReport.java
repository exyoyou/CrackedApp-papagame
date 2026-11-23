package com.tencent.stat;

import android.content.Context;
import com.tencent.stat.common.StatLogger;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes2.dex */
public class StatNativeCrashReport {
    public static final String PRE_TAG_TOMBSTONE_FNAME = "tombstone_";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f83800d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f83803c = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static StatLogger f83799b = com.tencent.stat.common.k.b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static StatNativeCrashReport f83798a = new StatNativeCrashReport();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f83801e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f83802f = null;

    static {
        f83800d = false;
        try {
            System.loadLibrary("MtaNativeCrash");
        } catch (Throwable th) {
            f83800d = false;
            f83799b.w(th);
        }
    }

    static String a(File file) {
        StringBuilder sb2 = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb2.append(line);
                sb2.append('\n');
            }
            bufferedReader.close();
        } catch (IOException e10) {
            f83799b.e((Exception) e10);
        }
        return sb2.toString();
    }

    static long b(File file) {
        try {
            return Long.valueOf(file.getName().replace(PRE_TAG_TOMBSTONE_FNAME, "")).longValue();
        } catch (NumberFormatException e10) {
            f83799b.e((Exception) e10);
            return 0L;
        }
    }

    public static void doNativeCrashTest() {
        f83798a.makeJniCrash();
    }

    public static String getTombstonesDir(Context context) {
        if (f83802f == null) {
            f83802f = com.tencent.stat.common.p.a(context, "__mta_tombstone__", "");
        }
        return f83802f;
    }

    public static void initNativeCrash(Context context, String str) {
        if (f83798a.f83803c) {
            return;
        }
        if (str == null) {
            try {
                str = context.getDir("tombstones", 0).getAbsolutePath();
            } catch (Throwable th) {
                f83799b.w(th);
                return;
            }
        }
        if (str.length() > 128) {
            f83799b.e("The length of tombstones dir: " + str + " can't exceeds 200 bytes.");
            return;
        }
        f83802f = str;
        com.tencent.stat.common.p.b(context, "__mta_tombstone__", str);
        setNativeCrashEnable(true);
        f83798a.initJNICrash(str);
        f83798a.f83803c = true;
        f83799b.d("initNativeCrash success.");
    }

    public static boolean isNativeCrashDebugEnable() {
        return f83801e;
    }

    public static boolean isNativeCrashEnable() {
        return f83800d;
    }

    public static String onNativeCrashHappened() {
        try {
            new RuntimeException("MTA has caught a native crash, java stack:\n").printStackTrace();
            return "";
        } catch (RuntimeException e10) {
            return e10.toString();
        }
    }

    public static void setNativeCrashDebugEnable(boolean z10) {
        try {
            f83798a.enableNativeCrashDebug(z10);
            f83801e = z10;
        } catch (Throwable th) {
            f83799b.w(th);
        }
    }

    public static void setNativeCrashEnable(boolean z10) {
        try {
            f83798a.enableNativeCrash(z10);
            f83800d = z10;
        } catch (Throwable th) {
            f83799b.w(th);
        }
    }

    public native void enableNativeCrash(boolean z10);

    public native void enableNativeCrashDebug(boolean z10);

    public native boolean initJNICrash(String str);

    public native String makeJniCrash();

    public native String stringFromJNI();

    static LinkedHashSet<File> a(Context context) {
        File[] fileArrListFiles;
        LinkedHashSet<File> linkedHashSet = new LinkedHashSet<>();
        String tombstonesDir = getTombstonesDir(context);
        if (tombstonesDir != null) {
            File file = new File(tombstonesDir);
            if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                for (File file2 : fileArrListFiles) {
                    if (file2.getName().startsWith(PRE_TAG_TOMBSTONE_FNAME) && file2.isFile()) {
                        f83799b.d("get tombstone file:" + file2.getAbsolutePath().toString());
                        linkedHashSet.add(file2.getAbsoluteFile());
                    }
                }
            }
        }
        return linkedHashSet;
    }
}
