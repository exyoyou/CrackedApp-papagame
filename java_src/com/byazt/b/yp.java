package com.byazt.b;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.SparseArray;
import com.byazt.t.DownloadTask;
import com.byazt.zz.CSJIndependentProcessDownloadService;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 223, 215})
public class yp extends com.byazt.zz.c implements ServiceConnection {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f11848n = "yp";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.zz.i f11849a;
    public com.byazt.zz.yp sp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f11850x = -1;

    private void sp() {
        SparseArray<List<DownloadTask>> sparseArrayClone;
        try {
            synchronized (this.f23097c) {
                sparseArrayClone = this.f23097c.clone();
                this.f23097c.clear();
            }
            if (sparseArrayClone == null || sparseArrayClone.size() <= 0 || com.byazt.zz.ve.d() == null) {
                return;
            }
            for (int i10 = 0; i10 < sparseArrayClone.size(); i10++) {
                List<DownloadTask> list = sparseArrayClone.get(sparseArrayClone.keyAt(i10));
                if (list != null) {
                    Iterator<DownloadTask> it2 = list.iterator();
                    while (it2.hasNext()) {
                        try {
                            this.f11849a.c(com.byazt.w.sp.c(it2.next()));
                        } catch (RemoteException e10) {
                            com.byazt.nr.m.c(e10);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            com.byazt.x.c.tt(f11848n, "resumePendingTaskForIndependent failed", th);
        }
    }

    @Override // com.byazt.zz.c, com.byazt.zz.z
    public IBinder c(Intent intent) {
        if (intent != null && intent.getBooleanExtra("fix_downloader_db_sigbus", false)) {
            com.byazt.nr.m.tt(f11848n, "downloader process sync database on main process!");
            com.byazt.k.c.c("fix_sigbus_downloader_db", true);
        }
        com.byazt.x.c.tt(f11848n, "onBind IndependentDownloadBinder");
        return new u();
    }

    @Override // android.content.ServiceConnection
    public void onBindingDied(ComponentName componentName) {
        this.f11849a = null;
        com.byazt.zz.yp ypVar = this.sp;
        if (ypVar != null) {
            ypVar.x();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        String str = f11848n;
        com.byazt.x.c.tt(str, "onServiceConnected ");
        this.f11849a = com.byazt.zz.i.c.c(iBinder);
        com.byazt.zz.yp ypVar = this.sp;
        if (ypVar != null) {
            ypVar.c(iBinder);
        }
        StringBuilder sb2 = new StringBuilder("onServiceConnected aidlService!=null");
        sb2.append(this.f11849a != null);
        sb2.append(" pendingTasks.size:");
        sb2.append(this.f23097c.size());
        com.byazt.x.c.tt(str, sb2.toString());
        if (this.f11849a != null) {
            com.byazt.zz.uj.c().tt();
            this.tt = true;
            this.uj = false;
            int i10 = this.f11850x;
            if (i10 != -1) {
                try {
                    this.f11849a.t(i10);
                } catch (RemoteException e10) {
                    com.byazt.nr.m.c(e10);
                }
            }
            if (this.f11849a != null) {
                sp();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        com.byazt.x.c.tt(f11848n, "onServiceDisconnected ");
        this.f11849a = null;
        this.tt = false;
        com.byazt.zz.yp ypVar = this.sp;
        if (ypVar != null) {
            ypVar.x();
        }
    }

    @Override // com.byazt.zz.c
    public void startService(Context context, ServiceConnection serviceConnection) {
        try {
            com.byazt.x.c.tt(f11848n, "bindService");
            Intent intent = new Intent(context, (Class<?>) CSJIndependentProcessDownloadService.class);
            if (com.byazt.w.a.c()) {
                intent.putExtra("fix_downloader_db_sigbus", com.byazt.k.c.ve().c("fix_sigbus_downloader_db"));
            }
            if (serviceConnection != null) {
                context.bindService(intent, serviceConnection, 1);
            }
            context.startService(intent);
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    @Override // com.byazt.zz.c
    public void stopService(Context context, ServiceConnection serviceConnection) {
        com.byazt.x.c.tt(f11848n, "stopService");
        this.tt = false;
        Intent intent = new Intent(context, (Class<?>) CSJIndependentProcessDownloadService.class);
        if (serviceConnection != null) {
            context.unbindService(serviceConnection);
        }
        context.stopService(intent);
    }

    @Override // com.byazt.zz.c, com.byazt.zz.z
    public void tt(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        String str = f11848n;
        StringBuilder sb2 = new StringBuilder("tryDownload aidlService == null:");
        sb2.append(this.f11849a == null);
        com.byazt.x.c.tt(str, sb2.toString());
        if (this.f11849a == null) {
            c(downloadTask);
            startService(com.byazt.zz.ve.ic(), this);
            return;
        }
        sp();
        try {
            this.f11849a.c(com.byazt.w.sp.c(downloadTask));
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.c, com.byazt.zz.z
    public void ve(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        com.byazt.zz.uj.c().c(downloadTask.getDownloadId(), true);
        c cVarD = com.byazt.zz.ve.d();
        if (cVarD != null) {
            cVarD.c(downloadTask);
        }
    }

    @Override // com.byazt.zz.c, com.byazt.zz.z
    public void c(com.byazt.zz.yp ypVar) {
        this.sp = ypVar;
    }

    @Override // com.byazt.zz.c, com.byazt.zz.z
    public void c(int i10) {
        com.byazt.zz.i iVar = this.f11849a;
        if (iVar == null) {
            this.f11850x = i10;
            return;
        }
        try {
            iVar.t(i10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.c, com.byazt.zz.z
    public void startService() {
        if (this.f11849a == null) {
            startService(com.byazt.zz.ve.ic(), this);
        }
    }
}
