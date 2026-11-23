package ka;

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
    private static final String f92159a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f92160b = d.b("vivo.app.systemdefence.ISystemDefenceManager");

    /* JADX INFO: renamed from: ka.a$a, reason: collision with other inner class name */
    public static final class C1197a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f92161a = d.b("vivo.app.systemdefence.ISystemDefenceManager$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f92162b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f92163c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f92162b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f92162b.get() != null) {
                return true;
            }
            if (f92163c) {
                return false;
            }
            i.a(f92162b, null, d.g(f92161a, "asInterface", IBinder.class));
            f92163c = true;
            return f92162b.get() != null;
        }
    }
}
