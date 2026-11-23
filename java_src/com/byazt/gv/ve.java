package com.byazt.gv;

import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 247, 54})
public abstract class ve implements tt, Comparable<ve>, Runnable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public tt.c f14770c = tt.c.NORMAL;
    public String tt = UUID.randomUUID().toString() + "-" + String.valueOf(System.nanoTime());

    public tt.c c() {
        return this.f14770c;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(ve veVar) {
        if (c().c() < veVar.c().c()) {
            return 1;
        }
        return c().c() > veVar.c().c() ? -1 : 0;
    }
}
