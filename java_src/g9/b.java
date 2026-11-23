package g9;

import android.os.IBinder;
import android.os.IInterface;
import androidx.lifecycle.i;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f91328a = "b";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f91329b = com.xinzhu.haunted.d.b("android.os.storage.IStorageManager");

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f91330a = com.xinzhu.haunted.d.b("android.os.storage.IStorageManager$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f91331b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f91332c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f91331b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f91331b.get() != null) {
                return true;
            }
            if (f91332c) {
                return false;
            }
            i.a(f91331b, null, com.xinzhu.haunted.d.g(f91330a, "asInterface", IBinder.class));
            f91332c = true;
            return f91331b.get() != null;
        }
    }
}
