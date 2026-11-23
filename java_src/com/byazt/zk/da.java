package com.byazt.zk;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.byazt.jx.m;
import java.util.Collections;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 909, 72})
public class da extends ve {
    public final com.byazt.zy.uj sp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final uj f22826x;

    public da(com.byazt.ga.x xVar, x xVar2, uj ujVar, com.byazt.ga.a aVar) {
        super(xVar, xVar2);
        this.f22826x = ujVar;
        com.byazt.zy.uj ujVar2 = new com.byazt.zy.uj(xVar, this, new m("__container", xVar2.yp(), false), aVar);
        this.sp = ujVar2;
        ujVar2.c(Collections.emptyList(), Collections.emptyList());
    }

    @Override // com.byazt.zk.ve, com.byazt.zy.n
    public void c(RectF rectF, Matrix matrix, boolean z10) {
        super.c(rectF, matrix, z10);
        this.sp.c(rectF, this.f22875c, z10);
    }

    @Override // com.byazt.zk.ve
    public com.byazt.jx.c t() {
        com.byazt.jx.c cVarT = super.t();
        return cVarT != null ? cVarT : this.f22826x.t();
    }

    @Override // com.byazt.zk.ve
    public void tt(Canvas canvas, Matrix matrix, int i10) {
        super.tt(canvas, matrix, i10);
        this.sp.c(canvas, matrix, i10);
    }

    @Override // com.byazt.zk.ve
    public com.byazt.fs.da u() {
        com.byazt.fs.da daVarU = super.u();
        return daVarU != null ? daVarU : this.f22826x.u();
    }
}
