package com.byazt.tj;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.byazt.mg.da;
import com.byazt.nr.m;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 762, 20})
public abstract class c<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f20191c = "_id";
    public final String tt;

    public c(String str) {
        this.tt = str;
    }

    public abstract ContentValues c(T t10);

    public abstract HashMap<String, String> c();

    public void c(SQLiteDatabase sQLiteDatabase) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("CREATE TABLE ");
            sb2.append(this.tt);
            sb2.append(" (_id INTEGER PRIMARY KEY AUTOINCREMENT, ");
            HashMap<String, String> mapC = c();
            if (mapC != null) {
                for (String str : mapC.keySet()) {
                    sb2.append(str);
                    sb2.append(" ");
                    sb2.append(mapC.get(str));
                    sb2.append(",");
                }
                sb2.delete(sb2.length() - 1, sb2.length());
                sb2.append(")");
                sQLiteDatabase.execSQL(sb2.toString());
            }
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    public void insert(SQLiteDatabase sQLiteDatabase, T t10) {
        if (sQLiteDatabase == null || t10 == null) {
            return;
        }
        try {
            sQLiteDatabase.insert(this.tt, null, c(t10));
        } catch (Exception e10) {
            da.tt(e10);
        }
    }
}
