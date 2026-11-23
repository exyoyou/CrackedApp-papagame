package com.byazt.ip;

import com.byazt.ip.tt;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1363, 54})
public abstract class ve<T, F extends tt> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<a<?>> f15457c = new CopyOnWriteArrayList();
    public T tt;
    public F ve;

    public final void c(a<?> aVar) {
        if (aVar != null) {
            this.f15457c.add(aVar);
        }
    }

    public final F getContext() {
        return this.ve;
    }

    public final void tt(a<?> aVar) {
        if (aVar != null) {
            this.f15457c.remove(aVar);
        }
    }
}
