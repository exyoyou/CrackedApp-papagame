package com.byazt.bz;

import com.byazt.cv.sp;
import com.byazt.cv.x;
import com.byazt.sbm.a;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 231, 20})
public class c extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ve f12195c;

    public c(ve veVar) {
        this.f12195c = veVar;
    }

    @Override // com.byazt.sbm.a
    public void destroy() {
        ve veVar = this.f12195c;
        if (veVar != null) {
            veVar.sp();
        }
    }

    @Override // com.byazt.sbm.ve
    public List<com.byazt.sbm.tt> getAdLoadInfo() {
        if (this.f12195c == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i10 = 0; i10 < this.f12195c.tt().size(); i10++) {
            linkedList.add(new x(this.f12195c.tt().get(i10)));
        }
        return linkedList;
    }

    @Override // com.byazt.sbm.ve
    public com.byazt.sbm.c getBestEcpm() {
        ve veVar = this.f12195c;
        return veVar != null ? new sp(veVar.uj()) : new sp(null);
    }

    @Override // com.byazt.sbm.ve
    public List<com.byazt.sbm.c> getCacheList() {
        if (this.f12195c == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i10 = 0; i10 < this.f12195c.n().size(); i10++) {
            linkedList.add(new sp(this.f12195c.n().get(i10)));
        }
        return linkedList;
    }

    @Override // com.byazt.sbm.ve
    public List<com.byazt.sbm.c> getMultiBiddingEcpm() {
        if (this.f12195c == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i10 = 0; i10 < this.f12195c.ve().size(); i10++) {
            linkedList.add(new sp(this.f12195c.ve().get(i10)));
        }
        return linkedList;
    }

    @Override // com.byazt.sbm.ve
    public com.byazt.sbm.c getShowEcpm() {
        ve veVar = this.f12195c;
        return veVar != null ? new sp(veVar.a()) : new sp(null);
    }

    @Override // com.byazt.sbm.ve
    public boolean isReady() {
        ve veVar = this.f12195c;
        if (veVar != null) {
            return veVar.c();
        }
        return false;
    }
}
