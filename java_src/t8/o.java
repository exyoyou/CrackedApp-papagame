package t8;

import android.app.job.JobParameters;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f97296b = "o";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f97297c = com.xinzhu.haunted.d.a(JobParameters.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f97298d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f97299e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Field> f97300f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f97301g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Method> f97302h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f97303i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AtomicReference<Method> f97304j = new AtomicReference<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f97305k = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f97306a;

    public o(Object obj) {
        this.f97306a = obj;
    }

    public static boolean a() {
        if (f97300f.get() != null) {
            return true;
        }
        if (f97301g) {
            return false;
        }
        androidx.lifecycle.i.a(f97300f, null, com.xinzhu.haunted.d.f(f97297c, "REASON_CANCELED"));
        f97301g = true;
        return f97300f.get() != null;
    }

    public static boolean b() {
        if (f97298d.get() != null) {
            return true;
        }
        if (f97299e) {
            return false;
        }
        androidx.lifecycle.i.a(f97298d, null, com.xinzhu.haunted.d.f(f97297c, "REASON_TIMEOUT"));
        f97299e = true;
        return f97298d.get() != null;
    }

    public static int g() {
        if (!a()) {
            return 0;
        }
        try {
            return ((Integer) f97300f.get().get(null)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static int h() {
        if (!b()) {
            return 0;
        }
        try {
            return ((Integer) f97298d.get().get(null)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static boolean i(int i10) {
        if (!a()) {
            return false;
        }
        try {
            f97300f.get().set(null, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean j(int i10) {
        if (!b()) {
            return false;
        }
        try {
            f97298d.get().set(null, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean c() {
        if (f97304j.get() != null) {
            return true;
        }
        if (f97305k) {
            return false;
        }
        androidx.lifecycle.i.a(f97304j, null, com.xinzhu.haunted.d.g(f97297c, "getDebugStopReason", new Object[0]));
        f97305k = true;
        return f97304j.get() != null;
    }

    public boolean d() {
        if (f97302h.get() != null) {
            return true;
        }
        if (f97303i) {
            return false;
        }
        androidx.lifecycle.i.a(f97302h, null, com.xinzhu.haunted.d.g(f97297c, "getStopReason", new Object[0]));
        f97303i = true;
        return f97302h.get() != null;
    }

    public String e() {
        if (!c()) {
            return null;
        }
        try {
            return (String) f97304j.get().invoke(this.f97306a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public int f() {
        if (!d()) {
            return 0;
        }
        try {
            return ((Integer) f97302h.get().invoke(this.f97306a, new Object[0])).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return 0;
        }
    }

    private o() {
    }
}
