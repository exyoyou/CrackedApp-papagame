package com.byazt.yg;

import android.content.Context;
import com.byazt.ia.n;
import com.byazt.mg.uj;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 192, 54})
public class ve implements tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f22217c;

    public ve(Context context) {
        this.f22217c = context;
    }

    @Override // com.byazt.yg.tt
    public boolean c(Throwable th) {
        return true;
    }

    @Override // com.byazt.yg.tt
    public void c(long j10, Thread thread, Throwable th) throws Throwable {
        com.byazt.xz.c cVarC = com.byazt.xz.c.c(j10, this.f22217c, thread, th);
        Context context = this.f22217c;
        com.byazt.uy.ve veVar = com.byazt.uy.ve.JAVA;
        uj.c(context, veVar.c(), Thread.currentThread().getName());
        com.byazt.jz.c.c().c(n.c().c(veVar, cVarC).c());
    }
}
