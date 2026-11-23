package b9;

import android.os.IBinder;
import android.os.IInterface;
import androidx.lifecycle.i;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f396a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f397b = com.xinzhu.haunted.d.b("android.media.IAudioService");

    /* JADX INFO: renamed from: b9.a$a, reason: collision with other inner class name */
    public static final class C0019a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f398a = com.xinzhu.haunted.d.b("android.media.IAudioService$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f399b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f400c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f399b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f399b.get() != null) {
                return true;
            }
            if (f400c) {
                return false;
            }
            i.a(f399b, null, com.xinzhu.haunted.d.g(f398a, "asInterface", IBinder.class));
            f400c = true;
            return f399b.get() != null;
        }
    }
}
