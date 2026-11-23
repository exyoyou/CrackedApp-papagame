package t8;

import android.content.SyncAdapterType;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f97316b = "q";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f97317c = com.xinzhu.haunted.d.a(SyncAdapterType.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Constructor> f97318d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f97319e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f97320a;

    public q(Object obj) {
        this.f97320a = obj;
    }

    public static boolean a(String str, String str2, boolean z10, boolean z11, boolean z12, boolean z13, String str3, String str4) {
        if (f97318d.get() != null) {
            return true;
        }
        if (f97319e) {
            return false;
        }
        AtomicReference<Constructor> atomicReference = f97318d;
        Class<?> cls = f97317c;
        Class cls2 = Boolean.TYPE;
        androidx.lifecycle.i.a(atomicReference, null, com.xinzhu.haunted.d.d(cls, "HtSyncAdapterType", String.class, String.class, cls2, cls2, cls2, cls2, String.class, String.class));
        f97319e = true;
        return f97318d.get() != null;
    }

    public static q b(String str, String str2, boolean z10, boolean z11, boolean z12, boolean z13, String str3, String str4) {
        if (!a(str, str2, z10, z11, z12, z13, str3, str4)) {
            return null;
        }
        try {
            q qVar = new q();
            qVar.f97320a = f97318d.get().newInstance(str, str2, Boolean.valueOf(z10), Boolean.valueOf(z11), Boolean.valueOf(z12), Boolean.valueOf(z13), str3, str4);
            return qVar;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InstantiationException e11) {
            e11.printStackTrace();
            return null;
        } catch (InvocationTargetException e12) {
            e12.printStackTrace();
            return null;
        }
    }

    private q() {
    }
}
