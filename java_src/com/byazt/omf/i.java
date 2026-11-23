package com.byazt.omf;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.byazt.aas.nb;
import com.byazt.ete.ic;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 31, 42})
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public View f18056a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f18057c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.ouz.n f18058n;
    public String sp;
    public final ic tt;
    public com.byazt.ouz.a uj;
    public com.byazt.pop.ve ve;

    public i(Context context, ic icVar, View view, String str) {
        this.sp = "rewarded_video";
        this.tt = icVar;
        this.f18057c = context;
        this.f18056a = view;
        if (TextUtils.isEmpty(str)) {
            this.sp = nb.tt(nb.sl(icVar));
        } else {
            this.sp = str;
        }
        if (icVar.i() == 4) {
            this.ve = com.byazt.yih.x.c(context, icVar, this.sp);
        }
        String str2 = this.sp;
        com.byazt.ouz.a aVar = new com.byazt.ouz.a(context, icVar, str2, nb.uj(str2));
        this.uj = aVar;
        aVar.c(this.f18056a);
        ((com.byazt.nat.c) this.uj.c(com.byazt.nat.c.class)).c(this.ve);
        String str3 = this.sp;
        com.byazt.ouz.n nVar = new com.byazt.ouz.n(context, icVar, str3, nb.uj(str3));
        this.f18058n = nVar;
        nVar.c(this.f18056a);
        ((com.byazt.nat.c) this.f18058n.c(com.byazt.nat.c.class)).c(this.ve);
    }

    public void c(int i10, com.byazt.ete.gr grVar) {
        com.byazt.ouz.n nVar;
        if (i10 == -1 || grVar == null) {
            return;
        }
        com.byazt.ete.da daVar = new com.byazt.ete.da();
        daVar.c(grVar.f13648c);
        daVar.tt(grVar.tt);
        daVar.ve(grVar.ve);
        daVar.uj(grVar.uj);
        daVar.tt(grVar.f13656z);
        daVar.c(grVar.nu);
        if (i10 != 1) {
            if (i10 == 2 && (nVar = this.f18058n) != null) {
                nVar.c(grVar);
                this.f18058n.c(daVar);
                this.f18058n.c(this.f18056a, daVar);
                return;
            }
            return;
        }
        com.byazt.ouz.a aVar = this.uj;
        if (aVar != null) {
            aVar.c(grVar);
            this.uj.c(daVar);
            this.uj.c(this.f18056a, daVar);
        }
    }
}
