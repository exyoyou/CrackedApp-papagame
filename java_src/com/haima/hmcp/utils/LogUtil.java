package com.haima.hmcp.utils;

import android.text.TextUtils;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class LogUtil {
    private static final String SDK_TAG = "saas_network-";

    public static void d(String str) {
        d(getFileNameInfo(), str);
    }

    public static void e(Exception exc) {
        e(getFileNameInfo(), "", exc);
    }

    public static void efmt(String str, Object... objArr) {
        efmt(getFileNameInfo(), str, objArr);
    }

    private static String getFileNameInfo() {
        return Thread.currentThread().getStackTrace()[4].getFileName();
    }

    private static String getLineInfo() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        return String.format("%s()%5s ", stackTrace[4].getMethodName(), Integer.valueOf(stackTrace[4].getLineNumber()));
    }

    public static void i(String str) {
        i(getFileNameInfo(), str);
    }

    public static void iUpload(String str) {
        iUpload(getFileNameInfo(), str);
    }

    public static void ifmt(String str, Object... objArr) {
        ifmt(getFileNameInfo(), str, objArr);
    }

    public static void printStackTrace(Throwable th) {
        th.printStackTrace();
    }

    public static void w(String str) {
        w(getFileNameInfo(), str);
    }

    public static void d(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(SDK_TAG);
        sb2.append(str);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(getLineInfo());
        sb3.append(str2);
    }

    public static void e(String str, Exception exc) {
        e(str, "", exc);
    }

    public static void efmt(String str, String str2, Object... objArr) {
        String str3 = String.format(Locale.US, str2, objArr);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getLineInfo());
        sb2.append(str3);
    }

    public static void i(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(SDK_TAG);
        sb2.append(str);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(getLineInfo());
        sb3.append(str2);
    }

    public static void iUpload(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(SDK_TAG);
        sb2.append(str);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(getLineInfo());
        sb3.append(str2);
    }

    public static void ifmt(String str, String str2, Object... objArr) {
        String str3 = String.format(Locale.US, str2, objArr);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getLineInfo());
        sb2.append(str3);
    }

    public static void w(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(SDK_TAG);
        sb2.append(str);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(getLineInfo());
        sb3.append(str2);
    }

    public static void e(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(SDK_TAG);
        sb2.append(str);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(getLineInfo());
        sb3.append(str2);
    }

    public static void e(String str, String str2, Exception exc) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(SDK_TAG);
        sb2.append(str);
        TextUtils.isEmpty(str2);
    }
}
