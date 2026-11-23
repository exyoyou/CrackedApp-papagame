package u8;

import androidx.lifecycle.i;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f97458b = "b";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f97459c = com.xinzhu.haunted.d.b("android.content.res.AssetManager");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f97460d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f97461e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f97462f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f97463g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Constructor> f97464h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f97465i = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f97466a;

    public b(Object obj) {
        this.f97466a = obj;
    }

    public static boolean b() {
        if (f97464h.get() != null) {
            return true;
        }
        if (f97465i) {
            return false;
        }
        i.a(f97464h, null, com.xinzhu.haunted.d.d(f97459c, "HtAssetManager", new Object[0]));
        f97465i = true;
        return f97464h.get() != null;
    }

    public static b e() {
        if (!b()) {
            return null;
        }
        try {
            b bVar = new b();
            bVar.f97466a = f97464h.get().newInstance(new Object[0]);
            return bVar;
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

    public Integer a(String str) {
        if (!c(str)) {
            return null;
        }
        try {
            return (Integer) f97462f.get().invoke(this.f97466a, str);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public boolean c(String str) {
        if (f97462f.get() != null) {
            return true;
        }
        if (f97463g) {
            return false;
        }
        i.a(f97462f, null, com.xinzhu.haunted.d.g(f97459c, "addAssetPath", String.class));
        f97463g = true;
        return f97462f.get() != null;
    }

    public boolean d(Object obj, boolean z10) {
        if (f97460d.get() != null) {
            return true;
        }
        if (f97461e) {
            return false;
        }
        i.a(f97460d, null, com.xinzhu.haunted.d.g(f97459c, "setApkAssets", "[Landroid.content.res.ApkAssets;", Boolean.TYPE));
        f97461e = true;
        return f97460d.get() != null;
    }

    public void f(Object obj, boolean z10) {
        if (d(obj, z10)) {
            try {
                f97460d.get().invoke(this.f97466a, obj, Boolean.valueOf(z10));
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
            }
        }
    }

    private b() {
    }
}
