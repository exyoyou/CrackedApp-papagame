package o8;

import android.os.IBinder;
import android.os.IInterface;
import androidx.lifecycle.i;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f94956a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f94957b = com.xinzhu.haunted.d.b("android.app.job.IJobScheduler");

    /* JADX INFO: renamed from: o8.a$a, reason: collision with other inner class name */
    public static final class C1219a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f94958a = com.xinzhu.haunted.d.b("android.app.job.IJobScheduler$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f94959b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f94960c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f94959b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f94959b.get() != null) {
                return true;
            }
            if (f94960c) {
                return false;
            }
            i.a(f94959b, null, com.xinzhu.haunted.d.g(f94958a, "asInterface", IBinder.class));
            f94960c = true;
            return f94959b.get() != null;
        }
    }
}
