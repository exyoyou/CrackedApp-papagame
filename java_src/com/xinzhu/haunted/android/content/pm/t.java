package com.xinzhu.haunted.android.content.pm;

import android.content.pm.Signature;
import android.util.ArraySet;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.security.PublicKey;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class t {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f88879b = "t";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f88880c = com.xinzhu.haunted.d.b("android.content.pm.SigningDetails");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f88881d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f88882e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Field> f88883f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f88884g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Field> f88885h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f88886i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AtomicReference<Field> f88887j = new AtomicReference<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f88888k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static AtomicReference<Field> f88889l = new AtomicReference<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f88890m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static AtomicReference<Constructor> f88891n = new AtomicReference<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static boolean f88892o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static AtomicReference<Constructor> f88893p = new AtomicReference<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static boolean f88894q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static AtomicReference<Constructor> f88895r = new AtomicReference<>();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static boolean f88896s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static AtomicReference<Constructor> f88897t = new AtomicReference<>();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static boolean f88898u = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f88899a;

    public t(Object obj) {
        this.f88899a = obj;
    }

    public static boolean a(Signature[] signatureArr, int i10) {
        if (f88891n.get() != null) {
            return true;
        }
        if (f88892o) {
            return false;
        }
        androidx.lifecycle.i.a(f88891n, null, com.xinzhu.haunted.d.d(f88880c, "HtSigningDetails", Signature[].class, Integer.TYPE));
        f88892o = true;
        return f88891n.get() != null;
    }

    public static boolean b(Signature[] signatureArr, int i10, Signature[] signatureArr2) {
        if (f88893p.get() != null) {
            return true;
        }
        if (f88894q) {
            return false;
        }
        androidx.lifecycle.i.a(f88893p, null, com.xinzhu.haunted.d.d(f88880c, "HtSigningDetails", Signature[].class, Integer.TYPE, Signature[].class));
        f88894q = true;
        return f88893p.get() != null;
    }

    public static boolean c(Signature[] signatureArr, int i10, ArraySet arraySet, Signature[] signatureArr2) {
        if (f88895r.get() != null) {
            return true;
        }
        if (f88896s) {
            return false;
        }
        androidx.lifecycle.i.a(f88895r, null, com.xinzhu.haunted.d.d(f88880c, "HtSigningDetails", Signature[].class, Integer.TYPE, l.a(), Signature[].class));
        f88896s = true;
        return f88895r.get() != null;
    }

    public static boolean d(Object obj) {
        if (f88897t.get() != null) {
            return true;
        }
        if (f88898u) {
            return false;
        }
        androidx.lifecycle.i.a(f88897t, null, com.xinzhu.haunted.d.d(f88880c, "HtSigningDetails", "android.content.pm.SigningDetails"));
        f88898u = true;
        return f88897t.get() != null;
    }

    public static boolean e() {
        if (f88881d.get() != null) {
            return true;
        }
        if (f88882e) {
            return false;
        }
        androidx.lifecycle.i.a(f88881d, null, com.xinzhu.haunted.d.f(f88880c, t7.a.f97139c));
        f88882e = true;
        return f88881d.get() != null;
    }

    public static t j(Object obj) {
        if (!d(obj)) {
            return null;
        }
        try {
            t tVar = new t();
            tVar.f88899a = f88897t.get().newInstance(obj);
            return tVar;
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

    public static t k(Signature[] signatureArr, int i10) {
        if (!a(signatureArr, i10)) {
            return null;
        }
        try {
            t tVar = new t();
            tVar.f88899a = f88891n.get().newInstance(signatureArr, Integer.valueOf(i10));
            return tVar;
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

    public static t l(Signature[] signatureArr, int i10, ArraySet arraySet, Signature[] signatureArr2) {
        if (!c(signatureArr, i10, arraySet, signatureArr2)) {
            return null;
        }
        try {
            t tVar = new t();
            tVar.f88899a = f88895r.get().newInstance(signatureArr, Integer.valueOf(i10), arraySet, signatureArr2);
            return tVar;
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

    public static t m(Signature[] signatureArr, int i10, Signature[] signatureArr2) {
        if (!b(signatureArr, i10, signatureArr2)) {
            return null;
        }
        try {
            t tVar = new t();
            tVar.f88899a = f88893p.get().newInstance(signatureArr, Integer.valueOf(i10), signatureArr2);
            return tVar;
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

    public static Object n() {
        if (!e()) {
            return null;
        }
        try {
            return f88881d.get().get(null);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static boolean s(Object obj) {
        if (!e()) {
            return false;
        }
        try {
            f88881d.get().set(null, obj);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean f() {
        if (f88889l.get() != null) {
            return true;
        }
        if (f88890m) {
            return false;
        }
        androidx.lifecycle.i.a(f88889l, null, com.xinzhu.haunted.d.f(f88880c, "mPastSigningCertificates"));
        f88890m = true;
        return f88889l.get() != null;
    }

    public boolean g() {
        if (f88887j.get() != null) {
            return true;
        }
        if (f88888k) {
            return false;
        }
        androidx.lifecycle.i.a(f88887j, null, com.xinzhu.haunted.d.f(f88880c, "mPublicKeys"));
        f88888k = true;
        return f88887j.get() != null;
    }

    public boolean h() {
        if (f88885h.get() != null) {
            return true;
        }
        if (f88886i) {
            return false;
        }
        androidx.lifecycle.i.a(f88885h, null, com.xinzhu.haunted.d.f(f88880c, "mSignatureSchemeVersion"));
        f88886i = true;
        return f88885h.get() != null;
    }

    public boolean i() {
        if (f88883f.get() != null) {
            return true;
        }
        if (f88884g) {
            return false;
        }
        androidx.lifecycle.i.a(f88883f, null, com.xinzhu.haunted.d.f(f88880c, "mSignatures"));
        f88884g = true;
        return f88883f.get() != null;
    }

    public Signature[] o() {
        if (!f()) {
            return null;
        }
        try {
            return (Signature[]) f88889l.get().get(this.f88899a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public ArraySet<PublicKey> p() {
        if (!g()) {
            return null;
        }
        try {
            return m.a(f88887j.get().get(this.f88899a));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public int q() {
        if (!h()) {
            return 0;
        }
        try {
            return ((Integer) f88885h.get().get(this.f88899a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public Signature[] r() {
        if (!i()) {
            return null;
        }
        try {
            return (Signature[]) f88883f.get().get(this.f88899a);
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean t(Signature[] signatureArr) {
        if (!f()) {
            return false;
        }
        try {
            f88889l.get().set(this.f88899a, signatureArr);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean u(ArraySet<PublicKey> arraySet) {
        if (!g()) {
            return false;
        }
        try {
            f88887j.get().set(this.f88899a, arraySet);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean v(int i10) {
        if (!h()) {
            return false;
        }
        try {
            f88885h.get().set(this.f88899a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public boolean w(Signature[] signatureArr) {
        if (!i()) {
            return false;
        }
        try {
            f88883f.get().set(this.f88899a, signatureArr);
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private t() {
    }
}
