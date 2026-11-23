package x9;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f97647a = "f";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f97648b = com.xinzhu.haunted.d.b("com.android.internal.telephony.ITelephonyRegistry");

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f97649a = com.xinzhu.haunted.d.b("com.android.internal.telephony.ITelephonyRegistry$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f97650b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f97651c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f97650b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f97650b.get() != null) {
                return true;
            }
            if (f97651c) {
                return false;
            }
            androidx.lifecycle.i.a(f97650b, null, com.xinzhu.haunted.d.g(f97649a, "asInterface", IBinder.class));
            f97651c = true;
            return f97650b.get() != null;
        }
    }
}
