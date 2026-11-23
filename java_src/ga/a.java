package ga;

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
    private static final String f91361a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f91362b = d.b("vivo.app.physicalfling.IPhysicalFlingManager");

    /* JADX INFO: renamed from: ga.a$a, reason: collision with other inner class name */
    public static final class C1166a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f91363a = d.b("vivo.app.physicalfling.IPhysicalFlingManager$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f91364b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f91365c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f91364b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f91364b.get() != null) {
                return true;
            }
            if (f91365c) {
                return false;
            }
            i.a(f91364b, null, d.g(f91363a, "asInterface", IBinder.class));
            f91365c = true;
            return f91364b.get() != null;
        }
    }
}
