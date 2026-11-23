package com.byazt.gu;

import com.byazt.eg.h;
import com.byazt.gqp.m;
import com.byazt.gqp.nu;
import com.byazt.gqp.sl;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 17, 42})
public class i extends m {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public h f14755c;

    public i(h hVar) {
        this.f14755c = hVar;
    }

    @Override // com.byazt.gqp.m
    public nu a() {
        return new da(this.f14755c.x());
    }

    @Override // com.byazt.gqp.m
    public long c() {
        return this.f14755c.yp();
    }

    @Override // com.byazt.gqp.m, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f14755c.close();
    }

    @Override // com.byazt.gqp.m
    public String n() {
        return this.f14755c.n();
    }

    @Override // com.byazt.gqp.m
    public com.byazt.gqp.a sp() {
        return new com.byazt.gqp.a(this.f14755c.sp().f13379c);
    }

    public String toString() {
        return this.f14755c.toString();
    }

    @Override // com.byazt.gqp.m
    public long tt() {
        return this.f14755c.u();
    }

    @Override // com.byazt.gqp.m
    public boolean uj() {
        return this.f14755c.uj();
    }

    @Override // com.byazt.gqp.m
    public int ve() {
        h hVar = this.f14755c;
        if (hVar != null) {
            return hVar.ve();
        }
        return 0;
    }

    @Override // com.byazt.gqp.m
    public sl x() {
        h hVar = this.f14755c;
        if (hVar == null) {
            return null;
        }
        return new sl(hVar.z());
    }

    @Override // com.byazt.gqp.m
    public String c(String str) {
        return this.f14755c.c(str);
    }

    @Override // com.byazt.gqp.m
    public String c(String str, String str2) {
        return this.f14755c.c(str, str2);
    }
}
