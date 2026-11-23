package org.aspectj.internal.lang.reflect;

import ad.a0;
import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes4.dex */
public class e implements ad.i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ad.c<?> f95086a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a0 f95087b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Type[] f95088c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f95089d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f95090e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f95091f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f95092g;

    public e(String str, String str2, boolean z10, ad.c<?> cVar) {
        this.f95092g = false;
        this.f95087b = new s(str);
        this.f95091f = z10;
        this.f95086a = cVar;
        this.f95089d = str2;
        try {
            this.f95088c = q.a(str2, cVar.H());
        } catch (ClassNotFoundException e10) {
            this.f95092g = true;
            this.f95090e = e10.getMessage();
        }
    }

    @Override // ad.i
    public ad.c a() {
        return this.f95086a;
    }

    @Override // ad.i
    public boolean b() {
        return !this.f95091f;
    }

    @Override // ad.i
    public Type[] c() throws ClassNotFoundException {
        if (this.f95092g) {
            throw new ClassNotFoundException(this.f95090e);
        }
        return this.f95088c;
    }

    @Override // ad.i
    public a0 d() {
        return this.f95087b;
    }

    @Override // ad.i
    public boolean isExtends() {
        return this.f95091f;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("declare parents : ");
        stringBuffer.append(d().a());
        stringBuffer.append(isExtends() ? " extends " : " implements ");
        stringBuffer.append(this.f95089d);
        return stringBuffer.toString();
    }
}
