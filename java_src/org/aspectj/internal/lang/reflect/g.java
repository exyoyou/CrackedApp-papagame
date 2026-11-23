package org.aspectj.internal.lang.reflect;

import ad.x;

/* JADX INFO: loaded from: classes4.dex */
public class g implements ad.k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ad.c<?> f95096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private x f95097b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ad.c<?> f95098c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f95099d;

    public g(ad.c<?> cVar, String str, String str2) {
        this.f95096a = cVar;
        this.f95097b = new n(str);
        try {
            this.f95098c = ad.d.a(Class.forName(str2, false, cVar.H().getClassLoader()));
        } catch (ClassNotFoundException unused) {
            this.f95099d = str2;
        }
    }

    @Override // ad.k
    public ad.c a() {
        return this.f95096a;
    }

    @Override // ad.k
    public x b() {
        return this.f95097b;
    }

    @Override // ad.k
    public ad.c c() throws ClassNotFoundException {
        if (this.f95099d == null) {
            return this.f95098c;
        }
        throw new ClassNotFoundException(this.f95099d);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("declare soft : ");
        String str = this.f95099d;
        if (str != null) {
            stringBuffer.append(this.f95098c.getName());
        } else {
            stringBuffer.append(str);
        }
        stringBuffer.append(" : ");
        stringBuffer.append(b().a());
        return stringBuffer.toString();
    }
}
