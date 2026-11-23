package ja;

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
    private static final String f92102a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f92103b = d.b("vivo.app.superresolution.ISuperResolutionManager");

    /* JADX INFO: renamed from: ja.a$a, reason: collision with other inner class name */
    public static final class C1195a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f92104a = d.b("vivo.app.superresolution.ISuperResolutionManager$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f92105b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f92106c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f92105b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f92105b.get() != null) {
                return true;
            }
            if (f92106c) {
                return false;
            }
            i.a(f92105b, null, d.g(f92104a, "asInterface", IBinder.class));
            f92106c = true;
            return f92105b.get() != null;
        }
    }
}
