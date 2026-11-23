package com.byazt.jb;

import com.byazt.mk.gt;
import com.byazt.mk.my;
import com.byazt.mk.rh;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 63, 42})
public final class i {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ boolean f15734i = true;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final List<com.byazt.jb.ve> f15737da;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final c f15738n;
    public List<com.byazt.jb.ve> sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f15739t;
    public long tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final tt f15740u;
    public final sp uj;
    public final int ve;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f15736c = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ve f15735a = new ve();
    public final ve sp = new ve();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.jb.tt f15741x = null;

    @com.byazt.zqa.c(c = {0, 1, 63, 1943})
    class ve extends com.byazt.mk.c {
        public ve() {
        }

        @Override // com.byazt.mk.c
        public void m_() {
            i.this.tt(com.byazt.jb.tt.CANCEL);
        }

        @Override // com.byazt.mk.c
        public IOException tt(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        public void x() throws IOException {
            if (tt()) {
                throw tt((IOException) null);
            }
        }
    }

    public i(int i10, sp spVar, boolean z10, boolean z11, List<com.byazt.jb.ve> list) {
        if (spVar == null) {
            throw new NullPointerException("connection == null");
        }
        if (list == null) {
            throw new NullPointerException("requestHeaders == null");
        }
        this.ve = i10;
        this.uj = spVar;
        this.tt = spVar.f15757u.uj();
        tt ttVar = new tt(spVar.f15756t.uj());
        this.f15740u = ttVar;
        c cVar = new c();
        this.f15738n = cVar;
        ttVar.tt = z11;
        cVar.tt = z10;
        this.f15737da = list;
    }

    public gt a() {
        return this.sp;
    }

    public int c() {
        return this.ve;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0028  */
    public void da() throws IOException {
        boolean z10;
        boolean zTt;
        if (!f15734i && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            tt ttVar = this.f15740u;
            if (ttVar.tt || !ttVar.f15745c) {
                z10 = false;
            } else {
                c cVar = this.f15738n;
                if (cVar.tt || cVar.f15742c) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
            zTt = tt();
        }
        if (z10) {
            c(com.byazt.jb.tt.CANCEL);
        } else {
            if (zTt) {
                return;
            }
            this.uj.tt(this.ve);
        }
    }

    public void i() {
        boolean zTt;
        if (!f15734i && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            this.f15740u.tt = true;
            zTt = tt();
            notifyAll();
        }
        if (zTt) {
            return;
        }
        this.uj.tt(this.ve);
    }

    public gt n() {
        return this.f15735a;
    }

    public void sl() throws IOException {
        c cVar = this.f15738n;
        if (cVar.f15742c) {
            throw new IOException("stream closed");
        }
        if (cVar.tt) {
            throw new IOException("stream finished");
        }
        if (this.f15741x != null) {
            throw new z(this.f15741x);
        }
    }

    public my sp() {
        return this.f15740u;
    }

    public void t() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            throw new InterruptedIOException();
        }
    }

    public synchronized boolean tt() {
        if (this.f15741x != null) {
            return false;
        }
        tt ttVar = this.f15740u;
        if (ttVar.tt || ttVar.f15745c) {
            c cVar = this.f15738n;
            if ((cVar.tt || cVar.f15742c) && this.f15739t) {
                return false;
            }
        }
        return true;
    }

    public synchronized List<com.byazt.jb.ve> uj() throws IOException {
        List<com.byazt.jb.ve> list;
        if (!ve()) {
            throw new IllegalStateException("servers cannot read response headers");
        }
        this.f15735a.c();
        while (this.sl == null && this.f15741x == null) {
            try {
                t();
            } catch (Throwable th) {
                this.f15735a.x();
                throw th;
            }
        }
        this.f15735a.x();
        list = this.sl;
        if (list == null) {
            throw new z(this.f15741x);
        }
        this.sl = null;
        return list;
    }

    public boolean ve() {
        return this.uj.tt == ((this.ve & 1) == 1);
    }

    public rh x() {
        synchronized (this) {
            if (!this.f15739t && !ve()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.f15738n;
    }

    public void c(com.byazt.jb.tt ttVar) throws IOException {
        if (uj(ttVar)) {
            this.uj.tt(this.ve, ttVar);
        }
    }

    public synchronized void ve(com.byazt.jb.tt ttVar) {
        if (this.f15741x == null) {
            this.f15741x = ttVar;
            notifyAll();
        }
    }

    public void c(List<com.byazt.jb.ve> list) {
        boolean zTt;
        if (!f15734i && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            zTt = true;
            this.f15739t = true;
            if (this.sl == null) {
                this.sl = list;
                zTt = tt();
                notifyAll();
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(this.sl);
                arrayList.add(null);
                arrayList.addAll(list);
                this.sl = arrayList;
            }
        }
        if (zTt) {
            return;
        }
        this.uj.tt(this.ve);
    }

    public void tt(com.byazt.jb.tt ttVar) {
        if (uj(ttVar)) {
            this.uj.c(this.ve, ttVar);
        }
    }

    private boolean uj(com.byazt.jb.tt ttVar) {
        if (!f15734i && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            if (this.f15741x != null) {
                return false;
            }
            if (this.f15740u.tt && this.f15738n.tt) {
                return false;
            }
            this.f15741x = ttVar;
            notifyAll();
            this.uj.tt(this.ve);
            return true;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 63, 64})
    final class c implements rh {
        public static final /* synthetic */ boolean ve = true;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f15742c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final com.byazt.mk.ve f15743n = new com.byazt.mk.ve();
        public boolean tt;

        public c() {
        }

        private void c(boolean z10) throws IOException {
            i iVar;
            long jMin;
            i iVar2;
            synchronized (i.this) {
                i.this.sp.c();
                while (true) {
                    try {
                        iVar = i.this;
                        if (iVar.tt > 0 || this.tt || this.f15742c || iVar.f15741x != null) {
                            break;
                        } else {
                            iVar.t();
                        }
                    } catch (Throwable th) {
                        i.this.sp.x();
                        throw th;
                    }
                }
                iVar.sp.x();
                i.this.sl();
                jMin = Math.min(i.this.tt, this.f15743n.tt());
                iVar2 = i.this;
                iVar2.tt -= jMin;
            }
            iVar2.sp.c();
            try {
                i iVar3 = i.this;
                iVar3.uj.c(iVar3.ve, z10 && jMin == this.f15743n.tt(), this.f15743n, jMin);
            } finally {
                i.this.sp.x();
            }
        }

        @Override // com.byazt.mk.rh
        public void a_(com.byazt.mk.ve veVar, long j10) throws IOException {
            if (!ve && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            this.f15743n.a_(veVar, j10);
            while (this.f15743n.tt() >= 16384) {
                c(false);
            }
        }

        @Override // com.byazt.mk.rh, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (!ve && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            synchronized (i.this) {
                if (this.f15742c) {
                    return;
                }
                if (!i.this.f15738n.tt) {
                    if (this.f15743n.tt() > 0) {
                        while (this.f15743n.tt() > 0) {
                            c(true);
                        }
                    } else {
                        i iVar = i.this;
                        iVar.uj.c(iVar.ve, true, (com.byazt.mk.ve) null, 0L);
                    }
                }
                synchronized (i.this) {
                    this.f15742c = true;
                }
                i.this.uj.tt();
                i.this.da();
            }
        }

        @Override // com.byazt.mk.rh, java.io.Flushable
        public void flush() throws IOException {
            if (!ve && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            synchronized (i.this) {
                i.this.sl();
            }
            while (this.f15743n.tt() > 0) {
                c(false);
                i.this.uj.tt();
            }
        }

        @Override // com.byazt.mk.rh
        public gt c() {
            return i.this.sp;
        }
    }

    public void c(com.byazt.mk.n nVar, int i10) throws IOException {
        if (!f15734i && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        this.f15740u.c(nVar, i10);
    }

    @com.byazt.zqa.c(c = {0, 1, 63, 1937})
    private final class tt implements my {
        public static final /* synthetic */ boolean ve = true;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f15745c;
        public final long sp;
        public boolean tt;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final com.byazt.mk.ve f15746n = new com.byazt.mk.ve();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final com.byazt.mk.ve f15744a = new com.byazt.mk.ve();

        public tt(long j10) {
            this.sp = j10;
        }

        private void tt() throws IOException {
            i.this.f15735a.c();
            while (this.f15744a.tt() == 0 && !this.tt && !this.f15745c) {
                try {
                    i iVar = i.this;
                    if (iVar.f15741x != null) {
                        break;
                    } else {
                        iVar.t();
                    }
                } catch (Throwable th) {
                    i.this.f15735a.x();
                    throw th;
                }
            }
            i.this.f15735a.x();
        }

        private void ve() throws IOException {
            if (this.f15745c) {
                throw new IOException("stream closed");
            }
            if (i.this.f15741x != null) {
                throw new z(i.this.f15741x);
            }
        }

        @Override // com.byazt.mk.my
        public long c(com.byazt.mk.ve veVar, long j10) throws IOException {
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j10)));
            }
            synchronized (i.this) {
                tt();
                ve();
                if (this.f15744a.tt() == 0) {
                    return -1L;
                }
                com.byazt.mk.ve veVar2 = this.f15744a;
                long jC = veVar2.c(veVar, Math.min(j10, veVar2.tt()));
                i iVar = i.this;
                long j11 = iVar.f15736c + jC;
                iVar.f15736c = j11;
                if (j11 >= iVar.uj.f15756t.uj() / 2) {
                    i iVar2 = i.this;
                    iVar2.uj.c(iVar2.ve, iVar2.f15736c);
                    i.this.f15736c = 0L;
                }
                synchronized (i.this.uj) {
                    sp spVar = i.this.uj;
                    long j12 = spVar.f15752da + jC;
                    spVar.f15752da = j12;
                    if (j12 >= spVar.f15756t.uj() / 2) {
                        sp spVar2 = i.this.uj;
                        spVar2.c(0, spVar2.f15752da);
                        i.this.uj.f15752da = 0L;
                    }
                }
                return jC;
            }
        }

        @Override // com.byazt.mk.my, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (i.this) {
                this.f15745c = true;
                this.f15744a.rh();
                i.this.notifyAll();
            }
            i.this.da();
        }

        public void c(com.byazt.mk.n nVar, long j10) throws IOException {
            boolean z10;
            boolean z11;
            boolean z12;
            if (!ve && Thread.holdsLock(i.this)) {
                throw new AssertionError();
            }
            while (j10 > 0) {
                synchronized (i.this) {
                    z10 = this.tt;
                    z11 = true;
                    z12 = this.f15744a.tt() + j10 > this.sp;
                }
                if (z12) {
                    nVar.x(j10);
                    i.this.tt(com.byazt.jb.tt.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z10) {
                    nVar.x(j10);
                    return;
                }
                long jC = nVar.c(this.f15746n, j10);
                if (jC != -1) {
                    j10 -= jC;
                    synchronized (i.this) {
                        if (this.f15744a.tt() != 0) {
                            z11 = false;
                        }
                        this.f15744a.c(this.f15746n);
                        if (z11) {
                            i.this.notifyAll();
                        }
                    }
                } else {
                    throw new EOFException();
                }
            }
        }

        @Override // com.byazt.mk.my
        public gt c() {
            return i.this.f15735a;
        }
    }

    public void c(long j10) {
        this.tt += j10;
        if (j10 > 0) {
            notifyAll();
        }
    }
}
