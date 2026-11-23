package com.byazt.jd;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.byazt.nr.m;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, TTAdConstant.STYLE_SIZE_RADIO_3_2, 71})
public class x extends SQLiteOpenHelper {
    public x(Context context, String str, int i10) {
        super(new com.byazt.nys.c(context), str, (SQLiteDatabase.CursorFactory) null, i10);
        com.byazt.eu.tt.c("DBHelper", "DatabaseHelper ........");
    }

    private static String c() {
        return "CREATE TABLE IF NOT EXISTS adevent (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0, encrypt INTEGER default 0)";
    }

    private static String tt() {
        return "CREATE TABLE IF NOT EXISTS adevent_applog (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0, encrypt INTEGER default 0)";
    }

    private static String uj() {
        return "ALTER TABLE adevent_applog ADD COLUMN encrypt INTEGER default 0";
    }

    private static String ve() {
        return "ALTER TABLE adevent ADD COLUMN encrypt INTEGER default 0";
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            c(sQLiteDatabase);
        } catch (Throwable th) {
            m.c(th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        try {
            com.byazt.eu.tt.c("DBHelper", "onUpgrade....数据库版本升级.....");
            if (i10 == 1 || i10 == 2) {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'ad_video_info';");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'show_freqctl';");
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'show_pacing';");
            } else if (i10 != 3) {
                return;
            }
            sQLiteDatabase.execSQL(tt());
            c(sQLiteDatabase, i10, i11);
        } catch (Throwable th) {
            m.c(th);
        }
    }

    private void c(SQLiteDatabase sQLiteDatabase) {
        com.byazt.eu.tt.c("DBHelper", "initDB........");
        try {
            sQLiteDatabase.execSQL(c());
        } catch (Throwable th) {
            m.c(th);
        }
        try {
            sQLiteDatabase.execSQL(tt());
        } catch (Throwable th2) {
            m.c(th2);
        }
    }

    private void c(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        try {
            sQLiteDatabase.execSQL(ve());
        } catch (Throwable th) {
            m.c(th);
        }
        try {
            sQLiteDatabase.execSQL(uj());
        } catch (Throwable th2) {
            m.c(th2);
        }
    }
}
