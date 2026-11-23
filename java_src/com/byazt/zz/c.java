package com.byazt.zz;

import android.app.Notification;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.SparseArray;
import com.byazt.t.DownloadTask;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 189, 20})
public abstract class c implements z {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f23095n = "c";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WeakReference<Service> f23096a;
    public volatile boolean ve;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SparseArray<List<DownloadTask>> f23097c = new SparseArray<>();
    public volatile boolean tt = false;
    public volatile boolean uj = false;
    public Handler sp = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f23098x = new Runnable() { // from class: com.byazt.zz.c.1
        @Override // java.lang.Runnable
        public void run() {
            if (com.byazt.x.c.c()) {
                com.byazt.x.c.tt(c.f23095n, "tryDownload: 2 try");
            }
            if (c.this.tt) {
                return;
            }
            if (com.byazt.x.c.c()) {
                com.byazt.x.c.tt(c.f23095n, "tryDownload: 2 error");
            }
            c.this.startService(ve.ic(), null);
        }
    };

    @Override // com.byazt.zz.z
    public void c(Intent intent, int i10, int i11) {
    }

    public void n() {
        SparseArray<List<DownloadTask>> sparseArrayClone;
        synchronized (this.f23097c) {
            com.byazt.x.c.tt(f23095n, "resumePendingTask pendingTasks.size:" + this.f23097c.size());
            sparseArrayClone = this.f23097c.clone();
            this.f23097c.clear();
        }
        com.byazt.b.c cVarD = ve.d();
        if (cVarD != null) {
            for (int i10 = 0; i10 < sparseArrayClone.size(); i10++) {
                List<DownloadTask> list = sparseArrayClone.get(sparseArrayClone.keyAt(i10));
                if (list != null) {
                    for (DownloadTask downloadTask : list) {
                        com.byazt.x.c.tt(f23095n, "resumePendingTask key:" + downloadTask.getDownloadId());
                        cVarD.c(downloadTask);
                    }
                }
            }
        }
    }

    public void startService(Context context, ServiceConnection serviceConnection) {
    }

    public void stopService(Context context, ServiceConnection serviceConnection) {
    }

    @Override // com.byazt.zz.z
    public boolean tt() {
        com.byazt.x.c.ve(f23095n, "isServiceForeground = " + this.ve);
        return this.ve;
    }

    @Override // com.byazt.zz.z
    public void uj() {
        this.tt = false;
    }

    @Override // com.byazt.zz.z
    public void ve() {
    }

    @Override // com.byazt.zz.z
    public void c(yp ypVar) {
    }

    @Override // com.byazt.zz.z
    public void startService() {
        if (this.tt) {
            return;
        }
        if (com.byazt.x.c.c()) {
            com.byazt.x.c.tt(f23095n, "startService");
        }
        startService(ve.ic(), null);
    }

    @Override // com.byazt.zz.z
    public void ve(DownloadTask downloadTask) {
    }

    @Override // com.byazt.zz.z
    public void c(WeakReference weakReference) {
        this.f23096a = weakReference;
    }

    @Override // com.byazt.zz.z
    public void tt(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        if (!this.tt) {
            if (com.byazt.x.c.c()) {
                com.byazt.x.c.tt(f23095n, "tryDownload but service is not alive");
            }
            if (com.byazt.w.c.c(262144)) {
                c(downloadTask);
                if (!this.uj) {
                    if (com.byazt.x.c.c()) {
                        com.byazt.x.c.tt(f23095n, "tryDownload: 1");
                    }
                    startService(ve.ic(), null);
                    this.uj = true;
                    return;
                }
                this.sp.removeCallbacks(this.f23098x);
                this.sp.postDelayed(this.f23098x, 10L);
                return;
            }
            c(downloadTask);
            startService(ve.ic(), null);
            return;
        }
        String str = f23095n;
        com.byazt.x.c.tt(str, "tryDownload when isServiceAlive");
        n();
        com.byazt.b.c cVarD = ve.d();
        if (cVarD != null) {
            com.byazt.x.c.tt(str, "tryDownload current task: " + downloadTask.getDownloadId());
            cVarD.c(downloadTask);
        }
    }

    @Override // com.byazt.zz.z
    public boolean c() {
        return this.tt;
    }

    @Override // com.byazt.zz.z
    public IBinder c(Intent intent) {
        com.byazt.x.c.tt(f23095n, "onBind Abs");
        return new Binder();
    }

    @Override // com.byazt.zz.z
    public void c(int i10, Notification notification) {
        WeakReference<Service> weakReference = this.f23096a;
        if (weakReference != null && weakReference.get() != null) {
            com.byazt.x.c.ve(f23095n, "startForeground  id = " + i10 + ", service = " + this.f23096a.get() + ",  isServiceAlive = " + this.tt);
            try {
                this.f23096a.get().startForeground(i10, notification);
                this.ve = true;
                return;
            } catch (Exception e10) {
                com.byazt.nr.m.c(e10);
                return;
            }
        }
        com.byazt.x.c.uj(f23095n, "startForeground: downloadService is null, do nothing!");
    }

    @Override // com.byazt.zz.z
    public void c(boolean z10) {
        WeakReference<Service> weakReference = this.f23096a;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        com.byazt.x.c.ve(f23095n, "stopForeground  service = " + this.f23096a.get() + ",  isServiceAlive = " + this.tt);
        try {
            this.ve = false;
            this.f23096a.get().stopForeground(z10);
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    public void c(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        int downloadId = downloadTask.getDownloadId();
        synchronized (this.f23097c) {
            String str = f23095n;
            com.byazt.x.c.tt(str, "pendDownloadTask pendingTasks.size:" + this.f23097c.size() + " downloadId:" + downloadId);
            List<DownloadTask> arrayList = this.f23097c.get(downloadId);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.f23097c.put(downloadId, arrayList);
            }
            com.byazt.x.c.tt(str, "before pendDownloadTask taskArray.size:" + arrayList.size());
            arrayList.add(downloadTask);
            com.byazt.x.c.tt(str, "after pendDownloadTask pendingTasks.size:" + this.f23097c.size());
        }
    }

    @Override // com.byazt.zz.z
    public void c(int i10) {
        com.byazt.x.c.c(i10);
    }
}
