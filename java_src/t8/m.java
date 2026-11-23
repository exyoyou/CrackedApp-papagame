package t8;

import android.content.Intent;
import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f97274b = "m";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f97275c = com.xinzhu.haunted.d.a(Intent.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f97276d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f97277e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f97278f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f97279g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f97280a;

    public m(Object obj) {
        this.f97280a = obj;
    }

    public boolean a(String str) {
        if (f97278f.get() != null) {
            return true;
        }
        if (f97279g) {
            return false;
        }
        androidx.lifecycle.i.a(f97278f, null, com.xinzhu.haunted.d.g(f97275c, "getIBinderExtra", String.class));
        f97279g = true;
        return f97278f.get() != null;
    }

    public boolean b(String str, IBinder iBinder) {
        if (f97276d.get() != null) {
            return true;
        }
        if (f97277e) {
            return false;
        }
        androidx.lifecycle.i.a(f97276d, null, com.xinzhu.haunted.d.g(f97275c, "putExtra", String.class, IBinder.class));
        f97277e = true;
        return f97276d.get() != null;
    }

    public IBinder c(String str) {
        if (!a(str)) {
            return null;
        }
        try {
            return (IBinder) f97278f.get().invoke(this.f97280a, str);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public void d(String str, IBinder iBinder) {
        if (b(str, iBinder)) {
            try {
                f97276d.get().invoke(this.f97280a, str, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }

    private m() {
    }
}
