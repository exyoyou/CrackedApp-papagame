package m9;

import android.os.IInterface;
import androidx.lifecycle.i;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f94199a = "d";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f94200b = com.xinzhu.haunted.d.b("android.view.WindowManagerGlobal");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Field> f94201c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f94202d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static AtomicReference<Field> f94203e = new AtomicReference<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f94204f = false;

    public static boolean a() {
        if (f94203e.get() != null) {
            return true;
        }
        if (f94204f) {
            return false;
        }
        i.a(f94203e, null, com.xinzhu.haunted.d.f(f94200b, "ADD_PERMISSION_DENIED"));
        f94204f = true;
        return f94203e.get() != null;
    }

    public static boolean b() {
        if (f94201c.get() != null) {
            return true;
        }
        if (f94202d) {
            return false;
        }
        i.a(f94201c, null, com.xinzhu.haunted.d.f(f94200b, "sWindowManagerService"));
        f94202d = true;
        return f94201c.get() != null;
    }

    public static int c() {
        if (!a()) {
            return 0;
        }
        try {
            return ((Integer) f94203e.get().get(null)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static IInterface d() {
        if (!b()) {
            return null;
        }
        try {
            return (IInterface) f94201c.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static boolean e(int i10) {
        if (!a()) {
            return false;
        }
        try {
            f94203e.get().set(null, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static boolean f(IInterface iInterface) {
        if (!b()) {
            return false;
        }
        try {
            f94201c.get().set(null, iInterface);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }
}
