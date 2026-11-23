package com.beizi.fusion.a;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.beizi.fusion.tool.ac;

/* JADX INFO: loaded from: classes6.dex */
public class a extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile a f10056a;

    private a(Context context) {
        super(context, "beizi_ad.db", (SQLiteDatabase.CursorFactory) null, 2);
    }

    static a a(Context context) {
        if (f10056a == null) {
            synchronized (a.class) {
                if (f10056a == null) {
                    f10056a = new a(context.getApplicationContext());
                }
            }
        }
        return f10056a;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        if (i11 > i10) {
            Cursor cursorQuery = null;
            try {
                cursorQuery = sQLiteDatabase.query("Sqlite_master", new String[]{"name"}, "type=?", new String[]{"table"}, null, null, null);
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(0);
                    if (string != null && string.startsWith("T_")) {
                        ac.c("BeiZis", "before alter table ");
                        sQLiteDatabase.execSQL("alter table " + string + " add column space_id");
                    }
                }
            } catch (Exception unused) {
                if (cursorQuery == null) {
                    return;
                }
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
            cursorQuery.close();
        }
    }
}
