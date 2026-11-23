package t8;

import android.content.ClipboardManager;
import android.os.IInterface;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f97185b = "d";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f97186c = com.xinzhu.haunted.d.a(ClipboardManager.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f97187d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f97188e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Field> f97189f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f97190g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f97191a;

    public d(Object obj) {
        this.f97191a = obj;
    }

    public static boolean b() {
        if (f97189f.get() != null) {
            return true;
        }
        if (f97190g) {
            return false;
        }
        androidx.lifecycle.i.a(f97189f, null, com.xinzhu.haunted.d.f(f97186c, "sService"));
        f97190g = true;
        return f97189f.get() != null;
    }

    public static IInterface d() {
        if (!b()) {
            return null;
        }
        try {
            return (IInterface) f97189f.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static boolean f(IInterface iInterface) {
        if (!b()) {
            return false;
        }
        try {
            f97189f.get().set(null, iInterface);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean a() {
        if (f97187d.get() != null) {
            return true;
        }
        if (f97188e) {
            return false;
        }
        androidx.lifecycle.i.a(f97187d, null, com.xinzhu.haunted.d.f(f97186c, "mService"));
        f97188e = true;
        return f97187d.get() != null;
    }

    public IInterface c() {
        if (!a()) {
            return null;
        }
        try {
            return (IInterface) f97187d.get().get(this.f97191a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean e(IInterface iInterface) {
        if (!a()) {
            return false;
        }
        try {
            f97187d.get().set(this.f97191a, iInterface);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private d() {
    }
}
