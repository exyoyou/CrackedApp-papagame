package cn.fly.commons.cc;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.io.File;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.URL;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final HashMap<String, Class<?>> f1230a = new HashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private z f1231b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1233d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private HashMap<String, Object> f1234e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private t f1236g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f1237h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object[] f1232c = new Object[16];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private HashMap<String, Class<?>> f1235f = new HashMap<>();

    public t(HashMap<String, Object> map, z zVar) {
        this.f1231b = zVar;
        this.f1234e = new HashMap<>(map);
    }

    static void a(String str, Class<?> cls) {
        f1230a.put(str, cls);
    }

    public Object b() {
        int i10 = this.f1233d;
        if (i10 == 0) {
            throw new RuntimeException("stack is empty");
        }
        int i11 = i10 - 1;
        this.f1233d = i11;
        Object[] objArr = this.f1232c;
        Object obj = objArr[i11];
        objArr[i11] = null;
        return obj;
    }

    public t c() {
        t tVar = new t(new HashMap(), this.f1231b);
        tVar.f1236g = this;
        return tVar;
    }

    public t d() {
        return this.f1236g;
    }

    public int e() {
        return this.f1233d;
    }

    public void f() {
        this.f1237h = true;
    }

    public boolean g() {
        return this.f1237h;
    }

    public z h() {
        return this.f1231b;
    }

    public void a() {
        b("Object", Object.class);
        b("Class", Class.class);
        b("Method", Method.class);
        b("String", String.class);
        b("Thread", Thread.class);
        b(cn.fly.commons.a.m.a("008Qhkeh+ffe:ggOhg"), Runnable.class);
        b(cn.fly.commons.a.m.a("006GfmfdgjTjg@eg"), System.class);
        b("File", File.class);
        b("URL", URL.class);
        b("Double", Double.class);
        b("Float", Float.class);
        b("Long", Long.class);
        b("Integer", Integer.class);
        b(cn.fly.commons.a.m.a("005]fmGiMelek=j"), Short.class);
        b("Byte", Byte.class);
        b("Number", Number.class);
        b(cn.fly.commons.a.m.a("009'feNieCekBedjgCek"), Character.class);
        b("Boolean", Boolean.class);
        b(cn.fly.commons.a.m.a("006XedelehggLhg"), Double.TYPE);
        b(cn.fly.commons.a.m.a("005QfgHhPel+ej"), Float.TYPE);
        b(MethodReflectParams.LONG, Long.TYPE);
        b(cn.fly.commons.a.m.a("003Hej%fj"), Integer.TYPE);
        b(MethodReflectParams.SHORT, Short.TYPE);
        b(MethodReflectParams.BYTE, Byte.TYPE);
        b(cn.fly.commons.a.m.a("004die[ek"), Character.TYPE);
        b("boolean", Boolean.TYPE);
        b("bigInt", BigInteger.class);
        b("BigInteger", BigInteger.class);
        b("bigDec", BigDecimal.class);
        b("BigDecimal", BigDecimal.class);
        b("List", List.class);
        b("Map", Map.class);
        b("Function", ab.class);
        b("fun", ab.class);
        b("Range", c.class);
        b("Array", Array.class);
        b("Suba", aa.class);
        b("VM", aa.class);
        for (Map.Entry<String, Class<?>> entry : f1230a.entrySet()) {
            b(entry.getKey(), entry.getValue());
        }
    }

    public void b(String str, Object obj) {
        if (this.f1234e.containsKey(str)) {
            this.f1234e.put(str, obj);
            return;
        }
        t tVar = this.f1236g;
        if (tVar != null) {
            tVar.b(str, obj);
            return;
        }
        throw new RuntimeException(x.a.f97579g + str + "\" has not defined");
    }

    public void b(String str, Class<?> cls) {
        this.f1235f.put(str, cls);
    }

    public Class<?> b(String str) {
        for (t tVar = this; tVar != null; tVar = tVar.f1236g) {
            if (tVar.f1235f.containsKey(str)) {
                return tVar.f1235f.get(str);
            }
        }
        throw new RuntimeException("Can not find class " + str);
    }

    public void a(Object obj) {
        int i10 = this.f1233d;
        Object[] objArr = this.f1232c;
        if (i10 == objArr.length) {
            this.f1232c = Arrays.copyOf(objArr, objArr.length + (objArr.length / 2));
        }
        Object[] objArr2 = this.f1232c;
        int i11 = this.f1233d;
        this.f1233d = i11 + 1;
        objArr2[i11] = obj;
    }

    public void a(String str, Object obj) {
        if (!this.f1234e.containsKey(str)) {
            this.f1234e.put(str, obj);
            return;
        }
        throw new RuntimeException(x.a.f97579g + str + "\" has defined");
    }

    public Object a(String str) {
        for (t tVar = this; tVar != null; tVar = tVar.f1236g) {
            if (tVar.f1234e.containsKey(str)) {
                return tVar.f1234e.get(str);
            }
        }
        throw new RuntimeException("Can not find \"" + str + x.a.f97579g);
    }

    public Object a(final Object obj, final boolean z10, Class<?>... clsArr) {
        return Proxy.newProxyInstance(getClass().getClassLoader(), clsArr, new InvocationHandler() { // from class: cn.fly.commons.cc.t.1
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj2, Method method, Object[] objArr) throws Throwable {
                Throwable th;
                ab abVar;
                LinkedList<Object> linkedListB;
                try {
                    Object obj3 = obj;
                    if (obj3 != null) {
                        abVar = obj3 instanceof ab ? (ab) obj3 : (ab) ((Map) obj3).get(method.getName());
                    } else {
                        abVar = null;
                    }
                    if (abVar != null) {
                        if (objArr == null) {
                            objArr = new Object[0];
                        }
                        if (z10) {
                            linkedListB = abVar.b(objArr);
                        } else {
                            try {
                                linkedListB = abVar.b(objArr);
                            } catch (Throwable th2) {
                                th = th2;
                                try {
                                    throw th;
                                } catch (Throwable unused) {
                                }
                            }
                        }
                        if (linkedListB.isEmpty()) {
                            return null;
                        }
                        return linkedListB.get(0);
                        th = null;
                    } else {
                        th = null;
                    }
                } catch (Throwable unused2) {
                }
                if (th == null) {
                    return null;
                }
                throw th;
            }
        });
    }

    public void a(Method method, int i10) throws Throwable {
        Object[] objArr = new Object[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = b();
        }
        a(method, objArr);
    }

    public void a(Method method, Object[] objArr) throws Throwable {
        Object obj;
        if (Modifier.isStatic(method.getModifiers())) {
            obj = null;
        } else if (objArr.length > 0) {
            obj = objArr[0];
            int length = objArr.length - 1;
            Object[] objArr2 = new Object[length];
            int i10 = 0;
            while (i10 < length) {
                int i11 = i10 + 1;
                objArr2[i10] = objArr[i11];
                i10 = i11;
            }
            objArr = objArr2;
        } else {
            throw new RuntimeException("receiver not found");
        }
        method.setAccessible(true);
        for (int i12 = 0; i12 < objArr.length; i12++) {
            if (method.getParameterTypes()[i12].isInterface()) {
                Object obj2 = objArr[i12];
                if (obj2 instanceof ab) {
                    objArr[i12] = a(obj2, true, method.getParameterTypes()[i12]);
                }
            }
        }
        if (method.getReturnType() == Void.TYPE) {
            method.invoke(obj, objArr);
        } else {
            a(method.invoke(obj, objArr));
        }
    }
}
