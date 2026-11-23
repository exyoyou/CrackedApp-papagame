package com.xinzhu.haunted.android.content.pm;

import android.content.pm.Signature;
import android.util.ArraySet;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.PublicKey;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88813b = "n";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88814c = com.xinzhu.haunted.d.b("android.content.pm.PackageParser");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Method> f88815d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88816e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f88817f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f88818g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Method> f88819h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f88820i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AtomicReference<Method> f88821j = new AtomicReference<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f88822k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static AtomicReference<Method> f88823l = new AtomicReference<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f88824m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static AtomicReference<Constructor> f88825n = new AtomicReference<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static boolean f88826o = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88827a;

    public n(Object obj) {
        this.f88827a = obj;
    }

    public static boolean a() {
        if (f88825n.get() != null) {
            return true;
        }
        if (f88826o) {
            return false;
        }
        androidx.lifecycle.i.a(f88825n, null, com.xinzhu.haunted.d.d(f88814c, "HtPackageParser", new Object[0]));
        f88826o = true;
        return f88825n.get() != null;
    }

    public static boolean b(Object obj, int i10) {
        if (f88817f.get() != null) {
            return true;
        }
        if (f88818g) {
            return false;
        }
        androidx.lifecycle.i.a(f88817f, null, com.xinzhu.haunted.d.g(f88814c, "collectCertificates", "android.content.pm.PackageParser$Package", Integer.TYPE));
        f88818g = true;
        return f88817f.get() != null;
    }

    public static boolean c(Object obj, boolean z10) {
        if (f88819h.get() != null) {
            return true;
        }
        if (f88820i) {
            return false;
        }
        androidx.lifecycle.i.a(f88819h, null, com.xinzhu.haunted.d.g(f88814c, "collectCertificates", "android.content.pm.PackageParser$Package", Boolean.TYPE));
        f88820i = true;
        return f88819h.get() != null;
    }

    public static void g(Object obj, int i10) throws Throwable {
        if (b(obj, i10)) {
            try {
                f88817f.get().invoke(null, obj, Integer.valueOf(i10));
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                if (e11.getCause() == null) {
                    throw e11;
                }
                throw e11.getCause();
            }
        }
    }

    public static void h(Object obj, boolean z10) throws Throwable {
        if (c(obj, z10)) {
            try {
                f88819h.get().invoke(null, obj, Boolean.valueOf(z10));
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                if (e11.getCause() == null) {
                    throw e11;
                }
                throw e11.getCause();
            }
        }
    }

    public static n k() {
        if (!a()) {
            return null;
        }
        try {
            n nVar = new n();
            nVar.f88827a = f88825n.get().newInstance(new Object[0]);
            return nVar;
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

    public boolean d(Object obj, int i10) {
        if (f88821j.get() != null) {
            return true;
        }
        if (f88822k) {
            return false;
        }
        androidx.lifecycle.i.a(f88821j, null, com.xinzhu.haunted.d.g(f88814c, "collectCertificates", "android.content.pm.PackageParser$Package", Integer.TYPE));
        f88822k = true;
        return f88821j.get() != null;
    }

    public boolean e(Object obj, boolean z10) {
        if (f88823l.get() != null) {
            return true;
        }
        if (f88824m) {
            return false;
        }
        androidx.lifecycle.i.a(f88823l, null, com.xinzhu.haunted.d.g(f88814c, "collectCertificates", "android.content.pm.PackageParser$Package", Boolean.TYPE));
        f88824m = true;
        return f88823l.get() != null;
    }

    public boolean f(File file, int i10) {
        if (f88815d.get() != null) {
            return true;
        }
        if (f88816e) {
            return false;
        }
        androidx.lifecycle.i.a(f88815d, null, com.xinzhu.haunted.d.g(f88814c, "parsePackage", File.class, Integer.TYPE));
        f88816e = true;
        return f88815d.get() != null;
    }

    public void i(Object obj, int i10) throws Throwable {
        if (d(obj, i10)) {
            try {
                f88821j.get().invoke(this.f88827a, obj, Integer.valueOf(i10));
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                if (e11.getCause() == null) {
                    throw e11;
                }
                throw e11.getCause();
            }
        }
    }

    public void j(Object obj, boolean z10) throws Throwable {
        if (e(obj, z10)) {
            try {
                f88823l.get().invoke(this.f88827a, obj, Boolean.valueOf(z10));
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
            } catch (InvocationTargetException e11) {
                if (e11.getCause() == null) {
                    throw e11;
                }
                throw e11.getCause();
            }
        }
    }

    public Object l(File file, int i10) {
        if (!f(file, i10)) {
            return null;
        }
        try {
            return f88815d.get().invoke(this.f88827a, file, Integer.valueOf(i10));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static final class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static Class<?> f88828b = com.xinzhu.haunted.d.b("android.content.pm.PackageParser$SigningDetails");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static AtomicReference<Field> f88829c = new AtomicReference<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f88830d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static AtomicReference<Field> f88831e = new AtomicReference<>();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static boolean f88832f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static AtomicReference<Field> f88833g = new AtomicReference<>();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static boolean f88834h = false;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static AtomicReference<Field> f88835i = new AtomicReference<>();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static boolean f88836j = false;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static AtomicReference<Field> f88837k = new AtomicReference<>();

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static boolean f88838l = false;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static AtomicReference<Field> f88839m = new AtomicReference<>();

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private static boolean f88840n = false;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private static AtomicReference<Method> f88841o = new AtomicReference<>();

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private static boolean f88842p = false;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static AtomicReference<Method> f88843q = new AtomicReference<>();

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private static boolean f88844r = false;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private static AtomicReference<Constructor> f88845s = new AtomicReference<>();

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private static boolean f88846t = false;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private static AtomicReference<Constructor> f88847u = new AtomicReference<>();

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private static boolean f88848v = false;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private static AtomicReference<Constructor> f88849w = new AtomicReference<>();

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private static boolean f88850x = false;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private static AtomicReference<Constructor> f88851y = new AtomicReference<>();

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private static boolean f88852z = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f88853a;

        public a(Object obj) {
            this.f88853a = obj;
        }

        public static boolean a(Signature[] signatureArr, int i10) {
            if (f88845s.get() != null) {
                return true;
            }
            if (f88846t) {
                return false;
            }
            androidx.lifecycle.i.a(f88845s, null, com.xinzhu.haunted.d.d(f88828b, "HtSigningDetails", Signature[].class, Integer.TYPE));
            f88846t = true;
            return f88845s.get() != null;
        }

        public static boolean b(Signature[] signatureArr, int i10, Signature[] signatureArr2) {
            if (f88847u.get() != null) {
                return true;
            }
            if (f88848v) {
                return false;
            }
            androidx.lifecycle.i.a(f88847u, null, com.xinzhu.haunted.d.d(f88828b, "HtSigningDetails", Signature[].class, Integer.TYPE, Signature[].class));
            f88848v = true;
            return f88847u.get() != null;
        }

        public static boolean c(Signature[] signatureArr, int i10, ArraySet arraySet, Signature[] signatureArr2) {
            if (f88849w.get() != null) {
                return true;
            }
            if (f88850x) {
                return false;
            }
            androidx.lifecycle.i.a(f88849w, null, com.xinzhu.haunted.d.d(f88828b, "HtSigningDetails", Signature[].class, Integer.TYPE, l.a(), Signature[].class));
            f88850x = true;
            return f88849w.get() != null;
        }

        public static boolean d(Object obj) {
            if (f88851y.get() != null) {
                return true;
            }
            if (f88852z) {
                return false;
            }
            androidx.lifecycle.i.a(f88851y, null, com.xinzhu.haunted.d.d(f88828b, "HtSigningDetails", "android.content.pm.PackageParser$SigningDetails"));
            f88852z = true;
            return f88851y.get() != null;
        }

        public static boolean e() {
            if (f88829c.get() != null) {
                return true;
            }
            if (f88830d) {
                return false;
            }
            androidx.lifecycle.i.a(f88829c, null, com.xinzhu.haunted.d.f(f88828b, t7.a.f97139c));
            f88830d = true;
            return f88829c.get() != null;
        }

        public static a m(Object obj) {
            if (!d(obj)) {
                return null;
            }
            try {
                a aVar = new a();
                aVar.f88853a = f88851y.get().newInstance(obj);
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

        public static a n(Signature[] signatureArr, int i10) {
            if (!a(signatureArr, i10)) {
                return null;
            }
            try {
                a aVar = new a();
                aVar.f88853a = f88845s.get().newInstance(signatureArr, Integer.valueOf(i10));
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

        public static a o(Signature[] signatureArr, int i10, ArraySet arraySet, Signature[] signatureArr2) {
            if (!c(signatureArr, i10, arraySet, signatureArr2)) {
                return null;
            }
            try {
                a aVar = new a();
                aVar.f88853a = f88849w.get().newInstance(signatureArr, Integer.valueOf(i10), arraySet, signatureArr2);
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

        public static a p(Signature[] signatureArr, int i10, Signature[] signatureArr2) {
            if (!b(signatureArr, i10, signatureArr2)) {
                return null;
            }
            try {
                a aVar = new a();
                aVar.f88853a = f88847u.get().newInstance(signatureArr, Integer.valueOf(i10), signatureArr2);
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

        public static Object q() {
            if (!e()) {
                return null;
            }
            try {
                return f88829c.get().get(null);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public static boolean y(Object obj) {
            if (!e()) {
                return false;
            }
            try {
                f88829c.get().set(null, obj);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public boolean A(int[] iArr) {
            if (!g()) {
                return false;
            }
            try {
                f88839m.get().set(this.f88853a, iArr);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public boolean B(ArraySet<PublicKey> arraySet) {
            if (!h()) {
                return false;
            }
            try {
                f88835i.get().set(this.f88853a, arraySet);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public boolean C(int i10) {
            if (!i()) {
                return false;
            }
            try {
                f88833g.get().set(this.f88853a, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public boolean D(Signature[] signatureArr) {
            if (!j()) {
                return false;
            }
            try {
                f88831e.get().set(this.f88853a, signatureArr);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public boolean f() {
            if (f88837k.get() != null) {
                return true;
            }
            if (f88838l) {
                return false;
            }
            androidx.lifecycle.i.a(f88837k, null, com.xinzhu.haunted.d.f(f88828b, "pastSigningCertificates"));
            f88838l = true;
            return f88837k.get() != null;
        }

        public boolean g() {
            if (f88839m.get() != null) {
                return true;
            }
            if (f88840n) {
                return false;
            }
            androidx.lifecycle.i.a(f88839m, null, com.xinzhu.haunted.d.f(f88828b, "pastSigningCertificatesFlags"));
            f88840n = true;
            return f88839m.get() != null;
        }

        public boolean h() {
            if (f88835i.get() != null) {
                return true;
            }
            if (f88836j) {
                return false;
            }
            androidx.lifecycle.i.a(f88835i, null, com.xinzhu.haunted.d.f(f88828b, "publicKeys"));
            f88836j = true;
            return f88835i.get() != null;
        }

        public boolean i() {
            if (f88833g.get() != null) {
                return true;
            }
            if (f88834h) {
                return false;
            }
            androidx.lifecycle.i.a(f88833g, null, com.xinzhu.haunted.d.f(f88828b, "signatureSchemeVersion"));
            f88834h = true;
            return f88833g.get() != null;
        }

        public boolean j() {
            if (f88831e.get() != null) {
                return true;
            }
            if (f88832f) {
                return false;
            }
            androidx.lifecycle.i.a(f88831e, null, com.xinzhu.haunted.d.f(f88828b, "signatures"));
            f88832f = true;
            return f88831e.get() != null;
        }

        public boolean k() {
            if (f88841o.get() != null) {
                return true;
            }
            if (f88842p) {
                return false;
            }
            androidx.lifecycle.i.a(f88841o, null, com.xinzhu.haunted.d.g(f88828b, "hasPastSigningCertificates", new Object[0]));
            f88842p = true;
            return f88841o.get() != null;
        }

        public boolean l() {
            if (f88843q.get() != null) {
                return true;
            }
            if (f88844r) {
                return false;
            }
            androidx.lifecycle.i.a(f88843q, null, com.xinzhu.haunted.d.g(f88828b, "hasSignatures", new Object[0]));
            f88844r = true;
            return f88843q.get() != null;
        }

        public Signature[] r() {
            if (!f()) {
                return null;
            }
            try {
                return (Signature[]) f88837k.get().get(this.f88853a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public int[] s() {
            if (!g()) {
                return null;
            }
            try {
                return (int[]) f88839m.get().get(this.f88853a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public ArraySet<PublicKey> t() {
            if (!h()) {
                return null;
            }
            try {
                return m.a(f88835i.get().get(this.f88853a));
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public int u() {
            if (!i()) {
                return 0;
            }
            try {
                return ((Integer) f88833g.get().get(this.f88853a)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public Signature[] v() {
            if (!j()) {
                return null;
            }
            try {
                return (Signature[]) f88831e.get().get(this.f88853a);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public boolean w() {
            if (!k()) {
                return false;
            }
            try {
                return ((Boolean) f88841o.get().invoke(this.f88853a, new Object[0])).booleanValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return false;
            }
        }

        public boolean x() {
            if (!l()) {
                return false;
            }
            try {
                return ((Boolean) f88843q.get().invoke(this.f88853a, new Object[0])).booleanValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            } catch (InvocationTargetException e11) {
                e11.printStackTrace();
                return false;
            }
        }

        public boolean z(Signature[] signatureArr) {
            if (!f()) {
                return false;
            }
            try {
                f88837k.get().set(this.f88853a, signatureArr);
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
