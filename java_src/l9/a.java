package l9;

import android.util.AtomicFile;
import androidx.lifecycle.i;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f94125b = "a";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f94126c = com.xinzhu.haunted.d.a(AtomicFile.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f94127d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f94128e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Constructor> f94129f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f94130g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f94131a;

    public a(Object obj) {
        this.f94131a = obj;
    }

    public static boolean a(File file, String str) {
        if (f94129f.get() != null) {
            return true;
        }
        if (f94130g) {
            return false;
        }
        i.a(f94129f, null, com.xinzhu.haunted.d.d(f94126c, "HtAtomicFile", File.class, String.class));
        f94130g = true;
        return f94129f.get() != null;
    }

    public static a c(File file, String str) {
        if (!a(file, str)) {
            return null;
        }
        try {
            a aVar = new a();
            aVar.f94131a = f94129f.get().newInstance(file, str);
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

    public boolean b() {
        if (f94127d.get() != null) {
            return true;
        }
        if (f94128e) {
            return false;
        }
        i.a(f94127d, null, com.xinzhu.haunted.d.g(f94126c, "exists", new Object[0]));
        f94128e = true;
        return f94127d.get() != null;
    }

    public boolean d() {
        if (!b()) {
            return false;
        }
        try {
            return ((Boolean) f94127d.get().invoke(this.f94131a, new Object[0])).booleanValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    private a() {
    }
}
