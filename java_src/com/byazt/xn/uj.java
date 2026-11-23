package com.byazt.xn;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 873, 15})
public class uj extends com.byazt.gqp.uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ExecutorService f22005c;
    public final Deque<c.C0486c> tt = new ArrayDeque();
    public final Deque<c.C0486c> ve = new ArrayDeque();
    public final Deque<c> uj = new ArrayDeque();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public AtomicInteger f22006n = new AtomicInteger(64);

    public uj() {
        if (this.f22005c == null) {
            this.f22005c = new com.byazt.jtc.uj(0, Integer.MAX_VALUE, 20L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactory() { // from class: com.byazt.xn.uj.1
                @Override // java.util.concurrent.ThreadFactory
                public Thread newThread(Runnable runnable) {
                    com.byazt.jtc.ve veVar = new com.byazt.jtc.ve(runnable, "systemHttp Dispatcher");
                    veVar.setDaemon(false);
                    veVar.setPriority(10);
                    return veVar;
                }
            });
        }
    }

    private void ve() {
        if (this.ve.size() < c() && !this.tt.isEmpty()) {
            Iterator<c.C0486c> it2 = this.tt.iterator();
            while (it2.hasNext()) {
                c.C0486c next = it2.next();
                it2.remove();
                this.ve.add(next);
                if (next != null) {
                    next.c();
                }
                tt().submit(next);
                if (this.ve.size() >= c()) {
                    return;
                }
            }
        }
    }

    @Override // com.byazt.gqp.uj
    public void c(int i10) {
        this.f22006n.set(i10);
    }

    @Override // com.byazt.gqp.uj
    public void tt(int i10) {
    }

    @Override // com.byazt.gqp.uj
    public int c() {
        return this.f22006n.get();
    }

    @Override // com.byazt.gqp.uj
    public ExecutorService tt() {
        return this.f22005c;
    }

    public synchronized void c(c.C0486c c0486c) {
        try {
            if (this.ve.size() < c()) {
                this.ve.add(c0486c);
                if (c0486c != null) {
                    c0486c.c();
                }
                tt().submit(c0486c);
                return;
            }
            this.tt.add(c0486c);
        } catch (Throwable unused) {
        }
    }

    public void tt(c.C0486c c0486c) {
        c(this.ve, c0486c, true);
    }

    public void tt(c cVar) {
        c(this.uj, cVar, false);
    }

    public synchronized void c(c cVar) {
        this.uj.add(cVar);
    }

    private <T> void c(Deque<T> deque, T t10, boolean z10) {
        synchronized (this) {
            deque.remove(t10);
            if (z10) {
                ve();
            }
        }
    }
}
