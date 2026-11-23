package com.tencent.stat;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.umeng.analytics.pro.aw;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
class w extends SQLiteOpenHelper {
    public w(Context context) {
        super(context, com.tencent.stat.common.k.v(context), (SQLiteDatabase.CursorFactory) null, 3);
    }

    private void a(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor = null;
        String string = null;
        try {
            Cursor cursorQuery = sQLiteDatabase.query(aw.f84332m, null, null, null, null, null, null);
            try {
                ContentValues contentValues = new ContentValues();
                if (cursorQuery.moveToNext()) {
                    string = cursorQuery.getString(0);
                    cursorQuery.getInt(1);
                    cursorQuery.getString(2);
                    cursorQuery.getLong(3);
                    contentValues.put("uid", com.tencent.stat.common.k.c(string));
                }
                if (string != null) {
                    sQLiteDatabase.update(aw.f84332m, contentValues, "uid=?", new String[]{string});
                }
                cursorQuery.close();
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
                try {
                    n.f83949e.e(th);
                } finally {
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void b(SQLiteDatabase sQLiteDatabase) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = sQLiteDatabase.query(com.umeng.analytics.pro.f.ax, null, null, null, null, null, null);
            ArrayList<x> arrayList = new ArrayList();
            while (cursorQuery.moveToNext()) {
                arrayList.add(new x(cursorQuery.getLong(0), cursorQuery.getString(1), cursorQuery.getInt(2), cursorQuery.getInt(3)));
            }
            ContentValues contentValues = new ContentValues();
            for (x xVar : arrayList) {
                contentValues.put("content", com.tencent.stat.common.k.c(xVar.f83974b));
                sQLiteDatabase.update(com.umeng.analytics.pro.f.ax, contentValues, "event_id=?", new String[]{Long.toString(xVar.f83973a)});
            }
        } catch (Throwable th) {
            try {
                n.f83949e.e(th);
            } finally {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table if not exists events(event_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, content TEXT, status INTEGER, send_count INTEGER, timestamp LONG)");
        sQLiteDatabase.execSQL("create table if not exists user(uid TEXT PRIMARY KEY, user_type INTEGER, app_ver TEXT, ts INTEGER)");
        sQLiteDatabase.execSQL("create table if not exists config(type INTEGER PRIMARY KEY NOT NULL, content TEXT, md5sum TEXT, version INTEGER)");
        sQLiteDatabase.execSQL("create table if not exists keyvalues(key TEXT PRIMARY KEY NOT NULL, value TEXT)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        n.f83949e.debug("upgrade DB from oldVersion " + i10 + " to newVersion " + i11);
        if (i10 == 1) {
            sQLiteDatabase.execSQL("create table if not exists keyvalues(key TEXT PRIMARY KEY NOT NULL, value TEXT)");
            a(sQLiteDatabase);
            b(sQLiteDatabase);
        }
        if (i10 == 2) {
            a(sQLiteDatabase);
            b(sQLiteDatabase);
        }
    }
}
