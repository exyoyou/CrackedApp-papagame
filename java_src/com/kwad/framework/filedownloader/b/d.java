package com.kwad.framework.filedownloader.b;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.kwad.framework.filedownloader.f.f;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements com.kwad.framework.filedownloader.b.a {
    private static boolean aAF;
    private final e aAG = new e(com.kwad.framework.filedownloader.f.c.Dx());
    private SQLiteDatabase aAH;

    public class a implements com.kwad.framework.filedownloader.b.a.InterfaceC0904a {
        private final SparseArray<com.kwad.framework.filedownloader.d.c> aAI = new SparseArray<>();
        private b aAJ;
        private final SparseArray<com.kwad.framework.filedownloader.d.c> aAv;
        private final SparseArray<List<com.kwad.framework.filedownloader.d.a>> aAw;

        a(SparseArray<com.kwad.framework.filedownloader.d.c> sparseArray, SparseArray<List<com.kwad.framework.filedownloader.d.a>> sparseArray2) {
            this.aAv = sparseArray;
            this.aAw = sparseArray2;
        }

        @Override // com.kwad.framework.filedownloader.b.a.InterfaceC0904a
        public final void BS() {
            b bVar = this.aAJ;
            if (bVar != null) {
                bVar.BS();
            }
            try {
                SQLiteDatabase sQLiteDatabaseBT = d.this.BT();
                if (sQLiteDatabaseBT == null) {
                    return;
                }
                int size = this.aAI.size();
                try {
                    if (size < 0) {
                        return;
                    }
                    try {
                        sQLiteDatabaseBT.beginTransaction();
                        for (int i10 = 0; i10 < size; i10++) {
                            int iKeyAt = this.aAI.keyAt(i10);
                            com.kwad.framework.filedownloader.d.c cVar = this.aAI.get(iKeyAt);
                            sQLiteDatabaseBT.delete("ksad_file_download", "_id = ?", new String[]{String.valueOf(iKeyAt)});
                            sQLiteDatabaseBT.insert("ksad_file_download", null, cVar.CV());
                            if (cVar.Da() > 1) {
                                List<com.kwad.framework.filedownloader.d.a> listCD = d.this.cD(iKeyAt);
                                if (listCD.size() > 0) {
                                    sQLiteDatabaseBT.delete("ksad_file_download_connection", "id = ?", new String[]{String.valueOf(iKeyAt)});
                                    for (com.kwad.framework.filedownloader.d.a aVar : listCD) {
                                        aVar.setId(cVar.getId());
                                        sQLiteDatabaseBT.insert("ksad_file_download_connection", null, aVar.CV());
                                    }
                                }
                            }
                        }
                        SparseArray<com.kwad.framework.filedownloader.d.c> sparseArray = this.aAv;
                        if (sparseArray != null && this.aAw != null) {
                            synchronized (sparseArray) {
                                int size2 = this.aAv.size();
                                for (int i11 = 0; i11 < size2; i11++) {
                                    int id2 = this.aAv.valueAt(i11).getId();
                                    List<com.kwad.framework.filedownloader.d.a> listCD2 = d.this.cD(id2);
                                    if (listCD2 != null && listCD2.size() > 0) {
                                        synchronized (this.aAw) {
                                            this.aAw.put(id2, listCD2);
                                        }
                                    }
                                }
                            }
                        }
                        sQLiteDatabaseBT.setTransactionSuccessful();
                        try {
                            sQLiteDatabaseBT.endTransaction();
                        } catch (Exception e10) {
                            d.printStackTrace(e10);
                        }
                    } catch (SQLiteException e11) {
                        d.this.a(e11);
                        try {
                            sQLiteDatabaseBT.endTransaction();
                        } catch (Exception e12) {
                            d.printStackTrace(e12);
                        }
                    } catch (Exception e13) {
                        d.printStackTrace(e13);
                        try {
                            sQLiteDatabaseBT.endTransaction();
                        } catch (Exception e14) {
                            d.printStackTrace(e14);
                        }
                    }
                } catch (Throwable th) {
                    try {
                        sQLiteDatabaseBT.endTransaction();
                    } catch (Exception e15) {
                        d.printStackTrace(e15);
                    }
                    throw th;
                }
            } catch (Throwable unused) {
            }
        }

        @Override // com.kwad.framework.filedownloader.b.a.InterfaceC0904a
        public final void a(int i10, com.kwad.framework.filedownloader.d.c cVar) {
            this.aAI.put(i10, cVar);
        }

        @Override // com.kwad.framework.filedownloader.b.a.InterfaceC0904a
        public final void c(com.kwad.framework.filedownloader.d.c cVar) {
            SparseArray<com.kwad.framework.filedownloader.d.c> sparseArray = this.aAv;
            if (sparseArray != null) {
                synchronized (sparseArray) {
                    this.aAv.put(cVar.getId(), cVar);
                }
            }
        }

        @Override // java.lang.Iterable
        public final Iterator<com.kwad.framework.filedownloader.d.c> iterator() {
            b bVar = d.this.new b();
            this.aAJ = bVar;
            return bVar;
        }
    }

    class b implements Iterator<com.kwad.framework.filedownloader.d.c> {
        private Cursor aAL;
        private final List<Integer> aAM = new ArrayList();
        private int aAN;

        b() {
            try {
                this.aAL = d.this.BT().query("ksad_file_download", null, null, null, null, null, null);
            } catch (SQLiteException e10) {
                d.this.a(e10);
            } catch (Exception e11) {
                d.printStackTrace(e11);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // java.util.Iterator
        /* JADX INFO: renamed from: BU, reason: merged with bridge method [inline-methods] */
        public com.kwad.framework.filedownloader.d.c next() {
            com.kwad.framework.filedownloader.d.c cVarD = d.d(this.aAL);
            this.aAN = cVarD.getId();
            return cVarD;
        }

        final void BS() {
            Cursor cursor = this.aAL;
            if (cursor == null) {
                return;
            }
            cursor.close();
            if (this.aAM.isEmpty()) {
                return;
            }
            String strJoin = TextUtils.join(", ", this.aAM);
            if (com.kwad.framework.filedownloader.f.d.aDr) {
                com.kwad.framework.filedownloader.f.d.c(this, "delete %s", strJoin);
            }
            try {
                SQLiteDatabase sQLiteDatabaseBT = d.this.BT();
                sQLiteDatabaseBT.execSQL(f.c("DELETE FROM %s WHERE %s IN (%s);", "ksad_file_download", "_id", strJoin));
                sQLiteDatabaseBT.execSQL(f.c("DELETE FROM %s WHERE %s IN (%s);", "ksad_file_download_connection", "id", strJoin));
            } catch (SQLiteException e10) {
                d.this.a(e10);
            } catch (Exception e11) {
                d.printStackTrace(e11);
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            try {
                Cursor cursor = this.aAL;
                if (cursor != null) {
                    return cursor.moveToNext();
                }
                return false;
            } catch (Throwable th) {
                d.printStackTrace(th);
                return false;
            }
        }

        @Override // java.util.Iterator
        public final void remove() {
            this.aAM.add(Integer.valueOf(this.aAN));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SQLiteDatabase BT() {
        if (this.aAH == null) {
            this.aAH = this.aAG.getWritableDatabase();
        }
        return this.aAH;
    }

    private void d(com.kwad.framework.filedownloader.d.c cVar) {
        try {
            BT().insert("ksad_file_download", null, cVar.CV());
        } catch (SQLiteException e10) {
            cVar.ch(e10.toString());
            cVar.d((byte) -1);
            a(cVar.getId(), e10);
        } catch (Exception e11) {
            printStackTrace(e11);
        }
    }

    private static void o(Throwable th) {
        if (th != null) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void printStackTrace(Throwable th) {
        o(th);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final com.kwad.framework.filedownloader.b.a.InterfaceC0904a BR() {
        return new a(null, null);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void b(com.kwad.framework.filedownloader.d.c cVar) {
        if (cVar == null) {
            com.kwad.framework.filedownloader.f.d.d(this, "update but model == null!", new Object[0]);
            return;
        }
        if (cC(cVar.getId()) == null) {
            d(cVar);
            return;
        }
        try {
            BT().update("ksad_file_download", cVar.CV(), "_id = ? ", new String[]{String.valueOf(cVar.getId())});
        } catch (SQLiteException e10) {
            cVar.ch(e10.toString());
            cVar.d((byte) -1);
            a(cVar.getId(), e10);
        } catch (Exception e11) {
            printStackTrace(e11);
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void c(int i10, long j10) {
        cF(i10);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void cB(int i10) {
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0048: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]) (LINE:73), block:B:24:0x0048 */
    @Override // com.kwad.framework.filedownloader.b.a
    public final com.kwad.framework.filedownloader.d.c cC(int i10) throws Throwable {
        Cursor cursorRawQuery;
        Closeable closeable;
        Closeable closeable2 = null;
        try {
            try {
                cursorRawQuery = BT().rawQuery(f.c("SELECT * FROM %s WHERE %s = ?", "ksad_file_download", "_id"), new String[]{Integer.toString(i10)});
                try {
                    if (cursorRawQuery.moveToNext()) {
                        com.kwad.framework.filedownloader.d.c cVarD = d(cursorRawQuery);
                        com.kwad.sdk.crash.utils.b.closeQuietly(cursorRawQuery);
                        return cVarD;
                    }
                } catch (SQLiteException e10) {
                    e = e10;
                    a(i10, e);
                } catch (Exception e11) {
                    e = e11;
                    printStackTrace(e);
                }
            } catch (Throwable th) {
                th = th;
                closeable2 = closeable;
                com.kwad.sdk.crash.utils.b.closeQuietly(closeable2);
                throw th;
            }
        } catch (SQLiteException e12) {
            e = e12;
            cursorRawQuery = null;
        } catch (Exception e13) {
            e = e13;
            cursorRawQuery = null;
        } catch (Throwable th2) {
            th = th2;
            com.kwad.sdk.crash.utils.b.closeQuietly(closeable2);
            throw th;
        }
        com.kwad.sdk.crash.utils.b.closeQuietly(cursorRawQuery);
        return null;
    }

    @Override // com.kwad.framework.filedownloader.b.a
    @SuppressLint({"Range"})
    public final List<com.kwad.framework.filedownloader.d.a> cD(int i10) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = BT().rawQuery(f.c("SELECT * FROM %s WHERE %s = ?", "ksad_file_download_connection", "id"), new String[]{Integer.toString(i10)});
                while (cursorRawQuery.moveToNext()) {
                    com.kwad.framework.filedownloader.d.a aVar = new com.kwad.framework.filedownloader.d.a();
                    aVar.setId(i10);
                    aVar.setIndex(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("connectionIndex")));
                    aVar.setStartOffset(cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("startOffset")));
                    aVar.ad(cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("currentOffset")));
                    aVar.ae(cursorRawQuery.getLong(cursorRawQuery.getColumnIndex("endOffset")));
                    arrayList.add(aVar);
                }
            } catch (SQLiteException e10) {
                a(i10, e10);
            } catch (Exception e11) {
                printStackTrace(e11);
            }
            com.kwad.sdk.crash.utils.b.closeQuietly(cursorRawQuery);
            return arrayList;
        } catch (Throwable th) {
            com.kwad.sdk.crash.utils.b.closeQuietly(cursorRawQuery);
            throw th;
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void cE(int i10) {
        try {
            BT().execSQL("DELETE FROM ksad_file_download_connection WHERE id = " + i10);
        } catch (SQLiteException e10) {
            printStackTrace(e10);
        } catch (Exception e11) {
            printStackTrace(e11);
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final boolean cF(int i10) {
        try {
            return BT().delete("ksad_file_download", "_id = ?", new String[]{String.valueOf(i10)}) != 0;
        } catch (SQLiteException e10) {
            printStackTrace(e10);
            return false;
        } catch (Exception e11) {
            printStackTrace(e11);
            return false;
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void cG(int i10) {
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void clear() {
        try {
            BT().delete("ksad_file_download", null, null);
        } catch (SQLiteException e10) {
            a(e10);
        }
        try {
            BT().delete("ksad_file_download_connection", null, null);
        } catch (SQLiteException e11) {
            a(e11);
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void w(int i10, int i11) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("connectionCount", Integer.valueOf(i11));
        try {
            BT().update("ksad_file_download", contentValues, "_id = ? ", new String[]{Integer.toString(i10)});
        } catch (SQLiteException e10) {
            a(i10, e10);
        } catch (Exception e11) {
            printStackTrace(e11);
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(com.kwad.framework.filedownloader.d.a aVar) {
        if (aVar != null) {
            try {
                BT().insert("ksad_file_download_connection", null, aVar.CV());
            } catch (SQLiteException e10) {
                a(aVar.getId(), e10);
            } catch (Exception e11) {
                printStackTrace(e11);
            }
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i10, int i11, long j10) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("currentOffset", Long.valueOf(j10));
        try {
            BT().update("ksad_file_download_connection", contentValues, "id = ? AND connectionIndex = ?", new String[]{Integer.toString(i10), Integer.toString(i11)});
        } catch (SQLiteException e10) {
            a(i10, e10);
        } catch (Exception e11) {
            printStackTrace(e11);
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void d(int i10, long j10) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Byte) (byte) -2);
        contentValues.put("sofar", Long.valueOf(j10));
        a(i10, contentValues);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"Range"})
    public static com.kwad.framework.filedownloader.d.c d(Cursor cursor) {
        com.kwad.framework.filedownloader.d.c cVar = new com.kwad.framework.filedownloader.d.c();
        if (cursor == null) {
            return cVar;
        }
        cVar.setId(cursor.getInt(cursor.getColumnIndex("_id")));
        cVar.setUrl(cursor.getString(cursor.getColumnIndex("url")));
        cVar.d(cursor.getString(cursor.getColumnIndex("path")), cursor.getShort(cursor.getColumnIndex("pathAsDirectory")) == 1);
        cVar.d((byte) cursor.getShort(cursor.getColumnIndex("status")));
        cVar.af(cursor.getLong(cursor.getColumnIndex("sofar")));
        cVar.ah(cursor.getLong(cursor.getColumnIndex("total")));
        cVar.ch(cursor.getString(cursor.getColumnIndex("errMsg")));
        cVar.cg(cursor.getString(cursor.getColumnIndex(com.sigmob.sdk.downloader.core.breakpoint.f.f80400c)));
        cVar.ci(cursor.getString(cursor.getColumnIndex(com.sigmob.sdk.downloader.core.breakpoint.f.f80402e)));
        cVar.cV(cursor.getInt(cursor.getColumnIndex("connectionCount")));
        return cVar;
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void b(int i10, long j10) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Byte) (byte) 3);
        contentValues.put("sofar", Long.valueOf(j10));
        a(i10, contentValues);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i10, String str, long j10, long j11, int i11) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("sofar", Long.valueOf(j10));
        contentValues.put("total", Long.valueOf(j11));
        contentValues.put(com.sigmob.sdk.downloader.core.breakpoint.f.f80400c, str);
        contentValues.put("connectionCount", Integer.valueOf(i11));
        a(i10, contentValues);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i10, long j10, String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Byte) (byte) 2);
        contentValues.put("total", Long.valueOf(j10));
        contentValues.put(com.sigmob.sdk.downloader.core.breakpoint.f.f80400c, str);
        contentValues.put(com.sigmob.sdk.downloader.core.breakpoint.f.f80402e, str2);
        a(i10, contentValues);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i10, Throwable th, long j10) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("errMsg", th.toString());
        contentValues.put("status", (Byte) (byte) -1);
        contentValues.put("sofar", Long.valueOf(j10));
        a(i10, contentValues);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i10, Throwable th) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("errMsg", th.toString());
        contentValues.put("status", (Byte) (byte) 5);
        a(i10, contentValues);
    }

    public final com.kwad.framework.filedownloader.b.a.InterfaceC0904a a(SparseArray<com.kwad.framework.filedownloader.d.c> sparseArray, SparseArray<List<com.kwad.framework.filedownloader.d.a>> sparseArray2) {
        return new a(sparseArray, sparseArray2);
    }

    private void a(int i10, ContentValues contentValues) {
        try {
            BT().update("ksad_file_download", contentValues, "_id = ? ", new String[]{String.valueOf(i10)});
        } catch (SQLiteException e10) {
            a(i10, e10);
        } catch (Exception e11) {
            printStackTrace(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SQLiteException sQLiteException) {
        a(-1, sQLiteException);
    }

    private void a(int i10, @Nullable SQLiteException sQLiteException) {
        if (sQLiteException instanceof SQLiteFullException) {
            if (i10 != -1) {
                cF(i10);
                cE(i10);
            }
            o(sQLiteException);
            aAF = true;
            return;
        }
        printStackTrace(sQLiteException);
    }
}
