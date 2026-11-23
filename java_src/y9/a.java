package y9;

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
    private static final String f97703a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f97704b = d.b("com.android.internal.textservice.ITextServicesManager");

    /* JADX INFO: renamed from: y9.a$a, reason: collision with other inner class name */
    public static final class C1257a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f97705a = d.b("com.android.internal.textservice.ITextServicesManager$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f97706b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f97707c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f97706b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f97706b.get() != null) {
                return true;
            }
            if (f97707c) {
                return false;
            }
            i.a(f97706b, null, d.g(f97705a, "asInterface", IBinder.class));
            f97707c = true;
            return f97706b.get() != null;
        }
    }
}
