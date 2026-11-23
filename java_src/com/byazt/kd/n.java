package com.byazt.kd;

import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1714, 46})
public class n implements u<PointF, PointF> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<com.byazt.vc.c<PointF>> f16170c;

    public n(List<com.byazt.vc.c<PointF>> list) {
        this.f16170c = list;
    }

    @Override // com.byazt.kd.u
    public com.byazt.dg.c<PointF, PointF> c() {
        return this.f16170c.get(0).n() ? new com.byazt.dg.sl(this.f16170c) : new com.byazt.dg.da(this.f16170c);
    }

    @Override // com.byazt.kd.u
    public boolean tt() {
        return this.f16170c.size() == 1 && this.f16170c.get(0).n();
    }

    @Override // com.byazt.kd.u
    public List<com.byazt.vc.c<PointF>> ve() {
        return this.f16170c;
    }
}
