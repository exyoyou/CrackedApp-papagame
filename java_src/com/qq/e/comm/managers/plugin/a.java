package com.qq.e.comm.managers.plugin;

import com.tencent.bugly.crashreport.CrashReport;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Method f78339a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f78340b;

    private static void a(Throwable th) throws Throwable {
        if (f78340b) {
            return;
        }
        if (f78339a == null) {
            Method declaredMethod = CrashReport.class.getDeclaredMethod("postCatchedException", Throwable.class);
            f78339a = declaredMethod;
            declaredMethod.setAccessible(true);
        }
        f78339a.invoke(null, th);
    }

    public static void a(Throwable th, String str) {
        try {
            a(new Exception("插件错误：" + str, th));
        } catch (Throwable unused) {
            f78340b = true;
        }
    }
}
