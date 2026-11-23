package com.byazt.uf;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEO_DEVICE_WAIT_END_TIME, 54})
public class ve implements n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final n f20562c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.lph.ve f20563n;
    public final uj tt;
    public com.byazt.vb.n uj;
    public final Queue<String> ve;

    public ve(com.byazt.vb.n nVar, com.byazt.lph.ve veVar) {
        ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
        this.ve = concurrentLinkedQueue;
        this.uj = nVar;
        this.f20563n = veVar;
        this.f20562c = new a(concurrentLinkedQueue, nVar);
        this.tt = new uj(this.uj);
    }

    @Override // com.byazt.uf.n
    public List<com.byazt.vb.tt> c(int i10, com.byazt.vb.tt ttVar, boolean z10, List<String> list) {
        return null;
    }

    @Override // com.byazt.uf.n
    public int tt() {
        return this.tt.tt();
    }

    @Override // com.byazt.uf.n
    public synchronized void c(com.byazt.vb.tt ttVar, int i10, boolean z10) {
        if (z10) {
            try {
                if (!com.byazt.ml.c.i(ttVar, this.uj) || !this.f20563n.uj()) {
                    this.f20562c.c(ttVar, i10, z10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (ttVar != null) {
            this.tt.c(ttVar, i10, z10);
        }
    }

    @Override // com.byazt.uf.n
    public synchronized tt c(int i10, List<com.byazt.vb.tt> list, int i11) {
        tt ttVarC;
        try {
            Iterator<com.byazt.vb.tt> it2 = list.iterator();
            while (it2.hasNext()) {
                this.ve.remove(it2.next().ve());
            }
        } catch (Throwable th) {
            tt ttVar = new tt();
            ttVar.c(false);
            ttVar.c("sending exception:" + th.getMessage());
            com.byazt.ml.ve.ve(th.getMessage(), this.uj);
        }
        try {
            this.f20562c.c(i10, list, i11);
        } catch (Throwable th2) {
            tt ttVar2 = new tt();
            ttVar2.c(false);
            ttVar2.c("mem exception:" + th2.getMessage());
            com.byazt.ml.ve.ve(th2.getMessage(), this.uj);
        }
        try {
            ttVarC = this.tt.c(i10, list, i11);
        } catch (Exception e10) {
            tt ttVar3 = new tt();
            ttVar3.c(false);
            ttVar3.c("db exception:" + e10.getMessage());
            com.byazt.ml.ve.ve(e10.getMessage(), this.uj);
            ttVarC = ttVar3;
        }
        return ttVarC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.byazt.uf.n
    public synchronized List<com.byazt.vb.tt> c(int i10, com.byazt.vb.tt ttVar, boolean z10, String str) {
        List list;
        List<com.byazt.vb.tt> listC;
        boolean z11;
        List<com.byazt.vb.tt> listC2 = this.f20562c.c(i10, ttVar, z10, (List<String>) null);
        if (listC2 != null && listC2.size() != 0) {
            int size = listC2.size();
            if (com.byazt.ml.c.c(i10) && (listC = this.tt.c((com.byazt.vb.tt) listC2.get(0), size, i10, z10)) != null && listC.size() != 0) {
                list = listC2;
                list = listC2;
                list = listC2;
                listC.size();
                HashMap map = new HashMap();
                for (com.byazt.vb.tt ttVar2 : listC) {
                    map.put(ttVar2.ve(), ttVar2);
                }
                ArrayList arrayList = new ArrayList(this.ve);
                arrayList.size();
                for (com.byazt.vb.tt ttVar3 : listC) {
                    Iterator it2 = arrayList.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            z11 = false;
                            break;
                        }
                        if (TextUtils.equals(ttVar3.ve(), (String) it2.next())) {
                            z11 = true;
                            break;
                        }
                    }
                    if (z11) {
                        map.remove(ttVar3.ve());
                    }
                }
                for (com.byazt.vb.tt ttVar4 : listC2) {
                    map.put(ttVar4.ve(), ttVar4);
                }
                listC2.clear();
                Set setKeySet = map.keySet();
                map.size();
                Iterator it3 = setKeySet.iterator();
                while (it3.hasNext()) {
                    listC2.add(map.get((String) it3.next()));
                }
                listC.clear();
                list = listC2;
            }
        } else {
            ArrayList<String> arrayList2 = new ArrayList(this.ve);
            int size2 = arrayList2.size();
            List<com.byazt.vb.tt> listC3 = this.tt.c(i10, ttVar, z10, arrayList2);
            if (listC3 != null && listC3.size() != 0) {
                listC3.size();
                HashMap map2 = new HashMap();
                for (com.byazt.vb.tt ttVar5 : listC3) {
                    map2.put(ttVar5.ve(), ttVar5);
                }
                if (size2 != 0) {
                    for (String str2 : arrayList2) {
                        if (map2.get(str2) != null) {
                            map2.remove(str2);
                        }
                    }
                }
                listC3.clear();
                Set setKeySet2 = map2.keySet();
                map2.size();
                Iterator it4 = setKeySet2.iterator();
                while (it4.hasNext()) {
                    listC3.add(map2.get((String) it4.next()));
                }
            }
            list = listC3;
        }
        if (list != null && !list.isEmpty()) {
            list.size();
            Iterator it5 = list.iterator();
            while (it5.hasNext()) {
                this.ve.offer(((com.byazt.vb.tt) it5.next()).ve());
            }
            return list;
        }
        return new ArrayList();
    }

    @Override // com.byazt.uf.n
    public synchronized boolean c(int i10, String str, com.byazt.vb.tt ttVar) {
        if (this.f20562c.c(i10, str, ttVar)) {
            com.byazt.ml.ve.tt("_opt", "cacheManager check result : memory meet ".concat(String.valueOf(str)), this.uj);
            return true;
        }
        if (!com.byazt.ml.c.c(i10) || !this.tt.c(i10, str, ttVar)) {
            return false;
        }
        com.byazt.ml.ve.tt("_opt", "cacheManager check result : db meet ".concat(String.valueOf(str)), this.uj);
        return true;
    }

    @Override // com.byazt.uf.n
    public int c() {
        return this.f20562c.c();
    }
}
