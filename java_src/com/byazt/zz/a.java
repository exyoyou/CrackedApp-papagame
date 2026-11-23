package com.byazt.zz;

import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.byazt.c.IDownloadListener;
import com.byazt.c.cu;
import com.byazt.c.gr;
import com.byazt.ev.DownloadStatus;
import com.byazt.m.BaseException;
import com.byazt.t.DownloadInfo;
import com.byazt.t.DownloadTask;
import com.haima.hmcp.proto.GSSDK;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 189, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f23083c = "a";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public DownloadTask f23084a;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public SparseArray<IDownloadListener> f23086i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public com.byazt.c.yp f23087m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Handler f23088n;
    public gr nu;
    public SparseArray<IDownloadListener> sp;
    public final boolean tt;
    public final da uj;
    public DownloadInfo ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public SparseArray<IDownloadListener> f23091x;
    public int yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public long f23092z;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f23085da = false;
    public volatile long sl = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final AtomicLong f23089t = new AtomicLong();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f23090u = false;

    public a(DownloadTask downloadTask, Handler handler) {
        this.f23084a = downloadTask;
        da();
        this.f23088n = handler;
        this.uj = ve.zm();
        DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
        if (downloadInfo != null) {
            this.tt = com.byazt.k.c.c(downloadInfo.getId()).c("fix_start_with_file_exist_update_error");
        } else {
            this.tt = false;
        }
    }

    private void da() {
        DownloadTask downloadTask = this.f23084a;
        if (downloadTask != null) {
            this.ve = downloadTask.getDownloadInfo();
            this.sp = this.f23084a.getDownloadListeners(com.byazt.ev.a.MAIN);
            this.f23086i = this.f23084a.getDownloadListeners(com.byazt.ev.a.NOTIFICATION);
            this.f23091x = this.f23084a.getDownloadListeners(com.byazt.ev.a.SUB);
            this.f23087m = this.f23084a.getDepend();
            this.nu = this.f23084a.getMonitorDepend();
        }
    }

    private void sl() {
        ExecutorService executorServiceT = ve.t();
        if (executorServiceT != null) {
            executorServiceT.execute(new Runnable() { // from class: com.byazt.zz.a.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.uj.i(a.this.ve.getId());
                    a.this.c(1, (BaseException) null);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        try {
            com.byazt.x.c.tt(f23083c, "saveFileAsTargetName onSuccess");
            try {
                u();
                this.ve.setFirstSuccess(false);
                this.ve.setSuccessByCache(false);
                c(-3, (BaseException) null);
                this.uj.ve(this.ve.getId(), this.ve.getTotalBytes());
                this.uj.uj(this.ve.getId());
                this.uj.u(this.ve.getId());
            } catch (BaseException e10) {
                c(e10);
            }
        } catch (Throwable th) {
            c(new BaseException(1008, com.byazt.w.a.tt(th, "onCompleted")));
        }
    }

    private void u() throws BaseException {
        List<com.byazt.c.u> downloadCompleteHandlers = this.f23084a.getDownloadCompleteHandlers();
        if (downloadCompleteHandlers.isEmpty()) {
            return;
        }
        DownloadInfo downloadInfo = this.ve;
        c(11, (BaseException) null);
        this.uj.c(downloadInfo);
        for (com.byazt.c.u uVar : downloadCompleteHandlers) {
            try {
                if (uVar.tt(downloadInfo)) {
                    uVar.c(downloadInfo);
                    this.uj.c(downloadInfo);
                }
            } catch (BaseException e10) {
                throw e10;
            } catch (Throwable th) {
                throw new BaseException(1071, th);
            }
        }
    }

    public void a() {
        this.ve.setFirstDownload(false);
        if (!this.ve.isIgnoreDataVerify() && this.ve.getCurBytes() != this.ve.getTotalBytes()) {
            com.byazt.x.c.tt(f23083c, this.ve.getErrorBytesLog());
            c(new com.byazt.m.a(GSSDK.OneInputOPData.InputOP.OP_XINPUT_THUMB_LX_VALUE, "current bytes is not equals to total bytes, bytes changed with process : " + this.ve.getByteInvalidRetryStatus()));
            return;
        }
        if (this.ve.getCurBytes() <= 0) {
            com.byazt.x.c.tt(f23083c, this.ve.getErrorBytesLog());
            c(new com.byazt.m.a(1026, "curBytes is 0, bytes changed with process : " + this.ve.getByteInvalidRetryStatus()));
            return;
        }
        if (!this.ve.isIgnoreDataVerify() && this.ve.getTotalBytes() <= 0) {
            com.byazt.x.c.tt(f23083c, this.ve.getErrorBytesLog());
            c(new com.byazt.m.a(1044, "TotalBytes is 0, bytes changed with process : " + this.ve.getByteInvalidRetryStatus()));
            return;
        }
        com.byazt.x.c.tt(f23083c, this.ve.getName() + " onCompleted start save file as target name");
        gr monitorDepend = this.nu;
        DownloadTask downloadTask = this.f23084a;
        if (downloadTask != null) {
            monitorDepend = downloadTask.getMonitorDepend();
        }
        com.byazt.w.a.c(this.ve, monitorDepend, new cu() { // from class: com.byazt.zz.a.2
            @Override // com.byazt.c.cu
            public void c() {
                a.this.t();
            }

            @Override // com.byazt.c.cu
            public void c(BaseException baseException) {
                String str = a.f23083c;
                StringBuilder sb2 = new StringBuilder("saveFileAsTargetName onFailed : ");
                sb2.append(baseException != null ? baseException.getErrorMessage() : "");
                com.byazt.x.c.tt(str, sb2.toString());
                a.this.c(baseException);
            }
        });
    }

    public void n() {
        this.ve.setStatus(-7);
        try {
            this.uj.da(this.ve.getId());
        } catch (SQLiteException e10) {
            com.byazt.nr.m.c(e10);
        }
        c(-7, (BaseException) null);
    }

    public void sp() throws BaseException {
        if (!this.tt) {
            u();
            com.byazt.x.c.tt(f23083c, "onCompleteForFileExist");
            this.ve.setSuccessByCache(true);
            c(-3, (BaseException) null);
            this.uj.ve(this.ve.getId(), this.ve.getTotalBytes());
            this.uj.uj(this.ve.getId());
            this.uj.u(this.ve.getId());
            return;
        }
        u();
        com.byazt.x.c.tt(f23083c, "onCompleteForFileExist");
        this.ve.setSuccessByCache(true);
        c(-3, (BaseException) null);
        this.uj.ve(this.ve.getId(), this.ve.getTotalBytes());
        this.uj.uj(this.ve.getId());
        this.uj.c(this.ve);
        this.uj.u(this.ve.getId());
    }

    public void uj() {
        this.ve.setStatus(-2);
        try {
            this.uj.uj(this.ve.getId(), this.ve.getCurBytes());
        } catch (SQLiteException e10) {
            com.byazt.nr.m.c(e10);
        }
        c(-2, (BaseException) null);
    }

    public void x() {
        this.ve.setStatus(8);
        this.ve.setAsyncHandleStatus(com.byazt.ev.c.ASYNC_HANDLE_WAITING);
        com.byazt.b.c cVarD = ve.d();
        if (cVarD != null) {
            cVarD.c(this.ve.getId(), this.f23084a.getHashCodeForSameTask(), 8);
        }
    }

    public void tt() {
        if (this.ve.canSkipStatusHandler()) {
            this.ve.changeSkipStatus();
            return;
        }
        this.uj.sp(this.ve.getId());
        if (this.ve.isFirstDownload()) {
            c(6, (BaseException) null);
        }
        c(2, (BaseException) null);
    }

    public void ve() {
        c(-4, (BaseException) null);
    }

    private BaseException ve(BaseException baseException) {
        Context contextIc;
        if (com.byazt.k.c.c(this.ve.getId()).c("download_failed_check_net", 1) != 1 || !com.byazt.w.a.i(baseException) || (contextIc = ve.ic()) == null || com.byazt.w.a.ve(contextIc)) {
            return baseException;
        }
        return new BaseException(this.ve.isOnlyWifi() ? 1013 : 1049, baseException.getErrorMessage());
    }

    public void c() {
        if (this.ve.canSkipStatusHandler()) {
            return;
        }
        this.ve.setStatus(1);
        sl();
    }

    public void c(long j10, String str, String str2) {
        this.ve.setTotalBytes(j10);
        this.ve.seteTag(str);
        if (!TextUtils.isEmpty(str2) && TextUtils.isEmpty(this.ve.getName())) {
            this.ve.setName(str2);
        }
        try {
            this.uj.c(this.ve.getId(), j10, str, str2);
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
        c(3, (BaseException) null);
        this.f23092z = this.ve.getMinByteIntervalForPostToMainThread(j10);
        this.yp = this.ve.getMinProgressTimeMsInterval();
        this.f23085da = true;
        com.byazt.b.rh.c().n();
    }

    private void tt(BaseException baseException) {
        Log.getStackTraceString(new Throwable());
        if (baseException != null && baseException.getCause() != null && (baseException.getCause() instanceof SQLiteFullException)) {
            try {
                this.uj.a(this.ve.getId());
            } catch (SQLiteException e10) {
                com.byazt.nr.m.c(e10);
            }
        } else {
            try {
                try {
                    this.uj.tt(this.ve.getId(), this.ve.getCurBytes());
                } catch (SQLiteException e11) {
                    com.byazt.nr.m.c(e11);
                }
            } catch (SQLiteException unused) {
                this.uj.a(this.ve.getId());
            }
        }
        BaseException baseExceptionVe = ve(baseException);
        this.ve.setFailedException(baseExceptionVe);
        c(baseExceptionVe instanceof com.byazt.m.n ? -2 : -1, baseExceptionVe);
        if (com.byazt.k.c.c(this.ve.getId()).c("retry_schedule", 0) > 0) {
            com.byazt.b.rh.c().c(this.ve);
        }
    }

    public boolean c(long j10) {
        this.f23089t.addAndGet(j10);
        this.ve.increaseCurBytes(j10);
        long jUptimeMillis = SystemClock.uptimeMillis();
        return c(jUptimeMillis, tt(jUptimeMillis));
    }

    private boolean tt(long j10) {
        boolean z10 = true;
        if (!this.f23090u) {
            this.f23090u = true;
            return true;
        }
        long j11 = j10 - this.sl;
        if (this.f23089t.get() < this.f23092z && j11 < this.yp) {
            z10 = false;
        }
        if (z10) {
            this.sl = j10;
            this.f23089t.set(0L);
        }
        return z10;
    }

    public void c(BaseException baseException, boolean z10) {
        this.ve.setFirstDownload(false);
        this.f23089t.set(0L);
        tt(baseException, z10);
    }

    public void c(com.byazt.t.tt ttVar, BaseException baseException, boolean z10) {
        this.ve.setFirstDownload(false);
        this.f23089t.set(0L);
        this.uj.x(this.ve.getId());
        c(z10 ? 10 : 9, baseException, true);
    }

    private void tt(BaseException baseException, boolean z10) {
        this.uj.x(this.ve.getId());
        c(z10 ? 7 : 5, baseException);
    }

    public void c(BaseException baseException) {
        this.ve.setFirstDownload(false);
        tt(baseException);
    }

    public void c(String str) throws BaseException {
        com.byazt.x.c.tt(f23083c, "onCompleteForFileExist existTargetFileName is " + str + " but curName is " + this.ve.getName());
        if (this.tt) {
            com.byazt.w.a.c(this.ve, str);
            u();
            this.ve.setSuccessByCache(true);
            c(-3, (BaseException) null);
            this.uj.c(this.ve);
            return;
        }
        this.uj.c(this.ve);
        com.byazt.w.a.c(this.ve, str);
        this.ve.setSuccessByCache(true);
        u();
        c(-3, (BaseException) null);
    }

    private boolean c(long j10, boolean z10) {
        boolean z11 = false;
        if (this.ve.getCurBytes() == this.ve.getTotalBytes()) {
            try {
                this.uj.c(this.ve.getId(), this.ve.getCurBytes());
            } catch (Exception e10) {
                com.byazt.nr.m.c(e10);
            }
            return false;
        }
        if (this.f23085da) {
            this.f23085da = false;
            this.ve.setStatus(4);
        }
        if (this.ve.isNeedPostProgress() && z10) {
            z11 = true;
        }
        c(4, (BaseException) null, z11);
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10, BaseException baseException) {
        c(i10, baseException, true);
    }

    private void c(int i10, BaseException baseException, boolean z10) {
        SparseArray<IDownloadListener> sparseArray;
        SparseArray<IDownloadListener> sparseArray2;
        int status = this.ve.getStatus();
        if (status == -3 && i10 == 4) {
            return;
        }
        da();
        if (i10 != 4 && DownloadStatus.isRealTimeUploadStatus(i10)) {
            this.ve.updateRealDownloadTime(false);
            if (DownloadStatus.isTimeUploadStatus(i10)) {
                this.ve.updateDownloadTime();
            }
        }
        if (!this.ve.isAddListenerToSameTask()) {
            com.byazt.zl.c.c(this.f23084a, baseException, i10);
        }
        if (i10 == 6) {
            this.ve.setStatus(2);
        } else if (i10 == -6) {
            this.ve.setStatus(-3);
        } else {
            this.ve.setStatus(i10);
        }
        if (status == -3 || status == -1) {
            if (this.ve.getRetryDelayStatus() == com.byazt.ev.sp.DELAY_RETRY_DOWNLOADING) {
                this.ve.setRetryDelayStatus(com.byazt.ev.sp.DELAY_RETRY_DOWNLOADED);
            }
            if (this.ve.getAsyncHandleStatus() == com.byazt.ev.c.ASYNC_HANDLE_DOWNLOADING) {
                this.ve.setAsyncHandleStatus(com.byazt.ev.c.ASYNC_HANDLE_DOWNLOADED);
            }
            if (this.ve.getByteInvalidRetryStatus() == com.byazt.ev.tt.BYTE_INVALID_RETRY_STATUS_DOWNLOADING) {
                this.ve.setByteInvalidRetryStatus(com.byazt.ev.tt.BYTE_INVALID_RETRY_STATUS_DOWNLOADED);
            }
        }
        com.byazt.w.ve.c(i10, this.f23091x, true, this.ve, baseException);
        if (i10 == -4) {
            return;
        }
        if (z10 && this.f23088n != null && (((sparseArray = this.sp) != null && sparseArray.size() > 0) || ((sparseArray2 = this.f23086i) != null && sparseArray2.size() > 0 && (this.ve.canShowNotification() || this.ve.isAutoInstallWithoutNotification())))) {
            this.f23088n.obtainMessage(i10, this.ve.getId(), this.f23084a.getHashCodeForSameTask(), baseException).sendToTarget();
            return;
        }
        com.byazt.b.c cVarD = ve.d();
        if (cVarD != null) {
            cVarD.c(this.ve.getId(), this.f23084a.getHashCodeForSameTask(), i10);
        }
    }
}
