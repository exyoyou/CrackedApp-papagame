package g9;

import android.os.IInterface;
import android.os.storage.StorageVolume;
import androidx.lifecycle.i;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f91333b = "c";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f91334c = com.xinzhu.haunted.d.b("android.os.storage.StorageManager");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f91335d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f91336e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Field> f91337f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f91338g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Method> f91339h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f91340i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AtomicReference<Method> f91341j = new AtomicReference<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f91342k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static AtomicReference<Method> f91343l = new AtomicReference<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f91344m = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f91345a;

    public c(Object obj) {
        this.f91345a = obj;
    }

    public static boolean b() {
        if (f91335d.get() != null) {
            return true;
        }
        if (f91336e) {
            return false;
        }
        i.a(f91335d, null, com.xinzhu.haunted.d.f(f91334c, "sStorageManager"));
        f91336e = true;
        return f91335d.get() != null;
    }

    public static boolean c(String str) {
        if (f91341j.get() != null) {
            return true;
        }
        if (f91342k) {
            return false;
        }
        i.a(f91341j, null, com.xinzhu.haunted.d.g(f91334c, "convert", String.class));
        f91342k = true;
        return f91341j.get() != null;
    }

    public static boolean d(UUID uuid) {
        if (f91343l.get() != null) {
            return true;
        }
        if (f91344m) {
            return false;
        }
        i.a(f91343l, null, com.xinzhu.haunted.d.g(f91334c, "convert", UUID.class));
        f91344m = true;
        return f91343l.get() != null;
    }

    public static boolean e(int i10, int i11) {
        if (f91339h.get() != null) {
            return true;
        }
        if (f91340i) {
            return false;
        }
        AtomicReference<Method> atomicReference = f91339h;
        Class<?> cls = f91334c;
        Class cls2 = Integer.TYPE;
        i.a(atomicReference, null, com.xinzhu.haunted.d.g(cls, "getVolumeList", cls2, cls2));
        f91340i = true;
        return f91339h.get() != null;
    }

    public static String f(UUID uuid) {
        if (!d(uuid)) {
            return null;
        }
        try {
            return (String) f91343l.get().invoke(null, uuid);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static UUID g(String str) {
        if (!c(str)) {
            return null;
        }
        try {
            return (UUID) f91341j.get().invoke(null, str);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static StorageVolume[] h(int i10, int i11) {
        if (!e(i10, i11)) {
            return null;
        }
        try {
            return (StorageVolume[]) f91339h.get().invoke(null, Integer.valueOf(i10), Integer.valueOf(i11));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static IInterface j() {
        if (!b()) {
            return null;
        }
        try {
            return (IInterface) f91335d.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static boolean l(IInterface iInterface) {
        if (!b()) {
            return false;
        }
        try {
            f91335d.get().set(null, iInterface);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean a() {
        if (f91337f.get() != null) {
            return true;
        }
        if (f91338g) {
            return false;
        }
        i.a(f91337f, null, com.xinzhu.haunted.d.f(f91334c, "mStorageManager"));
        f91338g = true;
        return f91337f.get() != null;
    }

    public IInterface i() {
        if (!a()) {
            return null;
        }
        try {
            return (IInterface) f91337f.get().get(this.f91345a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean k(IInterface iInterface) {
        if (!a()) {
            return false;
        }
        try {
            f91337f.get().set(this.f91345a, iInterface);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private c() {
    }
}
