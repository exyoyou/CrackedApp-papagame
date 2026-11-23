package k9;

import androidx.lifecycle.i;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f92149a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f92150b = com.xinzhu.haunted.d.b("android.security.net.config.ApplicationConfig");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Method> f92151c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f92152d = false;

    public static boolean a(Object obj) {
        if (f92151c.get() != null) {
            return true;
        }
        if (f92152d) {
            return false;
        }
        i.a(f92151c, null, com.xinzhu.haunted.d.g(f92150b, "setDefaultInstance", "android.security.net.config.ApplicationConfig"));
        f92152d = true;
        return f92151c.get() != null;
    }

    public static void b(Object obj) {
        if (a(obj)) {
            try {
                f92151c.get().invoke(null, obj);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }
}
