package org.aspectj.internal.lang.reflect;

import ad.x;

/* JADX INFO: loaded from: classes4.dex */
public class d implements ad.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private x f95082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f95083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f95084c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ad.c f95085d;

    public d(String str, String str2, boolean z10, ad.c cVar) {
        this.f95082a = new n(str);
        this.f95083b = str2;
        this.f95084c = z10;
        this.f95085d = cVar;
    }

    @Override // ad.h
    public ad.c a() {
        return this.f95085d;
    }

    @Override // ad.h
    public x b() {
        return this.f95082a;
    }

    @Override // ad.h
    public String getMessage() {
        return this.f95083b;
    }

    @Override // ad.h
    public boolean isError() {
        return this.f95084c;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("declare ");
        stringBuffer.append(isError() ? "error : " : "warning : ");
        stringBuffer.append(b().a());
        stringBuffer.append(" : ");
        stringBuffer.append(x.a.f97579g);
        stringBuffer.append(getMessage());
        stringBuffer.append(x.a.f97579g);
        return stringBuffer.toString();
    }
}
