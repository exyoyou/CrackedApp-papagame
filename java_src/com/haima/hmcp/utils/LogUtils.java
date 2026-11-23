package com.haima.hmcp.utils;

import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.haima.hmcp.countly.CountlyUtil;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class LogUtils {
    private static final String SDK_TAG = "saas_sdk-";

    public static void d(String str, String str2) {
        if (Constants.IS_DEBUG) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(SDK_TAG);
            sb2.append(str);
            StringBuilder sb3 = new StringBuilder();
            sb3.append(getLineInfo());
            sb3.append(str2);
        }
    }

    public static void e(String str, Exception exc) {
        e(str, "", exc);
    }

    public static void efmt(String str, String str2, Object... objArr) {
        if (Constants.IS_ERROR) {
            String.format(Locale.US, str2, objArr);
        }
    }

    private static String getLineInfo() {
        return "";
    }

    public static void i(String str, String str2) {
        if (Constants.IS_INFO) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(SDK_TAG);
            sb2.append(str);
            StringBuilder sb3 = new StringBuilder();
            sb3.append(getLineInfo());
            sb3.append(str2);
        }
    }

    public static void iUpload(String str, String str2) {
        CountlyUtil.recordErrorEvent(String.format("[%s] %s", str, str2));
        if (Constants.IS_INFO) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(SDK_TAG);
            sb2.append(str);
            StringBuilder sb3 = new StringBuilder();
            sb3.append(getLineInfo());
            sb3.append(str2);
        }
    }

    public static void ifmt(String str, String str2, Object... objArr) {
        if (Constants.IS_INFO) {
            String.format(Locale.US, str2, objArr);
        }
    }

    public static void printStackTrace(Throwable th) {
        if (Constants.IS_ERROR) {
            th.printStackTrace();
        }
    }

    public static void w(String str, String str2) {
        if (Constants.IS_ERROR) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(SDK_TAG);
            sb2.append(str);
            StringBuilder sb3 = new StringBuilder();
            sb3.append(getLineInfo());
            sb3.append(str2);
        }
    }

    public static void e(String str, String str2) {
        if (Constants.IS_ERROR) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(SDK_TAG);
            sb2.append(str);
            StringBuilder sb3 = new StringBuilder();
            sb3.append(getLineInfo());
            sb3.append(str2);
        }
    }

    public static void e(String str, String str2, Exception exc) {
        if (Constants.IS_ERROR) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(SDK_TAG);
            sb2.append(str);
            StringBuilder sb3 = new StringBuilder();
            sb3.append(getLineInfo());
            if (TextUtils.isEmpty(str2)) {
                str2 = "error:";
            }
            sb3.append(str2);
        }
    }
}
