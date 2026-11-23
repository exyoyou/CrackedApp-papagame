package com.byazt.b;

import android.app.Notification;
import android.os.IBinder;
import android.os.RemoteException;
import com.byazt.c.IDownloadFileUriProvider;
import com.byazt.c.IDownloadListener;
import com.byazt.c.eo;
import com.byazt.c.nb;
import com.byazt.c.yv;
import com.byazt.t.DownloadInfo;
import com.byazt.t.DownloadTask;
import com.byazt.zz.CSJIndependentProcessDownloadService;
import com.byazt.zz.Downloader;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 223, 133})
public class z implements com.byazt.zz.u, com.byazt.zz.yp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f11851c = "z";
    public volatile com.byazt.zz.i tt;
    public com.byazt.zz.u uj = new m();
    public com.byazt.zz.z<CSJIndependentProcessDownloadService> ve;

    public z() {
        com.byazt.zz.z<CSJIndependentProcessDownloadService> zVarP = com.byazt.zz.ve.p();
        this.ve = zVarP;
        zVarP.c(this);
    }

    @Override // com.byazt.zz.u
    public int a(int i10) {
        if (this.tt == null) {
            return 0;
        }
        try {
            return this.tt.a(i10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return 0;
        }
    }

    @Override // com.byazt.zz.u
    public void c(int i10) {
        if (this.tt == null) {
            return;
        }
        try {
            this.tt.c(i10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public void da(int i10) {
        if (this.tt == null) {
            this.uj.da(i10);
            return;
        }
        try {
            this.tt.da(i10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public List<com.byazt.t.tt> i(int i10) {
        if (this.tt == null) {
            return this.uj.i(i10);
        }
        try {
            return this.tt.i(i10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.u
    public boolean m(int i10) {
        if (this.tt == null) {
            return this.uj.m(i10);
        }
        try {
            return this.tt.m(i10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return false;
        }
    }

    @Override // com.byazt.zz.u
    public IDownloadFileUriProvider my(int i10) {
        if (this.tt == null) {
            return null;
        }
        try {
            return com.byazt.w.sp.c(this.tt.my(i10));
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.u
    public long n(int i10) {
        if (this.tt == null) {
            return 0L;
        }
        try {
            return this.tt.n(i10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return 0L;
        }
    }

    @Override // com.byazt.zz.u
    public yv nu(int i10) {
        if (this.tt == null) {
            return null;
        }
        try {
            return com.byazt.w.sp.c(this.tt.nu(i10));
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.u
    public eo rh(int i10) {
        if (this.tt == null) {
            return null;
        }
        try {
            return com.byazt.w.sp.c(this.tt.rh(i10));
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.u
    public void sl(int i10) {
        com.byazt.zz.z<CSJIndependentProcessDownloadService> zVar = this.ve;
        if (zVar != null) {
            zVar.c(i10);
        }
    }

    @Override // com.byazt.zz.u
    public boolean sp(int i10) {
        if (this.tt == null) {
            return false;
        }
        try {
            return this.tt.sp(i10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return false;
        }
    }

    @Override // com.byazt.zz.u
    public void startService() {
        com.byazt.zz.z<CSJIndependentProcessDownloadService> zVar = this.ve;
        if (zVar != null) {
            zVar.startService();
        }
    }

    @Override // com.byazt.zz.u
    public boolean t(int i10) {
        if (this.tt == null) {
            return false;
        }
        try {
            return this.tt.sl(i10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return false;
        }
    }

    @Override // com.byazt.zz.u
    public void tt(DownloadInfo downloadInfo) {
    }

    @Override // com.byazt.zz.u
    public int u(int i10) {
        if (this.tt == null) {
            return com.byazt.zz.uj.c().tt(i10);
        }
        try {
            return this.tt.u(i10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return -1;
        }
    }

    @Override // com.byazt.zz.u
    public void uj(int i10) {
        if (this.tt == null) {
            return;
        }
        try {
            this.tt.uj(i10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public void ve(int i10) {
        if (this.tt == null) {
            return;
        }
        try {
            this.tt.ve(i10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public DownloadInfo x(int i10) {
        if (this.tt == null) {
            return this.uj.x(i10);
        }
        try {
            return this.tt.x(i10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.u
    public boolean yp(int i10) {
        if (this.tt == null) {
            return this.uj.yp(i10);
        }
        try {
            return this.tt.yp(i10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return false;
        }
    }

    @Override // com.byazt.zz.u
    public void z(int i10) {
        if (this.tt == null) {
            this.uj.z(i10);
            return;
        }
        try {
            this.tt.z(i10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public boolean tt(int i10) {
        if (this.tt == null) {
            return false;
        }
        try {
            return this.tt.tt(i10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return false;
        }
    }

    @Override // com.byazt.zz.u
    public void a() {
        if (this.tt == null) {
            this.uj.a();
            return;
        }
        try {
            this.tt.n();
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public void c(int i10, boolean z10) {
        if (this.tt == null) {
            return;
        }
        try {
            this.tt.c(i10, z10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public List<DownloadInfo> n(String str) {
        if (this.tt == null) {
            return null;
        }
        try {
            return this.tt.uj(str);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.u
    public boolean sp() {
        return this.tt != null;
    }

    @Override // com.byazt.zz.u
    public List<DownloadInfo> uj() {
        if (this.tt == null) {
            return this.uj.uj();
        }
        try {
            return this.tt.tt();
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.u
    public List<DownloadInfo> ve(String str) {
        if (this.tt == null) {
            return this.uj.ve(str);
        }
        try {
            return this.tt.ve(str);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.u
    public DownloadInfo tt(String str, String str2) {
        return x(c(str, str2));
    }

    @Override // com.byazt.zz.yp
    public void x() {
        this.tt = null;
    }

    @Override // com.byazt.zz.u
    public void c() {
        if (this.tt == null) {
            return;
        }
        try {
            this.tt.c();
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public boolean n() {
        if (this.tt == null) {
            return this.uj.n();
        }
        try {
            return this.tt.uj();
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return false;
        }
    }

    @Override // com.byazt.zz.u
    public List<DownloadInfo> tt(String str) {
        if (this.tt == null) {
            return this.uj.tt(str);
        }
        try {
            return this.tt.tt(str);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.u
    public List<DownloadInfo> uj(String str) {
        if (this.tt == null) {
            return this.uj.uj(str);
        }
        try {
            return this.tt.n(str);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.u
    public boolean ve() {
        return com.byazt.zz.ve.hd();
    }

    @Override // com.byazt.zz.u
    public void ve(int i10, boolean z10) {
        if (this.tt == null) {
            return;
        }
        try {
            this.tt.uj(i10, z10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public List<DownloadInfo> c(String str) {
        if (this.tt == null) {
            return this.uj.c(str);
        }
        try {
            return this.tt.c(str);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return null;
        }
    }

    @Override // com.byazt.zz.u
    public void tt(List<String> list) {
        if (this.tt == null) {
            this.uj.tt(list);
            return;
        }
        try {
            this.tt.tt(list);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public boolean ve(DownloadInfo downloadInfo) {
        if (this.tt == null) {
            return this.uj.ve(downloadInfo);
        }
        try {
            return this.tt.tt(downloadInfo);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return false;
        }
    }

    @Override // com.byazt.zz.u
    public int c(String str, String str2) {
        return com.byazt.zz.ve.c(str, str2);
    }

    @Override // com.byazt.zz.u
    public void c(List<String> list) {
        if (this.tt == null) {
            this.uj.c(list);
            return;
        }
        try {
            this.tt.c(list);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public void tt(int i10, boolean z10) {
        if (this.tt == null) {
            this.uj.tt(i10, z10);
            return;
        }
        try {
            this.tt.tt(i10, z10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public void c(int i10, int i11, IDownloadListener iDownloadListener, com.byazt.ev.a aVar, boolean z10) {
        if (this.tt == null) {
            return;
        }
        try {
            this.tt.tt(i10, i11, com.byazt.w.sp.c(iDownloadListener, aVar != com.byazt.ev.a.SUB), aVar.ordinal(), z10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public void tt(int i10, int i11, IDownloadListener iDownloadListener, com.byazt.ev.a aVar, boolean z10) {
        if (this.tt == null) {
            return;
        }
        try {
            this.tt.c(i10, i11, com.byazt.w.sp.c(iDownloadListener, aVar != com.byazt.ev.a.SUB), aVar.ordinal(), z10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public void c(int i10, int i11, IDownloadListener iDownloadListener, com.byazt.ev.a aVar, boolean z10, boolean z11) {
        if (this.tt == null) {
            return;
        }
        try {
            this.tt.c(i10, i11, com.byazt.w.sp.c(iDownloadListener, aVar != com.byazt.ev.a.SUB), aVar.ordinal(), z10, z11);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public boolean tt() {
        if (this.tt == null) {
            com.byazt.x.c.uj(f11851c, "isServiceForeground, aidlService is null");
            return false;
        }
        com.byazt.x.c.ve(f11851c, "aidlService.isServiceForeground");
        try {
            return this.tt.a();
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return false;
        }
    }

    @Override // com.byazt.zz.u
    public boolean c(DownloadInfo downloadInfo) {
        if (this.tt == null) {
            return this.uj.c(downloadInfo);
        }
        try {
            this.tt.c(downloadInfo);
            return false;
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
            return false;
        }
    }

    @Override // com.byazt.zz.u
    public void tt(DownloadTask downloadTask) {
        com.byazt.zz.z<CSJIndependentProcessDownloadService> zVar;
        if (downloadTask == null || (zVar = this.ve) == null) {
            return;
        }
        zVar.ve(downloadTask);
    }

    @Override // com.byazt.zz.u
    public void c(int i10, Notification notification) {
        if (this.tt == null) {
            com.byazt.x.c.uj(f11851c, "startForeground, aidlService is null");
            return;
        }
        com.byazt.x.c.ve(f11851c, "aidlService.startForeground, id = ".concat(String.valueOf(i10)));
        try {
            this.tt.c(i10, notification);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public void tt(int i10, List<com.byazt.t.tt> list) {
        if (this.tt == null) {
            this.uj.tt(i10, list);
            return;
        }
        try {
            this.tt.c(i10, list);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public void c(boolean z10, boolean z11) {
        if (this.tt == null) {
            com.byazt.x.c.uj(f11851c, "stopForeground, aidlService is null");
            return;
        }
        com.byazt.x.c.ve(f11851c, "aidlService.stopForeground");
        try {
            this.tt.c(z11);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public void c(DownloadTask downloadTask) {
        com.byazt.zz.z<CSJIndependentProcessDownloadService> zVar;
        if (downloadTask == null || (zVar = this.ve) == null) {
            return;
        }
        zVar.tt(downloadTask);
    }

    @Override // com.byazt.zz.u
    public void c(int i10, List<com.byazt.t.tt> list) {
        if (this.tt == null) {
            return;
        }
        try {
            this.tt.tt(i10, list);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public void c(com.byazt.t.tt ttVar) {
        if (this.tt == null) {
            this.uj.c(ttVar);
            return;
        }
        try {
            this.tt.c(ttVar);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public void c(int i10, int i11, long j10) {
        if (this.tt == null) {
            this.uj.c(i10, i11, j10);
            return;
        }
        try {
            this.tt.c(i10, i11, j10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public void c(int i10, int i11, int i12, long j10) {
        if (this.tt == null) {
            this.uj.c(i10, i11, i12, j10);
            return;
        }
        try {
            this.tt.c(i10, i11, i12, j10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public void c(int i10, int i11, int i12, int i13) {
        if (this.tt == null) {
            this.uj.c(i10, i11, i12, i13);
            return;
        }
        try {
            this.tt.c(i10, i11, i12, i13);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.u
    public void c(nb nbVar) {
        if (this.tt != null) {
            try {
                this.tt.c(com.byazt.w.sp.c(nbVar));
            } catch (RemoteException e10) {
                com.byazt.nr.m.c(e10);
            }
        }
    }

    @Override // com.byazt.zz.u
    public void c(int i10, int i11) {
        if (this.tt != null) {
            try {
                this.tt.c(i10, i11);
            } catch (RemoteException e10) {
                com.byazt.nr.m.c(e10);
            }
        }
    }

    @Override // com.byazt.zz.u
    public void c(int i10, yv yvVar) {
        if (this.tt != null) {
            try {
                this.tt.c(i10, com.byazt.w.sp.c(yvVar));
            } catch (RemoteException e10) {
                com.byazt.nr.m.c(e10);
            }
        }
    }

    @Override // com.byazt.zz.yp
    public void c(IBinder iBinder) {
        this.tt = com.byazt.zz.i.c.c(iBinder);
        if (com.byazt.w.a.c()) {
            c(new nb() { // from class: com.byazt.b.z.1
                @Override // com.byazt.c.nb
                public void c(int i10, int i11) {
                    if (i11 != 1) {
                        if (i11 == 2) {
                            Downloader.getInstance(com.byazt.zz.ve.ic()).cancel(i10);
                        }
                    } else {
                        Downloader.getInstance(com.byazt.zz.ve.ic()).pause(i10);
                        List<com.byazt.t.tt> listI = t.c(false).i(i10);
                        if (listI != null) {
                            t.c(true).c(i10, com.byazt.w.a.c(listI));
                        }
                    }
                }
            });
        }
    }

    @Override // com.byazt.zz.u
    public void c(int i10, long j10) {
        if (this.tt == null) {
            return;
        }
        try {
            this.tt.c(i10, j10);
        } catch (RemoteException e10) {
            com.byazt.nr.m.c(e10);
        }
    }
}
