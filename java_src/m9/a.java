package m9;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import androidx.lifecycle.i;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f94182a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f94183b = com.xinzhu.haunted.d.b("android.view.autofill.IAutoFillManager");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Method> f94184c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f94185d = false;

    /* JADX INFO: renamed from: m9.a$a, reason: collision with other inner class name */
    public static final class C1210a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f94186a = com.xinzhu.haunted.d.b("android.view.autofill.IAutoFillManager$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f94187b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f94188c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f94187b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f94187b.get() != null) {
                return true;
            }
            if (f94188c) {
                return false;
            }
            i.a(f94187b, null, com.xinzhu.haunted.d.g(f94186a, "asInterface", IBinder.class));
            f94188c = true;
            return f94187b.get() != null;
        }
    }

    public static boolean a(Bundle bundle, boolean z10) {
        if (f94184c.get() != null) {
            return true;
        }
        if (f94185d) {
            return false;
        }
        i.a(f94184c, null, com.xinzhu.haunted.d.g(f94183b, "setDefusable", Bundle.class, Boolean.TYPE));
        f94185d = true;
        return f94184c.get() != null;
    }

    public static Bundle b(Bundle bundle, boolean z10) {
        if (!a(bundle, z10)) {
            return null;
        }
        try {
            return (Bundle) f94184c.get().invoke(null, bundle, Boolean.valueOf(z10));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }
}
