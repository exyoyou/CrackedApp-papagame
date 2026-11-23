package com.byazt.a;

import android.content.Context;
import com.byazt.nr.m;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 34, 20})
public abstract class c implements n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f11372c;
    public final com.byazt.k.c tt;
    public final String ve;

    public c(Context context, com.byazt.k.c cVar, String str) {
        this.f11372c = context;
        this.tt = cVar;
        this.ve = str;
    }

    public boolean c() {
        if (this.f11372c == null) {
            return false;
        }
        try {
            return tt().resolveActivity(this.f11372c.getPackageManager()) != null;
        } catch (Throwable th) {
            if (com.byazt.x.c.c()) {
                m.ve("AbsDevicePlan", "check is valid failed!", th);
            }
        }
    }
}
