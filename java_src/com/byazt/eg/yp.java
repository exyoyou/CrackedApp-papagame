package com.byazt.eg;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 16, 215})
public final class yp {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ExecutorService f13436n;
    public String uj;
    public Runnable ve;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13435c = 64;
    public int tt = 5;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Deque<zm.c> f13434a = new ArrayDeque();
    public final Deque<zm.c> sp = new ArrayDeque();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Deque<zm> f13437x = new ArrayDeque();

    public yp() {
    }

    private void ve() {
        if (this.sp.size() < this.f13435c && !this.f13434a.isEmpty()) {
            Iterator<zm.c> it2 = this.f13434a.iterator();
            while (it2.hasNext()) {
                zm.c next = it2.next();
                if (ve(next) < this.tt) {
                    it2.remove();
                    this.sp.add(next);
                    if (next != null) {
                        next.tt();
                    }
                    c().execute(next);
                }
                if (this.sp.size() >= this.f13435c) {
                    return;
                }
            }
        }
    }

    public synchronized ExecutorService c() {
        if (this.f13436n == null) {
            String str = this.uj;
            this.f13436n = new com.byazt.jtc.uj(0, Integer.MAX_VALUE, 20L, TimeUnit.SECONDS, new SynchronousQueue(), com.byazt.kh.ve.c((str == null || str.isEmpty()) ? "net" : this.uj, false));
        }
        return this.f13436n;
    }

    public synchronized void tt(int i10) {
        try {
            if (i10 <= 0) {
                throw new IllegalArgumentException("max < 1: ".concat(String.valueOf(i10)));
            }
            this.tt = i10;
            ve();
        } catch (Throwable th) {
            throw th;
        }
    }

    public void tt(zm.c cVar) {
        c(this.sp, cVar, true);
    }

    public synchronized void c(int i10) {
        try {
            if (i10 > 0) {
                this.f13435c = i10;
                ve();
            } else {
                throw new IllegalArgumentException("max < 1: ".concat(String.valueOf(i10)));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void tt(zm zmVar) {
        c(this.f13437x, zmVar, false);
    }

    public yp(String str) {
        this.uj = str;
    }

    public synchronized int tt() {
        return this.sp.size() + this.f13437x.size();
    }

    public synchronized void c(zm.c cVar) {
        try {
            if (this.sp.size() < this.f13435c && ve(cVar) < this.tt) {
                this.sp.add(cVar);
                if (cVar != null) {
                    cVar.tt();
                }
                c().execute(cVar);
                return;
            }
            this.f13434a.add(cVar);
        } catch (Throwable unused) {
        }
    }

    private int ve(zm.c cVar) {
        Iterator<zm.c> it2 = this.sp.iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            if (it2.next().c().equals(cVar.c())) {
                i10++;
            }
        }
        return i10;
    }

    public synchronized void c(zm zmVar) {
        this.f13437x.add(zmVar);
    }

    private <T> void c(Deque<T> deque, T t10, boolean z10) {
        int iTt;
        Runnable runnable;
        synchronized (this) {
            if (deque.remove(t10)) {
                if (z10) {
                    ve();
                }
                iTt = tt();
                runnable = this.ve;
            } else {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
        if (iTt != 0 || runnable == null) {
            return;
        }
        runnable.run();
    }
}
