package com.byazt.uf;

import android.content.Context;
import com.byazt.nr.m;
import com.byazt.twu.sp;
import com.byazt.twu.x;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEO_DEVICE_WAIT_END_TIME, 15})
public class uj implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public x f20554a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.twu.uj f20555c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.rz.c f20556da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.rz.c f20557i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.twu.c f20558n;
    public com.byazt.rz.c sl;
    public com.byazt.rz.c sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public com.byazt.rz.c f20559t;
    public com.byazt.twu.a tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public com.byazt.vb.n f20560u;
    public sp uj;
    public com.byazt.twu.n ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.rz.c f20561x;
    public List<com.byazt.twu.tt> yp = new ArrayList();

    public uj(com.byazt.vb.n nVar) {
        this.f20560u = nVar;
        Context context = nVar.getContext();
        if (com.byazt.mv.c.c(nVar)) {
            com.byazt.rz.c cVarSp = this.f20560u.sp();
            this.sp = cVarSp;
            com.byazt.twu.uj ujVar = new com.byazt.twu.uj(context, cVarSp, this.f20560u);
            this.f20555c = ujVar;
            this.yp.add(ujVar);
        }
        if (com.byazt.mv.c.n(nVar)) {
            if (this.f20560u.c() != null) {
                this.f20557i = this.f20560u.c();
            } else {
                this.f20557i = this.f20560u.x();
            }
            com.byazt.twu.n nVar2 = new com.byazt.twu.n(context, this.f20557i, this.f20560u);
            this.ve = nVar2;
            this.yp.add(nVar2);
        }
        if (com.byazt.mv.c.tt(nVar)) {
            com.byazt.rz.c cVarX = this.f20560u.x();
            this.f20561x = cVarX;
            com.byazt.twu.a aVar = new com.byazt.twu.a(context, cVarX, this.f20560u);
            this.tt = aVar;
            this.yp.add(aVar);
        }
        if (com.byazt.mv.c.ve(nVar)) {
            com.byazt.rz.c cVarX2 = this.f20560u.x();
            this.f20556da = cVarX2;
            sp spVar = new sp(context, cVarX2, this.f20560u);
            this.uj = spVar;
            this.yp.add(spVar);
        }
        if (com.byazt.mv.c.uj(nVar)) {
            com.byazt.rz.c cVarI = this.f20560u.i();
            this.sl = cVarI;
            com.byazt.twu.c cVar = new com.byazt.twu.c(context, cVarI, this.f20560u);
            this.f20558n = cVar;
            this.yp.add(cVar);
        }
        if (com.byazt.mv.c.a(nVar)) {
            com.byazt.rz.c cVarA = this.f20560u.a();
            this.f20559t = cVarA;
            x xVar = new x(context, cVarA, this.f20560u);
            this.f20554a = xVar;
            this.yp.add(xVar);
        }
    }

    @Override // com.byazt.uf.n
    public int c() {
        return 0;
    }

    @Override // com.byazt.uf.n
    public int tt() {
        int size = this.yp.size();
        int iN = 0;
        for (int i10 = 0; i10 < size; i10++) {
            iN += this.yp.get(i10).n();
        }
        return iN;
    }

    @Override // com.byazt.uf.n
    public List<com.byazt.vb.tt> c(int i10, com.byazt.vb.tt ttVar, boolean z10, String str) {
        return null;
    }

    @Override // com.byazt.uf.n
    public void c(com.byazt.vb.tt ttVar, int i10, boolean z10) {
        if (ttVar == null) {
            return;
        }
        try {
            ttVar.tt(System.currentTimeMillis());
            Iterator<com.byazt.twu.tt> it2 = this.yp.iterator();
            while (it2.hasNext()) {
                it2.next().tt(ttVar);
            }
        } catch (Throwable th) {
            m.c(th);
            com.byazt.ml.tt.c(com.byazt.mv.tt.f17020c.c(), 1, this.f20560u);
        }
    }

    @Override // com.byazt.uf.n
    public tt c(int i10, List<com.byazt.vb.tt> list, int i11) {
        Iterator<com.byazt.twu.tt> it2 = this.yp.iterator();
        tt ttVarC = null;
        while (it2.hasNext()) {
            ttVarC = it2.next().c(i10, list);
            if (ttVarC.c()) {
                break;
            }
        }
        return ttVarC;
    }

    public List<com.byazt.vb.tt> c(com.byazt.vb.tt ttVar, int i10, int i11, boolean z10) {
        Iterator<com.byazt.twu.tt> it2 = this.yp.iterator();
        while (it2.hasNext()) {
            List<com.byazt.vb.tt> listC = it2.next().c(i11, i10, ttVar, z10);
            if (listC != null && listC.size() != 0) {
                return listC;
            }
        }
        return null;
    }

    @Override // com.byazt.uf.n
    public List<com.byazt.vb.tt> c(int i10, com.byazt.vb.tt ttVar, boolean z10, List<String> list) {
        Iterator<com.byazt.twu.tt> it2 = this.yp.iterator();
        while (it2.hasNext()) {
            List<com.byazt.vb.tt> listC = it2.next().c(i10, ttVar, z10, list, "db");
            if (listC != null && listC.size() != 0) {
                return listC;
            }
        }
        return null;
    }

    @Override // com.byazt.uf.n
    public boolean c(int i10, String str, com.byazt.vb.tt ttVar) {
        Iterator<com.byazt.twu.tt> it2 = this.yp.iterator();
        while (it2.hasNext()) {
            if (it2.next().c(i10, str, ttVar)) {
                return true;
            }
        }
        return false;
    }
}
