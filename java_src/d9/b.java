package d9;

import android.os.IBinder;
import android.os.IInterface;
import androidx.lifecycle.i;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f90742a = "b";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f90743b = com.xinzhu.haunted.d.b("android.net.INetworkScoreService");

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f90744a = com.xinzhu.haunted.d.b("android.net.INetworkScoreService$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f90745b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f90746c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f90745b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f90745b.get() != null) {
                return true;
            }
            if (f90746c) {
                return false;
            }
            i.a(f90745b, null, com.xinzhu.haunted.d.g(f90744a, "asInterface", IBinder.class));
            f90746c = true;
            return f90745b.get() != null;
        }
    }
}
