package com.byazt.cc;

import com.xinzhu.overmind.utils.l;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, l.f90098b, 13})
public class tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.ete.x.uj f12355a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.vvt.a.c f12357n;
    public int uj;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12356c = 0;
    public long tt = 0;
    public int ve = -1;

    /* JADX WARN: Code restructure failed: missing block: B:55:0x00b2, code lost:
    
        r3 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int c(com.byazt.dj.tt r11, int r12) {
        /*
            Method dump skipped, instruction units count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.cc.tt.c(com.byazt.dj.tt, int):int");
    }

    public boolean tt() {
        com.byazt.ete.x.uj ujVar;
        if (this.tt <= 0 || this.f12356c != 3) {
            return false;
        }
        com.byazt.vvt.a.c cVar = this.f12357n;
        c((cVar == null || (ujVar = this.f12355a) == null) ? -1 : cVar.c(ujVar.n(), this.f12355a));
        this.ve = 2;
        return true;
    }

    public boolean c() {
        return this.f12356c == 4;
    }

    private void c(int i10) {
        if (i10 > 0) {
            this.tt = System.currentTimeMillis() - ((((long) i10) * 60) * 1000);
        } else if (i10 == 0) {
            this.tt = 0L;
        } else {
            this.tt = System.currentTimeMillis();
        }
    }
}
