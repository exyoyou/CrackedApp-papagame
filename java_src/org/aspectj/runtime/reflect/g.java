package org.aspectj.runtime.reflect;

import com.join.mgps.Util.o0;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;

/* JADX INFO: loaded from: classes4.dex */
class g extends c implements ad.m {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Constructor f95197p;

    /* JADX WARN: Illegal instructions before constructor call */
    g(int i10, Class cls) {
        String str = Modifier.isStatic(i10) ? "<clinit>" : "<init>";
        Class[] clsArr = l.f95213k;
        super(i10, str, cls, clsArr, l.f95212j, clsArr);
    }

    @Override // org.aspectj.runtime.reflect.l, org.aspectj.lang.e
    public String getName() {
        return Modifier.isStatic(d()) ? "<clinit>" : "<init>";
    }

    @Override // ad.m
    public Constructor k() {
        if (this.f95197p == null) {
            try {
                this.f95197p = a().getDeclaredConstructor(c());
            } catch (Exception unused) {
            }
        }
        return this.f95197p;
    }

    @Override // org.aspectj.runtime.reflect.l
    protected String r(n nVar) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(nVar.e(d()));
        stringBuffer.append(nVar.f(a(), l()));
        stringBuffer.append(o0.f49827a);
        stringBuffer.append(getName());
        return stringBuffer.toString();
    }

    g(String str) {
        super(str);
    }
}
