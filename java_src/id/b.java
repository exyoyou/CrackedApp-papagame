package id;

import android.content.Context;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes10.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f91575a = "IdentifierManager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Object f91576b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Class<?> f91577c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Method f91578d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Method f91579e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Method f91580f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Method f91581g;

    static {
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            f91577c = cls;
            f91576b = cls.newInstance();
            f91578d = f91577c.getMethod("getUDID", Context.class);
            f91579e = f91577c.getMethod("getOAID", Context.class);
            f91580f = f91577c.getMethod("getVAID", Context.class);
            f91581g = f91577c.getMethod("getAAID", Context.class);
        } catch (Exception unused) {
        }
    }

    public static String a(Context context) {
        return b(context, f91578d);
    }

    private static String b(Context context, Method method) {
        Object obj = f91576b;
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

    public static boolean c() {
        return (f91577c == null || f91576b == null) ? false : true;
    }

    public static String d(Context context) {
        return b(context, f91579e);
    }

    public static String e(Context context) {
        return b(context, f91580f);
    }

    public static String f(Context context) {
        return b(context, f91581g);
    }
}
