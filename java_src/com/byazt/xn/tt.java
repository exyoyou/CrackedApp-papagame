package com.byazt.xn;

import com.byazt.gqp.i;
import com.byazt.gqp.m;
import com.byazt.gqp.yp;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 873, 13})
public class tt implements i.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<i> f22004c;
    public yp tt;
    public int ve = 0;

    public tt(List<i> list, yp ypVar) {
        this.f22004c = list;
        this.tt = ypVar;
    }

    @Override // com.byazt.gqp.i.c
    public yp c() {
        return this.tt;
    }

    @Override // com.byazt.gqp.i.c
    public m c(yp ypVar) throws IOException {
        this.tt = ypVar;
        int i10 = this.ve + 1;
        this.ve = i10;
        return this.f22004c.get(i10).c(this);
    }
}
