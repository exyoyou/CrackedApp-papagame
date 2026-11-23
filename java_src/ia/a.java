package ia;

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
    private static final String f91527a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f91528b = d.b("vivo.app.security.IVivoPermissionService");

    /* JADX INFO: renamed from: ia.a$a, reason: collision with other inner class name */
    public static final class C1175a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f91529a = d.b("vivo.app.security.IVivoPermissionService$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f91530b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f91531c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f91530b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f91530b.get() != null) {
                return true;
            }
            if (f91531c) {
                return false;
            }
            i.a(f91530b, null, d.g(f91529a, "asInterface", IBinder.class));
            f91531c = true;
            return f91530b.get() != null;
        }
    }
}
