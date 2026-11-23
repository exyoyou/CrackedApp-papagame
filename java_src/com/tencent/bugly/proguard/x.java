package com.tencent.bugly.proguard;

import android.annotation.TargetApi;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.File;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class x extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f83689a = "bugly_db";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f83690b = 16;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Context f83691c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<o> f83692d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(Context context, List<o> list) {
        super(context, f83689a + "_", (SQLiteDatabase.CursorFactory) null, f83690b);
        aa.a(context).getClass();
        this.f83691c = context;
        this.f83692d = list;
    }

    private synchronized boolean a(SQLiteDatabase sQLiteDatabase) {
        try {
            String[] strArr = {"t_lr", "t_ui", "t_pf"};
            for (int i10 = 0; i10 < 3; i10++) {
                sQLiteDatabase.execSQL("DROP TABLE IF EXISTS ".concat(String.valueOf(strArr[i10])), new String[0]);
            }
        } catch (Throwable th) {
            if (!al.b(th)) {
                th.printStackTrace();
            }
            return false;
        }
        return true;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final synchronized SQLiteDatabase getReadableDatabase() {
        SQLiteDatabase readableDatabase;
        readableDatabase = null;
        int i10 = 0;
        while (readableDatabase == null && i10 < 5) {
            i10++;
            try {
                readableDatabase = super.getReadableDatabase();
            } catch (Throwable unused) {
                al.d("[Database] Try to get db(count: %d).", Integer.valueOf(i10));
                if (i10 == 5) {
                    al.e("[Database] Failed to get db.", new Object[0]);
                }
                try {
                    Thread.sleep(200L);
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
            }
        }
        return readableDatabase;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final synchronized SQLiteDatabase getWritableDatabase() {
        SQLiteDatabase writableDatabase;
        writableDatabase = null;
        int i10 = 0;
        while (writableDatabase == null && i10 < 5) {
            i10++;
            try {
                writableDatabase = super.getWritableDatabase();
            } catch (Throwable unused) {
                al.d("[Database] Try to get db(count: %d).", Integer.valueOf(i10));
                if (i10 == 5) {
                    al.e("[Database] Failed to get db.", new Object[0]);
                }
                try {
                    Thread.sleep(200L);
                } catch (InterruptedException e10) {
                    e10.printStackTrace();
                }
            }
        }
        if (writableDatabase == null) {
            al.d("[Database] db error delay error record 1min.", new Object[0]);
        }
        return writableDatabase;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final synchronized void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.setLength(0);
            sb2.append(" CREATE TABLE IF NOT EXISTS t_ui ( _id INTEGER PRIMARY KEY , _tm int , _ut int , _tp int , _dt blob , _pc text ) ");
            al.c(sb2.toString(), new Object[0]);
            sQLiteDatabase.execSQL(sb2.toString(), new String[0]);
            sb2.setLength(0);
            sb2.append(" CREATE TABLE IF NOT EXISTS t_lr ( _id INTEGER PRIMARY KEY , _tp int , _tm int , _pc text , _th text , _dt blob ) ");
            al.c(sb2.toString(), new Object[0]);
            sQLiteDatabase.execSQL(sb2.toString(), new String[0]);
            sb2.setLength(0);
            sb2.append(" CREATE TABLE IF NOT EXISTS t_pf ( _id integer , _tp text , _tm int , _dt blob,primary key(_id,_tp )) ");
            al.c(sb2.toString(), new Object[0]);
            sQLiteDatabase.execSQL(sb2.toString(), new String[0]);
            sb2.setLength(0);
            sb2.append(" CREATE TABLE IF NOT EXISTS t_cr ( _id INTEGER PRIMARY KEY , _tm int , _s1 text , _up int , _me int , _uc int , _dt blob ) ");
            al.c(sb2.toString(), new Object[0]);
            sQLiteDatabase.execSQL(sb2.toString(), new String[0]);
            sb2.setLength(0);
            sb2.append(" CREATE TABLE IF NOT EXISTS dl_1002 (_id integer primary key autoincrement, _dUrl varchar(100), _sFile varchar(100), _sLen INTEGER, _tLen INTEGER, _MD5 varchar(100), _DLTIME INTEGER)");
            al.c(sb2.toString(), new Object[0]);
            sQLiteDatabase.execSQL(sb2.toString(), new String[0]);
            sb2.setLength(0);
            sb2.append("CREATE TABLE IF NOT EXISTS ge_1002 (_id integer primary key autoincrement, _time INTEGER, _datas blob)");
            al.c(sb2.toString(), new Object[0]);
            sQLiteDatabase.execSQL(sb2.toString(), new String[0]);
            sb2.setLength(0);
            sb2.append(" CREATE TABLE IF NOT EXISTS st_1002 ( _id integer , _tp text , _tm int , _dt blob,primary key(_id,_tp )) ");
            al.c(sb2.toString(), new Object[0]);
            sQLiteDatabase.execSQL(sb2.toString(), new String[0]);
            sb2.setLength(0);
            sb2.append(" CREATE TABLE IF NOT EXISTS t_sla ( _id TEXT NOT NULL , _tm INTEGER NOT NULL , _dt TEXT NOT NULL , PRIMARY KEY(_id) ) ");
            String string = sb2.toString();
            al.c(string, new Object[0]);
            sQLiteDatabase.execSQL(string, new String[0]);
        } catch (Throwable th) {
            if (!al.b(th)) {
                th.printStackTrace();
            }
        }
        List<o> list = this.f83692d;
        if (list == null) {
            return;
        }
        Iterator<o> it2 = list.iterator();
        while (it2.hasNext()) {
            try {
                it2.next().onDbCreate(sQLiteDatabase);
            } catch (Throwable th2) {
                if (!al.b(th2)) {
                    th2.printStackTrace();
                }
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    @TargetApi(11)
    public final synchronized void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        if (ab.c() >= 11) {
            al.d("[Database] Downgrade %d to %d drop tables.", Integer.valueOf(i10), Integer.valueOf(i11));
            List<o> list = this.f83692d;
            if (list != null) {
                Iterator<o> it2 = list.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onDbDowngrade(sQLiteDatabase, i10, i11);
                    } catch (Throwable th) {
                        if (!al.b(th)) {
                            th.printStackTrace();
                        }
                    }
                }
            }
            if (a(sQLiteDatabase)) {
                onCreate(sQLiteDatabase);
                return;
            }
            al.d("[Database] Failed to drop, delete db.", new Object[0]);
            File databasePath = this.f83691c.getDatabasePath(f83689a);
            if (databasePath != null && databasePath.canWrite()) {
                databasePath.delete();
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final synchronized void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        try {
            al.d("[Database] Upgrade %d to %d , drop tables!", Integer.valueOf(i10), Integer.valueOf(i11));
            List<o> list = this.f83692d;
            if (list != null) {
                Iterator<o> it2 = list.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().onDbUpgrade(sQLiteDatabase, i10, i11);
                    } catch (Throwable th) {
                        if (!al.b(th)) {
                            th.printStackTrace();
                        }
                    }
                }
            }
            if (a(sQLiteDatabase)) {
                onCreate(sQLiteDatabase);
                return;
            }
            al.d("[Database] Failed to drop, delete db.", new Object[0]);
            File databasePath = this.f83691c.getDatabasePath(f83689a);
            if (databasePath != null && databasePath.canWrite()) {
                databasePath.delete();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
