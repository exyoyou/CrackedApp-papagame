package com.byazt.ym;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.byazt.nr.m;
import com.byazt.vb.n;
import com.haima.hmcp.beans.HmInputMappingContent;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 799, 20})
public class c {

    @SuppressLint({"StaticFieldLeak"})
    public static volatile c ve;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public tt f22333c;
    public Context tt;

    /* JADX INFO: renamed from: com.byazt.ym.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 799, 44})
    private class C0494c extends AbstractCursor {
        private C0494c() {
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

    private c(Context context) {
        try {
            this.tt = context.getApplicationContext();
            if (this.f22333c == null) {
                this.f22333c = new tt();
            }
        } catch (Throwable unused) {
        }
    }

    public static c c(Context context) {
        if (ve == null) {
            synchronized (c.class) {
                if (ve == null) {
                    ve = new c(context);
                }
            }
        }
        return ve;
    }

    private Context getContext() {
        return this.tt;
    }

    @com.byazt.zqa.c(c = {0, 1, 799, 175})
    public class tt {
        public tt() {
        }

        private SQLiteDatabase c(n nVar) {
            try {
                SQLiteDatabase sQLiteDatabaseC = nVar.tt().c(nVar.getContext());
                if (sQLiteDatabaseC == null || !sQLiteDatabaseC.isOpen()) {
                    return null;
                }
                sQLiteDatabaseC.setLockingEnabled(false);
                return sQLiteDatabaseC;
            } catch (Throwable th) {
                m.c(th);
                if (tt(nVar)) {
                    throw th;
                }
                return null;
            }
        }

        private boolean tt(n nVar) {
            SQLiteDatabase sQLiteDatabaseC = c(nVar);
            return sQLiteDatabaseC != null && sQLiteDatabaseC.inTransaction();
        }

        public int delete(n nVar, String str, String str2, String[] strArr) throws Exception {
            try {
                SQLiteDatabase sQLiteDatabaseC = c(nVar);
                if (sQLiteDatabaseC != null) {
                    return sQLiteDatabaseC.delete(str, str2, strArr);
                }
                return 0;
            } catch (Exception e10) {
                m.c(e10);
                if (tt(nVar)) {
                    throw e10;
                }
                return 0;
            }
        }

        public long insert(n nVar, String str, String str2, ContentValues contentValues) throws Exception {
            try {
                SQLiteDatabase sQLiteDatabaseC = c(nVar);
                if (sQLiteDatabaseC != null) {
                    return sQLiteDatabaseC.insert(str, str2, contentValues);
                }
                return -1L;
            } catch (Exception e10) {
                m.c(e10);
                if (tt(nVar)) {
                    throw e10;
                }
                return -1L;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Cursor query(n nVar, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
            Object[] objArr = 0;
            try {
                SQLiteDatabase sQLiteDatabaseC = c(nVar);
                return sQLiteDatabaseC != null ? sQLiteDatabaseC.query(str, strArr, str2, strArr2, str3, str4, str5) : null;
            } catch (Throwable th) {
                m.c(th);
                C0494c c0494c = new C0494c();
                if (tt(nVar)) {
                    throw th;
                }
                return c0494c;
            }
        }

        public int update(n nVar, String str, ContentValues contentValues, String str2, String[] strArr) throws Exception {
            try {
                SQLiteDatabase sQLiteDatabaseC = c(nVar);
                if (sQLiteDatabaseC != null) {
                    return sQLiteDatabaseC.update(str, contentValues, str2, strArr);
                }
                return 0;
            } catch (Exception e10) {
                m.c(e10);
                if (tt(nVar)) {
                    throw e10;
                }
                return 0;
            }
        }

        public synchronized void insert(n nVar, String str, String str2, List<com.byazt.vb.tt> list) {
            JSONObject jSONObjectSp;
            SQLiteDatabase sQLiteDatabaseC = null;
            try {
                try {
                    sQLiteDatabaseC = c(nVar);
                    if (sQLiteDatabaseC != null) {
                        sQLiteDatabaseC.beginTransaction();
                        ContentValues contentValues = new ContentValues();
                        for (int i10 = 0; i10 < list.size(); i10++) {
                            com.byazt.vb.tt ttVar = list.get(i10);
                            if (ttVar != null && (jSONObjectSp = ttVar.sp()) != null) {
                                contentValues.put("id", ttVar.ve());
                                String strTt = nVar.uj().tt(jSONObjectSp.toString());
                                if (!TextUtils.isEmpty(strTt)) {
                                    contentValues.put(HmInputMappingContent.FIELD_VALUE, strTt);
                                    contentValues.put("gen_time", Long.valueOf(System.currentTimeMillis()));
                                    contentValues.put("retry", (Integer) 0);
                                    contentValues.put("encrypt", (Integer) 1);
                                    sQLiteDatabaseC.insert(str, str2, contentValues);
                                }
                                contentValues.clear();
                            }
                        }
                        sQLiteDatabaseC.setTransactionSuccessful();
                        com.byazt.ml.ve.c("DBHelper", str + " insert list size=" + list.size(), nVar);
                    }
                    if (sQLiteDatabaseC != null) {
                        sQLiteDatabaseC.endTransaction();
                    }
                } catch (Exception e10) {
                    com.byazt.ml.ve.c("DBHelper", str + " insert list error=" + list.size(), nVar);
                    m.c(e10);
                    if (tt(nVar)) {
                        throw e10;
                    }
                    if (sQLiteDatabaseC != null) {
                        sQLiteDatabaseC.endTransaction();
                    }
                }
            } catch (Throwable th) {
                if (sQLiteDatabaseC != null) {
                    sQLiteDatabaseC.endTransaction();
                }
                throw th;
            }
        }

        public void c(n nVar, String str) throws SQLException {
            try {
                SQLiteDatabase sQLiteDatabaseC = c(nVar);
                if (sQLiteDatabaseC != null) {
                    sQLiteDatabaseC.execSQL(str);
                }
            } catch (Throwable th) {
                if (tt(nVar)) {
                    throw th;
                }
            }
        }
    }

    public tt c() {
        return this.f22333c;
    }
}
