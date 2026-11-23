package com.sigmob.sdk.downloader.core.breakpoint;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.SparseArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class e extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f80380a = "taskFileDirty";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f80381b = "sig_breakpoint.db";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f80382c = 3;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f80383d = "FileDownloadResponseFilename";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f80384e = "breakpoint";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f80385f = "block";

    private interface a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final String f80386a = "CREATE TABLE IF NOT EXISTS breakpoint( id INTEGER PRIMARY KEY, url VARCHAR NOT NULL, etag VARCHAR, parent_path VARCHAR NOT NULL, filename VARCHAR, task_only_parent_path TINYINT(1) DEFAULT 0, chunked TINYINT(1) DEFAULT 0)";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f80387b = "CREATE TABLE IF NOT EXISTS block( id INTEGER PRIMARY KEY AUTOINCREMENT, breakpoint_id INTEGER, block_index INTEGER, start_offset INTEGER, content_length INTEGER, current_offset INTEGER)";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f80388c = "CREATE TABLE IF NOT EXISTS FileDownloadResponseFilename( url VARCHAR NOT NULL PRIMARY KEY, filename VARCHAR NOT NULL)";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f80389d = "CREATE TABLE IF NOT EXISTS taskFileDirty( id INTEGER PRIMARY KEY)";
    }

    private interface b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final String f80390a = "CREATE TABLE IF NOT EXISTS FileDownloadResponseFilename( url VARCHAR NOT NULL PRIMARY KEY, filename VARCHAR NOT NULL)";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f80391b = "CREATE TABLE IF NOT EXISTS taskFileDirty( id INTEGER PRIMARY KEY)";
    }

    private interface c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final String f80392a = "SELECT * FROM taskFileDirty";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f80393b = "SELECT * FROM breakpoint";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final String f80394c = "SELECT * FROM block";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final String f80395d = "SELECT * FROM FileDownloadResponseFilename";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final String f80396e = "SELECT filename FROM FileDownloadResponseFilename WHERE url = ?";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final String f80397f = "SELECT id FROM breakpoint WHERE id = ? LIMIT 1";
    }

    public e(Context context) {
        super(context, f80381b, (SQLiteDatabase.CursorFactory) null, 3);
    }

    private static ContentValues a(int breakpointId, int index, com.sigmob.sdk.downloader.core.breakpoint.a info) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(f.f80405h, Integer.valueOf(breakpointId));
        contentValues.put(f.f80406i, Integer.valueOf(index));
        contentValues.put(f.f80407j, Long.valueOf(info.b()));
        contentValues.put(f.f80408k, Long.valueOf(info.d()));
        contentValues.put(f.f80409l, Long.valueOf(info.a()));
        return contentValues;
    }

    private static ContentValues c(com.sigmob.sdk.downloader.core.breakpoint.c cVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Integer.valueOf(cVar.f80364a));
        contentValues.put("url", cVar.l());
        contentValues.put(f.f80400c, cVar.k());
        contentValues.put(f.f80401d, cVar.f80365b.getAbsolutePath());
        contentValues.put(f.f80402e, cVar.m());
        contentValues.put(f.f80403f, Integer.valueOf(cVar.d() ? 1 : 0));
        contentValues.put("chunked", Integer.valueOf(cVar.b() ? 1 : 0));
        return contentValues;
    }

    public SparseArray<com.sigmob.sdk.downloader.core.breakpoint.c> b() throws Throwable {
        Cursor cursor;
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Cursor cursorRawQuery = null;
        try {
            Cursor cursorRawQuery2 = writableDatabase.rawQuery(c.f80393b, null);
            while (cursorRawQuery2.moveToNext()) {
                try {
                    arrayList.add(new d(cursorRawQuery2));
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorRawQuery;
                    cursorRawQuery = cursorRawQuery2;
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            cursorRawQuery = writableDatabase.rawQuery(c.f80394c, null);
            while (cursorRawQuery.moveToNext()) {
                arrayList2.add(new com.sigmob.sdk.downloader.core.breakpoint.b(cursorRawQuery));
            }
            cursorRawQuery2.close();
            cursorRawQuery.close();
            SparseArray<com.sigmob.sdk.downloader.core.breakpoint.c> sparseArray = new SparseArray<>();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                com.sigmob.sdk.downloader.core.breakpoint.c cVarH = ((d) it2.next()).h();
                Iterator it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    com.sigmob.sdk.downloader.core.breakpoint.b bVar = (com.sigmob.sdk.downloader.core.breakpoint.b) it3.next();
                    if (bVar.a() == cVarH.f80364a) {
                        cVarH.a(bVar.e());
                        it3.remove();
                    }
                }
                sparseArray.put(cVarH.f80364a, cVarH);
            }
            return sparseArray;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    public void d(int breakpointId) {
        getWritableDatabase().delete(f80385f, "breakpoint_id = ?", new String[]{String.valueOf(breakpointId)});
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase db2) {
        db2.execSQL(a.f80386a);
        db2.execSQL(a.f80387b);
        db2.execSQL("CREATE TABLE IF NOT EXISTS FileDownloadResponseFilename( url VARCHAR NOT NULL PRIMARY KEY, filename VARCHAR NOT NULL)");
        db2.execSQL("CREATE TABLE IF NOT EXISTS taskFileDirty( id INTEGER PRIMARY KEY)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase db2, int oldVersion, int newVersion) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase db2) {
        super.onOpen(db2);
        setWriteAheadLoggingEnabled(true);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase db2, int oldVersion, int newVersion) {
        if (oldVersion == 1 && newVersion == 2) {
            db2.execSQL("CREATE TABLE IF NOT EXISTS FileDownloadResponseFilename( url VARCHAR NOT NULL PRIMARY KEY, filename VARCHAR NOT NULL)");
        }
        if (oldVersion <= 2) {
            db2.execSQL("CREATE TABLE IF NOT EXISTS taskFileDirty( id INTEGER PRIMARY KEY)");
        }
    }

    public List<Integer> a() {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = getWritableDatabase().rawQuery(c.f80392a, null);
        while (cursorRawQuery.moveToNext()) {
            try {
                arrayList.add(Integer.valueOf(cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("id"))));
            } catch (Throwable th) {
                if (cursorRawQuery != null) {
                    try {
                        cursorRawQuery.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        cursorRawQuery.close();
        return arrayList;
    }

    public void b(int id2) {
        getWritableDatabase().delete(f80380a, "id = ?", new String[]{String.valueOf(id2)});
    }

    public HashMap<String, String> c() {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        HashMap<String, String> map = new HashMap<>();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = writableDatabase.rawQuery(c.f80395d, null);
            while (cursorRawQuery.moveToNext()) {
                int columnIndex = cursorRawQuery.getColumnIndex("url");
                String string = "";
                String string2 = columnIndex >= 0 ? cursorRawQuery.getString(columnIndex) : "";
                int columnIndex2 = cursorRawQuery.getColumnIndex(f.f80402e);
                if (columnIndex2 >= 0) {
                    string = cursorRawQuery.getString(columnIndex2);
                }
                map.put(string2, string);
            }
            cursorRawQuery.close();
            return map;
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    public void a(int id2) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("id", Integer.valueOf(id2));
        writableDatabase.insert(f80380a, null, contentValues);
    }

    public void b(com.sigmob.sdk.downloader.core.breakpoint.c info) throws IOException {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            Cursor cursorRawQuery = getWritableDatabase().rawQuery(c.f80397f, new String[]{Integer.toString(info.f80364a)});
            try {
                if (!cursorRawQuery.moveToNext()) {
                    cursorRawQuery.close();
                    writableDatabase.endTransaction();
                    return;
                }
                c(info.f80364a);
                a(info);
                writableDatabase.setTransactionSuccessful();
                cursorRawQuery.close();
                writableDatabase.endTransaction();
                return;
            } catch (Throwable th) {
                if (cursorRawQuery != null) {
                    try {
                        cursorRawQuery.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            writableDatabase.endTransaction();
            throw th3;
        }
        writableDatabase.endTransaction();
        throw th3;
    }

    public void c(int id2) {
        getWritableDatabase().delete(f80384e, "id = ?", new String[]{String.valueOf(id2)});
        d(id2);
    }

    public void a(com.sigmob.sdk.downloader.core.breakpoint.c info) throws IOException {
        int iG = info.g();
        SQLiteDatabase writableDatabase = getWritableDatabase();
        for (int i10 = 0; i10 < iG; i10++) {
            com.sigmob.sdk.downloader.core.breakpoint.a aVarB = info.b(i10);
            if (writableDatabase.insert(f80385f, null, a(info.f80364a, i10, aVarB)) == -1) {
                throw new com.sigmob.sdk.downloader.core.exception.h("insert block " + aVarB + " failed!");
            }
        }
        if (writableDatabase.insert(f80384e, null, c(info)) != -1) {
            return;
        }
        throw new com.sigmob.sdk.downloader.core.exception.h("insert info " + info + " failed!");
    }

    public void a(com.sigmob.sdk.downloader.core.breakpoint.c info, int blockIndex, long newCurrentOffset) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(f.f80409l, Long.valueOf(newCurrentOffset));
        getWritableDatabase().update(f80385f, contentValues, "breakpoint_id = ? AND block_index = ?", new String[]{Integer.toString(info.f80364a), Integer.toString(blockIndex)});
    }

    public void a(String url, String filename) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues(2);
        contentValues.put("url", url);
        contentValues.put(f.f80402e, filename);
        synchronized (url.intern()) {
            Cursor cursor = null;
            try {
                try {
                    Cursor cursorRawQuery = writableDatabase.rawQuery(c.f80396e, new String[]{url});
                    try {
                        if (!cursorRawQuery.moveToFirst()) {
                            writableDatabase.insert(f80383d, null, contentValues);
                        } else if (!filename.equals(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(f.f80402e)))) {
                            writableDatabase.replace(f80383d, null, contentValues);
                        }
                        cursorRawQuery.close();
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorRawQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }
}
