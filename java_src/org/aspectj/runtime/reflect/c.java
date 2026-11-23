package org.aspectj.runtime.reflect;

/* JADX INFO: loaded from: classes4.dex */
abstract class c extends j implements ad.f {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    Class[] f95184m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    String[] f95185n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Class[] f95186o;

    c(int i10, String str, Class cls, Class[] clsArr, String[] strArr, Class[] clsArr2) {
        super(i10, str, cls);
        this.f95184m = clsArr;
        this.f95185n = strArr;
        this.f95186o = clsArr2;
    }

    @Override // ad.f
    public Class[] c() {
        if (this.f95184m == null) {
            this.f95184m = w(3);
        }
        return this.f95184m;
    }

    @Override // ad.f
    public Class[] e() {
        if (this.f95186o == null) {
            this.f95186o = w(5);
        }
        return this.f95186o;
    }

    @Override // ad.f
    public String[] g() {
        if (this.f95185n == null) {
            this.f95185n = u(4);
        }
        return this.f95185n;
    }

    c(String str) {
        super(str);
    }
}
