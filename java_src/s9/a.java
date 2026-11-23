package s9;

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
    private static final String f97005a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f97006b = d.b("com.android.internal.appwidget.IAppWidgetService");

    /* JADX INFO: renamed from: s9.a$a, reason: collision with other inner class name */
    public static final class C1248a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f97007a = d.b("com.android.internal.appwidget.IAppWidgetService$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f97008b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f97009c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f97008b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f97008b.get() != null) {
                return true;
            }
            if (f97009c) {
                return false;
            }
            i.a(f97008b, null, d.g(f97007a, "asInterface", IBinder.class));
            f97009c = true;
            return f97008b.get() != null;
        }
    }
}
