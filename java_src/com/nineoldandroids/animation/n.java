package com.nineoldandroids.animation;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes2.dex */
public class n implements Cloneable {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final p f76266l = new h();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final p f76267m = new f();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static Class[] f76268n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static Class[] f76269o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static Class[] f76270p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final HashMap<Class, HashMap<String, Method>> f76271q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final HashMap<Class, HashMap<String, Method>> f76272r;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f76273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected com.nineoldandroids.util.c f76274c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Method f76275d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Method f76276e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Class f76277f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    k f76278g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final ReentrantReadWriteLock f76279h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final Object[] f76280i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private p f76281j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Object f76282k;

    static {
        Class cls = Float.TYPE;
        Class cls2 = Double.TYPE;
        Class cls3 = Integer.TYPE;
        f76268n = new Class[]{cls, Float.class, cls2, cls3, Double.class, Integer.class};
        f76269o = new Class[]{cls3, Integer.class, cls, cls2, Float.class, Double.class};
        f76270p = new Class[]{cls2, Double.class, cls, cls3, Float.class, Integer.class};
        f76271q = new HashMap<>();
        f76272r = new HashMap<>();
    }

    private Method C(Class cls, HashMap<Class, HashMap<String, Method>> map, String str, Class cls2) {
        try {
            this.f76279h.writeLock().lock();
            HashMap<String, Method> map2 = map.get(cls);
            Method methodF = map2 != null ? map2.get(this.f76273b) : null;
            if (methodF == null) {
                methodF = f(cls, str, cls2);
                if (map2 == null) {
                    map2 = new HashMap<>();
                    map.put(cls, map2);
                }
                map2.put(this.f76273b, methodF);
            }
            return methodF;
        } finally {
            this.f76279h.writeLock().unlock();
        }
    }

    private void E(Object obj, j jVar) {
        com.nineoldandroids.util.c cVar = this.f76274c;
        if (cVar != null) {
            jVar.o(cVar.a(obj));
        }
        try {
            if (this.f76276e == null) {
                z(obj.getClass());
            }
            jVar.o(this.f76276e.invoke(obj, new Object[0]));
        } catch (IllegalAccessException e10) {
            e10.toString();
        } catch (InvocationTargetException e11) {
            e11.toString();
        }
    }

    static String e(String str, String str2) {
        if (str2 == null || str2.length() == 0) {
            return str;
        }
        return str + Character.toUpperCase(str2.charAt(0)) + str2.substring(1);
    }

    private Method f(Class cls, String str, Class cls2) {
        Class<?>[] clsArr;
        String strE = e(str, this.f76273b);
        Method declaredMethod = null;
        if (cls2 == null) {
            try {
                return cls.getMethod(strE, null);
            } catch (NoSuchMethodException e10) {
                try {
                    declaredMethod = cls.getDeclaredMethod(strE, null);
                    declaredMethod.setAccessible(true);
                } catch (NoSuchMethodException unused) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Couldn't find no-arg method for property ");
                    sb2.append(this.f76273b);
                    sb2.append(": ");
                    sb2.append(e10);
                }
            }
        } else {
            Class<?>[] clsArr2 = new Class[1];
            if (this.f76277f.equals(Float.class)) {
                clsArr = f76268n;
            } else if (this.f76277f.equals(Integer.class)) {
                clsArr = f76269o;
            } else {
                clsArr = this.f76277f.equals(Double.class) ? f76270p : new Class[]{this.f76277f};
            }
            for (Class<?> cls3 : clsArr) {
                clsArr2[0] = cls3;
                try {
                    try {
                        Method method = cls.getMethod(strE, clsArr2);
                        this.f76277f = cls3;
                        return method;
                    } catch (NoSuchMethodException unused2) {
                    }
                } catch (NoSuchMethodException unused3) {
                    declaredMethod = cls.getDeclaredMethod(strE, clsArr2);
                    declaredMethod.setAccessible(true);
                    this.f76277f = cls3;
                    return declaredMethod;
                }
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Couldn't find setter/getter for property ");
            sb3.append(this.f76273b);
            sb3.append(" with value type ");
            sb3.append(this.f76277f);
        }
        return declaredMethod;
    }

    public static n i(com.nineoldandroids.util.c<?, Float> cVar, float... fArr) {
        return new b(cVar, fArr);
    }

    public static n j(String str, float... fArr) {
        return new b(str, fArr);
    }

    public static n k(com.nineoldandroids.util.c<?, Integer> cVar, int... iArr) {
        return new c(cVar, iArr);
    }

    public static n l(String str, int... iArr) {
        return new c(str, iArr);
    }

    public static n m(com.nineoldandroids.util.c cVar, j... jVarArr) {
        k kVarE = k.e(jVarArr);
        if (kVarE instanceof i) {
            return new c(cVar, (i) kVarE);
        }
        if (kVarE instanceof g) {
            return new b(cVar, (g) kVarE);
        }
        n nVar = new n(cVar);
        nVar.f76278g = kVarE;
        nVar.f76277f = jVarArr[0].getType();
        return nVar;
    }

    public static n n(String str, j... jVarArr) {
        k kVarE = k.e(jVarArr);
        if (kVarE instanceof i) {
            return new c(str, (i) kVarE);
        }
        if (kVarE instanceof g) {
            return new b(str, (g) kVarE);
        }
        n nVar = new n(str);
        nVar.f76278g = kVarE;
        nVar.f76277f = jVarArr[0].getType();
        return nVar;
    }

    public static <V> n o(com.nineoldandroids.util.c cVar, p<V> pVar, V... vArr) {
        n nVar = new n(cVar);
        nVar.v(vArr);
        nVar.r(pVar);
        return nVar;
    }

    public static n p(String str, p pVar, Object... objArr) {
        n nVar = new n(str);
        nVar.v(objArr);
        nVar.r(pVar);
        return nVar;
    }

    private void z(Class cls) {
        this.f76276e = C(cls, f76272r, "get", null);
    }

    void A(Class cls) {
        this.f76275d = C(cls, f76271q, "set", this.f76277f);
    }

    void B(Object obj) {
        com.nineoldandroids.util.c cVar = this.f76274c;
        if (cVar != null) {
            try {
                cVar.a(obj);
                for (j jVar : this.f76278g.f76250e) {
                    if (!jVar.f()) {
                        jVar.o(this.f76274c.a(obj));
                    }
                }
                return;
            } catch (ClassCastException unused) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("No such property (");
                sb2.append(this.f76274c.b());
                sb2.append(") on target object ");
                sb2.append(obj);
                sb2.append(". Trying reflection instead");
                this.f76274c = null;
            }
        }
        Class<?> cls = obj.getClass();
        if (this.f76275d == null) {
            A(cls);
        }
        for (j jVar2 : this.f76278g.f76250e) {
            if (!jVar2.f()) {
                if (this.f76276e == null) {
                    z(cls);
                }
                try {
                    jVar2.o(this.f76276e.invoke(obj, new Object[0]));
                } catch (IllegalAccessException e10) {
                    e10.toString();
                } catch (InvocationTargetException e11) {
                    e11.toString();
                }
            }
        }
    }

    void D(Object obj) {
        E(obj, this.f76278g.f76250e.get(0));
    }

    void a(float f10) {
        this.f76282k = this.f76278g.b(f10);
    }

    @Override // 
    /* JADX INFO: renamed from: b */
    public n clone() {
        try {
            n nVar = (n) super.clone();
            nVar.f76273b = this.f76273b;
            nVar.f76274c = this.f76274c;
            nVar.f76278g = this.f76278g.clone();
            nVar.f76281j = this.f76281j;
            return nVar;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    Object d() {
        return this.f76282k;
    }

    public String g() {
        return this.f76273b;
    }

    void h() {
        p pVar;
        if (this.f76281j == null) {
            Class cls = this.f76277f;
            if (cls == Integer.class) {
                pVar = f76266l;
            } else {
                pVar = cls == Float.class ? f76267m : null;
            }
            this.f76281j = pVar;
        }
        p pVar2 = this.f76281j;
        if (pVar2 != null) {
            this.f76278g.g(pVar2);
        }
    }

    void q(Object obj) {
        com.nineoldandroids.util.c cVar = this.f76274c;
        if (cVar != null) {
            cVar.e(obj, d());
        }
        if (this.f76275d != null) {
            try {
                this.f76280i[0] = d();
                this.f76275d.invoke(obj, this.f76280i);
            } catch (IllegalAccessException e10) {
                e10.toString();
            } catch (InvocationTargetException e11) {
                e11.toString();
            }
        }
    }

    public void r(p pVar) {
        this.f76281j = pVar;
        this.f76278g.g(pVar);
    }

    public void s(float... fArr) {
        this.f76277f = Float.TYPE;
        this.f76278g = k.c(fArr);
    }

    public void t(int... iArr) {
        this.f76277f = Integer.TYPE;
        this.f76278g = k.d(iArr);
    }

    public String toString() {
        return this.f76273b + ": " + this.f76278g.toString();
    }

    public void u(j... jVarArr) {
        int length = jVarArr.length;
        j[] jVarArr2 = new j[Math.max(length, 2)];
        this.f76277f = jVarArr[0].getType();
        for (int i10 = 0; i10 < length; i10++) {
            jVarArr2[i10] = jVarArr[i10];
        }
        this.f76278g = new k(jVarArr2);
    }

    public void v(Object... objArr) {
        this.f76277f = objArr[0].getClass();
        this.f76278g = k.f(objArr);
    }

    public void w(com.nineoldandroids.util.c cVar) {
        this.f76274c = cVar;
    }

    public void x(String str) {
        this.f76273b = str;
    }

    void y(Object obj) {
        ArrayList<j> arrayList = this.f76278g.f76250e;
        E(obj, arrayList.get(arrayList.size() - 1));
    }

    private n(String str) {
        this.f76275d = null;
        this.f76276e = null;
        this.f76278g = null;
        this.f76279h = new ReentrantReadWriteLock();
        this.f76280i = new Object[1];
        this.f76273b = str;
    }

    static class b extends n {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private com.nineoldandroids.util.a f76283s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        g f76284t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        float f76285u;

        public b(String str, g gVar) {
            super(str);
            this.f76277f = Float.TYPE;
            this.f76278g = gVar;
            this.f76284t = gVar;
        }

        @Override // com.nineoldandroids.animation.n
        void A(Class cls) {
            if (this.f76274c != null) {
                return;
            }
            super.A(cls);
        }

        @Override // com.nineoldandroids.animation.n
        /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public b clone() {
            b bVar = (b) super.clone();
            bVar.f76284t = (g) bVar.f76278g;
            return bVar;
        }

        @Override // com.nineoldandroids.animation.n
        void a(float f10) {
            this.f76285u = this.f76284t.i(f10);
        }

        @Override // com.nineoldandroids.animation.n
        Object d() {
            return Float.valueOf(this.f76285u);
        }

        @Override // com.nineoldandroids.animation.n
        void q(Object obj) {
            com.nineoldandroids.util.a aVar = this.f76283s;
            if (aVar != null) {
                aVar.g(obj, this.f76285u);
                return;
            }
            com.nineoldandroids.util.c cVar = this.f76274c;
            if (cVar != null) {
                cVar.e(obj, Float.valueOf(this.f76285u));
                return;
            }
            if (this.f76275d != null) {
                try {
                    this.f76280i[0] = Float.valueOf(this.f76285u);
                    this.f76275d.invoke(obj, this.f76280i);
                } catch (IllegalAccessException e10) {
                    e10.toString();
                } catch (InvocationTargetException e11) {
                    e11.toString();
                }
            }
        }

        @Override // com.nineoldandroids.animation.n
        public void s(float... fArr) {
            super.s(fArr);
            this.f76284t = (g) this.f76278g;
        }

        public b(com.nineoldandroids.util.c cVar, g gVar) {
            super(cVar);
            this.f76277f = Float.TYPE;
            this.f76278g = gVar;
            this.f76284t = gVar;
            if (cVar instanceof com.nineoldandroids.util.a) {
                this.f76283s = (com.nineoldandroids.util.a) this.f76274c;
            }
        }

        public b(String str, float... fArr) {
            super(str);
            s(fArr);
        }

        public b(com.nineoldandroids.util.c cVar, float... fArr) {
            super(cVar);
            s(fArr);
            if (cVar instanceof com.nineoldandroids.util.a) {
                this.f76283s = (com.nineoldandroids.util.a) this.f76274c;
            }
        }
    }

    static class c extends n {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private com.nineoldandroids.util.b f76286s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        i f76287t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        int f76288u;

        public c(String str, i iVar) {
            super(str);
            this.f76277f = Integer.TYPE;
            this.f76278g = iVar;
            this.f76287t = iVar;
        }

        @Override // com.nineoldandroids.animation.n
        void A(Class cls) {
            if (this.f76274c != null) {
                return;
            }
            super.A(cls);
        }

        @Override // com.nineoldandroids.animation.n
        /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
        public c clone() {
            c cVar = (c) super.clone();
            cVar.f76287t = (i) cVar.f76278g;
            return cVar;
        }

        @Override // com.nineoldandroids.animation.n
        void a(float f10) {
            this.f76288u = this.f76287t.i(f10);
        }

        @Override // com.nineoldandroids.animation.n
        Object d() {
            return Integer.valueOf(this.f76288u);
        }

        @Override // com.nineoldandroids.animation.n
        void q(Object obj) {
            com.nineoldandroids.util.b bVar = this.f76286s;
            if (bVar != null) {
                bVar.g(obj, this.f76288u);
                return;
            }
            com.nineoldandroids.util.c cVar = this.f76274c;
            if (cVar != null) {
                cVar.e(obj, Integer.valueOf(this.f76288u));
                return;
            }
            if (this.f76275d != null) {
                try {
                    this.f76280i[0] = Integer.valueOf(this.f76288u);
                    this.f76275d.invoke(obj, this.f76280i);
                } catch (IllegalAccessException e10) {
                    e10.toString();
                } catch (InvocationTargetException e11) {
                    e11.toString();
                }
            }
        }

        @Override // com.nineoldandroids.animation.n
        public void t(int... iArr) {
            super.t(iArr);
            this.f76287t = (i) this.f76278g;
        }

        public c(com.nineoldandroids.util.c cVar, i iVar) {
            super(cVar);
            this.f76277f = Integer.TYPE;
            this.f76278g = iVar;
            this.f76287t = iVar;
            if (cVar instanceof com.nineoldandroids.util.b) {
                this.f76286s = (com.nineoldandroids.util.b) this.f76274c;
            }
        }

        public c(String str, int... iArr) {
            super(str);
            t(iArr);
        }

        public c(com.nineoldandroids.util.c cVar, int... iArr) {
            super(cVar);
            t(iArr);
            if (cVar instanceof com.nineoldandroids.util.b) {
                this.f76286s = (com.nineoldandroids.util.b) this.f76274c;
            }
        }
    }

    private n(com.nineoldandroids.util.c cVar) {
        this.f76275d = null;
        this.f76276e = null;
        this.f76278g = null;
        this.f76279h = new ReentrantReadWriteLock();
        this.f76280i = new Object[1];
        this.f76274c = cVar;
        if (cVar != null) {
            this.f76273b = cVar.b();
        }
    }
}
