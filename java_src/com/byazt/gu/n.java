package com.byazt.gu;

import com.byazt.eg.gt;
import com.byazt.gqp.m;
import com.byazt.gqp.yp;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 17, 46})
public class n implements com.byazt.gqp.i.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public gt.c f14756c;

    public n(gt.c cVar) {
        this.f14756c = cVar;
    }

    @Override // com.byazt.gqp.i.c
    public yp c() {
        return new x(this.f14756c.c());
    }

    @Override // com.byazt.gqp.i.c
    public m c(yp ypVar) throws IOException {
        return new i(this.f14756c.c(this.f14756c.c().a().c(ypVar.tt().c()).c()));
    }
}
