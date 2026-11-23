package y8;

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
    private static final String f97697a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f97698b = d.b("android.hardware.location.IContextHubService");

    /* JADX INFO: renamed from: y8.a$a, reason: collision with other inner class name */
    public static final class C1256a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f97699a = d.b("android.hardware.location.IContextHubService$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f97700b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f97701c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f97700b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f97700b.get() != null) {
                return true;
            }
            if (f97701c) {
                return false;
            }
            i.a(f97700b, null, d.g(f97699a, "asInterface", IBinder.class));
            f97701c = true;
            return f97700b.get() != null;
        }
    }
}
