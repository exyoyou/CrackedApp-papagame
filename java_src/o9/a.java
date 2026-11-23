package o9;

import androidx.lifecycle.i;
import com.xinzhu.haunted.d;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f94979a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f94980b = d.b("android.view.inputmethod.IInputMethodManagerGlobalInvoker");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Field> f94981c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f94982d = false;

    public static boolean a() {
        if (f94981c.get() != null) {
            return true;
        }
        if (f94982d) {
            return false;
        }
        i.a(f94981c, null, d.f(f94980b, "sServiceCache"));
        f94982d = true;
        return f94981c.get() != null;
    }

    public static Object b() {
        if (!a()) {
            return null;
        }
        try {
            return f94981c.get().get(null);
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
            f94981c.get().set(null, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
