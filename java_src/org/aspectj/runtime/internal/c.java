package org.aspectj.runtime.internal;

/* JADX INFO: loaded from: classes4.dex */
public class c extends bd.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object[] f95163b;

    public c(Object[] objArr) {
        this.f95163b = objArr;
    }

    @Override // bd.a
    public Object a(int i10) {
        return this.f95163b[i10];
    }

    public c(Object[] objArr, Object obj) {
        super(obj);
        this.f95163b = objArr;
    }
}
