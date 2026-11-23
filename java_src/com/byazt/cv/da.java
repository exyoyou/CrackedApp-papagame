package com.byazt.cv;

import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 597, 72})
public class da extends com.byazt.sbm.n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public yp f12621c;

    public da(yp ypVar) {
        this.f12621c = ypVar;
    }

    @Override // com.byazt.sbm.ve
    public List<com.byazt.sbm.tt> getAdLoadInfo() {
        if (this.f12621c == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i10 = 0; i10 < this.f12621c.tt().size(); i10++) {
            linkedList.add(new x(this.f12621c.tt().get(i10)));
        }
        return linkedList;
    }

    @Override // com.byazt.sbm.ve
    public com.byazt.sbm.c getBestEcpm() {
        yp ypVar = this.f12621c;
        return ypVar != null ? new sp(ypVar.uj()) : new sp(null);
    }

    @Override // com.byazt.sbm.ve
    public List<com.byazt.sbm.c> getCacheList() {
        if (this.f12621c == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i10 = 0; i10 < this.f12621c.n().size(); i10++) {
            linkedList.add(new sp(this.f12621c.n().get(i10)));
        }
        return linkedList;
    }

    @Override // com.byazt.sbm.ve
    public List<com.byazt.sbm.c> getMultiBiddingEcpm() {
        if (this.f12621c == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i10 = 0; i10 < this.f12621c.ve().size(); i10++) {
            linkedList.add(new sp(this.f12621c.ve().get(i10)));
        }
        return linkedList;
    }

    @Override // com.byazt.sbm.ve
    public com.byazt.sbm.c getShowEcpm() {
        yp ypVar = this.f12621c;
        return ypVar != null ? new sp(ypVar.a()) : new sp(null);
    }

    @Override // com.byazt.sbm.n
    public boolean hasDislike() {
        yp ypVar = this.f12621c;
        if (ypVar != null) {
            return ypVar.sp();
        }
        return false;
    }

    @Override // com.byazt.sbm.n
    public boolean isExpress() {
        yp ypVar = this.f12621c;
        if (ypVar != null) {
            return ypVar.x();
        }
        return false;
    }

    @Override // com.byazt.sbm.ve
    public boolean isReady() {
        yp ypVar = this.f12621c;
        if (ypVar != null) {
            return ypVar.c();
        }
        return true;
    }

    @Override // com.byazt.sbm.n
    public void onPause() {
        yp ypVar = this.f12621c;
        if (ypVar != null) {
            ypVar.da();
        }
    }

    @Override // com.byazt.sbm.n
    public void onResume() {
        yp ypVar = this.f12621c;
        if (ypVar != null) {
            ypVar.i();
        }
    }

    @Override // com.byazt.sbm.n
    public void setShakeViewListener(final com.byazt.am.a aVar) {
        yp ypVar = this.f12621c;
        if (ypVar != null) {
            ypVar.c(new z() { // from class: com.byazt.cv.da.1
                @Override // com.byazt.cv.z
                public void c() {
                    com.byazt.am.a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.c();
                    }
                }
            });
        }
    }

    @Override // com.byazt.sbm.n
    public void setUseCustomVideo(boolean z10) {
        yp ypVar = this.f12621c;
        if (ypVar != null) {
            ypVar.c(z10);
        }
    }
}
