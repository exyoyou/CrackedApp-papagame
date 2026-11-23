package com.umeng.analytics.pro;

import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes9.dex */
class h extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Context f84743b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f84744a;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final h f84745a = new h(h.f84743b, j.b(h.f84743b), g.f84677b, null, 2);

        private a() {
        }
    }

    public static h a(Context context) {
        if (f84743b == null) {
            f84743b = context.getApplicationContext();
        }
        return a.f84745a;
    }

    private void c(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f84744a = "create table if not exists __sd(id INTEGER primary key autoincrement, __ii TEXT unique, __a TEXT, __b TEXT, __c TEXT, __d TEXT, __e TEXT, __f TEXT, __g TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)";
            sQLiteDatabase.execSQL("create table if not exists __sd(id INTEGER primary key autoincrement, __ii TEXT unique, __a TEXT, __b TEXT, __c TEXT, __d TEXT, __e TEXT, __f TEXT, __g TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)");
        } catch (SQLException unused) {
        }
    }

    private void d(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f84744a = "create table if not exists __is(id INTEGER primary key autoincrement, __ii TEXT unique, __e TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)";
            sQLiteDatabase.execSQL("create table if not exists __is(id INTEGER primary key autoincrement, __ii TEXT unique, __e TEXT, __sp TEXT, __pp TEXT, __av TEXT, __vc TEXT)");
        } catch (SQLException unused) {
        }
    }

    private void e(SQLiteDatabase sQLiteDatabase) {
        if (!j.a(sQLiteDatabase, g.d.f84718a, "__av")) {
            j.a(sQLiteDatabase, g.d.f84718a, "__sp", "TEXT");
            j.a(sQLiteDatabase, g.d.f84718a, "__pp", "TEXT");
            j.a(sQLiteDatabase, g.d.f84718a, "__av", "TEXT");
            j.a(sQLiteDatabase, g.d.f84718a, "__vc", "TEXT");
        }
        if (!j.a(sQLiteDatabase, g.b.f84692a, "__av")) {
            j.a(sQLiteDatabase, g.b.f84692a, "__av", "TEXT");
            j.a(sQLiteDatabase, g.b.f84692a, "__vc", "TEXT");
        }
        if (j.a(sQLiteDatabase, g.a.f84681a, "__av")) {
            return;
        }
        j.a(sQLiteDatabase, g.a.f84681a, "__av", "TEXT");
        j.a(sQLiteDatabase, g.a.f84681a, "__vc", "TEXT");
    }

    private void f(SQLiteDatabase sQLiteDatabase) {
        a(sQLiteDatabase, g.d.f84718a);
        a(sQLiteDatabase, g.b.f84692a);
        a(sQLiteDatabase, g.a.f84681a);
        a();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            try {
                sQLiteDatabase.beginTransaction();
                c(sQLiteDatabase);
                d(sQLiteDatabase);
                b(sQLiteDatabase);
                a(sQLiteDatabase);
                sQLiteDatabase.setTransactionSuccessful();
            } finally {
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable unused) {
                    }
                }
            }
        } catch (SQLiteDatabaseCorruptException unused2) {
            j.a(f84743b);
        } catch (Throwable unused3) {
            if (sQLiteDatabase == null) {
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        if (i11 <= i10 || i10 != 1) {
            return;
        }
        try {
            try {
                e(sQLiteDatabase);
            } catch (Exception unused) {
                f(sQLiteDatabase);
            }
        } catch (Exception unused2) {
            e(sQLiteDatabase);
        }
    }

    private h(Context context, String str, String str2, SQLiteDatabase.CursorFactory cursorFactory, int i10) {
        this(new e(context, str), str2, cursorFactory, i10);
    }

    private void b(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f84744a = "create table if not exists __et(id INTEGER primary key autoincrement, __i TEXT, __e TEXT, __s TEXT, __t INTEGER, __av TEXT, __vc TEXT)";
            sQLiteDatabase.execSQL("create table if not exists __et(id INTEGER primary key autoincrement, __i TEXT, __e TEXT, __s TEXT, __t INTEGER, __av TEXT, __vc TEXT)");
        } catch (SQLException unused) {
        }
    }

    private h(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i10) {
        super(context, TextUtils.isEmpty(str) ? g.f84677b : str, cursorFactory, i10);
        this.f84744a = null;
        a();
    }

    public void a() {
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (!j.a(g.d.f84718a, writableDatabase)) {
                c(writableDatabase);
            }
            if (!j.a(g.c.f84705a, writableDatabase)) {
                d(writableDatabase);
            }
            if (!j.a(g.b.f84692a, writableDatabase)) {
                b(writableDatabase);
            }
            if (j.a(g.a.f84681a, writableDatabase)) {
                return;
            }
            a(writableDatabase);
        } catch (Exception unused) {
        }
    }

    private void a(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f84744a = "create table if not exists __er(id INTEGER primary key autoincrement, __i TEXT, __a TEXT, __t INTEGER, __av TEXT, __vc TEXT)";
            sQLiteDatabase.execSQL("create table if not exists __er(id INTEGER primary key autoincrement, __i TEXT, __a TEXT, __t INTEGER, __av TEXT, __vc TEXT)");
        } catch (SQLException unused) {
        }
    }

    private void a(SQLiteDatabase sQLiteDatabase, String str) {
        try {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
        } catch (SQLException unused) {
        }
    }
}
