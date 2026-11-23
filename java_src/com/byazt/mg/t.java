package com.byazt.mg;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 170, 66})
public class t {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f16908c;

    public static String c(Context context) {
        if (!TextUtils.isEmpty(f16908c)) {
            return f16908c;
        }
        String strC = c();
        f16908c = strC;
        if (!TextUtils.isEmpty(strC)) {
            return f16908c;
        }
        String strTt = tt();
        f16908c = strTt;
        if (!TextUtils.isEmpty(strTt)) {
            return f16908c;
        }
        String strVe = ve();
        f16908c = strVe;
        return strVe;
    }

    private static String tt() {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread", false, Application.class.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, new Object[0]);
            if (objInvoke instanceof String) {
                return (String) objInvoke;
            }
            return null;
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
            return null;
        }
    }

    private static String ve() {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + Process.myPid() + "/cmdline"), "iso-8859-1"));
            try {
                StringBuilder sb2 = new StringBuilder();
                while (true) {
                    int i10 = bufferedReader.read();
                    if (i10 <= 0) {
                        break;
                    }
                    sb2.append((char) i10);
                }
                String string = sb2.toString();
                try {
                    bufferedReader.close();
                } catch (IOException unused) {
                }
                return string;
            } catch (Throwable unused2) {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException unused3) {
                    }
                }
                return null;
            }
        } catch (Throwable unused4) {
            bufferedReader = null;
        }
    }

    private static String c() {
        if (Build.VERSION.SDK_INT < 28) {
            return null;
        }
        try {
            return Application.getProcessName();
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
            return null;
        }
    }
}
