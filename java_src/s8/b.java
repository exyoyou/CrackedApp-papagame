package s8;

import androidx.lifecycle.i;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f96992b = "b";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f96993c = com.xinzhu.haunted.d.b("android.bluetooth.BluetoothManager");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f96994d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f96995e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f96996a;

    public b(Object obj) {
        this.f96996a = obj;
    }

    public boolean a() {
        if (f96994d.get() != null) {
            return true;
        }
        if (f96995e) {
            return false;
        }
        i.a(f96994d, null, com.xinzhu.haunted.d.f(f96993c, "mAdapter"));
        f96995e = true;
        return f96994d.get() != null;
    }

    public Object b() {
        if (!a()) {
            return null;
        }
        try {
            return f96994d.get().get(this.f96996a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean c(Object obj) {
        if (!a()) {
            return false;
        }
        try {
            f96994d.get().set(this.f96996a, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private b() {
    }
}
