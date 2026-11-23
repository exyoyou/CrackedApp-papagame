package com.aggmoread.sdk.z.c.a.a.e.v;

import android.content.ContextWrapper;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes7.dex */
public abstract class c implements g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected com.aggmoread.sdk.z.c.a.a.d.b.f f5293c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f5294d;

    @Override // com.aggmoread.sdk.z.c.a.a.e.v.g
    public boolean a() {
        return b();
    }

    protected String b(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        com.aggmoread.sdk.z.c.a.a.e.f fVar2;
        if (fVar == null || (fVar2 = fVar.f5003c) == null) {
            return null;
        }
        return fVar2.c(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5031i0);
    }

    protected abstract String c();

    @Override // com.aggmoread.sdk.z.c.a.a.e.v.g
    public boolean a(ContextWrapper contextWrapper, com.aggmoread.sdk.z.c.a.a.d.b.f fVar, Object... objArr) {
        if (fVar != null && contextWrapper != null) {
            String strB = b(fVar);
            if (TextUtils.isEmpty(strB)) {
                return false;
            }
            String strC = c();
            if (TextUtils.isEmpty(strC)) {
                return false;
            }
            try {
                a.a(contextWrapper, strB, strC, fVar);
                this.f5293c = fVar;
                this.f5294d = strB;
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public boolean b() {
        return (this.f5293c == null || TextUtils.isEmpty(this.f5294d)) ? false : true;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.e.v.g
    public boolean a(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        if (fVar == null) {
            return false;
        }
        return com.aggmoread.sdk.z.c.a.a.e.p.a(com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q, fVar);
    }
}
