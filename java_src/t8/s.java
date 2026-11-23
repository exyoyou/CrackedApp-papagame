package t8;

import android.accounts.Account;
import android.content.SyncRequest;
import android.os.Bundle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f97332b = "s";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f97333c = com.xinzhu.haunted.d.a(SyncRequest.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f97334d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f97335e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f97336f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f97337g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Method> f97338h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f97339i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AtomicReference<Method> f97340j = new AtomicReference<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f97341k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static AtomicReference<Method> f97342l = new AtomicReference<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f97343m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static AtomicReference<Method> f97344n = new AtomicReference<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static boolean f97345o = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f97346a;

    public s(Object obj) {
        this.f97346a = obj;
    }

    public boolean a() {
        if (f97342l.get() != null) {
            return true;
        }
        if (f97343m) {
            return false;
        }
        androidx.lifecycle.i.a(f97342l, null, com.xinzhu.haunted.d.g(f97333c, "getAccount", new Object[0]));
        f97343m = true;
        return f97342l.get() != null;
    }

    public boolean b() {
        if (f97334d.get() != null) {
            return true;
        }
        if (f97335e) {
            return false;
        }
        androidx.lifecycle.i.a(f97334d, null, com.xinzhu.haunted.d.g(f97333c, "getBundle", new Object[0]));
        f97335e = true;
        return f97334d.get() != null;
    }

    public boolean c() {
        if (f97344n.get() != null) {
            return true;
        }
        if (f97345o) {
            return false;
        }
        androidx.lifecycle.i.a(f97344n, null, com.xinzhu.haunted.d.g(f97333c, "getProvider", new Object[0]));
        f97345o = true;
        return f97344n.get() != null;
    }

    public boolean d() {
        if (f97336f.get() != null) {
            return true;
        }
        if (f97337g) {
            return false;
        }
        androidx.lifecycle.i.a(f97336f, null, com.xinzhu.haunted.d.g(f97333c, "getSyncFlexTime", new Object[0]));
        f97337g = true;
        return f97336f.get() != null;
    }

    public boolean e() {
        if (f97338h.get() != null) {
            return true;
        }
        if (f97339i) {
            return false;
        }
        androidx.lifecycle.i.a(f97338h, null, com.xinzhu.haunted.d.g(f97333c, "getSyncRunTime", new Object[0]));
        f97339i = true;
        return f97338h.get() != null;
    }

    public boolean f() {
        if (f97340j.get() != null) {
            return true;
        }
        if (f97341k) {
            return false;
        }
        androidx.lifecycle.i.a(f97340j, null, com.xinzhu.haunted.d.g(f97333c, "isPeriodic", new Object[0]));
        f97341k = true;
        return f97340j.get() != null;
    }

    public Account g() {
        if (!a()) {
            return null;
        }
        try {
            return (Account) f97342l.get().invoke(this.f97346a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public Bundle h() {
        if (!b()) {
            return null;
        }
        try {
            return (Bundle) f97334d.get().invoke(this.f97346a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public String i() {
        if (!c()) {
            return null;
        }
        try {
            return (String) f97344n.get().invoke(this.f97346a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public long j() {
        if (!d()) {
            return 0L;
        }
        try {
            return ((Long) f97336f.get().invoke(this.f97346a, new Object[0])).longValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0L;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return 0L;
        }
    }

    public long k() {
        if (!e()) {
            return 0L;
        }
        try {
            return ((Long) f97338h.get().invoke(this.f97346a, new Object[0])).longValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0L;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return 0L;
        }
    }

    public boolean l() {
        if (!f()) {
            return false;
        }
        try {
            return ((Boolean) f97340j.get().invoke(this.f97346a, new Object[0])).booleanValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    private s() {
    }
}
