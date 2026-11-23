package org.aspectj.runtime.reflect;

import ad.c0;
import ad.r;
import ad.t;
import ad.z;
import com.swift.sandhook.annotation.MethodReflectParams;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.Hashtable;
import java.util.StringTokenizer;

/* JADX INFO: loaded from: classes4.dex */
public final class e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static Hashtable f95188e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Object[] f95189f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static /* synthetic */ Class f95190g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Class f95191a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ClassLoader f95192b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f95193c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f95194d = 0;

    static {
        Hashtable hashtable = new Hashtable();
        f95188e = hashtable;
        hashtable.put("void", Void.TYPE);
        f95188e.put("boolean", Boolean.TYPE);
        f95188e.put(MethodReflectParams.BYTE, Byte.TYPE);
        f95188e.put(MethodReflectParams.CHAR, Character.TYPE);
        f95188e.put(MethodReflectParams.SHORT, Short.TYPE);
        f95188e.put("int", Integer.TYPE);
        f95188e.put(MethodReflectParams.LONG, Long.TYPE);
        f95188e.put("float", Float.TYPE);
        f95188e.put(MethodReflectParams.DOUBLE, Double.TYPE);
        f95189f = new Object[0];
    }

    public e(String str, Class cls) {
        this.f95193c = str;
        this.f95191a = cls;
        this.f95192b = cls.getClassLoader();
    }

    static /* synthetic */ Class a(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e10) {
            throw new NoClassDefFoundError(e10.getMessage());
        }
    }

    static Class h(String str, ClassLoader classLoader) {
        if (str.equals(WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD)) {
            return null;
        }
        Class cls = (Class) f95188e.get(str);
        if (cls != null) {
            return cls;
        }
        try {
            return classLoader == null ? Class.forName(str) : Class.forName(str, false, classLoader);
        } catch (ClassNotFoundException unused) {
            Class cls2 = f95190g;
            if (cls2 != null) {
                return cls2;
            }
            Class clsA = a("java.lang.ClassNotFoundException");
            f95190g = clsA;
            return clsA;
        }
    }

    public static org.aspectj.lang.c.b o(Member member) {
        org.aspectj.lang.e dVar;
        String str;
        if (member instanceof Method) {
            Method method = (Method) member;
            dVar = new k(method.getModifiers(), method.getName(), method.getDeclaringClass(), method.getParameterTypes(), new String[method.getParameterTypes().length], method.getExceptionTypes(), method.getReturnType());
            str = org.aspectj.lang.c.f95144a;
        } else {
            if (!(member instanceof Constructor)) {
                throw new IllegalArgumentException("member must be either a method or constructor");
            }
            Constructor constructor = (Constructor) member;
            dVar = new d(constructor.getModifiers(), constructor.getDeclaringClass(), constructor.getParameterTypes(), new String[constructor.getParameterTypes().length], constructor.getExceptionTypes());
            str = org.aspectj.lang.c.f95146c;
        }
        return new h.a(-1, str, dVar, null);
    }

    public static org.aspectj.lang.c v(org.aspectj.lang.c.b bVar, Object obj, Object obj2) {
        return new h(bVar, obj, obj2, f95189f);
    }

    public static org.aspectj.lang.c w(org.aspectj.lang.c.b bVar, Object obj, Object obj2, Object obj3) {
        return new h(bVar, obj, obj2, new Object[]{obj3});
    }

    public static org.aspectj.lang.c x(org.aspectj.lang.c.b bVar, Object obj, Object obj2, Object obj3, Object obj4) {
        return new h(bVar, obj, obj2, new Object[]{obj3, obj4});
    }

    public static org.aspectj.lang.c y(org.aspectj.lang.c.b bVar, Object obj, Object obj2, Object[] objArr) {
        return new h(bVar, obj, obj2, objArr);
    }

    public r A(Class cls) {
        i iVar = new i(cls);
        iVar.A(this.f95192b);
        return iVar;
    }

    public r B(String str) {
        i iVar = new i(str);
        iVar.A(this.f95192b);
        return iVar;
    }

    public t C(int i10, String str, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2, Class cls2) {
        k kVar = new k(i10, str, cls, clsArr, strArr, clsArr2, cls2);
        kVar.A(this.f95192b);
        return kVar;
    }

    public t D(String str) {
        k kVar = new k(str);
        kVar.A(this.f95192b);
        return kVar;
    }

    public t E(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        int i10 = Integer.parseInt(str, 16);
        Class clsH = h(str3, this.f95192b);
        StringTokenizer stringTokenizer = new StringTokenizer(str4, ":");
        int iCountTokens = stringTokenizer.countTokens();
        Class[] clsArr = new Class[iCountTokens];
        for (int i11 = 0; i11 < iCountTokens; i11++) {
            clsArr[i11] = h(stringTokenizer.nextToken(), this.f95192b);
        }
        StringTokenizer stringTokenizer2 = new StringTokenizer(str5, ":");
        int iCountTokens2 = stringTokenizer2.countTokens();
        String[] strArr = new String[iCountTokens2];
        for (int i12 = 0; i12 < iCountTokens2; i12++) {
            strArr[i12] = stringTokenizer2.nextToken();
        }
        StringTokenizer stringTokenizer3 = new StringTokenizer(str6, ":");
        int iCountTokens3 = stringTokenizer3.countTokens();
        Class[] clsArr2 = new Class[iCountTokens3];
        for (int i13 = 0; i13 < iCountTokens3; i13++) {
            clsArr2[i13] = h(stringTokenizer3.nextToken(), this.f95192b);
        }
        return new k(i10, str2, clsH, clsArr, strArr, clsArr2, h(str7, this.f95192b));
    }

    public org.aspectj.lang.c.b F(String str, String str2, String str3, String str4, String str5, String str6, String str7, int i10) {
        t tVarE = E(str2, str3, str4, str5, str6, "", str7);
        int i11 = this.f95194d;
        this.f95194d = i11 + 1;
        return new h.b(i11, str, tVarE, K(i10, -1));
    }

    public org.aspectj.lang.c.b G(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i10) {
        t tVarE = E(str2, str3, str4, str5, str6, str7, str8);
        int i11 = this.f95194d;
        this.f95194d = i11 + 1;
        return new h.b(i11, str, tVarE, K(i10, -1));
    }

    public org.aspectj.lang.c.b H(String str, org.aspectj.lang.e eVar, int i10) {
        int i11 = this.f95194d;
        this.f95194d = i11 + 1;
        return new h.b(i11, str, eVar, K(i10, -1));
    }

    public org.aspectj.lang.c.b I(String str, org.aspectj.lang.e eVar, int i10, int i11) {
        int i12 = this.f95194d;
        this.f95194d = i12 + 1;
        return new h.b(i12, str, eVar, K(i10, i11));
    }

    public org.aspectj.lang.c.b J(String str, org.aspectj.lang.e eVar, z zVar) {
        int i10 = this.f95194d;
        this.f95194d = i10 + 1;
        return new h.b(i10, str, eVar, zVar);
    }

    public z K(int i10, int i11) {
        return new m(this.f95191a, this.f95193c, i10);
    }

    public c0 L() {
        o oVar = new o(h("Ljava/lang/Object;", this.f95192b));
        oVar.A(this.f95192b);
        return oVar;
    }

    public c0 M(Class cls) {
        o oVar = new o(cls);
        oVar.A(this.f95192b);
        return oVar;
    }

    public c0 N(String str) {
        o oVar = new o(str);
        oVar.A(this.f95192b);
        return oVar;
    }

    public ad.b b(int i10, String str, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2, Class cls2) {
        a aVar = new a(i10, str, cls, clsArr, strArr, clsArr2, cls2);
        aVar.A(this.f95192b);
        return aVar;
    }

    public ad.b c(String str) {
        a aVar = new a(str);
        aVar.A(this.f95192b);
        return aVar;
    }

    public ad.b d(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        int i10 = Integer.parseInt(str, 16);
        Class clsH = h(str3, this.f95192b);
        StringTokenizer stringTokenizer = new StringTokenizer(str4, ":");
        int iCountTokens = stringTokenizer.countTokens();
        Class[] clsArr = new Class[iCountTokens];
        for (int i11 = 0; i11 < iCountTokens; i11++) {
            clsArr[i11] = h(stringTokenizer.nextToken(), this.f95192b);
        }
        StringTokenizer stringTokenizer2 = new StringTokenizer(str5, ":");
        int iCountTokens2 = stringTokenizer2.countTokens();
        String[] strArr = new String[iCountTokens2];
        for (int i12 = 0; i12 < iCountTokens2; i12++) {
            strArr[i12] = stringTokenizer2.nextToken();
        }
        StringTokenizer stringTokenizer3 = new StringTokenizer(str6, ":");
        int iCountTokens3 = stringTokenizer3.countTokens();
        Class[] clsArr2 = new Class[iCountTokens3];
        for (int i13 = 0; i13 < iCountTokens3; i13++) {
            clsArr2[i13] = h(stringTokenizer3.nextToken(), this.f95192b);
        }
        a aVar = new a(i10, str2, clsH, clsArr, strArr, clsArr2, h(str7, this.f95192b));
        aVar.A(this.f95192b);
        return aVar;
    }

    public ad.e e(Class cls, Class cls2, String str) {
        b bVar = new b(cls, cls2, str);
        bVar.A(this.f95192b);
        return bVar;
    }

    public ad.e f(String str) {
        b bVar = new b(str);
        bVar.A(this.f95192b);
        return bVar;
    }

    public ad.e g(String str, String str2, String str3) {
        b bVar = new b(h(str, this.f95192b), h(new StringTokenizer(str2, ":").nextToken(), this.f95192b), new StringTokenizer(str3, ":").nextToken());
        bVar.A(this.f95192b);
        return bVar;
    }

    public ad.g i(int i10, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2) {
        d dVar = new d(i10, cls, clsArr, strArr, clsArr2);
        dVar.A(this.f95192b);
        return dVar;
    }

    public ad.g j(String str) {
        d dVar = new d(str);
        dVar.A(this.f95192b);
        return dVar;
    }

    public ad.g k(String str, String str2, String str3, String str4, String str5) {
        int i10 = Integer.parseInt(str, 16);
        Class clsH = h(str2, this.f95192b);
        StringTokenizer stringTokenizer = new StringTokenizer(str3, ":");
        int iCountTokens = stringTokenizer.countTokens();
        Class[] clsArr = new Class[iCountTokens];
        for (int i11 = 0; i11 < iCountTokens; i11++) {
            clsArr[i11] = h(stringTokenizer.nextToken(), this.f95192b);
        }
        StringTokenizer stringTokenizer2 = new StringTokenizer(str4, ":");
        int iCountTokens2 = stringTokenizer2.countTokens();
        String[] strArr = new String[iCountTokens2];
        for (int i12 = 0; i12 < iCountTokens2; i12++) {
            strArr[i12] = stringTokenizer2.nextToken();
        }
        StringTokenizer stringTokenizer3 = new StringTokenizer(str5, ":");
        int iCountTokens3 = stringTokenizer3.countTokens();
        Class[] clsArr2 = new Class[iCountTokens3];
        for (int i13 = 0; i13 < iCountTokens3; i13++) {
            clsArr2[i13] = h(stringTokenizer3.nextToken(), this.f95192b);
        }
        d dVar = new d(i10, clsH, clsArr, strArr, clsArr2);
        dVar.A(this.f95192b);
        return dVar;
    }

    public org.aspectj.lang.c.a l(String str, org.aspectj.lang.e eVar, int i10) {
        int i11 = this.f95194d;
        this.f95194d = i11 + 1;
        return new h.a(i11, str, eVar, K(i10, -1));
    }

    public org.aspectj.lang.c.a m(String str, org.aspectj.lang.e eVar, int i10, int i11) {
        int i12 = this.f95194d;
        this.f95194d = i12 + 1;
        return new h.a(i12, str, eVar, K(i10, i11));
    }

    public org.aspectj.lang.c.a n(String str, org.aspectj.lang.e eVar, z zVar) {
        int i10 = this.f95194d;
        this.f95194d = i10 + 1;
        return new h.a(i10, str, eVar, zVar);
    }

    public ad.l p(int i10, String str, Class cls, Class cls2) {
        f fVar = new f(i10, str, cls, cls2);
        fVar.A(this.f95192b);
        return fVar;
    }

    public ad.l q(String str) {
        f fVar = new f(str);
        fVar.A(this.f95192b);
        return fVar;
    }

    public ad.l r(String str, String str2, String str3, String str4) {
        f fVar = new f(Integer.parseInt(str, 16), str2, h(str3, this.f95192b), h(str4, this.f95192b));
        fVar.A(this.f95192b);
        return fVar;
    }

    public ad.m s(int i10, Class cls) {
        g gVar = new g(i10, cls);
        gVar.A(this.f95192b);
        return gVar;
    }

    public ad.m t(String str) {
        g gVar = new g(str);
        gVar.A(this.f95192b);
        return gVar;
    }

    public ad.m u(String str, String str2) {
        g gVar = new g(Integer.parseInt(str, 16), h(str2, this.f95192b));
        gVar.A(this.f95192b);
        return gVar;
    }

    public r z() {
        i iVar = new i(h("Ljava/lang/Object;", this.f95192b));
        iVar.A(this.f95192b);
        return iVar;
    }
}
