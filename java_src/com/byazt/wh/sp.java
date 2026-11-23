package com.byazt.wh;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.byazt.w.i;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1172, 91})
public class sp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SQLiteStatement f21553a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SQLiteDatabase f21554c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public SQLiteStatement f21555n;
    public SQLiteStatement sp;
    public final String tt;
    public final String[] uj;
    public final String[] ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public SQLiteStatement f21556x;

    public sp(SQLiteDatabase sQLiteDatabase, String str, String[] strArr, String[] strArr2) {
        this.f21554c = sQLiteDatabase;
        this.tt = str;
        this.ve = strArr;
        this.uj = strArr2;
    }

    public SQLiteStatement c() {
        if (this.f21555n == null) {
            SQLiteStatement sQLiteStatementCompileStatement = this.f21554c.compileStatement(i.c("INSERT INTO ", this.tt, this.ve));
            synchronized (this) {
                if (this.f21555n == null) {
                    this.f21555n = sQLiteStatementCompileStatement;
                }
            }
            if (this.f21555n != sQLiteStatementCompileStatement) {
                sQLiteStatementCompileStatement.close();
            }
        }
        return this.f21555n;
    }

    public SQLiteStatement tt() {
        if (this.sp == null) {
            SQLiteStatement sQLiteStatementCompileStatement = this.f21554c.compileStatement(i.c(this.tt, this.uj));
            synchronized (this) {
                if (this.sp == null) {
                    this.sp = sQLiteStatementCompileStatement;
                }
            }
            if (this.sp != sQLiteStatementCompileStatement) {
                sQLiteStatementCompileStatement.close();
            }
        }
        return this.sp;
    }

    public SQLiteStatement uj() {
        if (this.f21556x == null) {
            SQLiteStatement sQLiteStatementCompileStatement = this.f21554c.compileStatement(i.tt(this.tt, this.ve, this.uj));
            synchronized (this) {
                if (this.f21556x == null) {
                    this.f21556x = sQLiteStatementCompileStatement;
                }
            }
            if (this.f21556x != sQLiteStatementCompileStatement) {
                sQLiteStatementCompileStatement.close();
            }
        }
        return this.f21556x;
    }

    public SQLiteStatement ve() {
        if (this.f21553a == null) {
            SQLiteStatement sQLiteStatementCompileStatement = this.f21554c.compileStatement(i.c(this.tt, this.ve, this.uj));
            synchronized (this) {
                if (this.f21553a == null) {
                    this.f21553a = sQLiteStatementCompileStatement;
                }
            }
            if (this.f21553a != sQLiteStatementCompileStatement) {
                sQLiteStatementCompileStatement.close();
            }
        }
        return this.f21553a;
    }
}
