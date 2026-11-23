package com.czhj.sdk.common.Database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;
import com.czhj.sdk.logger.SigmobLog;

/* JADX INFO: loaded from: classes9.dex */
public class SQLiteMTAHelper extends SQLiteOpenHelper {
    public static final long DB_ERROR_BAD_INPUT = -2;
    public static final long DB_WRITE_ERROR = -1;
    public static final String TABLE_POINT = "point";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f25441a = "sigmob_mta.db";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f25442b = 10;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f25443c = "CREATE TABLE point ( point_id integer  primary key  ,item text , encryption int);\n";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f25444d = -6;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final long f25445e = -5;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final long f25446f = -4;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final long f25447g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static SQLiteMTAHelper f25448h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static SQLiteDatabase f25449i;

    public interface ExecCallBack {
        void onFailed(Throwable th);

        void onSuccess();
    }

    public SQLiteMTAHelper(Context context) {
        super(context, f25441a, (SQLiteDatabase.CursorFactory) null, 10);
    }

    private static long a(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase == null) {
            return f25444d;
        }
        if (!sQLiteDatabase.isOpen()) {
            return f25445e;
        }
        if (sQLiteDatabase.isReadOnly()) {
            return f25446f;
        }
        return 0L;
    }

    private void b(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS point");
        onCreate(sQLiteDatabase);
    }

    public static SQLiteMTAHelper getInstance() {
        return f25448h;
    }

    public static void initialize(Context context) {
        if (f25448h == null) {
            synchronized (SQLiteMTAHelper.class) {
                if (f25448h == null) {
                    f25448h = new SQLiteMTAHelper(context);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0025 A[Catch: all -> 0x0073, TryCatch #0 {all -> 0x0073, blocks: (B:3:0x0003, B:4:0x000b, B:6:0x0013, B:8:0x0025, B:21:0x0058, B:9:0x0029, B:11:0x002d, B:12:0x0033, B:14:0x0037, B:15:0x0041, B:17:0x0045, B:18:0x004f, B:20:0x0053, B:22:0x005b), top: B:52:0x0003 }] */
    public static void insert(SQLiteDatabase sQLiteDatabase, SQLiteBuider.Insert insert, ExecCallBack execCallBack) {
        boolean z10;
        sQLiteDatabase.beginTransaction();
        try {
            SQLiteStatement sQLiteStatementCompileStatement = sQLiteDatabase.compileStatement(insert.f25429b);
            z10 = true;
            for (int i10 = 1; i10 <= insert.f25431d.size(); i10++) {
                Object obj = insert.f25430c.get((String) insert.f25431d.get(i10 - 1));
                if (obj == null) {
                    sQLiteStatementCompileStatement.bindNull(i10);
                } else if (obj instanceof String) {
                    sQLiteStatementCompileStatement.bindString(i10, (String) obj);
                } else if (obj instanceof Double) {
                    sQLiteStatementCompileStatement.bindDouble(i10, ((Double) obj).doubleValue());
                } else if (obj instanceof Number) {
                    sQLiteStatementCompileStatement.bindLong(i10, ((Number) obj).longValue());
                } else if (obj instanceof byte[]) {
                    sQLiteStatementCompileStatement.bindBlob(i10, (byte[]) obj);
                } else {
                    sQLiteStatementCompileStatement.bindNull(i10);
                }
            }
            sQLiteStatementCompileStatement.execute();
            sQLiteDatabase.setTransactionSuccessful();
            try {
                sQLiteDatabase.endTransaction();
            } catch (Throwable th) {
                SigmobLog.e(th.getMessage());
                if (execCallBack != null) {
                    execCallBack.onFailed(th);
                }
            }
        } catch (Throwable th2) {
            try {
                SigmobLog.e(th2.getMessage());
                if (execCallBack != null) {
                    execCallBack.onFailed(th2);
                }
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th3) {
                    SigmobLog.e(th3.getMessage());
                    if (execCallBack != null) {
                        execCallBack.onFailed(th3);
                    }
                }
                z10 = false;
            } finally {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th4) {
                    SigmobLog.e(th4.getMessage());
                    if (execCallBack != null) {
                        execCallBack.onFailed(th4);
                    }
                }
            }
        }
        if (!z10 || execCallBack == null) {
            return;
        }
        execCallBack.onSuccess();
    }

    public void clearDb() {
        b(getWritableDatabase());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(f25443c);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Downgrading database from version ");
        sb2.append(i10);
        sb2.append(" to ");
        sb2.append(i11);
        sb2.append(", which will destroy all old data");
        b(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        super.onOpen(sQLiteDatabase);
        setWriteAheadLoggingEnabled(true);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Upgrading database from version ");
        sb2.append(i10);
        sb2.append(" to ");
        sb2.append(i11);
        sb2.append(", which will destroy all old data");
        if (i10 == 9) {
            b(sQLiteDatabase);
        } else if (i11 > 8) {
            sQLiteDatabase.execSQL("ALTER TABLE point ADD COLUMN 'encryption' int ");
        }
    }

    public void transactionWriteExecSQL(SQLiteDatabase sQLiteDatabase, String str, ExecCallBack execCallBack) {
        sQLiteDatabase.beginTransaction();
        boolean z10 = false;
        try {
            sQLiteDatabase.execSQL(str, new Object[0]);
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
            z10 = true;
        } catch (Throwable th) {
            try {
                SigmobLog.e(th.getMessage());
                if (execCallBack != null) {
                    execCallBack.onFailed(th);
                }
                sQLiteDatabase.endTransaction();
            } catch (Throwable th2) {
                sQLiteDatabase.endTransaction();
                throw th2;
            }
        }
        if (!z10 || execCallBack == null) {
            return;
        }
        execCallBack.onSuccess();
    }

    private void a(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        sQLiteDatabase.execSQL("alter table " + str2 + " drop column " + str);
    }

    private void a(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3) {
        sQLiteDatabase.execSQL("alter table " + str3 + " add " + str + " " + str2);
    }
}
