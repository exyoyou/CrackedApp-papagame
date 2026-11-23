package m9;

import android.os.IBinder;
import android.os.IInterface;
import androidx.lifecycle.i;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f94189a = "b";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f94190b = com.xinzhu.haunted.d.b("android.view.IGraphicsStats");

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f94191a = com.xinzhu.haunted.d.b("android.view.IGraphicsStats$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f94192b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f94193c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f94192b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f94192b.get() != null) {
                return true;
            }
            if (f94193c) {
                return false;
            }
            i.a(f94192b, null, com.xinzhu.haunted.d.g(f94191a, "asInterface", IBinder.class));
            f94193c = true;
            return f94192b.get() != null;
        }
    }
}
