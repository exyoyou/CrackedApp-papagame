package com.xinzhu.haunted.android.app;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.IBinder;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88242b = "a";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88243c = com.xinzhu.haunted.d.a(Activity.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f88244d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88245e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Field> f88246f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f88247g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Field> f88248h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f88249i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AtomicReference<Field> f88250j = new AtomicReference<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f88251k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static AtomicReference<Field> f88252l = new AtomicReference<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f88253m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static AtomicReference<Method> f88254n = new AtomicReference<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static boolean f88255o = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88256a;

    public a(Object obj) {
        this.f88256a = obj;
    }

    public boolean a() {
        if (f88250j.get() != null) {
            return true;
        }
        if (f88251k) {
            return false;
        }
        androidx.lifecycle.i.a(f88250j, null, com.xinzhu.haunted.d.f(f88243c, "mActivityInfo"));
        f88251k = true;
        return f88250j.get() != null;
    }

    public boolean b() {
        if (f88248h.get() != null) {
            return true;
        }
        if (f88249i) {
            return false;
        }
        androidx.lifecycle.i.a(f88248h, null, com.xinzhu.haunted.d.f(f88243c, "mFinished"));
        f88249i = true;
        return f88248h.get() != null;
    }

    public boolean c() {
        if (f88244d.get() != null) {
            return true;
        }
        if (f88245e) {
            return false;
        }
        androidx.lifecycle.i.a(f88244d, null, com.xinzhu.haunted.d.f(f88243c, "mResultCode"));
        f88245e = true;
        return f88244d.get() != null;
    }

    public boolean d() {
        if (f88246f.get() != null) {
            return true;
        }
        if (f88247g) {
            return false;
        }
        androidx.lifecycle.i.a(f88246f, null, com.xinzhu.haunted.d.f(f88243c, "mResultData"));
        f88247g = true;
        return f88246f.get() != null;
    }

    public boolean e() {
        if (f88252l.get() != null) {
            return true;
        }
        if (f88253m) {
            return false;
        }
        androidx.lifecycle.i.a(f88252l, null, com.xinzhu.haunted.d.f(f88243c, "mToken"));
        f88253m = true;
        return f88252l.get() != null;
    }

    public boolean f() {
        if (f88254n.get() != null) {
            return true;
        }
        if (f88255o) {
            return false;
        }
        androidx.lifecycle.i.a(f88254n, null, com.xinzhu.haunted.d.g(f88243c, "getActivityToken", new Object[0]));
        f88255o = true;
        return f88254n.get() != null;
    }

    public IBinder g() {
        if (!f()) {
            return null;
        }
        try {
            return (IBinder) f88254n.get().invoke(this.f88256a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public ActivityInfo h() {
        if (!a()) {
            return null;
        }
        try {
            return (ActivityInfo) f88250j.get().get(this.f88256a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean i() {
        if (!b()) {
            return false;
        }
        try {
            return ((Boolean) f88248h.get().get(this.f88256a)).booleanValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public int j() {
        if (!c()) {
            return 0;
        }
        try {
            return ((Integer) f88244d.get().get(this.f88256a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public Intent k() {
        if (!d()) {
            return null;
        }
        try {
            return (Intent) f88246f.get().get(this.f88256a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public IBinder l() {
        if (!e()) {
            return null;
        }
        try {
            return (IBinder) f88252l.get().get(this.f88256a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean m(ActivityInfo activityInfo) {
        if (!a()) {
            return false;
        }
        try {
            f88250j.get().set(this.f88256a, activityInfo);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean n(boolean z10) {
        if (!b()) {
            return false;
        }
        try {
            f88248h.get().set(this.f88256a, Boolean.valueOf(z10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean o(int i10) {
        if (!c()) {
            return false;
        }
        try {
            f88244d.get().set(this.f88256a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean p(Intent intent) {
        if (!d()) {
            return false;
        }
        try {
            f88246f.get().set(this.f88256a, intent);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean q(IBinder iBinder) {
        if (!e()) {
            return false;
        }
        try {
            f88252l.get().set(this.f88256a, iBinder);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private a() {
    }
}
