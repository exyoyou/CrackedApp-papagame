package k9;

import android.content.Context;
import androidx.lifecycle.i;
import com.sigmob.sdk.base.n;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f92153a = "b";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f92154b = com.xinzhu.haunted.d.b("android.security.net.config.NetworkSecurityConfigProvider");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Method> f92155c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f92156d = false;

    public static boolean a(Context context) {
        if (f92155c.get() != null) {
            return true;
        }
        if (f92156d) {
            return false;
        }
        i.a(f92155c, null, com.xinzhu.haunted.d.g(f92154b, n.f79590q, Context.class));
        f92156d = true;
        return f92155c.get() != null;
    }

    public static void b(Context context) {
        if (a(context)) {
            try {
                f92155c.get().invoke(null, context);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }
}
