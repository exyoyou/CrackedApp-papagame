package com.sdk.base.framework.utils.log;

import android.util.Log;
import com.sdk.base.module.manager.SDKManager;

/* JADX INFO: loaded from: classes2.dex */
public class LogUtils {
    public static final String CSTR_TIMES_END = "ms\n";
    public static final String CSTR_TIMES_START = "\n时间差=";
    private static boolean DEBUG = false;
    private static final int RETURN_NOLOG = -1;
    private static long lastTimeMillis;

    public static int d(String str, String str2, Boolean bool) {
        if (str2 == null) {
            str2 = "";
        }
        if (bool.booleanValue()) {
            return Log.d(str, str2);
        }
        return -1;
    }

    public static int d_yl(String str, String str2, int i10) {
        if (!DEBUG) {
            return -1;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j10 = jCurrentTimeMillis - lastTimeMillis;
        String str3 = "时间戳=" + jCurrentTimeMillis;
        long j11 = 500;
        if (j10 > j11) {
            str3 = str3 + "\n■★■★■★■★■★■★■★■★■★■\n";
        }
        String str4 = (str3 + CSTR_TIMES_START + j10 + CSTR_TIMES_END) + str2;
        if (j10 > j11) {
            str4 = str4 + "\n\n■★■★■★■★■★■★■★■★■★■\n";
        }
        LiveDataBus3.get();
        LiveDataBus3.post(str4);
        lastTimeMillis = jCurrentTimeMillis;
        if (i10 >= 2 || !SDKManager.isDebug()) {
            return -1;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(str4);
        return -1;
    }

    public static int e(String str, String str2, Boolean bool) {
        if (str2 == null) {
            str2 = "";
        }
        if (bool.booleanValue()) {
            return Log.e(str, str2);
        }
        return -1;
    }

    public static int i(String str, String str2, Boolean bool) {
        if (str2 == null) {
            str2 = "";
        }
        if (bool.booleanValue()) {
            return Log.i(str, str2);
        }
        return -1;
    }

    public static boolean isDEBUG() {
        return DEBUG;
    }

    public static void setDEBUG(boolean z10) {
        DEBUG = z10;
    }

    public static int w(String str, String str2, Boolean bool) {
        if (str2 == null) {
            str2 = "";
        }
        if (bool.booleanValue()) {
            return Log.w(str, str2);
        }
        return -1;
    }
}
