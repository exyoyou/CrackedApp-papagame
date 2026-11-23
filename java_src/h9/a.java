package h9;

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
    private static final String f91446a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f91447b = d.b("android.permission.IPermissionManager");

    /* JADX INFO: renamed from: h9.a$a, reason: collision with other inner class name */
    public static final class C1169a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f91448a = d.b("android.permission.IPermissionManager$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f91449b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f91450c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f91449b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f91449b.get() != null) {
                return true;
            }
            if (f91450c) {
                return false;
            }
            i.a(f91449b, null, d.g(f91448a, "asInterface", IBinder.class));
            f91450c = true;
            return f91449b.get() != null;
        }
    }
}
