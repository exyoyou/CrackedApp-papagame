package com.czhj.sdk.common.utils;

import android.os.Looper;
import com.czhj.sdk.logger.SigmobLog;
import java.util.IllegalFormatException;

/* JADX INFO: loaded from: classes9.dex */
public final class Preconditions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f25661a = "";

    public static final class NoThrow {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static volatile boolean f25662a = true;

        public static boolean checkArgument(boolean z10) {
            return Preconditions.b(z10, f25662a, "Illegal argument", "");
        }

        public static boolean checkNotNull(Object obj) {
            return Preconditions.b(obj, f25662a, (String) null, "");
        }

        public static boolean checkUiThread(String str) {
            return Preconditions.b(f25662a, str, "");
        }

        public static String getLineInfo() {
            try {
                StackTraceElement stackTraceElement = new Throwable().getStackTrace()[2];
                return stackTraceElement.getFileName() + ": Line " + stackTraceElement.getMethodName();
            } catch (Throwable unused) {
                return "";
            }
        }

        public static boolean checkArgument(boolean z10, String str) {
            return Preconditions.b(z10, f25662a, str, "");
        }

        public static boolean checkNotNull(Object obj, String str) {
            return Preconditions.b(obj, f25662a, str, "");
        }
    }

    private Preconditions() {
    }

    private static String a(String str, Object... objArr) {
        String strValueOf = String.valueOf(str);
        try {
            return String.format(strValueOf, objArr);
        } catch (IllegalFormatException e10) {
            SigmobLog.e("Sigmob preconditions had a format exception: " + e10.getMessage());
            return strValueOf;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(Object obj, boolean z10, String str, Object... objArr) {
        if (obj != null) {
            return true;
        }
        String strA = a(str, objArr);
        if (z10) {
            throw new NullPointerException(strA);
        }
        SigmobLog.e(strA);
        return false;
    }

    private static boolean c(boolean z10, boolean z11, String str, Object... objArr) {
        if (z10) {
            return true;
        }
        String strA = a(str, objArr);
        if (z11) {
            throw new IllegalStateException(strA);
        }
        SigmobLog.e(strA);
        return false;
    }

    public static void checkNotNull(Object obj) {
        b(obj, true, "Object can not be null.", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(boolean z10, String str, Object... objArr) {
        if (Looper.getMainLooper().equals(Looper.myLooper())) {
            return true;
        }
        String strA = a(str, objArr);
        if (z10) {
            throw new IllegalStateException(strA);
        }
        SigmobLog.e(strA);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(boolean z10, boolean z11, String str, Object... objArr) {
        if (z10) {
            return true;
        }
        String strA = a(str, objArr);
        if (z11) {
            throw new IllegalArgumentException(strA);
        }
        SigmobLog.e(strA);
        return false;
    }
}
