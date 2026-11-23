package com.byazt.iq;

import com.byazt.eg.eo;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 179, 15})
public final class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set<eo> f15477c = new LinkedHashSet();

    public synchronized void c(eo eoVar) {
        this.f15477c.add(eoVar);
    }

    public synchronized void tt(eo eoVar) {
        this.f15477c.remove(eoVar);
    }

    public synchronized boolean ve(eo eoVar) {
        return this.f15477c.contains(eoVar);
    }
}
