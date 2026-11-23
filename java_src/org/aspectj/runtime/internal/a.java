package org.aspectj.runtime.internal;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Object[] f95158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f95159b = 1048576;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Object[] f95160c;

    public a() {
    }

    public int a() {
        return this.f95159b;
    }

    public Object[] b() {
        return this.f95160c;
    }

    public Object[] c() {
        return this.f95158a;
    }

    public org.aspectj.lang.d d() {
        Object[] objArr = this.f95158a;
        org.aspectj.lang.d dVar = (org.aspectj.lang.d) objArr[objArr.length - 1];
        dVar.d(this);
        return dVar;
    }

    public org.aspectj.lang.d e(int i10) {
        Object[] objArr = this.f95158a;
        org.aspectj.lang.d dVar = (org.aspectj.lang.d) objArr[objArr.length - 1];
        dVar.d(this);
        this.f95159b = i10;
        return dVar;
    }

    public abstract Object f(Object[] objArr) throws Throwable;

    public a(Object[] objArr) {
        this.f95158a = objArr;
    }
}
