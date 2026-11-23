package g9;

import android.os.IBinder;
import android.os.IInterface;
import androidx.lifecycle.i;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f91323a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f91324b = com.xinzhu.haunted.d.b("android.os.storage.IMountService");

    /* JADX INFO: renamed from: g9.a$a, reason: collision with other inner class name */
    public static final class C1165a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f91325a = com.xinzhu.haunted.d.b("android.os.storage.IMountService$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f91326b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f91327c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f91326b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f91326b.get() != null) {
                return true;
            }
            if (f91327c) {
                return false;
            }
            i.a(f91326b, null, com.xinzhu.haunted.d.g(f91325a, "asInterface", IBinder.class));
            f91327c = true;
            return f91326b.get() != null;
        }
    }
}
