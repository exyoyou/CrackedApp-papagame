package com.byazt.biq;

import com.byazt.omf.x;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 12, 15})
public class uj implements com.byazt.aas.c.tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f11935c;
    public long tt;
    public long ve;

    public uj() {
        x.m().c(this);
    }

    public void c() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j10 = this.tt;
        if (j10 != 0) {
            this.f11935c += jCurrentTimeMillis - j10;
        }
        this.tt = jCurrentTimeMillis;
    }

    @Override // com.byazt.aas.c.tt
    public void onAppBackground() {
        tt();
    }

    @Override // com.byazt.aas.c.tt
    public void onAppExit() {
    }

    @Override // com.byazt.aas.c.tt
    public void onAppForeground() {
        c();
    }

    @Override // com.byazt.aas.c.tt
    public void onAppStart() {
    }

    public void tt() {
        if (this.tt == 0) {
            return;
        }
        this.f11935c += System.currentTimeMillis() - this.tt;
        this.tt = 0L;
        this.ve = 0L;
    }

    public void ve() {
        this.tt = 0L;
        this.ve = 0L;
        this.f11935c = 0L;
    }

    public long c(TimeUnit timeUnit) {
        if (timeUnit != null) {
            return timeUnit.convert(this.f11935c, TimeUnit.MILLISECONDS);
        }
        return this.f11935c;
    }
}
