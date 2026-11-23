package t8;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f97142b = "a";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f97143c = com.xinzhu.haunted.d.b("android.content.AttributionSource");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f97144d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f97145e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f97146f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f97147g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f97148a;

    public a(Object obj) {
        this.f97148a = obj;
    }

    public boolean a() {
        if (f97144d.get() != null) {
            return true;
        }
        if (f97145e) {
            return false;
        }
        androidx.lifecycle.i.a(f97144d, null, com.xinzhu.haunted.d.f(f97143c, "mAttributionSourceState"));
        f97145e = true;
        return f97144d.get() != null;
    }

    public boolean b() {
        if (f97146f.get() != null) {
            return true;
        }
        if (f97147g) {
            return false;
        }
        androidx.lifecycle.i.a(f97146f, null, com.xinzhu.haunted.d.g(f97143c, "getNext", new Object[0]));
        f97147g = true;
        return f97146f.get() != null;
    }

    public Object c() {
        if (!b()) {
            return null;
        }
        try {
            return f97146f.get().invoke(this.f97148a, new Object[0]);
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
            return f97144d.get().get(this.f97148a);
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
            f97144d.get().set(this.f97148a, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private a() {
    }
}
