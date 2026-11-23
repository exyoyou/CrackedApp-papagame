package com.aggmoread.sdk.z.c.a.a.d.b;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.haima.hmcp.Constants;

/* JADX INFO: loaded from: classes7.dex */
public class d implements com.aggmoread.sdk.z.c.a.a.c.h.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f4945a;

    public d(Context context) {
        e eVar = new e();
        this.f4945a = eVar;
        eVar.f4948d = context;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.h.a
    public com.aggmoread.sdk.z.c.a.a.c.h.a a(int i10) {
        this.f4945a.f4958n = i10;
        return this;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.h.a
    public com.aggmoread.sdk.z.c.a.a.c.h.a b(int i10) {
        this.f4945a.f4957m = i10;
        return this;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.h.a
    public com.aggmoread.sdk.z.c.a.a.c.h.a c(int i10) {
        this.f4945a.B = i10;
        return this;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.h.a
    public com.aggmoread.sdk.z.c.a.a.c.h.a d(int i10) {
        this.f4945a.A = i10;
        return this;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.h.a
    public com.aggmoread.sdk.z.c.a.a.c.h.a e(int i10) {
        this.f4945a.f4959o = i10;
        return this;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.h.a
    public com.aggmoread.sdk.z.c.a.a.c.h.a a(ViewGroup viewGroup) {
        this.f4945a.f4954j = viewGroup;
        return this;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.h.a
    public com.aggmoread.sdk.z.c.a.a.c.h.a b(String str) {
        this.f4945a.f4953i = str;
        return this;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.h.a
    public com.aggmoread.sdk.z.c.a.a.c.h.a c(String str) {
        String str2;
        com.aggmoread.sdk.z.c.a.a.e.e.a("raw token " + str);
        if (!TextUtils.isEmpty(str)) {
            try {
                String[] strArrSplit = new String(com.aggmoread.sdk.z.c.a.a.b.e(str.getBytes()), "utf-8").split(Constants.TIPS_SPECIAL_TAG);
                if (strArrSplit.length >= 2) {
                    e eVar = this.f4945a;
                    eVar.f4967w = strArrSplit[0];
                    eVar.f4968x = strArrSplit[1];
                    com.aggmoread.sdk.z.c.a.a.e.e.a("token " + this.f4945a.f4967w);
                    com.aggmoread.sdk.z.c.a.a.e.e.a("slotId " + this.f4945a.f4968x);
                    if (strArrSplit.length == 3) {
                        this.f4945a.f4969y = strArrSplit[2];
                        str2 = "s2s price " + this.f4945a.f4969y;
                    }
                } else {
                    str2 = "err token ";
                }
                com.aggmoread.sdk.z.c.a.a.e.e.a(str2);
            } catch (Exception e10) {
                e10.printStackTrace();
                com.aggmoread.sdk.z.c.a.a.e.e.a("set token err " + e10.getMessage());
            }
        }
        return this;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.h.a
    public com.aggmoread.sdk.z.c.a.a.c.h.a a(com.aggmoread.sdk.z.c.a.a.a aVar) {
        this.f4945a.f4965u = aVar;
        return this;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.h.a
    public com.aggmoread.sdk.z.c.a.a.c.h.a a(com.aggmoread.sdk.z.c.a.a.c.g gVar) {
        this.f4945a.f4951g = gVar;
        return this;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.h.a
    public com.aggmoread.sdk.z.c.a.a.c.h.a a(com.aggmoread.sdk.z.c.a.a.c.i iVar) {
        this.f4945a.f4961q = iVar;
        return this;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.h.a
    public com.aggmoread.sdk.z.c.a.a.c.h.a a(com.aggmoread.sdk.z.c.a.a.c.j jVar) {
        this.f4945a.f4949e = jVar;
        return this;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.h.a
    public com.aggmoread.sdk.z.c.a.a.c.h.a a(com.aggmoread.sdk.z.c.a.a.c.s.c cVar) {
        this.f4945a.f4960p = cVar;
        return this;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.h.a
    public com.aggmoread.sdk.z.c.a.a.c.h.a a(com.aggmoread.sdk.z.c.a.a.c.u.b bVar) {
        this.f4945a.f4963s = bVar;
        return this;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.h.a
    public com.aggmoread.sdk.z.c.a.a.c.h.a a(String str) {
        this.f4945a.f4950f = str;
        return this;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.h.a
    public com.aggmoread.sdk.z.c.a.a.c.h.a a(boolean z10) {
        this.f4945a.f4970z = z10;
        return this;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.h.a
    public com.aggmoread.sdk.z.c.a.a.c.h a() {
        try {
            return (com.aggmoread.sdk.z.c.a.a.c.h) this.f4945a.clone();
        } catch (CloneNotSupportedException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
