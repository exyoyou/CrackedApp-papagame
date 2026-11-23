package z9;

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
    private static final String f97736a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f97737b = d.b("com.android.internal.view.IInputMethodManager");

    /* JADX INFO: renamed from: z9.a$a, reason: collision with other inner class name */
    public static final class C1258a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f97738a = d.b("com.android.internal.view.IInputMethodManager$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f97739b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f97740c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f97739b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f97739b.get() != null) {
                return true;
            }
            if (f97740c) {
                return false;
            }
            i.a(f97739b, null, d.g(f97738a, "asInterface", IBinder.class));
            f97740c = true;
            return f97739b.get() != null;
        }
    }
}
