package da;

import androidx.lifecycle.i;
import com.xinzhu.haunted.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f90755b = "a";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f90756c = d.b("dalvik.system.VMRuntime");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f90757d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f90758e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f90759f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f90760g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Method> f90761h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f90762i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AtomicReference<Method> f90763j = new AtomicReference<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f90764k = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f90765a;

    public a(Object obj) {
        this.f90765a = obj;
    }

    public static boolean a() {
        if (f90757d.get() != null) {
            return true;
        }
        if (f90758e) {
            return false;
        }
        i.a(f90757d, null, d.g(f90756c, "getRuntime", new Object[0]));
        f90758e = true;
        return f90757d.get() != null;
    }

    public static a e() {
        if (!a()) {
            return null;
        }
        try {
            return new a(f90757d.get().invoke(null, new Object[0]));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public boolean b() {
        if (f90761h.get() != null) {
            return true;
        }
        if (f90762i) {
            return false;
        }
        i.a(f90761h, null, d.g(f90756c, "is64Bit", new Object[0]));
        f90762i = true;
        return f90761h.get() != null;
    }

    public boolean c() {
        if (f90763j.get() != null) {
            return true;
        }
        if (f90764k) {
            return false;
        }
        i.a(f90763j, null, d.g(f90756c, "isJavaDebuggable", new Object[0]));
        f90764k = true;
        return f90763j.get() != null;
    }

    public boolean d(int i10) {
        if (f90759f.get() != null) {
            return true;
        }
        if (f90760g) {
            return false;
        }
        i.a(f90759f, null, d.g(f90756c, "setTargetSdkVersion", Integer.TYPE));
        f90760g = true;
        return f90759f.get() != null;
    }

    public Boolean f() {
        if (!b()) {
            return Boolean.FALSE;
        }
        try {
            return (Boolean) f90761h.get().invoke(this.f90765a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return Boolean.FALSE;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return Boolean.FALSE;
        }
    }

    public Boolean g() {
        if (!c()) {
            return Boolean.FALSE;
        }
        try {
            return (Boolean) f90763j.get().invoke(this.f90765a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return Boolean.FALSE;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return Boolean.FALSE;
        }
    }

    public void h(int i10) {
        if (d(i10)) {
            try {
                f90759f.get().invoke(this.f90765a, Integer.valueOf(i10));
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }

    private a() {
    }
}
