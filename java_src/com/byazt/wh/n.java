package com.byazt.wh;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.text.TextUtils;
import android.util.SparseArray;
import com.android.dex.DexFormat;
import com.byazt.h.i;
import com.byazt.nr.m;
import com.byazt.t.DownloadInfo;
import com.byazt.zz.gt;
import com.byazt.zz.sl;
import com.join.mgps.activity.PapayPayDetialActivity_;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1172, 46})
public class n extends ve.c implements gt {
    public static volatile SQLiteDatabase tt;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile boolean f21537a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public tt f21538c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public sp f21539n;
    public sp uj;
    public sp ve;

    public n() {
        this(false);
    }

    private void da() {
        try {
            if (tt == null || !tt.inTransaction()) {
                return;
            }
            tt.endTransaction();
        } catch (Throwable th) {
            m.c(th);
        }
    }

    private void i() {
        tt.beginTransaction();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void sl() {
        try {
            i();
            tt.delete("downloader", null, null);
            tt.delete("downloadChunk", null, null);
            tt.setTransactionSuccessful();
            da();
        } catch (Throwable th) {
            try {
                m.c(th);
            } finally {
                da();
            }
        }
    }

    private void update(final int i10, final ContentValues contentValues) {
        x();
        if (tt == null) {
            return;
        }
        com.byazt.zz.ve.ve(new Runnable() { // from class: com.byazt.wh.n.3
            @Override // java.lang.Runnable
            public void run() {
                n.this.c(i10, contentValues);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        if (tt == null) {
            synchronized (n.class) {
                if (tt == null) {
                    try {
                        tt = c.c().getWritableDatabase();
                        this.ve = new sp(tt, "downloader", com.byazt.ev.ve.f14047c, com.byazt.ev.ve.tt);
                        this.uj = new sp(tt, "downloadChunk", com.byazt.ev.ve.ve, com.byazt.ev.ve.uj);
                        this.f21539n = new sp(tt, "segments", com.byazt.ev.ve.f14048n, com.byazt.ev.ve.f14046a);
                    } catch (Throwable th) {
                        m.c(th);
                    }
                }
            }
        }
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public boolean a(final int i10) {
        com.byazt.zz.ve.ve(new Runnable() { // from class: com.byazt.wh.n.11
            @Override // java.lang.Runnable
            public void run() {
                n.this.n(i10);
                n.this.uj(i10);
                n.this.u(i10);
            }
        });
        return true;
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public void c(int i10, List<com.byazt.t.tt> list) {
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public boolean n() {
        return false;
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public DownloadInfo sp(int i10) {
        return null;
    }

    @Override // com.byazt.zz.da
    public Map<Long, i> t(int i10) {
        Cursor cursorRawQuery;
        x();
        if (tt != null) {
            try {
                cursorRawQuery = tt.rawQuery(String.format("SELECT * FROM %s WHERE %s = ?", "segments", "_id"), new String[]{Integer.toString(i10)});
                try {
                    if (cursorRawQuery.moveToNext()) {
                        int columnIndex = cursorRawQuery.getColumnIndex(PapayPayDetialActivity_.INFO_EXTRA);
                        String string = columnIndex >= 0 ? cursorRawQuery.getString(columnIndex) : null;
                        HashMap map = new HashMap();
                        JSONArray jSONArray = new JSONArray(string);
                        for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                            i iVar = new i(jSONArray.getJSONObject(i11));
                            map.put(Long.valueOf(iVar.ve()), iVar);
                        }
                        com.byazt.w.a.c(cursorRawQuery);
                        return map;
                    }
                    com.byazt.w.a.c(cursorRawQuery);
                } catch (Throwable th) {
                    th = th;
                    try {
                        m.c(th);
                        com.byazt.w.a.c(cursorRawQuery);
                    } catch (Throwable th2) {
                        com.byazt.w.a.c(cursorRawQuery);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                cursorRawQuery = null;
            }
        }
        return null;
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public List<DownloadInfo> tt() {
        return null;
    }

    @Override // com.byazt.zz.da
    public void u(int i10) {
        x();
        if (tt == null) {
            return;
        }
        try {
            c(i10, this.f21539n.tt());
        } catch (Throwable th) {
            m.c(th);
        }
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public List<DownloadInfo> uj(String str) {
        return null;
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public List<DownloadInfo> ve(String str) {
        return null;
    }

    public n(boolean z10) {
        this.f21538c = null;
        if (z10) {
            this.f21537a = false;
            c();
        }
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public DownloadInfo i(int i10) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) 1);
        update(i10, contentValues);
        return null;
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public boolean n(int i10) {
        sp spVar;
        x();
        if (tt != null && (spVar = this.ve) != null) {
            try {
                c(i10, spVar.tt());
                return true;
            } catch (Throwable th) {
                m.c(th);
            }
        }
        return false;
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public List<DownloadInfo> tt(String str) {
        return null;
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public void tt(DownloadInfo downloadInfo) {
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public void uj(final int i10) {
        x();
        if (tt == null || this.uj == null) {
            return;
        }
        com.byazt.zz.ve.ve(new Runnable() { // from class: com.byazt.wh.n.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    n.this.c(i10, n.this.uj.tt());
                } catch (Throwable th) {
                    m.c(th);
                }
            }
        });
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public List<com.byazt.t.tt> ve(int i10) {
        ArrayList arrayList = new ArrayList();
        x();
        if (tt != null) {
            Cursor cursorRawQuery = null;
            try {
                cursorRawQuery = tt.rawQuery(String.format("SELECT * FROM %s WHERE %s = ?", "downloadChunk", "_id"), new String[]{Integer.toString(i10)});
                while (cursorRawQuery.moveToNext()) {
                    arrayList.add(new com.byazt.t.tt(cursorRawQuery));
                }
                com.byazt.w.a.c(cursorRawQuery);
            } catch (Throwable th) {
                try {
                    m.c(th);
                    com.byazt.w.a.c(cursorRawQuery);
                } catch (Throwable th2) {
                    com.byazt.w.a.c(cursorRawQuery);
                    throw th2;
                }
            }
        }
        return arrayList;
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public DownloadInfo da(int i10) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) (-7));
        update(i10, contentValues);
        return null;
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public DownloadInfo tt(int i10) {
        Cursor cursorRawQuery;
        x();
        if (tt != null) {
            try {
                cursorRawQuery = tt.rawQuery(String.format("SELECT * FROM %s WHERE %s = ?", "downloader", "_id"), new String[]{Integer.toString(i10)});
                try {
                    if (cursorRawQuery.moveToNext()) {
                        DownloadInfo downloadInfo = new DownloadInfo(cursorRawQuery);
                        com.byazt.w.a.c(cursorRawQuery);
                        return downloadInfo;
                    }
                    com.byazt.w.a.c(cursorRawQuery);
                } catch (Throwable th) {
                    th = th;
                    try {
                        m.c(th);
                        com.byazt.w.a.c(cursorRawQuery);
                    } catch (Throwable th2) {
                        com.byazt.w.a.c(cursorRawQuery);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                cursorRawQuery = null;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void uj(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return;
        }
        try {
            if (!c(downloadInfo.getId())) {
                ve(downloadInfo);
                return;
            }
            sp spVar = this.ve;
            if (spVar == null) {
                return;
            }
            try {
                tt(downloadInfo, spVar.ve());
            } catch (Throwable th) {
                m.c(th);
            }
        } catch (Throwable th2) {
            m.c(th2);
        }
    }

    @Override // com.byazt.wh.ve
    public DownloadInfo n(int i10, long j10) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) (-4));
        contentValues.put("curBytes", Long.valueOf(j10));
        update(i10, contentValues);
        return null;
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public DownloadInfo x(int i10) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) 5);
        contentValues.put("isFirstDownload", (Integer) 0);
        update(i10, contentValues);
        return null;
    }

    @Override // com.byazt.zz.da
    /* JADX INFO: renamed from: sl, reason: merged with bridge method [inline-methods] */
    public ArrayList<i> yp(int i10) {
        Map<Long, i> mapT = t(i10);
        if (mapT == null || mapT.isEmpty()) {
            return null;
        }
        return new ArrayList<>(mapT.values());
    }

    @Override // com.byazt.wh.ve
    public void c() {
        c(new SparseArray<>(), new SparseArray<>(), (uj) null);
    }

    private void ve(final DownloadInfo downloadInfo) {
        x();
        if (tt == null || this.ve == null) {
            return;
        }
        com.byazt.zz.ve.ve(new Runnable() { // from class: com.byazt.wh.n.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    n nVar = n.this;
                    nVar.c(downloadInfo, nVar.ve.c());
                } catch (Throwable th) {
                    m.c(th);
                }
            }
        });
    }

    @Override // com.byazt.zz.gt
    public void c(final SparseArray<DownloadInfo> sparseArray, final SparseArray<List<com.byazt.t.tt>> sparseArray2, final uj ujVar) {
        try {
            Runnable runnable = new Runnable() { // from class: com.byazt.wh.n.1
                /* JADX WARN: Code duplicated, block: B:170:0x0349 A[PHI: r0
                  0x0349: PHI (r0v14 com.byazt.wh.uj) = (r0v13 com.byazt.wh.uj), (r0v18 com.byazt.wh.uj) binds: [B:169:0x0347, B:164:0x033e] A[DONT_GENERATE, DONT_INLINE]] */
                @Override // java.lang.Runnable
                public void run() {
                    uj ujVar2;
                    uj ujVar3;
                    boolean z10;
                    int iC;
                    n.this.x();
                    if (n.tt == null) {
                        return;
                    }
                    sl slVarH = com.byazt.zz.ve.h();
                    SparseArray sparseArray3 = new SparseArray();
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    Cursor cursorRawQuery = null;
                    int i10 = 0;
                    try {
                        cursorRawQuery = n.tt.rawQuery("SELECT * FROM downloader", null);
                        while (cursorRawQuery.moveToNext()) {
                            DownloadInfo downloadInfo = new DownloadInfo(cursorRawQuery);
                            downloadInfo.setStatusAtDbInit(downloadInfo.getRealStatus());
                            if (downloadInfo.isCanResumeFromBreakPointStatus()) {
                                downloadInfo.setStatus(-5);
                                if (com.byazt.k.c.ve().tt("status_not_update_to_db", true)) {
                                    sparseArray3.put(downloadInfo.getId(), downloadInfo);
                                }
                            }
                            if (TextUtils.isEmpty(downloadInfo.getSavePath()) || TextUtils.isEmpty(downloadInfo.getName())) {
                                z10 = true;
                            } else {
                                if (downloadInfo.getStatus() != 1 || downloadInfo.getCurBytes() > 0) {
                                    if (downloadInfo.getStatus() != -3 && downloadInfo.getStatus() != 11 && !downloadInfo.isFileDataValid()) {
                                        downloadInfo.reset();
                                    }
                                    z10 = false;
                                } else {
                                    z10 = true;
                                }
                                if (downloadInfo.getStatus() == 11) {
                                    downloadInfo.setStatus(-5);
                                }
                                if (com.byazt.w.a.c(downloadInfo.getStatus(), downloadInfo.getSavePath(), downloadInfo.getName())) {
                                    if (com.byazt.w.c.c(33554432)) {
                                        z10 = true;
                                    } else {
                                        downloadInfo.erase();
                                    }
                                }
                            }
                            if (z10) {
                                arrayList.add(Integer.valueOf(downloadInfo.getId()));
                                arrayList2.add(downloadInfo);
                            } else {
                                int id2 = downloadInfo.getId();
                                if (slVarH != null) {
                                    String taskKey = downloadInfo.getTaskKey();
                                    if (TextUtils.isEmpty(taskKey)) {
                                        taskKey = downloadInfo.getUrl();
                                    }
                                    iC = slVarH.c(taskKey, downloadInfo.getSavePath());
                                } else {
                                    iC = 0;
                                }
                                if (iC != id2) {
                                    downloadInfo.setId(iC);
                                    sparseArray3.put(id2, downloadInfo);
                                }
                                sparseArray.put(downloadInfo.getId(), downloadInfo);
                            }
                        }
                        com.byazt.w.a.c(cursorRawQuery);
                        n.this.c(arrayList2);
                        n.this.c(arrayList2, arrayList, (SparseArray<DownloadInfo>) sparseArray3, (SparseArray<DownloadInfo>) sparseArray, (SparseArray<List<com.byazt.t.tt>>) sparseArray2);
                        try {
                            ArrayList arrayList3 = new ArrayList();
                            if (sparseArray != null) {
                                while (i10 < sparseArray.size()) {
                                    int iKeyAt = sparseArray.keyAt(i10);
                                    if (iKeyAt != 0) {
                                        DownloadInfo downloadInfo2 = (DownloadInfo) sparseArray.get(iKeyAt);
                                        if (com.byazt.w.c.c(8192)) {
                                            if (downloadInfo2 != null && !downloadInfo2.isChunkBreakpointAvailable() && downloadInfo2.getStatus() != -3) {
                                                arrayList3.add(Integer.valueOf(downloadInfo2.getId()));
                                                sparseArray2.remove(downloadInfo2.getId());
                                            }
                                        } else if (downloadInfo2 != null && !downloadInfo2.isChunkBreakpointAvailable()) {
                                            arrayList3.add(Integer.valueOf(downloadInfo2.getId()));
                                            sparseArray2.remove(downloadInfo2.getId());
                                        }
                                    }
                                    Iterator it2 = arrayList3.iterator();
                                    while (it2.hasNext()) {
                                        sparseArray.remove(((Integer) it2.next()).intValue());
                                    }
                                    i10++;
                                }
                            }
                            ujVar3 = ujVar;
                            if (ujVar3 != null) {
                                ujVar3.c();
                            }
                        } catch (Throwable th) {
                            try {
                                m.c(th);
                                ujVar3 = ujVar;
                                if (ujVar3 != null) {
                                }
                            } finally {
                                if (ujVar != null) {
                                    ujVar.c();
                                    n.this.f21537a = true;
                                }
                                n.this.c(sparseArray, sparseArray2);
                            }
                        }
                    } catch (Throwable th2) {
                        try {
                            m.c(th2);
                            com.byazt.w.a.c(cursorRawQuery);
                            n.this.c(arrayList2);
                            n.this.c(arrayList2, arrayList, (SparseArray<DownloadInfo>) sparseArray3, (SparseArray<DownloadInfo>) sparseArray, (SparseArray<List<com.byazt.t.tt>>) sparseArray2);
                            try {
                                ArrayList arrayList4 = new ArrayList();
                                if (sparseArray != null) {
                                    while (i10 < sparseArray.size()) {
                                        int iKeyAt2 = sparseArray.keyAt(i10);
                                        if (iKeyAt2 != 0) {
                                            DownloadInfo downloadInfo3 = (DownloadInfo) sparseArray.get(iKeyAt2);
                                            if (com.byazt.w.c.c(8192)) {
                                                if (downloadInfo3 != null && !downloadInfo3.isChunkBreakpointAvailable() && downloadInfo3.getStatus() != -3) {
                                                    arrayList4.add(Integer.valueOf(downloadInfo3.getId()));
                                                    sparseArray2.remove(downloadInfo3.getId());
                                                }
                                            } else if (downloadInfo3 != null && !downloadInfo3.isChunkBreakpointAvailable()) {
                                                arrayList4.add(Integer.valueOf(downloadInfo3.getId()));
                                                sparseArray2.remove(downloadInfo3.getId());
                                            }
                                        }
                                        Iterator it3 = arrayList4.iterator();
                                        while (it3.hasNext()) {
                                            sparseArray.remove(((Integer) it3.next()).intValue());
                                        }
                                        i10++;
                                    }
                                }
                                ujVar3 = ujVar;
                                if (ujVar3 != null) {
                                }
                            } catch (Throwable th3) {
                                try {
                                    m.c(th3);
                                    ujVar3 = ujVar;
                                    if (ujVar3 != null) {
                                    }
                                } finally {
                                    if (ujVar != null) {
                                        ujVar.c();
                                        n.this.f21537a = true;
                                    }
                                    n.this.c(sparseArray, sparseArray2);
                                }
                            }
                        } catch (Throwable th4) {
                            com.byazt.w.a.c(cursorRawQuery);
                            n.this.c(arrayList2);
                            n.this.c(arrayList2, arrayList, (SparseArray<DownloadInfo>) sparseArray3, (SparseArray<DownloadInfo>) sparseArray, (SparseArray<List<com.byazt.t.tt>>) sparseArray2);
                            try {
                                ArrayList arrayList5 = new ArrayList();
                                if (sparseArray != null) {
                                    while (i10 < sparseArray.size()) {
                                        int iKeyAt3 = sparseArray.keyAt(i10);
                                        if (iKeyAt3 != 0) {
                                            DownloadInfo downloadInfo4 = (DownloadInfo) sparseArray.get(iKeyAt3);
                                            if (com.byazt.w.c.c(8192)) {
                                                if (downloadInfo4 != null && !downloadInfo4.isChunkBreakpointAvailable() && downloadInfo4.getStatus() != -3) {
                                                    arrayList5.add(Integer.valueOf(downloadInfo4.getId()));
                                                    sparseArray2.remove(downloadInfo4.getId());
                                                }
                                            } else if (downloadInfo4 != null && !downloadInfo4.isChunkBreakpointAvailable()) {
                                                arrayList5.add(Integer.valueOf(downloadInfo4.getId()));
                                                sparseArray2.remove(downloadInfo4.getId());
                                            }
                                        }
                                        Iterator it4 = arrayList5.iterator();
                                        while (it4.hasNext()) {
                                            sparseArray.remove(((Integer) it4.next()).intValue());
                                        }
                                        i10++;
                                    }
                                }
                                ujVar2 = ujVar;
                                if (ujVar2 != null) {
                                    ujVar2.c();
                                }
                            } catch (Throwable th5) {
                                try {
                                    m.c(th5);
                                    ujVar2 = ujVar;
                                    if (ujVar2 != null) {
                                        ujVar2.c();
                                    }
                                } finally {
                                    if (ujVar != null) {
                                        ujVar.c();
                                        n.this.f21537a = true;
                                    }
                                    n.this.c(sparseArray, sparseArray2);
                                }
                            }
                            throw th4;
                        }
                    }
                }
            };
            ExecutorService executorServiceRh = com.byazt.zz.ve.rh();
            if (executorServiceRh != null) {
                executorServiceRh.execute(runnable);
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public void tt(com.byazt.t.tt ttVar) {
        c(ttVar);
    }

    private void tt(DownloadInfo downloadInfo, SQLiteStatement sQLiteStatement) {
        if (downloadInfo == null || sQLiteStatement == null) {
            return;
        }
        try {
            synchronized (sQLiteStatement) {
                try {
                    downloadInfo.bindValue(sQLiteStatement);
                    sQLiteStatement.bindLong(downloadInfo.getBindValueCount() + 1, downloadInfo.getId());
                    sQLiteStatement.execute();
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            m.c(th2);
        }
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public DownloadInfo uj(int i10, long j10) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) (-2));
        contentValues.put("curBytes", Long.valueOf(j10));
        update(i10, contentValues);
        return null;
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public void ve() {
        x();
        if (tt == null) {
            return;
        }
        com.byazt.zz.ve.ve(new Runnable() { // from class: com.byazt.wh.n.2
            @Override // java.lang.Runnable
            public void run() {
                n.this.sl();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(List<DownloadInfo> list) {
        if (list == null) {
            return;
        }
        try {
            for (DownloadInfo downloadInfo : list) {
                if (downloadInfo != null && downloadInfo.isSavePathRedirected()) {
                    com.byazt.w.a.tt(downloadInfo);
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public boolean uj() {
        return this.f21537a;
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public DownloadInfo ve(int i10, long j10) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) (-3));
        contentValues.put("curBytes", Long.valueOf(j10));
        contentValues.put("isFirstDownload", (Integer) 0);
        contentValues.put("isFirstSuccess", (Integer) 0);
        update(i10, contentValues);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(List<DownloadInfo> list, List<Integer> list2, SparseArray<DownloadInfo> sparseArray, SparseArray<DownloadInfo> sparseArray2, SparseArray<List<com.byazt.t.tt>> sparseArray3) {
        int size = sparseArray.size();
        if (size < 0 || tt == null) {
            return;
        }
        synchronized (tt) {
            try {
                try {
                    i();
                    if (!list.isEmpty()) {
                        if (com.byazt.k.c.ve().c("clear_invalid_task_error")) {
                            String[] strArr = new String[list.size()];
                            for (int i10 = 0; i10 < list.size(); i10++) {
                                strArr[i10] = String.valueOf(list.get(i10));
                            }
                            String str = "CAST(_id AS TEXT) IN (" + new String(new char[list.size() - 1]).replace(DexFormat.MAGIC_SUFFIX, "?,") + "?)";
                            tt.delete("downloader", str, strArr);
                            tt.delete("downloadChunk", str, strArr);
                        } else {
                            String strJoin = TextUtils.join(", ", list2);
                            tt.delete("downloader", "_id IN (?)", new String[]{strJoin});
                            tt.delete("downloadChunk", "_id IN (?)", new String[]{strJoin});
                        }
                    }
                    for (int i11 = 0; i11 < size; i11++) {
                        int iKeyAt = sparseArray.keyAt(i11);
                        DownloadInfo downloadInfo = sparseArray.get(iKeyAt);
                        tt.delete("downloader", "_id = ?", new String[]{String.valueOf(iKeyAt)});
                        tt.insert("downloader", null, downloadInfo.toContentValues());
                        if (downloadInfo.getChunkCount() > 1) {
                            List<com.byazt.t.tt> listVe = ve(iKeyAt);
                            if (listVe.size() > 0) {
                                tt.delete("downloadChunk", "_id = ?", new String[]{String.valueOf(iKeyAt)});
                                for (com.byazt.t.tt ttVar : listVe) {
                                    ttVar.tt(downloadInfo.getId());
                                    tt.insert("downloadChunk", null, ttVar.c());
                                }
                            }
                        }
                    }
                    if (sparseArray2 != null && sparseArray3 != null) {
                        int size2 = sparseArray2.size();
                        for (int i12 = 0; i12 < size2; i12++) {
                            int id2 = sparseArray2.valueAt(i12).getId();
                            List<com.byazt.t.tt> listC = com.byazt.w.a.c(ve(id2));
                            if (listC != null && listC.size() > 0) {
                                sparseArray3.put(id2, listC);
                            }
                        }
                    }
                    tt.setTransactionSuccessful();
                } catch (Throwable th) {
                    try {
                        m.c(th);
                    } catch (Throwable th2) {
                        da();
                        throw th2;
                    }
                }
                da();
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public DownloadInfo tt(int i10, long j10) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) (-1));
        contentValues.put("curBytes", Long.valueOf(j10));
        if (j10 > 0) {
            contentValues.put("isFirstDownload", (Integer) 0);
        }
        update(i10, contentValues);
        return null;
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public void tt(int i10, List<com.byazt.t.tt> list) {
        try {
            uj(i10);
            if (list != null) {
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
        } catch (Throwable th) {
            m.c(th);
        }
    }

    @Override // com.byazt.wh.ve
    public boolean c(int i10) {
        try {
            return tt(i10) != null;
        } catch (Throwable th) {
            m.c(th);
            return false;
        }
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public List<DownloadInfo> c(String str) {
        x();
        ArrayList arrayList = new ArrayList();
        if (tt != null) {
            Cursor cursorRawQuery = null;
            try {
                cursorRawQuery = tt.rawQuery(String.format("SELECT * FROM %s WHERE %s = ?", "downloader", "url"), new String[]{str});
                if (cursorRawQuery.moveToNext()) {
                    arrayList.add(new DownloadInfo(cursorRawQuery));
                }
                com.byazt.w.a.c(cursorRawQuery);
            } catch (Throwable th) {
                try {
                    m.c(th);
                    com.byazt.w.a.c(cursorRawQuery);
                } catch (Throwable th2) {
                    com.byazt.w.a.c(cursorRawQuery);
                    throw th2;
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10, SQLiteStatement sQLiteStatement) {
        if (sQLiteStatement == null) {
            return;
        }
        try {
            synchronized (sQLiteStatement) {
                sQLiteStatement.bindLong(1, i10);
                sQLiteStatement.execute();
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public void c(final com.byazt.t.tt ttVar) {
        x();
        if (tt == null || this.uj == null) {
            return;
        }
        com.byazt.zz.ve.ve(new Runnable() { // from class: com.byazt.wh.n.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    n.this.c(ttVar, n.this.uj.c());
                } catch (Throwable th) {
                    m.c(th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(DownloadInfo downloadInfo, SQLiteStatement sQLiteStatement) {
        if (downloadInfo == null || sQLiteStatement == null) {
            return;
        }
        try {
            synchronized (sQLiteStatement) {
                downloadInfo.bindValue(sQLiteStatement);
                sQLiteStatement.executeInsert();
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.byazt.t.tt ttVar, SQLiteStatement sQLiteStatement) {
        if (ttVar == null || sQLiteStatement == null) {
            return;
        }
        try {
            synchronized (sQLiteStatement) {
                ttVar.c(sQLiteStatement);
                sQLiteStatement.executeInsert();
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public void c(final int i10, final int i11, final long j10) {
        x();
        if (i10 == 0 || i11 < 0 || j10 < 0 || tt == null || this.uj == null) {
            return;
        }
        com.byazt.zz.ve.ve(new Runnable() { // from class: com.byazt.wh.n.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    n.this.c(i10, i11, j10, n.this.uj.ve());
                } catch (Throwable th) {
                    m.c(th);
                }
            }
        });
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public void c(final int i10, final int i11, final int i12, final long j10) {
        x();
        if (i10 == 0 || i11 < 0 || i12 < 0 || j10 < 0 || tt == null || this.uj == null) {
            return;
        }
        com.byazt.zz.ve.ve(new Runnable() { // from class: com.byazt.wh.n.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    n.this.c(i10, i11, i12, j10, n.this.uj.ve());
                } catch (Throwable th) {
                    m.c(th);
                }
            }
        });
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public void c(final int i10, final int i11, final int i12, final int i13) {
        x();
        if (i10 == 0 || i12 < 0 || i13 == i11 || i13 < 0 || tt == null || this.uj == null) {
            return;
        }
        com.byazt.zz.ve.ve(new Runnable() { // from class: com.byazt.wh.n.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    n.this.c(i10, i11, i12, i13, n.this.uj.ve());
                } catch (Throwable th) {
                    m.c(th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10, int i11, int i12, int i13, SQLiteStatement sQLiteStatement) {
        try {
            synchronized (sQLiteStatement) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("chunkIndex", Integer.valueOf(i13));
                tt.update("downloadChunk", contentValues, "_id = ? AND chunkIndex = ? AND hostChunkIndex = ?", new String[]{Integer.toString(i10), Integer.toString(i11), Integer.toString(i12)});
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10, int i11, long j10, SQLiteStatement sQLiteStatement) {
        try {
            synchronized (sQLiteStatement) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("curOffset", Long.valueOf(j10));
                tt.update("downloadChunk", contentValues, "_id = ? AND chunkIndex = ?", new String[]{Integer.toString(i10), Integer.toString(i11)});
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10, int i11, int i12, long j10, SQLiteStatement sQLiteStatement) {
        try {
            synchronized (sQLiteStatement) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("curOffset", Long.valueOf(j10));
                tt.update("downloadChunk", contentValues, "_id = ? AND chunkIndex = ? AND hostChunkIndex = ?", new String[]{Integer.toString(i10), Integer.toString(i11), Integer.toString(i12)});
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public DownloadInfo c(int i10, int i11) {
        x();
        if (tt == null) {
            return null;
        }
        int i12 = 10;
        while (tt.isDbLockedByCurrentThread() && (i12 = i12 - 1) >= 0) {
            try {
                try {
                    Thread.sleep(5L);
                } catch (Throwable th) {
                    m.c(th);
                }
            } catch (Throwable th2) {
                m.c(th2);
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("chunkCount", Integer.valueOf(i11));
        tt.update("downloader", contentValues, "_id = ? ", new String[]{Integer.toString(i10)});
        return null;
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public boolean c(final DownloadInfo downloadInfo) {
        x();
        if (downloadInfo == null || tt == null) {
            return false;
        }
        com.byazt.zz.ve.ve(new Runnable() { // from class: com.byazt.wh.n.10
            @Override // java.lang.Runnable
            public void run() {
                n.this.uj(downloadInfo);
            }
        });
        return true;
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public DownloadInfo c(int i10, long j10, String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) 3);
        contentValues.put("totalBytes", Long.valueOf(j10));
        contentValues.put("eTag", str);
        if (!TextUtils.isEmpty(str2)) {
            contentValues.put("name", str2);
        }
        update(i10, contentValues);
        return null;
    }

    @Override // com.byazt.wh.ve, com.byazt.zz.da
    public DownloadInfo c(int i10, long j10) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) 4);
        contentValues.put("curBytes", Long.valueOf(j10));
        update(i10, contentValues);
        return null;
    }

    @Override // com.byazt.zz.da
    public boolean c(int i10, Map<Long, i> map) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        x();
        if (tt == null) {
            return false;
        }
        JSONArray jSONArray = new JSONArray();
        try {
            Iterator<Long> it2 = map.keySet().iterator();
            while (it2.hasNext()) {
                jSONArray.put(map.get(Long.valueOf(it2.next().longValue())).sl());
            }
        } catch (Throwable th) {
            m.c(th);
        }
        SQLiteStatement sQLiteStatementUj = this.f21539n.uj();
        synchronized (sQLiteStatementUj) {
            sQLiteStatementUj.clearBindings();
            sQLiteStatementUj.bindLong(1, i10);
            sQLiteStatementUj.bindString(2, jSONArray.toString());
            sQLiteStatementUj.execute();
        }
        com.byazt.x.c.tt("SqlDownloadCache", "updateSegments cost=" + com.byazt.w.a.ve(jCurrentTimeMillis));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10, ContentValues contentValues) {
        int i11 = 10;
        while (tt.isDbLockedByCurrentThread() && (i11 = i11 - 1) >= 0) {
            try {
                try {
                    Thread.sleep(5L);
                } catch (Throwable th) {
                    m.c(th);
                }
            } catch (Throwable th2) {
                m.c(th2);
                return;
            }
        }
        try {
            tt.update("downloader", contentValues, "_id = ? ", new String[]{String.valueOf(i10)});
        } catch (Throwable th3) {
            m.c(th3);
        }
    }

    @Override // com.byazt.wh.ve
    public void c(tt ttVar) {
        this.f21538c = ttVar;
    }

    public void c(SparseArray<DownloadInfo> sparseArray, SparseArray<List<com.byazt.t.tt>> sparseArray2) {
        try {
            HashMap mapC = com.byazt.w.a.c(sparseArray);
            HashMap mapC2 = com.byazt.w.a.c(sparseArray2);
            tt ttVar = this.f21538c;
            if (ttVar != null) {
                ttVar.c(mapC, mapC2);
            }
        } catch (Throwable unused) {
        }
    }
}
