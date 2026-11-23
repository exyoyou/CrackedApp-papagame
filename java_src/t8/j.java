package t8;

import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f97251a = "j";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f97252b = com.xinzhu.haunted.d.b("android.content.IContentService");

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f97253a = com.xinzhu.haunted.d.b("android.content.IContentService$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f97254b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f97255c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f97254b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f97254b.get() != null) {
                return true;
            }
            if (f97255c) {
                return false;
            }
            androidx.lifecycle.i.a(f97254b, null, com.xinzhu.haunted.d.g(f97253a, "asInterface", IBinder.class));
            f97255c = true;
            return f97254b.get() != null;
        }
    }
}
