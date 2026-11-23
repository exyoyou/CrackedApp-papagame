package p8;

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
    private static final String f96235a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f96236b = d.b("android.app.role.IRoleManager");

    /* JADX INFO: renamed from: p8.a$a, reason: collision with other inner class name */
    public static final class C1235a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f96237a = d.b("android.app.role.IRoleManager$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f96238b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f96239c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f96238b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f96238b.get() != null) {
                return true;
            }
            if (f96239c) {
                return false;
            }
            i.a(f96238b, null, d.g(f96237a, "asInterface", IBinder.class));
            f96239c = true;
            return f96238b.get() != null;
        }
    }
}
