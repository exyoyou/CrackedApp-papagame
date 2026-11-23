package t8;

import android.accounts.Account;
import android.content.PeriodicSync;
import android.os.Bundle;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f97307b = "p";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f97308c = com.xinzhu.haunted.d.a(PeriodicSync.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f97309d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f97310e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Constructor> f97311f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f97312g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Constructor> f97313h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f97314i = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f97315a;

    public p(Object obj) {
        this.f97315a = obj;
    }

    public static boolean a(Account account, String str, Bundle bundle, long j10, long j11) {
        if (f97311f.get() != null) {
            return true;
        }
        if (f97312g) {
            return false;
        }
        AtomicReference<Constructor> atomicReference = f97311f;
        Class<?> cls = f97308c;
        Class cls2 = Long.TYPE;
        androidx.lifecycle.i.a(atomicReference, null, com.xinzhu.haunted.d.d(cls, "HtPeriodicSync", Account.class, String.class, Bundle.class, cls2, cls2));
        f97312g = true;
        return f97311f.get() != null;
    }

    public static boolean b(PeriodicSync periodicSync) {
        if (f97313h.get() != null) {
            return true;
        }
        if (f97314i) {
            return false;
        }
        androidx.lifecycle.i.a(f97313h, null, com.xinzhu.haunted.d.d(f97308c, "HtPeriodicSync", PeriodicSync.class));
        f97314i = true;
        return f97313h.get() != null;
    }

    public static p d(Account account, String str, Bundle bundle, long j10, long j11) {
        if (!a(account, str, bundle, j10, j11)) {
            return null;
        }
        try {
            p pVar = new p();
            pVar.f97315a = f97311f.get().newInstance(account, str, bundle, Long.valueOf(j10), Long.valueOf(j11));
            return pVar;
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

    public static p e(PeriodicSync periodicSync) {
        if (!b(periodicSync)) {
            return null;
        }
        try {
            p pVar = new p();
            pVar.f97315a = f97313h.get().newInstance(periodicSync);
            return pVar;
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

    public boolean c() {
        if (f97309d.get() != null) {
            return true;
        }
        if (f97310e) {
            return false;
        }
        androidx.lifecycle.i.a(f97309d, null, com.xinzhu.haunted.d.f(f97308c, "flexTime"));
        f97310e = true;
        return f97309d.get() != null;
    }

    public long f() {
        if (!c()) {
            return 0L;
        }
        try {
            return ((Long) f97309d.get().get(this.f97315a)).longValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0L;
        }
    }

    public boolean g(long j10) {
        if (!c()) {
            return false;
        }
        try {
            f97309d.get().set(this.f97315a, Long.valueOf(j10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private p() {
    }
}
