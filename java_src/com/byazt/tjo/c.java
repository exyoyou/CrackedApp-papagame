package com.byazt.tjo;

import android.os.Handler;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 516, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f20198a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<com.byazt.zh.uj> f20199c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public long f20200da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f20201i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Runnable f20202n;
    public long sl;
    public final AtomicBoolean sp;
    public final List<com.byazt.zh.uj> tt;
    public final Runnable uj;
    public final Handler ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f20203x;

    /* JADX INFO: renamed from: com.byazt.tjo.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 516, 44})
    private static class C0441c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final c f20205c = new c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n() {
        c(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(boolean z10) {
        synchronized (this.f20199c) {
            if (this.f20199c.isEmpty()) {
                this.f20198a.set(false);
                return;
            }
            ArrayList<com.byazt.zh.uj> arrayList = new ArrayList(this.f20199c);
            this.f20199c.clear();
            long jQy = com.byazt.bp.tt.tt().qy();
            HashMap map = new HashMap();
            map.put("config_use_type", Integer.valueOf(com.byazt.bp.tt.tt().sl()));
            map.put("config_wait_duration", Long.valueOf(jQy));
            for (com.byazt.zh.uj ujVar : arrayList) {
                if (z10) {
                    com.byazt.nbs.tt ttVarC = c(ujVar.tt(), ujVar.c(), 100);
                    map.put("is_wait_success", 0);
                    ujVar.c(ttVarC == null, map);
                } else {
                    if (this.sl == Long.MIN_VALUE) {
                        this.sl = System.currentTimeMillis() - this.f20201i;
                    }
                    map.put("real_wait_duration", Long.valueOf(this.sl));
                    map.put("is_wait_success", 1);
                    ujVar.c(false, map);
                }
            }
            this.ve.removeCallbacks(this.uj);
            this.f20198a.set(false);
        }
    }

    private boolean uj(com.byazt.zh.uj ujVar) {
        com.byazt.nbs.tt ttVarC = c(ujVar.tt(), ujVar.c(), 100);
        if (ttVarC == null || System.currentTimeMillis() - ttVarC.tt() >= com.byazt.bp.tt.tt().gt()) {
            return !com.byazt.vq.c.c().c(ujVar.tt(), ujVar.c(), com.byazt.qv.uj.c(ujVar.tt()));
        }
        com.byazt.bp.tt.tt().gt();
        return true;
    }

    private void ve(com.byazt.zh.uj ujVar) {
        long jQy = com.byazt.bp.tt.tt().qy();
        HashMap map = new HashMap();
        map.put("config_use_type", Integer.valueOf(com.byazt.bp.tt.tt().sl()));
        map.put("config_wait_duration", Long.valueOf(jQy));
        if (jQy == 0) {
            ujVar.c(false, map);
            return;
        }
        if (uj(ujVar)) {
            map.put("is_wait_success", 2);
            ujVar.c(false, map);
            return;
        }
        if (!this.f20199c.contains(ujVar)) {
            if (this.f20201i == Long.MIN_VALUE) {
                this.f20201i = System.currentTimeMillis();
            }
            this.f20199c.add(ujVar);
        }
        if (this.f20198a.compareAndSet(false, true)) {
            com.byazt.bp.tt.tt().qy();
            this.ve.postDelayed(this.uj, com.byazt.bp.tt.tt().qy());
        }
    }

    private c() {
        this.f20199c = new CopyOnWriteArrayList();
        this.tt = new CopyOnWriteArrayList();
        this.ve = com.byazt.nr.da.ve();
        this.uj = new Runnable() { // from class: y1.b
            @Override // java.lang.Runnable
            public final void run() {
                this.f97672b.n();
            }
        };
        this.f20202n = new Runnable() { // from class: y1.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f97673b.tt();
            }
        };
        this.f20198a = new AtomicBoolean(false);
        this.sp = new AtomicBoolean(false);
        this.f20203x = Long.MIN_VALUE;
        this.f20201i = Long.MIN_VALUE;
        this.f20200da = Long.MIN_VALUE;
        this.sl = Long.MIN_VALUE;
    }

    public static c c() {
        return C0441c.f20205c;
    }

    public void c(com.byazt.zh.uj ujVar) {
        if (ujVar == null) {
            return;
        }
        if (ujVar.c() == 3) {
            tt(ujVar);
        } else {
            ve(ujVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uj() {
        synchronized (this.tt) {
            if (this.tt.isEmpty()) {
                this.sp.set(false);
                return;
            }
            ArrayList arrayList = new ArrayList(this.tt);
            this.tt.clear();
            long jRl = com.byazt.bp.tt.tt().rl();
            HashMap map = new HashMap();
            map.put("config_use_type", Integer.valueOf(com.byazt.bp.tt.tt().sl()));
            map.put("config_wait_duration", Long.valueOf(jRl));
            map.put("is_wait_success", 1);
            if (this.f20200da == Long.MIN_VALUE) {
                this.f20200da = System.currentTimeMillis() - this.f20203x;
            }
            map.put("real_wait_duration", Long.valueOf(this.f20200da));
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((com.byazt.zh.uj) it2.next()).c(false, map);
            }
            this.ve.removeCallbacks(this.f20202n);
            this.sp.set(false);
        }
    }

    public void c(final boolean z10) {
        com.byazt.eu.n.ve(new Runnable() { // from class: com.byazt.tjo.c.1
            @Override // java.lang.Runnable
            public void run() {
                c.this.tt(z10);
            }
        });
    }

    private com.byazt.nbs.tt c(String str, int i10, int i11) {
        com.byazt.nbs.tt ttVarC = com.byazt.bp.tt.tt().c(str, i10, i11);
        return (ttVarC == null && i10 == 8) ? com.byazt.bp.tt.tt().c(str, 10, i11) : ttVarC;
    }

    public void ve() {
        tt();
        c(false);
    }

    public void tt(com.byazt.zh.uj ujVar) {
        long jRl = com.byazt.bp.tt.tt().rl();
        HashMap map = new HashMap();
        map.put("config_use_type", Integer.valueOf(com.byazt.bp.tt.tt().sl()));
        map.put("config_wait_duration", Long.valueOf(jRl));
        if (jRl == 0) {
            ujVar.c(false, map);
            return;
        }
        if (uj(ujVar)) {
            map.put("is_wait_success", 2);
            ujVar.c(false, map);
            return;
        }
        if (!this.tt.contains(ujVar)) {
            if (this.f20203x == Long.MIN_VALUE) {
                this.f20203x = System.currentTimeMillis();
            }
            this.tt.add(ujVar);
        }
        if (this.sp.compareAndSet(false, true)) {
            com.byazt.bp.tt.tt().rl();
            this.ve.postDelayed(this.f20202n, com.byazt.bp.tt.tt().rl());
        }
    }

    public void tt() {
        com.byazt.eu.n.ve(new Runnable() { // from class: y1.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f97671b.uj();
            }
        });
    }
}
