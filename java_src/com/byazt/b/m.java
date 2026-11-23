package com.byazt.b;

import android.app.Notification;
import com.byazt.c.IDownloadFileUriProvider;
import com.byazt.c.IDownloadListener;
import com.byazt.c.eo;
import com.byazt.c.nb;
import com.byazt.c.yv;
import com.byazt.m.BaseException;
import com.byazt.t.DownloadInfo;
import com.byazt.t.DownloadTask;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 223, 130})
public class m implements com.byazt.zz.u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f11815c;
    public final com.byazt.zz.da tt;
    public final boolean uj;
    public final com.byazt.zz.z ve;

    public m() {
        this(false);
    }

    @Override // com.byazt.zz.u
    public int a(int i10) {
        DownloadInfo downloadInfoUj;
        c cVar = this.f11815c;
        if (cVar == null || (downloadInfoUj = cVar.uj(i10)) == null) {
            return 0;
        }
        return downloadInfoUj.getStatus();
    }

    @Override // com.byazt.zz.u
    public void c(int i10) {
        c cVar = this.f11815c;
        if (cVar != null) {
            cVar.n(i10);
        }
    }

    @Override // com.byazt.zz.u
    public void da(int i10) {
        c cVar = this.f11815c;
        if (cVar != null) {
            cVar.u(i10);
        }
    }

    @Override // com.byazt.zz.u
    public List<com.byazt.t.tt> i(int i10) {
        return this.tt.ve(i10);
    }

    @Override // com.byazt.zz.u
    public boolean m(int i10) {
        return this.tt.a(i10);
    }

    @Override // com.byazt.zz.u
    public IDownloadFileUriProvider my(int i10) {
        c cVar = this.f11815c;
        if (cVar != null) {
            return cVar.da(i10);
        }
        return null;
    }

    @Override // com.byazt.zz.u
    public long n(int i10) {
        DownloadInfo downloadInfoTt;
        com.byazt.zz.da daVar = this.tt;
        if (daVar == null || (downloadInfoTt = daVar.tt(i10)) == null) {
            return 0L;
        }
        int chunkCount = downloadInfoTt.getChunkCount();
        if (chunkCount <= 1) {
            return downloadInfoTt.getCurBytes();
        }
        List<com.byazt.t.tt> listVe = this.tt.ve(i10);
        if (listVe == null || listVe.size() != chunkCount) {
            return 0L;
        }
        return com.byazt.w.a.tt(listVe);
    }

    @Override // com.byazt.zz.u
    public yv nu(int i10) {
        c cVar = this.f11815c;
        if (cVar != null) {
            return cVar.i(i10);
        }
        return null;
    }

    @Override // com.byazt.zz.u
    public eo rh(int i10) {
        c cVar = this.f11815c;
        eo eoVarX = cVar != null ? cVar.x(i10) : null;
        return eoVarX == null ? com.byazt.zz.ve.pf() : eoVarX;
    }

    @Override // com.byazt.zz.u
    public void sl(int i10) {
        com.byazt.x.c.c(i10);
    }

    @Override // com.byazt.zz.u
    public boolean sp(int i10) {
        c cVar = this.f11815c;
        if (cVar != null) {
            return cVar.c(i10);
        }
        return false;
    }

    @Override // com.byazt.zz.u
    public void startService() {
    }

    @Override // com.byazt.zz.u
    public boolean t(int i10) {
        c cVar = this.f11815c;
        if (cVar != null) {
            return cVar.sl(i10);
        }
        return false;
    }

    @Override // com.byazt.zz.u
    public boolean tt(int i10) {
        c cVar = this.f11815c;
        if (cVar != null) {
            return cVar.yp(i10);
        }
        return false;
    }

    @Override // com.byazt.zz.u
    public int u(int i10) {
        return com.byazt.zz.uj.c().c(i10);
    }

    @Override // com.byazt.zz.u
    public void uj(int i10) {
        c cVar = this.f11815c;
        if (cVar != null) {
            cVar.sp(i10);
        }
    }

    @Override // com.byazt.zz.u
    public void ve(int i10) {
        c cVar = this.f11815c;
        if (cVar != null) {
            cVar.a(i10);
        }
    }

    @Override // com.byazt.zz.u
    public DownloadInfo x(int i10) {
        c cVar = this.f11815c;
        if (cVar != null) {
            return cVar.uj(i10);
        }
        return null;
    }

    @Override // com.byazt.zz.u
    public boolean yp(int i10) {
        return this.tt.n(i10);
    }

    @Override // com.byazt.zz.u
    public void z(int i10) {
        this.tt.uj(i10);
    }

    public m(boolean z10) {
        this.f11815c = com.byazt.zz.ve.d();
        this.tt = com.byazt.zz.ve.zm();
        if (z10) {
            this.ve = com.byazt.zz.ve.p();
        } else {
            this.ve = com.byazt.zz.ve.yv();
        }
        this.uj = com.byazt.k.c.ve().tt("service_alive", false);
    }

    @Override // com.byazt.zz.u
    public void c(int i10, boolean z10) {
        c cVar = this.f11815c;
        if (cVar != null) {
            cVar.c(i10, z10);
        }
    }

    @Override // com.byazt.zz.u
    public boolean sp() {
        com.byazt.zz.z zVar;
        return this.uj && (zVar = this.ve) != null && zVar.c();
    }

    @Override // com.byazt.zz.u
    public List<DownloadInfo> tt(String str) {
        com.byazt.zz.da daVar = this.tt;
        if (daVar != null) {
            return daVar.tt(str);
        }
        return null;
    }

    @Override // com.byazt.zz.u
    public List<DownloadInfo> uj() {
        com.byazt.zz.da daVar = this.tt;
        if (daVar != null) {
            return daVar.tt();
        }
        return null;
    }

    @Override // com.byazt.zz.u
    public List<DownloadInfo> ve(String str) {
        com.byazt.zz.da daVar = this.tt;
        if (daVar != null) {
            return daVar.ve(str);
        }
        return null;
    }

    @Override // com.byazt.zz.u
    public void a() {
        this.tt.ve();
    }

    @Override // com.byazt.zz.u
    public void c() {
        c cVar = this.f11815c;
        if (cVar != null) {
            cVar.tt();
        }
    }

    @Override // com.byazt.zz.u
    public void tt(List<String> list) {
        c cVar = this.f11815c;
        if (cVar != null) {
            cVar.tt(list);
        }
    }

    public void uj(int i10, boolean z10) {
        c cVar = this.f11815c;
        if (cVar != null) {
            cVar.ve(i10, z10);
        }
    }

    @Override // com.byazt.zz.u
    public boolean ve() {
        return com.byazt.zz.ve.hd();
    }

    @Override // com.byazt.zz.u
    public void ve(int i10, boolean z10) {
        com.byazt.zz.uj.c().c(i10, z10);
    }

    @Override // com.byazt.zz.u
    public void c(List<String> list) {
        c cVar = this.f11815c;
        if (cVar != null) {
            cVar.c(list);
        }
    }

    @Override // com.byazt.zz.u
    public DownloadInfo tt(String str, String str2) {
        return x(com.byazt.zz.ve.c(str, str2));
    }

    @Override // com.byazt.zz.u
    public List<DownloadInfo> uj(String str) {
        com.byazt.zz.da daVar = this.tt;
        if (daVar != null) {
            return daVar.uj(str);
        }
        return null;
    }

    @Override // com.byazt.zz.u
    public boolean ve(DownloadInfo downloadInfo) {
        return this.tt.c(downloadInfo);
    }

    @Override // com.byazt.zz.u
    public List<DownloadInfo> n(String str) {
        c cVar = this.f11815c;
        if (cVar != null) {
            return cVar.tt(str);
        }
        return null;
    }

    @Override // com.byazt.zz.u
    public List<DownloadInfo> c(String str) {
        c cVar = this.f11815c;
        if (cVar != null) {
            return cVar.c(str);
        }
        return null;
    }

    @Override // com.byazt.zz.u
    public void tt(int i10, boolean z10) {
        c cVar = this.f11815c;
        if (cVar != null) {
            cVar.tt(i10, z10);
        }
    }

    @Override // com.byazt.zz.u
    public boolean n() {
        return this.tt.uj();
    }

    @Override // com.byazt.zz.u
    public int c(String str, String str2) {
        return com.byazt.zz.ve.c(str, str2);
    }

    @Override // com.byazt.zz.u
    public void tt(int i10, int i11, IDownloadListener iDownloadListener, com.byazt.ev.a aVar, boolean z10) {
        c cVar = this.f11815c;
        if (cVar != null) {
            cVar.c(i10, i11, iDownloadListener, aVar, z10);
        }
    }

    @Override // com.byazt.zz.u
    public void c(int i10, int i11, IDownloadListener iDownloadListener, com.byazt.ev.a aVar, boolean z10) {
        c cVar = this.f11815c;
        if (cVar != null) {
            cVar.tt(i10, i11, iDownloadListener, aVar, z10);
        }
    }

    @Override // com.byazt.zz.u
    public boolean tt() {
        com.byazt.zz.z zVar = this.ve;
        if (zVar != null) {
            return zVar.tt();
        }
        return false;
    }

    @Override // com.byazt.zz.u
    public void c(int i10, int i11, IDownloadListener iDownloadListener, com.byazt.ev.a aVar, boolean z10, boolean z11) {
        c cVar = this.f11815c;
        if (cVar != null) {
            cVar.c(i10, i11, iDownloadListener, aVar, z10, z11);
        }
    }

    @Override // com.byazt.zz.u
    public void tt(DownloadTask downloadTask) {
        com.byazt.zz.z zVar = this.ve;
        if (zVar != null) {
            zVar.ve(downloadTask);
        }
    }

    @Override // com.byazt.zz.u
    public boolean c(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return false;
        }
        boolean zC = com.byazt.w.a.c(downloadInfo.getStatus(), downloadInfo.getSavePath(), downloadInfo.getName());
        if (zC) {
            if (com.byazt.w.c.c(33554432)) {
                tt(downloadInfo.getId(), true);
            } else {
                uj(downloadInfo.getId(), true);
            }
        }
        return zC;
    }

    @Override // com.byazt.zz.u
    public void tt(DownloadInfo downloadInfo) {
        this.tt.tt(downloadInfo);
    }

    @Override // com.byazt.zz.u
    public void tt(int i10, List<com.byazt.t.tt> list) {
        this.tt.tt(i10, list);
    }

    @Override // com.byazt.zz.u
    public void c(int i10, Notification notification) {
        com.byazt.zz.z zVar = this.ve;
        if (zVar != null) {
            zVar.c(i10, notification);
        }
    }

    @Override // com.byazt.zz.u
    public void c(boolean z10, boolean z11) {
        com.byazt.zz.z zVar = this.ve;
        if (zVar != null) {
            zVar.c(z11);
        }
    }

    @Override // com.byazt.zz.u
    public void c(DownloadTask downloadTask) {
        com.byazt.zz.z zVar = this.ve;
        if (zVar != null) {
            zVar.tt(downloadTask);
        } else if (downloadTask != null) {
            com.byazt.zl.c.c(downloadTask.getMonitorDepend(), downloadTask.getDownloadInfo(), new BaseException(1003, "downloadServiceHandler is null"), downloadTask.getDownloadInfo() != null ? downloadTask.getDownloadInfo().getStatus() : 0);
        }
    }

    @Override // com.byazt.zz.u
    public void c(int i10, List<com.byazt.t.tt> list) {
        this.tt.c(i10, list);
    }

    @Override // com.byazt.zz.u
    public void c(com.byazt.t.tt ttVar) {
        this.tt.c(ttVar);
    }

    @Override // com.byazt.zz.u
    public void c(int i10, int i11, long j10) {
        this.tt.c(i10, i11, j10);
    }

    @Override // com.byazt.zz.u
    public void c(int i10, int i11, int i12, long j10) {
        this.tt.c(i10, i11, i12, j10);
    }

    @Override // com.byazt.zz.u
    public void c(int i10, int i11, int i12, int i13) {
        this.tt.c(i10, i11, i12, i13);
    }

    @Override // com.byazt.zz.u
    public void c(nb nbVar) {
        com.byazt.zz.ve.c(nbVar);
    }

    @Override // com.byazt.zz.u
    public void c(int i10, int i11) {
        if (com.byazt.zz.ve.n() != null) {
            for (nb nbVar : com.byazt.zz.ve.n()) {
                if (nbVar != null) {
                    nbVar.c(i11, i10);
                }
            }
        }
    }

    @Override // com.byazt.zz.u
    public void c(int i10, yv yvVar) {
        c cVar = this.f11815c;
        if (cVar != null) {
            cVar.c(i10, yvVar);
        }
    }

    @Override // com.byazt.zz.u
    public void c(int i10, long j10) {
        c cVar = this.f11815c;
        if (cVar != null) {
            cVar.tt(i10, j10);
        }
    }
}
