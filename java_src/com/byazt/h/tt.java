package com.byazt.h;

import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 518, 13})
public class tt implements n, uj, ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public c f14844a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f14845c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public volatile boolean f14846da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public c f14847i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public c f14848n;
    public int sl;
    public c sp;
    public final int tt;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public c f14849x;
    public final Object ve = new Object();
    public final Object uj = new Object();

    public tt(int i10, int i11) {
        i10 = i10 < 64 ? 64 : i10;
        i11 = i11 < 8192 ? 8192 : i11;
        this.f14845c = i10;
        this.tt = i11;
    }

    @Override // com.byazt.h.uj
    @NonNull
    public c c() throws InterruptedException, m {
        c cVar;
        c cVar2 = this.f14847i;
        if (cVar2 != null) {
            this.f14847i = cVar2.uj;
            cVar2.uj = null;
            return cVar2;
        }
        synchronized (this.uj) {
            cVar = this.sp;
            while (cVar == null) {
                if (this.f14846da) {
                    throw new m("read");
                }
                this.uj.wait();
                cVar = this.sp;
            }
            this.f14847i = cVar.uj;
            this.f14849x = null;
            this.sp = null;
            cVar.uj = null;
        }
        return cVar;
    }

    @Override // com.byazt.h.ve
    @NonNull
    public c tt() throws InterruptedException, m {
        synchronized (this.ve) {
            if (this.f14846da) {
                throw new m("obtain");
            }
            c cVar = this.f14848n;
            if (cVar == null) {
                int i10 = this.sl;
                if (i10 < this.f14845c) {
                    this.sl = i10 + 1;
                    return new c(this.tt);
                }
                do {
                    this.ve.wait();
                    if (this.f14846da) {
                        throw new m("obtain");
                    }
                    cVar = this.f14848n;
                } while (cVar == null);
            }
            this.f14848n = cVar.uj;
            if (cVar == this.f14844a) {
                this.f14844a = null;
            }
            cVar.uj = null;
            return cVar;
        }
    }

    public void ve() {
        this.f14846da = true;
        synchronized (this.ve) {
            this.ve.notifyAll();
        }
        synchronized (this.uj) {
            this.uj.notifyAll();
        }
    }

    @Override // com.byazt.h.ve
    public void c(@NonNull c cVar) {
        synchronized (this.ve) {
            c cVar2 = this.f14844a;
            if (cVar2 == null) {
                this.f14844a = cVar;
                this.f14848n = cVar;
            } else {
                cVar2.uj = cVar;
                this.f14844a = cVar;
            }
            this.ve.notify();
        }
    }

    @Override // com.byazt.h.n
    public void tt(@NonNull c cVar) {
        synchronized (this.uj) {
            c cVar2 = this.f14849x;
            if (cVar2 == null) {
                this.f14849x = cVar;
                this.sp = cVar;
                this.uj.notify();
            } else {
                cVar2.uj = cVar;
                this.f14849x = cVar;
            }
        }
    }
}
