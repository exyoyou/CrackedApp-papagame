package s8;

import android.os.IBinder;
import android.os.IInterface;
import androidx.lifecycle.i;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f96997a = "c";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f96998b = com.xinzhu.haunted.d.b("android.bluetooth.IBluetooth");

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f96999a = com.xinzhu.haunted.d.b("android.bluetooth.IBluetooth$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f97000b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f97001c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f97000b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f97000b.get() != null) {
                return true;
            }
            if (f97001c) {
                return false;
            }
            i.a(f97000b, null, com.xinzhu.haunted.d.g(f96999a, "asInterface", IBinder.class));
            f97001c = true;
            return f97000b.get() != null;
        }
    }
}
