package com.xinzhu.haunted.android.app;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88504b = "n";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88505c = com.xinzhu.haunted.d.b("android.app.IActivityManager");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f88506d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88507e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f88508f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f88509g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Method> f88510h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f88511i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AtomicReference<Method> f88512j = new AtomicReference<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f88513k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static AtomicReference<Method> f88514l = new AtomicReference<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f88515m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static AtomicReference<Method> f88516n = new AtomicReference<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static boolean f88517o = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88518a;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f88523a = com.xinzhu.haunted.d.b("android.app.IActivityManager$Stub");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Method> f88524b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f88525c = false;

        public static IInterface a(IBinder iBinder) {
            if (!b(iBinder)) {
                return null;
            }
            try {
                return (IInterface) f88524b.get().invoke(null, iBinder);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public static boolean b(IBinder iBinder) {
            if (f88524b.get() != null) {
                return true;
            }
            if (f88525c) {
                return false;
            }
            androidx.lifecycle.i.a(f88524b, null, com.xinzhu.haunted.d.g(f88523a, "asInterface", IBinder.class));
            f88525c = true;
            return f88524b.get() != null;
        }
    }

    public n(Object obj) {
        this.f88518a = obj;
    }

    public boolean a(IBinder iBinder, int i10, Intent intent, int i11) {
        if (f88506d.get() != null) {
            return true;
        }
        if (f88507e) {
            return false;
        }
        AtomicReference<Method> atomicReference = f88506d;
        Class<?> cls = f88505c;
        Class cls2 = Integer.TYPE;
        androidx.lifecycle.i.a(atomicReference, null, com.xinzhu.haunted.d.g(cls, "finishActivity", IBinder.class, cls2, Intent.class, cls2));
        f88507e = true;
        return f88506d.get() != null;
    }

    public boolean b(IBinder iBinder, int i10, Intent intent, boolean z10) {
        if (f88508f.get() != null) {
            return true;
        }
        if (f88509g) {
            return false;
        }
        androidx.lifecycle.i.a(f88508f, null, com.xinzhu.haunted.d.g(f88505c, "finishActivity", IBinder.class, Integer.TYPE, Intent.class, Boolean.TYPE));
        f88509g = true;
        return f88508f.get() != null;
    }

    public boolean c(IBinder iBinder) {
        if (f88514l.get() != null) {
            return true;
        }
        if (f88515m) {
            return false;
        }
        androidx.lifecycle.i.a(f88514l, null, com.xinzhu.haunted.d.g(f88505c, "getLaunchedFromPackage", IBinder.class));
        f88515m = true;
        return f88514l.get() != null;
    }

    public boolean d(IBinder iBinder) {
        if (f88512j.get() != null) {
            return true;
        }
        if (f88513k) {
            return false;
        }
        androidx.lifecycle.i.a(f88512j, null, com.xinzhu.haunted.d.g(f88505c, "getLaunchedFromUid", IBinder.class));
        f88513k = true;
        return f88512j.get() != null;
    }

    public boolean e(IBinder iBinder, boolean z10) {
        if (f88510h.get() != null) {
            return true;
        }
        if (f88511i) {
            return false;
        }
        androidx.lifecycle.i.a(f88510h, null, com.xinzhu.haunted.d.g(f88505c, "getTaskForActivity", IBinder.class, Boolean.TYPE));
        f88511i = true;
        return f88510h.get() != null;
    }

    public boolean f(Object obj, String str, Intent intent, String str2, IBinder iBinder, String str3, int i10, int i11, Object obj2, Bundle bundle) {
        if (f88516n.get() != null) {
            return true;
        }
        if (f88517o) {
            return false;
        }
        AtomicReference<Method> atomicReference = f88516n;
        Class<?> cls = f88505c;
        Class cls2 = Integer.TYPE;
        androidx.lifecycle.i.a(atomicReference, null, com.xinzhu.haunted.d.g(cls, "startActivity", "android.app.IApplicationThread", String.class, Intent.class, String.class, IBinder.class, String.class, cls2, cls2, "android.app.ProfilerInfo", Bundle.class));
        f88517o = true;
        return f88516n.get() != null;
    }

    public boolean g(IBinder iBinder, int i10, Intent intent, int i11) {
        if (!a(iBinder, i10, intent, i11)) {
            return false;
        }
        try {
            return ((Boolean) f88506d.get().invoke(this.f88518a, iBinder, Integer.valueOf(i10), intent, Integer.valueOf(i11))).booleanValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public boolean h(IBinder iBinder, int i10, Intent intent, boolean z10) {
        if (!b(iBinder, i10, intent, z10)) {
            return false;
        }
        try {
            return ((Boolean) f88508f.get().invoke(this.f88518a, iBinder, Integer.valueOf(i10), intent, Boolean.valueOf(z10))).booleanValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return false;
        }
    }

    public String i(IBinder iBinder) {
        if (!c(iBinder)) {
            return null;
        }
        try {
            return (String) f88514l.get().invoke(this.f88518a, iBinder);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public int j(IBinder iBinder) {
        if (!d(iBinder)) {
            return 0;
        }
        try {
            return ((Integer) f88512j.get().invoke(this.f88518a, iBinder)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return 0;
        }
    }

    public int k(IBinder iBinder, boolean z10) {
        if (!e(iBinder, z10)) {
            return 0;
        }
        try {
            return ((Integer) f88510h.get().invoke(this.f88518a, iBinder, Boolean.valueOf(z10))).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return 0;
        }
    }

    public int startActivity(Object obj, String str, Intent intent, String str2, IBinder iBinder, String str3, int i10, int i11, Object obj2, Bundle bundle) {
        if (!f(obj, str, intent, str2, iBinder, str3, i10, i11, obj2, bundle)) {
            return 0;
        }
        try {
            return ((Integer) f88516n.get().invoke(this.f88518a, obj, str, intent, str2, iBinder, str3, Integer.valueOf(i10), Integer.valueOf(i11), obj2, bundle)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return 0;
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static Class<?> f88519b = com.xinzhu.haunted.d.b("android.app.IActivityManager$ContentProviderHolder");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static AtomicReference<Field> f88520c = new AtomicReference<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f88521d = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f88522a;

        public a(Object obj) {
            this.f88522a = obj;
        }

        public boolean a() {
            if (f88520c.get() != null) {
                return true;
            }
            if (f88521d) {
                return false;
            }
            androidx.lifecycle.i.a(f88520c, null, com.xinzhu.haunted.d.f(f88519b, com.umeng.analytics.pro.f.M));
            f88521d = true;
            return f88520c.get() != null;
        }

        public IInterface b() {
            if (!a()) {
                return null;
            }
            try {
                return (IInterface) f88520c.get().get(this.f88522a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public boolean c(IInterface iInterface) {
            if (!a()) {
                return false;
            }
            try {
                f88520c.get().set(this.f88522a, iInterface);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        private a() {
        }
    }

    private n() {
    }
}
