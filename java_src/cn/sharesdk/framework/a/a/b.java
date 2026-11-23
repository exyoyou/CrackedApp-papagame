package cn.sharesdk.framework.a.a;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import cn.sharesdk.framework.utils.SSDKLog;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static b f2517b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f2518a = new a();

    private b() {
    }

    public static synchronized b a() {
        if (f2517b == null) {
            f2517b = new b();
        }
        return f2517b;
    }

    public Cursor a(String str, String[] strArr, String str2, String[] strArr2, String str3) {
        SQLiteDatabase writableDatabase = this.f2518a.getWritableDatabase();
        SSDKLog.b().a("Query table: %s", str);
        try {
            return writableDatabase.query(str, strArr, str2, strArr2, null, null, str3);
        } catch (Exception e10) {
            SSDKLog.b().b(e10, "when query database occur error table:%s,", str);
            return null;
        }
    }

    public long a(String str, ContentValues contentValues) {
        try {
            return this.f2518a.getWritableDatabase().replace(str, null, contentValues);
        } catch (Exception e10) {
            SSDKLog.b().b(e10, "when insert database occur error table:%s,", str);
            return -1L;
        }
    }

    public int a(String str, String str2, String[] strArr) {
        int iDelete;
        try {
            iDelete = this.f2518a.getWritableDatabase().delete(str, str2, strArr);
            try {
                SSDKLog.b().a("Deleted %d rows from table: %s", Integer.valueOf(iDelete), str);
            } catch (Exception e10) {
                e = e10;
                SSDKLog.b().b(e, "when delete database occur error table:%s,", str);
            }
        } catch (Exception e11) {
            e = e11;
            iDelete = 0;
        }
        return iDelete;
    }

    public int a(String str) throws Throwable {
        Exception e10;
        Cursor cursor;
        int i10 = 0;
        Cursor cursor2 = null;
        try {
            SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) this.f2518a.getClass().getMethod("getWritableDatabase", new Class[0]).invoke(this.f2518a, new Object[0]);
            cursor = (Cursor) sQLiteDatabase.getClass().getDeclaredMethod("rawQuery", String.class, String[].class).invoke(sQLiteDatabase, "select count(*) from " + str, null);
            try {
                try {
                    if (cursor.moveToNext()) {
                        i10 = cursor.getInt(0);
                    }
                } catch (Exception e11) {
                    e10 = e11;
                    SSDKLog.b().b(e10);
                }
            } catch (Throwable th) {
                th = th;
                cursor2 = cursor;
                cursor2.close();
                throw th;
            }
        } catch (Exception e12) {
            e10 = e12;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            cursor2.close();
            throw th;
        }
        cursor.close();
        return i10;
    }
}
