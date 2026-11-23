package ea;

import androidx.lifecycle.i;
import com.umeng.analytics.pro.bm;
import com.xinzhu.haunted.d;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f90882a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f90883b = d.b("libcore.io.Libcore");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Field> f90884c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f90885d = false;

    public static boolean a() {
        if (f90884c.get() != null) {
            return true;
        }
        if (f90885d) {
            return false;
        }
        i.a(f90884c, null, d.f(f90883b, bm.f84421x));
        f90885d = true;
        return f90884c.get() != null;
    }

    public static Object b() {
        if (!a()) {
            return null;
        }
        try {
            return f90884c.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static boolean c(Object obj) {
        if (!a()) {
            return false;
        }
        try {
            f90884c.get().set(null, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
