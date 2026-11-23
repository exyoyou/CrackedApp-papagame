package com.kuaishou.weapon.p0;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class t {
    private static t E = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f74876a = "k";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f74877b = "p";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f74878c = "v";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f74879d = "l";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f74880e = "i";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f74881f = "a";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f74882g = "s";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f74883h = "n";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f74884i = "u";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f74885j = "c";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f74886k = "r";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f74887l = "b";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f74888m = "m";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f74889n = "el";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f74890o = "ail";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f74891p = "aps";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f74892q = "dp";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final String f74893r = "pcn";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String f74894s = "pst";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f74895t = "d";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f74896u = "at";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f74897v = "dm";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final String f74898w = "rm";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final String f74899x = "pc";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final String f74900y = "cbl";
    private a B;
    private SQLiteDatabase C;
    private Context D;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f74901z = 1;
    private String A = "create table wp(k INTEGER PRIMARY KEY ON CONFLICT ABORT,p TEXT UNIQUE ON CONFLICT ABORT,v TEXT,n INTEGER,s INTEGER,i INTEGER,u INTEGER,el INTEGER,c INTEGER,r INTEGER,aps INTEGER,dp TEXT,pcn TEXT,b TEXT,m TEXT,ail BLOB,pst INTEGER,d INTEGER,at INTEGER,dm TEXT,rm INTEGER,l TEXT,pc INTEGER DEFAULT -1,a TEXT,cbl INTEGER)";

    class a extends SQLiteOpenHelper {
        public a(Context context) {
            super(context, bg.f74507p, (SQLiteDatabase.CursorFactory) null, t.this.f74901z);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            try {
                sQLiteDatabase.execSQL(t.this.A);
            } catch (Throwable unused) {
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            if (i10 >= 3 || i11 < 3) {
                return;
            }
            try {
                sQLiteDatabase.beginTransaction();
                try {
                    sQLiteDatabase.execSQL("ALTER TABLE wp ADD COLUMN pc INTEGER  DEFAULT -1");
                    sQLiteDatabase.setTransactionSuccessful();
                } catch (Throwable unused) {
                }
                sQLiteDatabase.endTransaction();
            } catch (Throwable unused2) {
            }
        }
    }

    private t(Context context) {
        this.D = context.getApplicationContext();
        this.B = new a(context.getApplicationContext());
        try {
            if (context.getFilesDir().getParentFile().exists()) {
                this.C = this.B.getWritableDatabase();
            }
        } catch (Throwable unused) {
        }
    }

    public int c(int i10) {
        Cursor cursorQuery;
        int i11 = 0;
        try {
            cursorQuery = this.C.query(bg.f74508q, new String[]{"n"}, "k=" + i10, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        i11 = cursorQuery.getInt(cursorQuery.getColumnIndex("n"));
                    }
                } catch (Throwable unused) {
                    if (cursorQuery != null && !cursorQuery.isClosed()) {
                    }
                    return i11;
                }
            }
            if (cursorQuery != null && !cursorQuery.isClosed()) {
                cursorQuery.close();
            }
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
        return i11;
    }

    public boolean d(int i10) {
        Cursor cursorQuery;
        boolean z10 = false;
        try {
            cursorQuery = this.C.query(bg.f74508q, new String[]{"s"}, "k=" + i10, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst() && cursorQuery.getInt(cursorQuery.getColumnIndex("s")) == 1) {
                        z10 = true;
                    }
                } catch (Throwable unused) {
                    if (cursorQuery != null && !cursorQuery.isClosed()) {
                    }
                    return z10;
                }
            }
            if (cursorQuery != null && !cursorQuery.isClosed()) {
                cursorQuery.close();
            }
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
        return z10;
    }

    public static synchronized t a(Context context) {
        if (E == null) {
            E = new t(context);
        }
        return E;
    }

    public boolean b(int i10) {
        Cursor cursorQuery;
        boolean z10 = false;
        try {
            cursorQuery = this.C.query(bg.f74508q, new String[]{"p"}, "k=" + i10, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() > 0) {
                        z10 = true;
                    }
                } catch (Throwable unused) {
                    if (cursorQuery != null && !cursorQuery.isClosed()) {
                    }
                    return z10;
                }
            }
            if (cursorQuery != null && !cursorQuery.isClosed()) {
                cursorQuery.close();
            }
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
        return z10;
    }

    public long a(s sVar) {
        long jInsert = 0;
        if (sVar == null) {
            return 0L;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("n", Integer.valueOf(sVar.f74852b));
        contentValues.put(f74891p, Integer.valueOf(sVar.f74866p));
        contentValues.put("p", sVar.f74853c);
        contentValues.put("a", sVar.f74855e);
        contentValues.put(f74879d, sVar.f74858h);
        contentValues.put("v", sVar.f74854d);
        contentValues.put(f74892q, sVar.f74864n);
        contentValues.put("a", sVar.f74855e);
        contentValues.put(f74893r, sVar.f74865o);
        contentValues.put(f74894s, Long.valueOf(sVar.f74869s));
        contentValues.put(f74898w, Integer.valueOf(sVar.f74873w));
        contentValues.put("at", Integer.valueOf(sVar.f74867q));
        contentValues.put(f74899x, Integer.valueOf(sVar.f74874x));
        contentValues.put(f74900y, Integer.valueOf(sVar.f74875y ? 1 : 0));
        if (!TextUtils.isEmpty(sVar.f74860j)) {
            contentValues.put(f74897v, sVar.f74860j);
        }
        try {
            if (b(sVar.f74851a)) {
                jInsert = this.C.update(bg.f74508q, contentValues, "k=" + sVar.f74851a, null);
            } else {
                contentValues.put(f74876a, Integer.valueOf(sVar.f74851a));
                jInsert = this.C.insert(bg.f74508q, null, contentValues);
            }
        } catch (Throwable unused) {
        }
        return jInsert;
    }

    public void b() {
        ArrayList<s> arrayList = new ArrayList();
        for (s sVar : a()) {
            if (!dl.a(sVar.f74855e)) {
                arrayList.add(sVar);
            }
        }
        try {
            r rVarA = r.a();
            for (s sVar2 : arrayList) {
                if (rVarA != null) {
                    rVarA.a(sVar2.f74855e);
                }
                this.C.delete(bg.f74508q, "k=" + sVar2.f74851a, null);
                List<Integer> list = r.f74843b;
                if (list != null && !list.contains(Integer.valueOf(sVar2.f74851a))) {
                    dl.c(this.D.getFilesDir().getCanonicalPath() + bg.f74501j + sVar2.f74851a);
                }
                if (rVarA.b() != null && rVarA.b().get(sVar2.f74853c) != null) {
                    dl.c(this.D.getFileStreamPath(sVar2.f74853c).getAbsolutePath());
                }
            }
        } catch (Throwable unused) {
        }
    }

    public void c() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("n", (Integer) 0);
        try {
            this.C.update(bg.f74508q, contentValues, "n=-1", null);
        } catch (Throwable unused) {
        }
    }

    public void d() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("u", (Integer) 0);
        try {
            this.C.update(bg.f74508q, contentValues, "u=1", null);
        } catch (Throwable unused) {
        }
    }

    public void c(int i10, int i11) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(f74899x, Integer.valueOf(i11));
            this.C.update(bg.f74508q, contentValues, "k=" + i10, null);
        } catch (Throwable unused) {
        }
    }

    public List<s> a() {
        Cursor cursorQuery;
        ArrayList arrayList = new ArrayList();
        try {
            cursorQuery = this.C.query(bg.f74508q, null, null, null, null, null, null);
            if (cursorQuery != null) {
                while (cursorQuery.moveToNext()) {
                    try {
                        s sVar = new s();
                        sVar.f74851a = cursorQuery.getInt(cursorQuery.getColumnIndex(f74876a));
                        sVar.f74853c = cursorQuery.getString(cursorQuery.getColumnIndex("p"));
                        sVar.f74855e = cursorQuery.getString(cursorQuery.getColumnIndex("a"));
                        sVar.f74858h = cursorQuery.getString(cursorQuery.getColumnIndex(f74879d));
                        sVar.f74854d = cursorQuery.getString(cursorQuery.getColumnIndex("v"));
                        sVar.f74869s = cursorQuery.getLong(cursorQuery.getColumnIndex(f74894s));
                        sVar.f74870t = cursorQuery.getInt(cursorQuery.getColumnIndex(f74895t));
                        sVar.f74873w = cursorQuery.getInt(cursorQuery.getColumnIndex(f74898w));
                        sVar.f74874x = cursorQuery.getInt(cursorQuery.getColumnIndex(f74899x));
                        boolean z10 = true;
                        if (cursorQuery.getInt(cursorQuery.getColumnIndex(f74900y)) != 1) {
                            z10 = false;
                        }
                        sVar.f74875y = z10;
                        arrayList.add(sVar);
                    } catch (Throwable unused) {
                        if (cursorQuery != null && !cursorQuery.isClosed()) {
                        }
                        return arrayList;
                    }
                }
            }
            if (cursorQuery != null && !cursorQuery.isClosed()) {
                cursorQuery.close();
            }
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
        return arrayList;
    }

    public void b(int i10, int i11) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("n", Integer.valueOf(i11));
            this.C.update(bg.f74508q, contentValues, "k=" + i10, null);
        } catch (Throwable unused) {
        }
    }

    public s b(String str) {
        s sVar;
        Cursor cursor = null;
        sVar = null;
        s sVar2 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            Cursor cursorQuery = this.C.query(bg.f74508q, null, "p=?", new String[]{str}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        sVar = new s();
                        try {
                            sVar.f74851a = cursorQuery.getInt(cursorQuery.getColumnIndex(f74876a));
                            sVar.f74852b = cursorQuery.getInt(cursorQuery.getColumnIndex("n"));
                            sVar.f74853c = cursorQuery.getString(cursorQuery.getColumnIndex("p"));
                            sVar.f74855e = cursorQuery.getString(cursorQuery.getColumnIndex("a"));
                            sVar.f74858h = cursorQuery.getString(cursorQuery.getColumnIndex(f74879d));
                            sVar.f74854d = cursorQuery.getString(cursorQuery.getColumnIndex("v"));
                            sVar.f74864n = cursorQuery.getString(cursorQuery.getColumnIndex(f74892q));
                            sVar.f74866p = cursorQuery.getInt(cursorQuery.getColumnIndex(f74891p));
                            sVar.f74865o = cursorQuery.getString(cursorQuery.getColumnIndex(f74893r));
                            sVar.f74867q = cursorQuery.getInt(cursorQuery.getColumnIndex("at"));
                            sVar.f74869s = cursorQuery.getLong(cursorQuery.getColumnIndex(f74894s));
                            sVar.f74870t = cursorQuery.getInt(cursorQuery.getColumnIndex(f74895t));
                            sVar.f74873w = cursorQuery.getInt(cursorQuery.getColumnIndex(f74898w));
                            sVar.f74860j = cursorQuery.getString(cursorQuery.getColumnIndex(f74897v));
                            sVar.f74874x = cursorQuery.getInt(cursorQuery.getColumnIndex(f74899x));
                            boolean z10 = true;
                            if (cursorQuery.getInt(cursorQuery.getColumnIndex(f74900y)) != 1) {
                                z10 = false;
                            }
                            sVar.f74875y = z10;
                            sVar2 = sVar;
                        } catch (Throwable unused) {
                            cursor = cursorQuery;
                            if (cursor != null && !cursor.isClosed()) {
                                cursor.close();
                            }
                            return sVar;
                        }
                    }
                } catch (Throwable unused2) {
                    sVar = null;
                }
            }
            if (cursorQuery == null || cursorQuery.isClosed()) {
                return sVar2;
            }
            cursorQuery.close();
            return sVar2;
        } catch (Throwable unused3) {
            sVar = null;
        }
    }

    public s a(int i10) {
        s sVar;
        Cursor cursor = null;
        sVar = null;
        s sVar2 = null;
        try {
            Cursor cursorQuery = this.C.query(bg.f74508q, null, "k=" + i10, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        sVar = new s();
                        try {
                            sVar.f74851a = i10;
                            sVar.f74852b = cursorQuery.getInt(cursorQuery.getColumnIndex("n"));
                            sVar.f74853c = cursorQuery.getString(cursorQuery.getColumnIndex("p"));
                            sVar.f74855e = cursorQuery.getString(cursorQuery.getColumnIndex("a"));
                            sVar.f74858h = cursorQuery.getString(cursorQuery.getColumnIndex(f74879d));
                            sVar.f74854d = cursorQuery.getString(cursorQuery.getColumnIndex("v"));
                            sVar.f74864n = cursorQuery.getString(cursorQuery.getColumnIndex(f74892q));
                            sVar.f74866p = cursorQuery.getInt(cursorQuery.getColumnIndex(f74891p));
                            sVar.f74865o = cursorQuery.getString(cursorQuery.getColumnIndex(f74893r));
                            sVar.f74867q = cursorQuery.getInt(cursorQuery.getColumnIndex("at"));
                            sVar.f74869s = cursorQuery.getLong(cursorQuery.getColumnIndex(f74894s));
                            sVar.f74870t = cursorQuery.getInt(cursorQuery.getColumnIndex(f74895t));
                            sVar.f74873w = cursorQuery.getInt(cursorQuery.getColumnIndex(f74898w));
                            sVar.f74860j = cursorQuery.getString(cursorQuery.getColumnIndex(f74897v));
                            sVar.f74874x = cursorQuery.getInt(cursorQuery.getColumnIndex(f74899x));
                            boolean z10 = true;
                            if (cursorQuery.getInt(cursorQuery.getColumnIndex(f74900y)) != 1) {
                                z10 = false;
                            }
                            sVar.f74875y = z10;
                            sVar2 = sVar;
                        } catch (Throwable unused) {
                            cursor = cursorQuery;
                            if (cursor != null && !cursor.isClosed()) {
                                cursor.close();
                            }
                            return sVar;
                        }
                    }
                } catch (Throwable unused2) {
                    sVar = null;
                }
            }
            if (cursorQuery == null || cursorQuery.isClosed()) {
                return sVar2;
            }
            cursorQuery.close();
            return sVar2;
        } catch (Throwable unused3) {
            sVar = null;
        }
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.C.delete(bg.f74508q, "p=?", new String[]{str});
        } catch (Throwable unused) {
        }
    }

    public int a(int i10, int i11) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("u", Integer.valueOf(i11));
            return this.C.update(bg.f74508q, contentValues, "k=" + i10, null);
        } catch (Throwable unused) {
            return 0;
        }
    }
}
