package t8;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f97263a = "l";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f97264b = com.xinzhu.haunted.d.b("android.content.IRestrictionsManager");

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f97265a = com.xinzhu.haunted.d.b("android.content.IRestrictionsManager$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f97266b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f97267c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f97266b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f97266b.get() != null) {
                return true;
            }
            if (f97267c) {
                return false;
            }
            androidx.lifecycle.i.a(f97266b, null, com.xinzhu.haunted.d.g(f97265a, "asInterface", IBinder.class));
            f97267c = true;
            return f97266b.get() != null;
        }
    }
}
