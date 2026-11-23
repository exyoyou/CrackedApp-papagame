package com.xinzhu.haunted.android.app;

import android.app.ActivityManager;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f88280a = "c";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f88281b = com.xinzhu.haunted.d.a(ActivityManager.class);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AtomicReference<Field> f88282c = new AtomicReference<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f88283d = false;

    public static boolean a() {
        if (f88282c.get() != null) {
            return true;
        }
        if (f88283d) {
            return false;
        }
        androidx.lifecycle.i.a(f88282c, null, com.xinzhu.haunted.d.f(f88281b, "START_INTENT_NOT_RESOLVED"));
        f88283d = true;
        return f88282c.get() != null;
    }

    public static int b() {
        if (!a()) {
            return 0;
        }
        try {
            return ((Integer) f88282c.get().get(null)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public static boolean c(int i10) {
        if (!a()) {
            return false;
        }
        try {
            f88282c.get().set(null, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static Class<?> f88284b = com.xinzhu.haunted.d.b("android.app.ActivityManager$PendingIntentInfo");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static AtomicReference<Field> f88285c = new AtomicReference<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f88286d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static AtomicReference<Field> f88287e = new AtomicReference<>();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static boolean f88288f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static AtomicReference<Field> f88289g = new AtomicReference<>();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static boolean f88290h = false;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static AtomicReference<Field> f88291i = new AtomicReference<>();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static boolean f88292j = false;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static AtomicReference<Constructor> f88293k = new AtomicReference<>();

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static boolean f88294l = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f88295a;

        public a(Object obj) {
            this.f88295a = obj;
        }

        public static boolean a(String str, int i10, boolean z10, int i11) {
            if (f88293k.get() != null) {
                return true;
            }
            if (f88294l) {
                return false;
            }
            AtomicReference<Constructor> atomicReference = f88293k;
            Class<?> cls = f88284b;
            Class cls2 = Integer.TYPE;
            androidx.lifecycle.i.a(atomicReference, null, com.xinzhu.haunted.d.d(cls, "HtPendingIntentInfo", String.class, cls2, Boolean.TYPE, cls2));
            f88294l = true;
            return f88293k.get() != null;
        }

        public static a f(String str, int i10, boolean z10, int i11) {
            if (!a(str, i10, z10, i11)) {
                return null;
            }
            try {
                a aVar = new a();
                aVar.f88295a = f88293k.get().newInstance(str, Integer.valueOf(i10), Boolean.valueOf(z10), Integer.valueOf(i11));
                return aVar;
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
            if (f88285c.get() != null) {
                return true;
            }
            if (f88286d) {
                return false;
            }
            androidx.lifecycle.i.a(f88285c, null, com.xinzhu.haunted.d.f(f88284b, "mCreatorPackage"));
            f88286d = true;
            return f88285c.get() != null;
        }

        public boolean c() {
            if (f88287e.get() != null) {
                return true;
            }
            if (f88288f) {
                return false;
            }
            androidx.lifecycle.i.a(f88287e, null, com.xinzhu.haunted.d.f(f88284b, "mCreatorUid"));
            f88288f = true;
            return f88287e.get() != null;
        }

        public boolean d() {
            if (f88289g.get() != null) {
                return true;
            }
            if (f88290h) {
                return false;
            }
            androidx.lifecycle.i.a(f88289g, null, com.xinzhu.haunted.d.f(f88284b, "mImmutable"));
            f88290h = true;
            return f88289g.get() != null;
        }

        public boolean e() {
            if (f88291i.get() != null) {
                return true;
            }
            if (f88292j) {
                return false;
            }
            androidx.lifecycle.i.a(f88291i, null, com.xinzhu.haunted.d.f(f88284b, "mIntentSenderType"));
            f88292j = true;
            return f88291i.get() != null;
        }

        public String g() {
            if (!b()) {
                return null;
            }
            try {
                return (String) f88285c.get().get(this.f88295a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public int h() {
            if (!c()) {
                return 0;
            }
            try {
                return ((Integer) f88287e.get().get(this.f88295a)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public boolean i() {
            if (!d()) {
                return false;
            }
            try {
                return ((Boolean) f88289g.get().get(this.f88295a)).booleanValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public int j() {
            if (!e()) {
                return 0;
            }
            try {
                return ((Integer) f88291i.get().get(this.f88295a)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public boolean k(String str) {
            if (!b()) {
                return false;
            }
            try {
                f88285c.get().set(this.f88295a, str);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public boolean l(int i10) {
            if (!c()) {
                return false;
            }
            try {
                f88287e.get().set(this.f88295a, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public boolean m(boolean z10) {
            if (!d()) {
                return false;
            }
            try {
                f88289g.get().set(this.f88295a, Boolean.valueOf(z10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public boolean n(int i10) {
            if (!e()) {
                return false;
            }
            try {
                f88291i.get().set(this.f88295a, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        private a() {
        }
    }
}
