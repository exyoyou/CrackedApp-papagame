package com.aggmoread.sdk.z.c.a.a.e;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Map<Object, Object> f5230a;

    public f(Map<Object, Object> map) {
        this.f5230a = map;
        if (map == null) {
            this.f5230a = new HashMap();
        }
    }

    public double a(Object obj) {
        return a(obj, 0.0d);
    }

    public int b(Object obj) {
        return a(obj, 0);
    }

    public String c(Object obj) {
        Object obj2 = this.f5230a.get(obj);
        if (obj2 == null || !(obj2 instanceof String)) {
            return null;
        }
        return (String) obj2;
    }

    public double a(Object obj, double d10) {
        Object obj2 = this.f5230a.get(obj);
        if (obj2 != null && (obj2 instanceof double[])) {
            try {
                try {
                    return ((double[]) obj2)[0];
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                if (obj2 instanceof int[]) {
                    return ((int[]) obj2)[0];
                }
                if (obj2 instanceof long[]) {
                    return ((long[]) obj2)[0];
                }
            }
        }
        return d10;
    }

    public void b(Object obj, double d10) {
        this.f5230a.put(obj, new double[]{d10});
    }

    public int a(Object obj, int i10) {
        Object obj2 = this.f5230a.get(obj);
        if (obj2 != null && (obj2 instanceof int[])) {
            try {
                return ((int[]) obj2)[0];
            } catch (Exception unused) {
            }
        }
        return i10;
    }

    public void b(Object obj, int i10) {
        this.f5230a.put(obj, new int[]{i10});
    }

    public String a(Object obj, String str) {
        Object obj2 = this.f5230a.get(obj);
        return (obj2 == null || !(obj2 instanceof String)) ? str : (String) obj2;
    }

    public void b(Object obj, String str) {
        this.f5230a.put(obj, str);
    }

    public void a(Object obj, long j10) {
        this.f5230a.put(obj, new long[]{j10});
    }

    public void b(Object obj, boolean z10) {
        this.f5230a.put(obj, new boolean[]{z10});
    }

    public boolean a(Object obj, boolean z10) {
        Object obj2 = this.f5230a.get(obj);
        if (obj2 != null && (obj2 instanceof boolean[])) {
            try {
                return ((boolean[]) obj2)[0];
            } catch (Exception unused) {
            }
        }
        return z10;
    }
}
