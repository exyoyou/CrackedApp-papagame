package com.kwad.framework.filedownloader.b;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.kwad.framework.filedownloader.f.f;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements a {
    private volatile Thread aAD;
    private Handler handler;
    private volatile List<Integer> aAB = new CopyOnWriteArrayList();
    private AtomicInteger aAC = new AtomicInteger();
    private final b aAy = new b();
    private final d aAz = new d();
    private final long aAA = com.kwad.framework.filedownloader.f.e.Dz().aDt;

    public c() {
        HandlerThread handlerThread = new HandlerThread(f.cp("RemitHandoverToDB"), 10);
        handlerThread.start();
        this.handler = new Handler(handlerThread.getLooper(), new Handler.Callback() { // from class: com.kwad.framework.filedownloader.b.c.1
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                int i10 = message.what;
                if (i10 == 0) {
                    if (c.this.aAD != null) {
                        LockSupport.unpark(c.this.aAD);
                        c.a(c.this, (Thread) null);
                    }
                    return false;
                }
                try {
                    c.this.aAC.set(i10);
                    c.this.cH(i10);
                    c.this.aAB.add(Integer.valueOf(i10));
                    return false;
                } finally {
                    c.this.aAC.set(0);
                    if (c.this.aAD != null) {
                        LockSupport.unpark(c.this.aAD);
                        c.a(c.this, (Thread) null);
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cH(int i10) {
        this.aAz.b(this.aAy.cC(i10));
        List<com.kwad.framework.filedownloader.d.a> listCD = this.aAy.cD(i10);
        this.aAz.cE(i10);
        Iterator<com.kwad.framework.filedownloader.d.a> it2 = listCD.iterator();
        while (it2.hasNext()) {
            this.aAz.a(it2.next());
        }
    }

    private boolean cI(int i10) {
        return !this.aAB.contains(Integer.valueOf(i10));
    }

    private void cJ(int i10) {
        this.handler.removeMessages(i10);
        if (this.aAC.get() != i10) {
            cH(i10);
            return;
        }
        this.aAD = Thread.currentThread();
        this.handler.sendEmptyMessage(0);
        LockSupport.park();
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final a.InterfaceC0904a BR() {
        d dVar = this.aAz;
        b bVar = this.aAy;
        return dVar.a(bVar.aAv, bVar.aAw);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void cB(int i10) {
        this.handler.sendEmptyMessageDelayed(i10, this.aAA);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final com.kwad.framework.filedownloader.d.c cC(int i10) {
        return this.aAy.cC(i10);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final List<com.kwad.framework.filedownloader.d.a> cD(int i10) {
        return this.aAy.cD(i10);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void cE(int i10) {
        this.aAy.cE(i10);
        if (cI(i10)) {
            return;
        }
        this.aAz.cE(i10);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final boolean cF(int i10) {
        this.aAz.cF(i10);
        return this.aAy.cF(i10);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void cG(int i10) {
        this.aAy.cG(i10);
        if (cI(i10)) {
            return;
        }
        this.aAz.cG(i10);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void clear() {
        this.aAy.clear();
        this.aAz.clear();
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void d(int i10, long j10) {
        this.aAy.d(i10, j10);
        if (cI(i10)) {
            cJ(i10);
        }
        this.aAz.d(i10, j10);
        this.aAB.remove(Integer.valueOf(i10));
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void w(int i10, int i11) {
        this.aAy.w(i10, i11);
        if (cI(i10)) {
            return;
        }
        this.aAz.w(i10, i11);
    }

    static /* synthetic */ Thread a(c cVar, Thread thread) {
        cVar.aAD = null;
        return null;
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void b(int i10, long j10) {
        this.aAy.b(i10, j10);
        if (cI(i10)) {
            return;
        }
        this.aAz.b(i10, j10);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void c(int i10, long j10) {
        this.aAy.c(i10, j10);
        if (cI(i10)) {
            this.handler.removeMessages(i10);
            if (this.aAC.get() == i10) {
                this.aAD = Thread.currentThread();
                this.handler.sendEmptyMessage(0);
                LockSupport.park();
                this.aAz.c(i10, j10);
            }
        } else {
            this.aAz.c(i10, j10);
        }
        this.aAB.remove(Integer.valueOf(i10));
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(com.kwad.framework.filedownloader.d.a aVar) {
        this.aAy.a(aVar);
        if (cI(aVar.getId())) {
            return;
        }
        this.aAz.a(aVar);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void b(com.kwad.framework.filedownloader.d.c cVar) {
        this.aAy.b(cVar);
        if (cI(cVar.getId())) {
            return;
        }
        this.aAz.b(cVar);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i10, int i11, long j10) {
        this.aAy.a(i10, i11, j10);
        if (cI(i10)) {
            return;
        }
        this.aAz.a(i10, i11, j10);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i10, String str, long j10, long j11, int i11) {
        this.aAy.a(i10, str, j10, j11, i11);
        if (cI(i10)) {
            return;
        }
        this.aAz.a(i10, str, j10, j11, i11);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i10, long j10, String str, String str2) {
        this.aAy.a(i10, j10, str, str2);
        if (cI(i10)) {
            return;
        }
        this.aAz.a(i10, j10, str, str2);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i10, Throwable th) {
        this.aAy.a(i10, th);
        if (cI(i10)) {
            return;
        }
        this.aAz.a(i10, th);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i10, Throwable th, long j10) {
        this.aAy.a(i10, th, j10);
        if (cI(i10)) {
            cJ(i10);
        }
        this.aAz.a(i10, th, j10);
        this.aAB.remove(Integer.valueOf(i10));
    }
}
