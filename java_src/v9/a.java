package v9;

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
    private static final String f97523a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f97524b = d.b("com.android.internal.os.IDropBoxManagerService");

    /* JADX INFO: renamed from: v9.a$a, reason: collision with other inner class name */
    public static final class C1252a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f97525a = d.b("com.android.internal.os.IDropBoxManagerService$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f97526b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f97527c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f97526b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f97526b.get() != null) {
                return true;
            }
            if (f97527c) {
                return false;
            }
            i.a(f97526b, null, d.g(f97525a, "asInterface", IBinder.class));
            f97527c = true;
            return f97526b.get() != null;
        }
    }
}
