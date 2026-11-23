package org.aspectj.runtime.reflect;

import java.lang.reflect.Constructor;

/* JADX INFO: loaded from: classes4.dex */
class d extends c implements ad.g {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Constructor f95187p;

    d(int i10, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2) {
        super(i10, "<init>", cls, clsArr, strArr, clsArr2);
    }

    @Override // org.aspectj.runtime.reflect.l, org.aspectj.lang.e
    public String getName() {
        return "<init>";
    }

    @Override // ad.g
    public Constructor m() {
        if (this.f95187p == null) {
            try {
                this.f95187p = a().getDeclaredConstructor(c());
            } catch (Exception unused) {
            }
        }
        return this.f95187p;
    }

    @Override // org.aspectj.runtime.reflect.l
    protected String r(n nVar) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(nVar.e(d()));
        stringBuffer.append(nVar.f(a(), l()));
        nVar.a(stringBuffer, c());
        nVar.b(stringBuffer, e());
        return stringBuffer.toString();
    }

    d(String str) {
        super(str);
    }
}
