package com.byazt.ra;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_SKIP_INIT_SECTION, 71})
public class x extends com.byazt.sbm.uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.bz.ve f19411c;

    public x(com.byazt.bz.ve veVar) {
        this.f19411c = veVar;
    }

    @Override // com.byazt.sbm.uj
    public void destroy() {
        com.byazt.bz.ve veVar = this.f19411c;
        if (veVar != null) {
            veVar.sp();
        }
    }

    @Override // com.byazt.sbm.ve
    public List<com.byazt.sbm.tt> getAdLoadInfo() {
        if (this.f19411c == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i10 = 0; i10 < this.f19411c.tt().size(); i10++) {
            linkedList.add(new com.byazt.cv.x(this.f19411c.tt().get(i10)));
        }
        return linkedList;
    }

    @Override // com.byazt.sbm.ve
    public com.byazt.sbm.c getBestEcpm() {
        com.byazt.bz.ve veVar = this.f19411c;
        return veVar != null ? new com.byazt.cv.sp(veVar.uj()) : new com.byazt.cv.sp(null);
    }

    @Override // com.byazt.sbm.ve
    public List<com.byazt.sbm.c> getCacheList() {
        if (this.f19411c == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i10 = 0; i10 < this.f19411c.n().size(); i10++) {
            linkedList.add(new com.byazt.cv.sp(this.f19411c.n().get(i10)));
        }
        return linkedList;
    }

    @Override // com.byazt.sbm.ve
    public List<com.byazt.sbm.c> getMultiBiddingEcpm() {
        if (this.f19411c == null) {
            return new LinkedList();
        }
        LinkedList linkedList = new LinkedList();
        for (int i10 = 0; i10 < this.f19411c.ve().size(); i10++) {
            linkedList.add(new com.byazt.cv.sp(this.f19411c.ve().get(i10)));
        }
        return linkedList;
    }

    @Override // com.byazt.sbm.ve
    public com.byazt.sbm.c getShowEcpm() {
        com.byazt.bz.ve veVar = this.f19411c;
        return veVar != null ? new com.byazt.cv.sp(veVar.a()) : new com.byazt.cv.sp(null);
    }

    @Override // com.byazt.sbm.ve
    public boolean isReady() {
        com.byazt.bz.ve veVar = this.f19411c;
        if (veVar != null) {
            return veVar.c();
        }
        return false;
    }
}
