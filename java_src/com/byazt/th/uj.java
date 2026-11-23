package com.byazt.th;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import com.byazt.bog.a;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.MethodUtils;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 78, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f20186c;
    public static List<String> tt = new CopyOnWriteArrayList();

    private static String c() {
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
                if (ZeusLogger.isDebug()) {
                    ZeusLogger.d("Process", "get processName = " + sb2.toString());
                }
                String string = sb2.toString();
                try {
                    bufferedReader.close();
                } catch (Exception unused) {
                }
                return string;
            } catch (Throwable unused2) {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (Exception unused3) {
                    }
                }
                return null;
            }
        } catch (Throwable unused4) {
            bufferedReader = null;
        }
    }

    public static boolean tt(Context context) {
        String strC = c(context);
        return (strC == null || !strC.contains(":")) && strC != null && strC.equals(context.getPackageName());
    }

    public static String c(Context context) {
        if (!TextUtils.isEmpty(f20186c)) {
            return f20186c;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            String processName = Application.getProcessName();
            if (!TextUtils.isEmpty(processName)) {
                f20186c = processName;
            }
            return f20186c;
        }
        try {
            Object objInvokeStaticMethod = MethodUtils.invokeStaticMethod(Class.forName("android.app.ActivityThread"), "currentProcessName", new Object[0]);
            if (!TextUtils.isEmpty((String) objInvokeStaticMethod)) {
                f20186c = (String) objInvokeStaticMethod;
            }
            return f20186c;
        } catch (Exception e10) {
            a.c(e10);
            String strC = c();
            f20186c = strC;
            return strC;
        }
    }

    public static String c(String str) {
        return (TextUtils.isEmpty(str) || !str.contains(":")) ? "main" : str.split(":")[1];
    }
}
