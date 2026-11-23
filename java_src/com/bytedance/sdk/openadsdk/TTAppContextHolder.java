package com.bytedance.sdk.openadsdk;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import com.byazt.bog.a;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 80, 81, 82, 1297})
public class TTAppContextHolder {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static volatile Context f23364c;

    @com.byazt.zqa.c(c = {0, 80, 81, 82, 1446})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @SuppressLint({"StaticFieldLeak"})
        private static volatile Application f23365c;

        static {
            try {
                Object objTt = tt();
                f23365c = (Application) objTt.getClass().getMethod("getApplication", new Class[0]).invoke(objTt, new Object[0]);
                a.uj("MyApplication", "application get success");
            } catch (Throwable th) {
                a.n("MyApplication", "application get failed", th);
            }
        }

        public static Application c() {
            return f23365c;
        }

        private static Object tt() {
            try {
                Method method = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", new Class[0]);
                method.setAccessible(true);
                return method.invoke(null, new Object[0]);
            } catch (Throwable th) {
                a.n("MyApplication", "ActivityThread get error, maybe api level <= 4.2.2", th);
                return null;
            }
        }
    }

    public static Context getContext() {
        if (f23364c == null) {
            setContext(null);
        }
        return f23364c;
    }

    public static synchronized void setContext(Context context) {
        if (f23364c == null) {
            if (context != null) {
                f23364c = context.getApplicationContext();
            } else if (c.c() != null) {
                try {
                    Application applicationC = c.c();
                    f23364c = applicationC;
                    if (applicationC != null) {
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }
}
