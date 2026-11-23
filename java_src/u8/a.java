package u8;

import androidx.lifecycle.i;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f97452a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f97453b = com.xinzhu.haunted.d.b("android.content.res.ApkAssets");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Method> f97454c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f97455d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static AtomicReference<Method> f97456e = new AtomicReference<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f97457f = false;

    public static boolean a(String str, int i10) {
        if (f97454c.get() != null) {
            return true;
        }
        if (f97455d) {
            return false;
        }
        i.a(f97454c, null, com.xinzhu.haunted.d.g(f97453b, "loadFromPath", String.class, Integer.TYPE));
        f97455d = true;
        return f97454c.get() != null;
    }

    public static boolean b(String str, boolean z10) {
        if (f97456e.get() != null) {
            return true;
        }
        if (f97457f) {
            return false;
        }
        i.a(f97456e, null, com.xinzhu.haunted.d.g(f97453b, "loadFromPath", String.class, Boolean.TYPE));
        f97457f = true;
        return f97456e.get() != null;
    }

    public static Object c(String str, int i10) {
        if (!a(str, i10)) {
            return null;
        }
        try {
            return f97454c.get().invoke(null, str, Integer.valueOf(i10));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static Object d(String str, boolean z10) {
        if (!b(str, z10)) {
            return null;
        }
        try {
            return f97456e.get().invoke(null, str, Boolean.valueOf(z10));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }
}
