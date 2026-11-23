package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public s6 f30256a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public s6 f30257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public s6 f30258c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public s6 f30259d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public s6 f30260e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public s6 f30261f;

    private f(int i10, boolean z10) {
        l lVarB = l.b(i10);
        double d10 = lVarB.d();
        double dC = lVarB.c();
        if (z10) {
            this.f30256a = s6.c(d10, dC);
            this.f30257b = s6.c(d10, dC / 3.0d);
            this.f30258c = s6.c(60.0d + d10, dC / 2.0d);
            this.f30259d = s6.c(d10, Math.min(dC / 12.0d, 4.0d));
            this.f30260e = s6.c(d10, Math.min(dC / 6.0d, 8.0d));
        } else {
            this.f30256a = s6.c(d10, Math.max(48.0d, dC));
            this.f30257b = s6.c(d10, 16.0d);
            this.f30258c = s6.c(60.0d + d10, 24.0d);
            this.f30259d = s6.c(d10, 4.0d);
            this.f30260e = s6.c(d10, 8.0d);
        }
        this.f30261f = s6.c(25.0d, 84.0d);
    }

    public static f a(int i10) {
        return new f(i10, true);
    }

    public static f b(int i10) {
        return new f(i10, false);
    }
}
