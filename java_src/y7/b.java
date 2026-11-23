package y7;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* JADX INFO: loaded from: classes2.dex */
public class b extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f97691b = "b";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f97692c = "papa_stat.db";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f97693d = "StatisticTable";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f97694e = "EMUApkTable";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f97695f = "BossTable";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static b f97696g;

    public b(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i10) {
        super(context, str, cursorFactory, i10);
    }

    public static b a(Context context) {
        b bVar = f97696g;
        if (bVar == null && bVar == null) {
            f97696g = new b(context, f97692c);
        }
        return f97696g;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            try {
                sQLiteDatabase.beginTransaction();
                stringBuffer.append("CREATE TABLE [StatisticTable] (");
                stringBuffer.append("[id] INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, ");
                stringBuffer.append("[uid] TEXT,");
                stringBuffer.append("[type] TEXT,");
                stringBuffer.append("[args1] TEXT,");
                stringBuffer.append("[args2] TEXT,");
                stringBuffer.append("[time] TEXT,");
                stringBuffer.append("[ad] TEXT,");
                stringBuffer.append("[countType] TEXT,");
                stringBuffer.append("[send] INTEGER,");
                stringBuffer.append("[newData] INTEGER,");
                stringBuffer.append("[isdirect] INTEGER)");
                sQLiteDatabase.execSQL(stringBuffer.toString());
                sQLiteDatabase.setTransactionSuccessful();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            sQLiteDatabase.endTransaction();
            try {
                try {
                    sQLiteDatabase.beginTransaction();
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("CREATE TABLE [EMUApkTable] (");
                    stringBuffer2.append("[id] INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, ");
                    stringBuffer2.append("[apk_name] TEXT,");
                    stringBuffer2.append("[logo] TEXT,");
                    stringBuffer2.append("[package_name] TEXT,");
                    stringBuffer2.append("[launch_name] TEXT,");
                    stringBuffer2.append("[team_info] TEXT,");
                    stringBuffer2.append("[ver_info] TEXT,");
                    stringBuffer2.append("[down_url] TEXT,");
                    stringBuffer2.append("[size] TEXT,");
                    stringBuffer2.append("[release_date] TEXT,");
                    stringBuffer2.append("[ver] TEXT,");
                    stringBuffer2.append("[ver_compatible] TEXT,");
                    stringBuffer2.append("[tag_id] TEXT,");
                    stringBuffer2.append("[apkPath] TEXT,");
                    stringBuffer2.append("[downloadFinish] INTEGER)");
                    sQLiteDatabase.execSQL(stringBuffer2.toString());
                    sQLiteDatabase.setTransactionSuccessful();
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                sQLiteDatabase.endTransaction();
                try {
                    try {
                        StringBuffer stringBuffer3 = new StringBuffer();
                        sQLiteDatabase.beginTransaction();
                        stringBuffer3.append("CREATE TABLE [BossTable] (");
                        stringBuffer3.append("[id] INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, ");
                        stringBuffer3.append("[uid] TEXT,");
                        stringBuffer3.append("[type] TEXT,");
                        stringBuffer3.append("[args1] TEXT,");
                        stringBuffer3.append("[args2] TEXT,");
                        stringBuffer3.append("[time] TEXT,");
                        stringBuffer3.append("[ad] TEXT,");
                        stringBuffer3.append("[countType] TEXT)");
                        sQLiteDatabase.execSQL(stringBuffer3.toString());
                        sQLiteDatabase.setTransactionSuccessful();
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                } finally {
                    sQLiteDatabase.endTransaction();
                }
            } catch (Throwable th) {
                sQLiteDatabase.endTransaction();
                throw th;
            }
        } catch (Throwable th2) {
            sQLiteDatabase.endTransaction();
            throw th2;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        try {
            try {
                try {
                    sQLiteDatabase.beginTransaction();
                    sQLiteDatabase.execSQL("DROP TABLE StatisticTable");
                    sQLiteDatabase.setTransactionSuccessful();
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            sQLiteDatabase.endTransaction();
            try {
                try {
                    sQLiteDatabase.beginTransaction();
                    sQLiteDatabase.execSQL("DROP TABLE EMUApkTable");
                    sQLiteDatabase.setTransactionSuccessful();
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
                sQLiteDatabase.endTransaction();
                try {
                    try {
                        sQLiteDatabase.beginTransaction();
                        sQLiteDatabase.execSQL("DROP TABLE BossTable");
                        sQLiteDatabase.setTransactionSuccessful();
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                    sQLiteDatabase.endTransaction();
                    onCreate(sQLiteDatabase);
                } catch (Throwable th) {
                    sQLiteDatabase.endTransaction();
                    throw th;
                }
            } catch (Throwable th2) {
                sQLiteDatabase.endTransaction();
                throw th2;
            }
        } catch (Throwable th3) {
            sQLiteDatabase.endTransaction();
            throw th3;
        }
    }

    public b(Context context, String str) {
        this(context, str, null, 4);
    }
}
