package com.byazt.non;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.byazt.nr.m;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1554, 54})
public abstract class ve extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f17551c;
    public final String tt;

    public ve(Context context, String str, int i10) {
        super(new com.byazt.nys.c(context), str, (SQLiteDatabase.CursorFactory) null, i10);
        this.tt = "CSJSQLiteOpenHelper";
        this.f17551c = context;
    }

    private ArrayList<String> tt(SQLiteDatabase sQLiteDatabase) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery("select name from sqlite_master where type='table' order by name", null);
            if (cursorRawQuery != null) {
                while (cursorRawQuery.moveToNext()) {
                    String string = cursorRawQuery.getString(0);
                    if (!TextUtils.equals(string, "android_metadata") && !TextUtils.equals(string, "sqlite_sequence")) {
                        arrayList.add(string);
                    }
                }
                cursorRawQuery.close();
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }

    public void c(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            c(sQLiteDatabase, this.f17551c);
        } catch (Throwable th) {
            m.uj("CSJSQLiteOpenHelper", th.getMessage());
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        if (i10 > i11) {
            c(sQLiteDatabase);
            c(sQLiteDatabase, this.f17551c);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        if (i10 > i11) {
            try {
                c(sQLiteDatabase);
            } catch (Throwable th) {
                m.uj("CSJSQLiteOpenHelper", th.getMessage());
                return;
            }
        }
        c(sQLiteDatabase, this.f17551c);
        c(sQLiteDatabase, i10, i11);
    }

    public void c(SQLiteDatabase sQLiteDatabase, Context context) {
    }

    public void c(SQLiteDatabase sQLiteDatabase) {
        ArrayList<String> arrayListTt = tt(sQLiteDatabase);
        if (arrayListTt == null || arrayListTt.size() <= 0) {
            return;
        }
        Iterator<String> it2 = arrayListTt.iterator();
        while (it2.hasNext()) {
            sQLiteDatabase.execSQL(String.format("DROP TABLE IF EXISTS %s ;", it2.next()));
        }
    }
}
