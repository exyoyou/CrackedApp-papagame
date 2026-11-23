package com.xinzhu.haunted.android.os;

import android.os.UserHandle;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class x {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f89131b = "x";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f89132c = com.xinzhu.haunted.d.a(UserHandle.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f89133d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f89134e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Constructor> f89135f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f89136g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f89137a;

    public x(Object obj) {
        this.f89137a = obj;
    }

    public static boolean a(int i10) {
        if (f89135f.get() != null) {
            return true;
        }
        if (f89136g) {
            return false;
        }
        androidx.lifecycle.i.a(f89135f, null, com.xinzhu.haunted.d.d(f89132c, "HtUserHandle", Integer.TYPE));
        f89136g = true;
        return f89135f.get() != null;
    }

    public static x c(int i10) {
        if (!a(i10)) {
            return null;
        }
        try {
            x xVar = new x();
            xVar.f89137a = f89135f.get().newInstance(Integer.valueOf(i10));
            return xVar;
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

    public boolean b() {
        if (f89133d.get() != null) {
            return true;
        }
        if (f89134e) {
            return false;
        }
        androidx.lifecycle.i.a(f89133d, null, com.xinzhu.haunted.d.g(f89132c, "getIdentifier", new Object[0]));
        f89134e = true;
        return f89133d.get() != null;
    }

    public int getIdentifier() {
        if (!b()) {
            return 0;
        }
        try {
            return ((Integer) f89133d.get().invoke(this.f89137a, new Object[0])).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return 0;
        }
    }

    private x() {
    }
}
