package com.byazt.b;

import android.database.sqlite.SQLiteException;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.c.IDownloadFileUriProvider;
import com.byazt.c.IDownloadListener;
import com.byazt.c.eo;
import com.byazt.c.yv;
import com.byazt.ev.DownloadStatus;
import com.byazt.ev.EnqueueType;
import com.byazt.m.BaseException;
import com.byazt.t.DownloadInfo;
import com.byazt.t.DownloadTask;
import com.byazt.zz.Downloader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 223, 20})
public abstract class c implements com.byazt.u.x.c {
    public final SparseArray<DownloadTask> tt = new SparseArray<>();
    public final SparseArray<DownloadTask> ve = new SparseArray<>();
    public final SparseArray<DownloadTask> uj = new SparseArray<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final SparseArray<DownloadTask> f11807n = new SparseArray<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SparseArray<DownloadTask> f11803a = new SparseArray<>();
    public final SparseArray<SparseArray<DownloadTask>> sp = new SparseArray<>();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final com.byazt.w.x<Integer, DownloadTask> f11808x = new com.byazt.w.x<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SparseArray<Long> f11806i = new SparseArray<>();

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final LinkedBlockingDeque<DownloadTask> f11805da = new LinkedBlockingDeque<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.u.x f11804c = new com.byazt.u.x(Looper.getMainLooper(), this);
    public final com.byazt.zz.da sl = com.byazt.zz.ve.zm();

    private void m(int i10) {
        DownloadTask first;
        if (this.f11805da.isEmpty()) {
            return;
        }
        DownloadTask first2 = this.f11805da.getFirst();
        if (first2 != null && first2.getDownloadId() == i10) {
            this.f11805da.poll();
        }
        if (this.f11805da.isEmpty() || (first = this.f11805da.getFirst()) == null) {
            return;
        }
        c(first, true);
    }

    private void ve(DownloadTask downloadTask) {
        DownloadInfo downloadInfo;
        if (downloadTask == null || (downloadInfo = downloadTask.getDownloadInfo()) == null) {
            return;
        }
        try {
            if (this.f11805da.isEmpty()) {
                c(downloadTask, true);
                this.f11805da.put(downloadTask);
                return;
            }
            if (downloadInfo.getEnqueueType() != EnqueueType.ENQUEUE_TAIL) {
                DownloadTask first = this.f11805da.getFirst();
                if (first.getDownloadId() == downloadTask.getDownloadId() && c(downloadTask.getDownloadId())) {
                    return;
                }
                n(first.getDownloadId());
                c(downloadTask, true);
                if (first.getDownloadId() != downloadTask.getDownloadId()) {
                    this.f11805da.putFirst(downloadTask);
                    return;
                }
                return;
            }
            if (this.f11805da.getFirst().getDownloadId() == downloadTask.getDownloadId() && c(downloadTask.getDownloadId())) {
                return;
            }
            Iterator<DownloadTask> it2 = this.f11805da.iterator();
            while (it2.hasNext()) {
                DownloadTask next = it2.next();
                if (next != null && next.getDownloadId() == downloadTask.getDownloadId()) {
                    it2.remove();
                    break;
                }
            }
            this.f11805da.put(downloadTask);
            new com.byazt.zz.a(downloadTask, this.f11804c).c();
        } catch (InterruptedException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DownloadTask z(int i10) {
        DownloadTask downloadTask = this.tt.get(i10);
        if (downloadTask != null) {
            return downloadTask;
        }
        DownloadTask downloadTask2 = this.uj.get(i10);
        if (downloadTask2 != null) {
            return downloadTask2;
        }
        DownloadTask downloadTask3 = this.ve.get(i10);
        if (downloadTask3 != null) {
            return downloadTask3;
        }
        DownloadTask downloadTask4 = this.f11807n.get(i10);
        return downloadTask4 == null ? this.f11803a.get(i10) : downloadTask4;
    }

    public synchronized boolean a(int i10) {
        DownloadTask downloadTask = this.tt.get(i10);
        if (downloadTask != null) {
            DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
            if (downloadInfo != null) {
                downloadInfo.setDownloadFromReserveWifi(false);
            }
            c(downloadTask);
        } else {
            sp(i10);
        }
        return true;
    }

    public abstract List<Integer> c();

    public abstract void c(int i10, long j10);

    public abstract void c(int i10, DownloadTask downloadTask);

    public abstract void c(com.byazt.u.ve veVar);

    public abstract boolean c(int i10);

    public synchronized IDownloadFileUriProvider da(int i10) {
        DownloadTask downloadTask = this.tt.get(i10);
        if (downloadTask != null) {
            return downloadTask.getFileUriProvider();
        }
        DownloadTask downloadTask2 = this.ve.get(i10);
        if (downloadTask2 != null) {
            return downloadTask2.getFileUriProvider();
        }
        DownloadTask downloadTask3 = this.uj.get(i10);
        if (downloadTask3 != null) {
            return downloadTask3.getFileUriProvider();
        }
        DownloadTask downloadTask4 = this.f11807n.get(i10);
        if (downloadTask4 != null) {
            return downloadTask4.getFileUriProvider();
        }
        DownloadTask downloadTask5 = this.f11803a.get(i10);
        if (downloadTask5 == null) {
            return null;
        }
        return downloadTask5.getFileUriProvider();
    }

    public synchronized yv i(int i10) {
        DownloadTask downloadTask = this.tt.get(i10);
        if (downloadTask != null) {
            return downloadTask.getNotificationEventListener();
        }
        DownloadTask downloadTask2 = this.ve.get(i10);
        if (downloadTask2 != null) {
            return downloadTask2.getNotificationEventListener();
        }
        DownloadTask downloadTask3 = this.uj.get(i10);
        if (downloadTask3 != null) {
            return downloadTask3.getNotificationEventListener();
        }
        DownloadTask downloadTask4 = this.f11807n.get(i10);
        if (downloadTask4 != null) {
            return downloadTask4.getNotificationEventListener();
        }
        DownloadTask downloadTask5 = this.f11803a.get(i10);
        if (downloadTask5 == null) {
            return null;
        }
        return downloadTask5.getNotificationEventListener();
    }

    public synchronized boolean n(int i10) {
        com.byazt.x.c.tt("AbsDownloadEngine", "pause id=".concat(String.valueOf(i10)));
        DownloadInfo downloadInfoTt = this.sl.tt(i10);
        if (downloadInfoTt != null && downloadInfoTt.getStatus() == 11) {
            return false;
        }
        synchronized (this.tt) {
            tt(i10);
        }
        if (downloadInfoTt == null) {
            DownloadTask downloadTask = this.tt.get(i10);
            if (downloadTask != null) {
                new com.byazt.zz.a(downloadTask, this.f11804c).uj();
                return true;
            }
        } else {
            c(downloadInfoTt);
            if (downloadInfoTt.getStatus() == 1) {
                DownloadTask downloadTask2 = this.tt.get(i10);
                if (downloadTask2 != null) {
                    new com.byazt.zz.a(downloadTask2, this.f11804c).uj();
                    return true;
                }
            } else if (DownloadStatus.isDownloading(downloadInfoTt.getStatus())) {
                downloadInfoTt.setStatus(-2);
                return true;
            }
        }
        return false;
    }

    public synchronized boolean sl(int i10) {
        DownloadInfo downloadInfo;
        DownloadTask downloadTask = this.f11807n.get(i10);
        if (downloadTask != null && (downloadInfo = downloadTask.getDownloadInfo()) != null) {
            if (downloadInfo.canStartRetryDelayTask()) {
                c(downloadTask, false);
            }
            return true;
        }
        DownloadInfo downloadInfoTt = this.sl.tt(i10);
        if (downloadInfoTt != null && downloadInfoTt.canStartRetryDelayTask()) {
            c(new DownloadTask(downloadInfoTt), false);
        }
        return false;
    }

    public synchronized boolean sp(int i10) {
        DownloadTask downloadTask = this.uj.get(i10);
        if (downloadTask == null) {
            downloadTask = this.f11807n.get(i10);
        }
        if (downloadTask == null) {
            return false;
        }
        DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
        if (downloadInfo != null) {
            downloadInfo.setDownloadFromReserveWifi(false);
        }
        c(downloadTask);
        return true;
    }

    public synchronized boolean t(int i10) {
        DownloadInfo downloadInfo;
        DownloadTask downloadTask = this.f11803a.get(i10);
        if (downloadTask == null || (downloadInfo = downloadTask.getDownloadInfo()) == null) {
            return false;
        }
        if (downloadInfo.canReStartAsyncTask()) {
            c(downloadTask);
        }
        return true;
    }

    public abstract void tt(int i10);

    public synchronized void u(int i10) {
        DownloadInfo downloadInfo;
        DownloadTask downloadTask = this.tt.get(i10);
        if (downloadTask != null && (downloadInfo = downloadTask.getDownloadInfo()) != null) {
            downloadInfo.setForceIgnoreRecommendSize(true);
            c(downloadTask);
        }
    }

    public synchronized DownloadInfo uj(int i10) {
        DownloadInfo downloadInfoTt;
        DownloadTask downloadTask;
        downloadInfoTt = this.sl.tt(i10);
        if (downloadInfoTt == null && (downloadTask = this.tt.get(i10)) != null) {
            downloadInfoTt = downloadTask.getDownloadInfo();
        }
        return downloadInfoTt;
    }

    public abstract com.byazt.u.ve ve(int i10);

    public synchronized eo x(int i10) {
        DownloadTask downloadTask = this.tt.get(i10);
        if (downloadTask != null) {
            return downloadTask.getNotificationClickCallback();
        }
        DownloadTask downloadTask2 = this.ve.get(i10);
        if (downloadTask2 != null) {
            return downloadTask2.getNotificationClickCallback();
        }
        DownloadTask downloadTask3 = this.uj.get(i10);
        if (downloadTask3 != null) {
            return downloadTask3.getNotificationClickCallback();
        }
        DownloadTask downloadTask4 = this.f11807n.get(i10);
        if (downloadTask4 != null) {
            return downloadTask4.getNotificationClickCallback();
        }
        DownloadTask downloadTask5 = this.f11803a.get(i10);
        if (downloadTask5 == null) {
            return null;
        }
        return downloadTask5.getNotificationClickCallback();
    }

    public synchronized boolean yp(int i10) {
        if (i10 != 0) {
            if (this.tt.get(i10) != null || this.uj.get(i10) != null) {
                return true;
            }
        }
        return false;
    }

    private void tt(DownloadTask downloadTask) {
        int hashCodeForSameTask = downloadTask.getHashCodeForSameTask();
        if (hashCodeForSameTask == 0 && downloadTask.isAutoSetHashCodeForSameTask()) {
            hashCodeForSameTask = downloadTask.autoCalAndGetHashCodeForSameTask();
        }
        if (hashCodeForSameTask == 0) {
            return;
        }
        SparseArray<DownloadTask> sparseArray = this.sp.get(downloadTask.getDownloadId());
        if (sparseArray == null) {
            sparseArray = new SparseArray<>();
            this.sp.put(downloadTask.getDownloadId(), sparseArray);
        }
        com.byazt.x.c.tt("AbsDownloadEngine", "tryCacheSameTaskWithListenerHashCode id:" + downloadTask.getDownloadId() + " listener hasCode:" + hashCodeForSameTask);
        sparseArray.put(hashCodeForSameTask, downloadTask);
    }

    private void c(DownloadTask downloadTask, boolean z10) {
        DownloadInfo downloadInfo;
        int status;
        DownloadInfo downloadInfo2;
        DownloadTask downloadTaskRemove;
        if (downloadTask == null || (downloadInfo = downloadTask.getDownloadInfo()) == null) {
            return;
        }
        if (downloadInfo.isEntityInvalid()) {
            com.byazt.zl.c.c(downloadTask.getMonitorDepend(), downloadInfo, new BaseException(1003, "downloadInfo is Invalid, url is " + downloadInfo.getUrl() + " name is " + downloadInfo.getName() + " savePath is " + downloadInfo.getSavePath()), downloadInfo.getStatus());
            return;
        }
        boolean z11 = false;
        if (com.byazt.k.c.c(downloadInfo.getId()).c("no_net_opt", 0) == 1 && !com.byazt.w.a.ve(com.byazt.zz.ve.ic()) && !downloadInfo.isFirstDownload()) {
            new com.byazt.zz.a(downloadTask, this.f11804c).c(new BaseException(1049, "network_not_available"));
            return;
        }
        int id2 = downloadInfo.getId();
        if (z10) {
            c(downloadInfo);
        }
        if (this.uj.get(id2) != null) {
            this.uj.remove(id2);
        }
        if (this.ve.get(id2) != null) {
            this.ve.remove(id2);
        }
        if (this.f11807n.get(id2) != null) {
            this.f11807n.remove(id2);
        }
        if (this.f11803a.get(id2) != null) {
            this.f11803a.remove(id2);
        }
        if (c(id2) && !downloadInfo.canReStartAsyncTask()) {
            com.byazt.x.c.tt("AbsDownloadEngine", "another task with same id is downloading when tryDownload");
            downloadTask.addListenerToDownloadingSameTask();
            com.byazt.zl.c.c(downloadTask.getMonitorDepend(), downloadInfo, new BaseException(1003, "downloadInfo is isDownloading and addListenerToSameTask is false"), downloadInfo.getStatus());
            return;
        }
        com.byazt.x.c.tt("AbsDownloadEngine", "no downloading task :".concat(String.valueOf(id2)));
        if (downloadInfo.canReStartAsyncTask()) {
            downloadInfo.setAsyncHandleStatus(com.byazt.ev.c.ASYNC_HANDLE_RESTART);
        }
        if (com.byazt.w.c.c(32768) && (downloadTaskRemove = this.f11808x.remove(Integer.valueOf(id2))) != null) {
            downloadTask.copyListenerFromPendingTask(downloadTaskRemove);
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        DownloadTask downloadTask2 = this.tt.get(id2);
        if (downloadTask2 == null || (downloadInfo2 = downloadTask2.getDownloadInfo()) == null) {
            status = 0;
        } else {
            status = downloadInfo2.getStatus();
            if (DownloadStatus.isDownloading(status)) {
                z11 = true;
            }
        }
        com.byazt.x.c.tt("AbsDownloadEngine", "can add listener " + z11 + " , oldTaskStatus is :" + status);
        if (z11) {
            downloadTask.addListenerToDownloadingSameTask();
            return;
        }
        tt(downloadTask);
        this.tt.put(id2, downloadTask);
        this.f11806i.put(id2, Long.valueOf(jUptimeMillis));
        c(id2, downloadTask);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void uj(int i10, boolean z10) {
        com.byazt.x.c.tt("AbsDownloadEngine", "clearDownloadDataInSubThread::id=" + i10 + " deleteTargetFile=" + z10);
        try {
            DownloadInfo downloadInfoTt = this.sl.tt(i10);
            if (downloadInfoTt != null) {
                if (z10) {
                    com.byazt.w.a.c(downloadInfoTt);
                } else {
                    com.byazt.w.a.ve(downloadInfoTt.getTempPath(), downloadInfoTt.getTempName());
                }
                downloadInfoTt.erase();
            }
            try {
                this.sl.a(i10);
            } catch (SQLiteException e10) {
                com.byazt.nr.m.c(e10);
            }
            c(i10, 0, -4);
            if (this.uj.get(i10) != null) {
                this.uj.remove(i10);
            }
            if (this.ve.get(i10) != null) {
                this.ve.remove(i10);
            }
            this.f11808x.remove(Integer.valueOf(i10));
            com.byazt.k.c.tt(i10);
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    public synchronized void tt(List<String> list) {
        DownloadInfo downloadInfo;
        try {
            if (com.byazt.w.a.tt(com.byazt.zz.ve.ic())) {
                for (int i10 = 0; i10 < this.tt.size(); i10++) {
                    DownloadTask downloadTask = this.tt.get(this.tt.keyAt(i10));
                    if (downloadTask != null && (downloadInfo = downloadTask.getDownloadInfo()) != null && downloadInfo.getMimeType() != null && list.contains(downloadInfo.getMimeType()) && tt(downloadInfo)) {
                        downloadInfo.setAutoResumed(true);
                        downloadInfo.setShowNotificationForNetworkResumed(true);
                        c(downloadTask);
                        downloadInfo.setDownloadFromReserveWifi(true);
                        com.byazt.zz.rh reserveWifiStatusListener = Downloader.getInstance(com.byazt.zz.ve.ic()).getReserveWifiStatusListener();
                        if (reserveWifiStatusListener != null) {
                            reserveWifiStatusListener.c(downloadInfo, 5, 2);
                        } else {
                            continue;
                        }
                    }
                }
                return;
            }
            return;
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
            return;
        }
        throw th;
    }

    public void ve(final int i10, final boolean z10) {
        DownloadInfo downloadInfoTt = this.sl.tt(i10);
        if (downloadInfoTt != null) {
            c(downloadInfoTt);
        }
        this.f11804c.post(new Runnable() { // from class: com.byazt.b.c.4
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.n.tt.c().a(i10);
            }
        });
        com.byazt.zz.ve.c(new Runnable() { // from class: com.byazt.b.c.5
            @Override // java.lang.Runnable
            public void run() {
                c.this.ve(i10);
                c.this.n(i10, z10);
            }
        }, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(int i10, boolean z10) {
        try {
            DownloadInfo downloadInfoTt = this.sl.tt(i10);
            if (downloadInfoTt != null) {
                com.byazt.w.a.c(downloadInfoTt, z10);
                downloadInfoTt.erase();
            }
            try {
                this.sl.uj(i10);
                this.sl.c(downloadInfoTt);
            } catch (SQLiteException e10) {
                com.byazt.nr.m.c(e10);
            }
            if (this.uj.get(i10) != null) {
                this.uj.remove(i10);
            }
            if (this.ve.get(i10) != null) {
                this.ve.remove(i10);
            }
            this.f11808x.remove(Integer.valueOf(i10));
            com.byazt.k.c.tt(i10);
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    private boolean tt(DownloadInfo downloadInfo) {
        if (downloadInfo != null && downloadInfo.statusInPause()) {
            return downloadInfo.isPauseReserveOnWifi();
        }
        return false;
    }

    public void tt() {
        List<Integer> listC = c();
        if (listC == null) {
            return;
        }
        Iterator<Integer> it2 = listC.iterator();
        while (it2.hasNext()) {
            n(it2.next().intValue());
        }
    }

    public void tt(final int i10, final boolean z10) {
        DownloadInfo downloadInfoTt = this.sl.tt(i10);
        if (downloadInfoTt != null) {
            c(downloadInfoTt);
        }
        this.f11804c.post(new Runnable() { // from class: com.byazt.b.c.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.n.tt.c().a(i10);
            }
        });
        com.byazt.zz.ve.c(new Runnable() { // from class: com.byazt.b.c.3
            @Override // java.lang.Runnable
            public void run() {
                DownloadTask downloadTaskZ;
                if (c.this.ve(i10) == null && (downloadTaskZ = c.this.z(i10)) != null) {
                    DownloadInfo downloadInfo = downloadTaskZ.getDownloadInfo();
                    SparseArray<IDownloadListener> downloadListeners = downloadTaskZ.getDownloadListeners(com.byazt.ev.a.SUB);
                    if (downloadListeners != null) {
                        synchronized (downloadListeners) {
                            for (int i11 = 0; i11 < downloadListeners.size(); i11++) {
                                IDownloadListener iDownloadListener = downloadListeners.get(downloadListeners.keyAt(i11));
                                if (iDownloadListener != null) {
                                    iDownloadListener.onCanceled(downloadInfo);
                                }
                            }
                        }
                    }
                }
                c.this.uj(i10, z10);
            }
        }, false);
    }

    public synchronized void tt(int i10, int i11, IDownloadListener iDownloadListener, com.byazt.ev.a aVar, boolean z10) {
        c(i10, i11, iDownloadListener, aVar, z10, true);
    }

    public List<DownloadInfo> tt(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Iterator<Integer> it2 = c().iterator();
        ArrayList arrayList = new ArrayList();
        while (it2.hasNext()) {
            DownloadInfo downloadInfoUj = uj(it2.next().intValue());
            if (downloadInfoUj != null && str.equals(downloadInfoUj.getMimeType())) {
                arrayList.add(downloadInfoUj);
            }
        }
        return arrayList;
    }

    public synchronized void c(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
        if (downloadInfo == null) {
            return;
        }
        downloadInfo.setDownloadFromReserveWifi(false);
        if (downloadInfo.getEnqueueType() != EnqueueType.ENQUEUE_NONE) {
            ve(downloadTask);
        } else {
            c(downloadTask, true);
        }
    }

    public void tt(int i10, long j10) {
        DownloadInfo downloadInfoTt = this.sl.tt(i10);
        if (downloadInfoTt != null) {
            downloadInfoTt.setThrottleNetSpeed(j10);
        }
        c(i10, j10);
    }

    public synchronized List<DownloadInfo> c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        List<DownloadInfo> listC = this.sl.c(str);
        if (listC != null && !listC.isEmpty()) {
            return listC;
        }
        ArrayList arrayList = new ArrayList();
        int size = this.tt.size();
        for (int i10 = 0; i10 < size; i10++) {
            DownloadTask downloadTaskValueAt = this.tt.valueAt(i10);
            if (downloadTaskValueAt != null && downloadTaskValueAt.getDownloadInfo() != null && str.equals(downloadTaskValueAt.getDownloadInfo().getUrl())) {
                arrayList.add(downloadTaskValueAt.getDownloadInfo());
            }
        }
        return arrayList;
    }

    public synchronized boolean c(int i10, boolean z10) {
        DownloadTask downloadTaskZ = this.tt.get(i10);
        if (downloadTaskZ == null && com.byazt.w.c.c(65536)) {
            downloadTaskZ = z(i10);
        }
        if (downloadTaskZ != null) {
            if (!com.byazt.k.c.c(i10).tt("fix_on_cancel_call_twice", true)) {
                new com.byazt.zz.a(downloadTaskZ, this.f11804c).ve();
            }
            final DownloadInfo downloadInfo = downloadTaskZ.getDownloadInfo();
            final SparseArray<IDownloadListener> downloadListeners = downloadTaskZ.getDownloadListeners(com.byazt.ev.a.MAIN);
            final SparseArray<IDownloadListener> downloadListeners2 = downloadTaskZ.getDownloadListeners(com.byazt.ev.a.NOTIFICATION);
            this.f11804c.post(new Runnable() { // from class: com.byazt.b.c.1
                @Override // java.lang.Runnable
                public void run() {
                    SparseArray sparseArray;
                    SparseArray sparseArray2 = downloadListeners;
                    if (sparseArray2 != null) {
                        synchronized (sparseArray2) {
                            for (int i11 = 0; i11 < downloadListeners.size(); i11++) {
                                IDownloadListener iDownloadListener = (IDownloadListener) downloadListeners.get(downloadListeners.keyAt(i11));
                                if (iDownloadListener != null) {
                                    iDownloadListener.onCanceled(downloadInfo);
                                }
                            }
                        }
                    }
                    DownloadInfo downloadInfo2 = downloadInfo;
                    if (downloadInfo2 == null || !downloadInfo2.canShowNotification() || (sparseArray = downloadListeners2) == null) {
                        return;
                    }
                    synchronized (sparseArray) {
                        for (int i12 = 0; i12 < downloadListeners2.size(); i12++) {
                            IDownloadListener iDownloadListener2 = (IDownloadListener) downloadListeners2.get(downloadListeners2.keyAt(i12));
                            if (iDownloadListener2 != null) {
                                iDownloadListener2.onCanceled(downloadInfo);
                            }
                        }
                    }
                }
            });
        }
        DownloadInfo downloadInfoTt = this.sl.tt(i10);
        if (com.byazt.w.c.c(65536)) {
            if (downloadInfoTt != null) {
                downloadInfoTt.setStatus(-4);
            }
        } else if (downloadInfoTt != null && DownloadStatus.isDownloading(downloadInfoTt.getStatus())) {
            downloadInfoTt.setStatus(-4);
        }
        tt(i10, z10);
        return true;
    }

    private void c(DownloadInfo downloadInfo) {
        if (downloadInfo != null) {
            try {
                if (downloadInfo.getStatus() == 7 || downloadInfo.getRetryDelayStatus() != com.byazt.ev.sp.DELAY_RETRY_NONE) {
                    downloadInfo.setStatus(5);
                    downloadInfo.setRetryDelayStatus(com.byazt.ev.sp.DELAY_RETRY_NONE);
                    com.byazt.x.c.tt("AbsDownloadEngine", "cancelAlarm");
                }
            } catch (Throwable th) {
                com.byazt.nr.m.c(th);
            }
        }
    }

    public synchronized void c(int i10, yv yvVar) {
        DownloadTask downloadTask = this.tt.get(i10);
        if (downloadTask != null) {
            downloadTask.setNotificationEventListener(yvVar);
        }
    }

    public synchronized void c(List<String> list) {
        DownloadInfo downloadInfo;
        try {
            boolean zTt = com.byazt.w.c.c(1048576) ? com.byazt.w.a.tt(com.byazt.zz.ve.ic()) : true;
            for (int i10 = 0; i10 < this.uj.size(); i10++) {
                DownloadTask downloadTask = this.uj.get(this.uj.keyAt(i10));
                if (downloadTask != null && (downloadInfo = downloadTask.getDownloadInfo()) != null && downloadInfo.getMimeType() != null && list.contains(downloadInfo.getMimeType()) && (!downloadInfo.isOnlyWifi() || zTt)) {
                    downloadInfo.setAutoResumed(true);
                    downloadInfo.setShowNotificationForNetworkResumed(true);
                    c(downloadTask);
                }
            }
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    public synchronized void c(int i10, int i11, IDownloadListener iDownloadListener, com.byazt.ev.a aVar, boolean z10) {
        DownloadTask downloadTaskZ = z(i10);
        if (downloadTaskZ == null) {
            downloadTaskZ = this.f11808x.get(Integer.valueOf(i10));
        }
        if (downloadTaskZ != null) {
            downloadTaskZ.removeDownloadListener(i11, iDownloadListener, aVar, z10);
        }
    }

    public synchronized void c(int i10, int i11, final IDownloadListener iDownloadListener, com.byazt.ev.a aVar, boolean z10, boolean z11) {
        DownloadInfo downloadInfoTt;
        DownloadTask downloadTaskZ = z(i10);
        if (downloadTaskZ != null) {
            downloadTaskZ.addDownloadListener(i11, iDownloadListener, aVar, z10);
            final DownloadInfo downloadInfo = downloadTaskZ.getDownloadInfo();
            if (z11 && downloadInfo != null && !c(i10) && (aVar == com.byazt.ev.a.MAIN || aVar == com.byazt.ev.a.NOTIFICATION)) {
                if (aVar != com.byazt.ev.a.NOTIFICATION || downloadInfo.canShowNotification()) {
                    this.f11804c.post(new Runnable() { // from class: com.byazt.b.c.6
                        @Override // java.lang.Runnable
                        public void run() {
                            if (iDownloadListener != null) {
                                if (downloadInfo.getStatus() == -3) {
                                    iDownloadListener.onSuccessed(downloadInfo);
                                } else if (downloadInfo.getStatus() == -1) {
                                    iDownloadListener.onFailed(downloadInfo, new BaseException(1000, "try add listener for failed task"));
                                }
                            }
                        }
                    });
                }
            }
            return;
        }
        if (com.byazt.w.c.c(32768) && (downloadInfoTt = this.sl.tt(i10)) != null && downloadInfoTt.getStatus() != -3) {
            DownloadTask downloadTask = this.f11808x.get(Integer.valueOf(i10));
            if (downloadTask == null) {
                downloadTask = new DownloadTask(downloadInfoTt);
                this.f11808x.put(Integer.valueOf(i10), downloadTask);
            }
            downloadTask.addDownloadListener(i11, iDownloadListener, aVar, z10);
        }
    }

    private void c(int i10, BaseException baseException, DownloadTask downloadTask) {
        if (downloadTask != null) {
            DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
            SparseArray<IDownloadListener> downloadListeners = downloadTask.getDownloadListeners(com.byazt.ev.a.MAIN);
            SparseArray<IDownloadListener> downloadListeners2 = downloadTask.getDownloadListeners(com.byazt.ev.a.NOTIFICATION);
            boolean z10 = downloadTask.canShowNotification() || downloadInfo.isAutoInstallWithoutNotification();
            com.byazt.w.ve.c(i10, downloadListeners, true, downloadInfo, baseException);
            com.byazt.w.ve.c(i10, downloadListeners2, z10, downloadInfo, baseException);
        }
    }

    private void c(int i10, int i11) {
        com.byazt.x.c.tt("AbsDownloadEngine", "removeTask id: " + i10 + " listener hasCode: " + i11);
        if (i11 == 0) {
            this.tt.remove(i10);
            this.sp.remove(i10);
            return;
        }
        SparseArray<DownloadTask> sparseArray = this.sp.get(i10);
        if (sparseArray != null) {
            sparseArray.remove(i11);
            com.byazt.x.c.tt("AbsDownloadEngine", "after downloadTaskWithListenerMap removeTask taskArray.size: " + sparseArray.size());
            if (sparseArray.size() == 0) {
                this.tt.remove(i10);
                this.sp.remove(i10);
                return;
            }
            return;
        }
        this.tt.remove(i10);
    }

    public synchronized void c(int i10, int i11, int i12) {
        try {
            if (i12 != -7) {
                if (i12 != -6) {
                    if (i12 == -4) {
                        c(i10, i11);
                    } else if (i12 == -3) {
                        this.ve.put(i10, this.tt.get(i10));
                        c(i10, i11);
                    } else if (i12 != -1) {
                        if (i12 != 7) {
                            if (i12 == 8) {
                                DownloadTask downloadTask = this.tt.get(i10);
                                if (downloadTask != null && this.f11803a.get(i10) == null) {
                                    this.f11803a.put(i10, downloadTask);
                                }
                            }
                            return;
                        }
                        DownloadTask downloadTask2 = this.tt.get(i10);
                        if (downloadTask2 != null) {
                            if (this.f11807n.get(i10) == null) {
                                this.f11807n.put(i10, downloadTask2);
                            }
                            c(i10, i11);
                        }
                        m(i10);
                        return;
                    }
                    m(i10);
                    return;
                }
                this.ve.put(i10, this.tt.get(i10));
                c(i10, i11);
                return;
            }
            DownloadTask downloadTask3 = this.tt.get(i10);
            if (downloadTask3 != null) {
                if (this.uj.get(i10) == null) {
                    this.uj.put(i10, downloadTask3);
                }
                c(i10, i11);
            }
            m(i10);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.byazt.u.x.c
    public void c(Message message) {
        int i10 = message.arg1;
        int i11 = message.arg2;
        com.byazt.x.c.tt("AbsDownloadEngine", "handleMsg id: " + i10 + " listener hasCode: " + i11);
        Object obj = message.obj;
        DownloadTask downloadTask = null;
        BaseException baseException = obj instanceof Exception ? (BaseException) obj : null;
        synchronized (this) {
            try {
                if (i11 == 0) {
                    downloadTask = this.tt.get(i10);
                } else {
                    SparseArray<DownloadTask> sparseArray = this.sp.get(i10);
                    if (sparseArray != null) {
                        downloadTask = sparseArray.get(i11);
                    }
                }
                if (downloadTask == null) {
                    return;
                }
                c(message.what, baseException, downloadTask);
                c(i10, i11, message.what);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
