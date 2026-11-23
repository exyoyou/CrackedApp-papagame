package y;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes7.dex */
public final class a extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f97665c = "msp.db";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f97666d = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WeakReference<Context> f97667b;

    public a(Context context) {
        super(context, f97665c, (SQLiteDatabase.CursorFactory) null, 1);
        this.f97667b = new WeakReference<>(context);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0066 A[PHI: r2
      0x0066: PHI (r2v4 android.database.sqlite.SQLiteDatabase) = (r2v3 android.database.sqlite.SQLiteDatabase), (r2v5 android.database.sqlite.SQLiteDatabase) binds: [B:31:0x0064, B:12:0x003d] A[DONT_GENERATE, DONT_INLINE]] */
    private List<String> b() throws Throwable {
        SQLiteDatabase readableDatabase;
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = null;
        try {
            readableDatabase = getReadableDatabase();
            try {
                cursorRawQuery = readableDatabase.rawQuery("select tid from tb_tid", null);
                while (cursorRawQuery.moveToNext()) {
                    String string = cursorRawQuery.getString(0);
                    if (!TextUtils.isEmpty(string)) {
                        arrayList.add(v.b.a(2, string, com.alipay.sdk.util.b.h(this.f97667b.get())));
                    }
                }
                cursorRawQuery.close();
                if (readableDatabase.isOpen()) {
                    readableDatabase.close();
                }
            } catch (Exception unused) {
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                if (readableDatabase != null && readableDatabase.isOpen()) {
                    readableDatabase.close();
                }
            } catch (Throwable th) {
                th = th;
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                if (readableDatabase != null && readableDatabase.isOpen()) {
                    readableDatabase.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
            readableDatabase = null;
        } catch (Throwable th2) {
            th = th2;
            readableDatabase = null;
        }
        return arrayList;
    }

    private static void c(SQLiteDatabase sQLiteDatabase) {
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("select name from tb_tid where tid!='' order by dt asc", null);
        if (cursorRawQuery.getCount() <= 14) {
            cursorRawQuery.close();
            return;
        }
        int count = cursorRawQuery.getCount() - 14;
        String[] strArr = new String[count];
        if (cursorRawQuery.moveToFirst()) {
            int i10 = 0;
            do {
                strArr[i10] = cursorRawQuery.getString(0);
                i10++;
                if (!cursorRawQuery.moveToNext()) {
                    break;
                }
            } while (count > i10);
        }
        cursorRawQuery.close();
        for (int i11 = 0; i11 < count; i11++) {
            if (!TextUtils.isEmpty(strArr[i11])) {
                d(sQLiteDatabase, strArr[i11]);
            }
        }
    }

    private static void d(SQLiteDatabase sQLiteDatabase, String str) {
        try {
            sQLiteDatabase.delete("tb_tid", "name=?", new String[]{str});
        } catch (Exception unused) {
        }
    }

    private void e(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String str4) {
        String strA = v.b.a(1, str3, com.alipay.sdk.util.b.h(this.f97667b.get()));
        String strM = m(str, str2);
        sQLiteDatabase.execSQL("insert into tb_tid (name, tid, key_tid, dt) values (?, ?, ?, datetime('now', 'localtime'))", new Object[]{strM, strA, str4});
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("select name from tb_tid where tid!='' order by dt asc", null);
        if (cursorRawQuery.getCount() <= 14) {
            cursorRawQuery.close();
            return;
        }
        int count = cursorRawQuery.getCount() - 14;
        String[] strArr = new String[count];
        if (cursorRawQuery.moveToFirst()) {
            int i10 = 0;
            do {
                strArr[i10] = cursorRawQuery.getString(0);
                i10++;
                if (!cursorRawQuery.moveToNext()) {
                    break;
                }
            } while (count > i10);
        }
        cursorRawQuery.close();
        for (int i11 = 0; i11 < count; i11++) {
            if (!TextUtils.isEmpty(strArr[i11])) {
                d(sQLiteDatabase, strArr[i11]);
            }
        }
    }

    private static boolean h(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        int i10;
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = sQLiteDatabase.rawQuery("select count(*) from tb_tid where name=?", new String[]{m(str, str2)});
            i10 = cursorRawQuery.moveToFirst() ? cursorRawQuery.getInt(0) : 0;
            cursorRawQuery.close();
        } catch (Exception unused) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            i10 = 0;
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
        return i10 > 0;
    }

    private void j(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String str4) {
        sQLiteDatabase.execSQL("update tb_tid set tid=?, key_tid=?, dt=datetime('now', 'localtime') where name=?", new Object[]{v.b.a(1, str3, com.alipay.sdk.util.b.h(this.f97667b.get())), str4, m(str, str2)});
    }

    private long l(String str, String str2) throws Throwable {
        SQLiteDatabase readableDatabase;
        long time = 0;
        Cursor cursorRawQuery = null;
        try {
            readableDatabase = getReadableDatabase();
            try {
                cursorRawQuery = readableDatabase.rawQuery("select dt from tb_tid where name=?", new String[]{m(str, str2)});
                time = cursorRawQuery.moveToFirst() ? new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).parse(cursorRawQuery.getString(0)).getTime() : 0L;
                cursorRawQuery.close();
                if (readableDatabase.isOpen()) {
                    readableDatabase.close();
                }
            } catch (Exception unused) {
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                if (readableDatabase != null && readableDatabase.isOpen()) {
                }
                return time;
            } catch (Throwable th) {
                th = th;
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                if (readableDatabase != null && readableDatabase.isOpen()) {
                    readableDatabase.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
            readableDatabase = null;
        } catch (Throwable th2) {
            th = th2;
            readableDatabase = null;
        }
        return time;
    }

    private static String m(String str, String str2) {
        return str + str2;
    }

    public final void f(String str, String str2) {
        SQLiteDatabase writableDatabase = null;
        try {
            writableDatabase = getWritableDatabase();
            j(writableDatabase, str, str2, "", "");
            d(writableDatabase, m(str, str2));
        } catch (Exception unused) {
        } finally {
            if (writableDatabase != null && writableDatabase.isOpen()) {
                writableDatabase.close();
            }
        }
    }

    public final void g(String str, String str2, String str3, String str4) throws Throwable {
        SQLiteDatabase sQLiteDatabase = null;
        try {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            try {
                if (h(writableDatabase, str, str2)) {
                    j(writableDatabase, str, str2, str3, str4);
                } else {
                    String strA = v.b.a(1, str3, com.alipay.sdk.util.b.h(this.f97667b.get()));
                    String strM = m(str, str2);
                    writableDatabase.execSQL("insert into tb_tid (name, tid, key_tid, dt) values (?, ?, ?, datetime('now', 'localtime'))", new Object[]{strM, strA, str4});
                    Cursor cursorRawQuery = writableDatabase.rawQuery("select name from tb_tid where tid!='' order by dt asc", null);
                    if (cursorRawQuery.getCount() <= 14) {
                        cursorRawQuery.close();
                    } else {
                        int count = cursorRawQuery.getCount() - 14;
                        String[] strArr = new String[count];
                        if (cursorRawQuery.moveToFirst()) {
                            int i10 = 0;
                            do {
                                strArr[i10] = cursorRawQuery.getString(0);
                                i10++;
                                if (!cursorRawQuery.moveToNext()) {
                                    break;
                                }
                            } while (count > i10);
                        }
                        cursorRawQuery.close();
                        for (int i11 = 0; i11 < count; i11++) {
                            if (!TextUtils.isEmpty(strArr[i11])) {
                                d(writableDatabase, strArr[i11]);
                            }
                        }
                    }
                }
                if (writableDatabase == null || !writableDatabase.isOpen()) {
                    return;
                }
                writableDatabase.close();
            } catch (Exception unused) {
                sQLiteDatabase = writableDatabase;
                if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
                    return;
                }
                sQLiteDatabase.close();
            } catch (Throwable th) {
                th = th;
                sQLiteDatabase = writableDatabase;
                if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                    sQLiteDatabase.close();
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0060  */
    /* JADX WARN: Code duplicated, block: B:44:? A[RETURN, SYNTHETIC] */
    public final String i(String str, String str2) throws Throwable {
        SQLiteDatabase readableDatabase;
        Cursor cursorRawQuery;
        Cursor cursor = null;
        string = null;
        string = null;
        String string = null;
        cursor = null;
        try {
            readableDatabase = getReadableDatabase();
            try {
                cursorRawQuery = readableDatabase.rawQuery("select tid from tb_tid where name=?", new String[]{m(str, str2)});
                try {
                    string = cursorRawQuery.moveToFirst() ? cursorRawQuery.getString(0) : null;
                    cursorRawQuery.close();
                    if (readableDatabase.isOpen()) {
                        readableDatabase.close();
                    }
                } catch (Exception unused) {
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    if (readableDatabase != null && readableDatabase.isOpen()) {
                    }
                    if (TextUtils.isEmpty(string)) {
                        return string;
                    }
                    return v.b.a(2, string, com.alipay.sdk.util.b.h(this.f97667b.get()));
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorRawQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (readableDatabase != null && readableDatabase.isOpen()) {
                        readableDatabase.close();
                    }
                    throw th;
                }
            } catch (Exception unused2) {
                cursorRawQuery = null;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused3) {
            cursorRawQuery = null;
            readableDatabase = null;
        } catch (Throwable th3) {
            th = th3;
            readableDatabase = null;
        }
        if (TextUtils.isEmpty(string)) {
            return v.b.a(2, string, com.alipay.sdk.util.b.h(this.f97667b.get()));
        }
        return string;
    }

    public final String k(String str, String str2) throws Throwable {
        SQLiteDatabase readableDatabase;
        Cursor cursorRawQuery;
        Cursor cursor = null;
        string = null;
        string = null;
        String string = null;
        cursor = null;
        try {
            readableDatabase = getReadableDatabase();
            try {
                cursorRawQuery = readableDatabase.rawQuery("select key_tid from tb_tid where name=?", new String[]{m(str, str2)});
                try {
                    string = cursorRawQuery.moveToFirst() ? cursorRawQuery.getString(0) : null;
                    cursorRawQuery.close();
                    if (readableDatabase.isOpen()) {
                        readableDatabase.close();
                    }
                } catch (Exception unused) {
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    if (readableDatabase != null && readableDatabase.isOpen()) {
                    }
                    return string;
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorRawQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (readableDatabase != null && readableDatabase.isOpen()) {
                        readableDatabase.close();
                    }
                    throw th;
                }
            } catch (Exception unused2) {
                cursorRawQuery = null;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused3) {
            cursorRawQuery = null;
            readableDatabase = null;
        } catch (Throwable th3) {
            th = th3;
            readableDatabase = null;
        }
        return string;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table if not exists tb_tid (name text primary key, tid text, key_tid text, dt datetime);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        sQLiteDatabase.execSQL("drop table if exists tb_tid");
        sQLiteDatabase.execSQL("create table if not exists tb_tid (name text primary key, tid text, key_tid text, dt datetime);");
    }
}
