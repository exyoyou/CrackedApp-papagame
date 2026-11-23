package com.byazt.cf;

import com.byazt.nc.sl;
import com.byazt.nc.z;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 18, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.nh.sp f12398c;
    public com.byazt.nh.uj tt;

    public uj(com.byazt.nh.sp spVar) {
        this.f12398c = spVar;
    }

    public void c(int i10, String str) {
        com.byazt.nh.sp spVar = this.f12398c;
        if (spVar != null) {
            spVar.c(i10, str);
        }
        com.byazt.nh.uj ujVar = this.tt;
        if (ujVar != null) {
            ujVar.c(i10, str);
        }
    }

    public void tt(Object obj) {
        com.byazt.nh.sp spVar = this.f12398c;
        if (spVar != null && (obj instanceof z)) {
            spVar.c();
            this.f12398c.tt((z) obj);
        }
        com.byazt.nh.uj ujVar = this.tt;
        if (ujVar == null || !(obj instanceof sl)) {
            return;
        }
        ujVar.c();
        this.tt.tt((sl) obj);
    }

    public uj(com.byazt.nh.uj ujVar) {
        this.tt = ujVar;
    }

    public void c(Object obj) {
        com.byazt.nh.sp spVar = this.f12398c;
        if (spVar != null && (obj instanceof z)) {
            spVar.c((z) obj);
        }
        com.byazt.nh.uj ujVar = this.tt;
        if (ujVar == null || !(obj instanceof sl)) {
            return;
        }
        ujVar.c((sl) obj);
    }

    public long c() {
        Object obj = this.f12398c;
        if (obj != null) {
            return obj instanceof com.byazt.gk.tt ? ((com.byazt.gk.tt) obj).tt() : System.currentTimeMillis();
        }
        Object obj2 = this.tt;
        if (obj2 != null) {
            return obj2 instanceof com.byazt.gk.tt ? ((com.byazt.gk.tt) obj2).tt() : System.currentTimeMillis();
        }
        return 0L;
    }
}
