package a9;

import androidx.lifecycle.i;
import java.lang.reflect.Field;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f66b = "a";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f67c = com.xinzhu.haunted.d.b("android.location.GeocoderParams");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f68d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f69e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Field> f70f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f71g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Field> f72h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f73i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AtomicReference<Field> f74j = new AtomicReference<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f75k = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f76a;

    public a(Object obj) {
        this.f76a = obj;
    }

    public boolean a() {
        if (f72h.get() != null) {
            return true;
        }
        if (f73i) {
            return false;
        }
        i.a(f72h, null, com.xinzhu.haunted.d.f(f67c, "mAttributionTag"));
        f73i = true;
        return f72h.get() != null;
    }

    public boolean b() {
        if (f74j.get() != null) {
            return true;
        }
        if (f75k) {
            return false;
        }
        i.a(f74j, null, com.xinzhu.haunted.d.f(f67c, "mLocale"));
        f75k = true;
        return f74j.get() != null;
    }

    public boolean c() {
        if (f70f.get() != null) {
            return true;
        }
        if (f71g) {
            return false;
        }
        i.a(f70f, null, com.xinzhu.haunted.d.f(f67c, "mPackageName"));
        f71g = true;
        return f70f.get() != null;
    }

    public boolean d() {
        if (f68d.get() != null) {
            return true;
        }
        if (f69e) {
            return false;
        }
        i.a(f68d, null, com.xinzhu.haunted.d.f(f67c, "mUid"));
        f69e = true;
        return f68d.get() != null;
    }

    public String e() {
        if (!a()) {
            return null;
        }
        try {
            return (String) f72h.get().get(this.f76a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public Locale f() {
        if (!b()) {
            return null;
        }
        try {
            return (Locale) f74j.get().get(this.f76a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public String g() {
        if (!c()) {
            return null;
        }
        try {
            return (String) f70f.get().get(this.f76a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public int h() {
        if (!d()) {
            return 0;
        }
        try {
            return ((Integer) f68d.get().get(this.f76a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public boolean i(String str) {
        if (!a()) {
            return false;
        }
        try {
            f72h.get().set(this.f76a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean j(Locale locale) {
        if (!b()) {
            return false;
        }
        try {
            f74j.get().set(this.f76a, locale);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean k(String str) {
        if (!c()) {
            return false;
        }
        try {
            f70f.get().set(this.f76a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean l(int i10) {
        if (!d()) {
            return false;
        }
        try {
            f68d.get().set(this.f76a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private a() {
    }
}
