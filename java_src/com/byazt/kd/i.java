package com.byazt.kd;

import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1714, 42})
public class i implements u<PointF, PointF> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final tt f16169c;
    public final tt tt;

    public i(tt ttVar, tt ttVar2) {
        this.f16169c = ttVar;
        this.tt = ttVar2;
    }

    @Override // com.byazt.kd.u
    public com.byazt.dg.c<PointF, PointF> c() {
        return new com.byazt.dg.yp(this.f16169c.c(), this.tt.c());
    }

    @Override // com.byazt.kd.u
    public boolean tt() {
        return this.f16169c.tt() && this.tt.tt();
    }

    @Override // com.byazt.kd.u
    public List<com.byazt.vc.c<PointF>> ve() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }
}
