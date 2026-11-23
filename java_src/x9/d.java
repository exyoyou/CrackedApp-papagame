package x9;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f97637a = "d";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f97638b = com.xinzhu.haunted.d.b("com.android.internal.telephony.ISub");

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f97639a = com.xinzhu.haunted.d.b("com.android.internal.telephony.ISub$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f97640b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f97641c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f97640b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f97640b.get() != null) {
                return true;
            }
            if (f97641c) {
                return false;
            }
            androidx.lifecycle.i.a(f97640b, null, com.xinzhu.haunted.d.g(f97639a, "asInterface", IBinder.class));
            f97641c = true;
            return f97640b.get() != null;
        }
    }
}
