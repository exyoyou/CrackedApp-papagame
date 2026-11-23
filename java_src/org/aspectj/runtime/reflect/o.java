package org.aspectj.runtime.reflect;

import ad.c0;

/* JADX INFO: loaded from: classes4.dex */
class o extends l implements c0 {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Class f95238m;

    o(Class cls) {
        super(8, "unlock", cls);
        this.f95238m = cls;
    }

    public Class j() {
        if (this.f95238m == null) {
            this.f95238m = v(3);
        }
        return this.f95238m;
    }

    @Override // org.aspectj.runtime.reflect.l
    protected String r(n nVar) {
        if (this.f95238m == null) {
            this.f95238m = v(3);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("unlock(");
        stringBuffer.append(nVar.g(this.f95238m));
        stringBuffer.append(")");
        return stringBuffer.toString();
    }

    o(String str) {
        super(str);
    }
}
