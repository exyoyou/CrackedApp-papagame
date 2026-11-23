package com.byazt.u;

import android.database.sqlite.SQLiteException;
import android.os.Handler;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import com.byazt.c.IDownloadInterceptor;
import com.byazt.c.gr;
import com.byazt.c.gu;
import com.byazt.c.nu;
import com.byazt.c.rh;
import com.byazt.h.sl;
import com.byazt.h.yp;
import com.byazt.hs.i;
import com.byazt.hs.t;
import com.byazt.m.BaseException;
import com.byazt.nr.m;
import com.byazt.t.DownloadInfo;
import com.byazt.t.DownloadTask;
import com.byazt.zz.da;
import com.byazt.zz.my;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.haima.hmcp.proto.GSSDK;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.kuaishou.weapon.p0.g;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.SSLHandshakeException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
@com.byazt.zqa.c(c = {0, 1, 67, 54})
public class ve implements a, Runnable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f20508c = "ve";
    public long cu;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f20511da;
    public String eo;
    public i gr;
    public final com.byazt.zz.sp gt;
    public volatile BaseException gu;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f20513i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public DownloadInfo f20514m;
    public com.byazt.zz.sp my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public AtomicInteger f20515n;
    public com.byazt.zz.x nu;
    public long or;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public rh f20517p;
    public final com.byazt.k.c qp;
    public final com.byazt.zz.a qy;
    public final com.byazt.zz.x rh;
    public my rl;
    public boolean sl;
    public volatile com.byazt.zz.n sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f20518t;
    public Future tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final AtomicBoolean f20519u;
    public final DownloadTask ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f20520x;
    public gu yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final da f20521z;
    public com.byazt.hs.sp zm;
    public volatile boolean uj = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList<tt> f20509a = new ArrayList<>();
    public volatile com.byazt.ev.x yp = com.byazt.ev.x.RUN_STATUS_NONE;
    public volatile int md = 5;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f20512h = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f20510d = false;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public boolean f20522zb = false;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public int f20516nb = 0;
    public volatile sl pf = null;

    public ve(DownloadTask downloadTask, Handler handler) {
        this.ve = downloadTask;
        if (downloadTask != null) {
            this.f20514m = downloadTask.getDownloadInfo();
            this.nu = downloadTask.getChunkStrategy();
            this.my = downloadTask.getChunkAdjustCalculator();
            this.yv = downloadTask.getForbiddenHandler();
            this.f20517p = downloadTask.getDiskSpaceHandler();
            this.rl = c(downloadTask);
            this.qp = com.byazt.k.c.c(this.f20514m.getId());
        } else {
            this.qp = com.byazt.k.c.ve();
        }
        x();
        this.f20521z = com.byazt.zz.ve.zm();
        this.rh = com.byazt.zz.ve.nb();
        this.gt = com.byazt.zz.ve.bx();
        this.qy = new com.byazt.zz.a(downloadTask, handler);
        this.f20519u = new AtomicBoolean(true);
    }

    private void cu() {
        com.byazt.x.c.uj(f20508c, "clearCurrentDownloadData::" + Log.getStackTraceString(new Throwable()));
        try {
            this.f20521z.uj(this.f20514m.getId());
            this.f20521z.u(this.f20514m.getId());
            com.byazt.w.a.c(this.f20514m);
            this.f20513i = false;
            this.f20514m.resetDataForEtagEndure("");
            this.f20521z.c(this.f20514m);
        } catch (Throwable th) {
            m.c(th);
        }
    }

    private void d() throws BaseException {
        long jUj;
        int iC;
        try {
            jUj = com.byazt.w.a.uj(this.f20514m.getTempPath());
        } catch (BaseException unused) {
            jUj = 0;
        }
        String str = f20508c;
        com.byazt.x.c.ve(str, "checkSpaceOverflowInProgress: available = " + com.byazt.w.a.c(jUj) + "MB");
        if (jUj > 0) {
            long totalBytes = this.f20514m.getTotalBytes() - this.f20514m.getCurBytes();
            if (jUj < totalBytes && (iC = com.byazt.k.c.c(this.f20514m.getId()).c("space_fill_min_keep_mb", 100)) > 0) {
                long j10 = jUj - (((long) iC) * 1048576);
                com.byazt.x.c.ve(str, "checkSpaceOverflowInProgress: minKeep  = " + iC + "MB, canDownload = " + com.byazt.w.a.c(j10) + "MB");
                if (j10 > 0) {
                    this.or = this.f20514m.getCurBytes() + j10 + 1048576;
                    return;
                } else {
                    this.or = 0L;
                    throw new com.byazt.m.uj(jUj, totalBytes);
                }
            }
        }
        this.or = 0L;
    }

    /* JADX WARN: Code duplicated, block: B:100:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:102:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x00aa A[Catch: all -> 0x00e6, TryCatch #7 {all -> 0x00e6, blocks: (B:58:0x00a6, B:60:0x00aa, B:62:0x00ae, B:74:0x00e5), top: B:89:0x0003 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x00cc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:80:0x00f3 A[Catch: SQLiteException -> 0x00fb, TRY_LEAVE, TryCatch #9 {SQLiteException -> 0x00fb, blocks: (B:78:0x00eb, B:80:0x00f3), top: B:90:0x00eb }] */
    /* JADX WARN: Code duplicated, block: B:92:0x00ce A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 4, insn: 0x00e9: IF  (r4 I:??[int, boolean, OBJECT, ARRAY, byte, short, char]) == (0 ??[int, boolean, OBJECT, ARRAY, byte, short, char])  -> B:80:0x00f3 (LINE:234), block:B:77:0x00e9 */
    private void da() throws com.byazt.m.c {
        boolean z10;
        boolean z11;
        DownloadTask downloadTask;
        boolean z12 = false;
        try {
            try {
                int id2 = this.f20514m.getId();
                if (this.f20521z != null) {
                    if (com.byazt.w.c.c(2048)) {
                        this.f20521z.n();
                    }
                    DownloadInfo downloadInfoTt = this.f20521z.tt(id2);
                    z11 = true;
                    if (downloadInfoTt != null && !downloadInfoTt.isNewTask()) {
                        String savePath = this.f20514m.getSavePath();
                        String md5 = this.f20514m.getMd5();
                        this.f20514m.copyFromCacheData(downloadInfoTt, true);
                        boolean z13 = com.byazt.w.c.c(4096) && downloadInfoTt != this.f20514m;
                        try {
                            if (savePath.equals(downloadInfoTt.getSavePath()) && com.byazt.w.a.c(downloadInfoTt, false, md5)) {
                                try {
                                    throw new com.byazt.m.c(downloadInfoTt.getName());
                                } catch (com.byazt.m.c e10) {
                                    throw e10;
                                } catch (Throwable th) {
                                    th = th;
                                    z12 = z13;
                                    downloadTask = this.ve;
                                    if (downloadTask != null && this.f20514m != null) {
                                        com.byazt.zl.c.c(downloadTask.getMonitorDepend(), this.f20514m, new BaseException(1003, com.byazt.w.a.tt(th, "checkTaskCache")), this.f20514m.getStatus());
                                    }
                                    if (z12) {
                                        if (z11) {
                                            try {
                                                if (!this.qp.c("fix_file_exist_update_download_info")) {
                                                    return;
                                                }
                                            } catch (SQLiteException e11) {
                                                m.c(e11);
                                                return;
                                            }
                                        }
                                        this.f20521z.c(this.f20514m);
                                    }
                                }
                            }
                            if (com.byazt.zz.ve.c(downloadInfoTt) != id2) {
                                try {
                                    this.f20521z.a(id2);
                                } catch (SQLiteException e12) {
                                    m.c(e12);
                                }
                            } else {
                                z11 = z13;
                            }
                        } catch (com.byazt.m.c e13) {
                            e = e13;
                        } catch (Throwable th2) {
                            th = th2;
                            z12 = z13;
                            z11 = false;
                            downloadTask = this.ve;
                            if (downloadTask != null) {
                                com.byazt.zl.c.c(downloadTask.getMonitorDepend(), this.f20514m, new BaseException(1003, com.byazt.w.a.tt(th, "checkTaskCache")), this.f20514m.getStatus());
                            }
                            if (z12) {
                                if (z11) {
                                    if (!this.qp.c("fix_file_exist_update_download_info")) {
                                        return;
                                    }
                                }
                                this.f20521z.c(this.f20514m);
                            }
                        }
                        throw e;
                    }
                    this.f20514m.reset();
                } else {
                    z11 = false;
                }
                try {
                    x();
                    if (z11) {
                        try {
                            this.f20521z.c(this.f20514m);
                        } catch (SQLiteException e14) {
                            m.c(e14);
                        }
                    }
                } catch (com.byazt.m.c e15) {
                    e = e15;
                } catch (Throwable th3) {
                    th = th3;
                    z12 = z11;
                    z11 = false;
                    downloadTask = this.ve;
                    if (downloadTask != null) {
                        com.byazt.zl.c.c(downloadTask.getMonitorDepend(), this.f20514m, new BaseException(1003, com.byazt.w.a.tt(th, "checkTaskCache")), this.f20514m.getStatus());
                    }
                    if (z12) {
                        if (z11) {
                            if (!this.qp.c("fix_file_exist_update_download_info")) {
                                return;
                            }
                        }
                        this.f20521z.c(this.f20514m);
                    }
                }
            } catch (Throwable th4) {
                if (0 != 0) {
                    if (z10) {
                        try {
                            if (this.qp.c("fix_file_exist_update_download_info")) {
                                this.f20521z.c(this.f20514m);
                            }
                        } catch (SQLiteException e16) {
                            m.c(e16);
                        }
                    } else {
                        this.f20521z.c(this.f20514m);
                    }
                }
                throw th4;
            }
        } catch (com.byazt.m.c e17) {
            e = e17;
        } catch (Throwable th5) {
            th = th5;
        }
    }

    private void eo() throws com.byazt.m.a {
        if (this.f20514m.isOnlyWifi() && !com.byazt.w.a.c(com.byazt.zz.ve.ic(), g.f74778b)) {
            throw new com.byazt.m.a(1019, String.format("download task need permission:%s", g.f74778b));
        }
        if (!this.f20514m.isDownloadWithWifiValid()) {
            throw new com.byazt.m.ve();
        }
        if (!this.f20514m.isPauseReserveWithWifiValid()) {
            throw new com.byazt.m.n();
        }
    }

    private boolean gr() {
        if (this.f20514m.getChunkCount() <= 1) {
            return this.f20514m.getCurBytes() > 0 && this.f20514m.getCurBytes() == this.f20514m.getTotalBytes();
        }
        List<com.byazt.t.tt> listVe = this.f20521z.ve(this.f20514m.getId());
        if (listVe == null || listVe.size() <= 1) {
            return false;
        }
        for (com.byazt.t.tt ttVar : listVe) {
            if (ttVar == null || !ttVar.i()) {
                return false;
            }
        }
        return true;
    }

    private void gt() throws BaseException {
        if (this.sp != null) {
            if (this.yp == com.byazt.ev.x.RUN_STATUS_CANCELED) {
                this.f20514m.setStatus(-4);
                this.sp.ve();
            } else if (this.yp != com.byazt.ev.x.RUN_STATUS_PAUSE) {
                this.sp.uj();
            } else {
                this.f20514m.setStatus(-2);
                this.sp.tt();
            }
        }
    }

    private boolean gu() {
        if (this.yp == com.byazt.ev.x.RUN_STATUS_ERROR) {
            this.qy.c(this.gu);
        } else if (this.yp == com.byazt.ev.x.RUN_STATUS_CANCELED) {
            this.qy.ve();
        } else if (this.yp == com.byazt.ev.x.RUN_STATUS_PAUSE) {
            this.qy.uj();
        } else if (this.yp == com.byazt.ev.x.RUN_STATUS_END_RIGHT_NOW) {
            try {
                this.qy.sp();
            } catch (BaseException e10) {
                this.qy.c(e10);
            }
        } else if (this.yp == com.byazt.ev.x.RUN_STATUS_END_FOR_FILE_EXIST) {
            try {
                this.qy.c(this.eo);
            } catch (BaseException e11) {
                this.qy.c(e11);
            }
        } else {
            if (this.yp == com.byazt.ev.x.RUN_STATUS_ALL_CHUNK_RETRY_WITH_RESET) {
                this.qy.c(this.gu, false);
                return false;
            }
            if (this.yp == com.byazt.ev.x.RUN_STATUS_WAITING_ASYNC_HANDLER) {
                return true;
            }
            com.byazt.ev.x xVar = this.yp;
            com.byazt.ev.x xVar2 = com.byazt.ev.x.RUN_STATUS_RETRY_DELAY;
            if (xVar == xVar2 && !gr()) {
                com.byazt.x.c.tt(f20508c, "doTaskStatusHandle retryDelay");
                yv();
                return this.yp == xVar2;
            }
            try {
                if (!zm()) {
                    return false;
                }
                this.qy.a();
                com.byazt.b.rh.c().uj();
            } catch (Throwable th) {
                tt(new BaseException(1008, com.byazt.w.a.tt(th, "doTaskStatusHandle onComplete")));
            }
        }
        return true;
    }

    private boolean h() {
        DownloadInfo downloadInfo = this.f20514m;
        return (downloadInfo == null || downloadInfo.isExpiredRedownload() || (this.f20513i && this.f20514m.getChunkCount() <= 1) || this.f20514m.isChunkDowngradeRetryUsed() || !this.f20511da || this.f20518t) ? false : true;
    }

    private boolean i() {
        int status = this.f20514m.getStatus();
        if (status == 1 || this.f20514m.canSkipStatusHandler()) {
            return true;
        }
        if (status == -2 || status == -4) {
            return false;
        }
        tt(new BaseException(1000, "The download Task can't start, because its status is not prepare:" + status));
        return false;
    }

    private void m() {
        boolean zGu;
        boolean z10;
        com.byazt.x.c.tt(f20508c, "endDownloadRunnable::runStatus=" + this.yp);
        boolean z11 = (this.yp == com.byazt.ev.x.RUN_STATUS_PAUSE || this.yp == com.byazt.ev.x.RUN_STATUS_CANCELED) ? false : true;
        try {
            zGu = gu();
            z10 = false;
        } catch (Exception e10) {
            if (e10 instanceof BaseException) {
                this.qy.c((BaseException) e10);
            } else {
                this.qy.c(new BaseException(1046, e10));
            }
            zGu = true;
            z10 = true;
        }
        if (!zGu && !z10) {
            this.f20512h = true;
            com.byazt.x.c.tt(f20508c, "jump to restart");
            return;
        }
        this.f20519u.set(false);
        if (z11) {
            try {
                com.byazt.b.c cVarD = com.byazt.zz.ve.d();
                if (cVarD != null) {
                    cVarD.c(this);
                }
            } catch (Throwable th) {
                m.c(th);
                gr monitorDepend = this.ve.getMonitorDepend();
                DownloadInfo downloadInfo = this.f20514m;
                BaseException baseException = new BaseException(1014, com.byazt.w.a.tt(th, "removeDownloadRunnable"));
                DownloadInfo downloadInfo2 = this.f20514m;
                com.byazt.zl.c.c(monitorDepend, downloadInfo, baseException, downloadInfo2 != null ? downloadInfo2.getStatus() : 0);
            }
        }
    }

    private void md() throws BaseException, com.byazt.m.i {
        com.byazt.b.c cVarD;
        int id2 = this.f20514m.getId();
        int iC = com.byazt.zz.ve.c(this.f20514m);
        if (this.f20514m.isDownloaded() && !this.f20514m.isExpiredRedownload() && !this.f20522zb) {
            throw new BaseException(1009, "file has downloaded");
        }
        DownloadInfo downloadInfoTt = this.f20521z.tt(iC);
        if (downloadInfoTt == null || (cVarD = com.byazt.zz.ve.d()) == null || downloadInfoTt.getId() == id2 || !downloadInfoTt.equalsTask(this.f20514m)) {
            return;
        }
        if (cVarD.c(downloadInfoTt.getId())) {
            this.f20521z.a(id2);
            throw new BaseException(1025, "another same task is downloading");
        }
        List<com.byazt.t.tt> listVe = this.f20521z.ve(iC);
        com.byazt.w.a.c(this.f20514m);
        this.f20521z.a(iC);
        if (downloadInfoTt.isBreakpointAvailable()) {
            this.f20514m.copyFromCacheData(downloadInfoTt, false);
            this.f20521z.c(this.f20514m);
            if (listVe != null) {
                for (com.byazt.t.tt ttVar : listVe) {
                    ttVar.tt(id2);
                    this.f20521z.c(ttVar);
                }
            }
            throw new com.byazt.m.i("retry task because id generator changed");
        }
    }

    private void my() {
        nu();
        rh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nb() {
        com.byazt.b.c cVarD;
        if (qy() || (cVarD = com.byazt.zz.ve.d()) == null) {
            return;
        }
        cVarD.t(this.f20514m.getId());
    }

    private void nu() {
        com.byazt.hs.sp spVar = this.zm;
        if (spVar != null) {
            spVar.ve();
            this.zm = null;
        }
    }

    private void or() {
        long jA = com.byazt.w.a.a(this.f20514m);
        long curBytes = this.f20514m.getCurBytes();
        if (jA != curBytes) {
            com.byazt.x.c.uj(f20508c, "checkTaskCanResume: offset = " + jA + ", curBytes = " + curBytes);
        }
        this.f20514m.setCurBytes(jA);
        boolean z10 = jA > 0;
        this.f20513i = z10;
        if (z10 || this.f20522zb) {
            return;
        }
        com.byazt.x.c.ve(f20508c, "checkTaskCanResume: deleteAllDownloadFiles");
        this.f20521z.uj(this.f20514m.getId());
        this.f20521z.u(this.f20514m.getId());
        com.byazt.w.a.c(this.f20514m);
    }

    private long p() {
        return this.rl.c(this.f20514m.getCurRetryTimeInTotal(), this.f20514m.getTotalRetryCount());
    }

    private boolean pf() {
        return false;
    }

    private void qp() {
        try {
            for (tt ttVar : (ArrayList) this.f20509a.clone()) {
                if (ttVar != null) {
                    ttVar.tt();
                }
            }
        } catch (Throwable th) {
            com.byazt.x.c.ve(f20508c, "cancelAllChunkRunnable: " + th.toString());
        }
    }

    private boolean qy() {
        if (!rl() && this.f20514m.getStatus() != -2) {
            return false;
        }
        if (rl()) {
            return true;
        }
        if (this.f20514m.getStatus() == -2) {
            this.yp = com.byazt.ev.x.RUN_STATUS_PAUSE;
            return true;
        }
        if (this.f20514m.getStatus() != -4) {
            return true;
        }
        this.yp = com.byazt.ev.x.RUN_STATUS_CANCELED;
        return true;
    }

    private void rh() {
        i iVar = this.gr;
        if (iVar != null) {
            iVar.uj();
            this.gr = null;
        }
    }

    private boolean rl() {
        return this.yp == com.byazt.ev.x.RUN_STATUS_CANCELED || this.yp == com.byazt.ev.x.RUN_STATUS_PAUSE;
    }

    private void sl() {
        Process.setThreadPriority(10);
        try {
            DownloadInfo downloadInfo = this.f20514m;
            if (downloadInfo != null && this.cu > 0) {
                downloadInfo.increaseDownloadPrepareTime(System.currentTimeMillis() - this.cu);
            }
        } catch (Throwable unused) {
        }
        try {
            IDownloadInterceptor interceptor = this.ve.getInterceptor();
            if (interceptor != null && interceptor.intercepte()) {
                this.qy.n();
                return;
            }
        } catch (Throwable th) {
            m.c(th);
        }
        if (!i()) {
            gr monitorDepend = this.ve.getMonitorDepend();
            DownloadInfo downloadInfo2 = this.f20514m;
            BaseException baseException = new BaseException(1003, "task status is invalid");
            DownloadInfo downloadInfo3 = this.f20514m;
            com.byazt.zl.c.c(monitorDepend, downloadInfo2, baseException, downloadInfo3 != null ? downloadInfo3.getStatus() : 0);
            return;
        }
        while (true) {
            t();
            if (!this.f20512h) {
                return;
            }
            if (this.md > 0) {
                this.md--;
            } else {
                if (this.f20514m.getCurBytes() != this.f20514m.getTotalBytes()) {
                    com.byazt.x.c.tt(f20508c, this.f20514m.getErrorBytesLog());
                    this.qy.c(new com.byazt.m.a(GSSDK.OneInputOPData.InputOP.OP_XINPUT_THUMB_LX_VALUE, "current bytes is not equals to total bytes, bytes invalid retry status is : " + this.f20514m.getByteInvalidRetryStatus()));
                    return;
                }
                if (this.f20514m.getCurBytes() <= 0) {
                    com.byazt.x.c.tt(f20508c, this.f20514m.getErrorBytesLog());
                    this.qy.c(new com.byazt.m.a(1026, "curBytes is 0, bytes invalid retry status is : " + this.f20514m.getByteInvalidRetryStatus()));
                    return;
                }
                if (this.f20514m.getTotalBytes() <= 0) {
                    com.byazt.x.c.tt(f20508c, this.f20514m.getErrorBytesLog());
                    this.qy.c(new com.byazt.m.a(1044, "TotalBytes is 0, bytes invalid retry status is : " + this.f20514m.getByteInvalidRetryStatus()));
                    return;
                }
            }
        }
    }

    private void t() {
        boolean z10;
        try {
            this.yp = com.byazt.ev.x.RUN_STATUS_NONE;
            this.f20514m.updateStartDownloadTime();
            this.f20514m.resetRealStartDownloadTime();
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.f20514m.setFirstSpeedTime(-1L);
            try {
                da();
                z10 = false;
            } catch (com.byazt.m.c e10) {
                com.byazt.x.c.tt(f20508c, "file exist " + e10.c());
                this.eo = e10.c();
                z10 = true;
            }
            if (!this.f20512h) {
                this.qy.tt();
            }
            this.f20512h = false;
            if (qy()) {
                m();
                return;
            }
            if (!TextUtils.isEmpty(this.eo) && z10) {
                if (this.f20514m.isExpiredRedownload()) {
                    this.f20522zb = com.byazt.w.a.uj(this.f20514m);
                }
                if (!this.f20522zb) {
                    u();
                    m();
                    return;
                }
            }
            while (true) {
                if (qy()) {
                    m();
                    return;
                }
                try {
                    try {
                        try {
                            try {
                                zb();
                                md();
                                eo();
                                List<com.byazt.t.tt> listVe = this.f20521z.ve(this.f20514m.getId());
                                or();
                                if (yp()) {
                                    com.byazt.x.c.ve(f20508c, "downloadSegments return");
                                    my();
                                    m();
                                    return;
                                }
                                String connectionUrl = this.f20514m.getConnectionUrl();
                                if (qy()) {
                                    my();
                                    m();
                                    return;
                                }
                                long jN = this.f20513i ? com.byazt.w.a.n(this.f20514m) : 0L;
                                com.byazt.t.tt ttVarC = c(this.f20514m, jN);
                                List<com.byazt.t.ve> listC = c(ttVarC);
                                com.byazt.w.a.c(listC, this.f20514m);
                                com.byazt.w.a.tt(listC, this.f20514m);
                                this.f20514m.setPreconnectLevel(0);
                                long jCurrentTimeMillis2 = System.currentTimeMillis();
                                try {
                                    c(connectionUrl, listC, jN);
                                    this.f20514m.increaseAllConnectTime(System.currentTimeMillis() - jCurrentTimeMillis2);
                                    if (qy()) {
                                        my();
                                        m();
                                        return;
                                    }
                                    long totalBytes = this.f20514m.getTotalBytes();
                                    c(totalBytes);
                                    int iC = c(totalBytes, listVe);
                                    if (qy()) {
                                        my();
                                        m();
                                        return;
                                    }
                                    if (iC <= 0) {
                                        throw new BaseException(1032, "chunkCount is 0");
                                    }
                                    boolean z11 = iC == 1;
                                    this.f20520x = z11;
                                    if (!z11) {
                                        if (!this.f20514m.isNeedReuseFirstConnection()) {
                                            rh();
                                        }
                                        if (!qy()) {
                                            z();
                                            this.f20514m.setFirstSpeedTime(System.currentTimeMillis() - jCurrentTimeMillis);
                                            if (!this.f20513i) {
                                                c(totalBytes, iC);
                                                break;
                                            } else {
                                                c(iC, listVe);
                                                break;
                                            }
                                        }
                                        my();
                                        m();
                                        return;
                                    }
                                    if (this.gr == null) {
                                        try {
                                            jCurrentTimeMillis2 = System.currentTimeMillis();
                                            c(connectionUrl, listC);
                                            this.f20514m.increaseAllConnectTime(System.currentTimeMillis() - jCurrentTimeMillis2);
                                        } catch (Throwable th) {
                                            this.f20514m.increaseAllConnectTime(System.currentTimeMillis() - jCurrentTimeMillis2);
                                            throw th;
                                        }
                                    }
                                    if (!qy()) {
                                        this.f20514m.setFirstSpeedTime(System.currentTimeMillis() - jCurrentTimeMillis);
                                        z();
                                        c(ttVarC, connectionUrl, this.gr);
                                        break;
                                    } else {
                                        my();
                                        m();
                                        return;
                                    }
                                } catch (Throwable th2) {
                                    this.f20514m.increaseAllConnectTime(System.currentTimeMillis() - jCurrentTimeMillis2);
                                    throw th2;
                                }
                            } catch (com.byazt.m.c unused) {
                                u();
                            }
                        } catch (BaseException e11) {
                            com.byazt.x.c.uj(f20508c, "downloadInner: baseException = " + e11);
                            if (this.yp == com.byazt.ev.x.RUN_STATUS_PAUSE) {
                                break;
                            }
                            if (e11.getErrorCode() != 1025 && e11.getErrorCode() != 1009) {
                                if (!c(e11)) {
                                    tt(e11);
                                    break;
                                }
                                if (com.byazt.w.a.c(e11)) {
                                    cu();
                                }
                                if (c(e11, 0L) == com.byazt.m.x.RETURN) {
                                    my();
                                    m();
                                    return;
                                }
                                my();
                            }
                            this.yp = com.byazt.ev.x.RUN_STATUS_END_RIGHT_NOW;
                            my();
                            m();
                            return;
                        }
                    } catch (Throwable th3) {
                        com.byazt.x.c.uj(f20508c, "downloadInner: throwable =  " + th3);
                        if (this.yp != com.byazt.ev.x.RUN_STATUS_PAUSE) {
                            tt(new BaseException(1045, th3));
                        }
                    }
                } catch (com.byazt.m.i e12) {
                    try {
                        com.byazt.x.c.uj(f20508c, "downloadInner: retry throwable for " + e12.c());
                        if (this.yp == com.byazt.ev.x.RUN_STATUS_PAUSE) {
                            break;
                        }
                        AtomicInteger atomicInteger = this.f20515n;
                        if (atomicInteger != null && atomicInteger.get() > 0) {
                            this.f20514m.updateCurRetryTime(this.f20515n.decrementAndGet());
                            this.f20514m.setStatus(5);
                        } else if (this.f20515n == null) {
                            tt(new BaseException(1043, "retry for Throwable, but retain retry time is NULL, last error is" + e12.c()));
                            break;
                        } else if (!this.f20514m.trySwitchToNextBackupUrl()) {
                            tt(new BaseException(1018, String.format("retry for Throwable, but retry Time %s all used, last error is %s", String.valueOf(this.f20514m.getRetryCount()), e12.c())));
                            break;
                        } else {
                            this.f20514m.setStatus(5);
                            this.f20515n.set(this.f20514m.getRetryCount());
                            this.f20514m.updateCurRetryTime(this.f20515n.get());
                        }
                        my();
                    } catch (Throwable th4) {
                        my();
                        throw th4;
                    }
                }
                my();
            }
            my();
            m();
        } catch (Throwable th5) {
            m();
            throw th5;
        }
    }

    private void u() {
        com.byazt.x.c.tt(f20508c, "finishWithFileExist");
        if (com.byazt.k.c.ve().tt("fix_end_for_file_exist_error", true)) {
            if (this.eo.equals(this.f20514m.getName())) {
                this.yp = com.byazt.ev.x.RUN_STATUS_END_RIGHT_NOW;
                return;
            } else {
                this.yp = com.byazt.ev.x.RUN_STATUS_END_FOR_FILE_EXIST;
                return;
            }
        }
        if (this.eo.equals(this.f20514m.getTargetFilePath())) {
            this.yp = com.byazt.ev.x.RUN_STATUS_END_RIGHT_NOW;
        } else {
            this.yp = com.byazt.ev.x.RUN_STATUS_END_FOR_FILE_EXIST;
        }
    }

    private void x() {
        DownloadInfo downloadInfo = this.f20514m;
        if (downloadInfo == null) {
            return;
        }
        int retryCount = downloadInfo.getRetryCount() - this.f20514m.getCurRetryTime();
        if (retryCount < 0) {
            retryCount = 0;
        }
        AtomicInteger atomicInteger = this.f20515n;
        if (atomicInteger == null) {
            this.f20515n = new AtomicInteger(retryCount);
        } else {
            atomicInteger.set(retryCount);
        }
    }

    private boolean yp() throws BaseException, InterruptedException {
        if (this.f20514m.isExpiredRedownload() || this.f20514m.getChunkCount() != 1 || this.f20514m.getThrottleNetSpeed() > 0) {
            return false;
        }
        JSONObject jSONObjectUj = com.byazt.k.c.c(this.f20514m.getId()).uj("segment_config");
        List<com.byazt.h.i> listYp = this.f20521z.yp(this.f20514m.getId());
        if (this.f20514m.getCurBytes() > 0) {
            if (listYp == null || listYp.isEmpty()) {
                return false;
            }
            if (jSONObjectUj == null) {
                jSONObjectUj = new JSONObject();
            }
        }
        if (jSONObjectUj == null) {
            return false;
        }
        this.pf = new sl(this.f20514m, yp.c(jSONObjectUj), this);
        if (!qy()) {
            return this.pf.c(listYp);
        }
        com.byazt.x.c.ve(f20508c, "downloadSegments: is stopped by user");
        if (this.yp == com.byazt.ev.x.RUN_STATUS_CANCELED) {
            this.pf.c();
        } else {
            this.pf.tt();
        }
        return true;
    }

    private void yv() {
        this.yp = com.byazt.ev.x.RUN_STATUS_NONE;
    }

    private void z() {
        if (com.byazt.k.c.c(this.f20514m.getId()).c("reset_retain_retry_times", 0) != 1 || this.f20516nb >= 3) {
            return;
        }
        this.f20515n.set(this.f20514m.isBackUpUrlUsed() ? this.f20514m.getBackUpUrlRetryCount() : this.f20514m.getRetryCount());
        this.f20516nb++;
    }

    private void zb() throws BaseException {
        if (TextUtils.isEmpty(this.f20514m.getSavePath())) {
            throw new BaseException(GSSDK.OneInputOPData.InputOP.OP_XINPUT_THUMB_LY_VALUE, "download savePath can not be empty");
        }
        if (TextUtils.isEmpty(this.f20514m.getName())) {
            throw new BaseException(GSSDK.OneInputOPData.InputOP.OP_XINPUT_THUMB_RX_VALUE, "download name can not be empty");
        }
        File file = new File(this.f20514m.getSavePath());
        if (file.exists()) {
            if (file.isDirectory()) {
                return;
            }
            if (!com.byazt.w.uj.tt(this.f20514m)) {
                throw new BaseException(GSSDK.OneInputOPData.InputOP.OP_XINPUT_A_BUTTON_VALUE, "download savePath is not a directory:" + this.f20514m.getSavePath());
            }
            file.delete();
            if (file.mkdirs() || file.exists()) {
                return;
            }
            throw new BaseException(GSSDK.OneInputOPData.InputOP.OP_XINPUT_A_BUTTON_VALUE, "download savePath is not directory:path=" + this.f20514m.getSavePath());
        }
        boolean zMkdirs = file.mkdirs();
        if (zMkdirs || file.exists()) {
            return;
        }
        int i10 = 0;
        if (com.byazt.k.c.c(this.f20514m.getId()).c("opt_mkdir_failed", 0) != 1) {
            throw new BaseException(1030, "download savePath directory can not created:" + this.f20514m.getSavePath());
        }
        while (!zMkdirs) {
            int i11 = i10 + 1;
            if (i10 >= 3) {
                break;
            }
            try {
                Thread.sleep(10L);
                zMkdirs = file.mkdirs();
                i10 = i11;
            } catch (InterruptedException unused) {
            }
        }
        if (zMkdirs || file.exists()) {
            return;
        }
        if (com.byazt.w.a.uj(this.f20514m.getSavePath()) < 16384) {
            throw new BaseException(1006, "download savePath directory can not created:" + this.f20514m.getSavePath());
        }
        throw new BaseException(1030, "download savePath directory can not created:" + this.f20514m.getSavePath());
    }

    private boolean zm() {
        if (this.f20514m.isChunked()) {
            DownloadInfo downloadInfo = this.f20514m;
            downloadInfo.setTotalBytes(downloadInfo.getCurBytes());
        }
        com.byazt.x.c.ve(f20508c, "checkCompletedByteValid: downloadInfo.getCurBytes() = " + this.f20514m.getCurBytes() + ",  downloadInfo.getTotalBytes() = " + this.f20514m.getTotalBytes());
        if (this.f20514m.getCurBytes() > 0) {
            if (this.f20514m.isIgnoreDataVerify()) {
                return true;
            }
            if (this.f20514m.getTotalBytes() > 0 && this.f20514m.getCurBytes() == this.f20514m.getTotalBytes()) {
                return true;
            }
        }
        this.f20514m.setByteInvalidRetryStatus(com.byazt.ev.tt.BYTE_INVALID_RETRY_STATUS_RESTART);
        this.f20514m.reset();
        this.f20521z.c(this.f20514m);
        this.f20521z.uj(this.f20514m.getId());
        this.f20521z.u(this.f20514m.getId());
        com.byazt.w.a.c(this.f20514m);
        return false;
    }

    public void a() {
        this.cu = System.currentTimeMillis();
        this.qy.c();
    }

    public int n() {
        DownloadInfo downloadInfo = this.f20514m;
        if (downloadInfo != null) {
            return downloadInfo.getId();
        }
        return 0;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.byazt.zz.ve.c(this.ve, 3);
        try {
            com.byazt.hs.tt.c().tt();
            sl();
            com.byazt.hs.tt.c().ve();
            com.byazt.zz.ve.tt(this.ve, 3);
        } catch (Throwable th) {
            com.byazt.hs.tt.c().ve();
            throw th;
        }
    }

    public Future sp() {
        return this.tt;
    }

    public void tt() {
        com.byazt.ev.x xVar = com.byazt.ev.x.RUN_STATUS_CANCELED;
        this.yp = xVar;
        if (this.pf != null) {
            this.pf.c();
        }
        if (this.sp != null) {
            this.sp.ve();
        }
        if (this.pf == null && this.sp == null) {
            my();
            this.yp = xVar;
            m();
        }
        qp();
    }

    public boolean uj() {
        return this.f20519u.get();
    }

    public DownloadTask ve() {
        return this.ve;
    }

    private boolean uj(BaseException baseException) {
        AtomicInteger atomicInteger = this.f20515n;
        boolean z10 = true;
        if (atomicInteger == null) {
            tt(new BaseException(1043, "retry for exception, but retain retry time is null, last error is :" + baseException.getErrorMessage()));
            return true;
        }
        if (atomicInteger.get() <= 0 || (baseException != null && baseException.getErrorCode() == 1070)) {
            if (this.f20514m.trySwitchToNextBackupUrl()) {
                this.f20515n.set(this.f20514m.getBackUpUrlRetryCount());
                this.f20514m.updateCurRetryTime(this.f20515n.get());
            } else {
                if (baseException == null || ((baseException.getErrorCode() != 1011 && (baseException.getCause() == null || !(baseException.getCause() instanceof SSLHandshakeException))) || !this.f20514m.canReplaceHttpForRetry())) {
                    tt(new BaseException(baseException.getErrorCode(), String.format("retry for exception, but current retry time : %s , retry Time %s all used, last error is %s", String.valueOf(this.f20515n), String.valueOf(this.f20514m.getRetryCount()), baseException.getErrorMessage())));
                    return true;
                }
                this.f20515n.set(this.f20514m.getRetryCount());
                this.f20514m.updateCurRetryTime(this.f20515n.get());
                this.f20514m.setHttpsToHttpRetryUsed(true);
            }
            z10 = false;
        }
        if (this.yp != com.byazt.ev.x.RUN_STATUS_RETRY_DELAY && z10) {
            this.f20514m.updateCurRetryTime(this.f20515n.decrementAndGet());
        }
        return false;
    }

    @Override // com.byazt.u.a
    public void ve(BaseException baseException) {
        DownloadInfo downloadInfo = this.f20514m;
        if (downloadInfo != null) {
            downloadInfo.setChunkDowngradeRetryUsed(true);
        }
        c(baseException, false);
    }

    public void c() {
        com.byazt.ev.x xVar = com.byazt.ev.x.RUN_STATUS_PAUSE;
        this.yp = xVar;
        if (this.pf != null) {
            this.pf.tt();
        }
        if (this.sp != null) {
            this.sp.tt();
        }
        if (this.pf == null && this.sp == null) {
            my();
            this.yp = xVar;
            m();
        }
        try {
            for (tt ttVar : (ArrayList) this.f20509a.clone()) {
                if (ttVar != null) {
                    ttVar.c();
                }
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }

    private void tt(String str, List<com.byazt.t.ve> list, long j10) throws BaseException, com.byazt.m.i {
        com.byazt.no.ve veVarC;
        boolean z10 = true;
        if (this.f20514m.getChunkCount() == 1 && (veVarC = com.byazt.no.c.c().c(str, list)) != null) {
            this.zm = veVarC;
            this.f20514m.setPreconnectLevel(1);
        }
        if (this.zm == null && !this.f20510d && this.f20514m.isHeadConnectionAvailable()) {
            try {
                int iTt = this.qp.tt("net_lib_strategy");
                if (this.qp.c("monitor_download_connect", 0) <= 0) {
                    z10 = false;
                }
                this.zm = com.byazt.zz.ve.c(str, list, iTt, z10, this.f20514m);
            } catch (Throwable th) {
                this.f20514m.setHeadConnectionException(com.byazt.w.a.da(th));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x005e  */
    private int c(long j10, List<com.byazt.t.tt> list) {
        int iC;
        int iC2;
        if (h()) {
            if (!this.f20513i) {
                com.byazt.zz.x xVar = this.nu;
                if (xVar != null) {
                    iC2 = xVar.c(j10);
                } else {
                    iC2 = this.rh.c(j10);
                }
                t tVarTt = com.byazt.hs.sl.c().tt();
                com.byazt.x.c.tt(f20508c, String.format("NetworkQuality is : %s", tVarTt.name()));
                this.f20514m.setNetworkQuality(tVarTt.name());
                com.byazt.zz.sp spVar = this.my;
                if (spVar != null) {
                    iC = spVar.c(iC2, tVarTt);
                } else {
                    iC = this.gt.c(iC2, tVarTt);
                }
            } else if (list != null) {
                iC = list.size();
            } else {
                iC = this.f20514m.getChunkCount();
            }
            if (iC <= 0) {
                iC = 1;
            }
        } else {
            iC = 1;
        }
        if (com.byazt.x.c.c()) {
            com.byazt.x.c.tt(f20508c, String.format("chunk count : %s for %s contentLen:%s", String.valueOf(iC), this.f20514m.getName(), String.valueOf(j10)));
        }
        return iC;
    }

    @Override // com.byazt.u.a
    public boolean tt(long j10) throws BaseException {
        if (this.or > 0 && this.f20514m.getCurBytes() > this.or) {
            d();
        }
        return this.qy.c(j10);
    }

    @Override // com.byazt.u.a
    public void tt(BaseException baseException) {
        com.byazt.x.c.tt(f20508c, "onError:" + baseException.getMessage());
        this.yp = com.byazt.ev.x.RUN_STATUS_ERROR;
        this.gu = baseException;
        qp();
    }

    private void c(String str, List<com.byazt.t.ve> list, long j10) throws BaseException, com.byazt.m.i {
        tt(str, list, j10);
        com.byazt.hs.sp spVar = this.zm;
        if (spVar != null) {
            try {
                c(str, spVar, j10);
            } catch (Throwable unused) {
                this.f20510d = true;
            }
        }
        if (this.zm == null || this.f20510d) {
            c(str, list);
            c(str, this.gr, j10);
        }
    }

    private void c(String str, List<com.byazt.t.ve> list) throws BaseException, com.byazt.m.i {
        i iVarC;
        if (this.gr != null) {
            return;
        }
        com.byazt.no.uj ujVarTt = this.f20514m.getChunkCount() == 1 ? com.byazt.no.c.c().tt(str, list) : null;
        try {
            if (ujVarTt != null) {
                c(this.gr);
                this.f20514m.setPreconnectLevel(2);
                this.gr = ujVarTt;
            } else {
                try {
                    iVarC = com.byazt.zz.ve.c(this.f20514m.isNeedDefaultHttpServiceBackUp(), this.f20514m.getMaxBytes(), str, null, list, this.qp.tt("net_lib_strategy"), this.qp.c("monitor_download_connect", 0) > 0, this.f20514m);
                    this.gr = iVarC;
                } catch (BaseException e10) {
                    throw e10;
                } catch (Throwable th) {
                    if (this.f20514m.isExpiredRedownload() && com.byazt.w.a.sp(th) && com.byazt.w.a.ve(list)) {
                        com.byazt.x.c.tt(f20508c, "dcache=execepiton responseCode=304 lastModified not changed, use local file.. old cacheControl=" + this.f20514m.getCacheControl());
                        long jI = com.byazt.w.a.i(this.f20514m.getCacheControl());
                        if (jI <= 0) {
                            jI = com.byazt.k.c.c(this.f20514m.getId()).c("default_304_max_age", 300);
                        }
                        this.f20514m.setCacheExpiredTime(System.currentTimeMillis() + (jI * 1000));
                        throw new com.byazt.m.c(this.eo);
                    }
                    if (com.byazt.w.a.a(th)) {
                        c("", "http code 416");
                    } else if (com.byazt.w.a.n(th)) {
                        c("", "http code 412");
                    } else {
                        com.byazt.w.a.c(th, "CreateFirstConnection");
                    }
                    iVarC = this.gr;
                }
                c(iVarC);
            }
            if (this.gr == null) {
                throw new BaseException(1022, new IOException("download can't continue, firstConnection is null"));
            }
        } catch (Throwable th2) {
            c(this.gr);
            throw th2;
        }
    }

    public static com.byazt.t.tt c(DownloadInfo downloadInfo, long j10) {
        return new com.byazt.t.tt.c(downloadInfo.getId()).c(-1).c(0L).n(j10).tt(j10).ve(0L).uj(downloadInfo.getTotalBytes() - j10).c();
    }

    private List<com.byazt.t.ve> c(com.byazt.t.tt ttVar) {
        List<com.byazt.t.ve> listC = com.byazt.w.a.c(this.f20514m.getExtraHeaders(), this.f20514m.geteTag(), ttVar);
        if (this.f20514m.isExpiredRedownload() && this.f20522zb && this.f20514m.getLastModified() != null) {
            listC.add(new com.byazt.t.ve("if-modified-since", this.f20514m.getLastModified()));
            listC.add(new com.byazt.t.ve("download-tc21-1-15", "download-tc21-1-15"));
            com.byazt.x.c.tt(f20508c, "dcache::add head IF_MODIFIED_SINCE=" + this.f20514m.getLastModified());
        }
        return listC;
    }

    private void c(int i10, List<com.byazt.t.tt> list) throws BaseException {
        if (list.size() == i10) {
            c(list, this.f20514m.getTotalBytes());
            return;
        }
        throw new BaseException(1033, new IllegalArgumentException());
    }

    private void c(long j10, int i10) throws BaseException {
        long j11 = j10 / ((long) i10);
        int id2 = this.f20514m.getId();
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        long j12 = 0;
        while (i11 < i10) {
            com.byazt.t.tt ttVarC = new com.byazt.t.tt.c(id2).c(i11).c(j12).n(j12).tt(j12).ve(i11 == i10 + (-1) ? 0L : (j12 + j11) - 1).c();
            arrayList.add(ttVarC);
            this.f20521z.c(ttVarC);
            j12 += j11;
            i11++;
        }
        this.f20514m.setChunkCount(i10);
        this.f20521z.c(id2, i10);
        c(arrayList, j10);
    }

    private void c(List<com.byazt.t.tt> list, long j10) throws BaseException {
        long jM;
        for (com.byazt.t.tt ttVar : list) {
            if (ttVar != null) {
                if (ttVar.m() == 0) {
                    jM = j10 - ttVar.yp();
                } else {
                    jM = (ttVar.m() - ttVar.yp()) + 1;
                }
                if (jM > 0) {
                    ttVar.c(jM);
                    if (this.f20514m.isNeedReuseFirstConnection() && this.gr != null && (!this.f20514m.isHeadConnectionAvailable() || this.f20510d)) {
                        if (ttVar.my() == 0) {
                            this.f20509a.add(new tt(ttVar, this.ve, this.gr, this));
                        } else if (ttVar.my() > 0) {
                            this.f20509a.add(new tt(ttVar, this.ve, this));
                        }
                    } else {
                        this.f20509a.add(new tt(ttVar, this.ve, this));
                    }
                }
            }
        }
        if (com.byazt.w.c.c(64)) {
            ArrayList arrayList = new ArrayList(this.f20509a.size());
            for (tt ttVar2 : this.f20509a) {
                if (this.yp == com.byazt.ev.x.RUN_STATUS_CANCELED) {
                    ttVar2.tt();
                } else if (this.yp == com.byazt.ev.x.RUN_STATUS_PAUSE) {
                    ttVar2.c();
                } else {
                    arrayList.add(ttVar2);
                }
            }
            try {
                List<Future> listUj = com.byazt.b.n.uj(arrayList);
                for (Runnable runnableN = (Runnable) arrayList.remove(0); runnableN != null; runnableN = com.byazt.b.n.n(listUj)) {
                    if (qy()) {
                        return;
                    }
                    try {
                        runnableN.run();
                    } catch (Throwable th) {
                        m.c(th);
                    }
                }
                if (listUj == null || listUj.isEmpty()) {
                    return;
                }
                for (Future future : listUj) {
                    if (future != null && !future.isDone()) {
                        future.get();
                    }
                }
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        ArrayList arrayList2 = new ArrayList(this.f20509a.size());
        for (tt ttVar3 : this.f20509a) {
            if (this.yp == com.byazt.ev.x.RUN_STATUS_CANCELED) {
                ttVar3.tt();
            } else if (this.yp == com.byazt.ev.x.RUN_STATUS_PAUSE) {
                ttVar3.c();
            } else {
                arrayList2.add(Executors.callable(ttVar3));
            }
        }
        if (qy()) {
            return;
        }
        try {
            com.byazt.b.n.ve(arrayList2);
        } catch (InterruptedException e10) {
            throw new BaseException(1020, e10);
        }
    }

    private void c(com.byazt.t.tt ttVar, String str, i iVar) throws BaseException {
        ttVar.c(this.f20514m.getTotalBytes() - ttVar.yp());
        this.f20514m.setChunkCount(1);
        this.f20521z.c(this.f20514m.getId(), 1);
        this.sp = new com.byazt.zz.n(this.f20514m, str, iVar, ttVar, this);
        gt();
    }

    @Override // com.byazt.u.a
    public void c(long j10) throws BaseException {
        long j11;
        boolean z10;
        long j12;
        String tempPath = this.f20514m.getTempPath();
        String tempName = this.f20514m.getTempName();
        if (com.byazt.w.a.tt(j10)) {
            return;
        }
        com.byazt.t.n nVarC = com.byazt.w.a.c(this.f20514m, tempPath, tempName, -1);
        try {
            long length = new File(tempPath, tempName).length();
            long totalBytes = j10 - length;
            long jUj = com.byazt.w.a.uj(tempPath);
            com.byazt.k.c cVarC = com.byazt.k.c.c(this.f20514m.getId());
            try {
                if (cVarC.c("space_fill_part_download", 0) == 1) {
                    this.or = 0L;
                    if (totalBytes <= 0) {
                        totalBytes = this.f20514m.getTotalBytes() - this.f20514m.getCurBytes();
                    }
                    if (jUj < totalBytes) {
                        String str = f20508c;
                        com.byazt.x.c.uj(str, "checkSpaceOverflow: contentLength = " + com.byazt.w.a.c(j10) + "MB, downloaded = " + com.byazt.w.a.c(length) + "MB, required = " + com.byazt.w.a.c(totalBytes) + "MB, available = " + com.byazt.w.a.c(jUj) + "MB");
                        if (jUj > 0) {
                            int iC = cVarC.c("space_fill_min_keep_mb", 100);
                            if (iC > 0) {
                                long j13 = jUj - (((long) iC) * 1048576);
                                com.byazt.x.c.uj(str, "checkSpaceOverflow: minKeep = " + iC + "MB, canDownload = " + com.byazt.w.a.c(j13) + "MB");
                                if (j13 > 0) {
                                    this.or = this.f20514m.getCurBytes() + j13;
                                    j12 = j13;
                                } else {
                                    throw new com.byazt.m.uj(jUj, totalBytes);
                                }
                            } else {
                                j12 = jUj;
                            }
                            if (length < j10) {
                                j11 = j12 + length;
                                if (j11 > j10) {
                                }
                            }
                            z10 = true;
                        } else {
                            if (cVarC.c("download_when_space_negative", 0) != 1) {
                                StringBuilder sb2 = new StringBuilder("availableSpace ");
                                sb2.append(jUj == 0 ? SimpleComparison.EQUAL_TO_OPERATION : SimpleComparison.LESS_THAN_OPERATION);
                                sb2.append(" 0");
                                throw new BaseException(1052, sb2.toString());
                            }
                            j11 = j10;
                            z10 = false;
                        }
                    }
                    nVarC.tt(j10);
                    com.byazt.w.a.c(nVarC);
                }
                if (jUj <= 0) {
                    StringBuilder sb3 = new StringBuilder("availableSpace ");
                    sb3.append(jUj == 0 ? SimpleComparison.EQUAL_TO_OPERATION : SimpleComparison.LESS_THAN_OPERATION);
                    sb3.append(" 0");
                    throw new BaseException(1052, sb3.toString());
                }
                if (jUj < totalBytes) {
                    throw new com.byazt.m.uj(jUj, totalBytes);
                }
                nVarC.tt(j10);
            } catch (Throwable th) {
                com.byazt.x.c.n(f20508c, "checkSpaceOverflow: setLength1 e = " + th + ", mustSetLength = " + z10);
                if (j11 < j10 && j11 > 0 && j11 > length) {
                    try {
                        nVarC.tt(j11);
                    } catch (Throwable th2) {
                        com.byazt.x.c.n(f20508c, "checkSpaceOverflow: setLength2 ex = " + th2 + ", mustSetLength = " + z10);
                        if (z10) {
                            throw new BaseException(AVMDLDataLoader.KeyIsPreloadWaitListType, th2);
                        }
                    }
                } else if (z10) {
                    throw new BaseException(AVMDLDataLoader.KeyIsPreloadWaitListType, th);
                }
            }
            j11 = j10;
            z10 = true;
            com.byazt.w.a.c(nVarC);
        } catch (Throwable th3) {
            com.byazt.w.a.c(nVarC);
            throw th3;
        }
    }

    private boolean c(int i10, String str, String str2) {
        if (i10 == 412) {
            return true;
        }
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || str.equals(str2) || !(this.sl || this.f20511da)) {
            return (i10 == 201 || i10 == 416) && this.f20514m.getCurBytes() > 0;
        }
        return true;
    }

    private void c(String str, String str2) throws com.byazt.m.i {
        this.f20521z.uj(this.f20514m.getId());
        this.f20521z.u(this.f20514m.getId());
        com.byazt.w.a.c(this.f20514m);
        this.f20513i = false;
        this.f20514m.resetDataForEtagEndure(str);
        this.f20521z.c(this.f20514m);
        throw new com.byazt.m.i(str2);
    }

    @Override // com.byazt.u.a
    public void c(String str, com.byazt.hs.sp spVar, long j10) throws BaseException, com.byazt.m.i {
        com.byazt.hs.sp spVar2;
        long jTt;
        boolean z10;
        if (spVar == null) {
            return;
        }
        try {
            com.byazt.t.uj ujVar = new com.byazt.t.uj(str, spVar);
            int i10 = ujVar.ve;
            String strUj = ujVar.uj();
            if (TextUtils.isEmpty(this.f20514m.getMimeType()) && !TextUtils.isEmpty(strUj)) {
                this.f20514m.setMimeType(strUj);
            }
            boolean zTt = ujVar.tt();
            this.f20511da = zTt;
            this.f20514m.setSupportPartial(zTt);
            this.sl = ujVar.c();
            String str2 = this.f20514m.geteTag();
            String strVe = ujVar.ve();
            String strA = ujVar.a();
            String strSp = ujVar.sp();
            String str3 = f20508c;
            com.byazt.x.c.tt(str3, "dcache=responseCode=" + i10 + " last_modified=" + strA + " CACHE_CONTROL=" + strSp + " max-age=" + ujVar.sl() + " isDeleteCacheIfCheckFailed=" + this.f20514m.isDeleteCacheIfCheckFailed());
            StringBuilder sb2 = new StringBuilder("dcache=firstOffset=");
            sb2.append(j10);
            sb2.append(" cur=");
            sb2.append(strA);
            sb2.append(" before=");
            sb2.append(this.f20514m.getLastModified());
            sb2.append(" cur=");
            String str4 = strVe;
            sb2.append(ujVar.da());
            sb2.append(" before=");
            sb2.append(this.f20514m.getTotalBytes());
            com.byazt.x.c.tt(str3, sb2.toString());
            if (!TextUtils.isEmpty(strSp)) {
                this.f20514m.setCacheControl(strSp);
                if (ujVar.sl() > 0) {
                    this.f20514m.setCacheExpiredTime(System.currentTimeMillis() + (ujVar.sl() * 1000));
                }
            }
            if (this.f20514m.isExpiredRedownload() && this.f20522zb && !TextUtils.isEmpty(this.eo)) {
                if (i10 == 304) {
                    z10 = true;
                } else {
                    z10 = false;
                    if ((!TextUtils.isEmpty(this.f20514m.getLastModified()) || !this.f20514m.isDeleteCacheIfCheckFailed()) && TextUtils.equals(strA, this.f20514m.getLastModified())) {
                        z10 = true;
                    }
                }
                if (!z10) {
                    com.byazt.w.a.c(this.f20514m);
                } else {
                    com.byazt.x.c.tt(str3, "dcache=responseCode=" + i10 + " lastModified not changed, use local file  " + strA);
                    throw new com.byazt.m.c(this.eo);
                }
            }
            if (j10 > 0 && this.f20514m.isExpiredRedownload() && !TextUtils.equals(strA, this.f20514m.getLastModified())) {
                com.byazt.x.c.tt(str3, "dcache cdn file change, so retry");
                c("", "cdn file changed");
            }
            if (!TextUtils.isEmpty(strA)) {
                this.f20514m.setLastModified(strA);
            }
            if (c(i10, str2, str4)) {
                spVar2 = spVar;
                if (spVar2 instanceof i) {
                    if (!TextUtils.isEmpty(str2) && str2.equals(str4)) {
                        str4 = "";
                    }
                    c(str4, "eTag of server file changed");
                } else {
                    throw new com.byazt.m.tt(1002, i10, "");
                }
            } else {
                spVar2 = spVar;
            }
            if (!this.f20511da && !this.sl) {
                if (i10 == 403) {
                    throw new BaseException(1047, "response code error : 403");
                }
                throw new com.byazt.m.tt(1004, i10, "response code error : " + i10);
            }
            if (this.sl && j10 > 0) {
                if (spVar2 instanceof i) {
                    c("", "http head request not support");
                } else {
                    throw new BaseException(1004, "isResponseFromBegin but firstOffset > 0");
                }
            }
            String str5 = str4;
            long jX = ujVar.x();
            if (!(spVar2 instanceof i) && jX < 0 && com.byazt.w.uj.c(this.f20514m)) {
                throw new BaseException(1004, "");
            }
            String strC = TextUtils.isEmpty(this.f20514m.getName()) ? com.byazt.w.a.c(spVar2, this.f20514m.getUrl()) : "";
            boolean zI = ujVar.i();
            this.f20518t = zI;
            if (!zI && jX == 0 && !(spVar2 instanceof i)) {
                throw new BaseException(1004, "");
            }
            if (zI) {
                jTt = -1;
            } else {
                String strTt = com.byazt.w.a.tt(spVar2, "Content-Range");
                com.byazt.x.c.ve(str3, "firstConnection: contentRange = " + strTt);
                if (!TextUtils.isEmpty(strTt) && this.qp.tt("fix_get_total_bytes", true)) {
                    jTt = com.byazt.w.a.tt(strTt);
                    com.byazt.x.c.ve(str3, "firstConnection: 1 totalLength = " + jTt);
                } else {
                    long j11 = j10 + jX;
                    com.byazt.x.c.n(str3, "firstConnection: 2 totalLength = " + j11 + ", contentLength = " + jX);
                    jTt = j11;
                }
            }
            if (!TextUtils.isEmpty(this.f20514m.getTaskKey()) && this.f20514m.getTotalBytes() > 0 && jTt != this.f20514m.getTotalBytes()) {
                if (spVar2 instanceof i) {
                    c("", "file totalLength changed");
                } else {
                    throw new com.byazt.m.tt(1002, i10, "");
                }
            }
            if (qy()) {
                return;
            }
            if (this.f20514m.getExpectFileLength() > 0 && com.byazt.k.c.c(this.f20514m.getId()).tt("force_check_file_length") == 1 && this.f20514m.getExpectFileLength() != jTt) {
                throw new BaseException(1070, "expectFileLength = " + this.f20514m.getExpectFileLength() + " , totalLength = " + jTt);
            }
            this.qy.c(jTt, str5, strC);
        } catch (BaseException e10) {
            throw e10;
        } catch (com.byazt.m.i e11) {
            throw e11;
        } catch (Throwable th) {
            com.byazt.w.a.c(th, "HandleFirstConnection");
        }
    }

    @Override // com.byazt.u.a
    public void c(tt ttVar) {
        if (this.f20520x) {
            return;
        }
        synchronized (this) {
            this.f20509a.remove(ttVar);
        }
    }

    @Override // com.byazt.u.a
    public boolean c(BaseException baseException) {
        if (this.pf != null && com.byazt.w.a.i(baseException) && this.f20515n.get() < this.f20514m.getRetryCount()) {
            return false;
        }
        if (com.byazt.w.a.tt(baseException)) {
            if (this.f20520x && !this.uj) {
                com.byazt.w.a.c(this.f20514m);
                this.uj = true;
            }
            return true;
        }
        AtomicInteger atomicInteger = this.f20515n;
        return ((atomicInteger != null && atomicInteger.get() > 0) || this.f20514m.hasNextBackupUrl() || (baseException != null && ((baseException.getErrorCode() == 1011 || (baseException.getCause() != null && (baseException.getCause() instanceof SSLHandshakeException))) && this.f20514m.canReplaceHttpForRetry()))) && !(baseException instanceof com.byazt.m.a);
    }

    @Override // com.byazt.u.a
    public void c(BaseException baseException, boolean z10) {
        com.byazt.x.c.tt(f20508c, "onAllChunkRetryWithReset");
        this.yp = com.byazt.ev.x.RUN_STATUS_ALL_CHUNK_RETRY_WITH_RESET;
        this.gu = baseException;
        qp();
        if (z10 ? uj(baseException) : false) {
            return;
        }
        cu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.f20514m.setForbiddenBackupUrls(list, this.yp == com.byazt.ev.x.RUN_STATUS_WAITING_ASYNC_HANDLER);
        com.byazt.b.c cVarD = com.byazt.zz.ve.d();
        if (cVarD != null) {
            cVarD.t(this.f20514m.getId());
        }
    }

    @Override // com.byazt.u.a
    public com.byazt.m.x c(com.byazt.t.tt ttVar, BaseException baseException, long j10) {
        if (rl()) {
            return com.byazt.m.x.RETURN;
        }
        if (baseException != null && (baseException.getErrorCode() == 1047 || com.byazt.w.a.x(baseException))) {
            return c(baseException, j10);
        }
        this.gu = baseException;
        this.f20514m.increaseCurBytes(-j10);
        this.f20521z.c(this.f20514m);
        if (uj(baseException)) {
            return com.byazt.m.x.RETURN;
        }
        com.byazt.zz.a aVar = this.qy;
        com.byazt.ev.x xVar = this.yp;
        com.byazt.ev.x xVar2 = com.byazt.ev.x.RUN_STATUS_RETRY_DELAY;
        aVar.c(ttVar, baseException, xVar == xVar2);
        if (this.yp != xVar2 && this.f20514m.isNeedRetryDelay()) {
            long jP = p();
            if (jP > 0) {
                com.byazt.x.c.ve(f20508c, "onSingleChunkRetry with delay time " + jP);
                try {
                    Thread.sleep(jP);
                } catch (Throwable th) {
                    com.byazt.x.c.uj(f20508c, "onSingleChunkRetry:" + th.getMessage());
                }
            }
        }
        return com.byazt.m.x.CONTINUE;
    }

    @Override // com.byazt.u.a
    public com.byazt.m.x c(BaseException baseException, long j10) {
        long jC;
        long totalBytes;
        boolean z10;
        this.gu = baseException;
        this.f20514m.increaseCurBytes(-j10);
        this.f20521z.c(this.f20514m);
        if (rl()) {
            return com.byazt.m.x.RETURN;
        }
        if (baseException != null && baseException.getErrorCode() == 1047) {
            if (this.yv != null && !this.f20514m.isForbiddenRetryed()) {
                com.byazt.c.tt ttVar = new com.byazt.c.tt() { // from class: com.byazt.u.ve.1
                    @Override // com.byazt.c.tt, com.byazt.c.qy
                    public void c(List<String> list) {
                        super.c(list);
                        ve.this.c(list);
                    }
                };
                boolean zC = this.yv.c(ttVar);
                this.f20514m.setForbiddenRetryed();
                if (zC) {
                    if (!ttVar.c()) {
                        qp();
                        this.qy.x();
                        this.yp = com.byazt.ev.x.RUN_STATUS_WAITING_ASYNC_HANDLER;
                        return com.byazt.m.x.RETURN;
                    }
                    z10 = true;
                }
            } else if (uj(baseException)) {
                return com.byazt.m.x.RETURN;
            }
            z10 = false;
        } else if (com.byazt.w.a.x(baseException)) {
            if (this.f20517p == null) {
                tt(baseException);
                return com.byazt.m.x.RETURN;
            }
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            nu nuVar = new nu() { // from class: com.byazt.u.ve.2
                @Override // com.byazt.c.nu
                public void c() {
                    synchronized (ve.this) {
                        atomicBoolean.set(true);
                        ve.this.nb();
                    }
                }
            };
            if (baseException instanceof com.byazt.m.uj) {
                com.byazt.m.uj ujVar = (com.byazt.m.uj) baseException;
                jC = ujVar.c();
                totalBytes = ujVar.tt();
            } else {
                jC = -1;
                totalBytes = this.f20514m.getTotalBytes();
            }
            synchronized (this) {
                if (this.f20517p.c(jC, totalBytes, nuVar)) {
                    if (!com.byazt.k.c.c(this.f20514m.getId()).tt("not_delete_when_clean_space", false)) {
                        zm();
                    }
                    if (!atomicBoolean.get()) {
                        com.byazt.ev.x xVar = this.yp;
                        com.byazt.ev.x xVar2 = com.byazt.ev.x.RUN_STATUS_WAITING_ASYNC_HANDLER;
                        if (xVar != xVar2) {
                            this.yp = xVar2;
                            qp();
                            this.qy.x();
                        }
                        return com.byazt.m.x.RETURN;
                    }
                    if (uj(baseException)) {
                        return com.byazt.m.x.RETURN;
                    }
                    z10 = true;
                } else {
                    if (this.yp == com.byazt.ev.x.RUN_STATUS_WAITING_ASYNC_HANDLER) {
                        return com.byazt.m.x.RETURN;
                    }
                    tt(baseException);
                    return com.byazt.m.x.RETURN;
                }
            }
        } else {
            if (uj(baseException)) {
                return com.byazt.m.x.RETURN;
            }
            z10 = false;
        }
        if (!z10 && pf()) {
            qp();
        }
        com.byazt.zz.a aVar = this.qy;
        com.byazt.ev.x xVar3 = this.yp;
        com.byazt.ev.x xVar4 = com.byazt.ev.x.RUN_STATUS_RETRY_DELAY;
        aVar.c(baseException, xVar3 == xVar4);
        return this.yp == xVar4 ? com.byazt.m.x.RETURN : com.byazt.m.x.CONTINUE;
    }

    @Override // com.byazt.u.a
    public synchronized com.byazt.t.tt c(int i10) {
        com.byazt.t.tt ttVarC;
        if (this.f20514m.getChunkCount() < 2) {
            return null;
        }
        List<com.byazt.t.tt> listVe = this.f20521z.ve(this.f20514m.getId());
        if (listVe != null && !listVe.isEmpty()) {
            for (int i11 = 0; i11 < listVe.size(); i11++) {
                com.byazt.t.tt ttVar = listVe.get(i11);
                if (ttVar != null && (ttVarC = c(ttVar, i10)) != null) {
                    return ttVarC;
                }
            }
            return null;
        }
        return null;
    }

    @Override // com.byazt.u.a
    public void c(com.byazt.hs.sp spVar) {
        boolean z10;
        if (spVar != null) {
            try {
                int iTt = spVar.tt();
                this.f20514m.setHttpStatusCode(iTt);
                this.f20514m.setHttpStatusMessage(com.byazt.w.tt.c(iTt));
                z10 = true;
            } catch (Throwable th) {
                m.c(th);
                z10 = false;
            }
        } else {
            z10 = false;
        }
        if (z10) {
            return;
        }
        this.f20514m.setHttpStatusCode(-1);
        this.f20514m.setHttpStatusMessage("");
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0080  */
    /* JADX WARN: Code duplicated, block: B:29:0x008c  */
    /* JADX WARN: Code duplicated, block: B:38:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:44:0x00db A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:29:0x008c, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:38:0x00e0, please report this as an issue */
    private com.byazt.t.tt c(com.byazt.t.tt ttVar, int i10) {
        boolean z10;
        int i11;
        com.byazt.t.tt ttVar2;
        com.byazt.t.tt ttVar3 = null;
        if (!ttVar.uj()) {
            return null;
        }
        long jVe = ttVar.ve(true);
        com.byazt.x.c.tt(f20508c, "reuseChunk retainLen:" + jVe + " chunkIndex:" + i10);
        if (!ttVar.a() && jVe > com.byazt.ev.n.f14036a && this.f20514m.isNeedReuseChunkRunnable()) {
            List<com.byazt.t.tt> listC = ttVar.c(this.f20514m.getChunkCount(), this.f20514m.getTotalBytes());
            if (listC != null) {
                Iterator<com.byazt.t.tt> it2 = listC.iterator();
                while (it2.hasNext()) {
                    this.f20521z.tt(it2.next());
                }
            }
        } else {
            if (!ttVar.a()) {
                z10 = false;
            }
            if (z10 && ttVar.a()) {
                for (i11 = 1; i11 < ttVar.sp().size(); i11++) {
                    ttVar2 = ttVar.sp().get(i11);
                    if (ttVar2 != null) {
                        com.byazt.x.c.tt(f20508c, "check can checkUnCompletedChunk -- chunkIndex:" + ttVar2.my() + " currentOffset:" + ttVar2.yp() + "  startOffset:" + ttVar2.t() + " contentLen:" + ttVar2.nu());
                        if (ttVar2.my() >= 0 || (!ttVar2.i() && !ttVar2.ve())) {
                            ttVar3 = ttVar2;
                            break;
                        }
                    }
                }
                if (ttVar3 != null) {
                    long jYp = ttVar.yp();
                    com.byazt.x.c.tt(f20508c, "unComplete chunk " + ttVar.my() + " curOffset:" + jYp + " reuseChunk chunkIndex:" + i10 + " for subChunk:" + ttVar3.my());
                    this.f20521z.c(ttVar3.sl(), ttVar3.my(), ttVar3.tt(), i10);
                    ttVar3.ve(i10);
                    ttVar3.c(true);
                }
            }
            return ttVar3;
        }
        z10 = true;
        if (z10) {
            while (i11 < ttVar.sp().size()) {
                ttVar2 = ttVar.sp().get(i11);
                if (ttVar2 != null) {
                    com.byazt.x.c.tt(f20508c, "check can checkUnCompletedChunk -- chunkIndex:" + ttVar2.my() + " currentOffset:" + ttVar2.yp() + "  startOffset:" + ttVar2.t() + " contentLen:" + ttVar2.nu());
                    if (ttVar2.my() >= 0) {
                    }
                    ttVar3 = ttVar2;
                    break;
                }
            }
            if (ttVar3 != null) {
                long jYp2 = ttVar.yp();
                com.byazt.x.c.tt(f20508c, "unComplete chunk " + ttVar.my() + " curOffset:" + jYp2 + " reuseChunk chunkIndex:" + i10 + " for subChunk:" + ttVar3.my());
                this.f20521z.c(ttVar3.sl(), ttVar3.my(), ttVar3.tt(), i10);
                ttVar3.ve(i10);
                ttVar3.c(true);
            }
        }
        return ttVar3;
    }

    private my c(DownloadTask downloadTask) {
        my retryDelayTimeCalculator = downloadTask.getRetryDelayTimeCalculator();
        if (retryDelayTimeCalculator != null) {
            return retryDelayTimeCalculator;
        }
        DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
        if (downloadInfo != null) {
            String retryDelayTimeArray = downloadInfo.getRetryDelayTimeArray();
            if (!TextUtils.isEmpty(retryDelayTimeArray)) {
                return new com.byazt.b.nu(retryDelayTimeArray);
            }
        }
        return com.byazt.zz.ve.sv();
    }

    public void c(Future future) {
        this.tt = future;
    }
}
