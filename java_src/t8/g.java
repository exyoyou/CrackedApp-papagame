package t8;

import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f97205a = "g";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f97206b = com.xinzhu.haunted.d.b("android.content.ContentProviderNative");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Method> f97207c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f97208d = false;

    public static Object a(IBinder iBinder) {
        if (!b(iBinder)) {
            return null;
        }
        try {
            return f97207c.get().invoke(null, iBinder);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static boolean b(IBinder iBinder) {
        if (f97207c.get() != null) {
            return true;
        }
        if (f97208d) {
            return false;
        }
        androidx.lifecycle.i.a(f97207c, null, com.xinzhu.haunted.d.g(f97206b, "asInterface", IBinder.class));
        f97208d = true;
        return f97207c.get() != null;
    }
}
