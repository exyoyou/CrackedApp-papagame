package com.xinzhu.haunted.android.app;

import android.app.Application;
import android.app.Instrumentation;
import android.content.pm.ApplicationInfo;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class v {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88581b = "v";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88582c = com.xinzhu.haunted.d.b("android.app.LoadedApk");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f88583d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88584e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Field> f88585f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f88586g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Field> f88587h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f88588i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AtomicReference<Method> f88589j = new AtomicReference<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f88590k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static AtomicReference<Method> f88591l = new AtomicReference<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f88592m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static AtomicReference<Method> f88593n = new AtomicReference<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static boolean f88594o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static AtomicReference<Method> f88595p = new AtomicReference<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static boolean f88596q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static AtomicReference<Method> f88597r = new AtomicReference<>();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static boolean f88598s = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88599a;

    public static final class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static Class<?> f88600b = com.xinzhu.haunted.d.b("android.app.LoadedApk$ReceiverDispatcher");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static AtomicReference<Field> f88601c = new AtomicReference<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f88602d = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f88603a;

        /* JADX INFO: renamed from: com.xinzhu.haunted.android.app.v$a$a, reason: collision with other inner class name */
        public static final class C1095a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static Class<?> f88604a = com.xinzhu.haunted.d.b("android.app.LoadedApk$ReceiverDispatcher$Args");
        }

        public a(Object obj) {
            this.f88603a = obj;
        }

        public boolean a() {
            if (f88601c.get() != null) {
                return true;
            }
            if (f88602d) {
                return false;
            }
            androidx.lifecycle.i.a(f88601c, null, com.xinzhu.haunted.d.f(f88600b, "mIIntentReceiver"));
            f88602d = true;
            return f88601c.get() != null;
        }

        public Object b() {
            if (!a()) {
                return null;
            }
            try {
                return f88601c.get().get(this.f88603a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public boolean c(Object obj) {
            if (!a()) {
                return false;
            }
            try {
                f88601c.get().set(this.f88603a, obj);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static final class b {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static Class<?> f88605b = com.xinzhu.haunted.d.b("android.app.LoadedApk$ReceiverDispatcher$InnerReceiver");

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private static AtomicReference<Field> f88606c = new AtomicReference<>();

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private static boolean f88607d = false;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public Object f88608a;

            public b(Object obj) {
                this.f88608a = obj;
            }

            public boolean a() {
                if (f88606c.get() != null) {
                    return true;
                }
                if (f88607d) {
                    return false;
                }
                androidx.lifecycle.i.a(f88606c, null, com.xinzhu.haunted.d.f(f88605b, "mDispatcher"));
                f88607d = true;
                return f88606c.get() != null;
            }

            public Object b() {
                if (!a()) {
                    return null;
                }
                try {
                    return f88606c.get().get(this.f88608a);
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return null;
                }
            }

            public boolean c(Object obj) {
                if (!a()) {
                    return false;
                }
                try {
                    f88606c.get().set(this.f88608a, obj);
                    return true;
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                    return false;
                }
            }

            private b() {
            }
        }

        private a() {
        }
    }

    public v(Object obj) {
        this.f88599a = obj;
    }

    public boolean a() {
        if (f88585f.get() != null) {
            return true;
        }
        if (f88586g) {
            return false;
        }
        androidx.lifecycle.i.a(f88585f, null, com.xinzhu.haunted.d.f(f88582c, "mApplicationInfo"));
        f88586g = true;
        return f88585f.get() != null;
    }

    public boolean b() {
        if (f88587h.get() != null) {
            return true;
        }
        if (f88588i) {
            return false;
        }
        androidx.lifecycle.i.a(f88587h, null, com.xinzhu.haunted.d.f(f88582c, "mPackageName"));
        f88588i = true;
        return f88587h.get() != null;
    }

    public boolean c() {
        if (f88583d.get() != null) {
            return true;
        }
        if (f88584e) {
            return false;
        }
        androidx.lifecycle.i.a(f88583d, null, com.xinzhu.haunted.d.f(f88582c, "mSecurityViolation"));
        f88584e = true;
        return f88583d.get() != null;
    }

    public boolean d() {
        if (f88591l.get() != null) {
            return true;
        }
        if (f88592m) {
            return false;
        }
        androidx.lifecycle.i.a(f88591l, null, com.xinzhu.haunted.d.g(f88582c, "getClassLoader", new Object[0]));
        f88592m = true;
        return f88591l.get() != null;
    }

    public boolean e() {
        if (f88597r.get() != null) {
            return true;
        }
        if (f88598s) {
            return false;
        }
        androidx.lifecycle.i.a(f88597r, null, com.xinzhu.haunted.d.g(f88582c, "getCredentialProtectedDataDirFile", new Object[0]));
        f88598s = true;
        return f88597r.get() != null;
    }

    public boolean f() {
        if (f88593n.get() != null) {
            return true;
        }
        if (f88594o) {
            return false;
        }
        androidx.lifecycle.i.a(f88593n, null, com.xinzhu.haunted.d.g(f88582c, "getDataDirFile", new Object[0]));
        f88594o = true;
        return f88593n.get() != null;
    }

    public boolean g() {
        if (f88595p.get() != null) {
            return true;
        }
        if (f88596q) {
            return false;
        }
        androidx.lifecycle.i.a(f88595p, null, com.xinzhu.haunted.d.g(f88582c, "getDeviceProtectedDataDirFile", new Object[0]));
        f88596q = true;
        return f88595p.get() != null;
    }

    public boolean h(boolean z10, Instrumentation instrumentation) {
        if (f88589j.get() != null) {
            return true;
        }
        if (f88590k) {
            return false;
        }
        androidx.lifecycle.i.a(f88589j, null, com.xinzhu.haunted.d.g(f88582c, "makeApplication", Boolean.TYPE, Instrumentation.class));
        f88590k = true;
        return f88589j.get() != null;
    }

    public ClassLoader i() {
        if (!d()) {
            return null;
        }
        try {
            return (ClassLoader) f88591l.get().invoke(this.f88599a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public File j() {
        if (!e()) {
            return null;
        }
        try {
            return (File) f88597r.get().invoke(this.f88599a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public File k() {
        if (!f()) {
            return null;
        }
        try {
            return (File) f88593n.get().invoke(this.f88599a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public File l() {
        if (!g()) {
            return null;
        }
        try {
            return (File) f88595p.get().invoke(this.f88599a, new Object[0]);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public ApplicationInfo m() {
        if (!a()) {
            return null;
        }
        try {
            return (ApplicationInfo) f88585f.get().get(this.f88599a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public String n() {
        if (!b()) {
            return null;
        }
        try {
            return (String) f88587h.get().get(this.f88599a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean o() {
        if (!c()) {
            return false;
        }
        try {
            return ((Boolean) f88583d.get().get(this.f88599a)).booleanValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public Application p(boolean z10, Instrumentation instrumentation) {
        if (!h(z10, instrumentation)) {
            return null;
        }
        try {
            return (Application) f88589j.get().invoke(this.f88599a, Boolean.valueOf(z10), instrumentation);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public boolean q(ApplicationInfo applicationInfo) {
        if (!a()) {
            return false;
        }
        try {
            f88585f.get().set(this.f88599a, applicationInfo);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean r(String str) {
        if (!b()) {
            return false;
        }
        try {
            f88587h.get().set(this.f88599a, str);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean s(boolean z10) {
        if (!c()) {
            return false;
        }
        try {
            f88583d.get().set(this.f88599a, Boolean.valueOf(z10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private v() {
    }
}
