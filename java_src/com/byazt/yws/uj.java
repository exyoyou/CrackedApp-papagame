package com.byazt.yws;

import android.content.ContentValues;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.byazt.nr.m;
import com.byazt.omf.p;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 866, 15})
public class uj {
    public static final Object tt = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SQLiteDatabase f22462c = null;
    public final String uj;
    public final Context ve;

    @com.byazt.zqa.c(c = {0, 1, 866, 123})
    private class c extends AbstractCursor {
        private c() {
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String[] getColumnNames() {
            return new String[0];
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getCount() {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public double getDouble(int i10) {
            return 0.0d;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public float getFloat(int i10) {
            return 0.0f;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getInt(int i10) {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public long getLong(int i10) {
            return 0L;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public short getShort(int i10) {
            return (short) 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String getString(int i10) {
            return null;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public boolean isNull(int i10) {
            return true;
        }
    }

    public uj(Context context, String str) {
        this.ve = context;
        this.uj = str;
    }

    private boolean a() {
        SQLiteDatabase sQLiteDatabase = this.f22462c;
        return sQLiteDatabase != null && sQLiteDatabase.inTransaction();
    }

    public void c() {
        SQLiteOpenHelper cVar;
        try {
            SQLiteDatabase sQLiteDatabase = this.f22462c;
            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                return;
            }
            synchronized (tt) {
                SQLiteDatabase sQLiteDatabase2 = this.f22462c;
                if (sQLiteDatabase2 == null || !sQLiteDatabase2.isOpen()) {
                    if (TextUtils.equals(this.uj, "ttopensdk.db")) {
                        cVar = new com.byazt.non.tt(this.ve, p.uj >= 7100 ? 13 : 12);
                    } else {
                        cVar = TextUtils.equals(this.uj, "ttopensdk2.db") ? new com.byazt.non.c(this.ve) : null;
                    }
                    if (cVar != null) {
                        this.f22462c = cVar.getWritableDatabase();
                    }
                }
            }
        } catch (Throwable th) {
            m.c(th);
            if (a()) {
                throw th;
            }
        }
    }

    public int delete(String str, String str2, String[] strArr) throws Exception {
        try {
            c();
            return this.f22462c.delete(str, str2, strArr);
        } catch (Exception e10) {
            m.c(e10);
            if (a()) {
                throw e10;
            }
            return 0;
        }
    }

    public long insert(String str, String str2, ContentValues contentValues) throws Exception {
        try {
            c();
            return this.f22462c.insert(str, str2, contentValues);
        } catch (Exception e10) {
            m.c(e10);
            if (a()) {
                throw e10;
            }
            return -1L;
        }
    }

    public void n() {
        c();
        SQLiteDatabase sQLiteDatabase = this.f22462c;
        if (sQLiteDatabase == null) {
            return;
        }
        sQLiteDatabase.endTransaction();
    }

    public Cursor query(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
        try {
            c();
            return this.f22462c.query(str, strArr, str2, strArr2, str3, str4, str5);
        } catch (Throwable th) {
            c cVar = new c();
            if (a()) {
                throw th;
            }
            return cVar;
        }
    }

    public SQLiteDatabase tt() {
        return this.f22462c;
    }

    public void uj() {
        c();
        SQLiteDatabase sQLiteDatabase = this.f22462c;
        if (sQLiteDatabase == null) {
            return;
        }
        sQLiteDatabase.setTransactionSuccessful();
    }

    public int update(String str, ContentValues contentValues, String str2, String[] strArr) throws Exception {
        try {
            c();
            return this.f22462c.update(str, contentValues, str2, strArr);
        } catch (Exception e10) {
            m.c(e10);
            if (a()) {
                throw e10;
            }
            return 0;
        }
    }

    public void ve() {
        c();
        SQLiteDatabase sQLiteDatabase = this.f22462c;
        if (sQLiteDatabase == null) {
            return;
        }
        sQLiteDatabase.beginTransaction();
    }

    public void c(String str) throws SQLException {
        try {
            c();
            this.f22462c.execSQL(str);
        } catch (Throwable th) {
            if (a()) {
                throw th;
            }
        }
    }
}
