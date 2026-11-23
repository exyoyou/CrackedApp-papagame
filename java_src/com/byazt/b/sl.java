package com.byazt.b;

import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.ev.DownloadStatus;
import com.byazt.t.DownloadInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 223, 158})
public class sl implements com.byazt.zz.da {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SparseArray<DownloadInfo> f11833c = new SparseArray<>();
    public final SparseArray<List<com.byazt.t.tt>> tt = new SparseArray<>();
    public final SparseArray<Map<Long, com.byazt.h.i>> ve = new SparseArray<>();

    public SparseArray<List<com.byazt.t.tt>> a() {
        return this.tt;
    }

    @Override // com.byazt.zz.da
    public void c(int i10, int i11, int i12, int i13) {
    }

    @Override // com.byazt.zz.da
    public DownloadInfo da(int i10) {
        DownloadInfo downloadInfoTt = tt(i10);
        if (downloadInfoTt != null) {
            downloadInfoTt.setStatus(-7);
        }
        return downloadInfoTt;
    }

    @Override // com.byazt.zz.da
    public DownloadInfo i(int i10) {
        DownloadInfo downloadInfoTt = tt(i10);
        if (downloadInfoTt != null) {
            downloadInfoTt.setStatus(1);
        }
        return downloadInfoTt;
    }

    @Override // com.byazt.zz.da
    public boolean n() {
        return false;
    }

    @Override // com.byazt.zz.da
    public DownloadInfo sp(int i10) {
        DownloadInfo downloadInfoTt = tt(i10);
        if (downloadInfoTt != null) {
            downloadInfoTt.setStatus(2);
        }
        return downloadInfoTt;
    }

    @Override // com.byazt.zz.da
    public synchronized Map<Long, com.byazt.h.i> t(int i10) {
        return this.ve.get(i10);
    }

    @Override // com.byazt.zz.da
    public void tt(int i10, List<com.byazt.t.tt> list) {
    }

    @Override // com.byazt.zz.da
    public synchronized void u(int i10) {
        this.ve.remove(i10);
    }

    @Override // com.byazt.zz.da
    public boolean uj() {
        return false;
    }

    @Override // com.byazt.zz.da
    public synchronized List<DownloadInfo> ve(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.f11833c.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < this.f11833c.size(); i10++) {
            DownloadInfo downloadInfo = this.f11833c.get(this.f11833c.keyAt(i10));
            if (downloadInfo != null && !TextUtils.isEmpty(downloadInfo.getMimeType()) && downloadInfo.getMimeType().equals(str) && downloadInfo.getStatus() == -3) {
                arrayList.add(downloadInfo);
            }
        }
        return arrayList;
    }

    @Override // com.byazt.zz.da
    public DownloadInfo x(int i10) {
        DownloadInfo downloadInfoTt = tt(i10);
        if (downloadInfoTt != null) {
            downloadInfoTt.setStatus(5);
            downloadInfoTt.setFirstDownload(false);
        }
        return downloadInfoTt;
    }

    @Override // com.byazt.zz.da
    public synchronized List<com.byazt.h.i> yp(int i10) {
        Map<Long, com.byazt.h.i> map = this.ve.get(i10);
        if (map != null && !map.isEmpty()) {
            return new ArrayList(map.values());
        }
        return null;
    }

    @Override // com.byazt.zz.da
    public boolean a(int i10) {
        n(i10);
        uj(i10);
        u(i10);
        return true;
    }

    public SparseArray<DownloadInfo> c() {
        return this.f11833c;
    }

    @Override // com.byazt.zz.da
    public synchronized boolean n(int i10) {
        this.f11833c.remove(i10);
        return true;
    }

    @Override // com.byazt.zz.da
    public void tt(com.byazt.t.tt ttVar) {
    }

    @Override // com.byazt.zz.da
    public synchronized List<DownloadInfo> uj(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.f11833c.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < this.f11833c.size(); i10++) {
            DownloadInfo downloadInfo = this.f11833c.get(this.f11833c.keyAt(i10));
            if (downloadInfo != null && !TextUtils.isEmpty(downloadInfo.getMimeType()) && downloadInfo.getMimeType().equals(str) && DownloadStatus.isUnCompletedStatus(downloadInfo.getStatus())) {
                arrayList.add(downloadInfo);
            }
        }
        return arrayList;
    }

    @Override // com.byazt.zz.da
    public synchronized List<DownloadInfo> c(String str) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        try {
            int size = this.f11833c.size();
            for (int i10 = 0; i10 < size; i10++) {
                DownloadInfo downloadInfoValueAt = this.f11833c.valueAt(i10);
                if (str != null && str.equals(downloadInfoValueAt.getUrl())) {
                    arrayList.add(downloadInfoValueAt);
                }
            }
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
        }
        return arrayList;
    }

    @Override // com.byazt.zz.da
    public synchronized DownloadInfo tt(int i10) {
        DownloadInfo downloadInfo;
        try {
            downloadInfo = this.f11833c.get(i10);
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
            downloadInfo = null;
        }
        return downloadInfo;
    }

    @Override // com.byazt.zz.da
    public synchronized List<DownloadInfo> tt(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.f11833c.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < this.f11833c.size(); i10++) {
            DownloadInfo downloadInfo = this.f11833c.get(this.f11833c.keyAt(i10));
            if (downloadInfo != null && !TextUtils.isEmpty(downloadInfo.getMimeType()) && downloadInfo.getMimeType().equals(str) && DownloadStatus.isFailedStatus(downloadInfo.getStatus())) {
                arrayList.add(downloadInfo);
            }
        }
        return arrayList;
    }

    @Override // com.byazt.zz.da
    public void c(com.byazt.t.tt ttVar) {
        int iSl = ttVar.sl();
        List<com.byazt.t.tt> arrayList = this.tt.get(iSl);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.tt.put(iSl, arrayList);
        }
        arrayList.add(ttVar);
    }

    @Override // com.byazt.zz.da
    public synchronized List<com.byazt.t.tt> ve(int i10) {
        return this.tt.get(i10);
    }

    @Override // com.byazt.zz.da
    public synchronized void c(int i10, int i11, long j10) {
        List<com.byazt.t.tt> listVe = ve(i10);
        if (listVe == null) {
            return;
        }
        for (com.byazt.t.tt ttVar : listVe) {
            if (ttVar != null && ttVar.my() == i11) {
                ttVar.tt(j10);
                return;
            }
        }
    }

    @Override // com.byazt.zz.da
    public synchronized void uj(int i10) {
        this.tt.remove(i10);
    }

    @Override // com.byazt.zz.da
    public synchronized void ve() {
        this.f11833c.clear();
        this.tt.clear();
    }

    @Override // com.byazt.zz.da
    public DownloadInfo uj(int i10, long j10) {
        DownloadInfo downloadInfoTt = tt(i10);
        if (downloadInfoTt != null) {
            downloadInfoTt.setCurBytes(j10, false);
            downloadInfoTt.setStatus(-2);
        }
        return downloadInfoTt;
    }

    @Override // com.byazt.zz.da
    public DownloadInfo ve(int i10, long j10) {
        DownloadInfo downloadInfoTt = tt(i10);
        if (downloadInfoTt != null) {
            downloadInfoTt.setCurBytes(j10, false);
            downloadInfoTt.setStatus(-3);
            downloadInfoTt.setFirstDownload(false);
            downloadInfoTt.setFirstSuccess(false);
        }
        return downloadInfoTt;
    }

    @Override // com.byazt.zz.da
    public synchronized List<DownloadInfo> tt() {
        if (this.f11833c.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(this.f11833c.size());
        for (int i10 = 0; i10 < this.f11833c.size(); i10++) {
            DownloadInfo downloadInfoValueAt = this.f11833c.valueAt(i10);
            if (downloadInfoValueAt != null) {
                arrayList.add(downloadInfoValueAt);
            }
        }
        return arrayList;
    }

    @Override // com.byazt.zz.da
    public synchronized void c(int i10, int i11, int i12, long j10) {
        List<com.byazt.t.tt> listVe = ve(i10);
        if (listVe == null) {
            return;
        }
        for (com.byazt.t.tt ttVar : listVe) {
            if (ttVar != null && ttVar.my() == i12 && !ttVar.a()) {
                if (ttVar.sp() == null) {
                    break;
                }
                for (com.byazt.t.tt ttVar2 : ttVar.sp()) {
                    if (ttVar2 != null && ttVar2.my() == i11) {
                        ttVar2.tt(j10);
                        return;
                    }
                }
                return;
            }
        }
    }

    @Override // com.byazt.zz.da
    public DownloadInfo tt(int i10, long j10) {
        DownloadInfo downloadInfoTt = tt(i10);
        if (downloadInfoTt != null) {
            downloadInfoTt.setCurBytes(j10, false);
            downloadInfoTt.setStatus(-1);
            downloadInfoTt.setFirstDownload(false);
        }
        return downloadInfoTt;
    }

    @Override // com.byazt.zz.da
    public void tt(DownloadInfo downloadInfo) {
        c(downloadInfo);
    }

    @Override // com.byazt.zz.da
    public synchronized DownloadInfo c(int i10, int i11) {
        DownloadInfo downloadInfoTt;
        downloadInfoTt = tt(i10);
        if (downloadInfoTt != null) {
            downloadInfoTt.setChunkCount(i11);
        }
        return downloadInfoTt;
    }

    @Override // com.byazt.zz.da
    public synchronized boolean c(DownloadInfo downloadInfo) {
        boolean z10 = true;
        if (downloadInfo == null) {
            return true;
        }
        if (this.f11833c.get(downloadInfo.getId()) == null) {
            z10 = false;
        }
        this.f11833c.put(downloadInfo.getId(), downloadInfo);
        return z10;
    }

    @Override // com.byazt.zz.da
    public DownloadInfo c(int i10, long j10, String str, String str2) {
        DownloadInfo downloadInfoTt = tt(i10);
        if (downloadInfoTt != null) {
            downloadInfoTt.setTotalBytes(j10);
            downloadInfoTt.seteTag(str);
            if (TextUtils.isEmpty(downloadInfoTt.getName()) && !TextUtils.isEmpty(str2)) {
                downloadInfoTt.setName(str2);
            }
            downloadInfoTt.setStatus(3);
        }
        return downloadInfoTt;
    }

    @Override // com.byazt.zz.da
    public DownloadInfo c(int i10, long j10) {
        DownloadInfo downloadInfoTt = tt(i10);
        if (downloadInfoTt != null) {
            downloadInfoTt.setCurBytes(j10, false);
            if (downloadInfoTt.getStatus() != -3 && downloadInfoTt.getStatus() != -2 && !DownloadStatus.isFailedStatus(downloadInfoTt.getStatus()) && downloadInfoTt.getStatus() != -4) {
                downloadInfoTt.setStatus(4);
            }
        }
        return downloadInfoTt;
    }

    @Override // com.byazt.zz.da
    public synchronized void c(int i10, List<com.byazt.t.tt> list) {
        if (list == null) {
            return;
        }
        uj(i10);
        for (com.byazt.t.tt ttVar : list) {
            if (ttVar != null) {
                c(ttVar);
                if (ttVar.a()) {
                    Iterator<com.byazt.t.tt> it2 = ttVar.sp().iterator();
                    while (it2.hasNext()) {
                        c(it2.next());
                    }
                } else {
                    continue;
                }
            }
        }
    }

    @Override // com.byazt.zz.da
    public synchronized boolean c(int i10, Map<Long, com.byazt.h.i> map) {
        this.ve.put(i10, map);
        return false;
    }
}
