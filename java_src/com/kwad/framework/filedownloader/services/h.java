package com.kwad.framework.filedownloader.services;

import android.util.SparseArray;
import com.kwad.framework.filedownloader.download.DownloadLaunchRunnable;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes2.dex */
final class h {
    private ThreadPoolExecutor aDi;
    private int aDk;
    private SparseArray<DownloadLaunchRunnable> aDh = new SparseArray<>();
    private final String aDj = "Network";
    private int aDl = 0;

    h(int i10) {
        this.aDi = com.kwad.framework.filedownloader.f.b.w(i10, "Network");
        this.aDk = i10;
    }

    private synchronized void Dr() {
        SparseArray<DownloadLaunchRunnable> sparseArray = new SparseArray<>();
        int size = this.aDh.size();
        for (int i10 = 0; i10 < size; i10++) {
            int iKeyAt = this.aDh.keyAt(i10);
            DownloadLaunchRunnable downloadLaunchRunnable = this.aDh.get(iKeyAt);
            if (downloadLaunchRunnable.isAlive()) {
                sparseArray.put(iKeyAt, downloadLaunchRunnable);
            }
        }
        this.aDh = sparseArray;
    }

    public final synchronized int Ds() {
        Dr();
        return this.aDh.size();
    }

    public final synchronized List<Integer> Dt() {
        ArrayList arrayList;
        Dr();
        arrayList = new ArrayList();
        for (int i10 = 0; i10 < this.aDh.size(); i10++) {
            SparseArray<DownloadLaunchRunnable> sparseArray = this.aDh;
            arrayList.add(Integer.valueOf(sparseArray.get(sparseArray.keyAt(i10)).getId()));
        }
        return arrayList;
    }

    public final void a(DownloadLaunchRunnable downloadLaunchRunnable) {
        downloadLaunchRunnable.Ck();
        synchronized (this) {
            this.aDh.put(downloadLaunchRunnable.getId(), downloadLaunchRunnable);
        }
        this.aDi.execute(downloadLaunchRunnable);
        int i10 = this.aDl;
        if (i10 < 600) {
            this.aDl = i10 + 1;
        } else {
            Dr();
            this.aDl = 0;
        }
    }

    public final synchronized boolean cP(int i10) {
        if (Ds() > 0) {
            com.kwad.framework.filedownloader.f.d.d(this, "Can't change the max network thread count, because the  network thread pool isn't in IDLE, please try again after all running tasks are completed or invoking FileDownloader#pauseAll directly.", new Object[0]);
            return false;
        }
        int iDd = com.kwad.framework.filedownloader.f.e.dd(i10);
        if (com.kwad.framework.filedownloader.f.d.aDr) {
            com.kwad.framework.filedownloader.f.d.c(this, "change the max network thread count, from %d to %d", Integer.valueOf(this.aDk), Integer.valueOf(iDd));
        }
        List<Runnable> listShutdownNow = this.aDi.shutdownNow();
        this.aDi = com.kwad.framework.filedownloader.f.b.w(iDd, "Network");
        if (listShutdownNow.size() > 0) {
            com.kwad.framework.filedownloader.f.d.d(this, "recreate the network thread pool and discard %d tasks", Integer.valueOf(listShutdownNow.size()));
        }
        this.aDk = iDd;
        return true;
    }

    public final void cancel(int i10) {
        Dr();
        synchronized (this) {
            DownloadLaunchRunnable downloadLaunchRunnable = this.aDh.get(i10);
            if (downloadLaunchRunnable != null) {
                downloadLaunchRunnable.pause();
                boolean zRemove = this.aDi.remove(downloadLaunchRunnable);
                if (com.kwad.framework.filedownloader.f.d.aDr) {
                    com.kwad.framework.filedownloader.f.d.c(this, "successful cancel %d %B", Integer.valueOf(i10), Boolean.valueOf(zRemove));
                }
            }
            this.aDh.remove(i10);
        }
    }

    public final boolean dc(int i10) {
        DownloadLaunchRunnable downloadLaunchRunnable = this.aDh.get(i10);
        return downloadLaunchRunnable != null && downloadLaunchRunnable.isAlive();
    }

    public final int p(String str, int i10) {
        if (str == null) {
            return 0;
        }
        int size = this.aDh.size();
        for (int i11 = 0; i11 < size; i11++) {
            DownloadLaunchRunnable downloadLaunchRunnableValueAt = this.aDh.valueAt(i11);
            if (downloadLaunchRunnableValueAt != null && downloadLaunchRunnableValueAt.isAlive() && downloadLaunchRunnableValueAt.getId() != i10 && str.equals(downloadLaunchRunnableValueAt.Cp())) {
                return downloadLaunchRunnableValueAt.getId();
            }
        }
        return 0;
    }
}
