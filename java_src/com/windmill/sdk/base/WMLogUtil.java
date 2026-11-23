package com.windmill.sdk.base;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes8.dex */
public class WMLogUtil {
    private static final boolean IS_DEBUG = false;
    public static String TAG = "Happy";
    public static boolean isEnableLog = true;

    public static String MapToString(HashMap<String, Object> bidInfo) {
        return bidInfo != null ? bidInfo.toString() : "";
    }

    public static void d(String TAG2, String msg) {
    }

    public static void dd(String tag, String msg) {
    }

    public static void e(String TAG2, String msg) {
    }

    public static void i(String TAG2, String msg) {
    }

    public static void log(String tag, String msg) {
        if (isEnableLog) {
            TextUtils.isEmpty(msg);
        }
    }

    public static void d(String msg) {
        if (isEnableLog) {
            TextUtils.isEmpty(msg);
        }
    }

    public static void e(String msg) {
        if (isEnableLog) {
            TextUtils.isEmpty(msg);
        }
    }

    public static void i(String msg) {
        if (isEnableLog) {
            TextUtils.isEmpty(msg);
        }
    }
}
