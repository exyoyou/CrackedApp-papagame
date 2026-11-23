package org.aspectj.runtime.reflect;

import ad.r;

/* JADX INFO: loaded from: classes4.dex */
class i extends l implements r {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Class f95207m;

    i(Class cls) {
        super(8, org.aspectj.lang.c.f95154k, cls);
        this.f95207m = cls;
    }

    public Class j() {
        if (this.f95207m == null) {
            this.f95207m = v(3);
        }
        return this.f95207m;
    }

    @Override // org.aspectj.runtime.reflect.l
    protected String r(n nVar) {
        if (this.f95207m == null) {
            this.f95207m = v(3);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("lock(");
        stringBuffer.append(nVar.g(this.f95207m));
        stringBuffer.append(")");
        return stringBuffer.toString();
    }

    i(String str) {
        super(str);
    }
}
