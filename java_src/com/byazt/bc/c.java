package com.byazt.bc;

import com.byazt.cv.x;
import com.byazt.sbm.sp;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1487, 20})
public class c extends sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.bz.ve f11908c;

    public c(com.byazt.bz.ve veVar) {
        this.f11908c = veVar;
    }

    @Override // com.byazt.sbm.sp
    public void destroy() {
        com.byazt.bz.ve veVar = this.f11908c;
        if (veVar != null) {
            veVar.sp();
        }
    }

    @Override // com.byazt.sbm.ve
    public List<com.byazt.sbm.tt> getAdLoadInfo() {
        if (this.f11908c == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i10 = 0; i10 < this.f11908c.tt().size(); i10++) {
            linkedList.add(new x(this.f11908c.tt().get(i10)));
        }
        return linkedList;
    }

    @Override // com.byazt.sbm.ve
    public com.byazt.sbm.c getBestEcpm() {
        com.byazt.bz.ve veVar = this.f11908c;
        return veVar != null ? new com.byazt.cv.sp(veVar.uj()) : new com.byazt.cv.sp(null);
    }

    @Override // com.byazt.sbm.ve
    public List<com.byazt.sbm.c> getCacheList() {
        if (this.f11908c == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i10 = 0; i10 < this.f11908c.n().size(); i10++) {
            linkedList.add(new com.byazt.cv.sp(this.f11908c.n().get(i10)));
        }
        return linkedList;
    }

    @Override // com.byazt.sbm.ve
    public List<com.byazt.sbm.c> getMultiBiddingEcpm() {
        if (this.f11908c == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i10 = 0; i10 < this.f11908c.ve().size(); i10++) {
            linkedList.add(new com.byazt.cv.sp(this.f11908c.ve().get(i10)));
        }
        return linkedList;
    }

    @Override // com.byazt.sbm.ve
    public com.byazt.sbm.c getShowEcpm() {
        com.byazt.bz.ve veVar = this.f11908c;
        return veVar != null ? new com.byazt.cv.sp(veVar.a()) : new com.byazt.cv.sp(null);
    }

    @Override // com.byazt.sbm.ve
    public boolean isReady() {
        com.byazt.bz.ve veVar = this.f11908c;
        if (veVar != null) {
            return veVar.c();
        }
        return false;
    }
}
