package com.xinzhu.haunted.android.content.pm;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88755b = "f";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88756c = com.xinzhu.haunted.d.b("android.content.pm.IPackageManager");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f88757d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88758e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f88759f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f88760g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Method> f88761h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f88762i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AtomicReference<Method> f88763j = new AtomicReference<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f88764k = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88765a;

    public f(Object obj) {
        this.f88765a = obj;
    }

    public int a(String str, String str2, int i10) {
        if (!b(str, str2, i10)) {
            return 0;
        }
        try {
            return ((Integer) f88761h.get().invoke(this.f88765a, str, str2, Integer.valueOf(i10))).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return 0;
        }
    }

    public boolean b(String str, String str2, int i10) {
        if (f88761h.get() != null) {
            return true;
        }
        if (f88762i) {
            return false;
        }
        androidx.lifecycle.i.a(f88761h, null, com.xinzhu.haunted.d.g(f88756c, "checkPermission", String.class, String.class, Integer.TYPE));
        f88762i = true;
        return f88761h.get() != null;
    }

    public boolean c(String str, int i10, int i11) {
        if (f88757d.get() != null) {
            return true;
        }
        if (f88758e) {
            return false;
        }
        AtomicReference<Method> atomicReference = f88757d;
        Class<?> cls = f88756c;
        Class cls2 = Integer.TYPE;
        androidx.lifecycle.i.a(atomicReference, null, com.xinzhu.haunted.d.g(cls, "getApplicationInfo", String.class, cls2, cls2));
        f88758e = true;
        return f88757d.get() != null;
    }

    public boolean d(String str, long j10, int i10) {
        if (f88759f.get() != null) {
            return true;
        }
        if (f88760g) {
            return false;
        }
        androidx.lifecycle.i.a(f88759f, null, com.xinzhu.haunted.d.g(f88756c, "getApplicationInfo", String.class, Long.TYPE, Integer.TYPE));
        f88760g = true;
        return f88759f.get() != null;
    }

    public boolean e(Intent intent, String str, int i10, int i11) {
        if (f88763j.get() != null) {
            return true;
        }
        if (f88764k) {
            return false;
        }
        AtomicReference<Method> atomicReference = f88763j;
        Class<?> cls = f88756c;
        Class cls2 = Integer.TYPE;
        androidx.lifecycle.i.a(atomicReference, null, com.xinzhu.haunted.d.g(cls, "resolveIntent", Intent.class, String.class, cls2, cls2));
        f88764k = true;
        return f88763j.get() != null;
    }

    public ApplicationInfo f(String str, int i10, int i11) {
        if (!c(str, i10, i11)) {
            return null;
        }
        try {
            return (ApplicationInfo) f88757d.get().invoke(this.f88765a, str, Integer.valueOf(i10), Integer.valueOf(i11));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public ApplicationInfo g(String str, long j10, int i10) {
        if (!d(str, j10, i10)) {
            return null;
        }
        try {
            return (ApplicationInfo) f88759f.get().invoke(this.f88765a, str, Long.valueOf(j10), Integer.valueOf(i10));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public ResolveInfo h(Intent intent, String str, int i10, int i11) {
        if (!e(intent, str, i10, i11)) {
            return null;
        }
        try {
            return (ResolveInfo) f88763j.get().invoke(this.f88765a, intent, str, Integer.valueOf(i10), Integer.valueOf(i11));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    private f() {
    }
}
