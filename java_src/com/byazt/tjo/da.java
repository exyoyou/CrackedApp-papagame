package com.byazt.tjo;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 516, 72})
public class da implements com.byazt.sq.uj.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.sq.uj.c f20206c;
    public com.byazt.sq.uj.c tt = com.byazt.yb.tt.c();

    public da(com.byazt.sq.uj.c cVar) {
        this.f20206c = cVar;
    }

    private boolean c(Uri uri) {
        if (uri == null) {
            return false;
        }
        String[] strArrSplit = uri.getPath().split(e.F0);
        if (strArrSplit.length < 2) {
            return false;
        }
        String str = strArrSplit[1];
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains("gromore");
    }

    @Override // com.byazt.sq.uj.c
    public int delete(Uri uri, String str, String[] strArr) {
        return c(uri) ? this.tt.delete(uri, str, strArr) : this.f20206c.delete(uri, str, strArr);
    }

    @Override // com.byazt.sq.uj.c
    public String getTableName() {
        return "";
    }

    @Override // com.byazt.sq.uj.c
    public String getType(Uri uri) {
        return (c(uri) ? this.tt : this.f20206c).getType(uri);
    }

    @Override // com.byazt.sq.uj.c
    public void init() {
    }

    @Override // com.byazt.sq.uj.c
    public void injectContext(Context context) {
        com.byazt.sq.uj.c cVar = this.f20206c;
        if (cVar != null) {
            cVar.injectContext(context);
        }
        com.byazt.sq.uj.c cVar2 = this.tt;
        if (cVar2 != null) {
            cVar2.injectContext(context);
        }
    }

    @Override // com.byazt.sq.uj.c
    public Uri insert(Uri uri, ContentValues contentValues) {
        return c(uri) ? this.tt.insert(uri, contentValues) : this.f20206c.insert(uri, contentValues);
    }

    @Override // com.byazt.sq.uj.c
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return c(uri) ? this.tt.query(uri, strArr, str, strArr2, str2) : this.f20206c.query(uri, strArr, str, strArr2, str2);
    }

    @Override // com.byazt.sq.uj.c
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return c(uri) ? this.tt.update(uri, contentValues, str, strArr) : this.f20206c.update(uri, contentValues, str, strArr);
    }
}
