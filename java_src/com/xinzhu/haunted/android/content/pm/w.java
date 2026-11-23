package com.xinzhu.haunted.android.content.pm;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class w {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88909b = "w";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88910c = com.xinzhu.haunted.d.b("android.content.pm.UserInfo");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f88911d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88912e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Constructor> f88913f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f88914g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88915a;

    public w(Object obj) {
        this.f88915a = obj;
    }

    public static boolean a(int i10, String str, int i11) {
        if (f88913f.get() != null) {
            return true;
        }
        if (f88914g) {
            return false;
        }
        AtomicReference<Constructor> atomicReference = f88913f;
        Class<?> cls = f88910c;
        Class cls2 = Integer.TYPE;
        androidx.lifecycle.i.a(atomicReference, null, com.xinzhu.haunted.d.d(cls, "HtUserInfo", cls2, String.class, cls2));
        f88914g = true;
        return f88913f.get() != null;
    }

    public static boolean b() {
        if (f88911d.get() != null) {
            return true;
        }
        if (f88912e) {
            return false;
        }
        androidx.lifecycle.i.a(f88911d, null, com.xinzhu.haunted.d.f(f88910c, "FLAG_PRIMARY"));
        f88912e = true;
        return f88911d.get() != null;
    }

    public static w c(int i10, String str, int i11) {
        if (!a(i10, str, i11)) {
            return null;
        }
        try {
            w wVar = new w();
            wVar.f88915a = f88913f.get().newInstance(Integer.valueOf(i10), str, Integer.valueOf(i11));
            return wVar;
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

    public static int d() {
        if (!b()) {
            return 0;
        }
        try {
            return ((Integer) f88911d.get().get(null)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static boolean e(int i10) {
        if (!b()) {
            return false;
        }
        try {
            f88911d.get().set(null, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private w() {
    }
}
