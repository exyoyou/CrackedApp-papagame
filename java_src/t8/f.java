package t8;

import android.os.IInterface;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f97199b = "f";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f97200c = com.xinzhu.haunted.d.b("android.app.ContentProviderHolder");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f97201d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f97202e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f97203a;

    public f(Object obj) {
        this.f97203a = obj;
    }

    public boolean a() {
        if (f97201d.get() != null) {
            return true;
        }
        if (f97202e) {
            return false;
        }
        androidx.lifecycle.i.a(f97201d, null, com.xinzhu.haunted.d.f(f97200c, com.umeng.analytics.pro.f.M));
        f97202e = true;
        return f97201d.get() != null;
    }

    public IInterface b() {
        if (!a()) {
            return null;
        }
        try {
            return (IInterface) f97201d.get().get(this.f97203a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean c(IInterface iInterface) {
        if (!a()) {
            return false;
        }
        try {
            f97201d.get().set(this.f97203a, iInterface);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private f() {
    }
}
