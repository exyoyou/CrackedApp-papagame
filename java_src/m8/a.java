package m8;

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
    private static final String f94176a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f94177b = d.b("android.app.admin.IDevicePolicyManager");

    /* JADX INFO: renamed from: m8.a$a, reason: collision with other inner class name */
    public static final class C1209a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f94178a = d.b("android.app.admin.IDevicePolicyManager$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f94179b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f94180c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f94179b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f94179b.get() != null) {
                return true;
            }
            if (f94180c) {
                return false;
            }
            i.a(f94179b, null, d.g(f94178a, "asInterface", IBinder.class));
            f94180c = true;
            return f94179b.get() != null;
        }
    }
}
