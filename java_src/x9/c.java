package x9;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f97632a = "c";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f97633b = com.xinzhu.haunted.d.b("com.android.internal.telephony.ISms");

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f97634a = com.xinzhu.haunted.d.b("com.android.internal.telephony.ISms$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f97635b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f97636c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f97635b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f97635b.get() != null) {
                return true;
            }
            if (f97636c) {
                return false;
            }
            androidx.lifecycle.i.a(f97635b, null, com.xinzhu.haunted.d.g(f97634a, "asInterface", IBinder.class));
            f97636c = true;
            return f97635b.get() != null;
        }
    }
}
