package d9;

import android.os.IBinder;
import android.os.IInterface;
import androidx.lifecycle.i;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f90747a = "c";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f90748b = com.xinzhu.haunted.d.b("android.net.ITetheringConnector");

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f90749a = com.xinzhu.haunted.d.b("android.net.ITetheringConnector$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f90750b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f90751c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f90750b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f90750b.get() != null) {
                return true;
            }
            if (f90751c) {
                return false;
            }
            i.a(f90750b, null, com.xinzhu.haunted.d.g(f90749a, "asInterface", IBinder.class));
            f90751c = true;
            return f90750b.get() != null;
        }
    }
}
