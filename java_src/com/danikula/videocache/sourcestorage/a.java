package com.danikula.videocache.sourcestorage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.danikula.videocache.n;
import com.danikula.videocache.r;

/* JADX INFO: loaded from: classes9.dex */
class a extends SQLiteOpenHelper implements c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f26104b = "SourceInfo";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f26105c = "_id";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f26106d = "url";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f26108f = "mime";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f26110h = "CREATE TABLE SourceInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,url TEXT NOT NULL,mime TEXT,length INTEGER);";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f26107e = "length";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String[] f26109g = {"_id", "url", f26107e, "mime"};

    a(Context context) {
        super(context, "AndroidVideoCache.db", (SQLiteDatabase.CursorFactory) null, 1);
        n.d(context);
    }

    private ContentValues b(r rVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("url", rVar.f26100a);
        contentValues.put(f26107e, Long.valueOf(rVar.f26101b));
        contentValues.put("mime", rVar.f26102c);
        return contentValues;
    }

    private r c(Cursor cursor) {
        return new r(cursor.getString(cursor.getColumnIndexOrThrow("url")), cursor.getLong(cursor.getColumnIndexOrThrow(f26107e)), cursor.getString(cursor.getColumnIndexOrThrow("mime")));
    }

    @Override // com.danikula.videocache.sourcestorage.c
    public void a(String str, r rVar) {
        n.a(str, rVar);
        boolean z10 = get(str) != null;
        ContentValues contentValuesB = b(rVar);
        if (z10) {
            getWritableDatabase().update(f26104b, contentValuesB, "url=?", new String[]{str});
        } else {
            getWritableDatabase().insert(f26104b, null, contentValuesB);
        }
    }

    @Override // com.danikula.videocache.sourcestorage.c
    public r get(String str) throws Throwable {
        Throwable th;
        Cursor cursorQuery;
        n.d(str);
        r rVarC = null;
        try {
            cursorQuery = getReadableDatabase().query(f26104b, f26109g, "url=?", new String[]{str}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        rVarC = c(cursorQuery);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return rVarC;
        } catch (Throwable th3) {
            th = th3;
            cursorQuery = null;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        n.d(sQLiteDatabase);
        sQLiteDatabase.execSQL(f26110h);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        throw new IllegalStateException("Should not be called. There is no any migration");
    }

    @Override // com.danikula.videocache.sourcestorage.c
    public void release() {
        close();
    }
}
