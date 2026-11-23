package com.byazt.re;

import com.byazt.ete.y;
import com.byazt.yj.m;
import com.byazt.yj.x;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1337, 20})
public class c extends com.byazt.uph.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public y f19443c;

    private void c(m mVar) {
        x httpTime = mVar.getHttpTime();
        if (httpTime == null || !uj()) {
            return;
        }
        c(httpTime.getStartRequestTime(), httpTime.getFirstFrameTime());
    }

    private void n() {
        if (uj()) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            y yVar = this.f19443c;
            yVar.x(jCurrentTimeMillis - yVar.my());
            this.f19443c.u(jCurrentTimeMillis);
        }
    }

    private boolean uj() {
        y yVar = this.f19443c;
        return yVar != null && yVar.qy();
    }

    public y ve() {
        return this.f19443c;
    }

    private void c(long j10, long j11) {
        this.f19443c.yp(j11);
        y yVar = this.f19443c;
        yVar.i(j11 - yVar.rl());
        this.f19443c.my(j11 - j10);
    }

    public void c(y yVar) {
        this.f19443c = yVar;
    }

    @Override // com.byazt.uph.c
    public void c(m mVar, com.byazt.uph.c.tt ttVar) {
        c(mVar);
        super.c(mVar, ttVar);
    }

    @Override // com.byazt.uph.c
    public void c() {
        n();
    }
}
