package org.aspectj.internal.lang.reflect;

import ad.a0;
import ad.b0;
import org.aspectj.lang.reflect.PerClauseKind;

/* JADX INFO: loaded from: classes4.dex */
public class r extends l implements b0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a0 f95128b;

    public r(PerClauseKind perClauseKind, String str) {
        super(perClauseKind);
        this.f95128b = new s(str);
    }

    @Override // ad.b0
    public a0 c() {
        return this.f95128b;
    }

    @Override // org.aspectj.internal.lang.reflect.l
    public String toString() {
        return "pertypewithin(" + this.f95128b.a() + ")";
    }
}
