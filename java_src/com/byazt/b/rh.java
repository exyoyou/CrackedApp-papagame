package com.byazt.b;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.m.BaseException;
import com.byazt.t.DownloadInfo;
import com.byazt.zz.Downloader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 223, 115})
public class rh implements Handler.Callback, com.byazt.g.c.InterfaceC0315c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile rh f11817c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static tt f11818i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f11819a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f11820n;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public ConnectivityManager f11821x;
    public final Handler ve = new Handler(Looper.getMainLooper(), this);
    public final SparseArray<c> uj = new SparseArray<>();
    public int sp = 0;
    public final Context tt = com.byazt.zz.ve.ic();

    @com.byazt.zqa.c(c = {0, 1, 223, 739})
    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f11826a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f11827c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public boolean f11828da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f11829i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final int f11830n;
        public long sl;
        public final int[] sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public boolean f11831t;
        public final int tt;
        public final int uj;
        public final int ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f11832x;

        public c(int i10, int i11, int i12, int i13, int i14, boolean z10, int[] iArr) {
            i13 = i13 < 3000 ? 3000 : i13;
            i14 = i14 < 5000 ? 5000 : i14;
            this.f11827c = i10;
            this.tt = i11;
            this.ve = i12;
            this.uj = i13;
            this.f11830n = i14;
            this.f11826a = z10;
            this.sp = iArr;
            this.f11832x = i13;
        }

        public int uj() {
            return this.f11832x;
        }

        public void ve() {
            this.f11832x = this.uj;
        }

        public boolean c(long j10, int i10, int i11, boolean z10) {
            if (!this.f11831t) {
                com.byazt.x.c.ve("RetryScheduler", "canRetry: mIsWaitingRetry is false, return false!!!");
                return false;
            }
            if (this.tt < i10 || this.f11829i >= this.ve) {
                return false;
            }
            if (!this.f11828da || i11 == 2) {
                return z10 || j10 - this.sl >= ((long) this.uj);
            }
            return false;
        }

        public synchronized void tt() {
            this.f11829i++;
        }

        public synchronized void c() {
            this.f11832x += this.f11830n;
        }

        public synchronized void c(long j10) {
            this.sl = j10;
        }
    }

    public interface tt {
        void c(DownloadInfo downloadInfo, long j10, boolean z10, int i10);
    }

    private rh() {
        a();
        this.f11820n = com.byazt.w.a.ve();
        com.byazt.g.c.c().c(this);
    }

    private void a() {
        if (com.byazt.k.c.ve().c("use_network_callback", 0) != 1) {
            return;
        }
        com.byazt.zz.ve.t().execute(new Runnable() { // from class: com.byazt.b.rh.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (rh.this.tt != null) {
                        rh rhVar = rh.this;
                        rhVar.f11821x = (ConnectivityManager) rhVar.tt.getApplicationContext().getSystemService("connectivity");
                        rh.this.f11821x.registerNetworkCallback(new NetworkRequest.Builder().build(), new ConnectivityManager.NetworkCallback() { // from class: com.byazt.b.rh.1.1
                            @Override // android.net.ConnectivityManager.NetworkCallback
                            public void onAvailable(Network network) {
                                com.byazt.x.c.tt("RetryScheduler", "network onAvailable: ");
                                rh.this.c(1, true);
                            }
                        });
                    }
                } catch (Exception e10) {
                    com.byazt.nr.m.c(e10);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int sp() {
        try {
            if (this.f11821x == null) {
                this.f11821x = (ConnectivityManager) this.tt.getApplicationContext().getSystemService("connectivity");
            }
            NetworkInfo activeNetworkInfo = this.f11821x.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                return activeNetworkInfo.getType() == 1 ? 2 : 1;
            }
        } catch (Exception unused) {
        }
        return 0;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            tt(message.arg1, message.arg2 == 1);
        } else {
            com.byazt.x.c.ve("RetryScheduler", "handleMessage, doSchedulerRetry, id = " + message.what);
            c(message.what);
        }
        return true;
    }

    private void tt(final int i10, final boolean z10) {
        com.byazt.zz.ve.t().execute(new Runnable() { // from class: com.byazt.b.rh.2
            @Override // java.lang.Runnable
            public void run() {
                int iSp;
                try {
                    if (rh.this.sp > 0 && (iSp = rh.this.sp()) != 0) {
                        com.byazt.x.c.ve("RetryScheduler", "doScheduleAllTaskRetry: mWaitingRetryTasksCount = " + rh.this.sp);
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        ArrayList arrayList = new ArrayList();
                        synchronized (rh.this.uj) {
                            for (int i11 = 0; i11 < rh.this.uj.size(); i11++) {
                                c cVar = (c) rh.this.uj.valueAt(i11);
                                if (cVar != null && cVar.c(jCurrentTimeMillis, i10, iSp, z10)) {
                                    if (z10) {
                                        cVar.ve();
                                    }
                                    arrayList.add(cVar);
                                }
                            }
                        }
                        if (arrayList.size() > 0) {
                            Iterator it2 = arrayList.iterator();
                            while (it2.hasNext()) {
                                rh.this.c(((c) it2.next()).f11827c, iSp, false);
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            }
        });
    }

    private c uj(int i10) {
        int[] iArrC;
        int i11;
        int i12;
        boolean z10;
        com.byazt.k.c cVarC = com.byazt.k.c.c(i10);
        boolean z11 = false;
        int iC = cVarC.c("retry_schedule", 0);
        JSONObject jSONObjectUj = cVarC.uj("retry_schedule_config");
        int i13 = 60;
        if (jSONObjectUj != null) {
            int iOptInt = jSONObjectUj.optInt("max_count", 60);
            int iOptInt2 = jSONObjectUj.optInt("interval_sec", 60);
            int iOptInt3 = jSONObjectUj.optInt("interval_sec_acceleration", 60);
            if (f11818i != null && jSONObjectUj.optInt("use_job_scheduler", 0) == 1) {
                z11 = true;
            }
            iArrC = c(jSONObjectUj.optString("allow_error_code"));
            i11 = iOptInt3;
            z10 = z11;
            i12 = iOptInt;
            i13 = iOptInt2;
        } else {
            iArrC = null;
            i11 = 60;
            i12 = 60;
            z10 = false;
        }
        return new c(i10, iC, i12, i13 * 1000, i11 * 1000, z10, iArrC);
    }

    private void ve(int i10) {
        synchronized (this.uj) {
            this.uj.remove(i10);
        }
    }

    public void n() {
        c(5, false);
    }

    private c tt(int i10) {
        c cVarUj = this.uj.get(i10);
        if (cVarUj == null) {
            synchronized (this.uj) {
                cVarUj = this.uj.get(i10);
                if (cVarUj == null) {
                    cVarUj = uj(i10);
                }
                this.uj.put(i10, cVarUj);
            }
        }
        return cVarUj;
    }

    public static rh c() {
        if (f11817c == null) {
            synchronized (rh.class) {
                if (f11817c == null) {
                    f11817c = new rh();
                }
            }
        }
        return f11817c;
    }

    @Override // com.byazt.g.c.InterfaceC0315c
    public void ve() {
        c(3, false);
    }

    @Override // com.byazt.g.c.InterfaceC0315c
    public void tt() {
        c(4, false);
    }

    public static void c(tt ttVar) {
        f11818i = ttVar;
    }

    public void c(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return;
        }
        c(downloadInfo, downloadInfo.isOnlyWifi() || downloadInfo.isPauseReserveOnWifi(), sp());
    }

    public void uj() {
        c(2, true);
    }

    private void c(DownloadInfo downloadInfo, boolean z10, int i10) {
        BaseException failedException = downloadInfo.getFailedException();
        if (failedException == null) {
            return;
        }
        c cVarTt = tt(downloadInfo.getId());
        if (cVarTt.f11829i > cVarTt.ve) {
            com.byazt.x.c.uj("RetryScheduler", "tryStartScheduleRetry, id = " + cVarTt.f11827c + ", mRetryCount = " + cVarTt.f11829i + ", maxCount = " + cVarTt.ve);
            return;
        }
        int errorCode = failedException.getErrorCode();
        if (!com.byazt.w.a.x(failedException) && !com.byazt.w.a.i(failedException) && (!downloadInfo.statusInPause() || !downloadInfo.isPauseReserveOnWifi())) {
            if (!c(cVarTt, errorCode)) {
                return;
            }
            com.byazt.x.c.ve("RetryScheduler", "allow error code, id = " + cVarTt.f11827c + ", error code = " + errorCode);
        }
        cVarTt.f11828da = z10;
        synchronized (this.uj) {
            if (!cVarTt.f11831t) {
                cVarTt.f11831t = true;
                this.sp++;
            }
        }
        int iUj = cVarTt.uj();
        com.byazt.x.c.ve("RetryScheduler", "tryStartScheduleRetry: id = " + cVarTt.f11827c + ", delayTimeMills = " + iUj + ", mWaitingRetryTasks = " + this.sp);
        if (!cVarTt.f11826a) {
            if (z10) {
                return;
            }
            this.ve.removeMessages(downloadInfo.getId());
            this.ve.sendEmptyMessageDelayed(downloadInfo.getId(), iUj);
            return;
        }
        if (i10 == 0) {
            cVarTt.ve();
        }
        tt ttVar = f11818i;
        if (ttVar != null) {
            ttVar.c(downloadInfo, iUj, z10, i10);
        }
        if (this.f11820n) {
            cVarTt.c(System.currentTimeMillis());
            cVarTt.tt();
            cVarTt.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10, boolean z10) {
        if (this.sp <= 0) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (this) {
            if (!z10) {
                if (jCurrentTimeMillis - this.f11819a < 10000) {
                    return;
                }
            }
            this.f11819a = jCurrentTimeMillis;
            com.byazt.x.c.ve("RetryScheduler", "scheduleAllTaskRetry, level = [" + i10 + "], force = [" + z10 + "]");
            if (z10) {
                this.ve.removeMessages(0);
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = 0;
            messageObtain.arg1 = i10;
            messageObtain.arg2 = z10 ? 1 : 0;
            this.ve.sendMessageDelayed(messageObtain, 2000L);
        }
    }

    public void c(final int i10) {
        com.byazt.zz.ve.t().execute(new Runnable() { // from class: com.byazt.b.rh.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    rh rhVar = rh.this;
                    rhVar.c(i10, rhVar.sp(), true);
                } catch (Exception e10) {
                    com.byazt.nr.m.c(e10);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10, int i11, boolean z10) {
        com.byazt.zz.rh reserveWifiStatusListener;
        boolean zC;
        Context context = this.tt;
        if (context == null) {
            return;
        }
        synchronized (this.uj) {
            c cVar = this.uj.get(i10);
            if (cVar == null) {
                return;
            }
            boolean z11 = true;
            if (cVar.f11831t) {
                cVar.f11831t = false;
                int i12 = this.sp - 1;
                this.sp = i12;
                if (i12 < 0) {
                    this.sp = 0;
                }
            }
            com.byazt.x.c.ve("RetryScheduler", "doSchedulerRetryInSubThread: downloadId = " + i10 + ", retryCount = " + cVar.f11829i + ", mWaitingRetryTasksCount = " + this.sp);
            DownloadInfo downloadInfo = Downloader.getInstance(context).getDownloadInfo(i10);
            if (downloadInfo == null) {
                ve(i10);
                return;
            }
            com.byazt.x.c.n("RetryScheduler", "doSchedulerRetryInSubThread，id:".concat(String.valueOf(i10)));
            int realStatus = downloadInfo.getRealStatus();
            if (realStatus != -3 && realStatus != -4) {
                if (realStatus == -5 || (realStatus == -2 && downloadInfo.isPauseReserveOnWifi())) {
                    if (realStatus == -2 && (reserveWifiStatusListener = Downloader.getInstance(com.byazt.zz.ve.ic()).getReserveWifiStatusListener()) != null) {
                        reserveWifiStatusListener.c(downloadInfo, 4, 3);
                    }
                    com.byazt.zz.t tVarGr = com.byazt.zz.ve.gr();
                    if (tVarGr != null) {
                        tVarGr.c(Collections.singletonList(downloadInfo), 3);
                    }
                    ve(i10);
                    return;
                }
                if (realStatus != -1) {
                    return;
                }
                if (i11 != 0) {
                    zC = true;
                } else if (!cVar.f11826a) {
                    return;
                } else {
                    zC = false;
                }
                BaseException failedException = downloadInfo.getFailedException();
                if (zC && com.byazt.w.a.x(failedException)) {
                    zC = c(downloadInfo, failedException);
                }
                cVar.tt();
                if (zC) {
                    com.byazt.x.c.ve("RetryScheduler", "doSchedulerRetry: restart task, ****** id = " + cVar.f11827c);
                    cVar.c(System.currentTimeMillis());
                    if (z10) {
                        cVar.c();
                    }
                    downloadInfo.setRetryScheduleCount(cVar.f11829i);
                    if (downloadInfo.getStatus() == -1) {
                        Downloader.getInstance(context).restart(downloadInfo.getId());
                        return;
                    }
                    return;
                }
                if (z10) {
                    cVar.c();
                }
                if (!downloadInfo.isOnlyWifi() && !downloadInfo.isPauseReserveOnWifi()) {
                    z11 = false;
                }
                c(downloadInfo, z11, i11);
                return;
            }
            ve(i10);
        }
    }

    private boolean c(c cVar, int i10) {
        int[] iArr = cVar.sp;
        if (iArr != null && iArr.length != 0) {
            for (int i11 : iArr) {
                if (i11 == i10) {
                    return true;
                }
            }
        }
        return false;
    }

    private int[] c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            String[] strArrSplit = str.split(",");
            if (strArrSplit.length <= 0) {
                return null;
            }
            int[] iArr = new int[strArrSplit.length];
            for (int i10 = 0; i10 < strArrSplit.length; i10++) {
                iArr[i10] = Integer.parseInt(strArrSplit[i10]);
            }
            return iArr;
        } catch (Throwable unused) {
            return null;
        }
    }

    private boolean c(DownloadInfo downloadInfo, BaseException baseException) {
        long jUj;
        long totalBytes;
        try {
            jUj = com.byazt.w.a.uj(downloadInfo.getTempPath());
        } catch (BaseException e10) {
            com.byazt.nr.m.c(e10);
            jUj = 0;
        }
        if (baseException instanceof com.byazt.m.uj) {
            totalBytes = ((com.byazt.m.uj) baseException).tt();
        } else {
            totalBytes = downloadInfo.getTotalBytes() - downloadInfo.getCurBytes();
        }
        if (jUj < totalBytes) {
            com.byazt.k.c cVarC = com.byazt.k.c.c(downloadInfo.getId());
            if (cVarC.c("space_fill_part_download", 0) == 1) {
                if (jUj > 0) {
                    int iC = cVarC.c("space_fill_min_keep_mb", 100);
                    if (iC > 0) {
                        long j10 = jUj - (((long) iC) * 1048576);
                        com.byazt.x.c.ve("RetryScheduler", "retry schedule: available = " + com.byazt.w.a.c(jUj) + "MB, minKeep = " + iC + "MB, canDownload = " + com.byazt.w.a.c(j10) + "MB");
                        if (j10 <= 0) {
                            com.byazt.x.c.uj("RetryScheduler", "doSchedulerRetryInSubThread: canDownload <= 0 , canRetry = false !!!!");
                            return false;
                        }
                    }
                } else if (cVarC.c("download_when_space_negative", 0) != 1) {
                }
            }
            return false;
        }
        return true;
    }
}
