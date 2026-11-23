package x9;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f97642a = "e";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f97643b = com.xinzhu.haunted.d.b("com.android.internal.telephony.ITelephony");

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f97644a = com.xinzhu.haunted.d.b("com.android.internal.telephony.ITelephony$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f97645b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f97646c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f97645b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f97645b.get() != null) {
                return true;
            }
            if (f97646c) {
                return false;
            }
            androidx.lifecycle.i.a(f97645b, null, com.xinzhu.haunted.d.g(f97644a, "asInterface", IBinder.class));
            f97646c = true;
            return f97645b.get() != null;
        }
    }
}
