package j9;

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
    private static final String f92096a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f92097b = d.b("android.sec.clipboard.IClipboardService");

    /* JADX INFO: renamed from: j9.a$a, reason: collision with other inner class name */
    public static final class C1194a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f92098a = d.b("android.sec.clipboard.IClipboardService$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f92099b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f92100c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f92099b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f92099b.get() != null) {
                return true;
            }
            if (f92100c) {
                return false;
            }
            i.a(f92099b, null, d.g(f92098a, "asInterface", IBinder.class));
            f92100c = true;
            return f92099b.get() != null;
        }
    }
}
