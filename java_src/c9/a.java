package c9;

import android.os.IBinder;
import android.os.IInterface;
import androidx.lifecycle.i;
import com.xinzhu.haunted.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f520a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f521b = d.b("android.media.session.ISessionManager");

    /* JADX INFO: renamed from: c9.a$a, reason: collision with other inner class name */
    public static final class C0023a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f522a = d.b("android.media.session.ISessionManager$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f523b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f524c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f523b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f523b.get() != null) {
                return true;
            }
            if (f524c) {
                return false;
            }
            i.a(f523b, null, d.g(f522a, "asInterface", IBinder.class));
            f524c = true;
            return f523b.get() != null;
        }
    }
}
