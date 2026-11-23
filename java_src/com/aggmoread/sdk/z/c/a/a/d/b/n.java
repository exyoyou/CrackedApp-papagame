package com.aggmoread.sdk.z.c.a.a.d.b;

import android.content.Context;
import android.content.pm.PackageManager;
import android.view.View;
import com.aggmoread.sdk.z.c.a.a.e.p;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes7.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static WeakHashMap<View, Object[]> f5189a = new WeakHashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static HashMap<String, String> f5190b = new HashMap<>();

    public static int a(String str) {
        int iA = com.aggmoread.sdk.z.c.a.a.e.h.a().a(str, -1);
        com.aggmoread.sdk.z.c.a.a.e.h.a().a(str);
        return iA;
    }

    public static int b(e eVar) {
        Object obj = a(eVar).get(eVar.f4946b);
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        return 0;
    }

    public static void c() {
        c.b();
    }

    public static PackageManager a() {
        try {
            Object objA = a((Object) 1, new Object[0]);
            if (objA instanceof PackageManager) {
                return (PackageManager) objA;
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static void b() {
        com.aggmoread.sdk.z.c.a.a.b.a(new Object[]{12, com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.b(), f5190b, com.aggmoread.sdk.z.c.a.a.d.a.d.v.b.a()}, k.f5147q);
    }

    public static Object a(Context context) {
        return a((Object) 2, context);
    }

    public static void b(Object obj, long j10) {
        com.aggmoread.sdk.z.c.a.a.b.a(new Object[]{3, new WeakReference(obj), Long.valueOf(j10)}, k.f5147q);
    }

    public static Object a(Object obj, Object... objArr) {
        try {
            Object obj2 = ((Map) com.aggmoread.sdk.z.c.a.a.b.f4357d[6]).get(InvocationHandler.class);
            if (obj2 instanceof InvocationHandler) {
                return ((InvocationHandler) obj2).invoke(obj, null, objArr);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return null;
    }

    public static void b(Object obj, boolean z10, boolean z11) {
        com.aggmoread.sdk.z.c.a.a.b.a(new Object[]{1, new WeakReference(obj), Boolean.valueOf(z10), Boolean.valueOf(z11)}, k.f5147q);
    }

    public static Map<Object, Object> a(e eVar) {
        Map map = (Map) com.aggmoread.sdk.z.c.a.a.b.f4357d[6];
        Map<Object, Object> map2 = (Map) map.get(eVar.f4946b);
        if (map2 != null) {
            return map2;
        }
        HashMap map3 = new HashMap();
        map.put(eVar.f4946b, map3);
        return map3;
    }

    public static void a(View view, Object[] objArr) {
        Object[] objArr2 = f5189a.get(view);
        if (objArr2 != null) {
            objArr[2] = objArr2[2];
        }
        f5189a.put(view, objArr);
    }

    public static void a(Object obj, double d10, double d11, double d12, int i10, int i11, int i12, long j10, int i13, double d13, double d14, int i14, long j11) {
        com.aggmoread.sdk.z.c.a.a.b.a(new Object[]{0, new WeakReference(obj), Double.valueOf(d10), Double.valueOf(d11), Double.valueOf(d12), Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Long.valueOf(j10), Integer.valueOf(i13), Double.valueOf(d13), Double.valueOf(d14), Integer.valueOf(i14), Long.valueOf(j11)}, k.f5147q);
    }

    public static void a(Object obj, long j10) {
        com.aggmoread.sdk.z.c.a.a.b.a(new Object[]{13, new WeakReference(obj), Long.valueOf(j10)}, k.f5147q);
    }

    public static void a(Object obj, f fVar) {
        com.aggmoread.sdk.z.c.a.a.b.a(new Object[]{10, new WeakReference(obj), Double.valueOf(p.f(fVar)), Double.valueOf(p.g(fVar))}, k.f5147q);
    }

    public static void a(Object obj, boolean z10, boolean z11) {
        com.aggmoread.sdk.z.c.a.a.b.a(new Object[]{5, new WeakReference(obj), Boolean.valueOf(z10), Boolean.valueOf(z11)}, k.f5147q);
    }

    public static void a(Object obj, byte[] bArr) {
        com.aggmoread.sdk.z.c.a.a.b.a(new Object[]{4, new WeakReference(obj), bArr}, k.f5147q);
    }

    public static void a(Object obj, int[] iArr) {
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMGTAG", "update saved point");
        com.aggmoread.sdk.z.c.a.a.b.a(new Object[]{6, new WeakReference(obj), iArr}, k.f5147q);
    }

    public static void a(Object obj, Object[] objArr, com.aggmoread.sdk.z.c.a.a.c.j jVar, View view, View[] viewArr) {
        a(obj, objArr, jVar, view, viewArr, null, null);
    }

    public static void a(Object obj, Object[] objArr, com.aggmoread.sdk.z.c.a.a.c.j jVar, View view, View[] viewArr, WeakReference<View> weakReference, WeakReference weakReference2) {
        try {
            if (view instanceof com.aggmoread.sdk.z.c.a.a.d.b.o.a) {
                ((com.aggmoread.sdk.z.c.a.a.d.b.o.a) view).a();
            }
        } catch (Exception unused) {
        }
        a(obj, objArr, jVar, view, viewArr, weakReference, weakReference2, null);
    }

    public static void a(Object obj, Object[] objArr, com.aggmoread.sdk.z.c.a.a.c.j jVar, View view, View[] viewArr, WeakReference<View> weakReference, WeakReference weakReference2, Object obj2) {
        View.OnAttachStateChangeListener onAttachStateChangeListener;
        WeakReference[] weakReferenceArr = new WeakReference[viewArr.length];
        for (int i10 = 0; i10 < viewArr.length; i10++) {
            weakReferenceArr[i10] = new WeakReference(viewArr[i10]);
        }
        Object[] objArr2 = f5189a.get(view);
        if (objArr2 != null && (onAttachStateChangeListener = (View.OnAttachStateChangeListener) objArr2[3]) != null) {
            view.removeOnAttachStateChangeListener(onAttachStateChangeListener);
            objArr[2] = objArr2[2];
        }
        f5189a.put(view, objArr);
        com.aggmoread.sdk.z.c.a.a.b.a(new Object[]{2, new WeakReference(obj), new WeakReference(objArr), new WeakReference(view), weakReferenceArr, Integer.valueOf(jVar.a()), weakReference, weakReference2, obj2}, k.f5147q);
    }

    public static void a(Object obj, Object[] objArr, com.aggmoread.sdk.z.c.a.a.c.j jVar, Object obj2) {
        boolean zA = p.a(jVar);
        com.aggmoread.sdk.z.c.a.a.e.e.b("xxx", "register isAvailable " + zA);
        if (zA) {
            com.aggmoread.sdk.z.c.a.a.b.a(new Object[]{7, new WeakReference(obj), new WeakReference(objArr), Integer.valueOf(jVar.a()), obj2}, k.f5147q);
        }
    }

    public static void a(String str, String str2, String str3) {
        f5190b.put(str, str2);
        f5190b.put(str + "_aid", str3);
    }

    public static void a(Object[] objArr) {
        com.aggmoread.sdk.z.c.a.a.b.a(new Object[]{9, new WeakReference(objArr)}, k.f5147q);
    }

    public static void a(Object[] objArr, int i10) {
        com.aggmoread.sdk.z.c.a.a.b.a(new Object[]{8, new WeakReference(objArr), Integer.valueOf(i10)}, k.f5147q);
    }

    public static boolean a(Object obj) {
        Object objA = a((Object) 3, obj);
        com.aggmoread.sdk.z.c.a.a.e.e.a("cac result " + objA);
        if (objA instanceof Boolean) {
            return ((Boolean) objA).booleanValue();
        }
        return false;
    }
}
