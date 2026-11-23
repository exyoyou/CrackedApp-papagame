package com.byazt.ng;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 248, 158})
public class sl implements com.byazt.vb.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final sl f17328c = new sl();
    public volatile SQLiteDatabase tt;

    @Override // com.byazt.vb.a
    public String a() {
        return null;
    }

    @Override // com.byazt.vb.a
    public String c() {
        return null;
    }

    @Override // com.byazt.vb.a
    public String n() {
        return null;
    }

    @Override // com.byazt.vb.a
    public String tt() {
        return "adevent";
    }

    @Override // com.byazt.vb.a
    public String uj() {
        return null;
    }

    @Override // com.byazt.vb.a
    public String ve() {
        return "adevent_applog";
    }

    @Override // com.byazt.vb.a
    public SQLiteDatabase c(Context context) {
        if (this.tt == null) {
            synchronized (this) {
                if (this.tt == null) {
                    this.tt = com.byazt.jd.a.c(context).c().c();
                    com.byazt.eu.tt.c("---------------DB CREATE  SUCCESS new------------");
                }
            }
        }
        return this.tt;
    }
}
