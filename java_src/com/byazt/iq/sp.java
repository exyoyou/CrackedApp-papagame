package com.byazt.iq;

import com.byazt.eg.da;
import com.byazt.eg.eo;
import com.byazt.eg.gt;
import com.byazt.eg.gu;
import com.byazt.eg.m;
import com.byazt.jb.z;
import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 179, 91})
public final class sp {
    public static final /* synthetic */ boolean uj = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public eo f15466a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.eg.c f15467c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f15468da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final a f15469i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public a.c f15470n;
    public ve sl;
    public final da sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f15471t;
    public final com.byazt.eg.n tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f15472u;
    public final m ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Object f15473x;
    public boolean yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public com.byazt.yx.ve f15474z;

    @com.byazt.zqa.c(c = {0, 1, 179, 180})
    public static final class c extends WeakReference<sp> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object f15475c;

        public c(sp spVar, Object obj) {
            super(spVar);
            this.f15475c = obj;
        }
    }

    public sp(da daVar, com.byazt.eg.c cVar, com.byazt.eg.n nVar, m mVar, Object obj) throws IOException {
        this.sp = daVar;
        this.f15467c = cVar;
        this.tt = nVar;
        this.ve = mVar;
        this.f15469i = new a(cVar, x(), nVar, mVar);
        this.f15473x = obj;
    }

    private Socket sp() {
        if (!uj && !Thread.holdsLock(this.sp)) {
            throw new AssertionError();
        }
        ve veVar = this.sl;
        if (veVar == null || !veVar.f15478c) {
            return null;
        }
        return c(false, false, true);
    }

    private uj x() {
        return com.byazt.kh.c.f16261c.c(this.sp);
    }

    public boolean a() {
        if (this.f15466a != null) {
            return true;
        }
        a.c cVar = this.f15470n;
        return (cVar != null && cVar.c()) || this.f15469i.c();
    }

    public com.byazt.yx.ve c(gu guVar, gt.c cVar, boolean z10) {
        try {
            com.byazt.yx.ve veVarC = c(cVar.tt(), cVar.ve(), cVar.uj(), guVar.rh(), z10).c(guVar, cVar, this);
            synchronized (this.sp) {
                this.f15474z = veVarC;
            }
            return veVarC;
        } catch (IOException e10) {
            throw new n(e10);
        }
    }

    public void n() {
        com.byazt.yx.ve veVar;
        ve veVar2;
        synchronized (this.sp) {
            this.yp = true;
            veVar = this.f15474z;
            veVar2 = this.sl;
        }
        if (veVar != null) {
            veVar.ve();
        } else if (veVar2 != null) {
            veVar2.tt();
        }
    }

    public String toString() {
        ve veVarTt = tt();
        return veVarTt != null ? veVarTt.toString() : this.f15467c.toString();
    }

    public synchronized ve tt() {
        return this.sl;
    }

    public void uj() {
        Socket socketC;
        synchronized (this.sp) {
            socketC = c(true, false, false);
        }
        com.byazt.kh.ve.c(socketC);
    }

    public void ve() {
        Socket socketC;
        synchronized (this.sp) {
            socketC = c(false, true, false);
        }
        com.byazt.kh.ve.c(socketC);
    }

    private void tt(ve veVar) {
        int size = veVar.uj.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (veVar.uj.get(i10).get() == this) {
                veVar.uj.remove(i10);
                return;
            }
        }
        throw new IllegalStateException();
    }

    private ve c(int i10, int i11, int i12, boolean z10, boolean z11) throws IOException {
        while (true) {
            ve veVarC = c(i10, i11, i12, z10);
            synchronized (this.sp) {
                if (veVarC.tt == 0) {
                    return veVarC;
                }
                if (veVarC.c(z11)) {
                    return veVarC;
                }
                uj();
            }
        }
    }

    private ve c(int i10, int i11, int i12, boolean z10) throws IOException {
        Socket socketSp;
        ve veVar;
        Socket socketC;
        eo eoVarTt;
        boolean z11;
        boolean z12;
        a.c cVar;
        synchronized (this.sp) {
            if (!this.f15472u) {
                if (this.f15474z == null) {
                    if (!this.yp) {
                        socketSp = sp();
                        veVar = this.sl;
                        socketC = null;
                        if (veVar == null) {
                            veVar = null;
                        }
                        if (veVar == null) {
                            com.byazt.kh.c.f16261c.c(this.sp, this.f15467c, this, null);
                            ve veVar2 = this.sl;
                            if (veVar2 != null) {
                                veVar = veVar2;
                                z11 = true;
                                eoVarTt = null;
                            } else {
                                eoVarTt = this.f15466a;
                            }
                        } else {
                            eoVarTt = null;
                        }
                        z11 = false;
                    } else {
                        throw new IOException("Canceled");
                    }
                } else {
                    throw new IllegalStateException("codec != null");
                }
            } else {
                throw new IllegalStateException("released");
            }
        }
        com.byazt.kh.ve.c(socketSp);
        if (veVar != null) {
            return veVar;
        }
        if (eoVarTt != null || ((cVar = this.f15470n) != null && cVar.c())) {
            z12 = false;
        } else {
            this.f15470n = this.f15469i.tt();
            z12 = true;
        }
        synchronized (this.sp) {
            if (this.yp) {
                throw new IOException("Canceled");
            }
            if (z12) {
                List<eo> listVe = this.f15470n.ve();
                int size = listVe.size();
                for (int i13 = 0; i13 < size; i13++) {
                    eo eoVar = listVe.get(i13);
                    com.byazt.kh.c.f16261c.c(this.sp, this.f15467c, this, eoVar);
                    ve veVar3 = this.sl;
                    if (veVar3 != null) {
                        this.f15466a = eoVar;
                        veVar = veVar3;
                        z11 = true;
                        break;
                    }
                }
            }
            if (!z11) {
                if (eoVarTt == null) {
                    eoVarTt = this.f15470n.tt();
                }
                this.f15466a = eoVarTt;
                this.f15468da = 0;
                veVar = new ve(this.sp, eoVarTt);
                c(veVar, false);
            }
        }
        if (z11) {
            return veVar;
        }
        veVar.c(i10, i11, i12, z10, this.tt, this.ve);
        x().tt(veVar.c());
        synchronized (this.sp) {
            this.f15471t = true;
            com.byazt.kh.c.f16261c.tt(this.sp, veVar);
            if (veVar.n()) {
                socketC = com.byazt.kh.c.f16261c.c(this.sp, this.f15467c, this);
                veVar = this.sl;
            }
        }
        com.byazt.kh.ve.c(socketC);
        return veVar;
    }

    public void c(boolean z10, com.byazt.yx.ve veVar, long j10, IOException iOException) {
        Socket socketC;
        synchronized (this.sp) {
            if (veVar != null) {
                if (veVar == this.f15474z) {
                    if (!z10) {
                        this.sl.tt++;
                    }
                    socketC = c(z10, false, true);
                }
            }
            throw new IllegalStateException("expected " + this.f15474z + " but was " + veVar);
        }
        com.byazt.kh.ve.c(socketC);
        if (iOException != null) {
            this.ve.c(this.tt, iOException);
        }
    }

    public com.byazt.yx.ve c() {
        com.byazt.yx.ve veVar;
        synchronized (this.sp) {
            veVar = this.f15474z;
        }
        return veVar;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0059  */
    private Socket c(boolean z10, boolean z11, boolean z12) {
        Socket socketVe;
        if (!uj && !Thread.holdsLock(this.sp)) {
            throw new AssertionError();
        }
        if (z12) {
            this.f15474z = null;
        }
        if (z11) {
            this.f15472u = true;
        }
        ve veVar = this.sl;
        if (veVar == null) {
            return null;
        }
        if (z10) {
            veVar.f15478c = true;
        }
        if (this.f15474z != null) {
            return null;
        }
        if (!this.f15472u && !veVar.f15478c) {
            return null;
        }
        tt(veVar);
        if (this.sl.uj.isEmpty()) {
            this.sl.f15481n = System.nanoTime();
            if (com.byazt.kh.c.f16261c.c(this.sp, this.sl)) {
                socketVe = this.sl.ve();
            } else {
                socketVe = null;
            }
        } else {
            socketVe = null;
        }
        this.sl = null;
        return socketVe;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0043  */
    public void c(IOException iOException) {
        boolean z10;
        Socket socketC;
        synchronized (this.sp) {
            if (iOException instanceof z) {
                com.byazt.jb.tt ttVar = ((z) iOException).f15808c;
                com.byazt.jb.tt ttVar2 = com.byazt.jb.tt.REFUSED_STREAM;
                if (ttVar == ttVar2) {
                    this.f15468da++;
                }
                if (ttVar != ttVar2 || this.f15468da > 1) {
                    this.f15466a = null;
                    z10 = true;
                } else {
                    z10 = false;
                }
            } else {
                ve veVar = this.sl;
                if (veVar == null || (veVar.n() && !(iOException instanceof com.byazt.jb.c))) {
                    z10 = false;
                } else {
                    if (this.sl.tt == 0) {
                        eo eoVar = this.f15466a;
                        if (eoVar != null && iOException != null) {
                            this.f15469i.c(eoVar, iOException);
                        }
                        this.f15466a = null;
                    }
                    z10 = true;
                }
            }
            socketC = c(z10, false, true);
        }
        com.byazt.kh.ve.c(socketC);
    }

    public void c(ve veVar, boolean z10) {
        if (!uj && !Thread.holdsLock(this.sp)) {
            throw new AssertionError();
        }
        if (this.sl == null) {
            this.sl = veVar;
            this.f15471t = z10;
            veVar.uj.add(new c(this, this.f15473x));
            return;
        }
        throw new IllegalStateException();
    }

    public Socket c(ve veVar) {
        if (!uj && !Thread.holdsLock(this.sp)) {
            throw new AssertionError();
        }
        if (this.f15474z == null && this.sl.uj.size() == 1) {
            Reference<sp> reference = this.sl.uj.get(0);
            Socket socketC = c(true, false, false);
            this.sl = veVar;
            veVar.uj.add(reference);
            return socketC;
        }
        throw new IllegalStateException();
    }
}
