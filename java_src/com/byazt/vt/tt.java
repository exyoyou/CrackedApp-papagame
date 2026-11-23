package com.byazt.vt;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1282, 13})
public class tt implements ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<uj> f21342c = new CopyOnWriteArrayList();

    @Override // com.byazt.vt.ve
    public void c(uj ujVar) {
        this.f21342c.add(ujVar);
    }

    @Override // com.byazt.vt.ve
    public void c(String str) {
        if (this.f21342c.isEmpty()) {
            return;
        }
        Iterator<uj> it2 = this.f21342c.iterator();
        while (it2.hasNext()) {
            it2.next().c(str);
        }
    }
}
