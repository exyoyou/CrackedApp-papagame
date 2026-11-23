package s8;

import androidx.lifecycle.i;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f96988a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f96989b = com.xinzhu.haunted.d.b("android.bluetooth.BluetoothAdapter");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Field> f96990c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f96991d = false;

    public static boolean a() {
        if (f96990c.get() != null) {
            return true;
        }
        if (f96991d) {
            return false;
        }
        i.a(f96990c, null, com.xinzhu.haunted.d.f(f96989b, "sService"));
        f96991d = true;
        return f96990c.get() != null;
    }

    public static Object b() {
        if (!a()) {
            return null;
        }
        try {
            return f96990c.get().get(null);
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
            f96990c.get().set(null, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
