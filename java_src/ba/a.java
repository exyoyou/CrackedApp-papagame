package ba;

import android.net.wifi.WifiManager;
import androidx.lifecycle.i;
import com.xinzhu.haunted.d;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f408b = "a";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f409c = d.a(WifiManager.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f410d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f411e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f412a;

    public a(Object obj) {
        this.f412a = obj;
    }

    public boolean a() {
        if (f410d.get() != null) {
            return true;
        }
        if (f411e) {
            return false;
        }
        i.a(f410d, null, d.f(f409c, "mService"));
        f411e = true;
        return f410d.get() != null;
    }

    public Object b() {
        if (!a()) {
            return null;
        }
        try {
            return f410d.get().get(this.f412a);
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
            f410d.get().set(this.f412a, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private a() {
    }
}
