package r9;

import android.os.IBinder;
import android.os.IInterface;
import androidx.lifecycle.i;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f96798a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f96799b = com.xinzhu.haunted.d.b("com.android.internal.app.IAppOpsService");

    /* JADX INFO: renamed from: r9.a$a, reason: collision with other inner class name */
    public static final class C1244a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f96800a = com.xinzhu.haunted.d.b("com.android.internal.app.IAppOpsService$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f96801b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f96802c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f96801b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f96801b.get() != null) {
                return true;
            }
            if (f96802c) {
                return false;
            }
            i.a(f96801b, null, com.xinzhu.haunted.d.g(f96800a, "asInterface", IBinder.class));
            f96802c = true;
            return f96801b.get() != null;
        }
    }
}
