package com.byazt.h;

import android.os.SystemClock;
import com.byazt.m.BaseException;
import com.byazt.t.DownloadInfo;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 518, 91})
public class sp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.byazt.u.a f14833a;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final boolean f14837m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final com.byazt.k.c f14838n;
    public long nu;
    public final ve sp;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final boolean f14840u;
    public final DownloadInfo ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public BaseException f14841x;
    public final long yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final long f14842z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<t> f14834c = new LinkedList();
    public final List<t> tt = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile boolean f14836i = false;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public volatile boolean f14835da = false;
    public volatile boolean sl = false;
    public volatile long rh = 0;
    public volatile long my = 0;
    public final com.byazt.zz.da uj = com.byazt.zz.ve.zm();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final com.byazt.g.c f14839t = com.byazt.g.c.c();

    public sp(DownloadInfo downloadInfo, com.byazt.u.a aVar, ve veVar) {
        this.ve = downloadInfo;
        this.f14833a = aVar;
        this.sp = veVar;
        com.byazt.k.c cVarC = com.byazt.k.c.c(downloadInfo.getId());
        this.f14838n = cVarC;
        boolean z10 = cVarC.c("sync_strategy", 0) == 1;
        this.f14840u = z10;
        if (z10) {
            long jC = cVarC.c("sync_interval_ms_fg", 5000);
            long jC2 = cVarC.c("sync_interval_ms_bg", 1000);
            this.yp = Math.max(jC, 500L);
            this.f14842z = Math.max(jC2, 500L);
        } else {
            this.yp = 0L;
            this.f14842z = 0L;
        }
        this.f14837m = cVarC.tt("monitor_rw") == 1;
    }

    private boolean c(long j10, long j11) {
        return j10 > 65536 && j11 > 500;
    }

    private void tt(List<t> list) throws IOException {
        Iterator<t> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().ve();
        }
    }

    private void ve() throws IOException {
        boolean z10;
        boolean z11 = this.f14837m;
        long jNanoTime = z11 ? System.nanoTime() : 0L;
        DownloadInfo downloadInfo = this.ve;
        com.byazt.zz.da daVar = this.uj;
        List<t> list = this.f14834c;
        List<t> list2 = this.tt;
        Map<Long, i> mapT = daVar.t(downloadInfo.getId());
        if (mapT == null) {
            mapT = new HashMap<>(4);
        }
        synchronized (this) {
            c(list);
            try {
                tt(list);
                z10 = true;
            } catch (Throwable th) {
                com.byazt.nr.m.c(th);
                z10 = false;
            }
            c(list, mapT);
            if (list2.size() > 0) {
                ve(list2);
                list.removeAll(list2);
                list2.clear();
            }
        }
        if (z10) {
            downloadInfo.updateRealDownloadTime(true);
            daVar.c(downloadInfo.getId(), mapT);
            daVar.c(downloadInfo);
            this.rh = downloadInfo.getCurBytes();
        }
        if (z11) {
            this.nu += System.nanoTime() - jNanoTime;
        }
    }

    public void c(t tVar) {
        synchronized (this) {
            this.f14834c.add(tVar);
        }
    }

    public void tt() {
        this.f14835da = true;
        this.f14836i = true;
    }

    /* JADX WARN: Code duplicated, block: B:129:0x0193  */
    /* JADX WARN: Code duplicated, block: B:160:0x01ec A[Catch: all -> 0x03ad, TryCatch #7 {all -> 0x03ad, blocks: (B:158:0x01e8, B:160:0x01ec, B:163:0x01f2, B:165:0x01f8, B:166:0x01fb, B:167:0x020a, B:204:0x0287, B:205:0x0289, B:244:0x0309, B:246:0x0313, B:248:0x0317, B:285:0x0392, B:287:0x0398, B:288:0x039b, B:289:0x03ac), top: B:343:0x0027, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:165:0x01f8 A[Catch: all -> 0x03ad, TryCatch #7 {all -> 0x03ad, blocks: (B:158:0x01e8, B:160:0x01ec, B:163:0x01f2, B:165:0x01f8, B:166:0x01fb, B:167:0x020a, B:204:0x0287, B:205:0x0289, B:244:0x0309, B:246:0x0313, B:248:0x0317, B:285:0x0392, B:287:0x0398, B:288:0x039b, B:289:0x03ac), top: B:343:0x0027, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:169:0x0211  */
    /* JADX WARN: Code duplicated, block: B:185:0x0267  */
    /* JADX WARN: Code duplicated, block: B:187:0x026b  */
    /* JADX WARN: Code duplicated, block: B:199:0x0282 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:207:0x028c  */
    /* JADX WARN: Code duplicated, block: B:223:0x02e2  */
    /* JADX WARN: Code duplicated, block: B:225:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:237:0x02fd A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:246:0x0313 A[Catch: all -> 0x03ad, TryCatch #7 {all -> 0x03ad, blocks: (B:158:0x01e8, B:160:0x01ec, B:163:0x01f2, B:165:0x01f8, B:166:0x01fb, B:167:0x020a, B:204:0x0287, B:205:0x0289, B:244:0x0309, B:246:0x0313, B:248:0x0317, B:285:0x0392, B:287:0x0398, B:288:0x039b, B:289:0x03ac), top: B:343:0x0027, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:267:0x0373  */
    /* JADX WARN: Code duplicated, block: B:281:0x038e A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:287:0x0398 A[Catch: all -> 0x03ad, TryCatch #7 {all -> 0x03ad, blocks: (B:158:0x01e8, B:160:0x01ec, B:163:0x01f2, B:165:0x01f8, B:166:0x01fb, B:167:0x020a, B:204:0x0287, B:205:0x0289, B:244:0x0309, B:246:0x0313, B:248:0x0317, B:285:0x0392, B:287:0x0398, B:288:0x039b, B:289:0x03ac), top: B:343:0x0027, inners: #21 }] */
    /* JADX WARN: Code duplicated, block: B:300:0x03c1  */
    /* JADX WARN: Code duplicated, block: B:316:0x041a  */
    /* JADX WARN: Code duplicated, block: B:318:0x041e  */
    /* JADX WARN: Code duplicated, block: B:330:0x0435  */
    /* JADX WARN: Code duplicated, block: B:337:0x02f3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:339:0x0278 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:346:0x03e4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:356:0x03cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:360:0x0384 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:364:0x02ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:366:0x042b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:368:0x0233 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:370:0x033f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:376:0x0296 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:378:0x021b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:405:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:406:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:407:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:408:? A[SYNTHETIC] */
    public void c(uj ujVar) throws BaseException {
        long j10;
        long j11;
        long jNanoTime;
        Throwable th;
        Throwable th2;
        Throwable th3;
        Throwable th4;
        Throwable th5;
        Throwable th6;
        if (this.f14835da || this.sl) {
            return;
        }
        com.byazt.hs.tt.n();
        this.f14841x = null;
        DownloadInfo downloadInfo = this.ve;
        com.byazt.u.a aVar = this.f14833a;
        ve veVar = this.sp;
        long curBytes = downloadInfo.getCurBytes();
        long jNanoTime2 = System.nanoTime();
        boolean z10 = this.f14837m;
        long jNanoTime3 = 0;
        boolean z11 = true;
        int i10 = 0;
        boolean z12 = false;
        try {
            try {
                downloadInfo.updateRealStartDownloadTime();
                long jNanoTime4 = 0;
                jNanoTime = 0;
                long j12 = 0;
                i10 = 0;
                while (true) {
                    if (z10) {
                        try {
                            jNanoTime4 = System.nanoTime();
                        } catch (m e10) {
                            e = e10;
                            i10 = i10;
                            jNanoTime = jNanoTime;
                            try {
                                this.f14841x = e;
                                throw e;
                            } catch (Throwable th7) {
                                th = th7;
                                jNanoTime3 = jNanoTime3;
                                j10 = jNanoTime;
                                if (i10 > 0) {
                                    try {
                                        aVar.tt(i10);
                                    } catch (Throwable unused) {
                                    }
                                }
                                if (!this.sl) {
                                    try {
                                        ve();
                                    } catch (Throwable th8) {
                                        com.byazt.x.c.uj("MultiSegmentWriter", "loopAndWrite: finally sync, e = ".concat(String.valueOf(th8)));
                                        th5 = th8;
                                        synchronized (this) {
                                            ve(this.f14834c);
                                            this.f14834c.clear();
                                            com.byazt.zl.c.c(this.f14838n, downloadInfo, downloadInfo.getUrl(), null, this.f14835da, this.sl, this.f14841x, downloadInfo.getCurBytes() - curBytes, System.nanoTime() - jNanoTime2, z10, jNanoTime3, j10, this.nu, null);
                                            if (th5 != null) {
                                                if (!this.f14835da) {
                                                    z11 = false;
                                                }
                                                if (!z11) {
                                                    try {
                                                        com.byazt.w.a.c(th5, "loopAndWrite_finally");
                                                        throw th;
                                                    } catch (BaseException e11) {
                                                        this.f14841x = e11;
                                                        throw e11;
                                                    }
                                                }
                                                throw th;
                                            }
                                            throw th;
                                        }
                                    }
                                }
                                th5 = null;
                                synchronized (this) {
                                    ve(this.f14834c);
                                    this.f14834c.clear();
                                    com.byazt.zl.c.c(this.f14838n, downloadInfo, downloadInfo.getUrl(), null, this.f14835da, this.sl, this.f14841x, downloadInfo.getCurBytes() - curBytes, System.nanoTime() - jNanoTime2, z10, jNanoTime3, j10, this.nu, null);
                                    if (th5 != null) {
                                        if (!this.f14835da) {
                                            z11 = false;
                                        }
                                        if (!z11) {
                                            com.byazt.w.a.c(th5, "loopAndWrite_finally");
                                            throw th;
                                        }
                                        throw th;
                                    }
                                    throw th;
                                }
                            }
                        } catch (BaseException e12) {
                            e = e12;
                            jNanoTime3 = jNanoTime3;
                            j11 = jNanoTime;
                            if (!this.f14838n.c("ignore_base_ex_on_stop_status")) {
                            }
                            if (com.byazt.x.c.c()) {
                                com.byazt.nr.m.c(e);
                            }
                            com.byazt.x.c.uj("MultiSegmentWriter", "loopAndWrite:  BaseException e = ".concat(String.valueOf(e)));
                            this.f14841x = e;
                            throw e;
                        } catch (Throwable th9) {
                            th = th9;
                            jNanoTime3 = jNanoTime3;
                            j10 = jNanoTime;
                            if (!this.f14835da) {
                                if (com.byazt.x.c.c()) {
                                    com.byazt.nr.m.c(th);
                                }
                                com.byazt.x.c.uj("MultiSegmentWriter", "loopAndWrite:  e = ".concat(String.valueOf(th)));
                                try {
                                    com.byazt.w.a.c(th, "loopAndWrite");
                                    if (i10 > 0) {
                                        try {
                                            aVar.tt(i10);
                                        } catch (Throwable unused2) {
                                        }
                                    }
                                    if (!this.sl) {
                                        try {
                                            ve();
                                        } catch (Throwable th10) {
                                            th3 = th10;
                                            com.byazt.x.c.uj("MultiSegmentWriter", "loopAndWrite: finally sync, e = ".concat(String.valueOf(th3)));
                                            synchronized (this) {
                                                ve(this.f14834c);
                                                this.f14834c.clear();
                                            }
                                            com.byazt.zl.c.c(this.f14838n, downloadInfo, downloadInfo.getUrl(), null, this.f14835da, this.sl, this.f14841x, downloadInfo.getCurBytes() - curBytes, System.nanoTime() - jNanoTime2, z10, jNanoTime3, j10, this.nu, null);
                                            if (th3 != null) {
                                                if (!this.f14835da && !this.sl && this.f14841x == null) {
                                                    z11 = false;
                                                }
                                                if (z11) {
                                                    return;
                                                }
                                                try {
                                                    com.byazt.w.a.c(th3, "loopAndWrite_finally");
                                                    return;
                                                } catch (BaseException e13) {
                                                    this.f14841x = e13;
                                                    throw e13;
                                                }
                                            }
                                            return;
                                        }
                                    }
                                    th3 = null;
                                    synchronized (this) {
                                        ve(this.f14834c);
                                        this.f14834c.clear();
                                        com.byazt.zl.c.c(this.f14838n, downloadInfo, downloadInfo.getUrl(), null, this.f14835da, this.sl, this.f14841x, downloadInfo.getCurBytes() - curBytes, System.nanoTime() - jNanoTime2, z10, jNanoTime3, j10, this.nu, null);
                                        if (th3 != null) {
                                            if (!this.f14835da) {
                                                z11 = false;
                                            }
                                            if (z11) {
                                                com.byazt.w.a.c(th3, "loopAndWrite_finally");
                                                return;
                                            }
                                            return;
                                        }
                                        return;
                                    }
                                } catch (BaseException e14) {
                                    this.f14841x = e14;
                                    throw e14;
                                }
                            }
                            if (i10 > 0) {
                                try {
                                    aVar.tt(i10);
                                } catch (Throwable unused3) {
                                }
                            }
                            if (!this.sl) {
                                try {
                                    ve();
                                } catch (Throwable th11) {
                                    th2 = th11;
                                    com.byazt.x.c.uj("MultiSegmentWriter", "loopAndWrite: finally sync, e = ".concat(String.valueOf(th2)));
                                    synchronized (this) {
                                        ve(this.f14834c);
                                        this.f14834c.clear();
                                    }
                                    com.byazt.zl.c.c(this.f14838n, downloadInfo, downloadInfo.getUrl(), null, this.f14835da, this.sl, this.f14841x, downloadInfo.getCurBytes() - curBytes, System.nanoTime() - jNanoTime2, z10, jNanoTime3, j10, this.nu, null);
                                    if (th2 != null) {
                                        if (!this.f14835da && !this.sl && this.f14841x == null) {
                                            z11 = false;
                                        }
                                        if (z11) {
                                            return;
                                        }
                                        try {
                                            com.byazt.w.a.c(th2, "loopAndWrite_finally");
                                            return;
                                        } catch (BaseException e15) {
                                            this.f14841x = e15;
                                            throw e15;
                                        }
                                    }
                                    return;
                                }
                            }
                            th2 = null;
                            synchronized (this) {
                                ve(this.f14834c);
                                this.f14834c.clear();
                                com.byazt.zl.c.c(this.f14838n, downloadInfo, downloadInfo.getUrl(), null, this.f14835da, this.sl, this.f14841x, downloadInfo.getCurBytes() - curBytes, System.nanoTime() - jNanoTime2, z10, jNanoTime3, j10, this.nu, null);
                                if (th2 != null) {
                                    if (!this.f14835da) {
                                        z11 = false;
                                    }
                                    if (z11) {
                                        com.byazt.w.a.c(th2, "loopAndWrite_finally");
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                        }
                    }
                    try {
                        c cVarC = ujVar.c();
                        if (z10) {
                            jNanoTime3 += System.nanoTime() - jNanoTime4;
                        }
                        jNanoTime3 = jNanoTime3;
                        try {
                            int i11 = cVarC.ve;
                            if (i11 == -1) {
                                try {
                                    c(cVarC.tt);
                                    veVar.c(cVarC);
                                    jNanoTime3 = jNanoTime3;
                                } catch (m e16) {
                                    e = e16;
                                    jNanoTime = jNanoTime;
                                    jNanoTime3 = jNanoTime3;
                                    this.f14841x = e;
                                    throw e;
                                } catch (BaseException e17) {
                                    e = e17;
                                    j11 = jNanoTime;
                                    if (!this.f14838n.c("ignore_base_ex_on_stop_status")) {
                                    }
                                    if (com.byazt.x.c.c()) {
                                        com.byazt.nr.m.c(e);
                                    }
                                    com.byazt.x.c.uj("MultiSegmentWriter", "loopAndWrite:  BaseException e = ".concat(String.valueOf(e)));
                                    this.f14841x = e;
                                    throw e;
                                } catch (Throwable th12) {
                                    th = th12;
                                    j10 = jNanoTime;
                                    if (!this.f14835da) {
                                        if (com.byazt.x.c.c()) {
                                            com.byazt.nr.m.c(th);
                                        }
                                        com.byazt.x.c.uj("MultiSegmentWriter", "loopAndWrite:  e = ".concat(String.valueOf(th)));
                                        com.byazt.w.a.c(th, "loopAndWrite");
                                        if (i10 > 0) {
                                            aVar.tt(i10);
                                        }
                                        if (!this.sl) {
                                            ve();
                                        }
                                        th3 = null;
                                        synchronized (this) {
                                            ve(this.f14834c);
                                            this.f14834c.clear();
                                            com.byazt.zl.c.c(this.f14838n, downloadInfo, downloadInfo.getUrl(), null, this.f14835da, this.sl, this.f14841x, downloadInfo.getCurBytes() - curBytes, System.nanoTime() - jNanoTime2, z10, jNanoTime3, j10, this.nu, null);
                                            if (th3 != null) {
                                                if (!this.f14835da) {
                                                    z11 = false;
                                                }
                                                if (z11) {
                                                    com.byazt.w.a.c(th3, "loopAndWrite_finally");
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        }
                                    }
                                    if (i10 > 0) {
                                        aVar.tt(i10);
                                    }
                                    if (!this.sl) {
                                        ve();
                                    }
                                    th2 = null;
                                    synchronized (this) {
                                        ve(this.f14834c);
                                        this.f14834c.clear();
                                        com.byazt.zl.c.c(this.f14838n, downloadInfo, downloadInfo.getUrl(), null, this.f14835da, this.sl, this.f14841x, downloadInfo.getCurBytes() - curBytes, System.nanoTime() - jNanoTime2, z10, jNanoTime3, j10, this.nu, null);
                                        if (th2 != null) {
                                            if (!this.f14835da) {
                                                z11 = false;
                                            }
                                            if (z11) {
                                                com.byazt.w.a.c(th2, "loopAndWrite_finally");
                                                return;
                                            }
                                            return;
                                        }
                                        return;
                                    }
                                }
                            } else {
                                if (z10) {
                                    jNanoTime4 = System.nanoTime();
                                }
                                cVarC.tt.tt(cVarC);
                                if (z10) {
                                    jNanoTime += System.nanoTime() - jNanoTime4;
                                }
                                jNanoTime = jNanoTime;
                                try {
                                    veVar.c(cVarC);
                                    if (this.f14836i) {
                                        if (this.f14835da) {
                                            break;
                                        }
                                        try {
                                            if (this.sl) {
                                                break;
                                            } else {
                                                this.f14836i = z12;
                                            }
                                        } catch (m e18) {
                                            e = e18;
                                            jNanoTime3 = jNanoTime3;
                                            this.f14841x = e;
                                            throw e;
                                        } catch (BaseException e19) {
                                            e = e19;
                                            j11 = jNanoTime;
                                            if (!this.f14838n.c("ignore_base_ex_on_stop_status")) {
                                            }
                                            if (com.byazt.x.c.c()) {
                                                com.byazt.nr.m.c(e);
                                            }
                                            com.byazt.x.c.uj("MultiSegmentWriter", "loopAndWrite:  BaseException e = ".concat(String.valueOf(e)));
                                            this.f14841x = e;
                                            throw e;
                                        } catch (Throwable th13) {
                                            th = th13;
                                            j10 = jNanoTime;
                                            if (!this.f14835da) {
                                                if (com.byazt.x.c.c()) {
                                                    com.byazt.nr.m.c(th);
                                                }
                                                com.byazt.x.c.uj("MultiSegmentWriter", "loopAndWrite:  e = ".concat(String.valueOf(th)));
                                                com.byazt.w.a.c(th, "loopAndWrite");
                                                if (i10 > 0) {
                                                    aVar.tt(i10);
                                                }
                                                if (!this.sl) {
                                                    ve();
                                                }
                                                th3 = null;
                                                synchronized (this) {
                                                    ve(this.f14834c);
                                                    this.f14834c.clear();
                                                    com.byazt.zl.c.c(this.f14838n, downloadInfo, downloadInfo.getUrl(), null, this.f14835da, this.sl, this.f14841x, downloadInfo.getCurBytes() - curBytes, System.nanoTime() - jNanoTime2, z10, jNanoTime3, j10, this.nu, null);
                                                    if (th3 != null) {
                                                        if (!this.f14835da) {
                                                            z11 = false;
                                                        }
                                                        if (z11) {
                                                            com.byazt.w.a.c(th3, "loopAndWrite_finally");
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    return;
                                                }
                                            }
                                            if (i10 > 0) {
                                                aVar.tt(i10);
                                            }
                                            if (!this.sl) {
                                                ve();
                                            }
                                            th2 = null;
                                            synchronized (this) {
                                                ve(this.f14834c);
                                                this.f14834c.clear();
                                                com.byazt.zl.c.c(this.f14838n, downloadInfo, downloadInfo.getUrl(), null, this.f14835da, this.sl, this.f14841x, downloadInfo.getCurBytes() - curBytes, System.nanoTime() - jNanoTime2, z10, jNanoTime3, j10, this.nu, null);
                                                if (th2 != null) {
                                                    if (!this.f14835da) {
                                                        z11 = false;
                                                    }
                                                    if (z11) {
                                                        com.byazt.w.a.c(th2, "loopAndWrite_finally");
                                                        return;
                                                    }
                                                    return;
                                                }
                                                return;
                                            }
                                        }
                                    }
                                    i10 += i11;
                                    if (i10 >= 65536) {
                                        try {
                                            long jUptimeMillis = SystemClock.uptimeMillis();
                                            if (jUptimeMillis - j12 > 100) {
                                                long j13 = jNanoTime4;
                                                try {
                                                    c(jUptimeMillis, aVar.tt(i10));
                                                    if (!com.byazt.hs.tt.f15098c) {
                                                        if (!downloadInfo.isOnlyWifi()) {
                                                            if (downloadInfo.isDownloadFromReserveWifi() && downloadInfo.isPauseReserveOnWifi()) {
                                                                throw new com.byazt.m.n();
                                                            }
                                                        } else {
                                                            throw new com.byazt.m.ve();
                                                        }
                                                    }
                                                    j12 = jUptimeMillis;
                                                    jNanoTime4 = j13;
                                                    i10 = 0;
                                                } catch (m e20) {
                                                    e = e20;
                                                    jNanoTime3 = jNanoTime3;
                                                    i10 = 0;
                                                    this.f14841x = e;
                                                    throw e;
                                                } catch (BaseException e21) {
                                                    e = e21;
                                                    j11 = jNanoTime;
                                                    i10 = 0;
                                                    if (!this.f14838n.c("ignore_base_ex_on_stop_status")) {
                                                    }
                                                    if (com.byazt.x.c.c()) {
                                                        com.byazt.nr.m.c(e);
                                                    }
                                                    com.byazt.x.c.uj("MultiSegmentWriter", "loopAndWrite:  BaseException e = ".concat(String.valueOf(e)));
                                                    this.f14841x = e;
                                                    throw e;
                                                } catch (Throwable th14) {
                                                    th = th14;
                                                    j10 = jNanoTime;
                                                    i10 = 0;
                                                    if (!this.f14835da) {
                                                        if (com.byazt.x.c.c()) {
                                                            com.byazt.nr.m.c(th);
                                                        }
                                                        com.byazt.x.c.uj("MultiSegmentWriter", "loopAndWrite:  e = ".concat(String.valueOf(th)));
                                                        com.byazt.w.a.c(th, "loopAndWrite");
                                                        if (i10 > 0) {
                                                            aVar.tt(i10);
                                                        }
                                                        if (!this.sl) {
                                                            ve();
                                                        }
                                                        th3 = null;
                                                        synchronized (this) {
                                                            ve(this.f14834c);
                                                            this.f14834c.clear();
                                                            com.byazt.zl.c.c(this.f14838n, downloadInfo, downloadInfo.getUrl(), null, this.f14835da, this.sl, this.f14841x, downloadInfo.getCurBytes() - curBytes, System.nanoTime() - jNanoTime2, z10, jNanoTime3, j10, this.nu, null);
                                                            if (th3 != null) {
                                                                if (!this.f14835da) {
                                                                    z11 = false;
                                                                }
                                                                if (z11) {
                                                                    com.byazt.w.a.c(th3, "loopAndWrite_finally");
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                            return;
                                                        }
                                                    }
                                                    if (i10 > 0) {
                                                        aVar.tt(i10);
                                                    }
                                                    if (!this.sl) {
                                                        ve();
                                                    }
                                                    th2 = null;
                                                    synchronized (this) {
                                                        ve(this.f14834c);
                                                        this.f14834c.clear();
                                                        com.byazt.zl.c.c(this.f14838n, downloadInfo, downloadInfo.getUrl(), null, this.f14835da, this.sl, this.f14841x, downloadInfo.getCurBytes() - curBytes, System.nanoTime() - jNanoTime2, z10, jNanoTime3, j10, this.nu, null);
                                                        if (th2 != null) {
                                                            if (!this.f14835da) {
                                                                z11 = false;
                                                            }
                                                            if (z11) {
                                                                com.byazt.w.a.c(th2, "loopAndWrite_finally");
                                                                return;
                                                            }
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                }
                                            } else {
                                                jNanoTime4 = jNanoTime4;
                                            }
                                        } catch (m e22) {
                                            e = e22;
                                            i10 = i10;
                                            jNanoTime3 = jNanoTime3;
                                            this.f14841x = e;
                                            throw e;
                                        } catch (BaseException e23) {
                                            e = e23;
                                            i10 = i10;
                                            j11 = jNanoTime;
                                            if (!this.f14838n.c("ignore_base_ex_on_stop_status")) {
                                            }
                                            if (com.byazt.x.c.c()) {
                                                com.byazt.nr.m.c(e);
                                            }
                                            com.byazt.x.c.uj("MultiSegmentWriter", "loopAndWrite:  BaseException e = ".concat(String.valueOf(e)));
                                            this.f14841x = e;
                                            throw e;
                                        } catch (Throwable th15) {
                                            th = th15;
                                            i10 = i10;
                                            j10 = jNanoTime;
                                            if (!this.f14835da) {
                                                if (com.byazt.x.c.c()) {
                                                    com.byazt.nr.m.c(th);
                                                }
                                                com.byazt.x.c.uj("MultiSegmentWriter", "loopAndWrite:  e = ".concat(String.valueOf(th)));
                                                com.byazt.w.a.c(th, "loopAndWrite");
                                                if (i10 > 0) {
                                                    aVar.tt(i10);
                                                }
                                                if (!this.sl) {
                                                    ve();
                                                }
                                                th3 = null;
                                                synchronized (this) {
                                                    ve(this.f14834c);
                                                    this.f14834c.clear();
                                                    com.byazt.zl.c.c(this.f14838n, downloadInfo, downloadInfo.getUrl(), null, this.f14835da, this.sl, this.f14841x, downloadInfo.getCurBytes() - curBytes, System.nanoTime() - jNanoTime2, z10, jNanoTime3, j10, this.nu, null);
                                                    if (th3 != null) {
                                                        if (!this.f14835da) {
                                                            z11 = false;
                                                        }
                                                        if (z11) {
                                                            com.byazt.w.a.c(th3, "loopAndWrite_finally");
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    return;
                                                }
                                            }
                                            if (i10 > 0) {
                                                aVar.tt(i10);
                                            }
                                            if (!this.sl) {
                                                ve();
                                            }
                                            th2 = null;
                                            synchronized (this) {
                                                ve(this.f14834c);
                                                this.f14834c.clear();
                                                com.byazt.zl.c.c(this.f14838n, downloadInfo, downloadInfo.getUrl(), null, this.f14835da, this.sl, this.f14841x, downloadInfo.getCurBytes() - curBytes, System.nanoTime() - jNanoTime2, z10, jNanoTime3, j10, this.nu, null);
                                                if (th2 != null) {
                                                    if (!this.f14835da) {
                                                        z11 = false;
                                                    }
                                                    if (z11) {
                                                        com.byazt.w.a.c(th2, "loopAndWrite_finally");
                                                        return;
                                                    }
                                                    return;
                                                }
                                                return;
                                            }
                                        }
                                    } else {
                                        jNanoTime4 = jNanoTime4;
                                    }
                                    z12 = false;
                                } catch (m e24) {
                                    e = e24;
                                } catch (BaseException e25) {
                                    e = e25;
                                } catch (Throwable th16) {
                                    th = th16;
                                }
                            }
                        } catch (m e26) {
                            e = e26;
                            i10 = i10;
                            jNanoTime = jNanoTime;
                        } catch (BaseException e27) {
                            e = e27;
                            i10 = i10;
                            j11 = jNanoTime;
                            if (!this.f14838n.c("ignore_base_ex_on_stop_status") && (this.f14835da || this.sl)) {
                                if (i10 > 0) {
                                    try {
                                        aVar.tt(i10);
                                    } catch (Throwable unused4) {
                                    }
                                }
                                if (!this.sl) {
                                    try {
                                        ve();
                                    } catch (Throwable th17) {
                                        th4 = th17;
                                        com.byazt.x.c.uj("MultiSegmentWriter", "loopAndWrite: finally sync, e = ".concat(String.valueOf(th4)));
                                        synchronized (this) {
                                            ve(this.f14834c);
                                            this.f14834c.clear();
                                        }
                                        com.byazt.zl.c.c(this.f14838n, downloadInfo, downloadInfo.getUrl(), null, this.f14835da, this.sl, this.f14841x, downloadInfo.getCurBytes() - curBytes, System.nanoTime() - jNanoTime2, z10, jNanoTime3, j11, this.nu, null);
                                        if (th4 != null) {
                                            if (!this.f14835da && !this.sl && this.f14841x == null) {
                                                z11 = false;
                                            }
                                            if (z11) {
                                                return;
                                            }
                                            try {
                                                com.byazt.w.a.c(th4, "loopAndWrite_finally");
                                                return;
                                            } catch (BaseException e28) {
                                                this.f14841x = e28;
                                                throw e28;
                                            }
                                        }
                                        return;
                                    }
                                }
                                th4 = null;
                                synchronized (this) {
                                    ve(this.f14834c);
                                    this.f14834c.clear();
                                    com.byazt.zl.c.c(this.f14838n, downloadInfo, downloadInfo.getUrl(), null, this.f14835da, this.sl, this.f14841x, downloadInfo.getCurBytes() - curBytes, System.nanoTime() - jNanoTime2, z10, jNanoTime3, j11, this.nu, null);
                                    if (th4 != null) {
                                        if (!this.f14835da) {
                                            z11 = false;
                                        }
                                        if (z11) {
                                            com.byazt.w.a.c(th4, "loopAndWrite_finally");
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                            }
                            if (com.byazt.x.c.c()) {
                                com.byazt.nr.m.c(e);
                            }
                            com.byazt.x.c.uj("MultiSegmentWriter", "loopAndWrite:  BaseException e = ".concat(String.valueOf(e)));
                            this.f14841x = e;
                            throw e;
                        } catch (Throwable th18) {
                            th = th18;
                            i10 = i10;
                            j10 = jNanoTime;
                            if (!this.f14835da && !this.sl) {
                                if (com.byazt.x.c.c()) {
                                    com.byazt.nr.m.c(th);
                                }
                                com.byazt.x.c.uj("MultiSegmentWriter", "loopAndWrite:  e = ".concat(String.valueOf(th)));
                                com.byazt.w.a.c(th, "loopAndWrite");
                                if (i10 > 0) {
                                    aVar.tt(i10);
                                }
                                if (!this.sl) {
                                    ve();
                                }
                                th3 = null;
                                synchronized (this) {
                                    ve(this.f14834c);
                                    this.f14834c.clear();
                                    com.byazt.zl.c.c(this.f14838n, downloadInfo, downloadInfo.getUrl(), null, this.f14835da, this.sl, this.f14841x, downloadInfo.getCurBytes() - curBytes, System.nanoTime() - jNanoTime2, z10, jNanoTime3, j10, this.nu, null);
                                    if (th3 != null) {
                                        if (!this.f14835da) {
                                            z11 = false;
                                        }
                                        if (z11) {
                                            com.byazt.w.a.c(th3, "loopAndWrite_finally");
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                            }
                            if (i10 > 0) {
                                aVar.tt(i10);
                            }
                            if (!this.sl) {
                                ve();
                            }
                            th2 = null;
                            synchronized (this) {
                                ve(this.f14834c);
                                this.f14834c.clear();
                                com.byazt.zl.c.c(this.f14838n, downloadInfo, downloadInfo.getUrl(), null, this.f14835da, this.sl, this.f14841x, downloadInfo.getCurBytes() - curBytes, System.nanoTime() - jNanoTime2, z10, jNanoTime3, j10, this.nu, null);
                                if (th2 != null) {
                                    if (!this.f14835da) {
                                        z11 = false;
                                    }
                                    if (z11) {
                                        com.byazt.w.a.c(th2, "loopAndWrite_finally");
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                        }
                    } catch (m e29) {
                        e = e29;
                        i10 = i10;
                        jNanoTime = jNanoTime;
                    } catch (BaseException e30) {
                        e = e30;
                        jNanoTime3 = jNanoTime3;
                    } catch (Throwable th19) {
                        th = th19;
                        jNanoTime3 = jNanoTime3;
                    }
                }
                if (i10 > 0) {
                    try {
                        aVar.tt(i10);
                    } catch (Throwable unused5) {
                    }
                }
                if (!this.sl) {
                    try {
                        ve();
                    } catch (Throwable th20) {
                        th6 = th20;
                        com.byazt.x.c.uj("MultiSegmentWriter", "loopAndWrite: finally sync, e = ".concat(String.valueOf(th6)));
                    }
                }
                th6 = null;
                synchronized (this) {
                    ve(this.f14834c);
                    this.f14834c.clear();
                }
                com.byazt.zl.c.c(this.f14838n, downloadInfo, downloadInfo.getUrl(), null, this.f14835da, this.sl, this.f14841x, downloadInfo.getCurBytes() - curBytes, System.nanoTime() - jNanoTime2, z10, jNanoTime3, jNanoTime, this.nu, null);
                if (th6 != null) {
                    if (!this.f14835da && !this.sl && this.f14841x == null) {
                        z11 = false;
                    }
                    if (z11) {
                        return;
                    }
                    try {
                        com.byazt.w.a.c(th6, "loopAndWrite_finally");
                    } catch (BaseException e31) {
                        this.f14841x = e31;
                        throw e31;
                    }
                }
            } catch (Throwable th21) {
                th = th21;
                if (i10 > 0) {
                    aVar.tt(i10);
                }
                if (!this.sl) {
                    ve();
                }
                th5 = null;
                synchronized (this) {
                    ve(this.f14834c);
                    this.f14834c.clear();
                }
                com.byazt.zl.c.c(this.f14838n, downloadInfo, downloadInfo.getUrl(), null, this.f14835da, this.sl, this.f14841x, downloadInfo.getCurBytes() - curBytes, System.nanoTime() - jNanoTime2, z10, jNanoTime3, j10, this.nu, null);
                if (th5 != null) {
                    if (!this.f14835da && !this.sl && this.f14841x == null) {
                        z11 = false;
                    }
                    if (!z11) {
                        com.byazt.w.a.c(th5, "loopAndWrite_finally");
                        throw th;
                    }
                    throw th;
                }
                throw th;
            }
        } catch (m e32) {
            e = e32;
            jNanoTime = 0;
        } catch (BaseException e33) {
            e = e33;
            j11 = 0;
            jNanoTime3 = 0;
        } catch (Throwable th22) {
            th = th22;
            j10 = 0;
            jNanoTime3 = 0;
        }
    }

    private void ve(List<t> list) {
        Iterator<t> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().uj();
        }
    }

    private void c(long j10, boolean z10) throws IOException {
        long j11 = j10 - this.my;
        if (this.f14840u) {
            if (j11 <= (this.f14839t.tt() ? this.yp : this.f14842z)) {
                return;
            }
        } else {
            long curBytes = this.ve.getCurBytes() - this.rh;
            if (!z10 && !c(curBytes, j11)) {
                return;
            }
        }
        ve();
        this.my = j10;
    }

    private void c(n nVar) {
        synchronized (this) {
            this.tt.add((t) nVar);
        }
    }

    private void c(List<t> list) throws IOException {
        Iterator<t> it2 = list.iterator();
        while (it2.hasNext()) {
            it2.next().tt();
        }
    }

    private void c(List<t> list, Map<Long, i> map) {
        Iterator<t> it2 = list.iterator();
        while (it2.hasNext()) {
            i iVarN = it2.next().n();
            i iVar = map.get(Long.valueOf(iVarN.ve()));
            if (iVar == null) {
                map.put(Long.valueOf(iVarN.ve()), new i(iVarN));
            } else {
                iVar.c(iVarN.uj());
                iVar.ve(iVarN.a());
            }
        }
    }

    public void c() {
        this.sl = true;
        this.f14836i = true;
    }
}
