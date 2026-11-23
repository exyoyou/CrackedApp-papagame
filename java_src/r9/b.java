package r9;

import android.os.IBinder;
import android.os.IInterface;
import androidx.lifecycle.i;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f96803a = "b";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f96804b = com.xinzhu.haunted.d.b("com.android.internal.app.IBatteryStats");

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f96805a = com.xinzhu.haunted.d.b("com.android.internal.app.IBatteryStats$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f96806b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f96807c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f96806b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f96806b.get() != null) {
                return true;
            }
            if (f96807c) {
                return false;
            }
            i.a(f96806b, null, com.xinzhu.haunted.d.g(f96805a, "asInterface", IBinder.class));
            f96807c = true;
            return f96806b.get() != null;
        }
    }
}
