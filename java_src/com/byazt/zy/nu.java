package com.byazt.zy;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1698, 137})
public class nu implements my, com.byazt.dg.c.InterfaceC0291c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.ga.x f23024c;
    public final String tt;
    public com.byazt.jx.yp uj;
    public final com.byazt.dg.c<Float, Float> ve;

    public nu(com.byazt.ga.x xVar, com.byazt.zk.ve veVar, com.byazt.jx.u uVar) {
        this.f23024c = xVar;
        this.tt = uVar.c();
        com.byazt.dg.c<Float, Float> cVarC = uVar.tt().c();
        this.ve = cVarC;
        veVar.c(cVarC);
        cVarC.c(this);
    }

    @Override // com.byazt.zy.ve
    public void c(List<ve> list, List<ve> list2) {
    }

    public com.byazt.dg.c<Float, Float> tt() {
        return this.ve;
    }

    private com.byazt.jx.yp tt(com.byazt.jx.yp ypVar) {
        List<com.byazt.nb.c> listVe = ypVar.ve();
        boolean zTt = ypVar.tt();
        int size = listVe.size() - 1;
        int i10 = 0;
        while (size >= 0) {
            com.byazt.nb.c cVar = listVe.get(size);
            com.byazt.nb.c cVar2 = listVe.get(c(size - 1, listVe.size()));
            PointF pointFVe = (size != 0 || zTt) ? cVar2.ve() : ypVar.c();
            i10 = (((size != 0 || zTt) ? cVar2.tt() : pointFVe).equals(pointFVe) && cVar.c().equals(pointFVe) && !(!ypVar.tt() && size == 0 && size == listVe.size() - 1)) ? i10 + 2 : i10 + 1;
            size--;
        }
        com.byazt.jx.yp ypVar2 = this.uj;
        if (ypVar2 == null || ypVar2.ve().size() != i10) {
            ArrayList arrayList = new ArrayList(i10);
            for (int i11 = 0; i11 < i10; i11++) {
                arrayList.add(new com.byazt.nb.c());
            }
            this.uj = new com.byazt.jx.yp(new PointF(0.0f, 0.0f), false, arrayList);
        }
        this.uj.c(zTt);
        return this.uj;
    }

    @Override // com.byazt.dg.c.InterfaceC0291c
    public void c() {
        this.f23024c.invalidateSelf();
    }

    @Override // com.byazt.zy.my
    public com.byazt.jx.yp c(com.byazt.jx.yp ypVar) {
        List<com.byazt.nb.c> listVe = ypVar.ve();
        if (listVe.size() <= 2) {
            return ypVar;
        }
        float fFloatValue = this.ve.sp().floatValue();
        if (fFloatValue == 0.0f) {
            return ypVar;
        }
        com.byazt.jx.yp ypVarTt = tt(ypVar);
        ypVarTt.c(ypVar.c().x, ypVar.c().y);
        List<com.byazt.nb.c> listVe2 = ypVarTt.ve();
        boolean zTt = ypVar.tt();
        int i10 = 0;
        int i11 = 0;
        while (i10 < listVe.size()) {
            com.byazt.nb.c cVar = listVe.get(i10);
            com.byazt.nb.c cVar2 = listVe.get(c(i10 - 1, listVe.size()));
            com.byazt.nb.c cVar3 = listVe.get(c(i10 - 2, listVe.size()));
            PointF pointFVe = (i10 != 0 || zTt) ? cVar2.ve() : ypVar.c();
            PointF pointFTt = (i10 != 0 || zTt) ? cVar2.tt() : pointFVe;
            PointF pointFC = cVar.c();
            PointF pointFVe2 = cVar3.ve();
            PointF pointFVe3 = cVar.ve();
            boolean z10 = !ypVar.tt() && i10 == 0 && i10 == listVe.size() + (-1);
            if (pointFTt.equals(pointFVe) && pointFC.equals(pointFVe) && !z10) {
                float f10 = pointFVe.x;
                float f11 = f10 - pointFVe2.x;
                float f12 = pointFVe.y;
                float f13 = f12 - pointFVe2.y;
                float f14 = pointFVe3.x - f10;
                float f15 = pointFVe3.y - f12;
                float fHypot = (float) Math.hypot(f11, f13);
                float fHypot2 = (float) Math.hypot(f14, f15);
                float fMin = Math.min(fFloatValue / fHypot, 0.5f);
                float fMin2 = Math.min(fFloatValue / fHypot2, 0.5f);
                float f16 = pointFVe.x;
                float f17 = ((pointFVe2.x - f16) * fMin) + f16;
                float f18 = pointFVe.y;
                float f19 = ((pointFVe2.y - f18) * fMin) + f18;
                float f20 = ((pointFVe3.x - f16) * fMin2) + f16;
                float f21 = ((pointFVe3.y - f18) * fMin2) + f18;
                float f22 = f17 - ((f17 - f16) * 0.5519f);
                float f23 = f19 - ((f19 - f18) * 0.5519f);
                float f24 = f20 - ((f20 - f16) * 0.5519f);
                float f25 = f21 - ((f21 - f18) * 0.5519f);
                com.byazt.nb.c cVar4 = listVe2.get(c(i11 - 1, listVe2.size()));
                com.byazt.nb.c cVar5 = listVe2.get(i11);
                cVar4.tt(f17, f19);
                cVar4.ve(f17, f19);
                if (i10 == 0) {
                    ypVarTt.c(f17, f19);
                }
                cVar5.c(f22, f23);
                i11++;
                com.byazt.nb.c cVar6 = listVe2.get(i11);
                cVar5.tt(f24, f25);
                cVar5.ve(f20, f21);
                cVar6.c(f20, f21);
            } else {
                com.byazt.nb.c cVar7 = listVe2.get(c(i11 - 1, listVe2.size()));
                com.byazt.nb.c cVar8 = listVe2.get(i11);
                cVar7.tt(cVar2.tt().x, cVar2.tt().y);
                cVar7.ve(cVar2.ve().x, cVar2.ve().y);
                cVar8.c(cVar.c().x, cVar.c().y);
            }
            i11++;
            i10++;
            listVe = listVe;
        }
        return ypVarTt;
    }

    private static int tt(int i10, int i11) {
        int i12 = i10 / i11;
        return ((i10 ^ i11) >= 0 || i11 * i12 == i10) ? i12 : i12 - 1;
    }

    private static int c(int i10, int i11) {
        return i10 - (tt(i10, i11) * i11);
    }
}
