package com.byazt.omf;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.util.SparseArray;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 31, 195})
public class gt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile gu<com.byazt.ddx.c> f18053c;
    public static volatile com.byazt.ogz.sl tt;
    public static volatile Context uj;
    public static final AtomicBoolean ve = new AtomicBoolean(false);

    @com.byazt.zqa.c(c = {0, 1, 31, 703})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @SuppressLint({"StaticFieldLeak"})
        public static volatile Application f18054c;

        static {
            try {
                Object objTt = tt();
                f18054c = (Application) objTt.getClass().getMethod("getApplication", new Class[0]).invoke(objTt, new Object[0]);
                com.byazt.nr.m.tt("MyApplication", "application get success");
            } catch (Throwable th) {
                com.byazt.nr.m.tt("MyApplication", "application get failed", th);
            }
        }

        public static Application c() {
            return f18054c;
        }

        private static Object tt() {
            try {
                Method method = Class.forName("android.app.ActivityThread").getMethod("currentActivityThread", new Class[0]);
                method.setAccessible(true);
                return method.invoke(null, new Object[0]);
            } catch (Throwable th) {
                com.byazt.nr.m.tt("MyApplication", "ActivityThread get error, maybe api level <= 4.2.2", th);
                return null;
            }
        }
    }

    public static synchronized void c(Context context) {
        if (uj == null && context != null) {
            uj = context.getApplicationContext();
        }
    }

    public static Context getContext() {
        if (uj == null) {
            uj = c.c();
        }
        return uj;
    }

    public static com.byazt.ogz.sl tt() {
        if (tt == null) {
            synchronized (com.byazt.ogz.sl.class) {
                if (tt == null) {
                    tt = new com.byazt.ogz.sl();
                }
            }
        }
        return tt;
    }

    public static gu<com.byazt.ddx.c> c() {
        if (f18053c == null) {
            synchronized (gt.class) {
                if (f18053c == null) {
                    f18053c = new gr(getContext());
                }
            }
        }
        return f18053c;
    }

    public static Function<SparseArray<Object>, Object> c(int i10) {
        return eo.c().c(i10);
    }
}
