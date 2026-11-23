package com.byazt.b;

import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.util.SparseArray;
import com.byazt.m.BaseException;
import com.byazt.t.DownloadInfo;
import com.byazt.zz.gt;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 223, 15})
public class uj implements com.byazt.zz.da {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.u.x f11840a;
    public gt tt;
    public volatile boolean uj;
    public volatile boolean ve;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.u.x.c f11842n = new com.byazt.u.x.c() { // from class: com.byazt.b.uj.1
        @Override // com.byazt.u.x.c
        public void c(Message message) {
            if (message.what == 1) {
                com.byazt.zz.ve.t().execute(new Runnable() { // from class: com.byazt.b.uj.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            uj.this.i();
                        } catch (Exception e10) {
                            com.byazt.nr.m.c(e10);
                        }
                    }
                });
            }
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final sl f11841c = new sl();

    public uj() {
        this.f11840a = null;
        if (com.byazt.k.c.ve().c("fix_sigbus_downloader_db") && !com.byazt.w.a.c() && com.byazt.zz.ve.lo()) {
            this.tt = com.byazt.zz.ve.pu().c(new com.byazt.zz.ve.c.InterfaceC0510c() { // from class: com.byazt.b.uj.2
                @Override // com.byazt.zz.ve.c.InterfaceC0510c
                public void c() {
                    uj.this.tt = new com.byazt.wh.n();
                    com.byazt.nr.m.uj("DefaultDownloadCache", "rebind error,use backup sqlDownloadCache");
                }
            });
        } else {
            this.tt = new com.byazt.wh.n();
        }
        this.ve = false;
        this.f11840a = new com.byazt.u.x(Looper.getMainLooper(), this.f11842n);
        sp();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void da() {
        synchronized (this) {
            this.ve = true;
            notifyAll();
        }
    }

    public gt a() {
        return this.tt;
    }

    public void i() {
        List<String> listC;
        ArrayList arrayList;
        DownloadInfo downloadInfo;
        DownloadInfo downloadInfo2;
        if (this.ve) {
            if (this.uj) {
                com.byazt.x.c.tt("DefaultDownloadCache", "resumeUnCompleteTask: has resumed, return!!!");
                return;
            }
            this.uj = true;
            if (com.byazt.w.a.c()) {
                com.byazt.zz.t tVarGr = com.byazt.zz.ve.gr();
                if (tVarGr != null) {
                    listC = tVarGr.c();
                    arrayList = (listC == null || listC.isEmpty()) ? null : new ArrayList();
                } else {
                    listC = null;
                    arrayList = null;
                }
                SparseArray sparseArray = new SparseArray();
                synchronized (this) {
                    SparseArray<DownloadInfo> sparseArrayC = this.f11841c.c();
                    for (int i10 = 0; i10 < sparseArrayC.size(); i10++) {
                        int iKeyAt = sparseArrayC.keyAt(i10);
                        if (iKeyAt != 0 && (downloadInfo2 = sparseArrayC.get(iKeyAt)) != null) {
                            sparseArray.put(iKeyAt, downloadInfo2);
                        }
                    }
                }
                if (sparseArray.size() == 0) {
                    return;
                }
                for (int i11 = 0; i11 < sparseArray.size(); i11++) {
                    int iKeyAt2 = sparseArray.keyAt(i11);
                    if (iKeyAt2 != 0 && (downloadInfo = (DownloadInfo) sparseArray.get(iKeyAt2)) != null) {
                        int realStatus = downloadInfo.getRealStatus();
                        int statusAtDbInit = downloadInfo.getStatusAtDbInit();
                        if (statusAtDbInit > 0 && statusAtDbInit <= 11) {
                            com.byazt.zl.c.c(com.byazt.zz.ve.sp(), downloadInfo, (BaseException) null, -5);
                        }
                        if (listC != null && arrayList != null && downloadInfo.getMimeType() != null && listC.contains(downloadInfo.getMimeType()) && (com.byazt.k.c.c(downloadInfo.getId()).tt("enable_notification_ui") >= 2 || realStatus != -2 || downloadInfo.isPauseReserveOnWifi())) {
                            downloadInfo.setDownloadFromReserveWifi(false);
                            arrayList.add(downloadInfo);
                        }
                    }
                }
                if (tVarGr == null || arrayList == null || arrayList.isEmpty()) {
                    return;
                }
                tVarGr.c(arrayList, 1);
            }
        }
    }

    @Override // com.byazt.zz.da
    public boolean n() {
        if (this.ve) {
            return true;
        }
        synchronized (this) {
            if (!this.ve) {
                com.byazt.x.c.uj("DefaultDownloadCache", "ensureDownloadCacheSyncSuccess: waiting start!!!!");
                try {
                    wait(5000L);
                } catch (InterruptedException e10) {
                    com.byazt.nr.m.c(e10);
                }
                com.byazt.x.c.uj("DefaultDownloadCache", "ensureDownloadCacheSyncSuccess: waiting end!!!!");
            }
        }
        return this.ve;
    }

    @Override // com.byazt.zz.da
    public DownloadInfo sp(int i10) {
        DownloadInfo downloadInfoSp = this.f11841c.sp(i10);
        ve(downloadInfoSp);
        return downloadInfoSp;
    }

    @Override // com.byazt.zz.da
    public Map<Long, com.byazt.h.i> t(int i10) {
        Map<Long, com.byazt.h.i> mapT = this.f11841c.t(i10);
        if (mapT != null && !mapT.isEmpty()) {
            return mapT;
        }
        Map<Long, com.byazt.h.i> mapT2 = this.tt.t(i10);
        this.f11841c.c(i10, mapT2);
        return mapT2;
    }

    @Override // com.byazt.zz.da
    public void u(int i10) {
        this.f11841c.u(i10);
        this.tt.u(i10);
    }

    @Override // com.byazt.zz.da
    public boolean uj() {
        return this.ve;
    }

    @Override // com.byazt.zz.da
    public List<DownloadInfo> ve(String str) {
        return this.f11841c.ve(str);
    }

    public void x() {
        long j10;
        if (com.byazt.k.c.ve().c("task_resume_delay")) {
            j10 = 4000;
        } else {
            j10 = Build.VERSION.SDK_INT >= 23 ? 1000L : 5000L;
        }
        this.f11840a.sendMessageDelayed(this.f11840a.obtainMessage(1), j10);
    }

    @Override // com.byazt.zz.da
    public List<com.byazt.h.i> yp(int i10) {
        List<com.byazt.h.i> listYp = this.f11841c.yp(i10);
        return (listYp == null || listYp.size() == 0) ? this.tt.yp(i10) : listYp;
    }

    @Override // com.byazt.zz.da
    public boolean a(int i10) {
        com.byazt.zz.u uVarC;
        if (!com.byazt.w.a.tt() || (uVarC = t.c(true)) == null) {
            this.tt.a(i10);
        } else {
            uVarC.m(i10);
        }
        return this.f11841c.a(i10);
    }

    @Override // com.byazt.zz.da
    public DownloadInfo tt(int i10) {
        return this.f11841c.tt(i10);
    }

    @Override // com.byazt.zz.da
    public List<DownloadInfo> uj(String str) {
        return this.f11841c.uj(str);
    }

    @Override // com.byazt.zz.da
    public List<com.byazt.t.tt> ve(int i10) {
        return this.f11841c.ve(i10);
    }

    public sl c() {
        return this.f11841c;
    }

    public void sp() {
        List<com.byazt.t.tt> list;
        DownloadInfo downloadInfo;
        com.byazt.zz.ve.c(com.byazt.ev.uj.SYNC_START);
        final SparseArray<DownloadInfo> sparseArray = new SparseArray<>();
        final SparseArray<List<com.byazt.t.tt>> sparseArray2 = new SparseArray<>();
        synchronized (this.f11841c) {
            SparseArray<DownloadInfo> sparseArrayC = this.f11841c.c();
            for (int i10 = 0; i10 < sparseArrayC.size(); i10++) {
                int iKeyAt = sparseArrayC.keyAt(i10);
                if (iKeyAt != 0 && (downloadInfo = sparseArrayC.get(iKeyAt)) != null) {
                    sparseArray.put(iKeyAt, downloadInfo);
                }
            }
            SparseArray<List<com.byazt.t.tt>> sparseArrayA = this.f11841c.a();
            for (int i11 = 0; i11 < sparseArrayA.size(); i11++) {
                int iKeyAt2 = sparseArrayA.keyAt(i11);
                if (iKeyAt2 != 0 && (list = sparseArrayA.get(iKeyAt2)) != null) {
                    sparseArray2.put(iKeyAt2, new CopyOnWriteArrayList(list));
                }
            }
        }
        this.tt.c(sparseArray, sparseArray2, new com.byazt.wh.uj() { // from class: com.byazt.b.uj.3
            @Override // com.byazt.wh.uj
            public void c() {
                synchronized (uj.this.f11841c) {
                    SparseArray<DownloadInfo> sparseArrayC2 = uj.this.f11841c.c();
                    if (sparseArray != null) {
                        for (int i12 = 0; i12 < sparseArray.size(); i12++) {
                            int iKeyAt3 = sparseArray.keyAt(i12);
                            if (iKeyAt3 != 0) {
                                sparseArrayC2.put(iKeyAt3, (DownloadInfo) sparseArray.get(iKeyAt3));
                            }
                        }
                    }
                    SparseArray<List<com.byazt.t.tt>> sparseArrayA2 = uj.this.f11841c.a();
                    if (sparseArray2 != null) {
                        for (int i13 = 0; i13 < sparseArray2.size(); i13++) {
                            int iKeyAt4 = sparseArray2.keyAt(i13);
                            if (iKeyAt4 != 0) {
                                sparseArrayA2.put(iKeyAt4, (List) sparseArray2.get(iKeyAt4));
                            }
                        }
                    }
                }
                uj.this.da();
                uj.this.x();
                com.byazt.zz.ve.c(com.byazt.ev.uj.SYNC_SUCCESS);
            }
        });
    }

    @Override // com.byazt.zz.da
    public List<DownloadInfo> tt(String str) {
        return this.f11841c.tt(str);
    }

    @Override // com.byazt.zz.da
    public void uj(int i10) {
        this.f11841c.uj(i10);
        if (com.byazt.w.a.tt()) {
            com.byazt.zz.u uVarC = t.c(true);
            if (uVarC != null) {
                uVarC.z(i10);
                return;
            } else {
                this.tt.uj(i10);
                return;
            }
        }
        this.tt.uj(i10);
    }

    @Override // com.byazt.zz.da
    public void ve() {
        try {
            this.f11841c.ve();
        } catch (SQLiteException e10) {
            com.byazt.nr.m.c(e10);
        }
        if (com.byazt.w.a.tt()) {
            com.byazt.zz.u uVarC = t.c(true);
            if (uVarC != null) {
                uVarC.a();
                return;
            } else {
                this.tt.ve();
                return;
            }
        }
        this.tt.ve();
    }

    @Override // com.byazt.zz.da
    public List<DownloadInfo> c(String str) {
        return this.f11841c.c(str);
    }

    @Override // com.byazt.zz.da
    public List<DownloadInfo> tt() {
        return this.f11841c.tt();
    }

    @Override // com.byazt.zz.da
    public void c(com.byazt.t.tt ttVar) {
        synchronized (this.f11841c) {
            this.f11841c.c(ttVar);
        }
        if (com.byazt.w.a.tt()) {
            com.byazt.zz.u uVarC = t.c(true);
            if (uVarC != null) {
                uVarC.c(ttVar);
                return;
            } else {
                this.tt.c(ttVar);
                return;
            }
        }
        this.tt.c(ttVar);
    }

    @Override // com.byazt.zz.da
    public DownloadInfo da(int i10) {
        DownloadInfo downloadInfoDa = this.f11841c.da(i10);
        ve(downloadInfoDa);
        return downloadInfoDa;
    }

    @Override // com.byazt.zz.da
    public void tt(com.byazt.t.tt ttVar) {
        if (com.byazt.w.a.tt()) {
            com.byazt.zz.u uVarC = t.c(true);
            if (uVarC != null) {
                uVarC.c(ttVar);
                return;
            } else {
                this.tt.c(ttVar);
                return;
            }
        }
        this.tt.c(ttVar);
    }

    @Override // com.byazt.zz.da
    public DownloadInfo x(int i10) {
        DownloadInfo downloadInfoX = this.f11841c.x(i10);
        ve(downloadInfoX);
        return downloadInfoX;
    }

    @Override // com.byazt.zz.da
    public DownloadInfo uj(int i10, long j10) {
        DownloadInfo downloadInfoUj = this.f11841c.uj(i10, j10);
        tt(i10, (List<com.byazt.t.tt>) null);
        return downloadInfoUj;
    }

    private void ve(DownloadInfo downloadInfo) {
        c(downloadInfo, true);
    }

    @Override // com.byazt.zz.da
    public DownloadInfo tt(int i10, long j10) {
        DownloadInfo downloadInfoTt = this.f11841c.tt(i10, j10);
        tt(i10, (List<com.byazt.t.tt>) null);
        return downloadInfoTt;
    }

    @Override // com.byazt.zz.da
    public boolean n(int i10) {
        com.byazt.zz.u uVarC;
        try {
            if (com.byazt.w.a.tt() && (uVarC = t.c(true)) != null) {
                uVarC.yp(i10);
            } else {
                this.tt.n(i10);
            }
        } catch (SQLiteException e10) {
            com.byazt.nr.m.c(e10);
        }
        return this.f11841c.n(i10);
    }

    @Override // com.byazt.zz.da
    public DownloadInfo ve(int i10, long j10) {
        DownloadInfo downloadInfoVe = this.f11841c.ve(i10, j10);
        tt(i10, (List<com.byazt.t.tt>) null);
        return downloadInfoVe;
    }

    @Override // com.byazt.zz.da
    public void tt(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return;
        }
        this.f11841c.c(downloadInfo);
    }

    @Override // com.byazt.zz.da
    public void tt(int i10, List<com.byazt.t.tt> list) {
        try {
            c(this.f11841c.tt(i10));
            if (list == null) {
                list = this.f11841c.ve(i10);
            }
            if (com.byazt.w.a.tt()) {
                com.byazt.zz.u uVarC = t.c(true);
                if (uVarC != null) {
                    uVarC.tt(i10, list);
                    return;
                } else {
                    this.tt.tt(i10, list);
                    return;
                }
            }
            this.tt.tt(i10, list);
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
    }

    @Override // com.byazt.zz.da
    public void c(int i10, int i11, long j10) {
        this.f11841c.c(i10, i11, j10);
        if (com.byazt.w.a.tt()) {
            com.byazt.zz.u uVarC = t.c(true);
            if (uVarC != null) {
                uVarC.c(i10, i11, j10);
                return;
            } else {
                this.tt.c(i10, i11, j10);
                return;
            }
        }
        this.tt.c(i10, i11, j10);
    }

    @Override // com.byazt.zz.da
    public void c(int i10, int i11, int i12, long j10) {
        if (com.byazt.w.a.tt()) {
            com.byazt.zz.u uVarC = t.c(true);
            if (uVarC != null) {
                uVarC.c(i10, i11, i12, j10);
                return;
            } else {
                this.tt.c(i10, i11, i12, j10);
                return;
            }
        }
        this.tt.c(i10, i11, i12, j10);
    }

    @Override // com.byazt.zz.da
    public void c(int i10, int i11, int i12, int i13) {
        if (com.byazt.w.a.tt()) {
            com.byazt.zz.u uVarC = t.c(true);
            if (uVarC != null) {
                uVarC.c(i10, i11, i12, i13);
                return;
            } else {
                this.tt.c(i10, i11, i12, i13);
                return;
            }
        }
        this.tt.c(i10, i11, i12, i13);
    }

    @Override // com.byazt.zz.da
    public DownloadInfo c(int i10, int i11) {
        DownloadInfo downloadInfoC = this.f11841c.c(i10, i11);
        ve(downloadInfoC);
        return downloadInfoC;
    }

    @Override // com.byazt.zz.da
    public boolean c(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return false;
        }
        boolean zC = this.f11841c.c(downloadInfo);
        ve(downloadInfo);
        return zC;
    }

    @Override // com.byazt.zz.da
    public DownloadInfo c(int i10, long j10, String str, String str2) {
        DownloadInfo downloadInfoC = this.f11841c.c(i10, j10, str, str2);
        ve(downloadInfoC);
        return downloadInfoC;
    }

    @Override // com.byazt.zz.da
    public DownloadInfo i(int i10) {
        DownloadInfo downloadInfoI = this.f11841c.i(i10);
        ve(downloadInfoI);
        return downloadInfoI;
    }

    @Override // com.byazt.zz.da
    public DownloadInfo c(int i10, long j10) {
        DownloadInfo downloadInfoC = this.f11841c.c(i10, j10);
        c(downloadInfoC, false);
        return downloadInfoC;
    }

    private void c(DownloadInfo downloadInfo, boolean z10) {
        if (downloadInfo == null) {
            return;
        }
        if (!com.byazt.w.a.tt()) {
            this.tt.c(downloadInfo);
            return;
        }
        if (z10) {
            com.byazt.zz.u uVarC = t.c(true);
            if (uVarC != null) {
                uVarC.ve(downloadInfo);
            } else {
                this.tt.c(downloadInfo);
            }
        }
    }

    @Override // com.byazt.zz.da
    public void c(int i10, List<com.byazt.t.tt> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        this.f11841c.c(i10, list);
        if (com.byazt.w.a.ve()) {
            this.tt.tt(i10, list);
        }
    }

    @Override // com.byazt.zz.da
    public boolean c(int i10, Map<Long, com.byazt.h.i> map) {
        this.f11841c.c(i10, map);
        this.tt.c(i10, map);
        return false;
    }
}
