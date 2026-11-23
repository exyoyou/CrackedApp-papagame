package com.byazt.eh;

import com.byazt.nr.m;
import com.byazt.vb.tt;
import com.haima.hmcp.utils.ButtonMappingUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, ButtonMappingUtil.KEYBOARD_DIRECTION, 20})
public abstract class c<T extends com.byazt.vb.tt> extends com.byazt.uf.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f13452a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.rz.c f13453c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Queue<String> f13454n;
    public String tt;
    public Queue<T> uj = new ConcurrentLinkedQueue();
    public com.byazt.vb.n ve;

    public c(com.byazt.rz.c cVar, Queue<String> queue, String str, com.byazt.vb.n nVar) {
        this.f13452a = -1;
        this.f13453c = cVar;
        this.f13454n = queue;
        this.ve = nVar;
        this.tt = str;
        if (nVar != null) {
            this.f13452a = nVar.t();
        }
    }

    public com.byazt.uf.tt c(int i10, List<T> list, int i11) {
        com.byazt.uf.tt ttVar = new com.byazt.uf.tt();
        if (list == null || list.size() == 0 || list.get(0) == null || !c(list.get(0))) {
            ttVar.c(false);
            return ttVar;
        }
        tt(i10, list, i11);
        ttVar.c(true);
        return ttVar;
    }

    public void tt(T t10) {
        if (this.uj == null || t10 == null || !c(t10)) {
            return;
        }
        if (this.f13452a > 0 && this.uj.size() > this.f13452a) {
            this.uj.poll();
        }
        this.uj.offer(t10);
    }

    @Override // com.byazt.uf.c
    public List<com.byazt.vb.tt> tt(int i10, com.byazt.vb.tt ttVar, boolean z10, List<String> list, String str) {
        ArrayList arrayList = new ArrayList();
        this.uj.size();
        do {
            T tPoll = this.uj.poll();
            if (tPoll == null) {
                break;
            }
            tPoll.tt(tPoll.da() + 1);
            arrayList.add(tPoll);
        } while (arrayList.size() != this.f13453c.tt());
        return arrayList;
    }

    @Override // com.byazt.uf.c
    public boolean c(String str) {
        return this.uj.size() > 0;
    }

    public int c() {
        return this.uj.size();
    }

    private void tt(int i10, List<T> list, int i11) {
        com.byazt.vb.tt ttVar;
        int size = this.uj.size();
        if ((i10 == -1 || i10 == 200 || i10 == 509 || i10 == -3) && list != null && list.size() != 0 && size != 0) {
            HashMap map = new HashMap();
            for (T t10 : this.uj) {
                if (t10 != null) {
                    map.put(t10.ve(), t10);
                }
            }
            for (T t11 : list) {
                if (t11 != null && (ttVar = (com.byazt.vb.tt) map.get(t11.ve())) != null) {
                    try {
                        this.uj.remove(ttVar);
                    } catch (Throwable th) {
                        m.c(th);
                    }
                }
            }
        }
        this.uj.size();
    }

    @Override // com.byazt.uf.c
    public boolean tt(int i10, String str, com.byazt.vb.tt ttVar) {
        int size = this.uj.size();
        int iC = this.f13453c.c();
        com.byazt.ml.c.tt(i10);
        return size >= iC;
    }
}
