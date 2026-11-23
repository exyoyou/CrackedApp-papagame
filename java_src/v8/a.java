package v8;

import androidx.lifecycle.i;
import com.xinzhu.haunted.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f97519a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f97520b = d.b("android.ddm.DdmHandleAppName");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Method> f97521c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f97522d = false;

    public static boolean a(String str, int i10) {
        if (f97521c.get() != null) {
            return true;
        }
        if (f97522d) {
            return false;
        }
        i.a(f97521c, null, d.g(f97520b, "setAppName", String.class, Integer.TYPE));
        f97522d = true;
        return f97521c.get() != null;
    }

    public static void b(String str, int i10) {
        if (a(str, i10)) {
            try {
                f97521c.get().invoke(null, str, Integer.valueOf(i10));
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }
}
