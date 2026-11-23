package com.sigmob.sdk.base.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;
import com.czhj.sdk.common.Database.SQLiteBuider;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.base.utils.o;

/* JADX INFO: loaded from: classes5.dex */
public class a extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f79315a = "ads";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f79316b = "file_reference";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f79317c = "trigger_insert";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f79318d = "trigger_delete";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f79319e = "tracks";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f79320f = "adload_event";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f79321g = "adload_cache_event";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f79322h = "adload_ready_event";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f79323i = "wind.db";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final long f79324j = -2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final long f79325k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f79326l = 11;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static String f79327m = "CREATE TABLE ads ( endcard_md5 text  ,video_md5 text  ,ad blob  ,ad_source_channel text  ,ad_type integer  ,create_time integer  ,crid text  ,load_id text  ,adTrackersMap blob  ,adslot_id text  ,camp_id text  ,request_id text , primary key ( crid ,adslot_id) ); \n";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static String f79328n = "CREATE TRIGGER trigger_insert after insert on ads begin insert or replace into file_reference (crid,adslot_id,video_md5,endcard_md5) values(new.crid,new.adslot_id,new.video_md5,new.endcard_md5) ; end; \n";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static String f79329o = "CREATE TRIGGER trigger_delete after delete on ads begin delete from file_reference where crid = old.crid  and adslot_id == old.adslot_id; end;\n";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static String f79330p = "CREATE TABLE file_reference ( endcard_md5 blob  ,video_md5 blob  ,crid text  ,adslot_id text  , primary key ( crid ,adslot_id ) );\n";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static String f79331q = "CREATE TABLE tracks ( id integer primary key AUTOINCREMENT ,retryNum integer   ,source text   ,event text   ,request_id text   ,url text   ,timestamp integer   );\n";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static String f79332r = "CREATE TABLE adload_event ( id integer primary key AUTOINCREMENT , adslot_id text  , error_code integer ,timestamp integer  );\n";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static String f79333s = "CREATE TABLE adload_cache_event (  adslot_id text primary key, media_request_count integer ,media_ready_count integer ,pre_req_time integer , req_interval_time integer ,req_pool_size integer); \n";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static String f79334t = "CREATE TABLE adload_ready_event (  adslot_id text primary key, media_request_count integer ,media_ready_count integer ); \n";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final long f79335u = -6;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final long f79336v = -5;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final long f79337w = -4;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final long f79338x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static a f79339y;

    /* JADX INFO: renamed from: com.sigmob.sdk.base.db.a$a, reason: collision with other inner class name */
    public interface InterfaceC1022a {
        void a();

        void a(Throwable e10);
    }

    private a(Context context) {
        super(context, f79323i, (SQLiteDatabase.CursorFactory) null, 11);
    }

    private static long a(SQLiteDatabase db2) {
        if (db2 == null) {
            return f79335u;
        }
        if (!db2.isOpen()) {
            return f79336v;
        }
        if (db2.isReadOnly()) {
            return f79337w;
        }
        return 0L;
    }

    public void b() {
        b(getWritableDatabase());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(final SQLiteDatabase sqLiteDatabase) {
        sqLiteDatabase.execSQL(f79332r);
        sqLiteDatabase.execSQL(f79333s);
        sqLiteDatabase.execSQL(f79334t);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase database, int oldVersion, int newVersion) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Downgrading database from version ");
        sb2.append(oldVersion);
        sb2.append(" to ");
        sb2.append(newVersion);
        sb2.append(", which will destroy all old data");
        b(database);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase db2) {
        super.onOpen(db2);
        setWriteAheadLoggingEnabled(true);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase database, int oldVersion, int newVersion) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Upgrading database from version ");
        sb2.append(oldVersion);
        sb2.append(" to ");
        sb2.append(newVersion);
        sb2.append(", which will destroy all old data");
        b(database);
    }

    public static a a() {
        return f79339y;
    }

    private void b(SQLiteDatabase database) {
        database.execSQL("DROP TABLE IF EXISTS ads");
        database.execSQL("DROP TABLE IF EXISTS file_reference");
        database.execSQL("DROP TABLE IF EXISTS tracks");
        database.execSQL("DROP TABLE IF EXISTS adload_event");
        database.execSQL("DROP TABLE IF EXISTS adload_cache_event");
        database.execSQL("DROP TABLE IF EXISTS adload_ready_event");
        database.execSQL("DROP TRIGGER IF EXISTS trigger_insert");
        database.execSQL("DROP TRIGGER IF EXISTS trigger_delete");
        o.i();
        onCreate(database);
    }

    public static synchronized void a(final Context context) {
        if (f79339y == null) {
            f79339y = new a(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x002d A[Catch: all -> 0x007b, TryCatch #2 {all -> 0x007b, blocks: (B:3:0x0003, B:4:0x000d, B:6:0x0017, B:8:0x002d, B:21:0x0060, B:9:0x0031, B:11:0x0035, B:12:0x003b, B:14:0x003f, B:15:0x0049, B:17:0x004d, B:18:0x0057, B:20:0x005b, B:22:0x0063), top: B:56:0x0003 }] */
    public static /* synthetic */ void b(SQLiteDatabase sQLiteDatabase, SQLiteBuider.Insert insert, InterfaceC1022a interfaceC1022a) {
        boolean z10;
        sQLiteDatabase.beginTransaction();
        try {
            SQLiteStatement sQLiteStatementCompileStatement = sQLiteDatabase.compileStatement(insert.getSql());
            z10 = true;
            for (int i10 = 1; i10 <= insert.getColumns().size(); i10++) {
                Object obj = insert.getValues().get((String) insert.getColumns().get(i10 - 1));
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
                if (interfaceC1022a != null) {
                    interfaceC1022a.a(th);
                }
            }
        } catch (Throwable th2) {
            try {
                SigmobLog.e(th2.getMessage());
                if (interfaceC1022a != null) {
                    interfaceC1022a.a(th2);
                }
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th3) {
                    SigmobLog.e(th3.getMessage());
                    if (interfaceC1022a != null) {
                        interfaceC1022a.a(th3);
                    }
                }
                z10 = false;
            } finally {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable th4) {
                    SigmobLog.e(th4.getMessage());
                    if (interfaceC1022a != null) {
                        interfaceC1022a.a(th4);
                    }
                }
            }
        }
        if (!z10 || interfaceC1022a == null) {
            return;
        }
        interfaceC1022a.a();
    }

    public void a(final SQLiteDatabase sqLiteDatabase, final SQLiteBuider.Insert insert, final InterfaceC1022a callBack) {
        ThreadPoolFactory.getFixIOExecutor().submit(new Runnable() { // from class: b8.a
            @Override // java.lang.Runnable
            public final void run() {
                com.sigmob.sdk.base.db.a.b(sqLiteDatabase, insert, callBack);
            }
        });
    }

    public void a(SQLiteDatabase sqLiteDatabase, String sql, InterfaceC1022a callBack) {
        sqLiteDatabase.beginTransaction();
        boolean z10 = false;
        try {
            sqLiteDatabase.execSQL(sql, new Object[0]);
            sqLiteDatabase.setTransactionSuccessful();
            sqLiteDatabase.endTransaction();
            z10 = true;
        } catch (Throwable th) {
            try {
                SigmobLog.e(th.getMessage());
                if (callBack != null) {
                    callBack.a(th);
                }
                sqLiteDatabase.endTransaction();
            } catch (Throwable th2) {
                sqLiteDatabase.endTransaction();
                throw th2;
            }
        }
        if (!z10 || callBack == null) {
            return;
        }
        callBack.a();
    }

    private void a(final SQLiteDatabase database, final String field, final String table) {
        database.execSQL("alter table " + table + " drop column " + field);
    }

    private void a(final SQLiteDatabase database, final String field, final String type, final String table) {
        database.execSQL("alter table " + table + " add " + field + " " + type);
    }
}
