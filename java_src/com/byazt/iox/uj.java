package com.byazt.iox;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.byazt.bzd.sl;
import com.byazt.ete.ic;
import com.byazt.ete.xd;
import com.byazt.fk.u;
import com.byazt.im.sp;
import com.byazt.im.x;
import com.byazt.nr.a;
import com.byazt.nr.rh;
import com.byazt.omf.gt;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, TypedValues.TransitionType.TYPE_TRANSITION_FLAGS, 15})
public class uj implements com.byazt.rf.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public sp f15446c = new sp();

    private void tt(com.byazt.im.tt ttVar, com.byazt.gat.ve<x, sp> veVar) {
        if (ttVar == null || veVar == null) {
            return;
        }
        this.f15446c.tt(ttVar.u());
        this.f15446c.c(ttVar.tt());
        int iX = ttVar.x();
        com.byazt.jzl.uj ujVarSp = ttVar.sp();
        this.f15446c.c(true);
        if (ujVarSp == null) {
            this.f15446c.tt(2);
            this.f15446c.c("no video info");
            veVar.c(this.f15446c);
            return;
        }
        String video_url = ujVarSp.getVideo_url();
        if (TextUtils.isEmpty(video_url)) {
            this.f15446c.tt(2);
            this.f15446c.c("no video url");
            veVar.c(this.f15446c);
            return;
        }
        String fileHash = ujVarSp.getFileHash();
        if (TextUtils.isEmpty(fileHash)) {
            fileHash = a.tt(video_url);
        }
        if (TextUtils.isEmpty(fileHash)) {
            this.f15446c.tt(2);
            this.f15446c.c("no video cahce filename");
            veVar.c(this.f15446c);
            return;
        }
        com.byazt.dz.c.c("Splash_FullLink", "加载视频素材");
        ic icVarTt = ttVar.tt();
        if (icVarTt == null) {
            return;
        }
        boolean zI = ttVar.i();
        ujVarSp.setRewardVideoCachedType(1);
        if (ujVarSp.getVideoPreloadSize() == 0) {
            ujVarSp.setVideoPreloadSize(307200);
        }
        com.byazt.jzl.a aVarC = zI ? xd.c(2, icVarTt) : xd.c(3, icVarTt);
        aVarC.putExtra("material_meta", icVarTt);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (sl.c(icVarTt.xx()).isVideoCached(aVarC)) {
            x xVar = new x(ttVar.tt(), ttVar.u());
            xVar.c(true);
            xVar.ve(true);
            xVar.c(ttVar.c());
            xVar.n(ttVar.ve());
            veVar.tt(xVar);
            aVarC.setSourceType(1);
            com.byazt.btt.ve.c(aVarC, icVarTt, SystemClock.elapsedRealtime() - jElapsedRealtime);
            return;
        }
        if (gt.tt().sp(String.valueOf(iX)) && !rh.uj(gt.getContext())) {
            this.f15446c.tt(2);
            this.f15446c.c("network error");
            veVar.c(this.f15446c);
        } else {
            if (ttVar.tt() == null || ttVar.tt().w() != 3) {
                com.byazt.ri.c.c();
                c(aVarC, ttVar, ttVar.tt(), veVar);
                return;
            }
            x xVar2 = new x(ttVar.tt(), ttVar.u());
            xVar2.c(true);
            xVar2.ve(false);
            xVar2.c(ttVar.c());
            xVar2.n(ttVar.ve());
            xVar2.c(xd.c(ttVar.tt()));
            veVar.tt(xVar2);
        }
    }

    @Override // com.byazt.rf.c
    public void c(com.byazt.im.tt ttVar, com.byazt.gat.ve<x, sp> veVar) {
        tt(ttVar, veVar);
    }

    private void c(com.byazt.jzl.a aVar, final com.byazt.im.tt ttVar, ic icVar, final com.byazt.gat.ve<x, sp> veVar) {
        if (icVar == null || veVar == null || ttVar == null || aVar == null || xd.z(icVar) == null) {
            return;
        }
        com.byazt.btt.ve.c(aVar, new com.byazt.ols.c() { // from class: com.byazt.iox.uj.1
            @Override // com.byazt.fk.da.c
            public void onVideoPreloadFail(u uVar, int i10, String str) {
                if (veVar != null) {
                    uj.this.f15446c.tt(2);
                    uj.this.f15446c.c("preload video fail");
                    veVar.c(uj.this.f15446c);
                }
            }

            @Override // com.byazt.fk.da.c
            public void onVideoPreloadSuccess(u uVar, int i10) {
                if (veVar != null) {
                    x xVar = new x(ttVar.tt(), ttVar.u());
                    xVar.c(true);
                    xVar.ve(false);
                    xVar.c((com.byazt.hm.tt) null);
                    xVar.c(ttVar.c());
                    xVar.n(ttVar.ve());
                    veVar.tt(xVar);
                }
            }
        });
    }
}
