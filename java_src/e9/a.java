package e9;

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
    private static final String f90876a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f90877b = d.b("android.net.wifi.IWifiManager");

    /* JADX INFO: renamed from: e9.a$a, reason: collision with other inner class name */
    public static final class C1157a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f90878a = d.b("android.net.wifi.IWifiManager$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f90879b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f90880c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f90879b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f90879b.get() != null) {
                return true;
            }
            if (f90880c) {
                return false;
            }
            i.a(f90879b, null, d.g(f90878a, "asInterface", IBinder.class));
            f90880c = true;
            return f90879b.get() != null;
        }
    }
}
