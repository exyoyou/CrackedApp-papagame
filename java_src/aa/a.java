package aa;

import android.location.LocationManager;
import androidx.lifecycle.i;
import com.xinzhu.haunted.d;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f87b = "a";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88c = d.a(LocationManager.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f89d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f90e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f91a;

    public a(Object obj) {
        this.f91a = obj;
    }

    public boolean a() {
        if (f89d.get() != null) {
            return true;
        }
        if (f90e) {
            return false;
        }
        i.a(f89d, null, d.f(f88c, "mService"));
        f90e = true;
        return f89d.get() != null;
    }

    public Object b() {
        if (!a()) {
            return null;
        }
        try {
            return f89d.get().get(this.f91a);
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
            f89d.get().set(this.f91a, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private a() {
    }
}
