package com.byazt.dg;

import android.graphics.PointF;
import java.util.Collections;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 186, 215})
public class yp extends c<PointF, PointF> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PointF f12895a;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final c<Float, Float> f12896i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.vc.ve<Float> f12897n;
    public final PointF sp;
    public com.byazt.vc.ve<Float> uj;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final c<Float, Float> f12898x;

    public yp(c<Float, Float> cVar, c<Float, Float> cVar2) {
        super(Collections.emptyList());
        this.f12895a = new PointF();
        this.sp = new PointF();
        this.f12898x = cVar;
        this.f12896i = cVar2;
        c(x());
    }

    @Override // com.byazt.dg.c
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public PointF sp() {
        return c(null, 0.0f);
    }

    @Override // com.byazt.dg.c
    /* JADX INFO: renamed from: tt, reason: merged with bridge method [inline-methods] */
    public PointF c(com.byazt.vc.c<PointF> cVar, float f10) {
        Float fC;
        com.byazt.vc.c<Float> cVarVe;
        com.byazt.vc.c<Float> cVarVe2;
        Float fC2 = null;
        if (this.uj == null || (cVarVe2 = this.f12898x.ve()) == null) {
            fC = null;
        } else {
            float fN = this.f12898x.n();
            Float f11 = cVarVe2.sp;
            com.byazt.vc.ve<Float> veVar = this.uj;
            float f12 = cVarVe2.f21164a;
            fC = veVar.c(f12, f11 == null ? f12 : f11.floatValue(), cVarVe2.f21165c, cVarVe2.tt, f10, f10, fN);
        }
        if (this.f12897n != null && (cVarVe = this.f12896i.ve()) != null) {
            float fN2 = this.f12896i.n();
            Float f13 = cVarVe.sp;
            com.byazt.vc.ve<Float> veVar2 = this.f12897n;
            float f14 = cVarVe.f21164a;
            fC2 = veVar2.c(f14, f13 == null ? f14 : f13.floatValue(), cVarVe.f21165c, cVarVe.tt, f10, f10, fN2);
        }
        if (fC == null) {
            this.sp.set(this.f12895a.x, 0.0f);
        } else {
            this.sp.set(fC.floatValue(), 0.0f);
        }
        if (fC2 == null) {
            PointF pointF = this.sp;
            pointF.set(pointF.x, this.f12895a.y);
        } else {
            PointF pointF2 = this.sp;
            pointF2.set(pointF2.x, fC2.floatValue());
        }
        return this.sp;
    }

    @Override // com.byazt.dg.c
    public void c(float f10) {
        this.f12898x.c(f10);
        this.f12896i.c(f10);
        this.f12895a.set(this.f12898x.sp().floatValue(), this.f12896i.sp().floatValue());
        for (int i10 = 0; i10 < this.f12873c.size(); i10++) {
            this.f12873c.get(i10).c();
        }
    }
}
