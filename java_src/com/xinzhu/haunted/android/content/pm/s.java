package com.xinzhu.haunted.android.content.pm;

import android.content.pm.VersionedPackage;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88870b = "s";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88871c = com.xinzhu.haunted.d.a(r.a());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f88872d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88873e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f88874f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f88875g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Constructor> f88876h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f88877i = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88878a;

    public s(Object obj) {
        this.f88878a = obj;
    }

    public static boolean a(String str, String str2, List list, String str3, long j10, int i10, VersionedPackage versionedPackage, List list2, List list3, boolean z10) {
        if (f88876h.get() != null) {
            return true;
        }
        if (f88877i) {
            return false;
        }
        androidx.lifecycle.i.a(f88876h, null, com.xinzhu.haunted.d.d(f88871c, "HtSharedLibraryInfo", String.class, String.class, List.class, String.class, Long.TYPE, Integer.TYPE, q.a(), List.class, List.class, Boolean.TYPE));
        f88877i = true;
        return f88876h.get() != null;
    }

    public static s d(String str, String str2, List list, String str3, long j10, int i10, VersionedPackage versionedPackage, List list2, List list3, boolean z10) {
        if (!a(str, str2, list, str3, j10, i10, versionedPackage, list2, list3, z10)) {
            return null;
        }
        try {
            s sVar = new s();
            sVar.f88878a = f88876h.get().newInstance(str, str2, list, str3, Long.valueOf(j10), Integer.valueOf(i10), versionedPackage, list2, list3, Boolean.valueOf(z10));
            return sVar;
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
        if (f88872d.get() != null) {
            return true;
        }
        if (f88873e) {
            return false;
        }
        androidx.lifecycle.i.a(f88872d, null, com.xinzhu.haunted.d.g(f88871c, "getName", new Object[0]));
        f88873e = true;
        return f88872d.get() != null;
    }

    public boolean c() {
        if (f88874f.get() != null) {
            return true;
        }
        if (f88875g) {
            return false;
        }
        androidx.lifecycle.i.a(f88874f, null, com.xinzhu.haunted.d.g(f88871c, "getPath", new Object[0]));
        f88875g = true;
        return f88874f.get() != null;
    }

    public String e() {
        if (!b()) {
            return null;
        }
        try {
            return (String) f88872d.get().invoke(this.f88878a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public String f() {
        if (!c()) {
            return null;
        }
        try {
            return (String) f88874f.get().invoke(this.f88878a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    private s() {
    }
}
