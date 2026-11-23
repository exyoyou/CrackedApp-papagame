package g9;

import androidx.lifecycle.i;
import java.io.File;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f91346b = "d";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f91347c = com.xinzhu.haunted.d.b("android.os.storage.StorageVolume");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f91348d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f91349e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Field> f91350f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f91351g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f91352a;

    public d(Object obj) {
        this.f91352a = obj;
    }

    public boolean a() {
        if (f91350f.get() != null) {
            return true;
        }
        if (f91351g) {
            return false;
        }
        i.a(f91350f, null, com.xinzhu.haunted.d.f(f91347c, "mInternalPath"));
        f91351g = true;
        return f91350f.get() != null;
    }

    public boolean b() {
        if (f91348d.get() != null) {
            return true;
        }
        if (f91349e) {
            return false;
        }
        i.a(f91348d, null, com.xinzhu.haunted.d.f(f91347c, "mPath"));
        f91349e = true;
        return f91348d.get() != null;
    }

    public File c() {
        if (!a()) {
            return null;
        }
        try {
            return (File) f91350f.get().get(this.f91352a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public File d() {
        if (!b()) {
            return null;
        }
        try {
            return (File) f91348d.get().get(this.f91352a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean e(File file) {
        if (!a()) {
            return false;
        }
        try {
            f91350f.get().set(this.f91352a, file);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean f(File file) {
        if (!b()) {
            return false;
        }
        try {
            f91348d.get().set(this.f91352a, file);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private d() {
    }
}
