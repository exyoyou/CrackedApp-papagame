package com.tencent.bugly.proguard;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f83668a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static w f83669b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static x f83670c;

    class a extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f83672b = 4;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private v f83673c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f83674d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ContentValues f83675e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f83676f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String[] f83677g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f83678h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private String[] f83679i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private String f83680j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private String f83681k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private String f83682l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private String f83683m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private String f83684n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private String[] f83685o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f83686p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private String f83687q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private byte[] f83688r;

        public a() {
        }

        public final void a(int i10, String str, byte[] bArr) {
            this.f83686p = i10;
            this.f83687q = str;
            this.f83688r = bArr;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            switch (this.f83672b) {
                case 1:
                    w.this.a(this.f83674d, this.f83675e, this.f83673c);
                    break;
                case 2:
                    w.this.a(this.f83674d, this.f83684n, this.f83685o, this.f83673c);
                    break;
                case 3:
                    Cursor cursorA = w.this.a(this.f83676f, this.f83674d, this.f83677g, this.f83678h, this.f83679i, this.f83680j, this.f83681k, this.f83682l, this.f83683m, this.f83673c);
                    if (cursorA != null) {
                        cursorA.close();
                    }
                    break;
                case 4:
                    w.this.a(this.f83686p, this.f83687q, this.f83688r, this.f83673c);
                    break;
                case 5:
                    w.this.a(this.f83686p, this.f83673c);
                    break;
                case 6:
                    w.this.a(this.f83686p, this.f83687q, this.f83673c);
                    break;
            }
        }
    }

    private w(Context context, List<o> list) {
        f83670c = new x(context, list);
    }

    private synchronized boolean b(y yVar) {
        ContentValues contentValuesD;
        SQLiteDatabase writableDatabase = null;
        try {
            writableDatabase = f83670c.getWritableDatabase();
            if (writableDatabase == null || (contentValuesD = d(yVar)) == null) {
                if (f83668a && writableDatabase != null) {
                    writableDatabase.close();
                }
                return false;
            }
            long jReplace = writableDatabase.replace("t_pf", "_id", contentValuesD);
            if (jReplace < 0) {
                if (f83668a) {
                    writableDatabase.close();
                }
                return false;
            }
            al.c("[Database] insert %s success.", "t_pf");
            yVar.f83693a = jReplace;
            if (f83668a) {
                writableDatabase.close();
            }
            return true;
        } catch (Throwable th) {
            try {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
                return false;
            } finally {
                if (f83668a && writableDatabase != null) {
                    writableDatabase.close();
                }
            }
        }
    }

    private static ContentValues c(y yVar) {
        if (yVar == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            long j10 = yVar.f83693a;
            if (j10 > 0) {
                contentValues.put("_id", Long.valueOf(j10));
            }
            contentValues.put(com.umeng.analytics.pro.bq.f84480e, Integer.valueOf(yVar.f83694b));
            contentValues.put("_pc", yVar.f83695c);
            contentValues.put("_th", yVar.f83696d);
            contentValues.put("_tm", Long.valueOf(yVar.f83697e));
            byte[] bArr = yVar.f83699g;
            if (bArr != null) {
                contentValues.put("_dt", bArr);
            }
            return contentValues;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    private static ContentValues d(y yVar) {
        if (yVar != null && !ap.b(yVar.f83698f)) {
            try {
                ContentValues contentValues = new ContentValues();
                long j10 = yVar.f83693a;
                if (j10 > 0) {
                    contentValues.put("_id", Long.valueOf(j10));
                }
                contentValues.put(com.umeng.analytics.pro.bq.f84480e, yVar.f83698f);
                contentValues.put("_tm", Long.valueOf(yVar.f83697e));
                byte[] bArr = yVar.f83699g;
                if (bArr != null) {
                    contentValues.put("_dt", bArr);
                }
                return contentValues;
            } catch (Throwable th) {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static synchronized w a(Context context, List<o> list) {
        if (f83669b == null) {
            f83669b = new w(context, list);
        }
        return f83669b;
    }

    public static synchronized w a() {
        return f83669b;
    }

    public final Cursor a(String str, String[] strArr, String str2) {
        return a(str, strArr, str2, (String) null, (String) null);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00aa A[Catch: all -> 0x00ae, PHI: r1
      0x00aa: PHI (r1v2 android.database.sqlite.SQLiteDatabase) = (r1v1 android.database.sqlite.SQLiteDatabase), (r1v4 android.database.sqlite.SQLiteDatabase) binds: [B:53:0x00c5, B:39:0x00a8] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #3 {, blocks: (B:9:0x0025, B:10:0x0028, B:12:0x002c, B:28:0x0093, B:30:0x009a, B:50:0x00be, B:51:0x00c1, B:40:0x00aa, B:59:0x00cd, B:60:0x00d0, B:63:0x00d6, B:64:0x00d9, B:37:0x00a4, B:46:0x00b3, B:48:0x00b9), top: B:73:0x0002, inners: #2 }] */
    private synchronized List<y> c(int i10) {
        SQLiteDatabase writableDatabase;
        Cursor cursorQuery;
        try {
            writableDatabase = f83670c.getWritableDatabase();
            if (writableDatabase != null) {
                try {
                    String strConcat = "_id = ".concat(String.valueOf(i10));
                    cursorQuery = writableDatabase.query("t_pf", null, strConcat, null, null, null, null);
                    if (cursorQuery == null) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        if (f83668a) {
                            writableDatabase.close();
                        }
                        return null;
                    }
                    try {
                        StringBuilder sb2 = new StringBuilder();
                        ArrayList arrayList = new ArrayList();
                        while (cursorQuery.moveToNext()) {
                            y yVarB = b(cursorQuery);
                            if (yVarB != null) {
                                arrayList.add(yVarB);
                            } else {
                                try {
                                    String string = cursorQuery.getString(cursorQuery.getColumnIndex(com.umeng.analytics.pro.bq.f84480e));
                                    sb2.append(" or _tp = ");
                                    sb2.append(string);
                                } catch (Throwable unused) {
                                    al.d("[Database] unknown id.", new Object[0]);
                                }
                            }
                        }
                        if (sb2.length() > 0) {
                            sb2.append(" and _id = ");
                            sb2.append(i10);
                            al.d("[Database] deleted %s illegal data %d.", "t_pf", Integer.valueOf(writableDatabase.delete("t_pf", strConcat.substring(4), null)));
                        }
                        cursorQuery.close();
                        if (f83668a) {
                            writableDatabase.close();
                        }
                        return arrayList;
                    } catch (Throwable th) {
                        th = th;
                        try {
                            if (!al.a(th)) {
                                th.printStackTrace();
                            }
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            if (f83668a && writableDatabase != null) {
                                writableDatabase.close();
                            }
                            return null;
                        } catch (Throwable th2) {
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            if (f83668a && writableDatabase != null) {
                                writableDatabase.close();
                            }
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    cursorQuery = null;
                }
            } else {
                if (f83668a && writableDatabase != null) {
                    writableDatabase.close();
                }
                return null;
            }
        } catch (Throwable th4) {
            th = th4;
            writableDatabase = null;
            cursorQuery = null;
        }
    }

    public final Cursor a(String str, String[] strArr, String str2, String str3, String str4) {
        return a(false, str, strArr, str2, null, null, null, str3, str4, null);
    }

    public final int a(String str, String str2) {
        return a(str, str2, (String[]) null, (v) null);
    }

    public final synchronized long a(String str, ContentValues contentValues, v vVar) {
        long j10;
        j10 = -1;
        SQLiteDatabase writableDatabase = null;
        try {
            writableDatabase = f83670c.getWritableDatabase();
            if (writableDatabase != null && contentValues != null) {
                long jReplace = writableDatabase.replace(str, "_id", contentValues);
                if (jReplace >= 0) {
                    al.c("[Database] insert %s success.", str);
                } else {
                    al.d("[Database] replace %s error.", str);
                }
                j10 = jReplace;
            }
            if (f83668a && writableDatabase != null) {
                writableDatabase.close();
            }
        } catch (Throwable th) {
            try {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
                if (f83668a && 0 != 0) {
                }
            } catch (Throwable th2) {
                if (f83668a && 0 != 0) {
                    writableDatabase.close();
                }
                throw th2;
            }
        }
        return j10;
    }

    public final synchronized void b(int i10) {
        String strConcat;
        SQLiteDatabase writableDatabase = f83670c.getWritableDatabase();
        if (writableDatabase != null) {
            if (i10 >= 0) {
                try {
                    strConcat = "_tp = ".concat(String.valueOf(i10));
                } catch (Throwable th) {
                    try {
                        if (!al.a(th)) {
                            th.printStackTrace();
                        }
                        if (f83668a) {
                            return;
                        }
                    } finally {
                        if (f83668a) {
                            writableDatabase.close();
                        }
                    }
                }
            } else {
                strConcat = null;
            }
            al.c("[Database] deleted %s data %d", "t_lr", Integer.valueOf(writableDatabase.delete("t_lr", strConcat, null)));
            if (f83668a) {
                writableDatabase.close();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized Cursor a(boolean z10, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6, v vVar) {
        Cursor cursorQuery;
        cursorQuery = null;
        try {
            SQLiteDatabase writableDatabase = f83670c.getWritableDatabase();
            if (writableDatabase != null) {
                cursorQuery = writableDatabase.query(z10, str, strArr, str2, strArr2, str3, str4, str5, str6);
            }
        } catch (Throwable th) {
            try {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return cursorQuery;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized int a(String str, String str2, String[] strArr, v vVar) {
        int iDelete;
        iDelete = 0;
        SQLiteDatabase writableDatabase = null;
        try {
            writableDatabase = f83670c.getWritableDatabase();
            iDelete = writableDatabase != null ? writableDatabase.delete(str, str2, strArr) : 0;
            if (f83668a && writableDatabase != null) {
                writableDatabase.close();
            }
        } catch (Throwable th) {
            try {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
                if (f83668a && writableDatabase != null) {
                }
            } catch (Throwable th2) {
                if (f83668a && writableDatabase != null) {
                    writableDatabase.close();
                }
                throw th2;
            }
        }
        return iDelete;
    }

    private static y b(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            y yVar = new y();
            yVar.f83693a = cursor.getLong(cursor.getColumnIndex("_id"));
            yVar.f83697e = cursor.getLong(cursor.getColumnIndex("_tm"));
            yVar.f83698f = cursor.getString(cursor.getColumnIndex(com.umeng.analytics.pro.bq.f84480e));
            yVar.f83699g = cursor.getBlob(cursor.getColumnIndex("_dt"));
            return yVar;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public final boolean a(int i10, String str, byte[] bArr, boolean z10) {
        if (!z10) {
            a aVar = new a();
            aVar.a(i10, str, bArr);
            ak.a().a(aVar);
            return true;
        }
        return a(i10, str, bArr, (v) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i10, String str, byte[] bArr, v vVar) {
        try {
            y yVar = new y();
            yVar.f83693a = i10;
            yVar.f83698f = str;
            yVar.f83697e = System.currentTimeMillis();
            yVar.f83699g = bArr;
            return b(yVar);
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return false;
        }
    }

    public final Map<String, byte[]> a(int i10, v vVar) {
        HashMap map = null;
        try {
            List<y> listC = c(i10);
            if (listC == null) {
                return null;
            }
            HashMap map2 = new HashMap();
            try {
                for (y yVar : listC) {
                    byte[] bArr = yVar.f83699g;
                    if (bArr != null) {
                        map2.put(yVar.f83698f, bArr);
                    }
                }
                return map2;
            } catch (Throwable th) {
                th = th;
                map = map2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        if (al.a(th)) {
            return map;
        }
        th.printStackTrace();
        return map;
    }

    public final synchronized boolean a(y yVar) {
        ContentValues contentValuesC;
        SQLiteDatabase writableDatabase = null;
        try {
            writableDatabase = f83670c.getWritableDatabase();
            if (writableDatabase != null && (contentValuesC = c(yVar)) != null) {
                long jReplace = writableDatabase.replace("t_lr", "_id", contentValuesC);
                if (jReplace >= 0) {
                    al.c("[Database] insert %s success.", "t_lr");
                    yVar.f83693a = jReplace;
                    if (f83668a) {
                        writableDatabase.close();
                    }
                    return true;
                }
                if (f83668a) {
                    writableDatabase.close();
                }
                return false;
            }
            if (f83668a && writableDatabase != null) {
                writableDatabase.close();
            }
            return false;
        } catch (Throwable th) {
            try {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
                return false;
            } finally {
                if (f83668a && writableDatabase != null) {
                    writableDatabase.close();
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00ad A[Catch: all -> 0x00bd, TRY_LEAVE, TryCatch #3 {all -> 0x00bd, blocks: (B:40:0x00a7, B:42:0x00ad), top: B:66:0x00a7, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00b2 A[Catch: all -> 0x00cd, TRY_ENTER, TryCatch #4 {, blocks: (B:3:0x0001, B:14:0x002d, B:15:0x0030, B:17:0x0034, B:33:0x0097, B:35:0x009e, B:44:0x00b2, B:45:0x00b5, B:47:0x00b9, B:50:0x00c0, B:51:0x00c3, B:53:0x00c7, B:54:0x00ca, B:40:0x00a7, B:42:0x00ad), top: B:68:0x0001, inners: #3 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00b9 A[Catch: all -> 0x00cd, TryCatch #4 {, blocks: (B:3:0x0001, B:14:0x002d, B:15:0x0030, B:17:0x0034, B:33:0x0097, B:35:0x009e, B:44:0x00b2, B:45:0x00b5, B:47:0x00b9, B:50:0x00c0, B:51:0x00c3, B:53:0x00c7, B:54:0x00ca, B:40:0x00a7, B:42:0x00ad), top: B:68:0x0001, inners: #3 }] */
    public final synchronized List<y> a(int i10) {
        String strConcat;
        Cursor cursor;
        SQLiteDatabase writableDatabase = f83670c.getWritableDatabase();
        if (writableDatabase != null) {
            if (i10 >= 0) {
                try {
                    strConcat = "_tp = ".concat(String.valueOf(i10));
                } catch (Throwable th) {
                    th = th;
                    cursor = null;
                    try {
                        if (!al.a(th)) {
                            th.printStackTrace();
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (f83668a) {
                            writableDatabase.close();
                        }
                        return null;
                    } catch (Throwable th2) {
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (f83668a) {
                            writableDatabase.close();
                        }
                        throw th2;
                    }
                }
            } else {
                strConcat = null;
            }
            Cursor cursorQuery = writableDatabase.query("t_lr", null, strConcat, null, null, null, null);
            if (cursorQuery == null) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                if (f83668a) {
                    writableDatabase.close();
                }
                return null;
            }
            try {
                StringBuilder sb2 = new StringBuilder();
                ArrayList arrayList = new ArrayList();
                while (cursorQuery.moveToNext()) {
                    y yVarA = a(cursorQuery);
                    if (yVarA != null) {
                        arrayList.add(yVarA);
                    } else {
                        try {
                            long j10 = cursorQuery.getLong(cursorQuery.getColumnIndex("_id"));
                            sb2.append(" or _id = ");
                            sb2.append(j10);
                        } catch (Throwable unused) {
                            al.d("[Database] unknown id.", new Object[0]);
                        }
                    }
                }
                String string = sb2.toString();
                if (string.length() > 0) {
                    al.d("[Database] deleted %s illegal data %d", "t_lr", Integer.valueOf(writableDatabase.delete("t_lr", string.substring(4), null)));
                }
                cursorQuery.close();
                if (f83668a) {
                    writableDatabase.close();
                }
                return arrayList;
            } catch (Throwable th3) {
                cursor = cursorQuery;
                th = th3;
                if (!al.a(th)) {
                    th.printStackTrace();
                }
                if (cursor != null) {
                    cursor.close();
                }
                if (f83668a) {
                    writableDatabase.close();
                }
                return null;
            }
        }
        return null;
    }

    public final synchronized void a(List<y> list) {
        if (list != null) {
            if (list.size() != 0) {
                SQLiteDatabase writableDatabase = f83670c.getWritableDatabase();
                if (writableDatabase != null) {
                    StringBuilder sb2 = new StringBuilder();
                    for (y yVar : list) {
                        sb2.append(" or _id = ");
                        sb2.append(yVar.f83693a);
                    }
                    String string = sb2.toString();
                    if (string.length() > 0) {
                        string = string.substring(4);
                    }
                    sb2.setLength(0);
                    try {
                        al.c("[Database] deleted %s data %d", "t_lr", Integer.valueOf(writableDatabase.delete("t_lr", string, null)));
                        if (f83668a) {
                            writableDatabase.close();
                        }
                    } catch (Throwable th) {
                        try {
                            if (!al.a(th)) {
                                th.printStackTrace();
                            }
                            if (f83668a) {
                            }
                        } finally {
                            if (f83668a) {
                                writableDatabase.close();
                            }
                        }
                    }
                }
            }
        }
    }

    private static y a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            y yVar = new y();
            yVar.f83693a = cursor.getLong(cursor.getColumnIndex("_id"));
            yVar.f83694b = cursor.getInt(cursor.getColumnIndex(com.umeng.analytics.pro.bq.f84480e));
            yVar.f83695c = cursor.getString(cursor.getColumnIndex("_pc"));
            yVar.f83696d = cursor.getString(cursor.getColumnIndex("_th"));
            yVar.f83697e = cursor.getLong(cursor.getColumnIndex("_tm"));
            yVar.f83699g = cursor.getBlob(cursor.getColumnIndex("_dt"));
            return yVar;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean a(int i10, String str, v vVar) {
        boolean z10;
        String strConcat;
        z10 = false;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            SQLiteDatabase writableDatabase = f83670c.getWritableDatabase();
            if (writableDatabase != null) {
                try {
                    if (ap.b(str)) {
                        strConcat = "_id = ".concat(String.valueOf(i10));
                    } else {
                        strConcat = "_id = " + i10 + " and _tp = \"" + str + x.a.f97579g;
                    }
                    int iDelete = writableDatabase.delete("t_pf", strConcat, null);
                    al.c("[Database] deleted %s data %d", "t_pf", Integer.valueOf(iDelete));
                    if (iDelete > 0) {
                        z10 = true;
                    }
                } catch (Throwable th) {
                    th = th;
                    sQLiteDatabase = writableDatabase;
                    try {
                        if (!al.a(th)) {
                            th.printStackTrace();
                        }
                        if (f83668a && sQLiteDatabase != null) {
                            sQLiteDatabase.close();
                        }
                    } catch (Throwable th2) {
                        if (f83668a && sQLiteDatabase != null) {
                            sQLiteDatabase.close();
                        }
                        throw th2;
                    }
                }
            }
            if (f83668a && writableDatabase != null) {
                writableDatabase.close();
            }
        } catch (Throwable th3) {
            th = th3;
        }
        return z10;
    }
}
