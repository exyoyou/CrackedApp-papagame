package x9;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f97622a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f97623b = com.xinzhu.haunted.d.b("com.android.internal.telephony.IHwTelephony");

    /* JADX INFO: renamed from: x9.a$a, reason: collision with other inner class name */
    public static final class C1255a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f97624a = com.xinzhu.haunted.d.b("com.android.internal.telephony.IHwTelephony$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f97625b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f97626c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f97625b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f97625b.get() != null) {
                return true;
            }
            if (f97626c) {
                return false;
            }
            androidx.lifecycle.i.a(f97625b, null, com.xinzhu.haunted.d.g(f97624a, "asInterface", IBinder.class));
            f97626c = true;
            return f97625b.get() != null;
        }
    }
}
