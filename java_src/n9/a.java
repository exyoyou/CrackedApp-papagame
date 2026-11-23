package n9;

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
    private static final String f94492a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f94493b = d.b("android.view.accessibility.IAccessibilityManager");

    /* JADX INFO: renamed from: n9.a$a, reason: collision with other inner class name */
    public static final class C1214a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f94494a = d.b("android.view.accessibility.IAccessibilityManager$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f94495b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f94496c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f94495b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f94495b.get() != null) {
                return true;
            }
            if (f94496c) {
                return false;
            }
            i.a(f94495b, null, d.g(f94494a, "asInterface", IBinder.class));
            f94496c = true;
            return f94495b.get() != null;
        }
    }
}
