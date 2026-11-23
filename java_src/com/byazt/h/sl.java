package com.byazt.h;

import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.m.BaseException;
import com.byazt.t.DownloadInfo;
import com.haima.hmcp.ConstantsInternal;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 518, 158})
public class sl implements a, com.byazt.hs.ve.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DownloadInfo f14819c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.t.uj f14821da;
    public long gr;
    public final com.byazt.w.n gt;
    public long gu;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f14824m;
    public final boolean md;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final sp f14825n;
    public BaseException nu;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f14826p;
    public volatile boolean rh;
    public final com.byazt.u.n rl;
    public com.byazt.t.uj sl;
    public final yp tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f14828u;
    public final com.byazt.u.a uj;
    public final tt ve;
    public float yv;
    public long zm;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile boolean f14818a = false;
    public volatile boolean sp = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final List<u> f14829x = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List<nu> f14823i = new ArrayList();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public volatile boolean f14827t = true;
    public final LinkedList<i> yp = new LinkedList<>();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final List<i> f14830z = new ArrayList();
    public final Object my = new Object();
    public volatile boolean qy = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final com.byazt.u.n.tt f14822h = new com.byazt.u.n.tt() { // from class: com.byazt.h.sl.1
        public int tt;

        @Override // com.byazt.u.n.tt
        public long c() {
            if (sl.this.f14818a || sl.this.sp) {
                return -1L;
            }
            synchronized (sl.this) {
                if (sl.this.f14821da == null && sl.this.sl == null) {
                    long j10 = sl.this.gu;
                    if (j10 <= 0) {
                        return -1L;
                    }
                    this.tt++;
                    u uVarC = sl.this.c(false, System.currentTimeMillis(), j10);
                    if (uVarC == null) {
                        return j10;
                    }
                    com.byazt.nr.m.c("SegmentDispatcher", "connectWatcher: switchUrl and reconnect");
                    sl.this.ve(uVarC);
                    uVarC.a();
                    return ((long) ((this.tt / sl.this.f14823i.size()) + 1)) * j10;
                }
                return -1L;
            }
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.byazt.u.n.tt f14820d = new com.byazt.u.n.tt() { // from class: com.byazt.h.sl.2
        @Override // com.byazt.u.n.tt
        public long c() {
            return sl.this.rh();
        }
    };

    public sl(@NonNull DownloadInfo downloadInfo, @NonNull yp ypVar, com.byazt.u.a aVar) {
        this.f14819c = downloadInfo;
        this.tt = ypVar;
        tt ttVar = new tt(ypVar.uj(), ypVar.n());
        this.ve = ttVar;
        this.uj = aVar;
        this.f14825n = new sp(downloadInfo, aVar, ttVar);
        this.rl = new com.byazt.u.n();
        this.gt = new com.byazt.w.n();
        this.md = com.byazt.k.c.c(downloadInfo.getId()).tt("debug") == 1;
    }

    private nu da() {
        nu nuVar;
        synchronized (this) {
            int size = this.f14824m % this.f14823i.size();
            if (this.tt.tt()) {
                this.f14824m++;
            }
            nuVar = this.f14823i.get(size);
        }
        return nuVar;
    }

    private void i() {
        List<String> backUpUrls;
        int iT = this.tt.t();
        if (iT <= 0) {
            this.f14827t = false;
            n();
            return;
        }
        com.byazt.hs.ve veVarC = com.byazt.hs.ve.c();
        veVarC.c(this.f14819c.getUrl(), this, 2000L);
        if (iT <= 2 || (backUpUrls = this.f14819c.getBackUpUrls()) == null) {
            return;
        }
        for (String str : backUpUrls) {
            if (!TextUtils.isEmpty(str)) {
                veVarC.c(str, this, 2000L);
            }
        }
    }

    private i m() {
        int i10 = 0;
        while (true) {
            i iVarNu = nu();
            if (iVarNu == null) {
                return null;
            }
            u uVar = iVarNu.f14809c;
            if (uVar == null) {
                return iVarNu;
            }
            if (iVarNu.da() >= 2) {
                return null;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            tt(jCurrentTimeMillis);
            if (jCurrentTimeMillis - uVar.f14850a > 2000 && c(uVar, jCurrentTimeMillis - 2000, jCurrentTimeMillis, 500L, 1.0d)) {
                if (this.md) {
                    com.byazt.nr.m.c("SegmentDispatcher", "obtainSegmentWhenNoNewSegment: isDownloadSpeedPoor segment = " + iVarNu + ", owner.threadIndex = " + uVar.ve);
                }
                return iVarNu;
            }
            int i11 = i10 + 1;
            if (i10 > 2) {
                if (this.md) {
                    com.byazt.nr.m.c("SegmentDispatcher", "obtainSegmentWhenNoNewSegment: waitCount > 2, return segment = ".concat(String.valueOf(iVarNu)));
                }
                return iVarNu;
            }
            try {
                synchronized (this) {
                    wait(500L);
                }
                i10 = i11;
            } catch (InterruptedException unused) {
                return null;
            }
        }
    }

    private i nu() {
        int iDa;
        i iVar = null;
        int i10 = Integer.MAX_VALUE;
        for (i iVar2 : this.f14830z) {
            if (c(iVar2) > 0 && (iDa = iVar2.da()) < i10) {
                iVar = iVar2;
                i10 = iDa;
            }
        }
        return iVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long rh() {
        if (this.f14818a || this.sp) {
            return -1L;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (this) {
            tt(jCurrentTimeMillis);
            long jSl = this.tt.sl();
            if (jSl > 0) {
                long j10 = this.zm;
                if (j10 > 0 && jCurrentTimeMillis - j10 > jSl && c(jCurrentTimeMillis, jSl)) {
                    this.zm = jCurrentTimeMillis;
                    this.f14826p++;
                }
            }
        }
        return 2000L;
    }

    private void sl() {
        com.byazt.x.c.ve("SegmentDispatcher", "onComplete");
        this.ve.ve();
        synchronized (this.my) {
            this.my.notify();
        }
    }

    private boolean t() {
        Iterator<u> it2 = this.f14829x.iterator();
        while (it2.hasNext()) {
            if (!it2.next().sp()) {
                return false;
            }
        }
        return true;
    }

    private void u() {
        int size;
        if (this.f14828u > 0 && (size = this.f14830z.size()) > 1) {
            ArrayList<i> arrayList = null;
            int i10 = 0;
            for (int i11 = 1; i11 < size; i11++) {
                i iVar = this.f14830z.get(i10);
                i iVar2 = this.f14830z.get(i11);
                if (iVar.n() > iVar2.ve() && iVar2.c() <= 0 && iVar2.f14809c == null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList(1);
                    }
                    arrayList.add(iVar2);
                    if (this.md) {
                        com.byazt.nr.m.tt("SegmentDispatcher", "clearCovered, covered = " + iVar2 + ", prev = " + iVar);
                    }
                } else if (iVar2.n() > iVar.n()) {
                    i10++;
                }
            }
            if (arrayList != null) {
                for (i iVar3 : arrayList) {
                    this.f14830z.remove(iVar3);
                    for (u uVar : this.f14829x) {
                        if (uVar.f14851c == iVar3) {
                            if (this.md) {
                                com.byazt.nr.m.tt("SegmentDispatcher", "clearCoveredSegmentLocked: reconnect, segment = " + iVar3 + ", threadIndex = " + uVar.ve);
                            }
                            uVar.c(true);
                        }
                    }
                }
            }
        }
    }

    private void x() {
        if (this.gr > 0) {
            this.zm = System.currentTimeMillis();
            this.rl.c(this.f14820d, 0L);
        }
    }

    private boolean yp() {
        long j10 = this.f14828u;
        if (j10 <= 0) {
            this.rh = false;
            return false;
        }
        synchronized (this) {
            long jC = z.c(this.f14830z);
            com.byazt.x.c.ve("SegmentDispatcher", "isAllContentDownloaded: firstOffset = ".concat(String.valueOf(jC)));
            if (jC >= j10) {
                this.rh = true;
                return true;
            }
            this.rh = false;
            return false;
        }
    }

    private long z() {
        Iterator<u> it2 = this.f14829x.iterator();
        long jTt = 0;
        while (it2.hasNext()) {
            jTt += it2.next().tt();
        }
        return jTt;
    }

    private void a() {
        this.f14823i.add(new nu(this.f14819c.getUrl(), true));
        List<String> backUpUrls = this.f14819c.getBackUpUrls();
        if (backUpUrls != null) {
            for (String str : backUpUrls) {
                if (!TextUtils.isEmpty(str)) {
                    this.f14823i.add(new nu(str, false));
                }
            }
        }
        this.tt.c(this.f14823i.size());
    }

    private void n() {
        int iC;
        if (this.f14828u <= 0 || this.f14827t) {
            iC = 1;
        } else {
            iC = this.tt.c();
            int iX = (int) (this.f14828u / this.tt.x());
            if (iC > iX) {
                iC = iX;
            }
        }
        com.byazt.x.c.ve("SegmentDispatcher", "dispatchReadThread: totalLength = " + this.f14828u + ", threadCount = " + iC);
        int i10 = iC > 0 ? iC : 1;
        synchronized (this) {
            while (this.f14829x.size() < i10) {
                if (!this.sp && !this.f14818a) {
                    c(da());
                    if (this.tt.a()) {
                        break;
                    }
                }
                return;
            }
        }
    }

    private void sp() {
        yp ypVar = this.tt;
        this.gu = ypVar.da();
        this.gr = ypVar.sl();
        this.yv = ypVar.z();
        int i10 = this.f14826p;
        if (i10 > 0) {
            this.rl.c(this.f14822h, i10);
        }
    }

    private void tt(List<i> list) {
        long totalBytes = this.f14819c.getTotalBytes();
        this.f14828u = totalBytes;
        if (totalBytes <= 0) {
            this.f14828u = this.f14819c.getExpectFileLength();
            com.byazt.x.c.ve("SegmentDispatcher", "initSegments: getExpectFileLength = " + this.f14828u);
        }
        synchronized (this) {
            this.yp.clear();
            if (list == null || list.isEmpty()) {
                c((List<i>) this.yp, new i(0L, -1L), false);
            } else {
                Iterator<i> it2 = list.iterator();
                while (it2.hasNext()) {
                    c((List<i>) this.yp, new i(it2.next()), false);
                }
                uj(this.yp);
                ve(this.yp);
            }
            com.byazt.x.c.ve("SegmentDispatcher", "initSegments: totalLength = " + this.f14828u);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x004a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void uj() throws com.byazt.m.BaseException {
        /*
            r5 = this;
            com.byazt.h.sp r0 = r5.f14825n     // Catch: com.byazt.m.BaseException -> L8 com.byazt.h.m -> L1c
            com.byazt.h.tt r1 = r5.ve     // Catch: com.byazt.m.BaseException -> L8 com.byazt.h.m -> L1c
            r0.c(r1)     // Catch: com.byazt.m.BaseException -> L8 com.byazt.h.m -> L1c
            goto L1d
        L8:
            r0 = move-exception
            java.lang.String r1 = "SegmentDispatcher"
            java.lang.String r2 = "dispatchSegments: loopAndWrite e = "
            java.lang.String r3 = java.lang.String.valueOf(r0)
            java.lang.String r2 = r2.concat(r3)
            com.byazt.x.c.n(r1, r2)
            r5.c(r0)
            throw r0
        L1c:
        L1d:
            boolean r0 = r5.sp
            if (r0 != 0) goto L8d
            boolean r0 = r5.f14818a
            if (r0 == 0) goto L26
            goto L8d
        L26:
            monitor-enter(r5)     // Catch: java.lang.Throwable -> L4a
        L27:
            java.util.LinkedList<com.byazt.h.i> r0 = r5.yp     // Catch: java.lang.Throwable -> L47
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L47
            if (r0 != 0) goto L40
            java.util.LinkedList<com.byazt.h.i> r0 = r5.yp     // Catch: java.lang.Throwable -> L47
            java.lang.Object r0 = r0.poll()     // Catch: java.lang.Throwable -> L47
            com.byazt.h.i r0 = (com.byazt.h.i) r0     // Catch: java.lang.Throwable -> L47
            if (r0 == 0) goto L27
            java.util.List<com.byazt.h.i> r1 = r5.f14830z     // Catch: java.lang.Throwable -> L47
            r2 = 1
            r5.c(r1, r0, r2)     // Catch: java.lang.Throwable -> L47
            goto L27
        L40:
            java.util.List<com.byazt.h.i> r0 = r5.f14830z     // Catch: java.lang.Throwable -> L47
            r5.ve(r0)     // Catch: java.lang.Throwable -> L47
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L47
            goto L4e
        L47:
            r0 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L47
            throw r0     // Catch: java.lang.Throwable -> L4a
        L4a:
            r0 = move-exception
            com.byazt.nr.m.c(r0)
        L4e:
            boolean r0 = r5.qy
            if (r0 == 0) goto L6f
            com.byazt.m.BaseException r0 = r5.nu
            if (r0 != 0) goto L57
            goto L6f
        L57:
            java.lang.String r0 = "SegmentDispatcher"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "dispatchSegments: loopAndWrite  failedException = "
            r1.<init>(r2)
            com.byazt.m.BaseException r2 = r5.nu
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            com.byazt.x.c.n(r0, r1)
            com.byazt.m.BaseException r0 = r5.nu
            throw r0
        L6f:
            com.byazt.t.DownloadInfo r0 = r5.f14819c
            long r0 = r0.getCurBytes()
            com.byazt.t.DownloadInfo r2 = r5.f14819c
            long r2 = r2.getTotalBytes()
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto L86
            com.byazt.t.DownloadInfo r0 = r5.f14819c
            java.util.List<com.byazt.h.i> r1 = r5.f14830z
            com.byazt.zl.c.c(r0, r1)
        L86:
            java.lang.String r0 = "SegmentDispatcher"
            java.lang.String r1 = "dispatchSegments::download finished"
            com.byazt.x.c.ve(r0, r1)
        L8d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.h.sl.uj():void");
    }

    private void ve() throws BaseException, InterruptedException {
        BaseException baseException;
        synchronized (this.my) {
            if (this.f14821da == null && this.sl == null) {
                this.my.wait();
            }
        }
        if (this.f14821da == null && this.sl == null && (baseException = this.nu) != null) {
            throw baseException;
        }
    }

    public boolean c(List<i> list) throws BaseException, InterruptedException {
        try {
            a();
            tt(list);
            n();
            sp();
            i();
            long jCurrentTimeMillis = System.currentTimeMillis();
            try {
                ve();
                long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                this.f14819c.increaseAllConnectTime(jCurrentTimeMillis2);
                this.f14819c.setFirstSpeedTime(jCurrentTimeMillis2);
                if (!this.sp && !this.f14818a) {
                    this.uj.c(this.f14828u);
                    x();
                    uj();
                    if (!this.sp && !this.f14818a) {
                        com.byazt.x.c.ve("SegmentDispatcher", "finally pause");
                        tt();
                    }
                    this.rl.tt();
                    return true;
                }
                if (!this.sp && !this.f14818a) {
                    com.byazt.x.c.ve("SegmentDispatcher", "finally pause");
                    tt();
                }
                this.rl.tt();
                return true;
            } catch (Throwable th) {
                long jCurrentTimeMillis3 = System.currentTimeMillis() - jCurrentTimeMillis;
                this.f14819c.increaseAllConnectTime(jCurrentTimeMillis3);
                this.f14819c.setFirstSpeedTime(jCurrentTimeMillis3);
                throw th;
            }
        } catch (Throwable th2) {
            if (!this.sp && !this.f14818a) {
                com.byazt.x.c.ve("SegmentDispatcher", "finally pause");
                tt();
            }
            this.rl.tt();
            throw th2;
        }
    }

    private void ve(List<i> list) {
        long jTt = z.tt(list);
        com.byazt.x.c.ve("SegmentDispatcher", "checkDownloadBytes: getCurBytes = " + this.f14819c.getCurBytes() + ", totalBytes = " + this.f14819c.getTotalBytes() + ", downloadedBytes = " + jTt);
        if (jTt > this.f14819c.getTotalBytes() && this.f14819c.getTotalBytes() > 0) {
            jTt = this.f14819c.getTotalBytes();
        }
        if (this.f14819c.getCurBytes() == this.f14819c.getTotalBytes() || this.f14819c.getCurBytes() == jTt) {
            return;
        }
        this.f14819c.setCurBytes(jTt);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00e2  */
    private void n(u uVar, i iVar) throws da {
        i iVar2;
        long j10;
        boolean z10;
        com.byazt.x.c.ve("SegmentDispatcher", "applySegment: start ".concat(String.valueOf(iVar)));
        if (iVar.f14809c == uVar) {
            com.byazt.x.c.ve("SegmentDispatcher", "applySegment: " + uVar + " is already the owner of " + iVar);
            return;
        }
        if (iVar.f14809c != null) {
            com.byazt.x.c.n("SegmentDispatcher", "applySegment: " + iVar + " is already has an owner:" + iVar.f14809c);
            throw new da(1, "segment already has an owner");
        }
        if (uVar.x() == iVar.n()) {
            long jVe = iVar.ve();
            int iC = c(jVe);
            if (iC != -1 && (iVar2 = this.f14830z.get(iC)) != null) {
                if (iVar2 != iVar) {
                    if (iVar2.ve() == iVar.ve()) {
                        long jC = c(iVar2);
                        if (jC > 0) {
                            u uVar2 = iVar2.f14809c;
                            if (uVar2 != null) {
                                if (jC < PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) {
                                    j10 = jVe;
                                    if (uVar.f14850a - uVar2.f14850a <= 1000 || iVar2.n() - iVar.n() >= jC / 2) {
                                    }
                                } else {
                                    j10 = jVe;
                                }
                                com.byazt.nr.m.c("SegmentDispatcher", "applySegmentLocked: has same segment, but owner is normal, abort. segmentInList = ".concat(String.valueOf(iVar2)));
                            } else {
                                j10 = jVe;
                            }
                            if (uVar2 != null) {
                                com.byazt.nr.m.c("SegmentDispatcher", "applySegmentLocked: has same segment,and owner too slow, segmentInList = ".concat(String.valueOf(iVar2)));
                                uVar2.c(true);
                            } else {
                                com.byazt.nr.m.c("SegmentDispatcher", "applySegmentLocked: has same segment and no owner, segmentInList = ".concat(String.valueOf(iVar2)));
                            }
                            iVar.ve(iVar2.a());
                            iVar.tt(iVar2.da());
                            this.f14830z.set(iC, iVar);
                            z10 = true;
                        } else {
                            j10 = jVe;
                        }
                        z10 = false;
                    } else {
                        j10 = jVe;
                        z10 = false;
                    }
                    if (!z10) {
                        com.byazt.x.c.n("SegmentDispatcher", "applySegment: " + iVar + " not exist! but has another same segment, segmentInList = " + iVar2);
                        throw new da(2, "segment not exist, but has another same segment");
                    }
                } else {
                    j10 = jVe;
                }
                long jC2 = iVar.c();
                for (int i10 = iC - 1; i10 >= 0; i10--) {
                    i iVar3 = this.f14830z.get(i10);
                    long jA = iVar3.a();
                    if (jA <= 0 || jA >= j10) {
                        if (jC2 <= 0 && iVar3.n() > j10) {
                            com.byazt.x.c.n("SegmentDispatcher", "applySegment:prev's current has over this start, prev = " + iVar3 + ", segment = " + iVar);
                            this.f14830z.remove(iVar);
                            throw new da(3, "prev overstep");
                        }
                        if (iVar3.f14809c == null) {
                            iVar3.ve(j10 - 1);
                            com.byazt.x.c.ve("SegmentDispatcher", "applySegment: prev set end, prev = ".concat(String.valueOf(iVar3)));
                            if (iVar3.c() > 0) {
                                break;
                            }
                        } else {
                            long j11 = j10 - 1;
                            if (iVar3.f14809c.c(j11)) {
                                iVar3.ve(j11);
                                com.byazt.x.c.ve("SegmentDispatcher", "applySegment: adjustSegmentEndOffset succeed, prev = ".concat(String.valueOf(iVar3)));
                                break;
                            } else {
                                com.byazt.x.c.n("SegmentDispatcher", "applySegment: adjustSegmentEndOffset filed, prev = ".concat(String.valueOf(iVar3)));
                                throw new da(4, "prev end adjust fail");
                            }
                        }
                    }
                }
                int size = this.f14830z.size();
                for (int i11 = iC + 1; i11 < size; i11++) {
                    i iVar4 = this.f14830z.get(i11);
                    if (iVar4.c() > 0 || iVar4.f14809c != null) {
                        long jA2 = iVar.a();
                        long jVe2 = iVar4.ve();
                        if (jA2 > 0 && jA2 < jVe2) {
                            break;
                        }
                        long j12 = jVe2 - 1;
                        iVar.ve(j12);
                        com.byazt.x.c.ve("SegmentDispatcher", "applySegment: segment set end:" + j12 + ", later = " + iVar4);
                        break;
                    }
                }
                long jA3 = iVar.a();
                if (jA3 > 0 && (j10 > jA3 || iVar.n() > jA3)) {
                    throw new da(6, "applySegment: ".concat(String.valueOf(iVar)));
                }
                iVar.f14809c = uVar;
                com.byazt.x.c.ve("SegmentDispatcher", "applySegment: OK ".concat(String.valueOf(iVar)));
                return;
            }
            com.byazt.x.c.n("SegmentDispatcher", "applySegment: " + iVar + " not exist! segmentIndex = " + iC);
            throw new da(2, "segment not exist");
        }
        throw new da(5, "applySegment");
    }

    private void tt(String str, List<nu> list) {
        int iC;
        if (this.md) {
            Iterator<nu> it2 = list.iterator();
            while (it2.hasNext()) {
                com.byazt.nr.m.c("SegmentDispatcher", "addIpListLocked: urlRecord = ".concat(String.valueOf(it2.next())));
            }
        }
        int iT = this.tt.t();
        if ((iT == 1 || iT == 3) && (iC = c(str)) >= 0 && iC < this.f14823i.size()) {
            this.f14823i.addAll(iC + 1, list);
        } else {
            this.f14823i.addAll(list);
        }
    }

    private List<nu> ve(String str, List<InetAddress> list) {
        boolean z10;
        if (list != null && !list.isEmpty()) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int i10 = 0;
            for (InetAddress inetAddress : list) {
                if (inetAddress != null) {
                    String hostAddress = inetAddress.getHostAddress();
                    if (!TextUtils.isEmpty(hostAddress)) {
                        if (this.md) {
                            com.byazt.nr.m.c("SegmentDispatcher", "onDnsResolved: ip = ".concat(String.valueOf(hostAddress)));
                        }
                        nu nuVar = new nu(str, hostAddress);
                        LinkedList linkedList = (LinkedList) linkedHashMap.get(nuVar.ve);
                        if (linkedList == null) {
                            linkedList = new LinkedList();
                            linkedHashMap.put(nuVar.ve, linkedList);
                        }
                        linkedList.add(nuVar);
                        i10++;
                    }
                }
            }
            if (i10 > 0) {
                ArrayList arrayList = new ArrayList();
                do {
                    Iterator it2 = linkedHashMap.entrySet().iterator();
                    z10 = false;
                    while (it2.hasNext()) {
                        LinkedList linkedList2 = (LinkedList) ((Map.Entry) it2.next()).getValue();
                        if (linkedList2 != null && !linkedList2.isEmpty()) {
                            arrayList.add((nu) linkedList2.pollFirst());
                            i10--;
                            z10 = true;
                        }
                    }
                    if (i10 <= 0) {
                        break;
                    }
                } while (z10);
                return arrayList;
            }
        }
        return null;
    }

    private void uj(List<i> list) {
        i iVar = list.get(0);
        long jVe = iVar.ve();
        if (jVe > 0) {
            i iVar2 = new i(0L, jVe - 1);
            com.byazt.nr.m.tt("SegmentDispatcher", "fixSegmentsLocked: first = " + iVar + ", add new first = " + iVar2);
            c(list, iVar2, true);
        }
        Iterator<i> it2 = list.iterator();
        if (it2.hasNext()) {
            i next = it2.next();
            while (it2.hasNext()) {
                i next2 = it2.next();
                if (next.a() < next2.ve() - 1) {
                    com.byazt.x.c.uj("SegmentDispatcher", "fixSegment: segment = " + next + ", new end = " + (next2.ve() - 1));
                    next.ve(next2.ve() - 1);
                }
                next = next2;
            }
        }
        i iVar3 = list.get(list.size() - 1);
        long totalBytes = this.f14819c.getTotalBytes();
        if (totalBytes <= 0 || (iVar3.a() != -1 && iVar3.a() < totalBytes - 1)) {
            com.byazt.x.c.uj("SegmentDispatcher", "fixSegment: last segment = " + iVar3 + ", new end=-1");
            iVar3.ve(-1L);
        }
    }

    private i tt(u uVar, nu nuVar) {
        while (!this.yp.isEmpty()) {
            i iVarPoll = this.yp.poll();
            if (iVarPoll != null) {
                c(this.f14830z, iVarPoll, true);
                if (c(iVarPoll) > 0 || this.f14828u <= 0) {
                    return iVarPoll;
                }
            }
        }
        u();
        i iVarVe = ve(uVar, nuVar);
        if (iVarVe != null && c(iVarVe) > 0) {
            c(this.f14830z, iVarVe, true);
            return iVarVe;
        }
        i iVarM = m();
        if (iVarM != null) {
            return iVarM;
        }
        return null;
    }

    @Override // com.byazt.h.a
    public void tt(u uVar, i iVar) throws BaseException {
        synchronized (this) {
            n(uVar, iVar);
        }
    }

    @Override // com.byazt.hs.ve.c
    public void c(String str, List<InetAddress> list) {
        List<nu> listVe;
        if (this.sp || this.f14818a) {
            return;
        }
        try {
            listVe = ve(str, list);
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
            listVe = null;
        }
        synchronized (this) {
            if (listVe != null) {
                tt(str, listVe);
                this.f14827t = false;
                this.tt.c(this.f14823i.size());
                com.byazt.nr.m.c("SegmentDispatcher", "onDnsResolved: dispatchReadThread");
                n();
            } else {
                this.f14827t = false;
                this.tt.c(this.f14823i.size());
                com.byazt.nr.m.c("SegmentDispatcher", "onDnsResolved: dispatchReadThread");
                n();
            }
            throw th;
        }
    }

    @Override // com.byazt.h.a
    public void tt(u uVar) {
        com.byazt.x.c.ve("SegmentDispatcher", "onReaderExit: threadIndex = " + uVar.ve);
        synchronized (this) {
            uVar.ve(true);
            this.f14829x.remove(uVar);
            u();
            if (!this.f14829x.isEmpty()) {
                if (yp()) {
                    com.byazt.nr.m.c("SegmentDispatcher", "onReaderExit: allContentDownloaded");
                    Iterator<u> it2 = this.f14829x.iterator();
                    while (it2.hasNext()) {
                        it2.next().n();
                    }
                    sl();
                }
            } else {
                sl();
            }
        }
    }

    @Override // com.byazt.h.a
    public void ve(u uVar, i iVar) {
        synchronized (this) {
            if (iVar.f14809c == uVar) {
                com.byazt.x.c.ve("SegmentDispatcher", "unApplySegment ".concat(String.valueOf(iVar)));
                iVar.uj(uVar.uj());
                iVar.f14809c = null;
                uVar.c();
            }
        }
    }

    @Override // com.byazt.h.a
    public n uj(u uVar, i iVar) throws BaseException {
        n nVarC;
        synchronized (this) {
            t tVar = new t(this.f14819c, this.ve, iVar);
            this.f14825n.c(tVar);
            nVarC = tVar.c();
        }
        return nVarC;
    }

    private int c(String str) {
        int size = this.f14823i.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (TextUtils.equals(this.f14823i.get(i10).f14813c, str)) {
                return i10;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ve(u uVar) {
        synchronized (this) {
            nu nuVarUj = uj(uVar);
            if (nuVarUj == null) {
                return false;
            }
            return uVar.c(nuVarUj);
        }
    }

    private nu uj(u uVar) {
        nu next;
        Iterator<nu> it2 = this.f14823i.iterator();
        nu nuVar = null;
        while (true) {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
            if (next != uVar.tt && !next.uj()) {
                if (nuVar == null) {
                    nuVar = next;
                }
                if (next.c() <= 0) {
                    break;
                }
            }
        }
        if (this.tt.tt()) {
            if (next != null) {
                return next;
            }
            if (this.tt.ve()) {
                return null;
            }
        }
        return nuVar;
    }

    private void c(List<i> list, i iVar, boolean z10) {
        long jVe = iVar.ve();
        int size = list.size();
        int i10 = 0;
        while (i10 < size && jVe >= list.get(i10).ve()) {
            i10++;
        }
        list.add(i10, iVar);
        if (z10) {
            iVar.c(size);
        }
    }

    private void tt(u uVar, i iVar, nu nuVar, com.byazt.t.uj ujVar) throws BaseException, com.byazt.m.i {
        u uVar2 = iVar.f14809c;
        if (uVar2 != null && uVar2 != uVar) {
            throw new da(1, "segment already has an owner");
        }
        if (uVar.x() == iVar.n()) {
            if (!ujVar.tt()) {
                if (iVar.n() <= 0) {
                    com.byazt.x.c.n("SegmentDispatcher", "parseHttpResponse: segment.getCurrentOffsetRead = " + iVar.n());
                    if (!ujVar.c()) {
                        throw new com.byazt.m.tt(1004, ujVar.ve, "2: response code error : " + ujVar.ve + " segment=" + iVar);
                    }
                } else {
                    throw new com.byazt.m.tt(1004, ujVar.ve, "1: response code error : " + ujVar.ve + " segment=" + iVar);
                }
            }
            if (nuVar.uj) {
                if (this.f14821da == null) {
                    this.f14821da = ujVar;
                    synchronized (this.my) {
                        this.my.notify();
                    }
                    com.byazt.u.a aVar = this.uj;
                    if (aVar != null) {
                        aVar.c(nuVar.f14813c, ujVar.tt, iVar.n());
                    }
                    long jDa = ujVar.da();
                    if (jDa > 0) {
                        for (i iVar2 : this.f14830z) {
                            if (iVar2.a() <= 0 || iVar2.a() > jDa - 1) {
                                iVar2.ve(jDa - 1);
                            }
                        }
                        return;
                    }
                    return;
                }
                return;
            }
            c(ujVar);
            if (this.sl == null) {
                this.sl = ujVar;
                if (this.f14819c.getTotalBytes() <= 0) {
                    long jDa2 = ujVar.da();
                    com.byazt.x.c.ve("SegmentDispatcher", "checkSegmentHttpResponse:len=" + jDa2 + ",url=" + nuVar.f14813c);
                    this.f14819c.setTotalBytes(jDa2);
                }
                synchronized (this.my) {
                    this.my.notify();
                }
                return;
            }
            return;
        }
        throw new da(5, "applySegment");
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:48:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:49:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:51:0x00dd  */
    private i ve(u uVar, nu nuVar) {
        String str;
        float f10;
        float f11;
        long j10;
        long j11;
        long j12;
        int size = this.f14830z.size();
        long j13 = -1;
        int i10 = -1;
        for (int i11 = 0; i11 < size; i11++) {
            long jC = c(i11, size);
            if (jC > j13) {
                i10 = i11;
                j13 = jC;
            }
        }
        long jSp = this.tt.sp();
        long jI = this.tt.i();
        if (i10 < 0 || j13 <= jSp) {
            return null;
        }
        i iVar = this.f14830z.get(i10);
        int iYp = this.f14830z.size() < this.f14829x.size() ? 2 : this.tt.yp();
        if (iYp == 1) {
            u uVar2 = iVar.f14809c;
            if (uVar2 != null) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j14 = jCurrentTimeMillis - 4000;
                long jC2 = uVar2.c(j14, jCurrentTimeMillis);
                long jC3 = uVar.c(j14, jCurrentTimeMillis);
                float f12 = (jC2 <= 0 || jC3 <= 0) ? -1.0f : jC3 / (jC2 + jC3);
                if (f12 == -1.0f) {
                    long jTt = uVar2.tt();
                    f10 = f12;
                    long jTt2 = uVar.tt();
                    if (jTt > 0 && jTt2 > 0) {
                        f11 = jTt2 / (jTt + jTt2);
                    }
                    if (f11 > 0.0f) {
                        float f13 = f11 * 0.9f;
                        j10 = (long) (j13 * f13);
                        if (j10 < jSp) {
                            j10 = jSp;
                        }
                        if (jI > 0 || j10 <= jI) {
                            jI = j10;
                        }
                        j11 = jSp / 2;
                        j12 = j13 - j11;
                        if (jI > j12) {
                            jI = j12;
                        } else if (jI < j11) {
                            jI = j11;
                        }
                        i iVar2 = new i(iVar.n() + (j13 - jI), iVar.a());
                        com.byazt.x.c.ve("SegmentDispatcher", "obtainSegment: parent = " + iVar + ", child = " + iVar2 + ", maxRemainBytes = " + j13 + ", childLength = " + jI + ", ratio = " + f13 + ", threadIndex = " + uVar.ve);
                        return iVar2;
                    }
                } else {
                    f10 = f12;
                }
                f11 = f10;
                if (f11 > 0.0f) {
                    float f14 = f11 * 0.9f;
                    j10 = (long) (j13 * f14);
                    if (j10 < jSp) {
                        j10 = jSp;
                    }
                    if (jI > 0) {
                        jI = j10;
                    } else {
                        jI = j10;
                    }
                    j11 = jSp / 2;
                    j12 = j13 - j11;
                    if (jI > j12) {
                        jI = j12;
                    } else if (jI < j11) {
                        jI = j11;
                    }
                    i iVar3 = new i(iVar.n() + (j13 - jI), iVar.a());
                    com.byazt.x.c.ve("SegmentDispatcher", "obtainSegment: parent = " + iVar + ", child = " + iVar3 + ", maxRemainBytes = " + j13 + ", childLength = " + jI + ", ratio = " + f14 + ", threadIndex = " + uVar.ve);
                    return iVar3;
                }
            }
            str = "SegmentDispatcher";
        } else {
            if (iYp == 2) {
                long curBytes = this.f14828u - this.f14819c.getCurBytes();
                float fUj = uj(uVar, nuVar);
                long j15 = (long) (curBytes * fUj);
                if (j15 < jSp) {
                    j15 = jSp;
                }
                if (jI <= 0 || j15 <= jI) {
                    jI = j15;
                }
                long j16 = jSp / 2;
                long j17 = j13 - j16;
                if (jI > j17) {
                    jI = j17;
                } else if (jI < j16) {
                    jI = j16;
                }
                i iVar4 = new i(iVar.n() + (j13 - jI), iVar.a());
                com.byazt.x.c.ve("SegmentDispatcher", "obtainSegment: parent = " + iVar + ", child = " + iVar4 + ", maxRemainBytes = " + j13 + ", childLength = " + jI + ", ratio = " + fUj + ", threadIndex = " + uVar.ve);
                return iVar4;
            }
            str = "SegmentDispatcher";
        }
        i iVar5 = new i(iVar.n() + (j13 / 2), iVar.a());
        com.byazt.x.c.ve(str, "obtainSegment: parent = " + iVar + ",child = " + iVar5);
        return iVar5;
    }

    private float uj(u uVar, nu nuVar) {
        long jTt = uVar.tt();
        int size = this.f14829x.size();
        if (size <= 1) {
            size = this.tt.c();
        }
        float f10 = 1.0f;
        if (jTt <= 0) {
            float fU = this.tt.u();
            if (fU <= 0.0f || fU >= 1.0f) {
                fU = 1.0f / size;
            }
            if (uVar.ve == 0) {
                return fU;
            }
            if (size > 1) {
                f10 = 1.0f - fU;
                size--;
            }
        } else {
            long jZ = z();
            if (jZ > jTt) {
                return jTt / jZ;
            }
        }
        return f10 / size;
    }

    private void c(nu nuVar) {
        u uVar = new u(this.f14819c, this, this.ve, nuVar, this.f14829x.size());
        this.f14829x.add(uVar);
        uVar.c(com.byazt.zz.ve.nu().submit(uVar));
    }

    @Override // com.byazt.h.a
    public void c(u uVar) {
        if (this.md) {
            com.byazt.x.c.ve("SegmentDispatcher", "onReaderRun, threadIndex = " + uVar.ve);
        }
    }

    @Override // com.byazt.h.a
    public i c(u uVar, nu nuVar) {
        if (this.f14818a || this.sp) {
            return null;
        }
        synchronized (this) {
            i iVarTt = tt(uVar, nuVar);
            if (iVarTt != null) {
                iVarTt.x();
                if (iVarTt.da() > 1) {
                    return new i(iVarTt);
                }
            }
            return iVarTt;
        }
    }

    @Override // com.byazt.h.a
    public void c(u uVar, i iVar) {
        synchronized (this) {
            iVar.i();
        }
    }

    @Override // com.byazt.h.a
    public void c(u uVar, i iVar, nu nuVar, com.byazt.t.uj ujVar) throws BaseException, com.byazt.m.i {
        synchronized (this) {
            if (!this.f14818a && !this.sp) {
                tt(uVar, iVar, nuVar, ujVar);
                uVar.tt(false);
                if (this.f14828u <= 0) {
                    long totalBytes = this.f14819c.getTotalBytes();
                    this.f14828u = totalBytes;
                    if (totalBytes <= 0) {
                        this.f14828u = ujVar.da();
                    }
                    n();
                } else if (this.tt.a()) {
                    n();
                }
            } else {
                throw new m(ConstantsInternal.HM_SYS_CONFIG_NOTIFY_CONNECTED);
            }
        }
    }

    @Override // com.byazt.h.a
    public void c(u uVar, nu nuVar, i iVar, BaseException baseException, int i10, int i11) {
        boolean zTt = com.byazt.w.a.tt(baseException);
        int errorCode = baseException.getErrorCode();
        if (errorCode == 1047 || errorCode == 1074 || errorCode == 1055) {
            zTt = true;
        }
        if (zTt || i10 >= i11) {
            ve(uVar);
        }
    }

    public void tt() {
        com.byazt.x.c.ve("SegmentDispatcher", "pause1");
        this.sp = true;
        synchronized (this) {
            Iterator<u> it2 = this.f14829x.iterator();
            while (it2.hasNext()) {
                it2.next().n();
            }
        }
        this.f14825n.tt();
        this.ve.ve();
    }

    @Override // com.byazt.h.a
    public void c(u uVar, nu nuVar, i iVar, BaseException baseException) {
        synchronized (this) {
            com.byazt.x.c.n("SegmentDispatcher", "onSegmentFailed: segment = " + iVar + ", e = " + baseException);
            uVar.tt(true);
            if (uVar.ve == 0) {
                this.nu = baseException;
            }
            if (t()) {
                if (this.nu == null) {
                    this.nu = baseException;
                }
                this.qy = true;
                c(this.nu);
            }
        }
    }

    private void tt(long j10) {
        this.gt.c(this.f14819c.getCurBytes(), j10);
        Iterator<u> it2 = this.f14829x.iterator();
        while (it2.hasNext()) {
            it2.next().tt(j10);
        }
    }

    private void c(BaseException baseException) {
        com.byazt.x.c.n("SegmentDispatcher", "onError, e = ".concat(String.valueOf(baseException)));
        this.nu = baseException;
        this.ve.ve();
        synchronized (this) {
            Iterator<u> it2 = this.f14829x.iterator();
            while (it2.hasNext()) {
                it2.next().n();
            }
        }
    }

    private void c(com.byazt.t.uj ujVar) throws BaseException {
        com.byazt.t.uj ujVar2 = this.f14821da;
        if (ujVar2 == null && (ujVar2 = this.sl) == null) {
            return;
        }
        long jDa = ujVar.da();
        long jDa2 = ujVar2.da();
        if (jDa != jDa2) {
            String str = "total len not equals,len=" + jDa + ",sLen=" + jDa2 + ",code=" + ujVar.ve + ",sCode=" + ujVar2.ve + ",range=" + ujVar.n() + ",sRange = " + ujVar2.n() + ",url = " + ujVar.f20115c + ",sUrl=" + ujVar2.f20115c;
            com.byazt.x.c.n("SegmentDispatcher", str);
            if (jDa > 0 && jDa2 > 0) {
                throw new BaseException(1074, str);
            }
        }
        String strVe = ujVar.ve();
        String strVe2 = ujVar2.ve();
        if (TextUtils.equals(strVe, strVe2)) {
            return;
        }
        String str2 = "etag not equals with main url, etag = " + strVe + ", mainEtag = " + strVe2;
        com.byazt.x.c.n("SegmentDispatcher", str2);
        if (!TextUtils.isEmpty(strVe) && !TextUtils.isEmpty(strVe2) && !strVe.equalsIgnoreCase(strVe2)) {
            throw new BaseException(1074, str2);
        }
    }

    public void c() {
        com.byazt.x.c.ve("SegmentDispatcher", "cancel");
        this.f14818a = true;
        synchronized (this) {
            Iterator<u> it2 = this.f14829x.iterator();
            while (it2.hasNext()) {
                it2.next().n();
            }
        }
        this.f14825n.c();
        this.ve.ve();
    }

    private int c(long j10) {
        int size = this.f14830z.size();
        for (int i10 = 0; i10 < size; i10++) {
            i iVar = this.f14830z.get(i10);
            if (iVar.ve() == j10) {
                return i10;
            }
            if (iVar.ve() > j10) {
                return -1;
            }
        }
        return -1;
    }

    private long c(int i10, int i11) {
        i iVar = this.f14830z.get(i10);
        long jC = c(iVar);
        int i12 = i10 + 1;
        i iVar2 = i12 < i11 ? this.f14830z.get(i12) : null;
        if (iVar2 == null) {
            return jC;
        }
        long jVe = iVar2.ve() - iVar.n();
        return jC == -1 ? jVe : Math.min(jC, jVe);
    }

    private long c(i iVar) {
        long jTt = iVar.tt();
        if (jTt != -1) {
            return jTt;
        }
        long j10 = this.f14828u;
        return j10 > 0 ? j10 - iVar.n() : jTt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public u c(boolean z10, long j10, long j11) {
        u uVar = null;
        for (u uVar2 : this.f14829x) {
            if (uVar2.ve != 0 || z10) {
                if (uVar2.uj > 0 && uVar2.f14857n <= 0 && j10 - uVar2.uj > j11 && (uVar == null || uVar2.uj < uVar.uj)) {
                    uVar = uVar2;
                }
            }
        }
        return uVar;
    }

    private boolean c(u uVar, long j10, long j11, long j12, double d10) {
        if (uVar.f14850a <= 0) {
            return false;
        }
        long jTt = this.gt.tt(j10, j11);
        int size = this.f14829x.size();
        long j13 = size > 0 ? jTt / ((long) size) : jTt;
        long jC = uVar.c(j10, j11);
        if (jC >= j12 && jC >= j13 * d10) {
            return false;
        }
        com.byazt.nr.m.c("SegmentDispatcher", "isDownloadSpeedPoor: totalSpeed = " + jTt + ", threadAvgSpeed = " + j13 + ", poorSpeed = " + j12 + ", speed = " + jC + ",threadIndex = " + uVar.ve);
        return true;
    }

    private boolean c(long j10, long j11) {
        long j12 = j10 - j11;
        long jTt = this.gt.tt(j12, j10);
        int size = this.f14829x.size();
        if (size > 0) {
            jTt /= (long) size;
        }
        u uVarC = c(j12, j10, (long) Math.max(10.0f, jTt * this.yv), size / 2);
        if (uVarC != null) {
            ve(uVarC);
            com.byazt.x.c.uj("SegmentDispatcher", "handlePoorReadThread: reconnect for poor speed, threadIndex = " + uVarC.ve);
            uVarC.a();
            return true;
        }
        u uVarC2 = c(true, j10, j11);
        if (uVarC2 == null) {
            return false;
        }
        ve(uVarC2);
        com.byazt.x.c.uj("SegmentDispatcher", "handlePoorReadThread: reconnect for connect timeout, threadIndex = " + uVarC2.ve);
        uVarC2.a();
        return true;
    }

    private u c(long j10, long j11, long j12, int i10) {
        long j13 = Long.MAX_VALUE;
        int i11 = 0;
        u uVar = null;
        for (u uVar2 : this.f14829x) {
            if (uVar2.f14850a > 0) {
                int i12 = i11 + 1;
                if (uVar2.f14850a < j10) {
                    long jC = uVar2.c(j10, j11);
                    if (this.md) {
                        com.byazt.nr.m.c("SegmentDispatcher", "findPoorReadThread: speed = " + jC + ", threadIndex = " + uVar2.ve);
                    }
                    if (jC >= 0 && jC < j13) {
                        j13 = jC;
                        uVar = uVar2;
                    }
                }
                i11 = i12;
            }
        }
        if (uVar == null || i11 < i10 || j13 >= j12) {
            return null;
        }
        com.byazt.x.c.ve("SegmentDispatcher", "findPoorReadThread: ----------- minSpeed = " + j13 + ", threadIndex = " + uVar.ve);
        return uVar;
    }
}
