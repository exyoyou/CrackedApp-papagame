package cn.fly.tcp.f;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import cn.fly.commons.o;

/* JADX INFO: loaded from: classes7.dex */
public class a extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f1655a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f1656b;

    static {
        String strA = o.a("003Bdffiej");
        f1655a = strA;
        f1656b = "CREATE TABLE " + strA + " (workId TEXT PRIMARY KEY,expireTime INTEGER )";
    }

    public a(Context context) {
        super(context, "elp_msg.db", (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            SQLiteDatabase.class.getMethod(o.a("007f3eiDfcAeljjfe"), String.class).invoke(sQLiteDatabase, f1656b);
        } catch (Throwable th) {
            c.a().a(th);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
    }
}
