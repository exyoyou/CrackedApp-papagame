package com.xinzhu.haunted.android.os;

import android.os.Parcel;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f89061b = "q";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f89062c = com.xinzhu.haunted.d.a(Parcel.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f89063d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f89064e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f89065f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f89066g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Method> f89067h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f89068i = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f89069a;

    public q(Object obj) {
        this.f89069a = obj;
    }

    public boolean a() {
        if (f89065f.get() != null) {
            return true;
        }
        if (f89066g) {
            return false;
        }
        androidx.lifecycle.i.a(f89065f, null, com.xinzhu.haunted.d.g(f89062c, "createString8Array", new Object[0]));
        f89066g = true;
        return f89065f.get() != null;
    }

    public boolean b() {
        if (f89063d.get() != null) {
            return true;
        }
        if (f89064e) {
            return false;
        }
        androidx.lifecycle.i.a(f89063d, null, com.xinzhu.haunted.d.g(f89062c, "readString8", new Object[0]));
        f89064e = true;
        return f89063d.get() != null;
    }

    public boolean c(int i10, ClassLoader classLoader, Class cls, Class[] clsArr) {
        if (f89067h.get() != null) {
            return true;
        }
        if (f89068i) {
            return false;
        }
        androidx.lifecycle.i.a(f89067h, null, com.xinzhu.haunted.d.g(f89062c, "readValue", Integer.TYPE, ClassLoader.class, Class.class, Class[].class));
        f89068i = true;
        return f89067h.get() != null;
    }

    public String[] d() {
        if (!a()) {
            return null;
        }
        try {
            return (String[]) f89065f.get().invoke(this.f89069a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public String e() {
        if (!b()) {
            return null;
        }
        try {
            return (String) f89063d.get().invoke(this.f89069a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public Object f(int i10, ClassLoader classLoader, Class cls, Class[] clsArr) {
        if (!c(i10, classLoader, cls, clsArr)) {
            return null;
        }
        try {
            return f89067h.get().invoke(this.f89069a, Integer.valueOf(i10), classLoader, cls, clsArr);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    private q() {
    }
}
