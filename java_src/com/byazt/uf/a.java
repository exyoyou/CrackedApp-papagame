package com.byazt.uf;

import com.byazt.eh.sp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEO_DEVICE_WAIT_END_TIME, 34})
public class a implements n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<com.byazt.eh.c> f20552c = new ArrayList();

    public a(Queue<String> queue, com.byazt.vb.n nVar) {
        if (com.byazt.mv.c.c(nVar)) {
            this.f20552c.add(new com.byazt.eh.ve(nVar.sp(), queue, nVar));
        }
        if (com.byazt.mv.c.n(nVar)) {
            this.f20552c.add(new com.byazt.eh.uj(nVar.c() != null ? nVar.c() : nVar.x(), queue, nVar));
        }
        if (com.byazt.mv.c.tt(nVar)) {
            this.f20552c.add(new com.byazt.eh.n(nVar.x(), queue, nVar));
        }
        if (com.byazt.mv.c.ve(nVar)) {
            this.f20552c.add(new com.byazt.eh.a(nVar.x(), queue, nVar));
        }
        if (com.byazt.mv.c.uj(nVar)) {
            this.f20552c.add(new com.byazt.eh.tt(nVar.i(), queue, nVar));
        }
        if (com.byazt.mv.c.a(nVar)) {
            this.f20552c.add(new sp(nVar.a(), queue, nVar));
        }
    }

    @Override // com.byazt.uf.n
    public List<com.byazt.vb.tt> c(int i10, com.byazt.vb.tt ttVar, boolean z10, String str) {
        return null;
    }

    @Override // com.byazt.uf.n
    public int tt() {
        return 0;
    }

    @Override // com.byazt.uf.n
    public void c(com.byazt.vb.tt ttVar, int i10, boolean z10) {
        Iterator<com.byazt.eh.c> it2 = this.f20552c.iterator();
        while (it2.hasNext()) {
            it2.next().tt(ttVar);
        }
    }

    @Override // com.byazt.uf.n
    public tt c(int i10, List<com.byazt.vb.tt> list, int i11) {
        Iterator<com.byazt.eh.c> it2 = this.f20552c.iterator();
        tt ttVarC = null;
        while (it2.hasNext()) {
            ttVarC = it2.next().c(i10, list, i11);
            if (ttVarC.c()) {
                break;
            }
        }
        return ttVarC;
    }

    @Override // com.byazt.uf.n
    public List<com.byazt.vb.tt> c(int i10, com.byazt.vb.tt ttVar, boolean z10, List<String> list) {
        Iterator<com.byazt.eh.c> it2 = this.f20552c.iterator();
        while (it2.hasNext()) {
            List<com.byazt.vb.tt> listC = it2.next().c(i10, ttVar, z10, list, "get");
            if (listC != null && listC.size() != 0) {
                return listC;
            }
        }
        return null;
    }

    @Override // com.byazt.uf.n
    public boolean c(int i10, String str, com.byazt.vb.tt ttVar) {
        Iterator<com.byazt.eh.c> it2 = this.f20552c.iterator();
        while (it2.hasNext()) {
            if (it2.next().c(i10, str, ttVar)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.byazt.uf.n
    public int c() {
        int size = this.f20552c.size();
        int iC = 0;
        for (int i10 = 0; i10 < size; i10++) {
            iC += this.f20552c.get(i10).c();
        }
        return iC;
    }
}
