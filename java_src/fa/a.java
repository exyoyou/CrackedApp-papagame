package fa;

import android.os.IBinder;
import android.os.IInterface;
import androidx.lifecycle.i;
import com.xinzhu.haunted.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f91168a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f91169b = d.b("meizu.security.IFlymePermissionService");

    /* JADX INFO: renamed from: fa.a$a, reason: collision with other inner class name */
    public static final class C1160a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f91170a = d.b("meizu.security.IFlymePermissionService$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f91171b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f91172c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f91171b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f91171b.get() != null) {
                return true;
            }
            if (f91172c) {
                return false;
            }
            i.a(f91171b, null, d.g(f91170a, "asInterface", IBinder.class));
            f91172c = true;
            return f91171b.get() != null;
        }
    }
}
