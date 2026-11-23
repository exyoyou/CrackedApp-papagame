package com.sigmob.sdk.videocache.sourcestorage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.sigmob.sdk.videocache.n;
import com.sigmob.sdk.videocache.u;

/* JADX INFO: loaded from: classes3.dex */
class a extends SQLiteOpenHelper implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f81982a = "SourceInfo";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f81983b = "_id";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f81984c = "url";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f81986e = "mime";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f81988g = "CREATE TABLE SourceInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,url TEXT NOT NULL,mime TEXT,length INTEGER);";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f81985d = "length";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String[] f81987f = {"_id", "url", f81985d, "mime"};

    a(Context context) {
        super(context, "AndroidVideoCache.db", (SQLiteDatabase.CursorFactory) null, 1);
        n.a(context);
    }

    private ContentValues a(u sourceInfo) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("url", sourceInfo.f81989a);
        contentValues.put(f81985d, Long.valueOf(sourceInfo.f81990b));
        contentValues.put("mime", sourceInfo.f81991c);
        return contentValues;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase db2) {
        n.a(db2);
        db2.execSQL(f81988g);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase db2, int oldVersion, int newVersion) {
        throw new IllegalStateException("Should not be called. There is no any migration");
    }

    private u a(Cursor cursor) {
        return new u(cursor.getString(cursor.getColumnIndexOrThrow("url")), cursor.getLong(cursor.getColumnIndexOrThrow(f81985d)), cursor.getString(cursor.getColumnIndexOrThrow("mime")));
    }

    @Override // com.sigmob.sdk.videocache.sourcestorage.c
    public u a(String url) throws Throwable {
        Throwable th;
        Cursor cursorQuery;
        n.a(url);
        u uVarA = null;
        try {
            cursorQuery = getReadableDatabase().query(f81982a, f81987f, "url=?", new String[]{url}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        uVarA = a(cursorQuery);
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
            return uVarA;
        } catch (Throwable th3) {
            th = th3;
            cursorQuery = null;
        }
    }

    @Override // com.sigmob.sdk.videocache.sourcestorage.c
    public void a() {
        close();
    }

    @Override // com.sigmob.sdk.videocache.sourcestorage.c
    public void a(String url, u sourceInfo) {
        n.a(url, sourceInfo);
        boolean z10 = a(url) != null;
        ContentValues contentValuesA = a(sourceInfo);
        if (z10) {
            getWritableDatabase().update(f81982a, contentValuesA, "url=?", new String[]{url});
        } else {
            getWritableDatabase().insert(f81982a, null, contentValuesA);
        }
    }
}
