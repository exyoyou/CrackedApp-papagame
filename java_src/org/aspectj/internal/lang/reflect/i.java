package org.aspectj.internal.lang.reflect;

/* JADX INFO: loaded from: classes4.dex */
public class i implements ad.o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ad.c<?> f95101a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f95102b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ad.c<?> f95103c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f95104d;

    public i(ad.c<?> cVar, String str, int i10) {
        this.f95101a = cVar;
        this.f95102b = str;
        this.f95104d = i10;
        try {
            this.f95103c = (ad.c) q.c(str, cVar.H());
        } catch (ClassNotFoundException unused) {
        }
    }

    @Override // ad.o
    public ad.c<?> a() {
        return this.f95101a;
    }

    @Override // ad.o
    public int d() {
        return this.f95104d;
    }

    @Override // ad.o
    public ad.c<?> h() throws ClassNotFoundException {
        ad.c<?> cVar = this.f95103c;
        if (cVar != null) {
            return cVar;
        }
        throw new ClassNotFoundException(this.f95102b);
    }

    public i(ad.c<?> cVar, ad.c<?> cVar2, int i10) {
        this.f95101a = cVar;
        this.f95103c = cVar2;
        this.f95102b = cVar2.getName();
        this.f95104d = i10;
    }
}
