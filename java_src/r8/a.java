package r8;

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
    private static final String f96792a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f96793b = d.b("android.app.usage.IUsageStatsManager");

    /* JADX INFO: renamed from: r8.a$a, reason: collision with other inner class name */
    public static final class C1243a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f96794a = d.b("android.app.usage.IUsageStatsManager$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f96795b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f96796c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f96795b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f96795b.get() != null) {
                return true;
            }
            if (f96796c) {
                return false;
            }
            i.a(f96795b, null, d.g(f96794a, "asInterface", IBinder.class));
            f96796c = true;
            return f96795b.get() != null;
        }
    }
}
