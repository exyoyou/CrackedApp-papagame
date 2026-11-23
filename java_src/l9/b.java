package l9;

import androidx.lifecycle.i;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f94132b = "b";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f94133c = com.xinzhu.haunted.d.b("android.util.Singleton");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f94134d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f94135e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f94136f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f94137g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f94138a;

    public b(Object obj) {
        this.f94138a = obj;
    }

    public boolean a() {
        if (f94134d.get() != null) {
            return true;
        }
        if (f94135e) {
            return false;
        }
        i.a(f94134d, null, com.xinzhu.haunted.d.f(f94133c, "mInstance"));
        f94135e = true;
        return f94134d.get() != null;
    }

    public boolean b() {
        if (f94136f.get() != null) {
            return true;
        }
        if (f94137g) {
            return false;
        }
        i.a(f94136f, null, com.xinzhu.haunted.d.g(f94133c, "get", new Object[0]));
        f94137g = true;
        return f94136f.get() != null;
    }

    public Object c() {
        if (!b()) {
            return null;
        }
        try {
            return f94136f.get().invoke(this.f94138a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public Object d() {
        if (!a()) {
            return null;
        }
        try {
            return f94134d.get().get(this.f94138a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean e(Object obj) {
        if (!a()) {
            return false;
        }
        try {
            f94134d.get().set(this.f94138a, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private b() {
    }
}
