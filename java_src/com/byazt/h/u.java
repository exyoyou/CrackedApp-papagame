package com.byazt.h;

import android.os.Process;
import android.text.TextUtils;
import com.byazt.m.BaseException;
import com.byazt.t.DownloadInfo;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.umeng.analytics.pro.aw;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 518, 67})
public class u implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile long f14850a;
    public com.byazt.w.n bx;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile i f14851c;
    public boolean cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f14852d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public String f14853da;
    public int eo;
    public volatile boolean gr;
    public volatile long gt;
    public Future gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14854h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f14855i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public com.byazt.t.uj f14856m;
    public volatile boolean md;
    public volatile long my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile long f14857n;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public boolean f14858nb;
    public int or;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Thread f14859p;
    public boolean pf;
    public BaseException qp;
    public volatile long qy;
    public long rh;
    public final a sl;
    public volatile long sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ve f14860t;
    public nu tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final DownloadInfo f14861u;
    public volatile long uj;
    public final int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f14862x;
    public final com.byazt.k.c yp;
    public volatile boolean yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public com.byazt.hs.i f14863z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public long f14864zb;
    public volatile boolean zm;
    public final List<i> nu = new ArrayList();
    public volatile long rl = -1;

    public u(DownloadInfo downloadInfo, sl slVar, ve veVar, nu nuVar, int i10) {
        this.f14861u = downloadInfo;
        this.sl = slVar;
        this.f14860t = veVar;
        this.yp = com.byazt.k.c.c(downloadInfo.getId());
        this.tt = nuVar;
        this.ve = i10;
    }

    private boolean c(i iVar) throws BaseException {
        sl();
        while (true) {
            try {
                tt(iVar);
                uj(iVar);
                i();
                return true;
            } catch (da e10) {
                this.qp = e10;
                throw e10;
            } catch (Throwable th) {
                try {
                    com.byazt.x.c.n("SegmentReader", "download: e = " + th + ", threadIndex = " + this.ve + ", reconnect = " + this.zm + ", closed = " + this.gr);
                    if (this.gr) {
                        i();
                        return false;
                    }
                    if (this.zm) {
                        this.zm = false;
                        try {
                            Thread.interrupted();
                        } catch (Throwable th2) {
                            com.byazt.nr.m.c(th2);
                        }
                        if (this.yv) {
                            this.yv = false;
                            throw new da(5, "download");
                        }
                    } else {
                        com.byazt.nr.m.c(th);
                        if (th instanceof BaseException) {
                            e = th;
                        } else {
                            try {
                                com.byazt.w.a.c((Throwable) th, "download");
                                e = null;
                            } catch (BaseException e11) {
                                e = e11;
                            }
                        }
                        if (e == null || !c(iVar, e)) {
                            i();
                            return false;
                        }
                    }
                    i();
                } catch (Throwable th3) {
                    i();
                    throw th3;
                }
            }
        }
    }

    private void da() {
        com.byazt.hs.i iVar = this.f14863z;
        if (iVar != null) {
            try {
                com.byazt.x.c.ve("SegmentReader", "closeConnection: thread = " + this.ve);
                iVar.uj();
                iVar.ve();
            } catch (Throwable unused) {
            }
        }
    }

    private void i() {
        this.f14864zb = this.uj;
        this.uj = -1L;
        this.f14857n = -1L;
        this.f14850a = -1L;
        this.sp = -1L;
        da();
    }

    private void sl() {
        this.cu = false;
        t();
    }

    private void t() {
        this.f14852d = this.tt.uj ? this.f14861u.getRetryCount() : this.f14861u.getBackUpUrlRetryCount();
        this.eo = 0;
    }

    private void tt(i iVar) throws BaseException, com.byazt.m.i {
        ve(iVar);
        this.sl.c(this, iVar, this.tt, this.f14856m);
        this.tt.ve();
    }

    private long u() {
        long j10 = this.my;
        this.my = 0L;
        if (j10 <= 0) {
            return Long.MAX_VALUE;
        }
        return j10;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0156 */
    /* JADX WARN: Code duplicated, block: B:131:0x025b  */
    /* JADX WARN: Code duplicated, block: B:167:0x02ea A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:172:0x02fb A[PHI: r15
      0x02fb: PHI (r15v7 com.byazt.h.c) = (r15v6 com.byazt.h.c), (r15v9 com.byazt.h.c) binds: [B:166:0x02e8, B:169:0x02f1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:174:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:177:0x030b  */
    /* JADX WARN: Code duplicated, block: B:179:0x0319  */
    /* JADX WARN: Code duplicated, block: B:183:0x0322  */
    /* JADX WARN: Code duplicated, block: B:202:0x0352  */
    /* JADX WARN: Code duplicated, block: B:205:0x035f  */
    /* JADX WARN: Code duplicated, block: B:211:0x0375  */
    /* JADX WARN: Code duplicated, block: B:231:0x02ec A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:245:0x0173 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:246:0x0180 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x017a A[Catch: all -> 0x026c, BaseException -> 0x026e, TryCatch #19 {BaseException -> 0x026e, all -> 0x026c, blocks: (B:27:0x006e, B:28:0x0072, B:49:0x00db, B:87:0x0168, B:89:0x0173, B:90:0x017a, B:92:0x0180, B:94:0x0186, B:97:0x018f, B:98:0x0193, B:132:0x025d), top: B:241:0x005d }] */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x0157, code lost:
    
        r0 = th;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void uj(com.byazt.h.i r32) throws com.byazt.m.BaseException {
        /*
            Method dump skipped, instruction units count: 925
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.h.u.uj(com.byazt.h.i):void");
    }

    private void ve(i iVar) throws BaseException {
        try {
            try {
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    this.f14857n = 0L;
                    this.uj = jCurrentTimeMillis;
                    this.rh = iVar.n();
                    this.gt = iVar.a();
                    if (this.gt > 0 && this.rh > this.gt) {
                        throw new da(6, "createConn, ".concat(String.valueOf(iVar)));
                    }
                    this.bx = new com.byazt.w.n();
                    List<com.byazt.t.ve> listC = com.byazt.w.a.c(this.f14861u.getExtraHeaders(), this.f14861u.geteTag(), this.rh, this.gt);
                    listC.add(new com.byazt.t.ve("Segment-Index", String.valueOf(iVar.sp())));
                    listC.add(new com.byazt.t.ve("Thread-Index", String.valueOf(this.ve)));
                    com.byazt.w.a.c(listC, this.f14861u);
                    com.byazt.w.a.tt(listC, this.f14861u);
                    String strReplaceFirst = this.tt.f14813c;
                    if (this.cu && !TextUtils.isEmpty(strReplaceFirst) && strReplaceFirst.startsWith("https")) {
                        strReplaceFirst = strReplaceFirst.replaceFirst("https", "http");
                    }
                    String str = this.tt.tt;
                    com.byazt.x.c.ve("SegmentReader", "createConnectionBegin: url = " + strReplaceFirst + ", ip = " + str + ", segment = " + iVar + ", threadIndex = " + this.ve);
                    this.f14862x = strReplaceFirst;
                    this.f14855i = str;
                    com.byazt.hs.i iVarC = com.byazt.zz.ve.c(this.f14861u.isNeedDefaultHttpServiceBackUp(), this.f14861u.getMaxBytes(), strReplaceFirst, str, listC, 0, jCurrentTimeMillis - this.f14864zb > BaseCloudFileManager.ACK_TIMEOUT && this.yp.tt("monitor_download_connect") > 0, this.f14861u);
                    if (iVarC == null) {
                        throw new BaseException(1022, new IOException("download can't continue, chunk connection is null"));
                    }
                    this.f14863z = iVarC;
                    this.f14856m = new com.byazt.t.uj(strReplaceFirst, iVarC);
                    if (this.gr) {
                        throw new m("createConn");
                    }
                    if (iVarC instanceof com.byazt.hs.c) {
                        this.f14853da = ((com.byazt.hs.c) iVarC).n();
                    }
                    com.byazt.nr.m.c("SegmentReader", "createConnectionSuccess: url = " + strReplaceFirst + ", ip = " + str + ", hostRealIp = " + this.f14853da + ", threadIndex = " + this.ve);
                    this.f14857n = System.currentTimeMillis();
                } catch (BaseException e10) {
                    throw e10;
                }
            } catch (Throwable th) {
                com.byazt.w.a.c(th, "createConn");
            }
        } catch (Throwable th2) {
            this.f14857n = System.currentTimeMillis();
            throw th2;
        }
    }

    public void a() {
        c(false);
    }

    public void n() {
        com.byazt.x.c.ve("SegmentReader", "close: threadIndex = " + this.ve);
        synchronized (this) {
            this.gr = true;
            this.md = true;
        }
        da();
        Future future = this.gu;
        if (future != null) {
            this.gu = null;
            try {
                future.cancel(true);
            } catch (Throwable th) {
                com.byazt.nr.m.c(th);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        a aVar;
        a aVar2;
        Process.setThreadPriority(10);
        try {
            this.f14859p = Thread.currentThread();
            this.sl.c(this);
            this.tt.c(this);
            while (true) {
                i iVarC = this.sl.c(this, this.tt);
                if (iVarC == null) {
                    com.byazt.x.c.ve("SegmentReader", "no more segment, thread_index = " + this.ve);
                } else {
                    this.f14851c = iVarC;
                    try {
                        try {
                            if (c(iVarC)) {
                                this.nu.add(iVarC);
                                this.f14851c = null;
                                aVar2 = this.sl;
                            } else {
                                if (!this.gr) {
                                    com.byazt.x.c.n("SegmentReader", "download segment failed, segment = " + iVarC + ", thread_index = " + this.ve + ", failedException = " + this.qp);
                                }
                                this.f14851c = null;
                                aVar = this.sl;
                                aVar.c(this, iVarC);
                            }
                        } catch (da e10) {
                            com.byazt.x.c.n("SegmentReader", "run: SegmentApplyException, e = ".concat(String.valueOf(e10)));
                            int i10 = this.f14854h;
                            if (i10 >= 50) {
                                com.byazt.x.c.n("SegmentReader", "segment apply failed " + this.f14854h + "times, thread_index = " + this.ve);
                                this.f14851c = null;
                                aVar = this.sl;
                                aVar.c(this, iVarC);
                            } else {
                                this.f14854h = i10 + 1;
                                this.f14851c = null;
                                aVar2 = this.sl;
                            }
                        }
                        aVar2.c(this, iVarC);
                    } catch (Throwable th) {
                        this.f14851c = null;
                        this.sl.c(this, iVarC);
                        throw th;
                    }
                }
                try {
                    this.tt.tt(this);
                    this.sl.tt(this);
                } catch (Throwable unused) {
                }
                this.f14859p = null;
                return;
            }
        } catch (Throwable th2) {
            try {
                com.byazt.nr.m.c(th2);
            } finally {
                try {
                    this.tt.tt(this);
                    this.sl.tt(this);
                } catch (Throwable unused2) {
                }
                this.f14859p = null;
            }
        }
    }

    public boolean sp() {
        return this.f14858nb;
    }

    public long x() {
        return this.rh;
    }

    public long tt() {
        long jVe;
        synchronized (this.sl) {
            jVe = this.qy + ve();
        }
        return jVe;
    }

    public void tt(boolean z10) {
        this.f14858nb = z10;
    }

    public void tt(long j10) {
        long j11 = this.rl;
        com.byazt.w.n nVar = this.bx;
        if (j11 < 0 || nVar == null) {
            return;
        }
        com.byazt.nr.m.c("SegmentReader", "markProgress: curSegmentReadOffset = " + j11 + ", threadIndex = " + this.ve);
        nVar.c(j11, j10);
    }

    public boolean c(nu nuVar) {
        int i10 = this.or;
        if (i10 >= 30) {
            return false;
        }
        this.or = i10 + 1;
        nu nuVar2 = this.tt;
        if (nuVar2 != null) {
            nuVar2.tt(this);
        }
        nuVar.c(this);
        this.tt = nuVar;
        t();
        return true;
    }

    private boolean c(i iVar, BaseException baseException) {
        com.byazt.x.c.n("SegmentReader", "handleDownloadFailed:  e = " + baseException + ", curRetryCount = " + this.eo + ", retryCount = " + this.f14852d);
        this.qp = baseException;
        this.tt.tt();
        this.sl.c(this, this.tt, iVar, baseException, this.eo, this.f14852d);
        int i10 = this.eo;
        if (i10 < this.f14852d) {
            this.eo = i10 + 1;
            return true;
        }
        if (c(baseException)) {
            return true;
        }
        this.sl.c(this, this.tt, iVar, baseException);
        return false;
    }

    public long ve() {
        synchronized (this.sl) {
            long j10 = this.rl;
            long j11 = this.rh;
            if (j11 < 0 || j10 <= j11) {
                return 0L;
            }
            return j10 - j11;
        }
    }

    private boolean c(BaseException baseException) {
        if (!com.byazt.w.a.ve(baseException)) {
            return false;
        }
        String str = this.tt.f14813c;
        if (TextUtils.isEmpty(str) || !str.startsWith("https") || !this.f14861u.isNeedHttpsToHttpRetry() || this.cu) {
            return false;
        }
        this.cu = true;
        t();
        return true;
    }

    public void ve(boolean z10) {
        this.pf = z10;
    }

    private c c(ve veVar, InputStream inputStream) throws Throwable {
        int i10;
        c cVarTt = veVar.tt();
        try {
            i10 = inputStream.read(cVarTt.f14806c);
            try {
                if (i10 != -1) {
                    cVarTt.ve = i10;
                    if (i10 == -1) {
                        veVar.c(cVarTt);
                    }
                    return cVarTt;
                }
                throw new BaseException(1073, aw.f84338s);
            } catch (Throwable th) {
                th = th;
                if (i10 == -1) {
                    veVar.c(cVarTt);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            i10 = -1;
        }
    }

    public boolean c(long j10) {
        long j11 = this.gt;
        if (j10 <= 0 && j11 > 0) {
            return false;
        }
        if (j10 > j11 && j11 > 0) {
            return false;
        }
        this.my = j10;
        this.md = true;
        return true;
    }

    public void c() {
        nu nuVar = this.tt;
        try {
            synchronized (this.sl) {
                long jVe = ve();
                if (jVe > 0) {
                    this.qy += jVe;
                    nuVar.c(jVe);
                }
                this.rl = -1L;
            }
        } catch (Throwable unused) {
        }
    }

    public void c(boolean z10) {
        com.byazt.x.c.ve("SegmentReader", "reconnect: threadIndex = " + this.ve);
        synchronized (this) {
            this.yv = z10;
            this.zm = true;
            this.md = true;
        }
        da();
        Thread thread = this.f14859p;
        if (thread != null) {
            try {
                com.byazt.nr.m.c("SegmentReader", "reconnect: t.interrupt threadIndex = " + this.ve);
                thread.interrupt();
            } catch (Throwable unused) {
            }
        }
    }

    public void c(Future future) {
        this.gu = future;
    }

    public long c(long j10, long j11) {
        com.byazt.w.n nVar = this.bx;
        if (nVar == null) {
            return -1L;
        }
        return nVar.tt(j10, j11);
    }

    public long uj() {
        return this.rl;
    }
}
