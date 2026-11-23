package t8;

import android.content.ContentProviderClient;
import android.os.IInterface;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f97193b = "e";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f97194c = com.xinzhu.haunted.d.a(ContentProviderClient.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f97195d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f97196e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f97197a;

    public e(Object obj) {
        this.f97197a = obj;
    }

    public boolean a() {
        if (f97195d.get() != null) {
            return true;
        }
        if (f97196e) {
            return false;
        }
        androidx.lifecycle.i.a(f97195d, null, com.xinzhu.haunted.d.f(f97194c, "mContentProvider"));
        f97196e = true;
        return f97195d.get() != null;
    }

    public IInterface b() {
        if (!a()) {
            return null;
        }
        try {
            return (IInterface) f97195d.get().get(this.f97197a);
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
            f97195d.get().set(this.f97197a, iInterface);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private e() {
    }
}
