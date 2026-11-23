package com.aggmoread.sdk.z.c.a.a.d.a.d.q;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.location.Location;
import android.text.TextUtils;
import com.aggmoread.sdk.z.a.i.e;
import com.aggmoread.sdk.z.a.i.e.a;
import com.aggmoread.sdk.z.a.m.j;
import com.aggmoread.sdk.z.a.m.n;
import com.aggmoread.sdk.z.c.a.a.d.b.f;
import com.aggmoread.sdk.z.c.a.a.d.b.h;
import com.aggmoread.sdk.z.c.a.a.d.b.i;
import com.aggmoread.sdk.z.c.a.a.d.b.k;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.aggmoread.sdk.z.c.a.a.e.t;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public abstract class d<T extends e.a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected boolean f4550a;

    class a extends com.aggmoread.sdk.z.a.g.b {
        final /* synthetic */ i H;

        a(d dVar, i iVar) {
            this.H = iVar;
        }

        @Override // com.aggmoread.sdk.z.a.g.b
        public String a() {
            i iVar = this.H;
            if (iVar != null && iVar.c() != null) {
                String strH = this.H.c().h();
                if (!TextUtils.isEmpty(strH)) {
                    return strH;
                }
            }
            return com.aggmoread.sdk.z.c.a.a.e.c.d();
        }

        @Override // com.aggmoread.sdk.z.a.g.b
        public String k() {
            i iVar = this.H;
            if (iVar != null && iVar.c() != null) {
                String strJ = this.H.c().j();
                if (!TextUtils.isEmpty(strJ)) {
                    return strJ;
                }
            }
            String strK = com.aggmoread.sdk.z.c.a.a.e.c.k();
            if (strK.startsWith("ska+")) {
                return null;
            }
            return strK;
        }

        @Override // com.aggmoread.sdk.z.a.g.b
        public String l() {
            i iVar = this.H;
            if (iVar != null && iVar.c() != null) {
                String strI = this.H.c().i();
                if (!TextUtils.isEmpty(strI)) {
                    return strI;
                }
            }
            return com.aggmoread.sdk.z.c.a.a.e.c.o();
        }

        @Override // com.aggmoread.sdk.z.a.g.b
        public List<String> m() {
            i iVar = this.H;
            if (iVar != null && iVar.c() != null) {
                try {
                    List<PackageInfo> listL = this.H.c().l();
                    if (listL != null && !listL.isEmpty()) {
                        ArrayList arrayList = new ArrayList();
                        for (PackageInfo packageInfo : listL) {
                            if (packageInfo != null && !TextUtils.isEmpty(packageInfo.packageName)) {
                                arrayList.add(packageInfo.packageName);
                            }
                        }
                        return arrayList;
                    }
                } catch (Exception unused) {
                }
            }
            return super.m();
        }

        @Override // com.aggmoread.sdk.z.a.g.b
        public Location n() {
            i iVar = this.H;
            return (iVar == null || iVar.c() == null) ? super.n() : this.H.c().m();
        }

        @Override // com.aggmoread.sdk.z.a.g.b
        public String o() {
            i iVar = this.H;
            if (iVar != null && iVar.c() != null) {
                String strN = this.H.c().n();
                if (!TextUtils.isEmpty(strN)) {
                    return strN;
                }
            }
            return n.b(k.f5147q);
        }

        @Override // com.aggmoread.sdk.z.a.g.b
        public String t() {
            i iVar = this.H;
            if (iVar != null && iVar.c() != null) {
                String strO = this.H.c().o();
                if (!TextUtils.isEmpty(strO)) {
                    return strO;
                }
            }
            return com.aggmoread.sdk.z.c.a.a.e.c.n();
        }

        @Override // com.aggmoread.sdk.z.a.g.b
        public String y() {
            i iVar = this.H;
            if (iVar != null && iVar.c() != null) {
                String strP = this.H.c().p();
                if (!TextUtils.isEmpty(strP)) {
                    return strP;
                }
            }
            return com.aggmoread.sdk.z.c.a.a.e.c.A();
        }
    }

    class b extends com.aggmoread.sdk.z.a.g.b.a {
        b(d dVar) {
        }

        @Override // com.aggmoread.sdk.z.a.g.b.a
        public String a() {
            return com.aggmoread.sdk.z.c.a.a.e.c.s();
        }
    }

    protected abstract com.aggmoread.sdk.z.a.h.a.EnumC0074a a();

    protected abstract T a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar);

    public T a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, f fVar) {
        T t10 = (T) a(eVar);
        if (t10 instanceof e.a) {
            t10.b(eVar.f4957m).b(com.aggmoread.sdk.z.c.a.a.d.a.d.q.b.a(fVar)).a(p.d(fVar)).a(p.i(fVar)).d(eVar.f4958n).c(p.a(eVar));
        }
        return t10;
    }

    protected com.aggmoread.sdk.z.a.g.b b() {
        a aVar = new a(this, h.b());
        try {
            aVar.c(t.b(k.f5147q));
            aVar.a(t.a(k.f5147q));
            aVar.b(com.aggmoread.sdk.z.c.a.a.e.c.d(k.f5147q));
            aVar.k(com.aggmoread.sdk.z.c.a.a.e.c.e(k.f5147q));
            aVar.a(com.aggmoread.sdk.z.c.a.a.e.c.g(k.f5147q));
            aVar.g(com.aggmoread.sdk.z.c.a.a.e.c.w());
            aVar.a(com.aggmoread.sdk.z.c.a.a.e.c.g());
            aVar.c(com.aggmoread.sdk.z.c.a.a.e.c.h());
            aVar.l(com.aggmoread.sdk.z.c.a.a.e.c.E());
            aVar.c(com.aggmoread.sdk.z.c.a.a.e.c.B());
            aVar.j(String.valueOf(com.aggmoread.sdk.z.c.a.a.e.c.C()));
            aVar.b(com.aggmoread.sdk.z.c.a.a.e.c.q());
            aVar.a(com.aggmoread.sdk.z.c.a.a.e.c.m());
            aVar.a(com.aggmoread.sdk.z.c.a.a.e.c.b(k.f5147q));
            aVar.e(com.aggmoread.sdk.z.c.a.a.e.c.l());
            aVar.h(com.aggmoread.sdk.z.c.a.a.e.c.x());
            aVar.b(com.aggmoread.sdk.z.c.a.a.e.c.e());
            aVar.d(com.aggmoread.sdk.z.c.a.a.e.c.i());
            aVar.f(com.aggmoread.sdk.z.c.a.a.e.c.p());
            aVar.i(com.aggmoread.sdk.z.c.a.a.e.c.z());
            aVar.a(new b(this));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return aVar;
    }

    public void a(Context context) {
        com.aggmoread.sdk.z.a.d.a(k.f5148r.booleanValue());
        if (this.f4550a) {
            return;
        }
        com.aggmoread.sdk.z.c.a.a.e.c.I();
        com.aggmoread.sdk.z.c.a.a.e.c.M();
        com.aggmoread.sdk.z.c.a.a.e.c.N();
        com.aggmoread.sdk.z.c.a.a.e.c.L();
        com.aggmoread.sdk.z.c.a.a.e.c.G();
        com.aggmoread.sdk.z.c.a.a.e.c.H();
        com.aggmoread.sdk.z.a.h.a.EnumC0074a enumC0074aA = a();
        this.f4550a = com.aggmoread.sdk.z.a.h.a.d().a(context, enumC0074aA, b(), null);
        com.aggmoread.sdk.z.a.g.i iVar = new com.aggmoread.sdk.z.a.g.i();
        iVar.f3470b = j.a("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");
        com.aggmoread.sdk.z.a.h.a.d().a(enumC0074aA, iVar);
        if (h.b() != null) {
            com.aggmoread.sdk.z.a.h.a.d().a(h.b().a());
        }
        com.aggmoread.sdk.z.a.h.a.d().a(0);
        b(context);
    }

    protected void b(Context context) {
    }
}
