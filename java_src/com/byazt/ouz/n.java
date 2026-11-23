package com.byazt.ouz;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.byazt.aas.pf;
import com.byazt.ete.ic;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 27, 46})
public class n extends com.byazt.hkv.c {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.ete.gr f18463da;
    public boolean sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f18464t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f18465u;
    public int yp;

    public n(Context context, ic icVar, String str, int i10) {
        super(context, icVar, str, i10);
        this.f18464t = 0;
        this.f18465u = -1;
        this.yp = -1;
        this.sl = true;
        if (icVar == null) {
            return;
        }
        com.byazt.rv.c.c().c(icVar.hashCode() + icVar.qy()).put("is_express_ad", Boolean.TRUE);
    }

    @Override // com.byazt.hkv.tt, com.byazt.hkv.uj
    public void c(View view, com.byazt.ete.da daVar) {
        com.byazt.vis.c cVar = (com.byazt.vis.c) c(com.byazt.vis.c.class);
        cVar.c(c(cVar.ve(), daVar == null ? (byte) 0 : daVar.tt()));
        super.c(view, daVar);
    }

    @Override // com.byazt.hkv.uj
    public void n(int i10) {
        this.f18464t = i10;
    }

    @Override // com.byazt.hkv.uj
    public void uj() {
        this.yp = 1;
        this.sl = false;
    }

    @Override // com.byazt.hkv.uj
    public void ve() {
        this.f18465u = 1;
        this.sl = false;
    }

    public com.byazt.ete.i c(String str, byte b10) {
        int i10;
        int i11;
        String str2;
        String str3;
        String str4;
        String str5;
        int iVe;
        int iVe2;
        View viewDa = this.sp.da();
        int[] iArrC = pf.c(viewDa);
        if (iArrC == null || iArrC.length != 2) {
            i10 = 0;
            i11 = 0;
        } else {
            i10 = iArrC[0];
            i11 = iArrC[1];
            if (this.f18464t == 0 && this.sl) {
                com.byazt.ete.da daVar = this.sp;
                daVar.c((pf.ve(this.f14954a, daVar.nu()) + i10) - 0.5f);
                com.byazt.ete.da daVar2 = this.sp;
                daVar2.tt((pf.ve(this.f14954a, daVar2.rh()) + i11) - 0.5f);
                com.byazt.ete.da daVar3 = this.sp;
                daVar3.ve((pf.ve(this.f14954a, daVar3.my()) + i10) - 0.5f);
                com.byazt.ete.da daVar4 = this.sp;
                daVar4.uj((pf.ve(this.f14954a, daVar4.gt()) + i11) - 0.5f);
            }
        }
        int[] iArrC2 = {-1, -1};
        int[] iArrVe = new int[2];
        com.byazt.ete.gr grVar = this.f18463da;
        if (grVar == null || !this.sl) {
            str2 = "";
            str3 = str;
            str4 = "";
            str5 = str4;
        } else {
            this.sp.c(grVar.f13652n);
            this.sp.tt(this.f18463da.f13647a);
            if (this.f18464t == 0) {
                iArrC2[0] = pf.ve(this.f14954a, this.f18463da.sp) + i10;
                iArrC2[1] = pf.ve(this.f14954a, this.f18463da.f13655x) + i11;
                iVe2 = pf.ve(this.f14954a, this.f18463da.f13650i);
                iVe = pf.ve(this.f14954a, this.f18463da.f13649da);
            } else {
                com.byazt.ete.gr grVar2 = this.f18463da;
                iArrC2[0] = grVar2.sp;
                iArrC2[1] = grVar2.f13655x;
                int i12 = grVar2.f13650i;
                iVe = grVar2.f13649da;
                iVe2 = i12;
            }
            str3 = TextUtils.isEmpty(str) ? this.f18463da.sl : str;
            com.byazt.ete.gr grVar3 = this.f18463da;
            str2 = grVar3.f13653t;
            str5 = grVar3.f13654u;
            str4 = grVar3.yp;
            iArrVe[0] = iVe2;
            iArrVe[1] = iVe;
            View viewI = this.sp.i();
            if (iVe2 == 0 && iVe == 0 && viewI != null) {
                iArrC2 = pf.c(viewI);
                iArrVe = pf.ve(viewI);
            }
        }
        this.f18464t = 0;
        return new com.byazt.ete.i.c().a(this.sp.nu()).n(this.sp.rh()).uj(this.sp.my()).ve(this.sp.gt()).tt(this.sp.z()).c(this.sp.m()).tt(iArrC).c(iArrC2).ve(pf.ve(viewDa)).uj(iArrVe).uj(this.sp.n()).n(this.sp.a()).a(this.sp.sp()).ve(com.byazt.omf.x.m().tt() ? 1 : 2).c(this.sp.u()).c(str3).tt(str5).ve(str2).uj(str4).c(pf.a(this.f14954a)).tt(((com.byazt.dna.u) com.byazt.ut.uj.getService("device_info_new")).getDisplayDpi()).sp(this.f18465u).x(this.yp).tt(pf.sp(this.f14954a)).n(this.sp.rl()).i(this.sp.qy()).tt(b10).c(this.sp.ve()).c(com.byazt.wz.x.tt(this.f14949c)).c();
    }

    @Override // com.byazt.hkv.uj
    public void c(com.byazt.ete.gr grVar) {
        this.f18463da = grVar;
    }
}
