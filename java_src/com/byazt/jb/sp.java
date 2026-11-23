package com.byazt.jb;

import android.os.SystemClock;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.uc.crashsdk.export.LogType;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 63, 91})
public final class sp implements Closeable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ExecutorService f15750c = new com.byazt.jtc.uj(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), com.byazt.kh.ve.c("OkHttp Http2Connection", true));
    public static final /* synthetic */ boolean my = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f15751a;
    public final ExecutorService gt;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final u f15753i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final da f15754m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f15755n;
    public final ve nu;
    public int qy;
    public final Set<Integer> rh;
    public Map<Integer, t> rl;
    public long sl;
    public int sp;
    public final boolean tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final yp f15757u;
    public final tt ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f15758x;
    public boolean yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final Socket f15759z;
    public final Map<Integer, i> uj = new LinkedHashMap();

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public long f15752da = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public yp f15756t = new yp();

    @com.byazt.zqa.c(c = {0, 1, 63, TypedValues.Custom.TYPE_BOOLEAN})
    public static abstract class tt {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final tt f15775a = new tt() { // from class: com.byazt.jb.sp.tt.1
            @Override // com.byazt.jb.sp.tt
            public void c(i iVar) throws IOException {
                iVar.c(com.byazt.jb.tt.REFUSED_STREAM);
            }
        };

        public abstract void c(i iVar) throws IOException;

        public void c(sp spVar) {
        }
    }

    public sp(c cVar) {
        yp ypVar = new yp();
        this.f15757u = ypVar;
        this.yp = false;
        this.rh = new LinkedHashSet();
        this.f15753i = cVar.f15772a;
        boolean z10 = cVar.sp;
        this.tt = z10;
        this.ve = cVar.f15774n;
        int i10 = z10 ? 1 : 2;
        this.sp = i10;
        if (z10) {
            this.sp = i10 + 2;
        }
        this.qy = z10 ? 1 : 2;
        if (z10) {
            this.f15756t.c(7, 16777216);
        }
        String str = cVar.tt;
        this.f15755n = str;
        this.gt = new com.byazt.jtc.uj(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), com.byazt.kh.ve.c(com.byazt.kh.ve.c("OkHttp %s Push Observer", str), true));
        ypVar.c(7, 65535);
        ypVar.c(5, 16384);
        this.sl = ypVar.uj();
        this.f15759z = cVar.f15773c;
        this.f15754m = new da(cVar.uj, z10);
        this.nu = new ve(new x(cVar.ve, z10));
    }

    public synchronized i c(int i10) {
        return this.uj.get(Integer.valueOf(i10));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        c(com.byazt.jb.tt.NO_ERROR, com.byazt.jb.tt.CANCEL);
    }

    public synchronized i tt(int i10) {
        i iVarRemove;
        iVarRemove = this.uj.remove(Integer.valueOf(i10));
        notifyAll();
        return iVarRemove;
    }

    public boolean uj(int i10) {
        return i10 != 0 && (i10 & 1) == 0;
    }

    public synchronized t ve(int i10) {
        Map<Integer, t> map = this.rl;
        if (map == null) {
            return null;
        }
        return map.remove(Integer.valueOf(i10));
    }

    public synchronized int c() {
        return this.f15757u.ve(Integer.MAX_VALUE);
    }

    public synchronized boolean uj() {
        return this.f15758x;
    }

    public void ve() throws IOException {
        c(true);
    }

    public i c(List<com.byazt.jb.ve> list, boolean z10) throws IOException {
        return tt(0, list, z10);
    }

    public void ve(final int i10, final com.byazt.jb.tt ttVar) {
        this.gt.execute(new com.byazt.kh.tt("OkHttp %s Push Reset[%s]", new Object[]{this.f15755n, Integer.valueOf(i10)}) { // from class: com.byazt.jb.sp.7
            @Override // com.byazt.kh.tt
            public void ve() {
                synchronized (sp.this) {
                    sp.this.rh.remove(Integer.valueOf(i10));
                }
            }
        });
    }

    @com.byazt.zqa.c(c = {0, 1, 63, 180})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Socket f15773c;
        public boolean sp;
        public String tt;
        public com.byazt.mk.uj uj;
        public com.byazt.mk.n ve;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public tt f15774n = tt.f15775a;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public u f15772a = u.f15785c;

        public c(boolean z10) {
            this.sp = z10;
        }

        public c c(Socket socket, String str, com.byazt.mk.n nVar, com.byazt.mk.uj ujVar) {
            this.f15773c = socket;
            this.tt = str;
            this.ve = nVar;
            this.uj = ujVar;
            return this;
        }

        public c c(tt ttVar) {
            this.f15774n = ttVar;
            return this;
        }

        public sp c() {
            return new sp(this);
        }
    }

    private i tt(int i10, List<com.byazt.jb.ve> list, boolean z10) throws IOException {
        int i11;
        i iVar;
        boolean z11;
        boolean z12 = !z10;
        synchronized (this.f15754m) {
            synchronized (this) {
                if (!this.f15758x) {
                    i11 = this.sp;
                    this.sp = i11 + 2;
                    iVar = new i(i11, this, z12, false, list);
                    z11 = !z10 || this.sl == 0 || iVar.tt == 0;
                    if (iVar.tt()) {
                        this.uj.put(Integer.valueOf(i11), iVar);
                    }
                } else {
                    throw new com.byazt.jb.c();
                }
            }
            if (i10 == 0) {
                this.f15754m.c(z12, i11, i10, list);
            } else if (!this.tt) {
                this.f15754m.c(i10, i11, list);
            } else {
                throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
            }
        }
        if (z11) {
            this.f15754m.tt();
        }
        return iVar;
    }

    public void c(int i10, boolean z10, com.byazt.mk.ve veVar, long j10) throws IOException {
        long j11;
        int iMin;
        long j12;
        if (j10 == 0) {
            this.f15754m.c(z10, i10, veVar, 0);
            return;
        }
        while (j10 > 0) {
            synchronized (this) {
                while (true) {
                    try {
                        j11 = this.sl;
                        if (j11 <= 0) {
                            if (this.uj.containsKey(Integer.valueOf(i10))) {
                                wait();
                            } else {
                                throw new IOException("stream closed");
                            }
                        }
                    } catch (InterruptedException unused) {
                        throw new InterruptedIOException();
                    }
                }
                iMin = Math.min((int) Math.min(j10, j11), this.f15754m.ve());
                j12 = iMin;
                this.sl -= j12;
            }
            j10 -= j12;
            this.f15754m.c(z10 && j10 == 0, i10, veVar, iMin);
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 63, LogType.UNEXP_ANR})
    class ve extends com.byazt.kh.tt implements x.tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final x f15776c;

        public ve(x xVar) {
            super("OkHttp %s", sp.this.f15755n);
            this.f15776c = xVar;
        }

        @Override // com.byazt.jb.x.tt
        public void c(boolean z10, int i10, com.byazt.mk.n nVar, int i11) throws IOException {
            if (sp.this.uj(i10)) {
                sp.this.c(i10, nVar, i11, z10);
                return;
            }
            i iVarC = sp.this.c(i10);
            if (iVarC == null) {
                sp.this.c(i10, com.byazt.jb.tt.PROTOCOL_ERROR);
                nVar.x(i11);
            } else {
                iVarC.c(nVar, i11);
                if (z10) {
                    iVarC.i();
                }
            }
        }

        @Override // com.byazt.kh.tt
        public void ve() throws Throwable {
            com.byazt.jb.tt ttVar;
            sp spVar;
            com.byazt.jb.tt ttVar2 = com.byazt.jb.tt.INTERNAL_ERROR;
            try {
                try {
                    try {
                        this.f15776c.c(this);
                        while (this.f15776c.c(false, (x.tt) this)) {
                        }
                        try {
                            sp.this.c(com.byazt.jb.tt.NO_ERROR, com.byazt.jb.tt.CANCEL);
                        } catch (IOException unused) {
                            ttVar = com.byazt.jb.tt.PROTOCOL_ERROR;
                            spVar = sp.this;
                            spVar.c(ttVar, ttVar);
                        } catch (NullPointerException unused2) {
                            ttVar = com.byazt.jb.tt.PROTOCOL_ERROR;
                            spVar = sp.this;
                            spVar.c(ttVar, ttVar);
                        }
                    } catch (Throwable th) {
                        th = th;
                        try {
                            sp.this.c(ttVar2, ttVar2);
                        } catch (Exception unused3) {
                        }
                        com.byazt.kh.ve.c(this.f15776c);
                        throw th;
                    }
                } catch (IOException unused4) {
                } catch (NullPointerException unused5) {
                } catch (Throwable th2) {
                    th = th2;
                    sp.this.c(ttVar2, ttVar2);
                    com.byazt.kh.ve.c(this.f15776c);
                    throw th;
                }
            } catch (Exception unused6) {
            }
            com.byazt.kh.ve.c(this.f15776c);
        }

        @Override // com.byazt.jb.x.tt
        public void c(boolean z10, int i10, int i11, List<com.byazt.jb.ve> list) {
            if (sp.this.uj(i10)) {
                sp.this.c(i10, list, z10);
                return;
            }
            synchronized (sp.this) {
                i iVarC = sp.this.c(i10);
                if (iVarC == null) {
                    sp spVar = sp.this;
                    if (spVar.f15758x) {
                        return;
                    }
                    if (i10 <= spVar.f15751a) {
                        return;
                    }
                    if (i10 % 2 == spVar.sp % 2) {
                        return;
                    }
                    final i iVar = new i(i10, sp.this, false, z10, list);
                    sp spVar2 = sp.this;
                    spVar2.f15751a = i10;
                    spVar2.uj.put(Integer.valueOf(i10), iVar);
                    try {
                        sp.f15750c.execute(new com.byazt.kh.tt("OkHttp %s stream %d", new Object[]{sp.this.f15755n, Integer.valueOf(i10)}) { // from class: com.byazt.jb.sp.ve.1
                            @Override // com.byazt.kh.tt
                            public void ve() {
                                try {
                                    sp.this.ve.c(iVar);
                                } catch (IOException e10) {
                                    com.byazt.xb.n.tt().c(4, "Http2Connection.Listener failure for " + sp.this.f15755n, e10);
                                    try {
                                        iVar.c(com.byazt.jb.tt.PROTOCOL_ERROR);
                                    } catch (IOException unused) {
                                    }
                                }
                            }
                        });
                    } catch (Throwable unused) {
                    }
                    return;
                }
                iVarC.c(list);
                if (z10) {
                    iVarC.i();
                }
            }
        }

        @Override // com.byazt.jb.x.tt
        public void c(int i10, com.byazt.jb.tt ttVar) {
            if (sp.this.uj(i10)) {
                sp.this.ve(i10, ttVar);
                return;
            }
            i iVarTt = sp.this.tt(i10);
            if (iVarTt != null) {
                iVarTt.ve(ttVar);
            }
        }

        @Override // com.byazt.jb.x.tt
        public void c(boolean z10, yp ypVar) {
            i[] iVarArr;
            long j10;
            int i10;
            synchronized (sp.this) {
                int iUj = sp.this.f15757u.uj();
                if (z10) {
                    sp.this.f15757u.c();
                }
                sp.this.f15757u.c(ypVar);
                c(ypVar);
                int iUj2 = sp.this.f15757u.uj();
                iVarArr = null;
                if (iUj2 == -1 || iUj2 == iUj) {
                    j10 = 0;
                } else {
                    j10 = iUj2 - iUj;
                    sp spVar = sp.this;
                    if (!spVar.yp) {
                        spVar.c(j10);
                        sp.this.yp = true;
                    }
                    if (!sp.this.uj.isEmpty()) {
                        iVarArr = (i[]) sp.this.uj.values().toArray(new i[sp.this.uj.size()]);
                    }
                }
                try {
                    sp.f15750c.execute(new com.byazt.kh.tt("OkHttp %s settings", sp.this.f15755n) { // from class: com.byazt.jb.sp.ve.2
                        @Override // com.byazt.kh.tt
                        public void ve() {
                            sp spVar2 = sp.this;
                            spVar2.ve.c(spVar2);
                        }
                    });
                } catch (Throwable unused) {
                }
            }
            if (iVarArr == null || j10 == 0) {
                return;
            }
            for (i iVar : iVarArr) {
                synchronized (iVar) {
                    iVar.c(j10);
                }
            }
        }

        private void c(final yp ypVar) {
            try {
                sp.f15750c.execute(new com.byazt.kh.tt("OkHttp %s ACK Settings", new Object[]{sp.this.f15755n}) { // from class: com.byazt.jb.sp.ve.3
                    @Override // com.byazt.kh.tt
                    public void ve() {
                        try {
                            sp.this.f15754m.c(ypVar);
                        } catch (IOException unused) {
                        }
                    }
                });
            } catch (Throwable unused) {
            }
        }

        @Override // com.byazt.jb.x.tt
        public void c(boolean z10, int i10, int i11) {
            if (z10) {
                t tVarVe = sp.this.ve(i10);
                if (tVarVe != null) {
                    tVarVe.tt();
                    return;
                }
                return;
            }
            sp.this.c(true, i10, i11, (t) null);
        }

        @Override // com.byazt.jb.x.tt
        public void c(int i10, com.byazt.jb.tt ttVar, com.byazt.mk.a aVar) {
            i[] iVarArr;
            synchronized (sp.this) {
                iVarArr = (i[]) sp.this.uj.values().toArray(new i[sp.this.uj.size()]);
                sp.this.f15758x = true;
            }
            for (i iVar : iVarArr) {
                if (iVar.c() > i10 && iVar.ve()) {
                    iVar.ve(com.byazt.jb.tt.REFUSED_STREAM);
                    sp.this.tt(iVar.c());
                }
            }
        }

        @Override // com.byazt.jb.x.tt
        public void c(int i10, long j10) {
            if (i10 == 0) {
                synchronized (sp.this) {
                    sp spVar = sp.this;
                    spVar.sl += j10;
                    spVar.notifyAll();
                }
                return;
            }
            i iVarC = sp.this.c(i10);
            if (iVarC != null) {
                synchronized (iVarC) {
                    iVarC.c(j10);
                }
            }
        }

        @Override // com.byazt.jb.x.tt
        public void c(int i10, int i11, List<com.byazt.jb.ve> list) {
            sp.this.c(i11, list);
        }
    }

    public void c(long j10) {
        this.sl += j10;
        if (j10 > 0) {
            notifyAll();
        }
    }

    public void c(final int i10, final com.byazt.jb.tt ttVar) {
        try {
            f15750c.execute(new com.byazt.kh.tt("OkHttp %s stream %d", new Object[]{this.f15755n, Integer.valueOf(i10)}) { // from class: com.byazt.jb.sp.1
                @Override // com.byazt.kh.tt
                public void ve() {
                    try {
                        sp.this.tt(i10, ttVar);
                    } catch (IOException unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public void c(final int i10, final long j10) {
        try {
            f15750c.execute(new com.byazt.kh.tt("OkHttp Window Update %s stream %d", new Object[]{this.f15755n, Integer.valueOf(i10)}) { // from class: com.byazt.jb.sp.2
                @Override // com.byazt.kh.tt
                public void ve() {
                    try {
                        sp.this.f15754m.c(i10, j10);
                    } catch (IOException unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public void c(final boolean z10, final int i10, final int i11, final t tVar) {
        try {
            f15750c.execute(new com.byazt.kh.tt("OkHttp %s ping %08x%08x", new Object[]{this.f15755n, Integer.valueOf(i10), Integer.valueOf(i11)}) { // from class: com.byazt.jb.sp.3
                @Override // com.byazt.kh.tt
                public void ve() {
                    try {
                        sp.this.tt(z10, i10, i11, tVar);
                    } catch (IOException unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public void tt(int i10, com.byazt.jb.tt ttVar) throws IOException {
        this.f15754m.c(i10, ttVar);
    }

    public void c(com.byazt.jb.tt ttVar) throws IOException {
        synchronized (this.f15754m) {
            synchronized (this) {
                if (this.f15758x) {
                    return;
                }
                this.f15758x = true;
                this.f15754m.c(this.f15751a, ttVar, com.byazt.kh.ve.f16263c);
            }
        }
    }

    public void tt(boolean z10, int i10, int i11, t tVar) throws IOException {
        synchronized (this.f15754m) {
            if (tVar != null) {
                tVar.c();
                this.f15754m.c(z10, i10, i11);
            } else {
                this.f15754m.c(z10, i10, i11);
            }
            throw th;
        }
    }

    public void tt() throws IOException {
        this.f15754m.tt();
    }

    public void c(com.byazt.jb.tt ttVar, com.byazt.jb.tt ttVar2) throws IOException {
        i[] iVarArr;
        if (!my && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        t[] tVarArr = null;
        try {
            c(ttVar);
            e = null;
        } catch (IOException e10) {
            e = e10;
        }
        synchronized (this) {
            if (this.uj.isEmpty()) {
                iVarArr = null;
            } else {
                iVarArr = (i[]) this.uj.values().toArray(new i[this.uj.size()]);
                this.uj.clear();
            }
            Map<Integer, t> map = this.rl;
            if (map != null) {
                t[] tVarArr2 = (t[]) map.values().toArray(new t[this.rl.size()]);
                this.rl = null;
                tVarArr = tVarArr2;
            }
        }
        if (iVarArr != null) {
            for (i iVar : iVarArr) {
                try {
                    iVar.c(ttVar2);
                } catch (IOException e11) {
                    if (e != null) {
                        e = e11;
                    }
                }
            }
        }
        if (tVarArr != null) {
            for (t tVar : tVarArr) {
                tVar.ve();
            }
        }
        try {
            this.f15754m.close();
        } catch (IOException e12) {
            if (e == null) {
                e = e12;
            }
        }
        try {
            this.f15759z.close();
        } catch (IOException e13) {
            e = e13;
        }
        if (e != null) {
            throw e;
        }
    }

    public void c(boolean z10) throws IOException {
        if (z10) {
            this.f15754m.c();
            this.f15754m.tt(this.f15756t);
            int iUj = this.f15756t.uj();
            if (iUj != 65535) {
                this.f15754m.c(0, iUj - 65535);
            }
        }
        com.byazt.jtc.ve veVar = new com.byazt.jtc.ve(this.nu, "Http2Connection");
        veVar.setName("csj_http2_connection" + SystemClock.uptimeMillis());
        veVar.start();
    }

    public void c(final int i10, final List<com.byazt.jb.ve> list) {
        synchronized (this) {
            if (this.rh.contains(Integer.valueOf(i10))) {
                c(i10, com.byazt.jb.tt.PROTOCOL_ERROR);
            } else {
                this.rh.add(Integer.valueOf(i10));
                this.gt.execute(new com.byazt.kh.tt("OkHttp %s Push Request[%s]", new Object[]{this.f15755n, Integer.valueOf(i10)}) { // from class: com.byazt.jb.sp.4
                    @Override // com.byazt.kh.tt
                    public void ve() {
                        if (sp.this.f15753i.c(i10, list)) {
                            try {
                                sp.this.f15754m.c(i10, com.byazt.jb.tt.CANCEL);
                                synchronized (sp.this) {
                                    try {
                                        sp.this.rh.remove(Integer.valueOf(i10));
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                            } catch (IOException unused) {
                            }
                        }
                    }
                });
            }
        }
    }

    public void c(final int i10, final List<com.byazt.jb.ve> list, final boolean z10) {
        this.gt.execute(new com.byazt.kh.tt("OkHttp %s Push Headers[%s]", new Object[]{this.f15755n, Integer.valueOf(i10)}) { // from class: com.byazt.jb.sp.5
            @Override // com.byazt.kh.tt
            public void ve() {
                boolean zC = sp.this.f15753i.c(i10, list, z10);
                if (zC) {
                    try {
                        sp.this.f15754m.c(i10, com.byazt.jb.tt.CANCEL);
                    } catch (IOException unused) {
                        return;
                    }
                }
                if (!zC && !z10) {
                    return;
                }
                synchronized (sp.this) {
                    sp.this.rh.remove(Integer.valueOf(i10));
                }
            }
        });
    }

    public void c(final int i10, com.byazt.mk.n nVar, final int i11, final boolean z10) throws IOException {
        final com.byazt.mk.ve veVar = new com.byazt.mk.ve();
        long j10 = i11;
        nVar.c(j10);
        nVar.c(veVar, j10);
        if (veVar.tt() == j10) {
            this.gt.execute(new com.byazt.kh.tt("OkHttp %s Push Data[%s]", new Object[]{this.f15755n, Integer.valueOf(i10)}) { // from class: com.byazt.jb.sp.6
                @Override // com.byazt.kh.tt
                public void ve() {
                    try {
                        boolean zC = sp.this.f15753i.c(i10, veVar, i11, z10);
                        if (zC) {
                            sp.this.f15754m.c(i10, com.byazt.jb.tt.CANCEL);
                        }
                        if (!zC && !z10) {
                            return;
                        }
                        synchronized (sp.this) {
                            sp.this.rh.remove(Integer.valueOf(i10));
                        }
                    } catch (IOException unused) {
                    }
                }
            });
            return;
        }
        throw new IOException(veVar.tt() + " != " + i11);
    }
}
