package com.byazt.ty;

import android.os.Process;
import com.byazt.m.BaseException;
import com.byazt.nr.m;
import com.byazt.w.a;
import com.bykv.vk.component.ttvideo.TTVideoEngine;
import java.io.InputStream;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, TTVideoEngine.PLAYER_OPTION_OUTPUT_LOG, 20})
public class c implements tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.h.c f20482a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InputStream f20483c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.h.c f20484da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.h.c f20485i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f20486m;
    public com.byazt.h.c sl;
    public com.byazt.h.c sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public volatile boolean f20488t;
    public final int tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public volatile boolean f20489u;
    public final int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.h.c f20490x;
    public volatile Throwable yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public volatile Future f20491z;
    public final Object uj = new Object();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Object f20487n = new Object();
    public final Runnable nu = new Runnable() { // from class: com.byazt.ty.c.1
        @Override // java.lang.Runnable
        public void run() {
            com.byazt.h.c cVarUj;
            Process.setThreadPriority(10);
            do {
                try {
                    cVarUj = c.this.uj();
                    cVarUj.ve = c.this.f20483c.read(cVarUj.f14806c);
                    c.this.ve(cVarUj);
                } catch (Throwable th) {
                    try {
                        c.this.yp = th;
                        m.c(th);
                        synchronized (c.this.f20487n) {
                            c.this.f20489u = true;
                            c.this.f20487n.notify();
                            a.c(c.this.f20483c);
                            return;
                        }
                    } catch (Throwable th2) {
                        synchronized (c.this.f20487n) {
                            c.this.f20489u = true;
                            c.this.f20487n.notify();
                            a.c(c.this.f20483c);
                            throw th2;
                        }
                    }
                }
            } while (cVarUj.ve != -1);
            synchronized (c.this.f20487n) {
                c.this.f20489u = true;
                c.this.f20487n.notify();
            }
            a.c(c.this.f20483c);
        }
    };

    public c(InputStream inputStream, int i10, int i11) throws Throwable {
        this.f20483c = inputStream;
        this.tt = i10;
        if (i11 <= 0) {
            i11 = 1;
        } else if (i11 > 64) {
            i11 = 64;
        }
        this.ve = i11;
        ve();
    }

    private void a() throws BaseException {
        Throwable th = this.yp;
        if (th != null) {
            if (th instanceof com.byazt.h.m) {
                throw new BaseException(1068, "async reader closed!");
            }
            a.c(th, "async_read");
        }
        throw new BaseException(1069, "async reader terminated!");
    }

    private com.byazt.h.c n() throws BaseException, InterruptedException {
        com.byazt.h.c cVar;
        com.byazt.h.c cVar2 = this.sl;
        if (cVar2 != null) {
            this.sl = cVar2.uj;
            cVar2.uj = null;
            return cVar2;
        }
        synchronized (this.f20487n) {
            cVar = this.f20485i;
            if (cVar == null) {
                do {
                    if (this.f20489u) {
                        a();
                    }
                    this.f20487n.wait();
                    cVar = this.f20485i;
                } while (cVar == null);
            }
            this.sl = cVar.uj;
            this.f20484da = null;
            this.f20485i = null;
            cVar.uj = null;
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.h.c uj() throws InterruptedException, com.byazt.h.m {
        int i10;
        com.byazt.h.c cVar = this.f20490x;
        if (cVar != null) {
            if (this.f20488t) {
                throw new com.byazt.h.m("");
            }
            this.f20490x = cVar.uj;
            cVar.uj = null;
            return cVar;
        }
        synchronized (this.uj) {
            if (this.f20488t) {
                throw new com.byazt.h.m("");
            }
            com.byazt.h.c cVar2 = this.f20482a;
            if (cVar2 == null && (i10 = this.f20486m) < this.ve) {
                this.f20486m = i10 + 1;
                return new com.byazt.h.c(this.tt);
            }
            while (cVar2 == null) {
                this.uj.wait();
                if (this.f20488t) {
                    throw new com.byazt.h.m("");
                }
                cVar2 = this.f20482a;
            }
            this.f20490x = cVar2.uj;
            this.sp = null;
            this.f20482a = null;
            cVar2.uj = null;
            return cVar2;
        }
    }

    private void ve() throws Throwable {
        this.f20491z = com.byazt.zz.ve.nu().submit(this.nu);
    }

    @Override // com.byazt.ty.tt
    public void tt() {
        synchronized (this.uj) {
            this.f20488t = true;
            this.uj.notify();
        }
        Future future = this.f20491z;
        if (future != null) {
            try {
                future.cancel(true);
            } catch (Throwable unused) {
            }
            this.f20491z = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve(com.byazt.h.c cVar) {
        synchronized (this.f20487n) {
            com.byazt.h.c cVar2 = this.f20484da;
            if (cVar2 == null) {
                this.f20484da = cVar;
                this.f20485i = cVar;
                this.f20487n.notify();
            } else {
                cVar2.uj = cVar;
                this.f20484da = cVar;
            }
        }
    }

    @Override // com.byazt.ty.tt
    public com.byazt.h.c c() throws BaseException, InterruptedException {
        return n();
    }

    @Override // com.byazt.ty.tt
    public void c(com.byazt.h.c cVar) {
        tt(cVar);
    }

    private void tt(com.byazt.h.c cVar) {
        synchronized (this.uj) {
            com.byazt.h.c cVar2 = this.sp;
            if (cVar2 == null) {
                this.sp = cVar;
                this.f20482a = cVar;
                this.uj.notify();
            } else {
                cVar2.uj = cVar;
                this.sp = cVar;
            }
        }
    }
}
