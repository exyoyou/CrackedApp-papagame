package x8;

import android.os.IInterface;
import androidx.lifecycle.i;
import com.xinzhu.haunted.d;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f97613b = "a";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f97614c = d.b("android.hardware.display.DisplayManagerGlobal");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f97615d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f97616e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f97617f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f97618g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f97619a;

    public a(Object obj) {
        this.f97619a = obj;
    }

    public static boolean b() {
        if (f97617f.get() != null) {
            return true;
        }
        if (f97618g) {
            return false;
        }
        i.a(f97617f, null, d.g(f97614c, "getInstance", new Object[0]));
        f97618g = true;
        return f97617f.get() != null;
    }

    public static Object c() {
        if (!b()) {
            return null;
        }
        try {
            return f97617f.get().invoke(null, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public boolean a() {
        if (f97615d.get() != null) {
            return true;
        }
        if (f97616e) {
            return false;
        }
        i.a(f97615d, null, d.f(f97614c, "mDm"));
        f97616e = true;
        return f97615d.get() != null;
    }

    public IInterface d() {
        if (!a()) {
            return null;
        }
        try {
            return (IInterface) f97615d.get().get(this.f97619a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean e(IInterface iInterface) {
        if (!a()) {
            return false;
        }
        try {
            f97615d.get().set(this.f97619a, iInterface);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private a() {
    }
}
