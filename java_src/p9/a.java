package p9;

import androidx.lifecycle.i;
import com.xinzhu.haunted.d;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f96241b = "a";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f96242c = d.b("huawei.android.app.HwApiCacheMangerEx");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f96243d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f96244e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f96245f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f96246g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f96247a;

    public a(Object obj) {
        this.f96247a = obj;
    }

    public static boolean b() {
        if (f96245f.get() != null) {
            return true;
        }
        if (f96246g) {
            return false;
        }
        i.a(f96245f, null, d.g(f96242c, "getDefault", new Object[0]));
        f96246g = true;
        return f96245f.get() != null;
    }

    public static a c() {
        if (!b()) {
            return null;
        }
        try {
            return new a(f96245f.get().invoke(null, new Object[0]));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public boolean a() {
        if (f96243d.get() != null) {
            return true;
        }
        if (f96244e) {
            return false;
        }
        i.a(f96243d, null, d.f(f96242c, "mPkg"));
        f96244e = true;
        return f96243d.get() != null;
    }

    public Object d() {
        if (!a()) {
            return null;
        }
        try {
            return f96243d.get().get(this.f96247a);
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
            f96243d.get().set(this.f96247a, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private a() {
    }
}
