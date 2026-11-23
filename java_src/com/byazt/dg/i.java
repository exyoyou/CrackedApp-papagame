package com.byazt.dg;

import android.graphics.Path;
import android.graphics.PointF;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 186, 42})
public class i extends com.byazt.vc.c<PointF> {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public Path f12880da;
    public final com.byazt.vc.c<PointF> sl;

    public i(com.byazt.ga.a aVar, com.byazt.vc.c<PointF> cVar) {
        super(aVar, cVar.f21165c, cVar.tt, cVar.ve, cVar.uj, cVar.f21169n, cVar.f21164a, cVar.sp);
        this.sl = cVar;
        c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void c() {
        T t10;
        T t11;
        T t12 = this.tt;
        boolean z10 = (t12 == 0 || (t11 = this.f21165c) == 0 || !((PointF) t11).equals(((PointF) t12).x, ((PointF) t12).y)) ? false : true;
        T t13 = this.f21165c;
        if (t13 == 0 || (t10 = this.tt) == 0 || z10) {
            return;
        }
        com.byazt.vc.c<PointF> cVar = this.sl;
        this.f12880da = com.byazt.kk.da.c((PointF) t13, (PointF) t10, cVar.f21172x, cVar.f21167i);
    }

    public Path tt() {
        return this.f12880da;
    }
}
