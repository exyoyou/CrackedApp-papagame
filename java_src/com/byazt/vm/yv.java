package com.byazt.vm;

import android.content.Context;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 165, 499})
public final class yv implements nu {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Object f21264c;
    public static Class<?> tt;
    public static Method ve;

    static {
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            tt = cls;
            f21264c = cls.newInstance();
            ve = tt.getMethod("getOAID", Context.class);
        } catch (Exception e10) {
            com.byazt.yv.da.c("Api#static reflect exception! " + e10.getMessage());
        }
    }

    public static boolean c() {
        return (tt == null || f21264c == null || ve == null) ? false : true;
    }

    @Override // com.byazt.vm.nu
    public boolean tt(Context context) {
        return c();
    }

    @Override // com.byazt.vm.nu
    public nu.c ve(Context context) {
        try {
            nu.c cVar = new nu.c();
            cVar.tt = c(context, ve);
            return cVar;
        } catch (Exception e10) {
            com.byazt.yv.da.c(e10);
            return null;
        }
    }

    private static String c(Context context, Method method) {
        Object obj = f21264c;
        if (obj == null || method == null) {
            return null;
        }
        try {
            Object objInvoke = method.invoke(obj, context);
            if (objInvoke != null) {
                return (String) objInvoke;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
