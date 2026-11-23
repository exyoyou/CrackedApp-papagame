package u9;

import androidx.lifecycle.i;
import com.xinzhu.haunted.d;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f97468b = "a";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f97469c = d.b("com.android.internal.infra.AndroidFuture");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f97470d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f97471e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f97472f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f97473g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Constructor> f97474h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f97475i = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f97476a;

    public a(Object obj) {
        this.f97476a = obj;
    }

    public static boolean a() {
        if (f97474h.get() != null) {
            return true;
        }
        if (f97475i) {
            return false;
        }
        i.a(f97474h, null, d.d(f97469c, "HtAndroidFuture", new Object[0]));
        f97475i = true;
        return f97474h.get() != null;
    }

    public static a e() {
        if (!a()) {
            return null;
        }
        try {
            a aVar = new a();
            aVar.f97476a = f97474h.get().newInstance(new Object[0]);
            return aVar;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InstantiationException e11) {
            e11.printStackTrace();
            return null;
        } catch (InvocationTargetException e12) {
            e12.printStackTrace();
            return null;
        }
    }

    public boolean b(Object obj) {
        if (f97470d.get() != null) {
            return true;
        }
        if (f97471e) {
            return false;
        }
        i.a(f97470d, null, d.g(f97469c, "complete", Object.class));
        f97471e = true;
        return f97470d.get() != null;
    }

    public boolean c() {
        if (f97472f.get() != null) {
            return true;
        }
        if (f97473g) {
            return false;
        }
        i.a(f97472f, null, d.g(f97469c, "get", new Object[0]));
        f97473g = true;
        return f97472f.get() != null;
    }

    public boolean d(Object obj) {
        if (!b(obj)) {
            return false;
        }
        try {
            return ((Boolean) f97470d.get().invoke(this.f97476a, obj)).booleanValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public Object f() {
        if (!c()) {
            return null;
        }
        try {
            return f97472f.get().invoke(this.f97476a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    private a() {
    }
}
