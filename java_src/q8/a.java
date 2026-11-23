package q8;

import android.os.IBinder;
import androidx.lifecycle.i;
import java.lang.reflect.Field;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f96564b = "a";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f96565c = com.xinzhu.haunted.d.b("android.app.servertransaction.ClientTransaction");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f96566d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f96567e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Field> f96568f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f96569g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Field> f96570h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f96571i = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f96572a;

    public a(Object obj) {
        this.f96572a = obj;
    }

    public boolean a() {
        if (f96570h.get() != null) {
            return true;
        }
        if (f96571i) {
            return false;
        }
        i.a(f96570h, null, com.xinzhu.haunted.d.f(f96565c, "mActivityCallbacks"));
        f96571i = true;
        return f96570h.get() != null;
    }

    public boolean b() {
        if (f96566d.get() != null) {
            return true;
        }
        if (f96567e) {
            return false;
        }
        i.a(f96566d, null, com.xinzhu.haunted.d.f(f96565c, "mActivityToken"));
        f96567e = true;
        return f96566d.get() != null;
    }

    public boolean c() {
        if (f96568f.get() != null) {
            return true;
        }
        if (f96569g) {
            return false;
        }
        i.a(f96568f, null, com.xinzhu.haunted.d.f(f96565c, "mLifecycleStateRequest"));
        f96569g = true;
        return f96568f.get() != null;
    }

    public List<Object> d() {
        if (!a()) {
            return null;
        }
        try {
            return (List) f96570h.get().get(this.f96572a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public IBinder e() {
        if (!b()) {
            return null;
        }
        try {
            return (IBinder) f96566d.get().get(this.f96572a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public Object f() {
        if (!c()) {
            return null;
        }
        try {
            return f96568f.get().get(this.f96572a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean g(List<Object> list) {
        if (!a()) {
            return false;
        }
        try {
            f96570h.get().set(this.f96572a, list);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean h(IBinder iBinder) {
        if (!b()) {
            return false;
        }
        try {
            f96566d.get().set(this.f96572a, iBinder);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean i(Object obj) {
        if (!c()) {
            return false;
        }
        try {
            f96568f.get().set(this.f96572a, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private a() {
    }
}
