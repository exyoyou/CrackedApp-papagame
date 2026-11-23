package com.byazt.eg;

import android.os.Bundle;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 16, 72})
public final class da {
    public static final Executor uj = new com.byazt.jtc.uj(0, Integer.MAX_VALUE, 20, TimeUnit.SECONDS, new SynchronousQueue(), com.byazt.kh.ve.c("OkHttp ConnectionPool", true));
    public static final /* synthetic */ boolean ve = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f13296a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.iq.uj f13297c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final Deque<com.byazt.iq.ve> f13298da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Runnable f13299i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13300n;
    public List<String> sp;
    public boolean tt;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f13301x;

    public da() {
        this(5, 5L, TimeUnit.MINUTES);
    }

    private boolean ve(com.byazt.iq.ve veVar) {
        try {
            List<String> list = this.sp;
            if (list != null && !list.isEmpty() && veVar.c() != null && veVar.c().c() != null && veVar.c().c().c() != null && veVar.c().c().c().sp() != null) {
                String strSp = veVar.c().c().c().sp();
                if (!TextUtils.isEmpty(strSp) && this.sp.contains(strSp)) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public void c(Bundle bundle) {
        if (bundle != null) {
            try {
                if (bundle.containsKey("max_idle_cnt")) {
                    int i10 = bundle.getInt("max_idle_cnt");
                    if (i10 <= 5) {
                        i10 = this.f13300n;
                    }
                    this.f13300n = i10;
                }
                if (bundle.containsKey("max_idle_time")) {
                    long j10 = bundle.getLong("max_idle_time");
                    this.f13296a = j10 > 5 ? TimeUnit.MINUTES.toNanos(j10) : this.f13296a;
                }
                if (bundle.containsKey("white_hosts") && bundle.containsKey("white_extra_idle_time")) {
                    this.sp = bundle.getStringArrayList("white_hosts");
                    long j11 = bundle.getLong("white_extra_idle_time");
                    this.f13301x = j11 > 0 ? TimeUnit.MINUTES.toNanos(j11) : 0L;
                }
            } catch (Throwable unused) {
            }
        }
    }

    public boolean tt(com.byazt.iq.ve veVar) {
        if (!ve && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (veVar.f15478c || this.f13300n == 0) {
            this.f13298da.remove(veVar);
            return true;
        }
        notifyAll();
        return false;
    }

    public da(int i10, long j10, TimeUnit timeUnit) {
        this.f13299i = new Runnable() { // from class: com.byazt.eg.da.1
            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    long jC = da.this.c(System.nanoTime());
                    if (jC == -1) {
                        return;
                    }
                    if (jC > 0) {
                        long j11 = jC / C.MICROS_PER_SECOND;
                        long j12 = jC - (C.MICROS_PER_SECOND * j11);
                        synchronized (da.this) {
                            try {
                                da.this.wait(j11, (int) j12);
                            } catch (InterruptedException unused) {
                            }
                        }
                    }
                }
            }
        };
        this.f13298da = new ArrayDeque();
        this.f13297c = new com.byazt.iq.uj();
        this.f13300n = i10;
        this.f13296a = timeUnit.toNanos(j10);
        if (j10 <= 0) {
            throw new IllegalArgumentException("keepAliveDuration <= 0: ".concat(String.valueOf(j10)));
        }
    }

    public com.byazt.iq.ve c(c cVar, com.byazt.iq.sp spVar, eo eoVar) {
        if (!ve && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        for (com.byazt.iq.ve veVar : this.f13298da) {
            if (veVar.c(cVar, eoVar)) {
                if (spVar != null) {
                    spVar.c(veVar, true);
                }
                return veVar;
            }
        }
        return null;
    }

    public Socket c(c cVar, com.byazt.iq.sp spVar) {
        if (!ve && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        for (com.byazt.iq.ve veVar : this.f13298da) {
            if (veVar.c(cVar, null) && veVar.n() && veVar != spVar.tt()) {
                return spVar.c(veVar);
            }
        }
        return null;
    }

    public void c(com.byazt.iq.ve veVar) {
        if (!ve && !Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        if (!this.tt) {
            this.tt = true;
            uj.execute(this.f13299i);
        }
        this.f13298da.add(veVar);
    }

    public long c(long j10) {
        try {
            synchronized (this) {
                com.byazt.iq.ve veVar = null;
                long j11 = Long.MIN_VALUE;
                int i10 = 0;
                int i11 = 0;
                for (com.byazt.iq.ve veVar2 : this.f13298da) {
                    if (c(veVar2, j10) > 0) {
                        i11++;
                    } else {
                        i10++;
                        long j12 = j10 - veVar2.f15481n;
                        com.byazt.iq.ve veVar3 = veVar;
                        if (this.f13301x > 0 && ve(veVar2)) {
                            j12 -= this.f13301x;
                        }
                        if (j12 > j11) {
                            veVar = veVar2;
                            j11 = j12;
                        } else {
                            veVar = veVar3;
                        }
                    }
                }
                com.byazt.iq.ve veVar4 = veVar;
                long j13 = this.f13296a;
                if (j11 < j13 && i10 <= this.f13300n) {
                    if (i10 > 0) {
                        return j13 - j11;
                    }
                    if (i11 > 0) {
                        return j13;
                    }
                    this.tt = false;
                    com.byazt.nr.m.c("ConnectionPool", "cleanup: ");
                    return -1L;
                }
                this.f13298da.remove(veVar4);
                com.byazt.kh.ve.c(veVar4.ve());
                return 0L;
            }
        } catch (OutOfMemoryError unused) {
            return this.f13296a;
        }
    }

    private int c(com.byazt.iq.ve veVar, long j10) {
        List<Reference<com.byazt.iq.sp>> list = veVar.uj;
        int i10 = 0;
        while (i10 < list.size()) {
            Reference<com.byazt.iq.sp> reference = list.get(i10);
            if (reference.get() != null) {
                i10++;
            } else {
                com.byazt.xb.n.tt().c("A connection to " + veVar.c().c().c() + " was leaked. Did you forget to close a response body?", ((com.byazt.iq.sp.c) reference).f15475c);
                list.remove(i10);
                veVar.f15478c = true;
                if (list.isEmpty()) {
                    veVar.f15481n = j10 - this.f13296a;
                    return 0;
                }
            }
        }
        return list.size();
    }
}
