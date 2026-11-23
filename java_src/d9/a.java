package d9;

import android.os.IBinder;
import android.os.IInterface;
import androidx.lifecycle.i;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f90737a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f90738b = com.xinzhu.haunted.d.b("android.net.IConnectivityManager");

    /* JADX INFO: renamed from: d9.a$a, reason: collision with other inner class name */
    public static final class C1147a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f90739a = com.xinzhu.haunted.d.b("android.net.IConnectivityManager$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f90740b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f90741c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f90740b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f90740b.get() != null) {
                return true;
            }
            if (f90741c) {
                return false;
            }
            i.a(f90740b, null, com.xinzhu.haunted.d.g(f90739a, "asInterface", IBinder.class));
            f90741c = true;
            return f90740b.get() != null;
        }
    }
}
