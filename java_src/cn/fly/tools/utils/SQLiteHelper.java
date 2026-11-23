package cn.fly.tools.utils;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import cn.fly.tools.FlyLog;
import cn.fly.tools.proguard.PublicMemberKeeper;
import java.io.File;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class SQLiteHelper implements PublicMemberKeeper {

    public static class SingleTableDB implements PublicMemberKeeper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f2242a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f2243b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private SQLiteDatabase f2244c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private LinkedHashMap<String, String> f2245d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private HashMap<String, Boolean> f2246e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f2247f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f2248g;

        public void addField(String str, String str2, boolean z10) {
            if (this.f2244c == null) {
                this.f2245d.put(str, str2);
                this.f2246e.put(str, Boolean.valueOf(z10));
            }
        }

        private SingleTableDB(String str, String str2) {
            this.f2242a = str;
            this.f2243b = str2;
            this.f2245d = new LinkedHashMap<>();
            this.f2246e = new HashMap<>();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() throws Throwable {
            if (TextUtils.isEmpty(this.f2242a)) {
                throw new Throwable("path is null");
            }
            File file = new File(this.f2242a);
            Cursor cursorQuery = null;
            if (this.f2244c != null && !file.exists()) {
                this.f2244c.close();
                try {
                    File parentFile = file.getParentFile();
                    if (parentFile != null && (!parentFile.exists() || !parentFile.isDirectory())) {
                        parentFile.delete();
                        parentFile.mkdirs();
                    }
                } catch (Throwable unused) {
                }
                this.f2244c = null;
            }
            if (this.f2244c == null) {
                if (!file.exists()) {
                    try {
                        File parentFile2 = file.getParentFile();
                        if (parentFile2 != null && (!parentFile2.exists() || !parentFile2.isDirectory())) {
                            parentFile2.delete();
                            parentFile2.mkdirs();
                            file.createNewFile();
                        }
                    } catch (Throwable unused2) {
                    }
                }
                SQLiteDatabase sQLiteDatabaseOpenOrCreateDatabase = SQLiteDatabase.openOrCreateDatabase(file, (SQLiteDatabase.CursorFactory) null);
                this.f2244c = sQLiteDatabaseOpenOrCreateDatabase;
                try {
                    cursorQuery = sQLiteDatabaseOpenOrCreateDatabase.query(cn.fly.commons.o.a("013Ofide8gLdi ifLdhdf2d,fi7if+dj"), null, cn.fly.commons.o.a("017iPec+jf'iiihif2de,dcif@edPdf'fKiiih"), new String[]{cn.fly.commons.o.a("005id3ff.gf"), this.f2243b}, null, null, null);
                    boolean z10 = cursorQuery == null || cursorQuery.getCount() <= 0;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    if (z10) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("create table  ");
                        sb2.append(this.f2243b);
                        sb2.append("(");
                        for (Map.Entry<String, String> entry : this.f2245d.entrySet()) {
                            String key = entry.getKey();
                            String value = entry.getValue();
                            boolean zBooleanValue = this.f2246e.get(key).booleanValue();
                            boolean zEquals = key.equals(this.f2247f);
                            boolean z11 = zEquals ? this.f2248g : false;
                            sb2.append(key);
                            sb2.append(" ");
                            sb2.append(value);
                            sb2.append(zBooleanValue ? " not null" : "");
                            sb2.append(zEquals ? " primary key" : "");
                            sb2.append(z11 ? " autoincrement," : ",");
                        }
                        sb2.replace(sb2.length() - 1, sb2.length(), ");");
                        try {
                            SQLiteDatabase.class.getMethod(cn.fly.commons.o.a("007f,eiNfcBeljjfe"), String.class).invoke(this.f2244c, sb2.toString());
                        } catch (Throwable th) {
                            FlyLog.getInstance().d(th);
                        }
                    }
                } catch (Throwable th2) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    throw th2;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            SQLiteDatabase sQLiteDatabase = this.f2244c;
            if (sQLiteDatabase != null) {
                sQLiteDatabase.close();
                this.f2244c = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String c() {
            return this.f2243b;
        }
    }

    public static void close(SingleTableDB singleTableDB) {
        singleTableDB.b();
    }

    public static int delete(SingleTableDB singleTableDB, String str, String[] strArr) throws Throwable {
        singleTableDB.a();
        return singleTableDB.f2244c.delete(singleTableDB.c(), str, strArr);
    }

    public static SingleTableDB getDatabase(Context context, String str) {
        return getDatabase(context != null ? context.getDatabasePath(str).getPath() : null, str);
    }

    public static long insert(SingleTableDB singleTableDB, ContentValues contentValues) throws Throwable {
        singleTableDB.a();
        return singleTableDB.f2244c.replace(singleTableDB.c(), null, contentValues);
    }

    public static Cursor query(SingleTableDB singleTableDB, String[] strArr, String str, String[] strArr2, String str2) throws Throwable {
        singleTableDB.a();
        return singleTableDB.f2244c.query(singleTableDB.c(), strArr, str, strArr2, null, null, str2);
    }

    public static int update(SingleTableDB singleTableDB, ContentValues contentValues, String str, String[] strArr) throws Throwable {
        singleTableDB.a();
        return singleTableDB.f2244c.update(singleTableDB.c(), contentValues, str, strArr);
    }

    public static SingleTableDB getDatabase(String str, String str2) {
        return new SingleTableDB(str, str2);
    }
}
