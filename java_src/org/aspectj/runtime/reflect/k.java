package org.aspectj.runtime.reflect;

import ad.t;
import com.join.mgps.Util.o0;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
class k extends c implements t {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Method f95208p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    Class f95209q;

    k(int i10, String str, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2, Class cls2) {
        super(i10, str, cls, clsArr, strArr, clsArr2);
        this.f95209q = cls2;
    }

    private Method F(Class cls, String str, Class[] clsArr, Set set) {
        if (cls == null) {
            return null;
        }
        if (!set.contains(cls)) {
            set.add(cls);
            try {
                return cls.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException unused) {
            }
        }
        Method methodF = F(cls.getSuperclass(), str, clsArr, set);
        if (methodF != null) {
            return methodF;
        }
        Class<?>[] interfaces = cls.getInterfaces();
        if (interfaces != null) {
            for (Class<?> cls2 : interfaces) {
                Method methodF2 = F(cls2, str, clsArr, set);
                if (methodF2 != null) {
                    return methodF2;
                }
            }
        }
        return null;
    }

    @Override // ad.t
    public Method getMethod() {
        if (this.f95208p == null) {
            Class clsA = a();
            try {
                this.f95208p = clsA.getDeclaredMethod(getName(), c());
            } catch (NoSuchMethodException unused) {
                HashSet hashSet = new HashSet();
                hashSet.add(clsA);
                this.f95208p = F(clsA, getName(), c(), hashSet);
            }
        }
        return this.f95208p;
    }

    @Override // ad.t
    public Class getReturnType() {
        if (this.f95209q == null) {
            this.f95209q = v(6);
        }
        return this.f95209q;
    }

    @Override // org.aspectj.runtime.reflect.l
    protected String r(n nVar) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(nVar.e(d()));
        if (nVar.f95230b) {
            stringBuffer.append(nVar.g(getReturnType()));
        }
        if (nVar.f95230b) {
            stringBuffer.append(" ");
        }
        stringBuffer.append(nVar.f(a(), l()));
        stringBuffer.append(o0.f49827a);
        stringBuffer.append(getName());
        nVar.a(stringBuffer, c());
        nVar.b(stringBuffer, e());
        return stringBuffer.toString();
    }

    k(String str) {
        super(str);
    }
}
