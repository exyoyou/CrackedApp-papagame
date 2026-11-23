package org.aspectj.runtime.reflect;

/* JADX INFO: loaded from: classes4.dex */
class b extends l implements ad.e {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    Class f95182m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    String f95183n;

    b(Class cls, Class cls2, String str) {
        super(0, "catch", cls);
        this.f95182m = cls2;
        this.f95183n = str;
    }

    @Override // ad.e
    public String h() {
        if (this.f95183n == null) {
            this.f95183n = t(4);
        }
        return this.f95183n;
    }

    @Override // ad.e
    public Class j() {
        if (this.f95182m == null) {
            this.f95182m = v(3);
        }
        return this.f95182m;
    }

    @Override // org.aspectj.runtime.reflect.l
    protected String r(n nVar) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("catch(");
        stringBuffer.append(nVar.g(j()));
        stringBuffer.append(")");
        return stringBuffer.toString();
    }

    b(String str) {
        super(str);
    }
}
