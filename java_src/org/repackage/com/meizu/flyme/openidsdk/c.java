package org.repackage.com.meizu.flyme.openidsdk;

import android.content.Context;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes10.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f95967a = "OpenIdHelper";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Method f95968b;

    public static String a(Context context) {
        f fVarD = f.d();
        return fVarD.a(context.getApplicationContext(), fVarD.f95976a);
    }

    public static void b(boolean z10) {
        f.d();
        f.f(z10);
    }

    public static final boolean c() {
        Context context = null;
        try {
            if (f95968b == null) {
                Method method = Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]);
                f95968b = method;
                method.setAccessible(true);
            }
            context = (Context) f95968b.invoke(null, new Object[0]);
        } catch (Exception e10) {
            new StringBuilder("ActivityThread:currentApplication --> ").append(e10.toString());
        }
        if (context == null) {
            return false;
        }
        return f.d().h(context, false);
    }

    public static String d(Context context) {
        f fVarD = f.d();
        return fVarD.a(context.getApplicationContext(), fVarD.f95977b);
    }

    public static String e(Context context) {
        f fVarD = f.d();
        return fVarD.a(context.getApplicationContext(), fVarD.f95979d);
    }

    public static String f(Context context) {
        f fVarD = f.d();
        return fVarD.a(context.getApplicationContext(), fVarD.f95978c);
    }
}
