package t8;

import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f97171b = "b";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f97172c = com.xinzhu.haunted.d.b("android.content.AttributionSourceState");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f97173d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f97174e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Field> f97175f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f97176g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f97177a;

    public b(Object obj) {
        this.f97177a = obj;
    }

    public boolean a() {
        if (f97173d.get() != null) {
            return true;
        }
        if (f97174e) {
            return false;
        }
        androidx.lifecycle.i.a(f97173d, null, com.xinzhu.haunted.d.f(f97172c, "packageName"));
        f97174e = true;
        return f97173d.get() != null;
    }

    public boolean b() {
        if (f97175f.get() != null) {
            return true;
        }
        if (f97176g) {
            return false;
        }
        androidx.lifecycle.i.a(f97175f, null, com.xinzhu.haunted.d.f(f97172c, "uid"));
        f97176g = true;
        return f97175f.get() != null;
    }

    public String c() {
        if (!a()) {
            return null;
        }
        try {
            return (String) f97173d.get().get(this.f97177a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public Integer d() {
        if (!b()) {
            return null;
        }
        try {
            return (Integer) f97175f.get().get(this.f97177a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean e(String str) {
        if (!a()) {
            return false;
        }
        try {
            f97173d.get().set(this.f97177a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean f(Integer num) {
        if (!b()) {
            return false;
        }
        try {
            f97175f.get().set(this.f97177a, num);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private b() {
    }
}
